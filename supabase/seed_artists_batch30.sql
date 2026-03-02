-- PolyJamerous: Artist seed data — Batch 30 (fresh pass: M-T producers + jungle collectives)
-- Sources: drumandbassuk.com profiles + supplementary research
-- Schema: subgenres TEXT[] only (no subgenre column)

INSERT INTO artists
    (name, genre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- The Ganja Kru (DJ Hype + DJ Zinc + Pascal) — Jump Up/Jungle, UK, Ganja Records, ''Super Sharp Shooter'' 1996
('The Ganja Kru',        'Drum & Bass + Jungle', ARRAY['Jump Up', 'Jungle'],
 'UK supergroup of DJ Hype, DJ Zinc, and Pascal whose Ganja Records home and Super Sharp Shooter EP (1996) distilled the jungle-to-DnB transition through infectious, high-energy productions built on heavy basslines and intricate breakbeats. New Frontiers EP (1997) and F**k the Millennium (1999) continue a short but impactful catalogue — the Ganja Records infrastructure they built together remains one of UK jump-up''s defining institutional contributions.',
 8, 6, 7, 8,  4, 6, 8,  6, 5, 2),

-- The Outside Agency (DJ Hidden + Eye-D) — Crossbreed/Industrial, Netherlands, Genosha/PRSPCT, Thunderdome vets
('The Outside Agency',   'Drum & Bass + Jungle', ARRAY['Crossbreed', 'Neurofunk'],
 'Dutch duo DJ Hidden (Noël Wessels) and Eye-D (Frank Nitzinsky) from Goes who pioneered the crossbreed genre — fusing hardcore and drum and bass into a dark, industrial sonic assault through Genosha One Seven Five and PRSPCT Recordings. Thunderdome, Decibel, and Defqon.1 festival staples whose high-energy DJ sets have anchored the hardcore-DnB crossover scene since the late 1990s; a unique sonic identity at the extreme end of DnB''s hardest subgenre.',
 9, 1, 9, 8,  5, 7, 9,  2, 7, 1),

-- The Panacea (Mathis Mootz) — Industrial/Dark DnB, Wetzlar/Germany, Position Chrome, Low Profile Darkness 1997
('The Panacea',          'Drum & Bass + Jungle', ARRAY['Crossbreed', 'Neurofunk'],
 'Wetzlar producer Mathis Mootz who trained in classical music at Windsbach Boys Choir before releasing debut Low Profile Darkness (Chrome, 1997) and shaping techstep''s evolution toward industrial and digital hardcore territories. Position Chrome label founder and A&R who built German DnB infrastructure — German Engineering (2001) and PRSPCT Recordings output demonstrate a career defined by sonic extremity, engineering precision, and commitment to the darkest corners of DnB.',
 9, 1, 9, 8,  6, 7, 9,  2, 8, 1),

-- Mistabishi (James Pullen) — Experimental/Liquid DnB, London, Hospital Records, ''Drop'' 2009 debut LP
('Mistabishi',           'Drum & Bass + Jungle', ARRAY['Deep', 'Liquid'],
 'London producer James Pullen whose Hospital Records debut Drop (2009) — featuring Printer Jam and From Memory — established a reputation for experimental drum and bass with intricate patterns, atmospheric melodies, and unconventional sampling. NOH label output and a prolific solo catalogue through Virtue Signal (2021), Tribes of New York (2022), and BASED (2024) demonstrate a consistently boundary-pushing producer who prioritises musical originality over genre comfort.',
 5, 5, 6, 8,  7, 8, 7,  6, 8, 3),

-- Philth (Phil Robinson) — Multi-subgenre DnB, London, Peer Pressure Records/Dispatch/Fokuz, 100+ releases by 2017
('Philth',               'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'London producer Phil Robinson who exceeded 100 releases by 2017 across Peer Pressure Records, Dispatch Recordings, Fokuz, and Four Corners — a prolific output spanning liquid, tech-funk, and atmospheric DnB that resists easy genre categorisation. Moments in Time debut album and Last Of A Dying Breed series; NC-17, Melinki, and Quadrant collaboration partner; private production tutor whose educational work complements decades of genre-spanning scene contribution.',
 6, 6, 7, 8,  7, 7, 7,  6, 6, 2),

-- Samurai Breaks (Sam Langley Grattan) — Jungle/Footwork fusion, Scotland/Yorkshire, Critical/Born On Road/HooverSound
('Samurai Breaks',       'Drum & Bass + Jungle', ARRAY['Jungle', 'Halftime'],
 'Scotland-born Yorkshire-raised Sam Langley Grattan who fuses footwork, jungle, bassline, 4x4 rave, and grime into a 160bpm+ UK bass music synthesis — DJ Mag Best Breakthrough Producer 2021. Super Sonic Booty Bangers founder; HooverSound, Born On Road, and Critical Music releases; Glastonbury, Boomtown, and Bangface appearances with BBC Radio 1 support confirm a producer whose eclecticism connects underground dance subcultures with genuine scene authority.',
 7, 5, 7, 7,  6, 7, 8,  5, 8, 2),

-- Mistical — Dark/Neurofunk DnB, UK, Barcode/PRSPCT/Outbreak, extreme technical productions
('Mistical',             'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Crossbreed'],
 'UK producer whose Barcode Recordings and PRSPCT output delivers dark, technically extreme neurofunk at the harder end of the spectrum — precise engineering and unrelenting intensity define a sound that operates in the same sonic territory as Current Value and The Outside Agency. Outbreak Festival regular whose no-compromise approach to heavy DnB production has earned a loyal following among fans who value maximum rhythmic and sonic aggression.',
 9, 1, 9, 8,  5, 7, 9,  2, 7, 1),

-- Katharsys (George Georgakis) — Neurofunk/Crossbreed, Greece, PRSPCT/Eatbrain/Metalheadz, Greek DnB pioneer
('Katharsys',            'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Crossbreed'],
 'Greek producer George Georgakis whose PRSPCT Recordings, Eatbrain, and Metalheadz output delivers dark, technically demanding neurofunk and crossbreed — The Outside Agency collaboration partner who helped put Greece on the international DnB map. A veteran of the extreme end of the underground whose career demonstrates that the neurofunk tradition has genuine global reach beyond its UK and Dutch origins.',
 8, 2, 8, 8,  6, 7, 9,  2, 7, 1),

-- Fleck (Fletcher) — Jungle/Ragga, UK, Jungle Cakes/Liondub/Serial Killaz, jump-up jungle meets reggae
('Fleck',                'Drum & Bass + Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'UK producer who has built a consistent reputation through Jungle Cakes, Liondub International, and Serial Killaz — energetic, reggae-inflected jungle and jump-up DnB that carries authentic sound system heritage. Benny Page and Parly B collaboration partner whose output balances party-energy jump-up with genuine respect for the jungle tradition''s reggae and dancehall roots; a reliable dancefloor presence across the contemporary jungle revival circuit.',
 8, 7, 7, 8,  4, 6, 8,  7, 5, 4),

-- Nu:Logic (Logistics + Nu:Tone) — Liquid/Dancefloor DnB, UK, Hospital Records, the Gresham brothers
('Nu:Logic',             'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'Sibling duo of Dan Gresham (Nu:Tone) and Matt Gresham (Logistics) whose Hospital Records collaborative project Nu:Logic delivers polished, melody-forward liquid drum and bass drawing on both producers'' individual strengths — Creep and Somewhere in the Dark are signature collaborative tracks that demonstrate the chemistry of two Hospital cornerstone producers working in tandem. The Nu:Logic project represents the Hospital sound at its most sophisticated and emotionally resonant.',
 5, 7, 7, 8,  7, 8, 6,  9, 5, 3),

-- Futurebound (Lee Morrison) — Dancefloor/Crossover DnB, UK, Universal/Viper, ''All This Love'' vocalist
('Futurebound',          'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'British producer Lee Morrison whose Matrix & Futurebound partnership produced Universal and chart-crossing vocal DnB — All This Love (feat. UK Apache) and Mass Destruction mark a career of commercially ambitious drum and bass that seeks crossover impact without sacrificing genre integrity. Solo Viper Recordings releases confirm independent post-Matrix productivity; a consistent force in melodic, vocally-led dancefloor DnB production across two decades.',
 7, 7, 7, 8,  5, 7, 7,  8, 5, 2),

-- Stray — Halftime/Experimental, Bristol, Deep Medi/Exit/Metalheadz, grime-DnB boundary pusher
('Stray',                'Drum & Bass + Jungle', ARRAY['Halftime', 'Deep'],
 'Bristol producer whose Deep Medi, Exit Records, and Metalheadz releases explore the halftime and experimental margins of drum and bass — sparse, bass-driven productions with grime and dubstep influences that push conventional DnB tempo structures toward something slower and heavier. A respected voice in the Bristol bass music community whose willingness to work across tempo and genre boundaries represents a genuinely progressive approach to the DnB space.',
 5, 3, 6, 6,  7, 9, 7,  4, 8, 2),

-- Electrosoul System (Andrey Kuprianov) — Liquid DnB, Russia, Good Looking/Fokuz/Spearhead, Russian liquid master
('Electrosoul System',   'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'Russian producer Andrey Kuprianov who built a European reputation through Good Looking Records, Fokuz, and Spearhead Records — warm, harmonically rich liquid DnB rooted in jazz and soul that carries a distinctly Eastern European musicality. A pioneering figure in establishing Russian DnB credibility on the international stage; thoughtful, melodically sophisticated productions respected by the liquid DnB underground for their emotional depth and production polish.',
 4, 7, 6, 8,  8, 9, 5,  8, 6, 5),

-- Specimen A (Mark Rutherford) — Jungle/Breakbeat, Bristol, V Recordings/Creative Source/Innerground, UK jungle veteran
('Specimen A',           'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'Bristol producer Mark Rutherford whose V Recordings, Creative Source, and Innerground Records output spans jungle and drum and bass across more than two decades — a consistent Bristol scene figure whose energetic, breakbeat-focused productions carry the city''s distinctive bass music identity. Klute''s Commercial Suicide alumni and a respected underground voice whose output bridges classic jungle aesthetics with contemporary production standards.',
 7, 6, 7, 8,  4, 7, 8,  6, 6, 3),

-- Mandidextrous — Jungle/Halftime, UK, HooverSound/Born On Road/Metalheadz, Samurai Breaks collaborator
('Mandidextrous',        'Drum & Bass + Jungle', ARRAY['Jungle', 'Halftime'],
 'UK producer whose HooverSound, Born On Road, and Metalheadz releases bridge jungle, halftime, and footwork-influenced DnB — Samurai Breaks Vigilante Kru collaboration (2026) and Flava D/Charlotte Haining production partnerships. A scene figure whose output sits at the experimental intersection of jungle''s rhythmic heritage and contemporary halftime bass music, drawing from footwork culture and UK sound system tradition in equal measure.',
 6, 5, 6, 7,  6, 7, 8,  5, 8, 2);
