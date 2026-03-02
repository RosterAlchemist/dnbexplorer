-- PolyJamerous: Artist seed data — Batch 32 (fresh pass: A-M, vocalists + Autonomic pioneers)
-- Sources: drumandbassuk.com profiles + supplementary research
-- Schema: subgenres TEXT[] only (no subgenre column)

INSERT INTO artists
    (name, genre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Aries (Louis) — Jungle/Ragga DnB, UK, Born on Road/Hospital/Liondub, jungle culture preservation
('Aries',                'Drum & Bass + Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'British producer and DJ Louis who is a core Born on Road collective member and active advocate for jungle culture — Hospital Records, Liondub International, and UKF releases blend reggae, dub, and jungle with modern production techniques. Kelvin 373, Selecta J-Man, and Deekline collaboration partners whose dynamic, sound-system-rooted sets at DnB Allstars Mallorca and The Jungle Weekender Amsterdam have built a reputation as one of the jungle revival''s most committed and respected artistic voices.',
 7, 7, 6, 8,  4, 7, 8,  7, 5, 5),

-- David Boomah (David Williams) — Jungle/Ragga vocalist, Birmingham/Jamaica, V Recordings, ''Who Run Tings'' 1995
('David Boomah',         'Drum & Bass + Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'Birmingham-born, Jamaica-raised vocalist David Anthony Williams whose SHY FX collaboration Who Run Tings (V Recordings, 1995) is a foundational ragga jungle classic — a soulful, reggae and dancehall-influenced voice whose career has spanned V Recordings, Born on Road, and ODT Muzik across three decades. UK Apachi, Benny Page, and Navigator collaboration partner who bridges the authentic reggae vocal tradition with drum and bass''s rhythmic energy.',
 7, 7, 6, 8,  4, 7, 8,  7, 5, 5),

-- Gardna — Dub/Ragga MC, Bristol, Shogun Audio/Day Ones, Good Time Not A Long Time 2019
('Gardna',               'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'Bristol MC who blends dub, reggae, hip-hop, and drum and bass through sharp wordplay and a charismatic stage presence rooted in UK sound system culture. Shogun Audio and Day Ones releases; Good Time Not A Long Time (2019 debut album) with feel-good, cross-genre energy — DRS, Kasra, Nu:Tone, and Sigma collaboration partners whose Glastonbury and Boomtown festival appearances demonstrate genuine breadth of appeal across the DnB and sound system spectrum.',
 7, 7, 6, 8,  5, 7, 8,  7, 6, 5),

-- Kid Drama (Damon Kirkham) — Autonomic/Experimental DnB, UK, Metalheadz/Exit Records, Instra:mental co-founder
('Kid Drama',            'Drum & Bass + Jungle', ARRAY['Halftime', 'Deep'],
 'British producer Damon Kirkham and Instra:mental co-founder with Alex Green (dBridge) who pioneered the Autonomic movement — the Autonomic podcast series and Exit Records, Metalheadz catalogue fundamentally reshaped drum and bass by fusing it with techno, electro, and dubstep influences at half-tempo. Fabric residency artist; Skeptical, LSB, and dBridge collaboration partner whose intellectual approach to DnB rhythm and structure influenced a generation of halftime and experimental producers.',
 4, 4, 6, 6,  8, 9, 6,  4, 9, 2),

-- Mollie Collins — Dancefloor DnB, UK, Right Good Records founder, Kiss FM presenter, Best Female Artist 2020
('Mollie Collins',       'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Jump Up'],
 'British DJ, producer, and broadcaster who founded Right Good Records in 2019 and won Best Breakthrough DJ (2017) and Best Female Artist (2020) — Kiss FM drum and bass presenter since 2018 whose consistent Viper, Rampage, and Spinnin'' Records releases deliver high-energy, innovative dancefloor DnB. Harry Shotta, René LaVice, and Murdock collaboration partners who combines creative label infrastructure with a growing production and media presence.',
 7, 7, 7, 8,  5, 6, 7,  7, 5, 1),

-- Document One (Ollie and Jamie) — Dancefloor/Liquid DnB, UK, Shogun Audio/Metalheadz/Hospital, prolific duo
('Document One',         'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'British duo whose Shogun Audio, Metalheadz, and Hospital Records releases deliver energetic dancefloor drum and bass with melodic sophistication and precise production values. A prolific and consistent scene presence whose output crosses the liquid-dancefloor boundary with ease — regular Hospitality and international festival bookings alongside Radio 1 support confirm a solid mid-career trajectory at the quality end of the contemporary dancefloor DnB spectrum.',
 7, 6, 7, 8,  6, 7, 7,  7, 5, 2),

-- Noisestorm — Dancefloor/Electro DnB, Canada, Monstercat/Eatbrain, ''Crab Rave'' 2018 viral phenomenon
('Noisestorm',           'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Jump Up'],
 'Canadian producer whose Monstercat debut and Eatbrain releases delivered energetic, electro-influenced drum and bass before Crab Rave (2018) became one of the internet''s most successful memes — a globally viral clip with 100+ million views that introduced drum and bass to an entirely new demographic. A rare DnB crossover success story that demonstrated the genre''s potential for viral reach when production energy and visual humour intersect perfectly.',
 8, 7, 8, 8,  4, 6, 8,  6, 5, 1),

-- Loop Faction (Mark Caro) — Jungle/Atmospheric DnB, UK, Moving Shadow, late-90s atmospheric productions
('Loop Faction',         'Drum & Bass + Jungle', ARRAY['Deep', 'Jungle'],
 'UK producer Mark Caro whose Moving Shadow output delivered atmospheric, jazz-influenced drum and bass in the late 1990s — a sophisticated approach to jungle''s rhythmic energy that emphasised spatial production, harmonic complexity, and understated melodic development. Part of the rich Moving Shadow stable alongside Omni Trio, Boymerang, and Total Science that defined the intelligent end of 1990s DnB before the term "liquid" had been coined.',
 5, 5, 6, 7,  7, 9, 6,  6, 7, 4),

-- Homemade Weapons — Industrial/Dark DnB, UK, PRSPCT/Eatbrain/Critical, extreme darkstep
('Homemade Weapons',     'Drum & Bass + Jungle', ARRAY['Crossbreed', 'Neurofunk'],
 'UK producer whose PRSPCT Recordings, Eatbrain, and Critical Music releases push drum and bass toward industrial and metallic sonic extremes — abrasive textures, mechanistic rhythms, and oppressive atmospheres that appeal to listeners at the intersection of DnB and industrial music. A reliable presence on the darker festival circuit at events like Outbreak and PRSPCT XTRM where maximum sonic intensity is the central artistic value.',
 9, 1, 9, 8,  5, 7, 9,  2, 7, 1),

-- Calyx already in batch 26 — replacing with Teej
-- Teej — Liquid/Vocal DnB, UK, Hospital Records, female DJ and presenter
('Teej',                 'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'British DJ and presenter Teej whose Hospital Records profile and Hospitality festival appearances have built a growing reputation as one of the contemporary liquid DnB scene''s most engaging live selectors. An advocate for diverse representation in drum and bass whose platform presence and DJ craft reflect Hospital''s commitment to expanding the genre''s audience while maintaining the melodic and emotional qualities that define their brand.',
 5, 7, 7, 8,  5, 7, 6,  7, 5, 3),

-- Equinox (Chris Murray) — Dancefloor DnB, UK, Metalheadz/RAM, Andy C Nightlife contributor
('Equinox',              'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Neurofunk'],
 'UK producer Chris Murray who delivered consistently energetic, technically precise dancefloor DnB through Metalheadz and RAM Records — Andy C Nightlife mix series contributor whose output defined the hard, driving end of the late-90s and early-2000s DnB spectrum. A veteran whose catalogue sits alongside DJ Zinc, Shimon, and Optical in the generation of producers who established DnB''s peak-era dancefloor blueprint.',
 8, 4, 8, 8,  6, 7, 8,  4, 6, 1),

-- Dub Elements (Arnau + Xavi) — Dancefloor/Neuro DnB, Spain, Shogun Audio/RAM/Vision, Spanish DnB ambassadors
('Dub Elements',         'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Neurofunk'],
 'Spanish duo Arnau and Xavi who have built a substantial international profile through Shogun Audio, RAM Records, and Vision Recordings — energetic, technically proficient dancefloor DnB with neurofunk edge that represents the Spanish scene''s growing contribution to global drum and bass. A significant force in establishing DnB credibility in Spain and Latin America through consistent production, DJ bookings at Rampage and Let It Roll, and community-building across Southern European markets.',
 7, 5, 7, 8,  6, 7, 8,  5, 6, 1),

-- Flytronix (Les Steele) — Atmospheric/Jazz DnB, UK, Moving Shadow/Creative Source, ''Emotion Drive'' 1996
('Flytronix',            'Drum & Bass + Jungle', ARRAY['Deep', 'Liquid'],
 'UK producer Les Steele whose Moving Shadow and Creative Source releases pioneered atmospheric, jazz-influenced drum and bass — Emotion Drive (1996) is one of the formative intelligent DnB tracks whose piano lines and melodic sophistication predated the liquid subgenre. Omni Trio and Q Project contemporaries who contributed to Moving Shadow''s golden era of atmospheric DnB before the sound had a definitive commercial identity.',
 4, 6, 5, 7,  8, 9, 5,  7, 7, 5),

-- Dead Man's Chest (Matt Thomas) — Dark/Industrial DnB, UK, PRSPCT/Eatbrain/Metalheadz/Barcode, extreme producer
('Dead Man\'s Chest',    'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Crossbreed'],
 'UK producer Matt Thomas whose PRSPCT Recordings, Eatbrain, Metalheadz, and Barcode Recordings output delivers ferociously dark, industrial-influenced neurofunk at the extreme end of drum and bass production. Current Value and Homemade Weapons-adjacent sonic territory — abrasive sound design, maximum percussion complexity, and zero concession to accessibility; a pillar of the heavy European neurofunk underground whose releases regularly feature on Outbreak and PRSPCT label showcases.',
 9, 1, 9, 8,  5, 7, 9,  2, 7, 1),

-- Mollie Collins already above — replacing last slot with Keeno already in batch 24
-- Inserting: Moresounds (Steve McLellan) — Jungle/Halftime, Bristol, Tectonic/Deep Medi, dubstep-jungle bridge
('Moresounds',           'Drum & Bass + Jungle', ARRAY['Jungle', 'Halftime'],
 'Bristol producer Steve McLellan whose Tectonic and Deep Medi output bridges jungle, dubstep, and halftime DnB — a pivotal figure in the Bristol bass music community whose production philosophy draws on classic jungle breakbeat science while embracing dubstep''s focus on sub-bass weight and half-time rhythmic structures. Pinch and Peverelist-adjacent Bristol underground artist whose catalogue represents a genuinely creative dialogue between two of UK bass music''s most important regional scenes.',
 5, 4, 6, 6,  6, 8, 7,  4, 8, 3);
