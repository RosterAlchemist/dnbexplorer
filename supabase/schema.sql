-- PolyJamerous: Supabase schema
-- Run this in the Supabase SQL editor before seeding data.
-- NOTE: The live DB is authoritative. This file reflects the current intended schema
--       including all migrations up to migrate_add_columns.sql.

CREATE TABLE IF NOT EXISTS artists (
    id                  BIGSERIAL PRIMARY KEY,
    name                TEXT        NOT NULL,
    genre               TEXT        NOT NULL,   -- parent genre (e.g. "Drum & Bass + Jungle")
    subgenres           TEXT[],                 -- ordered array; primary subgenre first
    dna                 TEXT,                   -- short musical description (~2 sentences)

    -- Musical dimensions (scored 1–10)
    arousal             SMALLINT    CHECK (arousal             BETWEEN 1 AND 10),
    valence             SMALLINT    CHECK (valence             BETWEEN 1 AND 10),
    timbral_brightness  SMALLINT    CHECK (timbral_brightness  BETWEEN 1 AND 10),
    rhythmic_regularity SMALLINT    CHECK (rhythmic_regularity BETWEEN 1 AND 10),
    harmonic_complexity SMALLINT    CHECK (harmonic_complexity BETWEEN 1 AND 10),
    spatial_dimension   SMALLINT    CHECK (spatial_dimension   BETWEEN 1 AND 10),
    articulation        SMALLINT    CHECK (articulation        BETWEEN 1 AND 10),
    melodic_salience    SMALLINT    CHECK (melodic_salience    BETWEEN 1 AND 10),
    structural_entropy  SMALLINT    CHECK (structural_entropy  BETWEEN 1 AND 10),
    acousticness        SMALLINT    CHECK (acousticness        BETWEEN 1 AND 10),

    -- Enrichment columns (added via migrate_add_columns.sql)
    mbid                TEXT,                   -- MusicBrainz ID (stable external key)
    hof                 BOOLEAN     DEFAULT FALSE,  -- Hall of Fame badge
    claude_score        SMALLINT    CHECK (claude_score BETWEEN 0 AND 10),  -- Gemini relevance/popularity score (0–10)
    bio                 TEXT,                   -- Long-form biography (Gemini-scraped); informs future DNA recomputation
    location            TEXT,                   -- Artist location (city/country)
    years_active        TEXT,                   -- e.g. "2005 – 2025"
    latest_release      INTEGER,                -- Year of most recent release
    num_releases        INTEGER,                -- Total known release count
    ra_link             TEXT,                   -- Resident Advisor profile URL
    wiki_link           TEXT,                   -- Wikipedia page URL
    video_link          TEXT,                   -- YouTube channel/video URL
    discogs_link        TEXT,                   -- Discogs artist page URL
    bp_link             TEXT                    -- Beatport artist page URL
);

-- One row per (dimension × genre).
-- genre = 'Universal' stores the canonical description and metrics with no anchors.
-- genre = a specific parent genre stores low/mid/high artist anchors.
CREATE TABLE IF NOT EXISTS musical_dimensions (
    id              BIGSERIAL   PRIMARY KEY,
    dimension_name  TEXT        NOT NULL,
    genre           TEXT        NOT NULL,
    description     TEXT,       -- populated on 'Universal' rows
    metrics         TEXT,       -- populated on 'Universal' rows
    low_anchor      TEXT,       -- populated on genre-specific rows
    mid_anchor      TEXT,
    high_anchor     TEXT,
    UNIQUE (dimension_name, genre)
);
