import textwrap
from collections import Counter
import streamlit as st
import pandas as pd
import numpy as np
import plotly.graph_objects as go
from sklearn.cluster import KMeans

# --- 1. DATA LOADING ---
_ARTIST_RENAME = {
    "name": "Artist", "subgenres": "Subgenres", "dna": "DNA",
    "arousal": "Arousal", "valence": "Valence",
    "timbral_brightness": "Timbral Brightness",
    "rhythmic_regularity": "Rhythmic Regularity",
    "harmonic_complexity": "Harmonic Complexity",
    "spatial_dimension": "Spatial Dimension",
    "articulation": "Articulation",
    "melodic_salience": "Melodic Salience",
    "structural_entropy": "Structural Entropy",
    "acousticness": "Acousticness",
}
_DIM_RENAME = {
    "dimension_name": "Dimension", "genre": "Genre",
    "description": "Description", "metrics": "Metrics",
    "low_anchor": "Low-End Anchor",
    "mid_anchor": "Mid-Point Anchor",
    "high_anchor": "High-End Anchor",
}

@st.cache_data(ttl=300)
def load_data():
    try:
        from supabase import create_client
        url = st.secrets["supabase"]["url"]
        key = st.secrets["supabase"]["key"]
        client = create_client(url, key)
        artists = pd.DataFrame(
            client.table("artists").select("*").execute().data
        ).rename(columns=_ARTIST_RENAME)
        dims = pd.DataFrame(
            client.table("musical_dimensions").select("*").execute().data
        ).rename(columns=_DIM_RENAME)
        return artists, dims
    except (KeyError, Exception):
        artists = pd.read_csv('artists.csv')
        dims = pd.read_csv('dimension_anchors_v2.csv')
        return artists, dims

df, anchors_df = load_data()

DIMENSIONS = [
    "Arousal", "Valence", "Timbral Brightness", "Rhythmic Regularity",
    "Harmonic Complexity", "Spatial Dimension", "Articulation",
    "Melodic Salience", "Structural Entropy", "Acousticness",
]
GENRES = [
    "Bass + Dubstep", "Breakbeat", "Drum & Bass + Jungle", "ElectroPop + SynthPop",
    "Hard Dance", "House", "IDM", "Noise", "Synthwave + Vaporwave", "Techno", "Trance",
]
COMPARE_COLORS = ['#00C8FF', '#FF6B6B', '#FFD166']
_PLACEHOLDER = "Select Artist"

DIM_ABBREV = {
    "Arousal":             "Arousal",
    "Valence":             "Valence",
    "Timbral Brightness":  "Brightness",
    "Rhythmic Regularity": "Rhythm",
    "Harmonic Complexity": "Harmony",
    "Spatial Dimension":   "Spatial",
    "Articulation":        "Articulation",
    "Melodic Salience":    "Melody",
    "Structural Entropy":  "Entropy",
    "Acousticness":        "Acoustic",
}

# Canonical DnB subgenre taxonomy (per reddit.com/r/DnB guide)
# Top-level subgenres and their sub-subgenres
CANONICAL_SUBGENRES = {
    'Jungle':      ['Atmospheric Jungle', 'Ragga Jungle', 'Drumfunk', 'Breakcore'],
    'Dancefloor':  [],
    'Liquid':      [],
    'Neurofunk':   ['Techstep', 'Technoid'],
    'Jump Up':     [],
    'Crossbreed':  ['Darkstep'],
    'Deep':        [],
    'Halftime':    ['Leftfield Bass', '170', 'Autonomic'],
    'Drumstep':    [],
    'Sambass':     [],
    'Ragga DnB':   [],
}

subgenre_colors = {
    # Jungle family — earth tones
    'Jungle':             '#8B4513',
    'Atmospheric Jungle': '#A0522D',
    'Ragga Jungle':       '#6B8E23',
    'Drumfunk':           '#CD853F',
    'Breakcore':          '#DEB887',
    # Dancefloor — bright blue
    'Dancefloor':         '#1E90FF',
    # Liquid — soft teal
    'Liquid':             '#87CEEB',
    # Neurofunk family — greens
    'Neurofunk':          '#32CD32',
    'Techstep':           '#228B22',
    'Technoid':           '#006400',
    # Jump Up — red
    'Jump Up':            '#FF4B4B',
    # Crossbreed family — dark red
    'Crossbreed':         '#8B0000',
    'Darkstep':           '#DC143C',
    # Deep — dark slate
    'Deep':               '#2F4F4F',
    # Halftime family — purples
    'Halftime':           '#4B0082',
    'Leftfield Bass':     '#6A0DAD',
    '170':                '#7B68EE',
    'Autonomic':          '#483D8B',
    # Drumstep — gray
    'Drumstep':           '#708090',
    # Sambass — gold
    'Sambass':            '#DAA520',
    # Ragga DnB — olive
    'Ragga DnB':          '#556B2F',
}

# --- 2. HELPERS ---
def _wrap(text, width=55):
    return textwrap.fill(str(text), width).replace('\n', '<br>')

def get_axis_popover(dim_name, genre):
    parts = [f"<b>{dim_name}</b>"]
    try:
        u = anchors_df[(anchors_df['Dimension'] == dim_name) & (anchors_df['Genre'] == 'Universal')].iloc[0]
        parts.append(_wrap(u['Description']))
        parts.append("<i>Metrics: " + _wrap(u['Metrics']) + "</i>")
    except (IndexError, KeyError):
        pass
    try:
        g = anchors_df[(anchors_df['Dimension'] == dim_name) & (anchors_df['Genre'] == genre)].iloc[0]
        parts.append(
            f"High: ~{g['High-End Anchor']}<br>"
            f"Mid:  ~{g['Mid-Point Anchor']}<br>"
            f"Low:  ~{g['Low-End Anchor']}"
        )
    except (IndexError, KeyError):
        parts.append("Genre anchors pending.")
    return "<br><br>".join(parts)

def _field(row, col):
    """Safely read a field from a pandas Series, returning '' for NaN."""
    val = row.get(col, '')
    return '' if pd.isna(val) else str(val)

def _ensure_list(val):
    """Normalise a subgenres value to a Python list (handles arrays from Supabase and strings from CSV)."""
    if isinstance(val, list):
        return val
    if val and not (isinstance(val, float) and pd.isna(val)):
        return [str(val)]
    return []

# --- 3. SESSION STATE ---
if 'compare_artists' not in st.session_state:
    st.session_state['compare_artists'] = [None, None, None]

# Search and cluster expansion state
if 'search_artist' not in st.session_state:
    st.session_state['search_artist'] = None
if 'expanded_cluster_ids' not in st.session_state:
    st.session_state['expanded_cluster_ids'] = set()
if 'cluster_cache' not in st.session_state:
    st.session_state['cluster_cache'] = {}
if 'last_axes' not in st.session_state:
    st.session_state['last_axes'] = None

# --- 4. HEADER ---
st.title("🔊 PolyJamerous")
st.markdown("---")

# ============================================================
# SOUNDSCAPE (always shown)
# ============================================================

with st.sidebar:
    # ========== SEARCH & DISCOVERY (PRIMARY) ==========
    st.subheader("Search Artist")
    search_input = st.selectbox(
        "Find an artist in this genre:",
        ["None"] + sorted(df['Artist'].tolist()),
        label_visibility="collapsed",
        key="search_artist_select"
    )

    # Detect search change and update state
    if search_input != "None" and search_input != st.session_state.get('search_artist'):
        st.session_state['search_artist'] = search_input
        # Auto-populate first empty compare slot
        if search_input not in st.session_state['compare_artists']:
            for i in range(3):
                if not st.session_state['compare_artists'][i]:
                    st.session_state['compare_artists'][i] = search_input
                    break
        st.rerun()
    elif search_input == "None" and st.session_state.get('search_artist') is not None:
        st.session_state['search_artist'] = None
        st.session_state['expanded_cluster_ids'].clear()
        st.rerun()

    # ========== GENRE FOCUS (SECONDARY) ==========
    st.markdown("---")
    st.subheader("Genre Focus")
    parent_genre = st.radio("Genre", options=GENRES, index=2, label_visibility="collapsed")

    # ========== CLUSTERING (ALWAYS ENABLED) ==========
    st.markdown("---")
    st.subheader("Vibes")
    n_clusters = st.radio("Number of Vibes", [25, 50], horizontal=True)
    clustering_enabled = True
    cluster_strategy = "Aggregate"

    # Cluster count shown dynamically below (after clustering runs)

show_labels = True  # labels always on (checkbox removed)

ax_col1, ax_col2, ax_col3 = st.columns(3)
with ax_col1: axis_x = st.selectbox("X-Axis", DIMENSIONS, index=7)
with ax_col2: axis_y = st.selectbox("Y-Axis", DIMENSIONS, index=1)
with ax_col3: axis_z = st.selectbox("Z-Axis", DIMENSIONS, index=0)

f_df = df[df['genre'] == parent_genre].copy()

# Always perform clustering with caching
cache_key = f"{parent_genre}_{n_clusters}_{axis_x}_{axis_y}_{axis_z}"

if cache_key not in st.session_state['cluster_cache']:
    X = f_df[[axis_x, axis_y, axis_z]].values
    kmeans = KMeans(n_clusters=n_clusters, random_state=42, n_init=10)
    cluster_ids = kmeans.fit_predict(X)
    f_df['_cluster_id'] = cluster_ids

    # Build cluster membership map
    global_means = f_df[DIMENSIONS].mean()
    cluster_members_map = {}
    for cid in range(n_clusters):
        members = f_df[f_df['_cluster_id'] == cid]
        centroid = kmeans.cluster_centers_[cid]

        # Outlier dimension: which of the 10 dimensions deviates most from the global mean
        cluster_means = members[DIMENSIONS].mean()
        deviations = (cluster_means - global_means).abs()
        outlier_dim = deviations.idxmax()
        outlier_dir = "High" if cluster_means[outlier_dim] > global_means[outlier_dim] else "Low"
        outlier_label = f"{outlier_dir} {DIM_ABBREV[outlier_dim]}"

        # Centroid artist: member closest to the KMeans centroid on the 3 selected axes
        dists = np.sqrt(
            (members[axis_x] - centroid[0]) ** 2 +
            (members[axis_y] - centroid[1]) ** 2 +
            (members[axis_z] - centroid[2]) ** 2
        )
        centroid_artist = members.loc[dists.idxmin(), 'Artist']

        # Explode the subgenres array so each subgenre counts individually
        all_sg = [sg for val in members['Subgenres'] for sg in _ensure_list(val)]
        sg_counts = Counter(all_sg)
        cluster_members_map[cid] = {
            'artists': members['Artist'].tolist(),
            'centroid': centroid,
            'count': len(members),
            'subgenre_counts': dict(sg_counts),
            'dominant_subgenre': sg_counts.most_common(1)[0][0] if sg_counts else 'Mixed',
            'outlier_label': outlier_label,
            'centroid_artist': centroid_artist,
        }

    # Cache results
    st.session_state['cluster_cache'][cache_key] = {
        'kmeans': kmeans,
        'cluster_ids': cluster_ids,
        'cluster_members': cluster_members_map
    }
else:
    # Use cached results
    cached = st.session_state['cluster_cache'][cache_key]
    f_df['_cluster_id'] = cached['cluster_ids']

# Detect axis change and clear cache if needed
current_axes = (axis_x, axis_y, axis_z)
if st.session_state['last_axes'] != current_axes:
    st.session_state['cluster_cache'].clear()
    st.session_state['last_axes'] = current_axes
    st.rerun()

# Determine searched artist's cluster
searched_artist = st.session_state.get('search_artist')
searched_cluster_id = None
if searched_artist and searched_artist != "None":
    search_row = f_df[f_df['Artist'] == searched_artist]
    if not search_row.empty:
        searched_cluster_id = int(search_row.iloc[0]['_cluster_id'])
    else:
        st.warning(f"'{searched_artist}' not in {parent_genre} genre")
        st.session_state['search_artist'] = None
        searched_artist = None

# Sidebar: interactive cluster expansion checkboxes
_cluster_data = st.session_state['cluster_cache'].get(cache_key, {})
_cluster_members = _cluster_data.get('cluster_members', {})
expanded_ids = set()
with st.sidebar:
    st.markdown("---")
    st.subheader("Vibes")
    st.caption(f"{len(f_df)} artists · {n_clusters} vibes · click chart or check to expand")
    for _cid in range(n_clusters):
        _cb_key = f"cluster_cb_{_cid}_{cache_key}"
        _m = _cluster_members.get(_cid, {'artists': [], 'count': 0})
        _outlier = _m.get('outlier_label', '—')
        _anchor  = _m.get('centroid_artist', '?')
        _label = f"Vibe {_cid+1} ({_m['count']}) ~ {_anchor}"
        # Auto-expand the cluster containing the searched artist
        if _cid == searched_cluster_id and searched_artist:
            if not st.session_state.get(_cb_key, False):
                st.session_state[_cb_key] = True
        if st.checkbox(_label, key=_cb_key):
            expanded_ids.add(_cid)

if not f_df.empty:
    DIM_SHORT = [
        ("Arousal", "Arousal"),              ("Valence",             "Valence"),
        ("Timbral Brightness", "Brightness"), ("Rhythmic Regularity", "Rhythm"),
        ("Harmonic Complexity", "Harmony"),   ("Spatial Dimension",   "Spatial"),
        ("Articulation", "Articulation"),     ("Melodic Salience",    "Melody"),
        ("Structural Entropy", "Entropy"),    ("Acousticness",        "Acoustic"),
    ]

    def build_hover(row):
        score_lines = "<br>".join(
            f"{short:<13} {row[full]:>2}    {DIM_SHORT[i+1][1]:<13} {row[DIM_SHORT[i+1][0]]:>2}"
            for i, (full, short) in enumerate(DIM_SHORT) if i % 2 == 0
        )
        return (
            f"<b>{row['Artist']}</b><br>"
            f"<i>{_wrap(row['DNA'], width=45)}</i><br><br>"
            f"{score_lines}"
            "<extra></extra>"
        )

    def build_collision_hover(group):
        parts = []
        for _, row in group.iterrows():
            score_lines = "<br>".join(
                f"{short:<13} {row[full]:>2}    {DIM_SHORT[i+1][1]:<13} {row[DIM_SHORT[i+1][0]]:>2}"
                for i, (full, short) in enumerate(DIM_SHORT) if i % 2 == 0
            )
            parts.append(
                f"<b>{row['Artist']}</b><br>"
                f"<i>{_wrap(row['DNA'], width=45)}</i><br><br>"
                f"{score_lines}"
            )
        return "<br><br>─────────<br><br>".join(parts) + "<extra></extra>"

    def axis_color(row):
        def ch(v): return int((v - 1) / 9 * 175 + 80)
        return f"rgb({ch(row[axis_x])},{ch(row[axis_y])},{ch(row[axis_z])})"

    f_df = f_df.copy()
    f_df['_color'] = f_df.apply(axis_color, axis=1)

    # Define cluster colors for visualization
    CLUSTER_COLORS = [
        '#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd',
        '#8c564b', '#e377c2', '#7f7f7f', '#bcbd22', '#17becf',
        '#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd'
    ]

    fig = go.Figure()

    # Get cached clustering data
    cached = st.session_state['cluster_cache'][cache_key]
    kmeans_model = cached['kmeans']
    cluster_members_map = cached['cluster_members']
    # expanded_ids and searched_artist come from the sidebar controls above

    # Build visualization with support for expandable clusters
    for cluster_id in range(n_clusters):
        centroid = kmeans_model.cluster_centers_[cluster_id]
        member_data = cluster_members_map[cluster_id]
        members_df = f_df[f_df['_cluster_id'] == cluster_id]

        is_searched = searched_artist != "None" and searched_artist in member_data['artists'] if searched_artist else False
        is_expanded = cluster_id in expanded_ids

        # ===== CLUSTER CENTROID (always shown) =====
        size = 25 if is_searched else (18 if is_expanded else 12)
        opacity = 1.0 if (is_expanded or is_searched) else 0.5
        border_width = 4 if is_searched else (2 if is_expanded else 1)
        border_color = 'white' if is_searched else 'gray'

        # Hover text with outlier label, centroid artist, subgenre mix, member preview
        _outlier_label   = member_data.get('outlier_label', '')
        _centroid_artist = member_data.get('centroid_artist', '')
        _sg_lines = "<br>".join(
            f"  {sg}: {cnt}" for sg, cnt in list(member_data.get('subgenre_counts', {}).items())[:5]
        )
        member_preview = "<br>".join(member_data['artists'][:8])
        if len(member_data['artists']) > 8:
            member_preview += f"<br>... +{len(member_data['artists'])-8} more"

        hover_centroid = (
            f"<b>Vibe {cluster_id+1}</b><br>"
            f"{member_data['count']} artists ~ {_centroid_artist}<br><br>"
            f"<i>Subgenre mix:</i><br>{_sg_lines}<br><br>"
            f"{member_preview}"
            "<extra></extra>"
        )

        fig.add_trace(go.Scatter3d(
            x=[centroid[0]], y=[centroid[1]], z=[centroid[2]],
            mode='markers+text' if show_labels and (is_expanded or is_searched) else 'markers',
            text=[f"Vibe {cluster_id+1}"] if show_labels and (is_expanded or is_searched) else [""],
            customdata=[["cluster", cluster_id]],
            marker=dict(
                size=size,
                symbol='diamond',
                color=CLUSTER_COLORS[cluster_id % len(CLUSTER_COLORS)],
                opacity=opacity,
                line=dict(color=border_color, width=border_width)
            ),
            textfont=dict(color='white', size=12),
            textposition="top center",
            hovertemplate=[hover_centroid],
            showlegend=False,
            name=f"Vibe {cluster_id + 1}"
        ))

        # ===== CLUSTER MEMBERS (only if expanded or searched) =====
        if is_expanded or is_searched:
            pos_cols = [axis_x, axis_y, axis_z]
            is_collision = members_df.duplicated(subset=pos_cols, keep=False)
            singles_df = members_df[~is_collision]
            collisions_df = members_df[is_collision]

            # Individual artist spheres
            if not singles_df.empty:
                cluster_color = CLUSTER_COLORS[cluster_id % len(CLUSTER_COLORS)]
                colors = [cluster_color] * len(singles_df)

                fig.add_trace(go.Scatter3d(
                    x=singles_df[axis_x],
                    y=singles_df[axis_y],
                    z=singles_df[axis_z],
                    mode='markers+text' if show_labels else 'markers',
                    text=singles_df['Artist'] if show_labels else "",
                    customdata=[["artist", cluster_id, row["Artist"]] for _, row in singles_df.iterrows()],
                    marker=dict(
                        size=8,
                        symbol='circle',
                        color=colors,
                        opacity=0.9,
                        line=dict(color='white', width=1)
                    ),
                    textfont=dict(color='white', size=10),
                    textposition="top center",
                    hovertemplate=[build_hover(row) for _, row in singles_df.iterrows()],
                    showlegend=False
                ))

            # Collision points (multiple artists at same position)
            for _, group in collisions_df.groupby(pos_cols, sort=False):
                collision_names = " & ".join(group['Artist'].tolist())

                fig.add_trace(go.Scatter3d(
                    x=[group[axis_x].iloc[0]],
                    y=[group[axis_y].iloc[0]],
                    z=[group[axis_z].iloc[0]],
                    mode='markers+text' if show_labels else 'markers',
                    text=[collision_names] if show_labels else [""],
                    customdata=[["collision", cluster_id]],
                    marker=dict(
                        size=10,
                        symbol='diamond',
                        color='#FFD700',
                        opacity=0.95,
                        line=dict(color='white', width=2)
                    ),
                    textfont=dict(color='#FFD700', size=11),
                    textposition="top center",
                    hovertemplate=[build_collision_hover(group)],
                    showlegend=False
                ))

    # Grid lines
    grid_style = dict(color="rgba(150, 150, 150, 0.1)", width=1)
    for i in range(1, 11):
        fig.add_trace(go.Scatter3d(x=[i, i], y=[1, 10], z=[1, 1], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
        fig.add_trace(go.Scatter3d(x=[1, 10], y=[i, i], z=[1, 1], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
        fig.add_trace(go.Scatter3d(x=[1, 1], y=[i, i], z=[1, 10], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
        fig.add_trace(go.Scatter3d(x=[1, 1], y=[1, 10], z=[i, i], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
        fig.add_trace(go.Scatter3d(x=[i, i], y=[1, 1], z=[1, 10], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
        fig.add_trace(go.Scatter3d(x=[1, 10], y=[1, 1], z=[i, i], mode='lines', line=grid_style, hoverinfo='skip', showlegend=False))
        fig.add_trace(go.Scatter3d(x=[i], y=[1], z=[0.7], mode='text', text=[str(i)], textfont=dict(color='white', size=9), showlegend=False, hoverinfo='skip'))
        fig.add_trace(go.Scatter3d(x=[1], y=[i], z=[0.7], mode='text', text=[str(i)], textfont=dict(color='white', size=9), showlegend=False, hoverinfo='skip'))
        fig.add_trace(go.Scatter3d(x=[0.7], y=[1], z=[i], mode='text', text=[str(i)], textfont=dict(color='white', size=9), showlegend=False, hoverinfo='skip'))

    # Origin axes
    ax_style = dict(color='white', width=6)
    fig.add_trace(go.Scatter3d(x=[1, 10], y=[1, 1], z=[1, 1], mode='lines', line=ax_style, hoverinfo='skip', showlegend=False))
    fig.add_trace(go.Scatter3d(x=[1, 1], y=[1, 10], z=[1, 1], mode='lines', line=ax_style, hoverinfo='skip', showlegend=False))
    fig.add_trace(go.Scatter3d(x=[1, 1], y=[1, 1], z=[1, 10], mode='lines', line=ax_style, hoverinfo='skip', showlegend=False))

    _axis = dict(
        range=[0.5, 10.8], showgrid=False, showbackground=False,
        backgroundcolor='rgba(0,0,0,0)', showticklabels=False,
        title="", showspikes=False, zeroline=False,
    )

    fig.update_layout(
        template="plotly_dark", height=800,
        paper_bgcolor='rgba(0,0,0,0)',
        hoverlabel=dict(font=dict(family="monospace", size=12)),
        clickmode='event+select',
        scene=dict(
            xaxis=_axis, yaxis=_axis, zaxis=_axis,
            aspectmode='cube',
            bgcolor='rgba(0,0,0,0)',
            annotations=[
                dict(showarrow=False, x=10.7, y=1, z=1, text=f"<b>{axis_x}</b>",
                     font=dict(color="white", size=13), hovertext=get_axis_popover(axis_x, parent_genre)),
                dict(showarrow=False, x=1, y=10.7, z=1, text=f"<b>{axis_y}</b>",
                     font=dict(color="white", size=13), hovertext=get_axis_popover(axis_y, parent_genre)),
                dict(showarrow=False, x=1, y=1, z=10.7, text=f"<b>{axis_z}</b>",
                     font=dict(color="white", size=13), hovertext=get_axis_popover(axis_z, parent_genre)),
            ]
        ),
        margin=dict(l=0, r=0, b=0, t=0)
    )

    event_data = st.plotly_chart(fig, key="scatter3d", on_select="rerun", width='stretch')

    # Handle chart click: expand vibes or populate compare slots
    if event_data and event_data.selection and event_data.selection.points:
        pt = event_data.selection.points[0]
        cd = pt.get('customdata')
        if isinstance(cd, list) and cd:
            pt_type = cd[0]
            if pt_type == 'cluster' and len(cd) >= 2:
                cid = int(cd[1])
                cb_key = f"cluster_cb_{cid}_{cache_key}"
                is_already = st.session_state.get(cb_key, False)
                # Collapse all vibes, then toggle the clicked one (exclusive expand)
                for _i in range(n_clusters):
                    st.session_state[f"cluster_cb_{_i}_{cache_key}"] = False
                if not is_already:
                    st.session_state[cb_key] = True
                st.rerun()
            elif pt_type == 'artist' and len(cd) >= 3:
                artist_name = cd[2]
                # Collapse all vibes
                for _i in range(n_clusters):
                    st.session_state[f"cluster_cb_{_i}_{cache_key}"] = False
                # Populate first empty compare slot
                if artist_name and artist_name not in st.session_state['compare_artists']:
                    for i in range(3):
                        if not st.session_state['compare_artists'][i]:
                            st.session_state['compare_artists'][i] = artist_name
                            break
                st.rerun()

    # ============================================================
    # DETAIL PANEL
    # ============================================================
    st.markdown("---")

    # Determine cluster scope
    _single_cluster_id = list(expanded_ids)[0] if len(expanded_ids) == 1 else None
    _single_cluster_data = _cluster_members.get(_single_cluster_id) if _single_cluster_id is not None else None

    # Build slot options
    if _single_cluster_data:
        slot_options = [_PLACEHOLDER] + sorted(_single_cluster_data['artists'])
        _scope_label = f"Vibe {_single_cluster_id + 1} · {_single_cluster_data['count']} artists"
    else:
        slot_options = [_PLACEHOLDER] + sorted(df['Artist'].tolist())
        _scope_label = None

    # Header row
    _hc1, _hc2 = st.columns([3, 1])
    with _hc1:
        st.subheader("Compare Artists")
        if _scope_label:
            st.caption(f"Scoped to {_scope_label} — uncheck the vibe to search all artists")
    with _hc2:
        if any(st.session_state['compare_artists']):
            if st.button("Clear all", use_container_width=True):
                st.session_state['compare_artists'] = [None, None, None]
                st.rerun()

    # 3 compare slots
    slot_cols = st.columns(3)
    for i, col in enumerate(slot_cols):
        with col:
            current = st.session_state['compare_artists'][i] or _PLACEHOLDER
            options = slot_options
            # If current value not in scoped list, prepend it so it stays visible
            if current != _PLACEHOLDER and current not in options:
                options = [_PLACEHOLDER, current] + [a for a in slot_options[1:] if a != current]
            idx = options.index(current) if current in options else 0
            chosen = st.selectbox(
                f"Artist {i + 1}", options,
                index=idx,
                key=f"compare_slot_{i}_{_single_cluster_id}",
                label_visibility="collapsed"
            )
            st.session_state['compare_artists'][i] = chosen if chosen != _PLACEHOLDER else None

    active_artists = [a for a in st.session_state['compare_artists'] if a and a in df['Artist'].values]

    # ── Empty state ──
    if not active_artists:
        st.caption("Search for an artist, expand a Vibe, or select artists above to compare.")

    # ── Single artist ──
    elif len(active_artists) == 1:
        name = active_artists[0]
        row = df[df['Artist'] == name].iloc[0]
        col_info, col_radar = st.columns([1, 1])
        with col_info:
            st.markdown(f"### {name}")
            sg_list = _ensure_list(row.get('Subgenres', []))
            if sg_list:
                st.caption(" · ".join(sg_list))
            dna = _field(row, 'DNA')
            if dna:
                st.markdown(f"*{dna}*")
            st.markdown("---")
            for dim in DIMENSIONS:
                val = int(row[dim])
                st.progress(val / 10, text=f"{dim}: {val}")
        with col_radar:
            vals = [row[dim] for dim in DIMENSIONS]
            fig_r = go.Figure(go.Scatterpolar(
                r=vals + [vals[0]], theta=DIMENSIONS + [DIMENSIONS[0]],
                fill='toself', name=name,
                line=dict(color=COMPARE_COLORS[0], width=2), opacity=0.65,
            ))
            fig_r.update_layout(
                polar=dict(
                    radialaxis=dict(visible=True, range=[0, 10],
                        tickfont=dict(color='rgba(255,255,255,0.4)', size=9)),
                    angularaxis=dict(tickfont=dict(color='white', size=11)),
                    bgcolor='rgba(0,0,0,0)',
                ),
                template="plotly_dark", paper_bgcolor='rgba(0,0,0,0)',
                showlegend=False, height=400,
                margin=dict(l=60, r=60, t=20, b=20),
            )
            st.plotly_chart(fig_r, width='stretch')

    # ── Multi-artist comparison ──
    else:
        fig_radar = go.Figure()
        for j, name in enumerate(active_artists):
            row = df[df['Artist'] == name].iloc[0]
            vals = [row[dim] for dim in DIMENSIONS]
            fig_radar.add_trace(go.Scatterpolar(
                r=vals + [vals[0]], theta=DIMENSIONS + [DIMENSIONS[0]],
                fill='toself', name=name,
                line=dict(color=COMPARE_COLORS[j % len(COMPARE_COLORS)], width=2), opacity=0.65,
            ))
        fig_radar.update_layout(
            polar=dict(
                radialaxis=dict(visible=True, range=[0, 10],
                    tickfont=dict(color='rgba(255,255,255,0.4)', size=9)),
                angularaxis=dict(tickfont=dict(color='white', size=11)),
                bgcolor='rgba(0,0,0,0)',
            ),
            template="plotly_dark", paper_bgcolor='rgba(0,0,0,0)',
            showlegend=True, legend=dict(font=dict(color='white', size=12)),
            height=520, margin=dict(l=60, r=60, t=40, b=40),
        )
        st.plotly_chart(fig_radar, width='stretch')

        detail_cols = st.columns(len(active_artists))
        for j, (name, col) in enumerate(zip(active_artists, detail_cols)):
            row = df[df['Artist'] == name].iloc[0]
            color = COMPARE_COLORS[j % len(COMPARE_COLORS)]
            with col:
                st.markdown(
                    f"<span style='color:{color};font-size:1.1em;font-weight:bold'>{name}</span>",
                    unsafe_allow_html=True,
                )
                sg_list = _ensure_list(row.get('Subgenres', []))
                if sg_list:
                    st.caption(" · ".join(sg_list))
                dna = _field(row, 'DNA')
                if dna:
                    st.markdown(f"*{dna}*")
                st.markdown("---")
                for dim in DIMENSIONS:
                    val = int(row[dim])
                    st.progress(val / 10, text=f"{dim}: {val}")
