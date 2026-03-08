# Claude Scoring Task — PolyJamerous Artist Dimensions

## Your role
You are scoring Drum & Bass + Jungle artists on 10 musical dimensions (1–10 scale).
You will read artist bios from the DB and apply consistent musical judgment.

## DB Connection
`postgresql://postgres:PollyWogs67!@db.ocwsxudtaoarqfaildtf.supabase.co:5432/postgres`

## Task

Work through artists in batches of 30. For each batch:

1. Query artists needing scoring:
```sql
SELECT id, name, bio, subgenres, years_active, location
FROM artists
WHERE (arousal = 5 AND valence = 5 AND timbral_brightness = 5
       AND rhythmic_regularity = 5 AND harmonic_complexity = 5)
  AND bio IS NOT NULL
ORDER BY name
LIMIT 30 OFFSET {offset};
```

2. For each artist, output all fields below, then write one UPDATE.

---

## Dimension Scoring Rubric

Score each dimension 1–10. All scores are relative within the DnB/Jungle genre space (not compared to all music — a "1" in Arousal still has a DnB kick drum).

### 1. Arousal
Energy, intensity, pace, density of events.
- 1–3: Ambient, meditative, sparse. Slow rollers, deep minimal, Autonomic-style.
- 4–6: Mid-energy. Liquid rollers, melodic DnB, Jump Up at moderate pace.
- 7–9: High-energy. Hard Dancefloor, Neurofunk, fast Jungle.
- 10: Extreme intensity. Crossbreed, industrial, relentless.

### 2. Valence
Emotional tone: dark/tense ↔ uplifting/euphoric.
- 1–3: Dark, melancholic, threatening, dystopian.
- 4–6: Neutral, bittersweet, driving without clear emotional direction.
- 7–9: Uplifting, euphoric, anthemic, positive.
- 10: Intensely euphoric or joyful.

### 3. Timbral Brightness
Spectral character: warm/dark ↔ sharp/bright.
- 1–3: Dark, sub-heavy, warm, muffled highs.
- 4–6: Balanced — clear mids, present but not harsh highs.
- 7–9: Bright, sharp, cutting synths, emphasis on upper frequencies.
- 10: Extremely bright/harsh, industrial noise textures.

### 4. Rhythmic Regularity
How grid-locked vs. loose/syncopated the rhythm is.
- 1–3: Highly syncopated, swing-heavy, unpredictable. Classic Jungle, Drumfunk, breakbeat-heavy.
- 4–6: Mixed — regular 2-step with some variation.
- 7–9: Very regular, mechanical, grid-locked.
- 10: Completely rigid, quantized, minimal rhythmic variation.

### 5. Harmonic Complexity
Chord/tonal richness.
- 1–3: Simple, single-note basslines, modal, minimal chords.
- 4–6: Some chord progressions, moderate harmonic movement.
- 7–9: Rich chords, key modulations, jazz influences.
- 10: Highly complex harmonics, polytonal, avant-garde.

### 6. Spatial Dimension
Width, depth, stereo field use, reverb/space.
- 1–3: Dry, narrow, mono-focused, punchy but flat.
- 4–6: Moderate stereo width, some reverb and space.
- 7–9: Wide, immersive, heavy reverb/delay, atmospheric.
- 10: Extreme spatial design — binaural, psychoacoustic effects.

### 7. Articulation
Note attack character: smooth/sustained ↔ punchy/staccato.
- 1–3: Smooth, legato, long sustained pads, flowing.
- 4–6: Mixed — some punchy elements balanced with sustain.
- 7–9: Punchy, staccato, tight, sharp transients.
- 10: Extremely staccato, robotic, hyper-articulated.

### 8. Melodic Salience
How prominent and hooky the melodic content is.
- 1–3: Atonal or textural, rhythm-focused, no clear melody.
- 4–6: Incidental melody, motifs rather than hooks.
- 7–9: Clear, memorable melodies, vocal hooks, melodic basslines.
- 10: Extremely melodic, pop-level hook density.

### 9. Structural Entropy
How predictable/conventional the track structure is.
- 1–3: Rigid, predictable. Conventional intro/drop/break/drop/outro.
- 4–6: Some structural variation, but mostly conventional.
- 7–9: Unconventional, evolving, surprising transitions.
- 10: Completely non-linear, experimental, no identifiable structure.

### 10. Acousticness
Organic/acoustic content vs. fully synthetic.
- 1–3: 100% synthetic — entirely digital/electronic sounds.
- 4–6: Mostly synthetic with some sampled acoustic elements.
- 7–9: Significant live/acoustic elements — real instruments, vocals, jazz samples.
- 10: Primarily acoustic, minimal electronic processing.

---

## DNA Description
2 sentences max. Capture the artist's sonic character and cultural significance within DnB/Jungle. Be specific — reference their subgenre, signature techniques, or key associations. No promotional language.

## Subgenres
Order by relevance (primary first). Use only the canonical taxonomy:
**Top-level**: Jungle, Dancefloor, Liquid, Neurofunk, Jump Up, Crossbreed, Deep, Halftime, Drumstep, Sambass, Ragga DnB
**Sub-subgenres**: Atmospheric Jungle, Ragga Jungle, Drumfunk, Breakcore (under Jungle); Techstep, Technoid (under Neurofunk); Darkstep (under Crossbreed); Leftfield Bass, 170, Autonomic (under Halftime)

---

## Output & Write-back

For each artist, write one UPDATE:
```sql
UPDATE artists SET
    dna                  = '...',
    subgenres            = ARRAY['...', '...'],
    arousal              = X,
    valence              = X,
    timbral_brightness   = X,
    rhythmic_regularity  = X,
    harmonic_complexity  = X,
    spatial_dimension    = X,
    articulation         = X,
    melodic_salience     = X,
    structural_entropy   = X,
    acousticness         = X
WHERE id = {id};
```

Escape single quotes in text fields with `''`.

## Consistency rules
- Before starting each batch, briefly recall 3–4 reference artists you've already scored to anchor your scale.
- If an artist's bio is very short or vague, score conservatively (stay near 5) and note it.
- Do NOT score artists where bio is NULL — skip them (they'll be filled by Gemini first).

## Progress tracking
After each batch, report: artists scored, cumulative total, any skipped (bio null or low confidence).
