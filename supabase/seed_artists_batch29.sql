-- PolyJamerous: Artist seed data — Batch 29 (fresh pass: G-T internationals + UK underground)
-- Sources: drumandbassuk.com profiles + supplementary research
-- Schema: subgenres TEXT[] only (no subgenre column)

INSERT INTO artists
    (name, genre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Gydra (Besman + Shilov) — Neurofunk, Russia, Eatbrain/Blackout/Renegade Hardware, Snake Monastery LP 2020
('Gydra',                'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Dancefloor'],
 'Russian neurofunk duo Eugene Besman (DJ Bes) and Nikolay Shilov (Menfort) who formed in 2014 and built a formidable international reputation through Eatbrain, Blackout Music, and Renegade Hardware — Snake Monastery (2020) conceptualised as a gaming-inspired level journey of escalating intensity. Neuropunk podcast founder and Russian DnB scene architects whose dark, technically precise sound carries Noisia, Ed Rush & Optical, and Black Sun Empire endorsements.',
 8, 2, 8, 8,  6, 7, 9,  3, 7, 1),

-- QZB — Neurofunk/Experimental, Switzerland, Critical Music/Flexout, hip-hop/jazz fusion futurism
('QZB',                  'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Deep'],
 'Swiss duo who formed in 2012 and built a European reputation through Critical Music and Flexout Audio — blending hip-hop, jazz, Italo disco, and breakbeat science into a razor-sharp futuristic neurofunk aesthetic. Kasra and Gardna collaboration partners whose sold-out European shows, Charli Brix vocal collaborations, and production tutorial programme demonstrate a holistic commitment to the scene as artists, educators, and community members.',
 7, 4, 7, 8,  7, 8, 8,  4, 8, 1),

-- T & Sugah (Storm + Jouneghani) — Melodic/Euphoric DnB, Netherlands, Liquicity/NCS/Viper/High Tea Music
('T & Sugah',            'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'Dutch duo Robin Storm and Philippe Jouneghani whose Liquicity Records, NCS, and Viper Recordings releases deliver euphoric, melodically rich drum and bass built for main-stage festival energy — Bring Me The Light, Cast Away, and Sleepless are scene anthems. High Tea Music co-founders who combine platform-building with prolific production; Justin Hawkes and Friction collaborators whose vibrant stage presence and seamless mixing have earned Liquicity Festival headline status.',
 7, 8, 7, 8,  5, 7, 7,  9, 4, 2),

-- T.R.A.C. — Liquid/Hip-Hop vocal DnB, Brooklyn/New York, V Recordings/Spearhead, ''The Network'' 2011
('T.R.A.C.',             'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'Brooklyn producer and vocalist who debuted with The Network (V Recordings, 2011) — produced by 4hero''s Marc Mac — as a bridge between hip-hop, rap, and liquid drum and bass tradition. Spearhead Records, Lenzman''s Quiet Storm (2025), and Submorphics/Airlines collaboration demonstrate consistent creative depth; LTJ Bukem, Roni Size, and Goldie-aligned performances across North America and Europe from a genuinely transatlantic drum and bass voice.',
 4, 7, 6, 8,  7, 8, 5,  8, 6, 5),

-- Rowpieces (Robert Schmidbauer) — Liquid/Jazz DnB, Germany, Rowtown Records/V Records/Good Looking
('Rowpieces',            'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'German producer Robert Schmidbauer whose 25+ year career — rooted in his father''s jazz collection and shaped by hip-hop before settling in drum and bass — delivers soulful, jazz and funk-inflected liquid DnB through Rowtown Records, V Records, and Good Looking. Between Melancholy And Confidence (2025) and 25 Years Of Making Music (2021) album capture a producer of rare longevity and musical integrity; Soul Bros. Records A&R and vinyl DJ practitioner.',
 4, 6, 5, 8,  8, 9, 5,  7, 6, 6),

-- TMSV (Tomas Roels) — Experimental/Halftime, Netherlands, Perfect Records/Cosmic Bridge/Artikal, Fent Plates
('TMSV',                 'Drum & Bass + Jungle', ARRAY['Halftime', 'Deep'],
 'Dutch producer Tomas Roels who fuses jungle, dubstep, and footwork into a deeply immersive and rhythmically complex halftime DnB — Cosmic Bridge, Artikal Music UK, and Deadbeats releases showcase organic-synthetic synthesis with sharp percussion and layered organic textures. Fent Plates collective member; Noisia, Friction, and Alix Perez-endorsed artist whose Samurai Breaks and LSB collaboration work places him within the underground''s most adventurous experimental corner.',
 5, 4, 6, 6,  7, 9, 7,  5, 9, 2),

-- Silence Groove (Marcus Hansen) — Liquid/Atmospheric DnB, Denmark, Spearhead/Fokuz/C.I.A., Scandinavian liquid
('Silence Groove',       'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'Danish producer Marcus Hansen who became one of Scandinavia''s most respected liquid DnB voices through Spearhead Records, Fokuz Recordings, and C.I.A. — atmospheric, harmonically rich productions with a Nordic sensibility that values space, restraint, and emotional depth over immediate impact. Zero T, BCee, and Whiney collaboration partners whose thoughtful, unhurried approach to liquid DnB rewards patient engagement and late-night headphone listening.',
 3, 7, 5, 8,  8, 9, 5,  8, 7, 4),

-- Sinistarr — Halftime/Dark DnB, Detroit, Detroitstep/Critical, unique Detroit-meets-DnB fusion
('Sinistarr',            'Drum & Bass + Jungle', ARRAY['Halftime', 'Deep'],
 'Detroit producer whose Detroitstep imprint and Critical Music releases fuse the mechanical rhythmic precision of Detroit techno with halftime drum and bass structures — a genuinely unique sonic perspective that draws from the Motor City''s industrial heritage rather than the UK rave tradition. An internationally touring artist whose Detroit-inflected DnB production bridges two of electronic music''s most distinct regional identities into a compelling and original synthesis.',
 6, 3, 7, 6,  7, 8, 8,  4, 9, 1),

-- Vibe Chemistry — Liquid/Indie DnB, UK, Hospital Records, ''Dancing Is Healing'' 2023 with Charlotte Plank
('Vibe Chemistry',       'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'British duo whose Hospital Records home and Dancing Is Healing (UK #5, 2023) — with Charlotte Plank and Rudimental — demonstrated that liquid drum and bass can achieve genuine mainstream chart impact without sacrificing rhythmic sophistication. Consistent Hospitality festival bookings and Radio 1 support alongside an indie-influenced melodic sensibility that brings fresh sonic reference points to contemporary dancefloor DnB.',
 7, 8, 7, 8,  5, 7, 7,  9, 5, 3),

-- Wickaman — Jump Up/Jungle, UK, Wicked Soldiers/Ganja/Serial Killaz, J Majik & Wickaman duo
('Wickaman',             'Drum & Bass + Jungle', ARRAY['Jump Up', 'Jungle'],
 'UK producer whose J Majik & Wickaman collaboration produced consistently energetic jump-up and jungle DnB through Wicked Soldiers, Ganja Records, and Serial Killaz — three decades of high-energy dancefloor commitment. A scene veteran whose output spans ragga-influenced jungle and hard jump-up with equal authority — regular festival bookings at Boomtown and UK rave circuit events maintain his position as a reliable underground dancefloor presence.',
 8, 6, 7, 8,  4, 6, 8,  6, 5, 2),

-- Kublai — Liquid/Deep DnB, UK, Hospital Records/Metalheadz/CIA, LSB-adjacent deep rollers
('Kublai',               'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'UK producer whose Hospital Records, Metalheadz, and CIA Records releases navigate the liquid and deep drum and bass continuum — rolling basslines, warm chord work, and precisely engineered percussion that sits naturally alongside LSB and Calibre. Total Science collaboration partner whose understated output represents the consistent quality end of the Hospital-adjacent underground; a trustworthy scene contributor whose craft is evident in every release.',
 5, 7, 6, 8,  7, 8, 6,  7, 6, 3),

-- ShockOne (Karl Thomas) — Electro/Cinematic DnB, Australia, Viper/Hospital/Shogun, ''Polygon'' LP 2012
('ShockOne',             'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'Australian producer Karl Thomas whose Viper Recordings and Hospital Records debut album Polygon (2012) brought cinematic production values and electro-influenced sound design to dancefloor drum and bass — Granite and Polygon are signature tracks demonstrating wide-screen sonic ambition. A key figure in the Australian DnB scene whose international label presence and festival career at Rampage and Liquicity placed Australian production firmly on the global stage.',
 7, 6, 8, 8,  6, 7, 7,  7, 6, 2),

-- Koven (Katie Cole + Max Cooke) — Melodic/Crossover DnB, UK, Monstercat/RAM/Viper, vocal-driven progressive DnB
('Koven',                'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'British duo Katie Cole (vocals) and Max Cooke (production) whose Monstercat, RAM Records, and Viper Recordings catalogue delivers polished, emotionally resonant drum and bass with stadium-scale melodic ambition. Say Something, Siren, and Butterfly are signature vocal DnB tracks that have crossed into gaming and anime communities through Monstercat — a band-format DnB act whose combined vocal and production strength differentiates them from conventional DJ-producer projects.',
 6, 7, 7, 8,  6, 7, 7,  9, 5, 2),

-- Skepsis (Luca Cassani) — Jump Up/Crossover, London, Deep Medi/Shogun/Black Butter, ''Make Luv'' UK Top 5
('Skepsis',              'Drum & Bass + Jungle', ARRAY['Jump Up', 'Dancefloor'],
 'London producer Luca Cassani who crossed from grime and bass music into jump-up DnB before scoring mainstream breakthrough with Make Luv (UK Top 5, 2019) on Black Butter Records — Original Sin, Bou, and Charlotte Plank collaboration partner whose genre-hopping career reflects the fluid boundaries of contemporary UK bass music. Shogun Audio and Deep Medi releases alongside commercial success demonstrate rare ability to operate in both underground and mainstream spaces simultaneously.',
 8, 7, 8, 8,  4, 6, 8,  7, 5, 1),

-- Gerra & Stone — Liquid/Dancefloor DnB, Austria/UK, Fokuz/Spearhead/Liquicity, European melodic duo
('Gerra & Stone',        'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'European duo whose Fokuz Recordings, Spearhead Records, and Liquicity releases deliver warm, uplifting liquid drum and bass with consistent melodic quality and dancefloor energy — BCee and Lenzman-adjacent artists who represent the European liquid DnB tradition''s commitment to craft and emotional accessibility. Regular Liquicity Festival and Sun & Bass performers whose music balances underground credibility with broad appeal across the international melodic DnB community.',
 5, 7, 7, 8,  6, 7, 7,  8, 5, 3);
