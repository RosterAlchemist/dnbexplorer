-- PolyJamerous: Artist seed data — Batch 27 (fresh pass: A-R, legendary figures)
-- Sources: drumandbassuk.com profiles + supplementary research
-- NOTE: New schema — subgenre column removed, only subgenres TEXT[] used

INSERT INTO artists
    (name, genre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- MC Conrad (Conrad Thompson, 1972-2024) — Good Looking Records, LTJ Bukem collaborator, Logical Progression
('MC Conrad',            'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'Northampton vocalist Conrad Thompson who became LTJ Bukem''s defining vocal partner on Good Looking Records — Logical Progression and Progression Sessions series capturing a soulful, poetic approach to drum and bass that transcended conventional MC roles. Vocalist 01 (2013) and La Dolce Vita (2018) are career statements of rare emotional intelligence; a pioneering figure who demonstrated that DnB vocal performance could carry genuine literary depth. Passed April 2024.',
 3, 8, 5, 7,  8, 10, 4,  8, 7, 5),

-- Ant TC1 — Deep/Technical DnB, London, Dispatch Recordings co-founder, DLR/Skeptical/Survival network
('Ant TC1',              'Drum & Bass + Jungle', ARRAY['Deep', 'Dancefloor'],
 'London producer and Dispatch Recordings co-founder whose fast-paced, bass-heavy drum and bass established Dispatch as one of the underground''s most respected labels — the DLR, Skeptical, Survival, and Commix creative network he nurtured defines an entire strand of contemporary deep DnB. Valley Groove and Space & Time are catalogue cornerstones from a career dedicated to technical precision, creative collaboration, and independent scene infrastructure.',
 6, 5, 7, 8,  7, 8, 8,  4, 7, 2),

-- Nu:Tone (Dan Gresham) — Liquid/Soul DnB, Cambridge, Hospital Records, ''Brave Nu World'' 2005, Nu:Logic duo
('Nu:Tone',              'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'Cambridge producer Dan Gresham who joined Hospital Records in 2003 and built a cornerstone liquid funk DnB catalogue — Brave Nu World (2005), Millie''s Theme, and Shine In (feat. Natalie Williams) are genre touchstones of soulful, melodically rich liquid production. Nu:Logic collaborative project with brother Logistics and consistent Hospitality festival appearances confirm two decades of creative output at the heart of the Hospital stable.',
 5, 7, 7, 8,  7, 8, 6,  8, 6, 4),

-- Omni Trio (Robert Haigh) — Intelligent/Atmospheric DnB, Barnsley, Moving Shadow, ''Renegade Snares'' 1993
('Omni Trio',            'Drum & Bass + Jungle', ARRAY['Deep', 'Jungle'],
 'Barnsley producer Robert Haigh whose Moving Shadow debut EPs and The Deepest Cut Vol.1 (1995) established the template for intelligent jungle and atmospheric drum and bass — Renegade Snares remains one of the genre''s most enduring anthems. Haunted Science and Skeleton Keys albums demonstrate an ambitious scope for breakbeat-driven electronic music before Haigh concluded the Omni Trio project to return to piano ambient composition; a profound influence on every melodic and atmospheric DnB strand that followed.',
 5, 6, 6, 7,  8, 9, 6,  7, 7, 4),

-- Original Sin — Jump Up/Dancefloor, Newcastle, Ganja Records/Formation/Crucast, Generation Dub origins
('Original Sin',         'Drum & Bass + Jungle', ARRAY['Jump Up', 'Dancefloor'],
 'Newcastle producer who emerged from Generation Dub (G Dub) on Formation Records before establishing Original Sin as a powerful jump-up and dancefloor DnB project on Ganja Records, Souped Up, and Crucast. Ghost Busters and Body Snatchers with G Dub partner Jake preceded solo releases of heavy-hitting, crowd-moving drum and bass — Skepsis and Benny Page collaboration partner whose consistent output has earned genuine jump-up scene authority.',
 8, 6, 7, 8,  4, 6, 8,  6, 5, 1),

-- Q Project (Jason Greenhalgh) — CIA Records / Total Science half, Champion Sound 1993 classic
('Q Project',            'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Deep'],
 'British producer Jason Greenhalgh who co-founded CIA Records with Paul Smith (Total Science/Spinback) and produced Champion Sound (1993) — one of the most frequently cited early jungle anthems. Good Looking Records, Metalheadz, and Hospital Records appearances across three decades of versatile DnB production spanning liquid, dancefloor, and atmospheric styles; Myth, S.P.Y, and Calibre collaboration partner who remained productively active into the 2020s.',
 6, 6, 7, 8,  7, 8, 7,  6, 6, 3),

-- Rebel MC (Michael West) — Jungle/Ragga, Islington/London, Congo Natty founder, ''Street Tuff'' UK#3 1989
('Rebel MC',             'Drum & Bass + Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'Islington MC Michael West who charted UK#3 with Street Tuff (1989) as part of Double Trouble before founding Congo Natty — an early and crucial architect of jungle music''s fusion of reggae, hip-hop, and rave culture. Black Meaning Good (1991) and Code Red (1994 as Conquering Lion) track the transformation from pop-rap to jungle pioneer; Barrington Levy and Tenor Fly collaboration partner whose label infrastructure supported a generation of jungle artists.',
 7, 7, 7, 8,  5, 7, 8,  7, 6, 5),

-- Skibadee (Stuart Rodgers) — Jungle MC, London, one of DnB''s fastest and most celebrated MCs
('Skibadee',             'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'London MC Stuart Rodgers whose extraordinary syllabic speed and rapid-fire lyrical delivery made him one of drum and bass''s most celebrated and imitated voices — a fixture across rave circuits from the mid-1990s through to the present. Serial Killaz, Benny Page, and DJ Hype stage partner; Fabric, Swerve, and major festival appearances cemented a reputation as one of the most electrifying live MCs in the genre''s history.',
 9, 6, 7, 9,  3, 6, 9,  7, 4, 2),

-- Tenor Fly — Jungle/Ragga MC, London, Shut Up & Dance/Congo Natty, veteran sound system culture
('Tenor Fly',            'Drum & Bass + Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'London MC and vocalist whose reggae roots and powerful bass voice made him a defining presence in ragga jungle through Shut Up & Dance recordings and Congo Natty collaborations with Rebel MC. A veteran of the UK sound system culture who brought authentic Jamaican vocal tradition to jungle''s formative years — Barrington Levy, Navigator, and M-Beat collaboration partner whose contribution to the jungle canon is foundational and frequently overlooked.',
 7, 7, 6, 8,  4, 7, 8,  7, 5, 5),

-- UK Apache — Jungle/Ragga MC, London, SHY FX ''Original Nuttah'' 1994 co-performer, rave legend
('UK Apache',            'Drum & Bass + Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'London MC who co-performed Original Nuttah (SHY FX, 1994) — one of the first jungle tracks to achieve mainstream chart success and arguably the single most iconic ragga jungle record. A sound system veteran whose raw, distinctive vocal style captured the raw energy of 1990s jungle at its most visceral and authentic; appearances at major DnB events across three decades confirm enduring status as a living link to the genre''s foundational moment.',
 8, 7, 7, 8,  4, 7, 9,  8, 5, 5),

-- Bru-C (Tyrell Dixon) — Liquid/Crossover DnB, Nottingham, Shogun Audio/Polydor, ''Notice Me'' UK hit
('Bru-C',                'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'Nottingham MC and producer Tyrell Dixon who crossed from urban music into drum and bass via Shogun Audio before signing to Polydor Records — Notice Me and I''m Alone are radio-ready DnB crossover tracks with genuine pop sensibility and urban credibility. A rare contemporary artist who has successfully navigated both underground DnB and commercial mainstream attention, building a substantial streaming following while maintaining credibility with the core scene.',
 7, 8, 7, 8,  5, 6, 7,  8, 5, 2),

-- Shimon (Shimon Reece) — Dancefloor/Tech, Sheffield, Moving Shadow/RAM, Andy C collaborator
('Shimon',               'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Neurofunk'],
 'Sheffield producer whose Moving Shadow and RAM Records releases in the late 1990s and 2000s placed him among the leading architects of technical, hard-edged dancefloor DnB. Andy C Nightlife mix series contributor — Red One and Move to the Rhythm are signature tracks built on precise engineering and relentless momentum; a prolific vinyl-era output and consistent live presence that established him as a dependable architect of big-room dancefloor drum and bass.',
 8, 4, 8, 8,  6, 7, 9,  4, 6, 1),

-- Coco Bryce — Jungle/Halftime, UK, Myor Records/Amen, 170bpm jungle revival pioneer
('Coco Bryce',           'Drum & Bass + Jungle', ARRAY['Jungle', 'Halftime'],
 'UK producer who became a leading figure of the 170bpm jungle revival — Myor Records releases and a catalogue that embraces classic breakbeat science, amen worship, and halftime DnB structures with genuine love for the jungle tradition. A respected voice in the contemporary jungle underground whose production philosophy prioritises texture, rhythm, and feel over production polish; a connector between the 1990s jungle aesthetic and a new generation of breakbeat enthusiasts.',
 7, 5, 6, 7,  5, 7, 8,  5, 8, 3),

-- Redeyes (Julien Salvi) — Liquid/Soul, France/Toulouse, The North Quarter/Metalheadz/31 Records
('Redeyes',              'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'Toulouse producer whose soulful hip-hop, jazz, and R&B-influenced liquid DnB has found a home on Lenzman''s The North Quarter, Metalheadz, and 31 Records — Pusherman on Bingo Records and consistently warm, groove-laden productions demonstrate a French perspective on British liquid DnB tradition. Lenzman collaboration partner whose emotionally resonant output and understated mixing style have earned respect across the European liquid underground.',
 4, 7, 6, 8,  7, 8, 5,  8, 6, 5),

-- Rockwell already in DB — replacing with Reid Speed
-- Reid Speed — Dancefloor/Jump Up, New York, Play Me Records founder, US DnB female pioneer
('Reid Speed',           'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Jump Up'],
 'New York DJ and producer who founded Play Me Records in 2010 — building one of North America''s leading DnB labels from scratch while simultaneously establishing herself as one of the scene''s most energetic and technically skilled female DJs. A pioneer for women in drum and bass whose label infrastructure and consistent touring across the US DnB circuit helped sustain and grow the American market across more than two decades of scene commitment.',
 8, 6, 7, 8,  4, 6, 8,  6, 5, 2);
