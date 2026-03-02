-- PolyJamerous: Artist seed data — Batch 28 (fresh pass: B-M legends and rising artists)
-- Sources: drumandbassuk.com profiles + supplementary research
-- Schema: subgenres TEXT[] only (no subgenre column)

INSERT INTO artists
    (name, genre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Bay B Kane (Mel Jalal Tanur) — Jungle/Atmospheric, Istanbul-born/East London, White House/XL Recordings
('Bay B Kane',           'Drum & Bass + Jungle', ARRAY['Jungle', 'Deep'],
 'Istanbul-born, East London-based producer Mel Jalal Tanur who pioneered the UK rave scene from the early 1990s through White House Records and XL Recordings — Hello Darkness and Thunder are signature atmospheric jungle tracks that appeared in films, TV, and video games. Three decades of output under aliases including The Rood Project and Parallel; Micky Finn and Peshay collaboration partner who returned to active production in 2009 after a hiatus and has remained consistently creative since.',
 6, 5, 6, 7,  7, 8, 7,  6, 8, 3),

-- Dead Dred (Lee + Warren Smith) — Jungle, UK, Moving Shadow, ''Dred Bass'' 1994 reversed bassline classic
('Dead Dred',            'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'British brothers Lee and Warren Smith whose Moving Shadow releases produced one of the most iconic basslines in jungle history — Dred Bass (1994) with its revolutionary reversed bassline became an instant scene classic. A limited but indelibly impactful discography of four 1994-1996 releases that distilled the jungle sound at its most inventive; Drumsound & Bassline Smith and Bladerunner modern remixes confirm the ongoing relevance of their foundational contribution.',
 7, 5, 6, 8,  5, 7, 8,  5, 7, 3),

-- K Motionz — Jump Up/Dancefloor DnB, UK, Positiva/UKF/Solotoko, debut album at 18
('K Motionz',            'Drum & Bass + Jungle', ARRAY['Jump Up', 'Dancefloor'],
 'British producer who released debut album The Evolution at age 18 and rapidly built a reputation for high-energy, euphoric jump-up DnB through Positiva Records, UKF, and Solotoko. REDLINE (2026), Generator and H2O demonstrate consistent ability to balance hard-hitting basslines with infectious melodic hooks — Annix, Friction, and skantia collaboration partner whose festival bookings at Rampage, Let It Roll, and Boomtown signal a rising headliner career.',
 8, 7, 8, 8,  4, 6, 8,  7, 5, 1),

-- L Double (Lee Johnson) — Jungle/Tech, North East England, Flex Records founder, SHY FX collaborator
('L Double',             'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'North East England producer Lee Johnson who founded Flex Records in the mid-1990s and established himself as a pivotal underground drum and bass figure through releases alongside SHY FX (The Shit, 1996) and Music for the 90s. Three UK Top 30 hits with Unique 3 in early career; BBC 1Xtra drum and bass programming presence across multiple eras; a consistent underground voice whose Flex Records label helped sustain regional DnB infrastructure outside London.',
 7, 5, 7, 8,  5, 7, 8,  5, 6, 2),

-- L-Side (Leonardo de Jesus Silva) — Liquid/Dub, São Paulo, V Recordings/Liondub International/Spearhead
('L-Side',               'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'São Paulo producer Leonardo de Jesus Silva whose V Recordings, Liondub International, and Spearhead Records releases blend hip-hop, funk, and reggae grooves into deep, dancefloor-focused liquid DnB. Carnal Mind album, Killer Transmission, and High Times are catalogue highlights — DRS, T.R.A.C, DJ Marky, and DJ Zinc collaboration partner who represents the Brazilian DnB tradition of soulful rhythmic sophistication built on diasporic musical heritage.',
 6, 7, 7, 8,  6, 7, 7,  7, 5, 5),

-- Liondub — Jungle/Reggae DnB, New York, Liondub International founder, Congo Natty/Rebel MC collaborator
('Liondub',              'Drum & Bass + Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'New York producer and Liondub International label founder who has built over two decades of jungle and reggae-inflected drum and bass through authentic collaboration with Congo Natty, Rebel MC, and Navigator. A key figure in the New York DnB underground whose label infrastructure, DJ sets, and consistent release schedule have maintained a genuine reggae-roots aesthetic in an era when jungle''s founding influences risk being forgotten.',
 6, 7, 6, 8,  4, 7, 7,  7, 5, 5),

-- M-Beat — Jungle pioneer, UK, Renk Records, ''Incredible'' (feat. General Levy) 1994 UK Top 10
('M-Beat',               'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'UK jungle pioneer whose Incredible (feat. General Levy, Renk Records, 1994) became one of the first jungle tracks to achieve mainstream UK chart success — reaching the Top 10 and introducing jungle to a national audience before a BBC ban on General Levy''s self-promotional lyrics temporarily derailed the momentum. MOVES Recordings and a catalogue that preserves the raw, energetic spirit of jungle at its most culturally explosive early moment.',
 8, 7, 7, 8,  4, 7, 8,  7, 5, 4),

-- Melinki (Sonny Symes) — Liquid/Deep DnB, Hastings, Four Corners Music/Fokuz/Dispatch, ''A Lifetime Obsession'' LP
('Melinki',              'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'Hastings producer Sonny Symes who founded Four Corners Music and delivered debut album A Lifetime Obsession (2024) after years of Fokuz, Dispatch, and Technique releases — BBC Radio 1 and 1Xtra live performances, and recognition from Noisia, Friction, and Kasra confirm broadening scene impact. Competition winner for Hospitality, Dillinja''s Valve Recordings, and Drum & Bass Arena; studio educator and community builder through S.T.L Studios.',
 5, 6, 6, 8,  7, 8, 6,  7, 6, 3),

-- Selecta J-Man (Jamie McMahon) — Jungle/Ragga, Bristol, Born on Road/Rebel Music, sound system culture
('Selecta J-Man',        'Drum & Bass + Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'Bristol DJ and selector whose Born on Road and Rebel Music releases blend authentic sound system culture with contemporary jungle and ragga DnB — a veteran Bristol scene figure whose deep knowledge of roots reggae and jungle tradition makes him a trusted curator at festivals including Boomtown and Outlook. Parly B, Inja, and Navigator collaboration partner whose selectorship philosophy prioritises feel and flow over individual track recognition.',
 7, 6, 6, 8,  4, 7, 7,  6, 6, 5),

-- Monrroe — Liquid/Vocal DnB, UK, Fokuz/Liquicity/Spearhead, female vocalist and producer
('Monrroe',              'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'British vocalist and producer whose Fokuz Recordings, Liquicity, and Spearhead Records releases have established her as one of the contemporary liquid DnB scene''s most versatile creative voices — combining DJ production skills with warm, expressive vocal performances. Riya, Lenzman, and BCee collaboration partner whose ability to function equally as producer and vocalist sets her apart in a scene where these roles are rarely combined at high quality.',
 5, 7, 7, 8,  6, 8, 6,  8, 5, 4),

-- Mindscape (Deejay Mindscape) — Dark/Atmospheric DnB, France, Metalheadz/Bingo, European dark DnB veteran
('Mindscape',            'Drum & Bass + Jungle', ARRAY['Deep', 'Neurofunk'],
 'French producer and DJ whose Metalheadz and Bingo Records releases spanning more than two decades deliver dark, atmospheric drum and bass with strong European electronic music influences. One of the longest-established French DnB artists whose consistent output and festival bookings across Europe — particularly the French underground circuit — demonstrate the global reach of the Metalheadz aesthetic.',
 6, 3, 7, 8,  7, 8, 7,  4, 7, 1),

-- Scar — Deep/Experimental DnB, UK, Exit Records/Metalheadz, Script duo partner, Survival collaborator
('Scar',                 'Drum & Bass + Jungle', ARRAY['Deep', 'Halftime'],
 'UK producer whose Exit Records and Metalheadz catalogue, including the SCAR duo project with Script, explores deep, minimal, and experimental drum and bass at the genre''s most intellectually engaged periphery. Survival collaboration partner whose music builds long-form textural narratives rather than conventional energy arcs — respected by the underground''s most discerning listeners for uncompromising artistic commitment.',
 4, 3, 6, 6,  8, 9, 6,  4, 9, 2),

-- Survey — Deep/Liquid DnB, Netherlands, Dispatch Recordings/Metalheadz, technical precision
('Survey',               'Drum & Bass + Jungle', ARRAY['Deep', 'Liquid'],
 'Dutch producer whose Dispatch Recordings and Metalheadz releases demonstrate the Netherlands'' deep engagement with the darker and more technical end of drum and bass — bass-heavy, rhythmically precise productions that balance dancefloor impact with atmospheric complexity. Part of a strong Dutch DnB tradition that has consistently produced technically accomplished artists for the underground scene.',
 6, 5, 7, 8,  7, 8, 7,  5, 7, 2),

-- Sully — Halftime/Deep DnB, Bristol, Metalheadz/Deep Medi/Exit, autonomic pioneer
('Sully',                'Drum & Bass + Jungle', ARRAY['Halftime', 'Deep'],
 'Bristol producer whose Metalheadz, Deep Medi, and Exit Records output has been central to the development of halftime drum and bass — sparse, bass-heavy productions with sub-focused pressure and a deep meditative quality drawn from the autonomic tradition. A foundational figure in the Bristol bass music scene whose output operates at the intersection of grime, dubstep, and drum and bass; respected for pushing rhythmic conventions toward minimal, maximally impactful structures.',
 4, 4, 5, 6,  7, 9, 7,  4, 9, 2),

-- Omen Breaks — Dark/Neurofunk, UK, Metalheadz/Virus/Artikal Music, technical dark DnB veteran
('Omen Breaks',          'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Darkstep'],
 'UK producer whose Metalheadz, Virus Recordings, and Artikal Music releases deliver technically precise, dark neurofunk with ominous atmospheres and complex percussion architecture. A veteran of the darker end of the DnB spectrum whose consistent underground output has earned respect from the neurofunk community despite operating without mainstream recognition — production depth and rhythmic complexity prized over accessibility.',
 7, 2, 8, 8,  7, 8, 9,  3, 7, 1);
