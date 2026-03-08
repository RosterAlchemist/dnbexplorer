-- PolyJamerous: Add enrichment columns from drumandbassuk.com / output.csv scrape
-- Run this in the Supabase SQL Editor before loading update_from_csv.sql
-- All columns are nullable — existing rows and INSERT statements are unaffected.

ALTER TABLE artists
    ADD COLUMN IF NOT EXISTS mbid          TEXT,        -- MusicBrainz ID (stable external key)
    ADD COLUMN IF NOT EXISTS hof           BOOLEAN      DEFAULT FALSE,  -- Hall of Fame badge
    ADD COLUMN IF NOT EXISTS claude_score  SMALLINT     CHECK (claude_score BETWEEN 0 AND 10),  -- Gemini relevance/popularity score
    ADD COLUMN IF NOT EXISTS bio           TEXT,        -- Long-form biography (Gemini-scraped); informs DNA recomputation
    ADD COLUMN IF NOT EXISTS location      TEXT,        -- Artist location (city/country)
    ADD COLUMN IF NOT EXISTS years_active  TEXT,        -- e.g. "2005 – 2025"
    ADD COLUMN IF NOT EXISTS latest_release INTEGER,    -- Year of most recent release
    ADD COLUMN IF NOT EXISTS num_releases  INTEGER,     -- Total known release count
    ADD COLUMN IF NOT EXISTS ra_link       TEXT,        -- Resident Advisor profile URL
    ADD COLUMN IF NOT EXISTS wiki_link     TEXT,        -- Wikipedia page URL
    ADD COLUMN IF NOT EXISTS video_link    TEXT,        -- YouTube channel/video URL
    ADD COLUMN IF NOT EXISTS discogs_link  TEXT,        -- Discogs artist page URL
    ADD COLUMN IF NOT EXISTS bp_link       TEXT;        -- Beatport artist page URL

-- Verify
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'artists'
ORDER BY ordinal_position;
