# Gemini Enrichment Task — PolyJamerous Artist DB

## Your role
You are enriching a PostgreSQL database of Drum & Bass + Jungle artists with factual metadata.
All artists in this DB are DnB/Jungle artists. Use your knowledge to populate missing fields.

## DB Connection
Use the connection details already configured in your environment.

## Task

Work through artists in batches of 50. For each batch:

1. Query artists with missing fields:
```sql
SELECT id, name
FROM artists
WHERE bio IS NULL
   OR location IS NULL
   OR years_active IS NULL
   OR latest_release IS NULL
ORDER BY name
LIMIT 50 OFFSET {offset};
```

2. For each artist, look up and populate:

### `bio` (TEXT)
A comprehensive biography aimed at enabling accurate musical dimension scoring. Cover as many of the following as you know:
- Origin, location, and when they emerged in DnB/Jungle
- Signature sound: energy level, mood, timbral character, rhythmic style
- Subgenre(s) they operate in (e.g. Liquid, Neurofunk, Jungle, Halftime)
- Key releases (tracks, EPs, albums) and the labels they appeared on
- Notable collaborators, remixers, or artists they're associated with
- Evolution of their sound over time if significant
- Cultural significance or influence within the scene
- Any crossover into other genres or non-DnB work

Be specific — name actual tracks, labels, and collaborators where you know them. Do NOT fabricate details. If you have low confidence on something, omit it rather than guess. Aim for 150–300 words. If you genuinely know very little about the artist, write what you do know and keep it brief rather than padding.

### `location` (TEXT)
Format: `City, Country` (e.g. `London, UK` or `Bristol, UK`). Use the artist's primary base of operations during their active years. If unknown, leave NULL.

### `years_active` (TEXT)
Format: `YYYY–present` or `YYYY–YYYY`. Use the year of first notable DnB release as the start. If unknown, leave NULL.

### `latest_release` (INTEGER)
Year (4 digits) of their most recent notable release (album, EP, or single). If unknown, leave NULL.

3. Write back with a single UPDATE per artist:
```sql
UPDATE artists
SET
    bio           = '...',
    location      = '...',
    years_active  = '...',
    latest_release = YYYY
WHERE id = {id};
```

## Rules
- Skip any field you're not confident about (leave existing value or NULL — do NOT guess).
- Never overwrite a field that already has a non-null value unless you're certain the existing value is wrong.
- bio must be factual, not promotional fluff.
- Keep running through batches (increment OFFSET by 50) until no rows return.

## Priority order
Run in this order to unblock the Claude scoring pass as soon as possible:
1. First pass: artists WHERE bio IS NULL (954 artists)
2. Second pass: artists WHERE location IS NULL OR years_active IS NULL OR latest_release IS NULL

## Quality check
After every 5 batches, run:
```sql
SELECT COUNT(*) as total,
       COUNT(bio) as has_bio,
       COUNT(location) as has_location,
       COUNT(years_active) as has_years_active,
       COUNT(latest_release) as has_latest_release
FROM artists;
```
and report progress.
