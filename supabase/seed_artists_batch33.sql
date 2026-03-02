-- PolyJamerous: Artist seed data — Batch 33 (fresh pass: D-R historical + international acts)
-- Sources: drumandbassuk.com profiles + supplementary research
-- Schema: subgenres TEXT[] only (no subgenre column)

INSERT INTO artists
    (name, genre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Deep Blue (Sean O''Keeffe) — Atmospheric/Jungle, UK, Moving Shadow, ''The Helicopter Tune'' 1993
('Deep Blue',            'Drum & Bass + Jungle', ARRAY['Jungle', 'Deep'],
 'British producer Sean O''Keeffe whose Moving Shadow releases — The Helicopter Tune (1993, UK #68) and Bombscare (with 2 Bad Mice) — placed him among the early architects of atmospheric and innovative jungle production. Metropolitan Chic debut album (2005), Omni Trio''s Black Rain collaborative project, and Grand Theft Auto: Liberty City Stories soundtrack inclusion confirm a career of understated but sustained influence; Partisan Recordings co-founder who helped build independent DnB infrastructure.',
 6, 5, 6, 7,  7, 8, 6,  6, 7, 3),

-- DJ Dextrous (Errol Francis) — Jungle pioneer, Hackney/London, Kool FM, King of the Jungle Records co-founder
('DJ Dextrous',          'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'Hackney-born pioneer Errol Francis who co-founded King of the Jungle Records in 1993 — schoolmates with DJ Hype and Shut Up and Dance members whose Ruff Quality and Suburban Base releases documented the early jungle scene. BAFTA and Ivor Novello Award winner (2003) for the Feltham Sings documentary — pirate radio regular on Kool FM at the genre''s formative moment; a foundational figure whose contributions to jungle''s infrastructure have been historically underappreciated.',
 7, 5, 6, 8,  4, 7, 8,  5, 6, 3),

-- DJ Hidden (Noël Wessels) — Experimental/Crossbreed, Netherlands, PRSPCT/Ad Noiseam/Killing Sheep Records
('DJ Hidden',            'Drum & Bass + Jungle', ARRAY['Crossbreed', 'Neurofunk'],
 'Dutch producer Noël Wessels who has been active since 1991 and co-founded The Outside Agency with Eye-D — solo output on PRSPCT Recordings, Ad Noiseam, and Killing Sheep Records explores experimental IDM, industrial hardcore, and crossbreed drum and bass. The Later After (2007), The Words Below (2009), and Enclosed (2013) are career documents of technically complex, boundary-refusing electronic music; also works as Semiomime in modern classical territory.',
 8, 2, 8, 7,  7, 8, 9,  3, 9, 1),

-- MSDOS (Chris Kouzellis) — Liquid/Jazz DnB, Athens/Greece, Good Looking/Fokuz/Liquid V, Greek liquid pioneer
('MSDOS',                'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'Athens-born producer Chris Kouzellis who brought Greek musical sensibility to liquid drum and bass through Good Looking Records, Fokuz, and Liquid V — founding Liquid Drops Recordings to champion quality soulful DnB production. Vintage soul and jazz influences from the 1960s-70s fused with contemporary rhythmic production; BBC Radio 1Xtra and Ministry of Sound Radio features; a veteran who has sustained a 20+ year career at the melodic, soulful end of the liquid DnB tradition.',
 4, 7, 6, 8,  8, 9, 5,  8, 6, 5),

-- Ram Trilogy (Andy C + Ant Miles + Shimon) — Techstep, UK, RAM Records, ''Molten Beats'' 1999
('Ram Trilogy',          'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Dancefloor'],
 'UK supergroup of Andy C, Ant Miles, and Shimon whose RAM Records catalogue — Molten Beats (1999), Titan EP (2000), and Screamer EP (2003) — defined the futuristic, dark techstep end of drum and bass at its commercial peak. Ed Rush and Optical remix collaborators on Evolution/Mindscan; a rare collective project that brought together three of DnB''s most technically accomplished producers for a chapter-series of dark, complex, dancefloor-engineered drum and bass.',
 8, 3, 8, 8,  7, 7, 9,  3, 7, 1),

-- Run Tingz Cru (G.Tactix + LXP) — Jungle/Ragga, Bristol, Run Tingz Recordings, Glastonbury/Boomtown
('Run Tingz Cru',        'Drum & Bass + Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'Bristol duo G.Tactix and LXP who founded Run Tingz Recordings in 2010 — Born Inna Babylon, Murder Ya Sound (with Serial Killaz), and It''s a Junglist Ting deliver vocal-led, reggae-influenced jungle and drum and bass with genuine performance energy. Top Cat, Tenor Fly, and David Boomah collaboration partners whose Glastonbury, Boomtown, and St Paul''s Carnival appearances are rooted in Bristol''s deep sound system culture and reggae heritage.',
 7, 7, 6, 8,  4, 7, 8,  7, 5, 5),

-- Peshay (Paul Pesce) — Liquid/Intelligent DnB, London, Metalheadz/Island Records, ''Miles From Home'' 1998
('Peshay',               'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'London producer Paul Pesce whose Metalheadz and Island Records releases — Miles From Home and You Got Me Rocking — helped define soulful, jazz-influenced liquid drum and bass in the late 1990s. A foundational Goldie/Metalheadz stable artist whose musicality and warm production set the aesthetic template for the liquid DnB tradition; one of the genre''s most underacknowledged pioneers whose influence on the harmonic richness of liquid DnB is demonstrably profound.',
 4, 7, 5, 8,  8, 9, 5,  8, 7, 4),

-- Zar — Liquid/Hip-Hop DnB, New York, V Recordings/Spearhead, T.R.A.C. collaborator, NYC liquid veteran
('Zar',                  'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'New York producer and T.R.A.C. collaboration partner whose V Recordings and Spearhead Records output represents the North American liquid DnB tradition — Milestones Act 1 collaborative project and a catalogue rooted in jazz, hip-hop, and soul that carries New York''s diverse musical heritage into drum and bass. A consistent voice in the transatlantic liquid DnB underground whose music bridges the New York beat scene and the British liquid tradition.',
 4, 7, 6, 8,  7, 8, 5,  7, 6, 5),

-- Artificial Intelligence (Martin Colegate) — Atmospheric/Intelligent DnB, UK, Metalheadz/Warp, Nexus 21 origins
('Artificial Intelligence', 'Drum & Bass + Jungle', ARRAY['Deep', 'Dancefloor'],
 'British producer Martin Colegate who released early electronic music as Nexus 21 on Warp Records before contributing to drum and bass through Metalheadz — a bridge between ambient techno and the intelligent DnB tradition whose production sensibility carries Warp''s cerebral, atmospheric quality into breakbeat-driven music. A historically significant figure in the journey from UK techno to drum and bass whose Metalheadz catalogue occupies the genre''s most thoughtful corner.',
 5, 5, 6, 7,  7, 9, 6,  6, 8, 4),

-- MC Shabba D — Jungle MC, London, Kool FM/Metalheadz, veteran rave MC
('MC Shabba D',          'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'London MC whose presence on pirate radio stations including Kool FM and Metalheadz events made him one of the defining vocal voices of the 1990s jungle scene — a veteran rave MC whose rapid-fire delivery and deep knowledge of jungle culture have sustained a career across three decades of drum and bass history. A representative of the authentic MC tradition that developed alongside jungle''s breakbeat science in the East London rave underground.',
 8, 6, 7, 8,  3, 6, 9,  7, 4, 3),

-- Aerial (MSDOS side project already in DB — use Aerial as standalone)
-- Muffler (Martin Hluchy) — Atmospheric/Liquid DnB, Czech Republic, Fokuz/Spearhead/Shogun, central European master
('Muffler',              'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'Czech producer Martin Hluchy whose Fokuz Recordings, Spearhead Records, and Shogun Audio output delivers warm, atmospherically rich liquid DnB from a Central European perspective — one of the most consistently high-quality liquid DnB producers from outside the UK/Netherlands axis. DRS and BCee collaboration partners whose melodic sophistication and production depth have earned genuine respect across the international liquid DnB underground.',
 4, 7, 6, 8,  8, 9, 5,  8, 6, 4),

-- Mikal (Warren Walters) — Liquid/Soul DnB, Jamaica/UK, V Recordings/Spearhead, veteran vocal artist
('Mikal',                'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'Jamaican-British vocalist and producer Warren Walters whose V Recordings and Spearhead Records output blends soul, reggae, and liquid DnB in a warm, accessible style. A Bryan Gee-endorsed artist whose career spans the Good Looking Records-adjacent soul end of DnB — bringing genuine Caribbean musical heritage and R&B vocal craft to liquid DnB productions that respect both the genre''s rhythmic foundation and the soul tradition''s emotional directness.',
 5, 7, 6, 8,  6, 8, 6,  8, 5, 5),

-- Calibre LP context — Calibre in DB; inserting Sunchase (Dj Sunchase) instead
-- Sunchase — Liquid/Melodic DnB, Ukraine, Spearhead/Fokuz/Shogun, Eastern European liquid master
('Sunchase',             'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'Ukrainian producer whose Spearhead Records, Fokuz Recordings, and Shogun Audio releases deliver uplifting, melodically rich liquid DnB — warm basslines, sophisticated chord work, and precise production values that represent Eastern Europe''s significant contribution to the international liquid DnB scene. BCee and Lenzman-adjacent artist whose consistently positive, harmonically intelligent output balances dancefloor energy with genuine emotional resonance.',
 5, 8, 7, 8,  6, 7, 6,  9, 5, 3),

-- Sonz of a Loop Da Loop Era (Mark Ryder) — Hardcore/Jungle pioneer, UK, Suburban Base, ''Far Out'' 1992
('Sonz Of A Loop Da Loop Era', 'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'UK producer Mark Ryder whose Suburban Base Records debut Far Out (1992) is one of the most beloved early hardcore rave anthems — a joyful, sample-heavy breakbeat track that captured the UK rave scene at its most euphoric and communal. A founding figure in the jungle and hardcore continuum whose influence on sampling culture and breakbeat construction is foundational; the Sonz Of A Loop Da Loop Era name became synonymous with the spiritual optimism of early 1990s rave culture.',
 8, 8, 7, 8,  4, 7, 8,  8, 5, 4),

-- Raw Conscience — Deep/Liquid DnB, UK, Dispatch/Metalheadz, technical underground rollers
('Raw Conscience',       'Drum & Bass + Jungle', ARRAY['Deep', 'Liquid'],
 'UK production entity whose Dispatch Recordings and Metalheadz output explores the deep, technically precise end of drum and bass — bass-heavy rollers with atmospheric depth and rhythmic integrity that place them within the Ant TC1/DLR network of Dispatch underground artists. A consistent presence in the deeper DnB underground whose productions reward patient listening over immediate impact; respected by the core community for solid craft and underground commitment.',
 5, 5, 6, 8,  7, 8, 7,  5, 7, 2);
