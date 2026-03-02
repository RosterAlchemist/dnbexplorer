-- PolyJamerous: Artist catch-up — batches 29–33 (~75 artists)
-- These artists are in the local SQL files but not yet applied to Supabase.
-- Verified: Supabase has ~318 rows; batches 1–28 = 317, so 29–33 are new.
-- Run this in the Supabase SQL Editor.


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



-- PolyJamerous: Artist seed data — Batch 31 (fresh pass: D-F producers + new wave DnB)
-- Sources: drumandbassuk.com profiles + supplementary research
-- Schema: subgenres TEXT[] only (no subgenre column)

INSERT INTO artists
    (name, genre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Distorted Minds (Vickery + Midwinter) — Dancefloor DnB, Bristol, D-Style/Digital Soundboy, T-10 2003
('Distorted Minds',      'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Jump Up'],
 'Bristol duo Alistair Vickery and Jon Midwinter whose D-Style Recordings and Digital Soundboy releases — T-10 (2003) and Mr Happy (2007) with DJ Hazard — produced crowd-moving, technically infectious DnB anthems. RUN event series founders who created Bristol''s answer to the Metalheadz Blue Note sessions; TC, S.P.Y, and DJ Hazard label partners whose community-building legacy extends well beyond their own production output.',
 7, 6, 7, 8,  5, 6, 8,  6, 5, 1),

-- DJ Guv — Jump Up, London, Dubz Audio/Sweet Tooth, Turno/Hedex collaborator, Fabric veteran
('DJ Guv',               'Drum & Bass + Jungle', ARRAY['Jump Up', 'Dancefloor'],
 'London DJ and producer who has established a substantial jump-up DnB profile through Dubz Audio and Sweet Tooth Recordings — Warning (2015), No More Games (2017), and Heat (2018) built a catalogue of hard-hitting, infectious dancefloor productions. Turno, Hedex, and Majistrate collaboration partners whose Fabric and Boomtown appearances confirm underground jump-up credibility across more than a decade of prolific output.',
 8, 6, 7, 8,  4, 6, 8,  6, 5, 1),

-- Dr Meaker (Clive Merchant) — Live DnB/Soul, Bristol, Hospital Records, ''Dirt & Soul'' 2016 LP
('Dr Meaker',            'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'Bristol producer Clive Merchant whose Hospital Records debut Dirt & Soul (2016) fused live soul vocals, reggae influences, and heavy DnB bass into a distinctive live electronic drum and bass experience. Flightcase Recordings and Co-Lab home for ongoing vocal collaboration output — Dynamite MC, DJ Marky, and Macky Gee supporters whose Bristol-rooted approach to live DnB brings genuine musicianship and soul tradition into a rhythmically driven genre.',
 6, 7, 7, 8,  6, 7, 7,  7, 5, 4),

-- Emperor — Dark/Neurofunk DnB, UK, Critical Music/Blackout/Shogun/UKF, Mefjus collaboration
('Emperor',              'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Dancefloor'],
 'UK producer whose Critical Music, Blackout Music NL, and Shogun Audio releases deliver dark, aggressive drum and bass with precise sound design and powerful rhythmic impact — Monolith and Thunder are signature tracks confirming a technically formidable approach. Mefjus, Black Sun Empire, and Phace collaboration partners; UKF and Overview Music home for a rising force in contemporary technical DnB whose versatility across neurofunk and darker dancefloor territory is steadily expanding.',
 8, 3, 8, 8,  6, 7, 9,  3, 7, 1),

-- Future Prophecies (Thomas + Anthun) — Dancefloor/Live DnB, Norway, Certificate 18/Renegade Hardware
('Future Prophecies',    'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Deep'],
 'Norwegian duo Richard Thomas and Tony Anthun who brought live instrumentation — saxophone, flute — and jazz musicianship into drum and bass through Certificate 18 and Renegade Hardware releases across 20+ singles between 1999-2006. Warlords Rising (2005) and Dreadlock (Drum&Bass Arena Tune of the Year nominee) showcase a unique hybrid approach; Mari Boine and Nils Petter Molvær collaboration partners who represented a genuinely musical alternative to the genre''s producer-DJ convention.',
 7, 5, 7, 8,  7, 8, 7,  6, 7, 4),

-- Modestep (Josh Friend) — Crossover/Electro DnB, London, UKF/Monstercat/Disciple, Glastonbury/Coachella
('Modestep',             'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Crossbreed'],
 'London electronic rock and drum and bass project founded by Josh and Tony Friend whose UKF debut and Evolution Theory (2013 album) fused aggressive basslines with melodic vocals for arena-scale crossover impact — Glastonbury, Coachella, and Tomorrowland performances confirm genuine mainstream reach. Monstercat, Disciple, and Delta Heavy collaboration partner; now a solo Josh Friend project that maintains the signature vocal-driven, energetic electronic music vision.',
 8, 6, 8, 8,  5, 6, 8,  7, 5, 1),

-- Moleman — Dark/Minimal DnB, UK, Shogun Audio/Dispatch/Flexout, deep underground figure
('Moleman',              'Drum & Bass + Jungle', ARRAY['Deep', 'Neurofunk'],
 'UK producer whose Shogun Audio, Dispatch Recordings, and Flexout Audio releases navigate the darker, more minimal end of drum and bass — bass-heavy, atmospheric productions with a sparse, haunting quality that rewards patience. A consistent underground presence whose output avoids accessible melodic hooks in favour of texture, sub-bass pressure, and rhythmic complexity; respected by deep DnB enthusiasts for an uncompromising approach to the genre''s more sombre possibilities.',
 5, 3, 6, 7,  7, 8, 7,  4, 8, 1),

-- Erb n Dub — Dark/Liquid DnB, UK, Metalheadz/Shogun Audio/Dispatch, Crissy Criss collaborator
('Erb n Dub',            'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'UK producer whose Metalheadz, Shogun Audio, and Dispatch Recordings catalogue spans energetic dancefloor DnB with melodic undertones — Crissy Criss collaboration partner and a reliable scene contributor at the accessible-but-credible end of the contemporary DnB spectrum. Consistent underground bookings and a growing international festival profile demonstrate the kind of solid mid-career momentum that sustains DnB scenes outside the headline acts.',
 7, 6, 7, 8,  6, 7, 7,  6, 6, 2),

-- Boymerang — Drum Technology/Jungle, Bristol, Metalheadz/Warp, ''Balance of the Force'' 1997 dub classic
('Boymerang',            'Drum & Bass + Jungle', ARRAY['Deep', 'Jungle'],
 'Bristol studio project whose Moving Shadow and Metalheadz releases produced Balance of the Force — a landmark 1997 drum and bass track whose sculpted dub textures and breakbeat sophistication captured the genre at its most atmospheric and experimental. A rare act who brought studio craft and spatial sound design to jungle''s rhythmic energy; their influence on atmospheric and dub-influenced DnB extends far beyond their limited catalogue.',
 5, 5, 6, 7,  7, 9, 6,  5, 8, 4),

-- Conflict (Original Conflict / Konflict already in DB as Konflict) — replacing with Mindstate
-- Mindstate — Dancefloor/Liquid DnB, UK, Fokuz/Intrigue/Shogun, genre-spanning rollers
('Mindstate',            'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'UK production team whose Fokuz Recordings and Intrigue Music releases deliver warm, melodically focused liquid DnB with consistent dancefloor energy — part of the network of high-quality underground liquid producers whose combined output defines the contemporary European liquid DnB sound. Shogun Audio appearances and international festival bookings confirm a reliable scene presence whose craft is evident across a growing body of rolling, harmonically rich drum and bass.',
 5, 7, 7, 8,  6, 7, 7,  7, 5, 3),

-- State of Mind — Dancefloor/Tech DnB, New Zealand, Commercial Suicide/Flexout/Dispatch, NZ DnB exports
('State of Mind',        'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Neurofunk'],
 'New Zealand duo whose Commercial Suicide, Flexout Audio, and Dispatch Recordings releases have placed them at the sharper, more technical end of the international DnB underground — precise production, dancefloor-ready energy, and a NZ scene perspective that has earned genuine European underground credibility. One of the most consistently impressive DnB exports from the Southern Hemisphere alongside Concord Dawn and Shapeshifter.',
 7, 5, 7, 8,  6, 7, 8,  5, 7, 2),

-- Survey (already in batch 28) — replacing with Subtension (Caleb + Rob)
-- Subtension — Dancefloor/Liquid DnB, UK, Hospital Records/Shogun Audio/Viper, melodic rollers
('Subtension',           'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'British duo whose Hospital Records and Shogun Audio releases deliver polished, melodically sophisticated dancefloor DnB — a consistent Hospitality festival presence and BBC Radio 1 support artist whose productions balance commercial accessibility with genuine production quality. Viper Recordings and international festival bookings confirm a steadily growing profile at the energetic but tuneful end of contemporary drum and bass production.',
 7, 7, 7, 8,  5, 7, 7,  8, 5, 2),

-- E-Z Rollers (Jay Hurren + Kelly Richards) — Liquid/Intelligent, UK, Moving Shadow/Cleveland City, ''Walked in Line'' 1997
('E-Z Rollers',          'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'UK duo Jay Hurren and vocalist Kelly Richards whose Moving Shadow and Cleveland City releases produced Walked in Line (1997) — one of the earliest and most sophisticated vocal liquid drum and bass records. Earning critical crossover recognition and influencing a generation of liquid DnB vocalists; their combination of intelligent production and soulful female vocals defined the atmospheric, song-structured end of 1990s drum and bass before the sound had a clear commercial context.',
 4, 7, 6, 7,  7, 8, 5,  8, 6, 4),

-- Dirtyphonics (Lucien + Phreak) — Crossover/Industrial DnB, France, Owsla/Disciple, dubstep-DnB fusion
('Dirtyphonics',         'Drum & Bass + Jungle', ARRAY['Crossbreed', 'Dancefloor'],
 'French duo Lucien and Phreak whose Owsla, Disciple, and Modestep collaboration output fuses industrial rock, metal, and drum and bass into a high-energy, aggressive crossover sound — Los Angeles (with Modestep) and heavy-hitting bass music productions built for maximum festival impact. A rare example of French DnB artists achieving genuine international crossover success through an uncompromising sonic identity that draws from EDM, industrial, and bass music simultaneously.',
 9, 3, 8, 8,  5, 6, 9,  4, 6, 1),

-- T. Power (Marc Royal) — Intelligent/Atmospheric DnB, UK, SOUR Records, ''The Self-Evident Truth'' 1996
('T. Power',             'Drum & Bass + Jungle', ARRAY['Deep', 'Dancefloor'],
 'UK producer Marc Royal whose SOUR Records catalogue — including The Murky World of T. Power and The Self-Evident Truth of Organic Machinery (1996) — explored the intellectual and atmospheric possibilities of drum and bass at its most musically sophisticated. Moving Shadow and Incredible Records releases; an early champion of jazz, film score, and ambient influences within DnB production whose output influenced the entire strand of intelligent and atmospheric drum and bass.',
 5, 5, 6, 7,  8, 9, 6,  6, 8, 3);



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
('Dead Man''s Chest',    'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Crossbreed'],
 'UK producer Matt Thomas whose PRSPCT Recordings, Eatbrain, Metalheadz, and Barcode Recordings output delivers ferociously dark, industrial-influenced neurofunk at the extreme end of drum and bass production. Current Value and Homemade Weapons-adjacent sonic territory — abrasive sound design, maximum percussion complexity, and zero concession to accessibility; a pillar of the heavy European neurofunk underground whose releases regularly feature on Outbreak and PRSPCT label showcases.',
 9, 1, 9, 8,  5, 7, 9,  2, 7, 1),

-- Mollie Collins already above — replacing last slot with Keeno already in batch 24
-- Inserting: Moresounds (Steve McLellan) — Jungle/Halftime, Bristol, Tectonic/Deep Medi, dubstep-jungle bridge
('Moresounds',           'Drum & Bass + Jungle', ARRAY['Jungle', 'Halftime'],
 'Bristol producer Steve McLellan whose Tectonic and Deep Medi output bridges jungle, dubstep, and halftime DnB — a pivotal figure in the Bristol bass music community whose production philosophy draws on classic jungle breakbeat science while embracing dubstep''s focus on sub-bass weight and half-time rhythmic structures. Pinch and Peverelist-adjacent Bristol underground artist whose catalogue represents a genuinely creative dialogue between two of UK bass music''s most important regional scenes.',
 5, 4, 6, 6,  6, 8, 7,  4, 8, 3);



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


