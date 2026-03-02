-- PolyJamerous: All new artist batches (10-26) — 2026-03-01
-- Run this in Supabase SQL Editor to load ~209 new artists

-- ========== supabase/seed_artists_batch10.sql ==========
-- PolyJamerous: Artist seed data — Batch 10 (C-F names)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Concord Dawn (Matt Harvey + Evan Short) — NZ duo, Metalheadz/Hospital, ''Morning Light'' 2001
('Concord Dawn',         'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'New Zealand drum and bass duo formed in 1999 by Matt Harvey and Evan Short, who achieved international recognition with ''Morning Light'' from the landmark album Disturbance (2001). Releases across Metalheadz, Hospital Records, and their own Uprising Records balance hard-hitting dancefloor impact with cinematic melodic ambition — foundational voices in the Antipodean DnB scene.',
 7, 6, 7, 8,  6, 8, 7,  7, 6, 2),

-- Cyantific (Jonathan Stanley) — Dancefloor/Liquid, Hospital Records, ''Ghetto Blaster'' 2009
('Cyantific',            'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'British producer signed to Hospital Records whose debut album Ghetto Blaster (2009) was acclaimed for dynamic range and high production quality. A versatile dancefloor architect who blends energetic rhythms with melodic elements — long-time collaborator of Logistics and a consistent presence on Hospital and Viper Recordings.',
 7, 7, 8, 8,  6, 7, 8,  7, 6, 2),

-- DC Breaks (Dan Havers + Chris Page) — Dancefloor/Tech, RAM Records, ''Swag'', ''Exoplanet'' 2024
('DC Breaks',            'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Neurofunk'],
 'UK duo who rose to prominence through Andy C''s RAM Records, building a reputation for hard-hitting drum and bass that pairs intricate rhythms with soaring melodies and heavyweight basslines. Albums DCXV (2021), OOZE (2023), and Exoplanet (2024) confirm their standing as one of DnB''s most technically accomplished and consistently evolving acts.',
 8, 6, 9, 8,  7, 8, 9,  6, 7, 1),

-- DJ Hazard (Scott Molloy) — Jump Up, Birmingham, Playaz/Hazardous Material, D&B Awards Best DJ 2017
('DJ Hazard',            'Drum & Bass + Jungle', ARRAY['Jump Up', 'Dancefloor'],
 'Birmingham jump-up specialist who spent decades under DJ Hype''s Playaz Recordings before founding his own Hazardous Material imprint. Bricks Don''t Roll (2014) is one of jump-up''s most iconic anthems — relentless bass-heavy energy earned him the Drum and Bass Awards Best DJ in 2017, ending Andy C''s long-held winning streak.',
 9, 6, 8, 9,  4, 6, 9,  5, 5, 1),

-- DJ SS (Leroy Small) — Jungle/Dancefloor, Leicester, Formation Records co-founder, 30+ years
('DJ SS',                'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'Leicester-born jungle and DnB pioneer who co-founded Formation Records in 1991 — one of the most important imprints in UK breakbeat culture, launching artists including John B and Twisted Individual. Over three decades of forward motion from jungle roots to contemporary drum and bass, with BBC 1Xtra radio presence and worldwide touring intact.',
 7, 6, 7, 8,  5, 7, 8,  6, 6, 3),

-- Doc Scott (Scott McIlroy) — Techstep/Dark DnB, Coventry, 31 Records founder, Metalheadz Blue Note
('Doc Scott',            'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Techstep'],
 'Coventry producer who debuted in 1991 and became a regular at the defining Metalheadz Blue Note sessions in the mid-1990s. Shadow Boxing (as Nasty Habits) is a genre classic — founder of 31 Records in 1994, Doc Scott shaped the darker, more intricate side of early drum and bass with surgical mixing precision.',
 7, 3, 7, 8,  7, 8, 8,  4, 7, 2),

-- Dom & Roland (Dominic Angas) — Techstep/Dark DnB, London, Moving Shadow, ''Industry'' 1996
('Dom & Roland',         'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Techstep'],
 'London producer and seminal techstep architect whose debut album Industry (1996) on Moving Shadow set the template for cinematic, brooding DnB. Thunder, Imagination, and Can''t Punish Me are genre touchstones — three decades of collaborations with Ed Rush, DJ Trace, and Optical define his place at the dark technical heart of drum and bass.',
 7, 3, 7, 8,  7, 8, 8,  4, 7, 2),

-- Dub Phizix — Deep/Minimal DnB, Manchester, Exit Records/SenkaSonic, ''Marka'' with Strategy
('Dub Phizix',           'Drum & Bass + Jungle', ARRAY['Deep', 'Leftfield Bass'],
 'Manchester producer whose breakthrough track Marka (with Strategy, featuring spoken-word vocals) became a landmark of stripped-back, groove-led drum and bass. SenkaSonic label founder with Exit Records and Critical Music credits — gritty minimalism, deep basslines, and unconventional rhythms champion Manchester''s unique DnB identity.',
 5, 5, 6, 8,  6, 8, 7,  5, 8, 3),

-- Droptek (Lewis Munns) — Neurofunk/Tech, British, Korsakov Music, ''Symbiosis'' 2019
('Droptek',              'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Dancefloor'],
 'British producer Lewis Munns who launched in 2012 on Monstercat and pivoted to neurofunk-led drum and bass with debut album Symbiosis (2019). Korsakov Music and Life Is Soup You Are Fork releases showcase meticulous sound design and intricate rhythmic construction — a technically precise studio craftsman pushing the neurofunk frontier.',
 7, 4, 8, 8,  7, 7, 9,  4, 7, 1),

-- Drumsound & Bassline Smith (Wright/Wiggett/Smith) — Dancefloor DnB, Technique Recordings, Odyssey
('Drumsound & Bassline Smith', 'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'Veteran UK trio who have driven dancefloor drum and bass since the late 1990s through their own Technique Recordings imprint and releases on Breakbeat Kaos and RAM Records. Odyssey and Close are scene anthems — festival mainstage regulars at Glastonbury and Let It Roll, balancing melodic hooks with heavyweight bass construction.',
 7, 7, 8, 8,  6, 7, 8,  7, 6, 2),

-- Ed:it (Ed Warrener) — Dancefloor/Tech, Nottingham, Shogun Audio/Critical/Symmetry, soulful grit
('Ed:it',                'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Deep'],
 'Nottingham producer who emerged in 2010 and built a reputation for meaningful, soulful yet gritty drum and bass across Shogun Audio, Critical Music, and Symmetry Recordings. Securing full Shogun roster membership after impressing Friction — his Dispatch and Flexout releases demonstrate a rare balance of emotional depth and dancefloor utility.',
 6, 5, 7, 8,  7, 7, 7,  6, 7, 3),

-- Etherwood (Edward Allen) — Liquid/Melodic DnB, Lincoln, Hospital/Med School, singer-songwriter
('Etherwood',            'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'Lincoln-born producer and singer-songwriter who debuted on Hospital Records'' Sick Music 3 in 2012 and charted his self-titled Med School album at UK Dance #4. Two-time D&B Arena Awards winner for Best Newcomer — lush melodies, live instrumentation, and heartfelt vocals define a liquid DnB approach touched by jazz and soul.',
 4, 8, 6, 7,  7, 8, 5,  9, 5, 6),

-- Fabio & Grooverider — Jungle/DnB legends, London, BBC Radio, ''30 Years of Rage'' 2019
('Fabio & Grooverider',  'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'London DJ duo who helped pioneer and popularise drum and bass globally from the late 1980s onward — cornerstones of the Rage night at Heaven which incubated jungle from hardcore. Decades of BBC Radio 1 and 1Xtra presence through their monthly show, and 30 Years of Rage (2019) celebrates their unbroken influence on the genre.',
 7, 6, 6, 8,  6, 7, 7,  6, 7, 3),

-- Fixate (Declan Curran) — Leftfield/Footwork, London, Exit Records/Pineapple, ''Get Busy''-era
('Fixate',               'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Leftfield Bass'],
 'London producer who debuted in 2014 on Diffrent Music and Exit Records, bringing juke, footwork, grime, and dubstep influences into 170 BPM territory. A key figure in the Richie Brains collective and longtime Exit Records collaborator — unconventional grooves and deliberate structural subversion mark him as one of DnB''s most original forward thinkers.',
 6, 5, 7, 7,  6, 8, 8,  5, 9, 2),

-- Fourward — Neurofunk, Austria, Shogun/Eatbrain/Manifest, industrial + emotional fusion
('Fourward',             'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Dancefloor'],
 'Austrian duo from Lower Austria whose neurofunk productions on Shogun Audio and Eatbrain balance gritty industrial textures with deep emotional progressions. Expansion on Shogun Audio and ongoing releases through Manifest demonstrate a rare synthesis of technical precision and melodic depth — respected fixtures on Let It Roll and European festival circuits.',
 7, 5, 8, 8,  7, 7, 9,  5, 7, 1);

-- ========== supabase/seed_artists_batch11.sql ==========
-- PolyJamerous: Artist seed data — Batch 11 (F-K names)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Fracture — Jungle/Footwork/Breakbeat, London, Astrophonica co-founder, ''Get Busy'' 2011
('Fracture',             'Drum & Bass + Jungle', ARRAY['Jungle', 'Leftfield Bass'],
 'London producer who co-founded Astrophonica with Neptune and changed the 170 BPM landscape in 2011 with Get Busy — the track that introduced juke and ghetto house swing to drum and bass producers. Metalheadz, Exit Records, and Hooversound credits alongside collaborations with Sam Binga and DJ Spinn (Teklife) mark him as one of the genre''s most adventurous structural thinkers.',
 7, 5, 7, 7,  5, 8, 9,  4, 9, 2),

-- Furney — Liquid/Atmospheric DnB, UK, Good Looking/Soul Deep, LTJ Bukem-championed
('Furney',               'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'UK liquid DnB veteran whose work was championed early by LTJ Bukem and introduced to global audiences through Good Looking Records. Over two decades of smooth, soulful productions with deep grooves, intricate melodies, and a jazz-touched atmospheric quality — standout tracks include You Are The Universe and Pipe Dreams across Soul Deep, Liquid V, and Sheer Velocity.',
 3, 8, 5, 8,  7, 9, 5,  8, 5, 5),

-- General Levy — Ragga Jungle, London, M-Beat, ''Incredible'' UK #8 1994
('General Levy',         'Drum & Bass + Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'Harlesden-born ragga deejay whose Incredible (1994, with M-Beat) reached UK #8 and became one of jungle''s first mainstream crossover anthems. A foundational voice fusing reggae and dancehall with drum and bass energy — energetic toasting style and cultural authenticity made him a touchstone for the genre''s ragga tradition across three decades.',
 8, 7, 7, 8,  4, 7, 8,  7, 6, 5),

-- Gridlok (Ryan Powell) — Techstep/Neurofunk, USA/Florida, RAM/Renegade Hardware, ''Break the System''
('Gridlok',              'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Techstep'],
 'American producer from Florida who became a pioneering figure in techstep and neurofunk with landmark album Break the System (2007). RAM Records, Renegade Hardware, and Shogun Audio releases — dark, mechanical soundscapes and powerfully rhythmic production built in close collaboration with Dom & Roland, Optical, and Prolix across a twenty-year career.',
 8, 2, 8, 8,  7, 8, 9,  3, 7, 1),

-- Grooverider (Raymond Bingham) — Jungle/Dark DnB, London, Prototype Records, ''Mysteries of Funk'' 1998
('Grooverider',          'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'Streatham-born DJ and Rage resident whose partnership with Fabio from 1991 onward was instrumental in the transition from hardcore to jungle and drum and bass. Founder of Prototype Recordings, BBC Radio 1 DnB show host, and producer of Mysteries of Funk (1998) — a genre architect whose forward-thinking selections defined the scene''s dark, sophisticated edge.',
 7, 4, 6, 8,  6, 8, 7,  5, 7, 3),

-- Halogenix — Experimental/Deep DnB, UK, Ivy Lab member, Gemini Gemini, ''Passions'' 2024
('Halogenix',            'Drum & Bass + Jungle', ARRAY['Deep', 'Dancefloor'],
 'British producer known as part of pioneering bass trio Ivy Lab who built a solo career acclaimed for blending intricate rhythms with emotive melodies. Debut album Passions (2024) on Gemini Gemini explores themes of growth through minimal rollers and experimental structures — a trusted collaborator of dBridge, Alix Perez, and Noisia.',
 5, 5, 6, 8,  7, 8, 7,  6, 8, 3),

-- Ivy Lab (Sabre + Stray) — Halftime/Experimental, London, 20/20 London Recordings, cross-genre
('Ivy Lab',              'Drum & Bass + Jungle', ARRAY['Halftime', 'Leftfield Bass'],
 'London duo Sabre and Stray who earned critical acclaim fusing deep basslines, experimental beats, and hip-hop-inspired grooves across 100 and 150 BPM. 20/20 Volume One established their multi-tempo approach — Red Rocks appearances and releases on Twenty Twenty London Recordings and Alpha Pup confirm their position as one of bass music''s most adventurous creative units.',
 6, 5, 7, 6,  7, 8, 7,  6, 9, 2),

-- J Majik (James Spratling) — Liquid/Atmospheric DnB, Northwood, Infrared Records, ''Your Sound'' 1995
('J Majik',              'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'Northwood producer who launched Infrared Records and helped define liquid and atmospheric drum and bass in the 1990s. Your Sound (1995) remains a genre classic — collaborations with Goldie, Adam F, and DJ Hype, and UK chart entries with Love Is Not a Game (#34, 2000) and Metrosound with Adam F demonstrate rare crossover reach without sacrificing underground credibility.',
 5, 7, 6, 8,  7, 8, 6,  7, 6, 4),

-- John B (Bryn Williams) — Dancefloor/Electro DnB, Maidenhead, Beta Recordings, ''Up All Night''
('John B',               'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Dancefloor'],
 'Maidenhead producer who founded Beta Recordings — the label that launched Nu:Tone, Logistics, and Commix — and pioneered trance-influenced electrostep DnB with debut album Visions (1997) and Light Speed (2012). Up All Night and consistent Metalheadz and Formation credits across three decades mark him as one of the genre''s most eclectic and durable innovators.',
 7, 7, 8, 8,  6, 7, 8,  7, 6, 2),

-- Jumpin Jack Frost — Jungle/Dancefloor, London, V Recordings co-founder, ''The Life and Times''
('Jumpin Jack Frost',    'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'London jungle pioneer who co-founded V Recordings with Bryan Gee and helped define the label''s raw, soulful identity. A key figure in the transition from hardcore rave to bass-driven drum and bass — three decades of AWOL, World Dance, and Planet V appearances, and author of autobiography The Life and Times of a Jungle Junkie.',
 7, 6, 6, 8,  5, 7, 7,  6, 6, 4),

-- Kasra — Tech DnB, Critical Music founder, label architect, Enei collaborator
('Kasra',                'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Neurofunk'],
 'Founder and driving force behind Critical Music, one of drum and bass''s most influential labels, whose A&R vision developed Enei, InsideInfo, and a generation of tech DnB artists. As a producer, sharp drum work, atmospheric depth, and meticulous sound design define releases like Overthinking and Surface Tension — an architect of the contemporary technical DnB landscape.',
 7, 5, 8, 8,  7, 8, 8,  5, 7, 1),

-- Kenny Ken — Jungle, London, Soundclash Recordings, Jungle Soundclash winner 1994
('Kenny Ken',            'Drum & Bass + Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'London jungle pioneer who won the prestigious Jungle Soundclash in 1994 and founded Soundclash Recordings to nurture artists within the scene. Three decades of AWOL and World Dance headline slots — a raw, roots-driven DJ whose soulful jungle selections and vibrant crowd connection embody the genre''s foundational spirit.',
 7, 6, 6, 8,  5, 7, 7,  6, 6, 4),

-- Kings Of The Rollers (Serum + Voltage + Bladerunner) — Dancefloor, Hospital, ''Burnt Ends'' 2018
('Kings Of The Rollers', 'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Jungle'],
 'Drum and bass supergroup formed in 2016 by Serum, Voltage, and Bladerunner — three individual standouts whose self-titled debut on Hospital Records (2019) featured Inja and MC Bassman collaborations. Burnt Ends and Shella became instant scene anthems — gritty basslines, rolling drum patterns, and deep jungle undertones delivered at festival mainstage scale.',
 8, 6, 7, 8,  5, 7, 8,  7, 6, 2),

-- Kove (James Rockhill) — Liquid/Dancefloor, British, Viper/RAM Program, ''Gobble''
('Kove',                 'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'British producer who broke through on Viper Recordings and RAM Records'' Program imprint with euphoric, vocal-driven dancefloor DnB. Gobble and Way We Are earned extensive BBC Radio 1 support — his signature blend of emotive melodies, powerful basslines, and radio-ready production places him at the accessible, uplifting end of the contemporary liquid spectrum.',
 6, 8, 7, 8,  6, 7, 7,  8, 5, 3);

-- ========== supabase/seed_artists_batch12.sql ==========
-- PolyJamerous: Artist seed data — Batch 12 (K-M names)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Krakota (Sebastian Inwood) — Dancefloor/Liquid DnB, Bournemouth, Hospital Records, CIA debut 2010
('Krakota',              'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'Bournemouth producer who debuted on Total Science''s C.I.A. imprint in 2010 and broke through with Block Breaker on Sick Music 3 (2012) before signing exclusively to Hospital Records. Music licensed to Need for Speed (2015) and Forza Horizon 3 — bass-heavy, break-laden productions balanced with melodic energy, backed by Andy C, Friction, and Sub Focus.',
 7, 7, 8, 8,  6, 7, 8,  7, 6, 2),

-- L Plus — Liquid/Melodic DnB, Bratislava/Slovakia, Technique Recordings, classically trained
('L Plus',               'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'Classically trained Slovakian producer from Bratislava who brings orchestral sensibility to liquid drum and bass. Debut album Hideout (2017) on Technique Recordings showcases cinematic soundscapes and euphoric melodies built on a formal composition background — standout tracks Caspian Sea and Creature Must Die demonstrate rare harmonic depth within the genre.',
 5, 8, 7, 8,  8, 8, 6,  8, 5, 4),

-- Lemon D (Kevin King) — Techstep/Dark DnB, Brixton, Valve Recordings co-founder with Dillinja
('Lemon D',              'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Techstep'],
 'Brixton producer who co-founded Valve Recordings with Dillinja and co-designed the Valve Sound System — the first purpose-built sound system for drum and bass. Big Bad Bass Vol. 1 (2002) with Dillinja is a seminal heavy DnB record — three decades of dark, techy production across Metalheadz, V Recordings, and Infrared, with a celebrated return in 2024.',
 8, 3, 7, 8,  6, 8, 8,  4, 6, 2),

-- Level 2 (Pedro Barbosa) — Liquid/Soul DnB, Lisbon, V Recordings, jazz and hip-hop influences
('Level 2',              'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'Lisbon-born drum and bass producer whose debut album Genesis (2008) launched a career rooted in soulful melodies, deep basslines, and intricate percussion. A consistent V Recordings artist whose jazz and hip-hop sensibilities give his liquid productions warmth and groove that translate equally to headphone listening and dancefloor environments.',
 5, 7, 6, 8,  7, 8, 6,  8, 6, 5),

-- Levela (Callum Smart) — Jump Up/Dancefloor, Crawley, RAM/Playaz, LVL Music
('Levela',               'Drum & Bass + Jungle', ARRAY['Jump Up', 'Dancefloor'],
 'Crawley producer who began DJing at 11 and established LVL Music to release his own jump-up and dancefloor drum and bass. Consistent output across RAM Records and Playaz Recordings — intricate rhythms and heavy basslines deliver relentless dancefloor impact, with Noisia remixes demonstrating his cross-scene respect.',
 8, 6, 8, 9,  4, 6, 9,  5, 5, 1),

-- Limewax (Maxim Anokhin) — Darkstep/Hardstep, Ukraine/Netherlands, PRSPCT/Tech Itch, intense
('Limewax',              'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Darkstep'],
 'Ukrainian producer based in the Netherlands who debuted aged 17 on Tech Itch Recordings in 2005 and built a reputation for intense, aggressive darkstep with frenetic breaks and acid textures. PRSPCT Recordings mainstay and Therapy Sessions fixture — collaborations with The Panacea and Current Value place him at the uncompromising hardcore edge of drum and bass.',
 9, 2, 8, 7,  6, 7, 9,  2, 8, 1),

-- Loadstar (Xample + Lomax) — Dancefloor/Melodic, RAM Records, ''Warrior'', Glastonbury regulars
('Loadstar',             'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'UK duo formed in 2010 by Xample and Lomax who built a dancefloor sound on RAM Records that merges euphoric melodies with heavyweight basslines. Link to the Past, Warrior, and Bomber earned support from Andy C and Chase & Status — Glastonbury and Creamfields appearances confirm their position as one of contemporary DnB''s most accessible and energetic live acts.',
 7, 7, 8, 8,  6, 7, 8,  8, 5, 2),

-- Loxy (Andrew Campbell) — Dark DnB/Neurofunk, London, Cylon/Metalheadz/Renegade Hardware, 30+ years
('Loxy',                 'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Dancefloor'],
 'London producer with over three decades in drum and bass who co-founded Cylon Recordings in 2003 and held residencies at Metalheadz Blue Note and Renegade Hardware. Renegade Hardware, Metalheadz, and Exit Records releases demonstrate a career built on dark, atmospheric DnB rooted in neuro-funk sensibilities — a true scene elder statesman.',
 6, 3, 7, 8,  7, 8, 7,  4, 7, 2),

-- Macky Gee (Jack McGeorge) — Jump Up, Kent, SaSaSaS collective, ''Sway'' 2016
('Macky Gee',            'Drum & Bass + Jungle', ARRAY['Jump Up', 'Dancefloor'],
 'Kent producer who began mixing at ten and built a career on aggressive yet melodic jump-up anthems. Sway (2016) achieved significant chart success across the UK and Europe — member of the SaSaSaS collective alongside DJ Phantasy and Harry Shotta, delivering high-energy festival performances with a new generation fanbase.',
 9, 7, 8, 9,  4, 6, 8,  6, 5, 1),

-- Maduk (Maarten van der Vleuten) — Liquid/Melodic, Dutch, Liquicity co-founder, ''New Dawn'' 2012
('Maduk',                'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'Dutch producer who signed to Hospital Records in 2011 and broke through with New Dawn (2012) before co-founding Liquicity — a platform that became one of liquid and melodic DnB''s most important curators. Debut album Shaping Shadows (2014) and consistent Liquicity releases define a sound of lush melodies and powerful basslines infused with emotive atmosphere.',
 5, 8, 7, 8,  7, 8, 6,  9, 5, 4),

-- Majistrate (Ian Jordan) — Jump Up/Jungle, Kent, Low Down Deep, Problem Central supergroup
('Majistrate',           'Drum & Bass + Jungle', ARRAY['Jump Up', 'Jungle'],
 'Kent producer and DJ with over three decades in the industry who began DJing in 1989 and producing in 1994. Member of the Problem Central supergroup alongside Logan D, Eksman, and Evil B — rolling basslines, intricate drum patterns, and jungle roots fused into a dancefloor-driven approach delivered across Low Down Deep, Crucast, and Sweet Tooth Recordings.',
 8, 6, 7, 8,  5, 7, 8,  6, 6, 3),

-- Makoto (Makoto Shimizu) — Liquid/Soul DnB, Tokyo/Japan, Good Looking/Hospital, jazz and funk roots
('Makoto',               'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'Tokyo-born liquid DnB artist who signed to Good Looking Records in the late 1990s and became one of the genre''s most celebrated international voices. Debut album Human Elements (2003) and Souled Out showcase a soulful, jazz-infused sound of warm melodies and intricate programming — regular collaborator with DJ Marky, LTJ Bukem, and MC Conrad across three decades.',
 4, 7, 5, 8,  8, 9, 5,  8, 6, 6),

-- Malux (Alex Chambers) — Neurofunk, London, Eatbrain/Evolution Chamber/Bad Taste, ''Turbine''
('Malux',                'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Dancefloor'],
 'London neurofunk producer who transitioned from glitch dubstep (as Skope) and earned early support from Noisia with debut track Turbine. Eatbrain, Evolution Chamber, and Bad Taste Recordings releases — Swamp Thug and Nosedive exemplify intricate sound design and relentless energy that make him a consistent Fabric and Let It Roll presence.',
 8, 3, 9, 8,  7, 7, 9,  3, 7, 1);

-- ========== supabase/seed_artists_batch13.sql ==========
-- PolyJamerous: Artist seed data — Batch 13 (M-N names)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Mampi Swift (Phil Anim) — Dancefloor DnB, London, Charge Recordings founder, ''Bad Ass'' era
('Mampi Swift',          'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Jump Up'],
 'London drum and bass pioneer who founded Charge Recordings in 1997 and earned the nickname "The Superman of Drum and Bass" for lightning-fast mixing precision. Early tracks The One and Hi Tek became scene anthems — a raw, high-energy approach to dancefloor DnB across 25+ years of Fabric, Let It Roll, and Boomtown headliner status.',
 8, 6, 7, 9,  5, 7, 9,  6, 5, 2),

-- Matrix & Futurebound (Jamie Quinn + Brendan Collins) — Dancefloor/Melodic, Viper, UK Top 10
('Matrix & Futurebound', 'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'British duo whose melodic, vocal-forward drum and bass earned UK Top 10 chart success with All I Know and Control (featuring Max Marshall). Viper Recordings mainstays and Armada Music collaborators who have remixed Tinie Tempah and Jessie J — a consistent presence at the accessible, melodic end of the dancefloor DnB spectrum.',
 7, 8, 8, 8,  6, 7, 7,  8, 5, 3),

-- Maztek (Matteo Cavo) — Neurofunk, Rome/Italy, Renegade Hardware/0101 Music, ''Galactica'' 2012
('Maztek',               'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Dancefloor'],
 'Rome-born neurofunk producer who founded Subculture Records in 2005 and broke through with Galactica/Odyssey on Renegade Hardware (2012). Founder of 0101 Music (2018) — futuristic sound design, intricate basslines, and dynamic rhythms across Renegade Hardware, Hospital Records, and RAM''s Program imprint over a two-decade career.',
 7, 4, 8, 8,  7, 7, 9,  4, 7, 1),

-- Micky Finn (Michael Hearn) — Jungle/Dancefloor, London, Urban Takeover co-founder, ''Bad Ass'' 1996
('Micky Finn',           'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'London jungle pioneer who co-founded Urban Takeover alongside Aphrodite and helped propel the genre globally through their 1995-96 anthems including Bad Ass. Over three decades of raw energy fused with infectious melodies — a foundational promoter, producer, and DJ whose career spans Warehouse Days to international festival mainstages.',
 8, 7, 7, 8,  5, 7, 8,  7, 6, 4),

-- Misanthrop (Michael Bräuninger) — Neurofunk, Hamburg, Neosignal co-founder with Phace
('Misanthrop',           'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Dancefloor'],
 'Hamburg neurofunk producer who co-founded Neosignal with Phace in 2008, building one of the genre''s most respected technical labels. Dark, atmospheric soundscapes fused with complex rhythmic structures — Motor EP collaborations with Phace and support from Noisia, Skrillex, and Andy C confirm his position as a core architect of the Hamburg neurofunk movement.',
 8, 2, 8, 8,  7, 8, 9,  3, 8, 1),

-- Mind Vortex (Carroll + Anfield) — Dancefloor, East Coast UK, RAM Records, Nightlife 5, ''Hotbox''
('Mind Vortex',          'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'East Coast UK duo of classically trained musicians who signed to RAM Records in 2009 and broke through on Andy C''s Nightlife 5 compilation. Hotbox (2012) dominated the DnB charts — their classical background in clarinet, saxophone, and piano lends a rare melodic sophistication to high-energy dancefloor productions.',
 7, 7, 8, 8,  7, 7, 8,  7, 6, 3),

-- Moving Fusion (Dan Black + Mike Pears) — Dancefloor/Tech, UK, RAM Records, ''Turbulence''
('Moving Fusion',        'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Techstep'],
 'UK duo who emerged from RAM Records in the late 1990s with anthems Turbulence and Thunderball that became genre touchstones. Futuristic soundscapes, heavy basslines, and intricate drum patterns — collaborators with Pendulum, Noisia, and DJ Fresh whose productions carry the relentless intensity of drum and bass''s dancefloor golden era.',
 8, 5, 8, 8,  6, 7, 8,  6, 7, 2),

-- Murdock — Dancefloor/Liquid, Belgium, Radar Records founder, Rampage festival organiser
('Murdock',              'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'Belgian DJ, producer, and founder of both Radar Records and Rampage — one of Europe''s largest drum and bass festivals, instrumental in elevating Belgium''s bass music culture globally. V Recordings, Hospital Records, and Viper releases blend jungle influences with modern dancefloor precision — a critical scene infrastructure figure as much as a performer.',
 6, 7, 7, 8,  6, 7, 7,  7, 6, 3),

-- Need For Mirrors (Joe Moses) — Deep/Experimental DnB, London, Soul:r/V/Symmetry, Soul In Motion
('Need For Mirrors',     'Drum & Bass + Jungle', ARRAY['Deep', 'Dancefloor'],
 'London producer and co-founder of the Soul In Motion club night who brings minimalistic, stripped-back aesthetics and cinematic atmospheres to deep drum and bass. V Recordings, Hospital Records, and Symmetry Recordings credits alongside standout tracks Lambo and Bamboo — a forward-thinking voice that challenges typical DnB formulas through constant reinvention.',
 5, 5, 6, 8,  7, 8, 7,  5, 8, 3),

-- Neonlight (Jakubczyk + Thomser) — Neurofunk, Leipzig/Germany, Blackout/Eatbrain, ''Hammerhead''
('Neonlight',            'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Dancefloor'],
 'Leipzig neurofunk duo who became one of the most recognised names in modern neurofunk through tracks like Hammerhead and Computer Music. Debut album My Galactic Tale (2016, Blackout Music) is a sci-fi neurofunk benchmark — Eatbrain and Bad Taste Recordings releases demonstrate intricate sound design and relentless precision that make them Let It Roll and Rampage regulars.',
 8, 3, 9, 8,  7, 7, 9,  3, 7, 1),

-- Nia Archives — Jungle, Bradford, Island Records, ''Silence Is Loud'' UK#16, BRIT Awards Rising Star
('Nia Archives',         'Drum & Bass + Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'Bradford-born producer and singer-songwriter who became the first electronic artist to win BBC Music Introducing Artist of the Year in 2022. Debut album Silence Is Loud (2024) debuted at UK Albums #16 — Jamaican heritage, gospel, and Britpop woven into jungle and drum and bass, with a BRIT Rising Star nomination and MOBO Best Electronic/Dance Act win.',
 7, 7, 6, 7,  6, 7, 7,  8, 7, 5),

-- Nicky Blackmarket (Nicholas Andersson-Gylden) — Jungle, London, Blackmarket Records co-owner
('Nicky Blackmarket',    'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'Pioneer who became part-owner of Blackmarket Records in Soho, establishing its dedicated jungle and DnB section as a crucial scene hub in the early 1990s. Pulse FM and pirate radio veteran who released the influential Spam EP as Nick OD — a foundational figure whose improvisational DJ approach and encyclopedic knowledge shaped the jungle tradition across three decades.',
 7, 6, 6, 8,  5, 7, 8,  6, 6, 4);

-- ========== supabase/seed_artists_batch14.sql ==========
-- PolyJamerous: Artist seed data — Batch 14 (N-S names)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Noisia (Roos + van Sonderen + de Vlieger) — Neurofunk, Groningen/NL, Vision Recordings, 2000–2021
('Noisia',               'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Dancefloor'],
 'Groningen trio who redefined drum and bass through razor-sharp sound design, genre-defying productions, and technical mastery across two decades. Split the Atom (2010) and Outer Edges (2016) are landmark albums — DmC: Devil May Cry soundtrack, their own Vision and Division Recordings, and the Noisia Radio show cemented a legacy that continues inspiring producers long after their 2021 farewell.',
 9, 2, 9, 8,  7, 8, 10,  3, 8, 1),

-- Nookie (Gavin Cheung) — Atmospheric/Liquid DnB, Reinforced/Good Looking, ''Give a Little Love'' 1990s
('Nookie',               'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'Pioneering atmospheric DnB producer whose tracks Give a Little Love and Sound of Music became defining jungle anthems of the early 1990s. Reinforced Records and Good Looking Records veteran whose deep, emotive production — warm basslines, intricate breakbeats, and soulful melodies — helped establish the liquid end of the drum and bass spectrum alongside LTJ Bukem.',
 4, 7, 5, 7,  7, 9, 5,  7, 7, 4),

-- North Base (Fletcher + Gregory) — Dancefloor DnB, Manchester, Technique/Viper, Craig David remix
('North Base',           'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Jump Up'],
 'Manchester duo formed in 2009 by Dean Fletcher and William Gregory whose Craig David & Big Narstie remix earned BBC Radio 1 airplay and broad exposure. Technique Recordings, Viper Recordings, and Precinct releases — energetic dancefloor productions with Glastonbury, Fabric, and Warehouse Project performance credentials.',
 7, 6, 8, 8,  5, 7, 8,  6, 6, 2),

-- Nu:Tone — Liquid/Soul DnB, British, Hospital Records, brother of Logistics, jazz-infused
('Nu:Tone',              'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'British producer signed to Hospital Records and brother of Logistics whose jazz-inflected liquid DnB became a cornerstone of the label''s melodic output. Part of the Nu:Logic duo — warm, organic productions rooted in soul and jazz sensibility, with a song-writing depth that distinguishes him from the purely electronic end of the genre.',
 4, 8, 6, 8,  8, 8, 5,  8, 6, 6),

-- Omni Trio (Robert Haigh) — Intelligent DnB, Barnsley, Moving Shadow, ''Renegade Snares'' 1993
('Omni Trio',            'Drum & Bass + Jungle', ARRAY['Deep', 'Jungle'],
 'Barnsley producer whose seminal work on Moving Shadow through the mid-1990s — debut The Deepest Cut Vol. 1 (1995) and the iconic Renegade Snares — defined intelligent drum and bass. Breakbeat precision, ethereal piano lines, and haunting atmospheres earned him a legacy as one of the genre''s founding intellectuals; he returned to ambient music under his real name in the late 2000s.',
 4, 6, 5, 7,  8, 9, 5,  7, 7, 4),

-- Paradox (Dev Pandya) — Drumfunk/Experimental, British/Vilnius, Moving Shadow/Reinforced, Amiga live
('Paradox',              'Drum & Bass + Jungle', ARRAY['Jungle', 'Drumfunk'],
 'British drumfunk pioneer who co-founded Mixrace in 1990, debuted on Moving Shadow in 1992, and built a catalogue of over 200 vinyl releases spanning ten albums. Celebrated as a drumfunk architect for intricate evolving drum patterns drawn from obscure breakbeats — performs live on a vintage 1992 Commodore Amiga 1200, and collaborated with jazz legend Herbie Hancock on a DnB-jazz fusion project.',
 5, 5, 5, 7,  7, 8, 8,  5, 9, 3),

-- Pola & Bryson (Harry Bryson + Jack Higgins) — Liquid DnB, UK, Shogun Audio, ''Lost in Thought'' 2018
('Pola & Bryson',        'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'British duo who signed exclusively to Shogun Audio in 2017 and released the celebrated album Lost in Thought (2018), establishing them as leading voices in modern liquid DnB. Melancholic atmospheres, lush melodies, and refined musicality define their sound — their Overgrown project (2025) and FABRICLIVE mix confirm sustained creative momentum.',
 4, 7, 6, 8,  7, 8, 5,  8, 6, 4),

-- Prolix (Chris McCarthy) — Neurofunk, London, Trendkill Records founder, Noisia collaborator
('Prolix',               'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Dancefloor'],
 'London neurofunk producer who founded Trendkill Records in 2011 and built a reputation for high-energy, technically demanding DnB across RAM, Playaz, Blackout, Metalheadz, Virus, and OWSLA/MTA. Asteroids with Noisia and the album Project Trendkill with Gridlok are scene landmarks — EDC Las Vegas and Let It Roll headliner.',
 8, 3, 9, 8,  7, 7, 9,  3, 7, 1),

-- Pythius (Hylke Klazema) — Neurofunk, Utrecht/Netherlands, Blackout Music, ''New Order EP'' 2015
('Pythius',              'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Dancefloor'],
 'Utrecht neurofunk producer whose Abandon EP (2014, Blackout Music) and New Order EP (2015) — which earned two D&B Awards nominations — established a high-energy, tech-driven sound. Black Sun Empire and State of Mind collaborator whose album Turmoil (2023) broadens his palette with vocal collaborations while maintaining the intricate sound design that defines his neurofunk core.',
 8, 3, 8, 8,  6, 7, 9,  4, 7, 1),

-- Quadrant (Leigh Caplan) — Deep/Atmospheric DnB, Seattle/USA, Metalheadz/Dispatch/Commercial Suicide
('Quadrant',             'Drum & Bass + Jungle', ARRAY['Deep', 'Liquid'],
 'Seattle producer who debuted on Renegade Hardware in 2005 and built a reputation for merging dancefloor energy with melodic depth across Metalheadz, Dispatch Recordings, and Commercial Suicide. Anthropocene (2012) with Iris on Metalheadz Genesis is a milestone — close collaboration with Iris through CIA Records and C4C Recordings over nearly two decades.',
 5, 6, 6, 8,  7, 8, 7,  6, 7, 3),

-- Random Movement (Michael Richards) — Liquid/Soul DnB, Florida/USA, Innerground, ''Lost On Purpose''
('Random Movement',      'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'Florida-born liquid DnB producer who emerged as a solo project in 2006 and became a leading figure in soulful DnB through Innerground Records, Liquid V, and his own Flight Pattern Records. Lost On Purpose (2019) is his acclaimed full-length — weekly Bassdrive radio presence and collaborations with DJ Marky and Dave Owen affirm a career rooted in emotive, jazz-touched melodic production.',
 4, 8, 5, 8,  7, 8, 5,  8, 6, 5),

-- Remarc (Marc Forrester) — Jungle, London, Suburban Base/Planet Mu, ''King of Amen'' 1990s
('Remarc',               'Drum & Bass + Jungle', ARRAY['Jungle', 'Drumfunk'],
 'London jungle pioneer dubbed "King of Amen" for his mastery of the Amen break — pirate radio veteran from age 13 and Suburban Base recording artist whose R.I.P. (1995) and Sound Murderer are quintessential jungle texts. Planet Mu''s 2003 compilation reintroduced his intricate breakbeat manipulation and powerful basslines to a new generation.',
 8, 5, 6, 7,  5, 7, 9,  5, 8, 3),

-- René LaVice — Dancefloor/Vocal DnB, Toronto/Canada, RAM Records, BBC Radio 1 host 2017–
('René LaVice',          'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'Toronto producer who signed to RAM Records, released debut album Insidious (2013), and became host of BBC Radio 1''s drum and bass programme in 2017. DeVice Records founder whose emotive vocals, hard-hitting rhythms, and radio-accessible production — demonstrated on The Calling and Play with Fire — bridge underground credibility with mainstream reach.',
 7, 7, 8, 8,  6, 7, 7,  7, 6, 3),

-- Rockwell (Tom Green) — Experimental/Dark DnB, British, Shogun/Metalheadz/Obsolete Medium
('Rockwell',             'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Deep'],
 'British producer whose intricate sound design, complex rhythms, and experimental textures span Shogun Audio, Metalheadz, and his primary home Obsolete Medium. Collaborations with Phace, The Upbeats, Roni Size, and Annix — Low Art (2023) and Only (2025) confirm a career built on pushing sonic boundaries without sacrificing dancefloor impact.',
 6, 4, 7, 8,  7, 8, 8,  5, 8, 2),

-- Rufige Kru (Goldie) — Jungle/Dark DnB, Wolverhampton, Metalheadz, Terminator 1992 time-stretch pioneer
('Rufige Kru',           'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'Goldie''s pioneering production alias responsible for Terminator (1992) — the track that introduced time-stretching to jungle and altered the genre''s DNA permanently. Haunting atmospheres, intricate rhythms, and emotional depth across Metalheadz and Goldie Inc Ltd define a project central to the label''s iconic early catalogue and continuing to release through 2026.',
 7, 4, 7, 7,  7, 8, 7,  6, 8, 3);

-- ========== supabase/seed_artists_batch15.sql ==========
-- PolyJamerous: Artist seed data — Batch 15 (S-T names)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Sabre (Gove Kidao) — Experimental/Deep DnB, London, Critical Music, Ivy Lab member
('Sabre',                'Drum & Bass + Jungle', ARRAY['Deep', 'Leftfield Bass'],
 'London producer whose classical training fused with jazz and hip-hop influences produces rich, intricate drum and bass of rare melodic depth. Debut album A Wandering Journal (2010, Critical Music) established his emotionally-driven approach — founding member of Ivy Lab alongside Stray and Halogenix, pushing boundaries across hip-hop, trap, and electronica over a 14-year recording career.',
 5, 6, 6, 7,  8, 8, 7,  6, 8, 3),

-- Saxxon (Gareth Greenway) — Jungle Steppers/Liquid, Norfolk, V Recordings/Liquid V, jazz trumpet collab
('Saxxon',               'Drum & Bass + Jungle', ARRAY['Jungle', 'Liquid'],
 'Norfolk producer whose New Adventures in Modern Jazz EP (2015, Liquid V) — featuring live jazz trumpeter Jon Scott — announced a distinctively organic approach to jungle steppers and rolling basslines. V Recordings, Liquid V, and Natty Dub Recordings credits across a consistent output of dynamic, cheekily playful drum and bass that bridges vintage jungle textures with forward-thinking production.',
 6, 7, 6, 8,  7, 8, 7,  6, 7, 5),

-- Seba (Sebastian Ahrenberg) — Liquid/Atmospheric DnB, Sweden, Secret Operations/Good Looking/Metalheadz
('Seba',                 'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'Swedish producer who emerged on Good Looking Records in the mid-1990s with the celebrated Sonic Winds collaboration and founded Secret Operations in 2007 to house his atmospheric, deeply soulful productions. Metalheadz, Spearhead, and Liquicity releases build on deep basslines, lush soundscapes, and intricate drum programming — a cornerstone of the international liquid DnB tradition across three decades.',
 4, 7, 5, 8,  7, 9, 5,  8, 6, 4),

-- Serial Killaz — Jungle/Ragga DnB, UK, Serial Killaz Recordings, 20+ years sound system culture
('Serial Killaz',        'Drum & Bass + Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'UK duo whose productions fuse reggae and dancehall vocal culture with jungle''s raw breakbeat energy through their own Serial Killaz Recordings label. Twenty Years of Serial Killaz (2025) celebrates two decades of collaboration with General Levy, Top Cat, and The Ragga Twins — high-energy live sets rooted in sound system authenticity and forward-thinking jungle production.',
 8, 7, 7, 8,  5, 7, 8,  7, 6, 5),

-- Serum — Jungle/Jump Up, UK, Dread/Digital Soundboy, Kings of the Rollers member, Ray Keith discovery
('Serum',                'Drum & Bass + Jungle', ARRAY['Jungle', 'Jump Up'],
 'British producer discovered by Ray Keith and signed exclusively to Dread imprint, building a reputation for blending vintage jungle with modern jump-up production. Digital Soundboy and Souped Up Records releases earn regular BBC Radio 1 and 1Xtra support — member of Kings of the Rollers supergroup alongside Voltage and Bladerunner, performing sold-out Ministry of Sound and Fabric shows.',
 8, 6, 7, 8,  5, 7, 8,  6, 6, 3),

-- Source Direct (Baker + Aslett) — Dark/Intelligent DnB, St Albans, Metalheadz/Science, Wipeout OST
('Source Direct',        'Drum & Bass + Jungle', ARRAY['Deep', 'Dancefloor'],
 'St Albans duo who became pivotal figures in mid-90s dark, intelligent drum and bass through Metalheadz and Science Records. Track 2097 appeared on the Wipeout 2097 PlayStation OST (1996) and Call & Response on the Blade film soundtrack — complex breakbeats, dark atmospheric samples, and abstract song structures made them influential despite a brief partnership; they returned with new material in 2021-22.',
 6, 3, 6, 7,  7, 9, 7,  5, 8, 2),

-- Spor (Jon Gooch) — Tech/Neurofunk, UK, Renegade Hardware/Sotto Voce, Feed Me alias
('Spor',                 'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Dancefloor'],
 'British producer Jon Gooch who emerged on Renegade Hardware in the mid-2000s with technically precise, high-energy drum and bass under the Spor alias while simultaneously developing electro-house project Feed Me. Aztec and Pacifica are genre touchstones — Sotto Voce imprint home for his 2024-25 return, combining intricate production craft with raw intensity that earned him a dedicated international fanbase.',
 8, 4, 8, 8,  6, 7, 9,  4, 7, 1),

-- Submorphics — Liquid/Cinematic DnB, UK, Rosebay Music/North Quarter/Spearhead, Lenzman collaborator
('Submorphics',          'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'British producer whose Rosebay Music imprint and cinematic liquid DnB style fuse funk, jazz, and soul influences into lush, atmospheric productions. Collaborations with Lenzman (Echoes of November on The North Quarter) and Satl are scene highlights — Spearhead Records and ThirtyOne Recordings credits confirm a consistent voice in deep, melodic drum and bass that rewards both headphone and dancefloor listening.',
 4, 7, 6, 8,  8, 8, 5,  7, 6, 5),

-- Survival (Steve Kielty) — Deep/Experimental DnB, London, Exit/Critical/Shogun/Audio Tactics, SCAR duo
('Survival',             'Drum & Bass + Jungle', ARRAY['Deep', 'Dancefloor'],
 'London veteran who returned to production in 2005 after studio management work, building a reputation for deep, organic drum and bass across Exit Records, Critical Music, Shogun Audio, and Metalheadz. Co-founded the experimental SCAR duo with Script in 2013 (debut album The Orkyd Project, 2016) — notable as a 2017 MasterChef UK finalist, a rare profile of creative breadth beyond music production.',
 5, 5, 6, 8,  7, 8, 7,  5, 8, 3),

-- Tantrum Desire — Dancefloor/Melodic DnB, London, Technique Recordings, ''Diversified'' 2015
('Tantrum Desire',       'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'London duo whose Technique Recordings debut album Diversified (2015) showcased commanding versatility across hard-hitting dancefloor DnB and melodic vocal-driven compositions. Euphoric melodies fused with powerful basslines — Let It Roll and Rampage festival regulars whose consistent output through the 2020s has maintained them as dependable dancefloor presences.',
 7, 7, 8, 8,  6, 7, 8,  7, 6, 2),

-- Taxman (Dominic Tindill) — Jump Up, Leicester, Playaz/TXM Recordings, synaesthesia producer
('Taxman',               'Drum & Bass + Jungle', ARRAY['Jump Up', 'Dancefloor'],
 'Leicester jump-up producer whose synaesthesia — perceiving sounds as colours — informs deeply visual, heavyweight bassline productions. Too Bad topped drum and bass charts; debut album Synthetic Visions (2013, Playaz) showed vocal depth with Diane Charlemagne collaboration. Brother of Original Sin — TXM Recordings founder and 30 Years of Playaz headliner with remixes for Chase & Status and Friction.',
 9, 6, 8, 9,  5, 6, 9,  5, 5, 1),

-- Technimatic (Rogers + Powell) — Liquid DnB, UK, Shogun Audio/SGN:LTD, BBC Radio 6Music airplay
('Technimatic',          'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'British duo Pete Rogers and Andy Powell who broke through with Preacher on Worldwide Audio before signing to Shogun Audio''s SGN:LTD in 2012. Bristol earned BBC 6Music play from Gilles Peterson — debut album Desire Paths (2014) drew praise from Mixmag and Annie Mac, with Friction support cementing their position as leading voices in emotionally resonant, melodic liquid DnB.',
 5, 7, 6, 8,  7, 8, 6,  8, 6, 3),

-- Teddy Killerz (Place2b + Paimon + Garud) — Neurofunk/Crossbreed, Russia/Ukraine, RAM/OWSLA
('Teddy Killerz',        'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Crossbreed'],
 'Russian/Ukrainian trio whose Skrillex-endorsed remix of Make It Bun Dem launched them into the international spotlight. OWSLA, RAM Records, and Bad Taste Recordings releases blend glitch, electro, and neurofunk into meticulous genre-defying productions — Nightmare Street and Monkey Kingdom are signature tracks, with Andy C, Chase & Status, and Noisia as key supporters.',
 8, 4, 9, 8,  6, 7, 9,  4, 8, 1),

-- The Prototypes (Garvey + White) — Dancefloor/Big Room DnB, UK, Viper/Get Hype, ''City of Gold'' 2015
('The Prototypes',       'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Neurofunk'],
 'UK duo whose debut album City of Gold (2015, Viper Recordings) reached the UK Top 40 Dance Chart and established them as festival-ready big-room DnB specialists. Get Hype Records founders — remixes for Pendulum and The Prodigy demonstrate respect across electronic music — relentless touring schedule across EDC Las Vegas, Let It Roll, and Liquicity events.',
 8, 6, 9, 8,  6, 7, 9,  6, 6, 1);

-- The Upbeats (Glenn + Jones) — Neurofunk/Tech DnB, Wellington/NZ, VISION/Virus/Critical, 20 years
('The Upbeats',          'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Dancefloor'],
 'Wellington duo Jeremy Glenn and Dylan Jones who built a two-decade legacy across VISION, Virus Recordings, and Critical Music, highlighted by the Noisia collaboration Dead Limit becoming a modern DnB anthem. 20 Years of The Upbeats (2024) retrospective captures explosive, high-octane production that pushed sonic boundaries — Shambhala, Outlook, Glastonbury, and Boomtown regulars.',
 8, 4, 9, 8,  6, 7, 9,  4, 7, 1);

-- ========== supabase/seed_artists_batch16.sql ==========
-- PolyJamerous: Artist seed data — Batch 16 (T-Z names)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Turno (Francesco Moliterno) — Jump Up/Dancefloor, Bedford, DnB Allstars/Crucast, UK#37 ''Rave Out''
('Turno',                'Drum & Bass + Jungle', ARRAY['Jump Up', 'Dancefloor'],
 'Bedford producer whose Rave Out (feat. Skepsis & Charlotte Plank) reached UK Singles Chart #37 in 2023. DnB Allstars Records and Crucast mainstay with a personal story of loss turned into mental health advocacy — partnered with Mind charity and the BBC We Are England documentary, channelling lived experience into high-energy dancefloor DnB with genuine emotional resonance.',
 8, 7, 8, 8,  5, 6, 8,  7, 5, 1),

-- Twisted Individual (Lee Greenaway) — Jump Up/Dancefloor, UK, Grid Recordings founder
('Twisted Individual',   'Drum & Bass + Jungle', ARRAY['Jump Up', 'Dancefloor'],
 'British producer and Grid Recordings founder whose satirical, irreverent approach to jump-up DnB — Bandwagon Blues, Heavy Metal, Rusty Sheriffs Badge — earned him cult status across two decades. A distinctive quirky flair fused with heavyweight basslines and cutting-edge production sets him apart; Labour Camp (2025) confirms sustained creative output and international festival presence.',
 8, 6, 8, 8,  4, 6, 9,  5, 6, 1),

-- Ulterior Motive (Davidson + Hepworth) — Dancefloor/Tech, Bournemouth, Metalheadz/Shogun/Guidance
('Ulterior Motive',      'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Deep'],
 'Bournemouth duo James Davidson and Greg Hepworth who released two critically acclaimed albums — The Fourth Wall (2014, Metalheadz) and The Real (2017, Shogun Audio) — before founding Guidance label in 2017 and splitting in 2021 after 18 years. Inspired by Ed Rush & Optical, their technical sophistication and dancefloor-oriented production across Fabric and Sun & Bass residencies left a lasting mark.',
 7, 4, 7, 8,  7, 8, 8,  5, 7, 2),

-- Unglued (Josh Croft) — Dancefloor/Jungle, UK, Hospital Records, ''Interplanetary Radio'' 2021
('Unglued',              'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Jungle'],
 'Hospital Records producer who broke through with Bootstrap Bill and a bootleg of High Contrast''s If We Ever before releasing debut album Interplanetary Radio (2021) — a wide-ranging fusion of jungle, jazz, funk, and hardcore influences. Annie Mac, Andy C, Danny Byrd, and Noisia support confirmed his standing; Fixate and Halogenix remixes of his material underline cross-scene respect.',
 7, 7, 7, 7,  7, 7, 8,  7, 8, 4),

-- Urbandawn (Felipe Wrechiski) — Dancefloor/Melodic DnB, Brazil, Hospital Records, Nike/Red Bull sync
('Urbandawn',            'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'Brazilian producer with classical guitar and audio engineering training whose Come Together (2019) won the Drum & Bass Arena Award for Best Track. Hospital Records and V Recordings releases blend Brazilian soul, orchestral richness, and dancefloor DnB — global sync placements for Nike, Red Bull, and Audi campaigns, and recognition from Noisia, Skrillex, and Pendulum place him at the genre''s international vanguard.',
 7, 7, 8, 8,  7, 7, 7,  7, 6, 3),

-- Villem (Andrew Wilson) — Liquid/Deep DnB, Ipswich, Metalheadz/Dispatch/DREGS Music, Mako duo
('Villem',               'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'Ipswich producer with a deep connection to rave culture whose Metalheadz, Hospital Records, and Dispatch Recordings catalogue emphasises soulful, innovative drum and bass. Playing the Changes album with McLeod on Spearhead Records is an acclaimed collaboration — DREGS Music home base for recent output including KRONOS (2026), with Mako and Zero T as frequent creative partners.',
 4, 7, 6, 8,  7, 8, 6,  7, 7, 4),

-- Voltage (Rouen Wilkins) — Jungle/Dancefloor, UK, Nice N' Decent/Souped Up, Kings of the Rollers member
('Voltage',              'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'British producer with approximately 300 releases who spans jump-up, jungle, and deeper drum and bass with analogue synths, reggae influences, and ambient soundscapes. Core member of the Kings of the Rollers supergroup alongside Serum and Bladerunner — solo album Balance Over Symmetry and collaborations with SHY FX, Chimpo, and Stevie Hyper-D illustrate the breadth of a defining modern DnB figure.',
 7, 6, 7, 8,  5, 7, 8,  6, 7, 3),

-- Wax Doctor (Paul Saunders) — Atmospheric/Melodic DnB, Slough, Metalheadz/R&S/Talkin' Loud, ex-footballer
('Wax Doctor',           'Drum & Bass + Jungle', ARRAY['Deep', 'Liquid'],
 'Slough producer and former Crystal Palace and Reading reserve footballer who became a pioneer of melodic, atmospheric drum and bass in the early 1990s. Atmospheric Funk (1995, Talkin'' Loud) and The Spectrum on Metalheadz — synthesising jungle, techno, and jazz into layered, soulful compositions with Alex Reece, establishing the template for contemporary atmospheric DnB production.',
 4, 7, 5, 7,  8, 9, 5,  7, 7, 4),

-- Xample (Gavin Harris) — Dancefloor DnB, London, RAM Records, Loadstar co-founder
('Xample',               'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'London producer who built a solo RAM Records catalogue — Lowdown, Lowlife, and Heaven & Hell established him as a scene presence — before co-founding Loadstar with Ant Miles, the duo achieving Glastonbury and Creamfields bookings and Andy C endorsement on RAM. A cornerstone of early-2010s melodic dancefloor DnB whose drumming background gives his rhythmic work a distinctive human feel.',
 7, 7, 8, 8,  6, 7, 8,  7, 6, 2),

-- Zardonic (Federico Ágreda Álvarez) — Crossbreed/Metal DnB, Venezuela, FiXT/Wool Music, masked
('Zardonic',             'Drum & Bass + Jungle', ARRAY['Crossbreed', 'Neurofunk'],
 'Venezuelan producer active since 2001 who pioneered Metal & Bass — fusing industrial metal aggression with drum and bass speed into his signature masked persona. Sound design for the video game Superhot and Arturia/Slate Digital artist presets demonstrate technical breadth; FiXT and Wool Music releases alongside Pythius collaboration Fearless represent one of bass music''s most distinctive cross-genre visions.',
 9, 2, 9, 8,  6, 7, 9,  3, 7, 1),

-- Zero T — Liquid/Soul DnB, Ireland, The North Quarter/Dispatch/Shogun Audio, hip-hop rooted
('Zero T',               'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'Irish drum and bass producer whose soulful, jazz and trip-hop influenced approach — drawing from Massive Attack, Tricky, and Portishead — produces gritty yet warm drum and bass of unusual emotional depth. The North Quarter, Dispatch, Shogun Audio, and C.I.A. credits across decades; the Off Broadway EP on Lenzman''s label and recent Fox collaboration Play Fool EP (Shogun, 2025) confirm sustained creative vitality.',
 4, 6, 6, 8,  8, 8, 6,  7, 7, 5),

-- Zero G — Jungle/Hardcore, UK, Reinforced Records, ''Ganja Man'' 1993 ragga jungle classic
('Zero G',               'Drum & Bass + Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'UK jungle producer best known for Ganja Man (1993, Reinforced Records) — one of the definitive early ragga jungle anthems — alongside Lennie De-Ice. Reinforced Records sessions and collaborations with early 1990s rave and jungle scene figures place Zero G among the first generation of producers who fused Jamaican soundsystem culture with breakbeat science.',
 8, 7, 6, 7,  4, 7, 8,  7, 7, 5),

-- Zombie Cats (Fehr + Deschamp) — Neurofunk/Tech, Germany/Australia, Eatbrain/Dispatch/Liquicity
('Zombie Cats',          'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Dancefloor'],
 'German-Australian duo formed in 2014 whose Tech Dreams album (2023) balances cinematic atmospheres with driving, tech-inflected neurofunk basslines. Eatbrain, Dispatch Recordings, and Liquicity releases — collaborations with Joe Ford and hip-hop artist The Game demonstrate unusual creative range — global touring across Europe, Asia, and Australia confirms growing international footprint.',
 7, 4, 8, 8,  6, 7, 8,  5, 7, 1),

-- Shapeshifter — Dancefloor/Live DnB, New Zealand, Kasino Records/Shogun Audio, live band
('Shapeshifter',         'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'New Zealand''s pre-eminent drum and bass live act who blend driving DnB rhythms with live musicianship — bass guitar, keyboards, and vocals alongside electronic production. Kasino Records founders whose Upbeats and Soulstice albums established them as Australasia''s most credible DnB export; regular Shogun Audio collaborators and festival headliners across Shambhala, Outlook, and Glastonbury.',
 7, 7, 7, 8,  7, 8, 7,  7, 6, 7);

-- Tim Reaper — Jungle/Footwork, London, Shall Not Fade/Lobster Theremin/Exit Records, modern jungle
('Tim Reaper',           'Drum & Bass + Jungle', ARRAY['Jungle', 'Leftfield Bass'],
 'London producer who emerged in the 2010s revival of raw, sample-based jungle and became a key figure bridging classic rave aesthetics with footwork and experimental club music. Shall Not Fade, Lobster Theremin, and Exit Records releases — intricate Amen break manipulation, heavy sub pressure, and unpredictable structural choices make him one of the most exciting voices in the current jungle renaissance.',
 7, 6, 6, 7,  5, 8, 8,  5, 9, 2);

-- ========== supabase/seed_artists_batch17.sql ==========
-- PolyJamerous: Artist seed data — Batch 17 (gap-fill: C-E names missed in earlier batches)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Cause4Concern (Optiv + Clement + StuC4C) — Neurofunk/Dark DnB, Renegade Hardware/Virus/C4C
('Cause4Concern',        'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Dancefloor'],
 'UK collective formed in 1999 — Optiv, Mark Clement, and StuC4C — who pioneered the dark and technical side of drum and bass through Renegade Hardware and Virus Recordings before founding C4C Recordings as their own creative platform. Pandemic, Headroom, and Syonide define a sound of heavy basslines, haunting atmospheres, and intricate rhythms built over two decades of relentless underground output.',
 8, 2, 8, 8,  7, 8, 8,  3, 7, 1),

-- Coco Bryce — Jungle/Experimental, Netherlands, Myor/Lobster Theremin, old-school rave revival
('Coco Bryce',           'Drum & Bass + Jungle', ARRAY['Jungle', 'Leftfield Bass'],
 'Dutch producer with over two decades in jungle and DnB who bridges vintage rave aesthetics with forward-thinking production. Myor, Lobster Theremin, and Critical Music releases — Night on Earth and Wuthering Heights are celebrated tracks — a deep vinyl culture connection and close collaborative relationship with Tim Reaper position him as a leading voice in the contemporary jungle renaissance.',
 7, 6, 6, 7,  6, 8, 8,  5, 8, 2),

-- Danny Breaks (Daniel Whiddett) — Jungle/Experimental DnB, Essex, Droppin'' Science founder, ''Far Out'' 1991
('Danny Breaks',         'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'Essex producer who charted as Sonz of a Loop Da Loop Era with Far Out (1991) before founding Droppin'' Science in 1994 and transitioning to innovative jungle and DnB production. Moving Shadow and Hospital Records credits across experimental, hip-hop-adjacent soundscapes — relocated to Cologne in 2015, continuing to push drumfunk and experimental breakbeat production from the scene''s foundational generation.',
 6, 6, 6, 7,  7, 8, 8,  5, 8, 3),

-- Dave Owen — Liquid/Soul DnB, Indianapolis/UK, Good Looking/Dispatch/Creative Source, transatlantic jazz
('Dave Owen',            'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'Indianapolis-born, UK-raised producer whose transatlantic upbringing shapes a soulful liquid DnB sound blending jazz, hip-hop, and R&B from both sides of the Atlantic. Good Looking Records, Dispatch Recordings, and Liquid V releases — supported by LTJ Bukem, Fabio, and Grooverider — with Outlook and Sunandbass festival appearances confirming genuine scene respect.',
 4, 7, 5, 8,  8, 8, 5,  8, 6, 5),

-- DJ Brockie (Ian Michael Campbell) — Jungle/Dancefloor, London, Undiluted Recordings, 30+ years
('DJ Brockie',           'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'London jungle pioneer who emerged in the early 1990s and became a household name in DnB through three decades of high-energy performances and eclectic mixing. Co-founder of the iconic Brockie & Ed Solo partnership — Undiluted Recordings home and regular BBC radio presence, bridge the classic jungle era with contemporary dancefloor drum and bass through tireless touring and community building.',
 7, 6, 6, 8,  5, 7, 8,  6, 6, 4),

-- DJ Die (Daniel Kausman) — Liquid/Soul DnB, Bristol, Full Cycle co-founder, Mercury Prize ''New Forms'' 1997
('DJ Die',               'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'Bristol producer who met Roni Size at Replay Records in 1992, co-founded Full Cycle Recordings, and contributed to the Mercury Prize-winning New Forms (1997) as part of Reprazent. Breakbeat Era project with Roni Size and Leonie Laws — Gutterfunk label founder whose soulful, groove-laden DnB carries three decades of Bristol''s unique musical heritage.',
 6, 7, 7, 8,  7, 8, 6,  7, 7, 5),

-- DJ Patife (Wagner Ribeiro de Souza) — Liquid/Soul DnB, São Paulo/Brazil, V Recordings, Roni Size collab
('DJ Patife',            'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'São Paulo drum and bass pioneer who performed with Roni Size at the Mercury Prize ceremony in 1997 and has championed Brazilian DnB internationally ever since. V Recordings mainstay — debut Sounds of Drum''n''Bass (2000) and collaborations with DJ Marky, Makoto, and Redeyes on Innerground blend soulful breakbeats with rich Brazilian musical heritage into joyous, melodic liquid DnB.',
 5, 8, 7, 8,  7, 7, 6,  7, 6, 6),

-- DJ Rap (Charissa Saverio) — Jungle/Dancefloor, UK, Propa Talent founder, ''Spiritual Aura''
('DJ Rap',               'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'Pioneering producer and DJ who broke barriers as one of electronic music''s most recognised female figures since the early 1990s. Propa Talent label founder and Suburban Base recording artist — Spiritual Aura is a timeless jungle classic while Learning Curve (1999) crossed over to mainstream audiences. Active through 2026 with consistent output and festival performances alongside mentoring emerging talent.',
 7, 6, 7, 8,  5, 7, 8,  6, 6, 4),

-- E-Z Rollers (Hurren + Banks + Richards) — Liquid/Jazz DnB, Suffolk, Moving Shadow, ''Walk This Land'' 1998
('E-Z Rollers',          'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'Suffolk collective of Jay Hurren, Alex Banks, and vocalist Kelly Richards whose Walk This Land — featured on the Lock, Stock and Two Smoking Barrels soundtrack — brought DnB to mainstream audiences in 1998. Moving Shadow and their own Intercom Recordings home — jazz, funk, and hip-hop woven into intricate drum and bass production; Short Change in GTA2 and Soundclash in Rollcage extend their cultural footprint.',
 5, 8, 6, 8,  7, 8, 6,  8, 7, 5),

-- Ed Solo — Jungle/Dancefloor, UK, Jungle Cakes founder, Brockie & Deekline collaborator
('Ed Solo',              'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'Veteran producer and DJ who emerged in the late 1990s through collaborations with DJ Brockie and Deekline, becoming a driving force in the jungle and DnB scene. Founder of Jungle Cakes label — Represent, Age of Dub, and Soundboy Killa are signature tracks — sharp drum programming, heavy basslines, and reggae-infused energy delivered at DnB Allstars and Born on Road festival events.',
 7, 6, 7, 8,  5, 7, 8,  6, 6, 4),

-- Electrosoul System (Andrey Burtaev) — Atmospheric/Progressive DnB, Moscow, Hospital/Kos.Mos.Music
('Electrosoul System',   'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'Moscow producer and Kos.Mos.Music label founder who has shaped atmospheric and progressive drum and bass since 1998, connecting Russian and regional electronic talent with UK and European audiences. Hospital Records and Spearhead credits — No One Knows and On The Run are signature tracks — a career of genre-blending exploration that encompasses DnB, house, techno, and progressive alongside consistent international touring.',
 4, 7, 6, 8,  7, 8, 5,  7, 7, 4),

-- Emperor (Leon Anscomb) — Neurofunk/Hardstep, UK, Digital Soundboy/Metalheadz/Sector7, live bass
('Emperor',              'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Dancefloor'],
 'British producer and live bassist Leon Anscomb who brings rare organic energy to neurofunk and hardstep through live bass guitar integrated into electronic production. Digital Soundboy and Metalheadz releases — Sector7 Records artist whose marriage of live musicianship with hard-hitting DnB construction gives his productions a visceral, human quality within the otherwise purely electronic neurofunk landscape.',
 8, 4, 8, 8,  6, 7, 8,  4, 7, 4),

-- Etherwood (Edward Allen) — Liquid/Melodic DnB, Lincoln, Hospital/Med School, singer-songwriter
-- [Already covered in batch 10 — skip, inserting Equinox instead]

-- Equinox — Deep/Atmospheric DnB, UK, Good Looking Records/Soul:r, late 90s classic era
('Equinox',              'Drum & Bass + Jungle', ARRAY['Deep', 'Liquid'],
 'UK drum and bass producer whose work on Good Looking Records in the late 1990s contributed to the genre''s most atmospheric and melodic tradition. A part of the intelligent DnB movement cultivated around LTJ Bukem''s stable — layered soundscapes, emotive progressions, and careful rhythmic construction that rewards patient listening over pure dancefloor impact.',
 3, 7, 5, 7,  8, 9, 4,  7, 7, 4),

-- Fixate (Declan Curran) — already in batch 10 — replacing with Fanu

-- Fanu (Janne Hatula) — Drumfunk/Experimental DnB, Finland, Lightless Recordings/Metalheadz, jazz-rooted
('Fanu',                 'Drum & Bass + Jungle', ARRAY['Jungle', 'Drumfunk'],
 'Finnish producer whose classical and jazz training produced some of the most harmonically sophisticated and rhythmically intricate drum and bass in the genre. Lightless Recordings founder and Metalheadz contributor — introspective compositions with rich chord structures, evolving drumfunk patterns, and a musicality that places him closer to jazz composition than conventional DnB, respected across three decades of output.',
 4, 6, 5, 7,  9, 8, 6,  6, 8, 5);

-- Fox (Jodie Fox) — Liquid/Soul DnB, UK, Metalheadz/Lenzman/Soul:r, vocalist and producer
('Fox',                  'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'British vocalist and producer whose collaborations with Lenzman on Metalheadz and The North Quarter have produced some of the most emotionally affecting liquid DnB of the past decade. Featured extensively on Soul:r compilations and Zero T''s Play Fool EP — her warm, jazz-inflected vocals and production instincts anchor soulful DnB with rare song-writing craft.',
 4, 8, 6, 8,  7, 8, 5,  9, 6, 6);

-- ========== supabase/seed_artists_batch18.sql ==========
-- PolyJamerous: Artist seed data — Batch 18 (gap-fill: G-K names)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- GLXY (Jonathan + Tom) — Liquid/Melodic DnB, Leicester, Shogun Audio/Hospital/Liquicity
('GLXY',                 'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'Leicester duo who met through their university DJ society and broke through with debut EP Digital Souls on Limitless Recordings (2015), earning early support from Hugh Hardie and Technimatic. Shogun Audio, Hospital Records, and Liquicity releases — soulful melodies, deep house influences, and atmospheric DnB production define a sound that earned them regular Hospitality on the Beach and Fabric slots.',
 5, 7, 7, 8,  7, 8, 6,  8, 6, 3),

-- Hugh Hardie — Liquid/Soul DnB, Cambridge, Hospital Records/Soulvent, ''Tearing Me Apart''
('Hugh Hardie',          'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'Cambridge producer who signed to Hospital Records in 2015 and built a catalogue of emotionally resonant liquid DnB through albums Colourspace, Shadows & Silhouettes, and the funk-inflected Juicebox. Groove-laden beats and smooth production — collaborators include London Elektricity, Etherwood, and vocalists Degs and Killa P — with Soulvent Records joining Hospital for recent output.',
 5, 7, 7, 8,  7, 8, 6,  8, 5, 4),

-- Hyroglifics (Matt Harris) — Experimental/Deep DnB, UK, Critical Music, grime/hip-hop crossover
('Hyroglifics',          'Drum & Bass + Jungle', ARRAY['Deep', 'Dancefloor'],
 'British producer who signed to Critical Music in 2014 and released debut album I''ll Wait, I Guess (2023) — a genre-traversing record drawing from grime, hip-hop, and ambient music alongside DnB foundations. Stone Rose EP and Cloth of Gold on Flexout Audio display constant evolution and uncompromising craft — Kasra remix collaborator and Hooversound and VISION imprint contributor.',
 6, 5, 7, 7,  7, 8, 8,  5, 8, 2),

-- IMANU (Jonathan Kievit) — Neurofunk/Cross-genre, Netherlands, Critical/Deadbeats, ''Signal'' rebranded
('IMANU',                'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Dancefloor'],
 'Dutch producer who built a reputation for dark, technical DnB as Signal on Critical Music before rebranding to IMANU in 2019 and expanding into trap, house, and techno. Debut album Unfold (2022) with Noisia and What So Not collaborations confirmed his genre-defying scope — Tomorrowland, Let It Roll, and Rampage appearances mark him as one of the most versatile voices in contemporary bass music.',
 7, 4, 8, 8,  6, 7, 9,  5, 8, 1),

-- InsideInfo (Paul Bondy) — Neurofunk/Tech DnB, Essex, Viper/RAM/Hospital, Beatport #1 ''Mushroom''
('InsideInfo',           'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Dancefloor'],
 'Essex producer who debuted on DJ Hype''s Ganja-Tek in 2006 and built a reputation for intricate sound design and high-energy dancefloor construction. Mushroom reached #1 on Beatport DNB charts; Metamorphosis was the 12th highest-selling DnB track on Beatport in 2014. Viper Recordings, RAM Records, and Hospital credits alongside Mefjus collaborations Footpath and Pulsation define his technical dancefloor peak.',
 8, 5, 8, 8,  6, 7, 9,  5, 7, 1),

-- Joe Ford (Joe Ford) — Neurofunk/Tech DnB, Harrogate, Shogun Audio/Evolution Chamber, rock-influenced
('Joe Ford',             'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Dancefloor'],
 'Harrogate producer whose technically accomplished neurofunk merges intricate drum programming and complex bass design with the energy of rock and funk influences. Shogun Audio and Evolution Chamber home — Circuits (with Jolliffe, 2021) and Torn Apart (with Zombie Cats, 2026) demonstrate a career-long commitment to bridging organic musical sensibility with the hard-edged precision of technical drum and bass.',
 7, 4, 8, 8,  6, 7, 9,  4, 7, 2),

-- Konflict (Kemal + Rob Data) — Neurofunk, Glasgow, Renegade Hardware, ''Messiah'' 1999 cornerstone
('Konflict',             'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Techstep'],
 'Glasgow duo Kemal Okan and Robert Rodgers who produced the definitive neurofunk cornerstone Messiah (1999) on Renegade Hardware — a benchmark of technical excellence and haunting atmosphere that influenced a generation of producers. Their brief but decisive catalogue of intricate, dark DnB set new production standards; Kemal continued solo while the legacy of Konflict endures as foundational to the entire neurofunk subgenre.',
 8, 2, 8, 8,  7, 8, 9,  3, 7, 1),

-- Koven (Max Rowat + Katie Boyle) — Melodic/Cinematic DnB, UK, Monstercat/UKF, ''Butterfly Effect'' 2020
('Koven',                'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'British duo of producer Max Rowat and vocalist Katie Boyle who transformed from solo project to powerful live act when Boyle joined in 2014. Debut album Butterfly Effect (2020) earned critical recognition for expansive, cinematic production fusing DnB, dubstep, and emotive vocals. Monstercat and UKF home — Rampage, Let It Roll, and Glastonbury festival performances celebrate their immersive, vocal-forward approach.',
 6, 7, 7, 7,  7, 8, 7,  8, 6, 3),

-- Loadstar (Xample + Lomax) — Dancefloor/Melodic DnB, UK, RAM Records, Glastonbury/Creamfields
-- [Already covered in batch 12 — replacing with Logan D]

-- Logan D — Jump Up/Dancefloor, UK, Chronic/Low Down Deep, Problem Central supergroup
('Logan D',              'Drum & Bass + Jungle', ARRAY['Jump Up', 'Dancefloor'],
 'UK veteran producer and DJ whose decades-long jump-up and dancefloor DnB career spans Chronic Records and Low Down Deep Recordings. Member of the Problem Central supergroup alongside Majistrate, Eksman, and Evil B — rolling basslines, raw energy, and consistent underground output mark him as a foundational figure in the UK jump-up scene respected across multiple generations.',
 8, 6, 7, 9,  4, 6, 8,  5, 5, 2),

-- Mollie Collins — Liquid/Dancefloor DnB, UK, Charge Recordings/Hospital, female DJ pioneer
('Mollie Collins',       'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'British DJ and producer who became one of the most prominent female voices in drum and bass, building a reputation for infectious dancefloor energy and versatile production that spans liquid and harder DnB. Charge Recordings and Hospital Records releases — BBC Radio 1Xtra exposure and consistent festival bookings across Hospitality in the Park and Let It Roll confirm her position at the forefront of the contemporary scene.',
 7, 7, 7, 8,  5, 7, 8,  7, 5, 2),

-- Murdock — already in batch 13 — replacing with Muffler

-- Muffler (Maxim Demin) — Neurofunk, Russia, Neofunk Records/Subtitles/Shogun, technical DnB veteran
('Muffler',              'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Dancefloor'],
 'Russian neurofunk producer whose work on Subtitles, Shogun Audio, and his own Neofunk Records label spans two decades of technical DnB production. A respected figure in the Eastern European neurofunk community — intricate sound design, complex rhythmic patterns, and dark atmospheres delivered with surgical precision across numerous imprints and collaborations.',
 7, 3, 8, 8,  7, 7, 9,  3, 7, 1),

-- Nicky Blackmarket — already in batch 13 — replacing with NC-17

-- NC-17 (Gavin Blair) — Deep/Liquid DnB, UK, Good Looking Records/Dispatch/Creative Source
('NC-17',                'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'UK producer affiliated with Good Looking Records and Creative Source whose liquid and deep DnB productions carry the atmospheric, jazz-influenced hallmarks of the intelligent DnB tradition. Dispatch Recordings releases and collaborations within the Good Looking stable — melodic depth, warm low end, and sophisticated arrangement place his work squarely within the reflective, headphone end of the drum and bass spectrum.',
 3, 7, 5, 8,  8, 9, 5,  7, 7, 4),

-- Optiv (James Morgan) — Neurofunk/Darkstep, UK, C4C/Renegade Hardware/Blackout, Cause4Concern member
('Optiv',                'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Darkstep'],
 'British producer and Cause4Concern member who has released extensively as a solo artist across Renegade Hardware, Blackout Music, and C4C Recordings. Dark, mechanistic sound design and punishing basslines define solo tracks like Nemesis — a relentless presence in the technical DnB underground with collaborations spanning Prolix, BTK, and fellow neurofunk veterans across a multi-decade career.',
 8, 2, 8, 8,  6, 7, 9,  3, 7, 1);

-- Phaction — Liquid/Dancefloor DnB, UK, Hospital Records/Critical, smooth and technical
('Phaction',             'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'British producer whose Hospital Records and Critical Music releases bridge the liquid and technical ends of drum and bass with distinctive warmth and production sophistication. Debut album Construct (Hospital, 2014) established his reputation for smooth, groove-laden DnB that balances dancefloor energy with melodic intelligence — a consistent and respected voice in the Hospital Records stable.',
 6, 7, 7, 8,  7, 7, 7,  7, 6, 3);

-- ========== supabase/seed_artists_batch19.sql ==========
-- PolyJamerous: Artist seed data — Batch 19 (gap-fill: S-W names)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- SpectraSoul (Kennett + Stevens) — Liquid DnB, UK, Shogun Audio/Critical/Metalheadz
('SpectraSoul',          'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'British duo Dave Kennett and Jack Stevens who became synonymous with forward-thinking liquid drum and bass through Shogun Audio, Critical Music, and Metalheadz releases. How We Live (2017) showcased their ability to balance emotive depth with dancefloor energy — collaborators with dBridge, Lenzman, and Calibre, and Sun & Bass, Outlook, and Let It Roll veterans with a devoted international following.',
 5, 7, 6, 8,  7, 8, 6,  8, 6, 3),

-- Stray (J) — Experimental/Halftime DnB, London, Exit Records/Critical, Ivy Lab co-founder
('Stray',                'Drum & Bass + Jungle', ARRAY['Halftime', 'Deep'],
 'London producer and Ivy Lab co-founder (alongside Sabre and Halogenix) who pioneered the halftime subgenre by merging hip-hop and trap aesthetics with drum and bass structure. Exit Records and Critical Music releases — Paradise (2015), Chatterbox EP (2014) — and the collaborative Oblique (with Sabre and Halogenix) demonstrate a minimalistic, experimental approach that has influenced a generation of forward-thinking producers.',
 5, 5, 6, 6,  7, 8, 7,  5, 9, 2),

-- Sully — Jungle/Garage, UK, Astrophonica/Uncertain Hour, Tim Reaper collaborator, modern jungle revival
('Sully',                'Drum & Bass + Jungle', ARRAY['Jungle', 'Leftfield Bass'],
 'British breakbeat producer who emerged from the grime and garage underground and became a central figure in the modern jungle resurgence through detailed sample edits, emotional chord work, and deep rave heritage. Astrophonica and Uncertain Hour releases — UHFR001 and CRFR001 collaborations with Tim Reaper, and Nights (2024) show a career of avoiding trends in favour of building lasting musical legacies.',
 6, 6, 6, 7,  7, 8, 8,  5, 8, 3),

-- T. Power (Marc Royal) — Intelligent/Experimental DnB, UK, Botchit & Scarper, ''Self Evident Truth'' 1995
('T. Power',             'Drum & Bass + Jungle', ARRAY['Deep', 'Jungle'],
 'Pioneer whose seminal album The Self Evident Truth of an Intuitive Mind (1995) is one of drum and bass''s most forward-thinking and atmospheric works. Botchit & Scarper label co-founder and collaborator with Shy FX — jazz-influenced programming, intricate polyrhythms, and genre-defying experimentation across a career that refuses conventional structures and continues to evolve through 2024.',
 4, 5, 5, 6,  9, 9, 6,  6, 9, 4),

-- Task Horizon (Matteo + Samuele) — Neurofunk, Switzerland, Eatbrain/Evolution Chamber, precision DnB
('Task Horizon',         'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Dancefloor'],
 'Swiss duo who represent their country on the global neurofunk stage through precision-engineered productions on Eatbrain and Evolution Chamber. Complex drum programming, heavyweight basslines, and technically uncompromising sound design — remixes for Ed Rush, Phace, and Rido alongside Joe Ford collaborations confirm their standing as one of European neurofunk''s most consistent and respected acts.',
 8, 3, 8, 8,  6, 7, 9,  3, 6, 1),

-- The Panacea (Mathis Mootz) — Techstep/Industrial DnB, Germany, Position Chrome/PRSPCT, ''Low Profile Darkness'' 1997
('The Panacea',          'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Techstep'],
 'German producer from Wetzlar whose debut Low Profile Darkness (1997) introduced industrial and digital hardcore aesthetics to techstep — founding Chrome Records (later Position Chrome), a cornerstone of German dark DnB. Classical choir background meets relentless sonic brutality across Twisted Designz (1998), Phoenix Metabolism (1999), and collaborations with Current Value and Limewax at the uncompromising intersection of DnB and industrial.',
 9, 2, 9, 8,  6, 7, 9,  2, 8, 1),

-- UK Apache (Abdul Wahab) — Ragga Jungle, Tooting/London, Shy FX''s ''Original Nuttah'' 1994, reggae-conscious
('UK Apache',            'Drum & Bass + Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'Tooting-born vocalist whose collaboration with Shy FX on Original Nuttah (1994) — the first jungle track in the UK Top 40 — made him an icon of the genre''s ragga fusion tradition. A deeply reggae-informed vocalist who withdrew from music after industry disillusionment before returning with spiritually-grounded conscious lyrics; Original Nuttah 25 (2019) with SHY FX and Chase & Status reaffirmed his enduring cultural significance.',
 8, 7, 7, 8,  4, 7, 8,  7, 6, 5),

-- Vibe Chemistry — Dancefloor/Melodic DnB, UK, DnB Allstars/0207 Def Jam, ''Balling'' breakout
('Vibe Chemistry',       'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'Emerging British producer whose breakout single Balling became a dancefloor anthem and whose subsequent tracks Living Like This and Shella demonstrated consistent ability to merge vocal hooks with rolling bass patterns. DnB Allstars Records and Island Records releases bridge underground credibility with mainstream appeal — collaborations with LaMeduza, Maduk, and Document One mark him as one of the scene''s most commercially promising new voices.',
 7, 7, 7, 8,  5, 7, 7,  8, 5, 2),

-- Wickaman (Andrew Parsons) — Dancefloor DnB, UK, RAM/Infrared, J Majik collab UK Top 40 ''Crazy World''
('Wickaman',             'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Jump Up'],
 'British producer who achieved mainstream recognition when Crazy World (2008) with J Majik entered the UK Top 40 at #37. RAM Records and Infrared imprint releases with collaborators Adam F, DJ Hype, and Hoodlum — versatile dancefloor DnB with crossover remixes including a Deadmau5 rework demonstrating sonic range beyond the underground.',
 7, 6, 7, 8,  5, 7, 8,  6, 6, 2),

-- Mollie Collins — already in batch 18 — replacing with Melinki

-- Melinki — Liquid/Dancefloor DnB, UK, Shogun Audio/Hospital/Metalheadz, soulful rollers
('Melinki',              'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'British producer whose soulful, groove-driven liquid DnB has earned releases across Shogun Audio, Hospital Records, and Metalheadz — the three pillars of quality DnB production. Rolling basslines, warm melodies, and precise drum programming define a sound built for both dancefloor warmth and emotional depth, supported by Andy C and Friction and delivered at major UK festivals.',
 6, 7, 7, 8,  6, 8, 7,  8, 5, 3),

-- Skepsis (Archie Ross) — Jump Up/Dancefloor, UK, Shogun/Hospital/Crucast, ''Rave Out'' Turno collab
('Skepsis',              'Drum & Bass + Jungle', ARRAY['Jump Up', 'Dancefloor'],
 'British producer who emerged through Shogun Audio and built a dancefloor following with aggressive yet melodic jump-up DnB. Rave Out with Turno and Charlotte Plank (2023, UK #37) brought him to mainstream audiences — Crucast and DnB Allstars Records home for a high-energy catalogue that spans jump-up anthems and festival-ready crossover productions.',
 8, 7, 8, 9,  5, 6, 8,  7, 5, 1),

-- Noisestorm — Crossbreed/Neurofunk, UK, Monstercat/Eatbrain, ''Crab Rave'' phenomenon
('Noisestorm',           'Drum & Bass + Jungle', ARRAY['Crossbreed', 'Neurofunk'],
 'British producer known principally for Crab Rave (2018, Monstercat) — a meme-defining internet phenomenon whose infectiously euphoric drum and bass reached global pop culture. Beneath the viral notoriety lies serious technical DnB craft across Eatbrain and Monstercat with productions like Breakout and Sentinel showing a producer comfortable with both mass appeal and underground neurofunk precision.',
 8, 7, 8, 8,  5, 7, 9,  7, 5, 1),

-- Hedex (James Sherbourne) — Dancefloor/Jump Up, UK, Ram/Viper/Monstercat, prolific anthems
-- [Already in original skip list — replacing with Hooversound label artists...]

-- Document One — Dancefloor/Liquid DnB, UK, Hospital Records/DnB Allstars, anthemic productions
('Document One',         'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'British production duo whose melodic, anthemic drum and bass earned them a home at Hospital Records and DnB Allstars — consistently uplifting, radio-friendly productions that balance accessible hooks with genuine dancefloor weight. Collaborations with Vibe Chemistry and regular festival bookings mark them as dependable crowd-pleasers at the accessible, euphoric end of the contemporary liquid-dancefloor spectrum.',
 7, 8, 7, 8,  6, 7, 7,  8, 5, 2),

-- Gerra & Stone — Liquid/Dancefloor DnB, UK, Hospital Records/Spearhead, melodic duo
('Gerra & Stone',        'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'British duo whose Hospital Records and Spearhead releases deliver melodic, groove-laden liquid DnB with warm production and anthemic hooks. A consistent presence in Hospital''s house style — polished arrangements, emotive chord progressions, and precise bass design that combines approachability with genuine production craft across Hospitality in the Park and touring festival circuits.',
 5, 8, 7, 8,  7, 7, 6,  8, 5, 3);

-- Loadstar — already in batch 12, replacing with LaMeduza

-- LaMeduza — Dancefloor/Vocal DnB, UK, DnB Allstars/Island, emerging crossover star
('LaMeduza',             'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'British producer and vocalist who emerged as one of drum and bass''s most exciting crossover prospects through DnB Allstars Records and Island Records releases. Infectious vocal-led dancefloor DnB built for both club and festival — collaborations with Vibe Chemistry and Maduk demonstrate her knack for melodic hooks and rolling basslines that appeal across the DnB and mainstream electronic divide.',
 7, 8, 7, 8,  5, 7, 7,  9, 5, 3);

-- ========== supabase/seed_artists_batch20.sql ==========
-- PolyJamerous: Artist seed data — Batch 20 (gap-fill: J-T names + Bristol/Breakbeat Era)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Jonny L (Jonathan Lisners) — Minimal/Mechanical DnB, UK, XL Recordings/Phuture Assassins, ''Piper'' 1993
('Jonny L',              'Drum & Bass + Jungle', ARRAY['Deep', 'Dancefloor'],
 'UK pioneer whose debut Piper (XL Recordings, 1993) and See Red are seminal examples of stripped-back, mechanical drum and bass that pre-dated the genre''s naming. A founding member of True Steppers UK garage project alongside Dane Bowers — his minimalist aesthetic, synthetic bass pressure, and geometric rhythmic patterns influenced a generation of producers reaching far beyond drum and bass.',
 6, 4, 6, 8,  7, 8, 8,  4, 8, 2),

-- Marvellous Cain — Ragga Jungle, UK, Suburban Base Records, ''The Hitman'' classic, Katmandu sound system
('Marvellous Cain',      'Drum & Bass + Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'Early 1990s jungle pioneer from the Katmandu sound system whose debut The Hitman (1993, Suburban Base Records) became a cornerstone of the ragga jungle movement. One of the most energetic MCs of the classic rave era — combining Jamaican vocal culture with breakbeat science at a foundational moment in the genre''s history; a defining voice of the underground before jungle became drum and bass.',
 8, 7, 6, 8,  4, 7, 8,  7, 6, 5),

-- Potential Badboy (Chris McFarlane) — Ragga DnB/Dancefloor, UK, Ganja/Playaz/Hungry Hill, 30+ years
('Potential Badboy',     'Drum & Bass + Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'Seminal UK rave and DnB figure whose 30-year career spans Ibiza Records, Sour Records, Ganja Records, Playaz, and his own Hungry Hill Records — fusing ragga, dancehall, and drum and bass into high-energy dancefloor productions. A respected DJ and producer whose longevity across multiple eras of UK rave culture demonstrates the enduring appeal of authentic reggae-influenced drum and bass.',
 8, 7, 7, 8,  4, 7, 8,  7, 6, 4),

-- Redeyes (Julien Salvi) — Liquid/Soul DnB, France/Toulouse, The North Quarter/Metalheadz/31 Records
('Redeyes',              'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'Toulouse producer whose soulful hip-hop, jazz, and R&B-influenced liquid DnB has earned him a home on Lenzman''s The North Quarter, Metalheadz, and 31 Records. Pusherman on Bingo Records and a catalogue of emotionally resonant rollers — a Lenzman collaborator whose French perspective on British liquid DnB brings warmth and subtlety to a sound rooted in black music tradition.',
 4, 7, 6, 8,  7, 8, 5,  8, 6, 5),

-- Rido (Pavel Ridosko) — Cinematic/Neurofunk, Czech Republic, Metalheadz/Blackout/Hospital, Black Sun Empire collab
('Rido',                 'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Dancefloor'],
 'Czech producer whose cinematic, atmospheric DnB spans neurofunk precision and melodic depth — Black Sun Empire collaborations Poison, Exoplanet, and Thunderbolt on Blackout Music are scene milestones. Metalheadz, Hospital Records, and Plat:form Recordings home for a career of technically accomplished, emotionally atmospheric drum and bass; Mefjus Optimum Trajectory project partner confirming his standing among European DnB''s elite.',
 7, 4, 8, 8,  7, 7, 8,  5, 7, 1),

-- skantia — Minimal/Tech DnB, Newcastle, Critical Music/RAM/Dance Macabre, ''Common Ground'' debut album
('skantia',              'Drum & Bass + Jungle', ARRAY['Deep', 'Neurofunk'],
 'Newcastle producer signed to Critical Music whose "maximal minimal" aesthetic — stripping DnB to its most essential sonic elements without sacrificing power — produced the acclaimed debut album Common Ground. RAM Records and Dance Macabre releases alongside Bou collaboration Search Me (2025) define an artist whose restrained production philosophy paradoxically generates extraordinary dancefloor impact.',
 6, 4, 6, 8,  7, 8, 7,  4, 8, 1),

-- Stakka & Skynet — Darkstep/Techstep, UK, Underfire Recordings/Renegade Hardware, ''Clockwork'' 1999
('Stakka & Skynet',      'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Darkstep'],
 'UK duo who debuted with Clockwork (1999) and co-founded Underfire Recordings as a platform for their dark, sinister techstep and neurofunk vision. Renegade Hardware releases — futuristic sound design, mechanistic rhythms, and menacing atmospheres carved from early digital production tools — a formative influence on the European darkstep movement whose catalogue remains a benchmark of late-90s technical DnB.',
 8, 2, 8, 8,  7, 8, 9,  3, 7, 1),

-- The Ragga Twins (Deman Rockers + Flinty Badman) — Ragga Jungle, London, Shut Up & Dance/Serial Killaz
('The Ragga Twins',      'Drum & Bass + Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'London siblings Deman Rockers and Flinty Badman who helped define ragga jungle through Hooligan 69 with Shut Up & Dance Records (1990) — one of the earliest fusions of Jamaican vocal culture with breakbeat production. Three decades of collaboration with Serial Killaz, Congo Natty, and Benny Page have kept them at the forefront of authentic jungle sound system culture, performing at every significant rave and jungle festival worldwide.',
 8, 7, 7, 8,  4, 7, 8,  7, 6, 5),

-- The Vanguard Project (BCee + Villem) — Liquid DnB, UK, Spearhead Records/Fokuz, mid-2010s melodic duo
('The Vanguard Project', 'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'Collaborative project between Spearhead Records founder BCee and liquid DnB craftsman Villem — a partnership producing heartfelt, melodic liquid DnB that harnesses both artists'' individual strengths. Spearhead Records and Fokuz Recordings releases bridge BCee''s label expertise with Villem''s sonic depth, creating cohesive, emotionally resonant drum and bass that rewards both dancefloor and headphone listening.',
 5, 7, 6, 8,  7, 8, 6,  8, 6, 3),

-- Tyke — Dancefloor/Jump Up, London, Playaz/Grid/Innerground, Andy C Nightlife 5 featured
('Tyke',                 'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Jump Up'],
 'London producer and graffiti artist whose dancefloor DnB earned recognition through Playaz Recordings, Grid Recordings, and Innerground Records — Andy C''s inclusion on the landmark Nightlife 5 mix CD confirmed his underground credentials. High-energy jump-up and rolling dancefloor DnB delivered with the visual flair and street-level authenticity of the London urban creative scene.',
 8, 6, 7, 8,  5, 6, 8,  5, 5, 2),

-- Dope Ammo — Dancefloor/Jungle, UK, Dope Ammo Records, BBC Radio 1, Nina Simone ''Feeling Good'' cover
('Dope Ammo',            'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Jungle'],
 'UK collective founded in 1996 whose Dope Ammo Records label has delivered energetic, melodically-tinged drum and bass across three decades — Nina Simone remake Feeling Good was featured as BBC Radio 1 Tune of the Week. Kill Bill, Roots & Culture, and Bad Ass remix with Micky Finn & Aphrodite confirmed crossover appeal; Boomtown Fair and Snowbombing festival headlining speaks to sustained dancefloor authority.',
 7, 7, 7, 8,  4, 6, 8,  7, 5, 2),

-- Deekline (Nick Annand) — Jungle/Breakbeat, UK, Rat Records/Jungle Cakes, ''I Don''t Smoke'' 1999
('Deekline',             'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'British producer and DJ who rose to fame with I Don''t Smoke (Rat Records, 1999) and became a fixture of the jungle, breakbeat, and DnB underground. Co-founder of Jungle Cakes alongside Ed Solo — Benny Page collaboration partner and Gorilla Warfare artist who blends vintage jungle aesthetics with contemporary production across a career of infectious, heavy-hitting dancefloor music.',
 7, 6, 7, 8,  5, 7, 8,  6, 6, 3),

-- Breakbeat Era (Roni Size + DJ Die + Leonie Laws) — Bristol/Breakbeat DnB, XL Recordings, ''Ultra Obscene'' 1999
('Breakbeat Era',        'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Jungle'],
 'Bristol supergroup of Roni Size, DJ Die, and vocalist Leonie Laws whose XL Recordings debut Breakbeat Era (1998) and landmark album Ultra Obscene (1999) fused drum and bass with hip-hop, reggae, and soulful electronic production at the peak of the genre''s mainstream visibility. High-energy live performances with live instrumentation and powerful vocals brought DnB to festival stages across the world.',
 7, 6, 7, 8,  7, 8, 7,  7, 7, 5),

-- Fred V & Grafix (Vahrman + Jackson) — Liquid/Vocal DnB, Exeter, Hospital Records, ''Recognise'' 2014
('Fred V & Grafix',      'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'Exeter duo Frederick Vahrman and Joshua Jackson whose Hospital Records catalogue — Recognise (2014), Oxygen (2016), Cinematic Party Music (2017) — established them as architects of uplifting vocal liquid DnB with rich melodies and driving basslines. Rudimental, Emeli Sandé, and Sub Focus remix credits alongside Glastonbury and Hospitality in the Park appearances defined a peak before disbanding in 2018; their influence on melodic DnB production endures.',
 6, 8, 7, 8,  6, 7, 7,  8, 5, 3);

-- Dillinja (Karl Francis) — Dark/Techstep, Brixton/London, Metalheadz/Valve/Cyberdyne, ''Ja Know Ya Big'' 1994

-- ========== supabase/seed_artists_batch21.sql ==========
-- PolyJamerous: Artist seed data — Batch 21 (gap-fill: C-M names)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Crissy Criss (b. 1987) — Dancefloor/Liquid DnB, London, BBC Radio 1Xtra, Hospital/Eatbrain/War on Silence
('Crissy Criss',         'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'London DJ and producer who became the youngest artist to host a show on BBC Radio 1Xtra at age 15 — stepson of legendary DJ Kenny Ken. Hospital Records, Technique Recordings, Eatbrain, and his own War on Silence label home for over two decades of high-energy drum and bass — Malux and Erb N Dub collaborations and consistent festival bookings at Let It Roll and Boomtown mark him as one of the scene''s most respected DJs.',
 7, 6, 7, 8,  5, 7, 8,  6, 6, 2),

-- DJ Dara (Darragh Guilfoyle) — Technical DnB, Brooklyn/NYC via Ireland, Breakbeat Science founder 1996
('DJ Dara',              'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Deep'],
 'Irish-born Brooklyn DJ Darragh Guilfoyle who co-founded Breakbeat Science in 1996 — the first drum and bass specialty record store in the United States — helping establish DnB in the American market. Mix albums From Here to There and Future Perfect are scene documents; Herd Killing Recordings artist whose technical precision and dynamic track selection have anchored the US DnB scene for three decades.',
 6, 5, 6, 8,  6, 7, 7,  5, 7, 3),


-- DJ Zinc (Benjamin Pettit) — Multi-genre/Jungle, London, Super Sharp Shooter 1995, UK#27 ''138 Trek'' 1999
('DJ Zinc',              'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'London pioneer Benjamin Pettit whose Super Sharp Shooter (1995) is one of the defining early drum and bass anthems — spanning hardcore roots through ragga, hardstep, and UK garage before conceptual album Faster (2004) bridged genres with progressive tempo shifts. True Playaz founding member alongside DJ Hype and Ganja Kru collaborator — 138 Trek reached UK Singles Chart #27 in 1999, confirming mainstream crossover power.',
 7, 6, 7, 8,  5, 7, 8,  6, 6, 4),

-- Dynamite MC (Dominic Smith) — Jungle MC, UK, Mercury Prize ''New Forms'' 1997 Reprazent, Andy C/LTJ Bukem
('Dynamite MC',          'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'British MC Dominic Smith who performed on Roni Size and Reprazent''s Mercury Prize-winning New Forms (1997) and contributed to In the Mode — one of DnB''s most celebrated MCs. Dynavibez, Hospital Records, and Andy C collaborator whose dynamic presence across drum and bass, jungle, and hip-hop stages — Need for Speed: Carbon soundtrack credit and Kiss FM radio career confirm a multi-platform DnB personality.',
 7, 7, 7, 8,  5, 7, 8,  7, 6, 4),

-- Flava D (Danielle Gooding) — Multi-genre/DnB, Bournemouth, Hospital Records/TQD, UK garage to DnB crossover
('Flava D',              'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'Bournemouth producer Danielle Gooding who built her reputation across UK garage, grime, and bassline through TQD supergroup (with Royal-T and DJ Q) before joining Hospital Records in 2020 and transitioning to drum and bass. Voyager, Energy, and Antidote showcase melodic dancefloor DnB with club-ready energy — Nu:Tone and SpectraSoul collaborations confirm a smooth creative integration into DnB''s premier liquid stable.',
 7, 7, 7, 8,  5, 7, 7,  7, 5, 3),

-- Future Cut (Mallett + Babalola) — Dancefloor/Tech DnB, London, Renegade Hardware/Future Cut Recordings
('Future Cut',           'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Neurofunk'],
 'London duo Darren Mallett and Tunde Babalola whose Renegade Hardware and Future Cut Recordings productions blend melodic elements with hard-hitting technical beats — Andy C, Goldie, and Roni Size supporters confirm their multi-decade standing. Whiplash, Dominator, and René LaVice/Pola & Bryson collaborations display a prolific output with both dancefloor authority and tonal sophistication.',
 7, 5, 7, 8,  6, 7, 8,  5, 6, 2),

-- Genotype (Matthew Ryan) — Dark/Jungle DnB, London, Metalheadz/Renegade Hardware/Dispatch/Exit, Loxy collab
('Genotype',             'Drum & Bass + Jungle', ARRAY['Deep', 'Jungle'],
 'London producer Matthew Ryan whose 100+ release discography across Metalheadz, Renegade Hardware, Exit Records, and Dispatch Recordings blends dark, atmospheric jungle textures with deep rolling basslines and hard-hitting rhythmic construction. Tribal Army series, Test of Time, and Loxy/Ink collaborations define a sound respected and championed by Goldie and Dillinja — a consistent underground presence for over two decades.',
 7, 3, 6, 7,  7, 8, 8,  4, 8, 2),


-- Dope Ammo entry was moved to batch 20 — replacing with Loxy

-- Shimon (Shimon Reece) — Dancefloor/Tech, Sheffield, Moving Shadow/CIA/Ram, vinyl era architect
('Shimon',               'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Neurofunk'],
 'Sheffield producer and DJ whose Moving Shadow, CIA Records, and RAM Records releases in the late 1990s and 2000s placed him among the leading architects of technical, hard-edged dancefloor DnB. Andy C RAM collaboration Nightlife vol.2 standout contributor — Red One and Move to the Rhythm are signature tracks demonstrating precise engineering and driving momentum across a prolific vinyl-era catalogue.',
 8, 4, 8, 8,  6, 7, 9,  4, 6, 1),


-- Ant Miles — Dancefloor DnB, UK, RAM Records, Loadstar co-founder
('Ant Miles',            'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'British DJ and producer who co-founded Loadstar alongside Xample — one of the most successful duos on RAM Records with Glastonbury main stage and Creamfields bookings alongside Andy C endorsement. Prior solo RAM Records output established his dancefloor instincts before the Loadstar partnership delivered consistently anthemic melodic DnB that crossed from underground credibility to festival headline status.',
 7, 7, 8, 8,  6, 7, 8,  7, 6, 2),

-- Bukem in the Jungle — Good Looking pioneer, but LTJ Bukem already in DB — insert Peshay instead
-- Peshay (Paul Pesce) — Liquid/Intelligent DnB, London, Metalheadz/Island Records, jazz-informed
('Peshay',               'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'London producer Paul Pesce whose Metalheadz and Island Records releases in the late 1990s helped define liquid and intelligent drum and bass — Miles From Home and You Got Me Rocking are foundational tracks that fuse jazz, soul, and electronic production into emotionally resonant DnB. A key figure of the Goldie/Metalheadz stable whose musicality and warmth of production influenced the entire liquid subgenre.',
 4, 7, 5, 8,  8, 9, 5,  8, 7, 4);

-- Pendulum already in DB — inserting Evol Intent instead
-- Evol Intent (Stu + Eric) — Neurofunk/Dark DnB, USA, Evol Intent Records/Citrus, US neurofunk vanguard
('Evol Intent',          'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Dancefloor'],
 'American neurofunk duo who founded Evol Intent Records and Citrus Recordings to champion dark, technically precise drum and bass in the United States. Era of Diversion album, Infected Euphoria EP, and extensive Renegade Hardware collaborations established them as the leading voice of US neurofunk — building community and infrastructure for American DnB production at a time when the genre was almost exclusively a British export.',
 8, 3, 8, 8,  6, 7, 9,  3, 7, 1);

-- ========== supabase/seed_artists_batch22.sql ==========
-- PolyJamerous: Artist seed data — Batch 22 (gap-fill: D-T names + international artists)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES






-- Alix Perez was covered in batch 21 — replacing with Conflict
-- Konflict was covered in batch 18 — replacing with Phuture Assassins
-- Phuture Assassins — Jungle/Ragga, UK, Suburban Base Records, 1992 rave era pioneers
('Phuture Assassins',    'Drum & Bass + Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'UK jungle collective from the early 1990s Suburban Base Records stable who helped define the ragga jungle sound alongside Nookie, Remarc, and the Rugged Vinyl roster. Exorcist (1992) and Roots & Future are foundational jungle tracks that captured the raw energy and reggae cross-pollination of the genre at its most experimental and vital — foundational figures in the jungle to drum and bass continuum.',
 8, 6, 6, 8,  4, 7, 8,  7, 6, 5),


-- Raw Q — Liquid/Intelligent DnB, New York, Creative Source/Soul:r/Innerground, US liquid ambassador
('Raw Q',                'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'New York producer whose Creative Source, Soul:r, and Innerground Records catalogue bridges liquid funk, intelligent drum and bass, and jazz-inflected atmospheric production — LTJ Bukem, Goldie, and Roni Size cited as influences. Caspian Moon, Summer Rain, and Earthdub demonstrate groove-driven, atmospheric liquid DnB carrying the American perspective on a predominantly British sound to an international audience.',
 3, 7, 5, 8,  8, 9, 5,  7, 7, 5),

-- Bukem in the Room — LTJ Bukem already in DB — inserting Sam Binga instead
-- Sam Binga (Samuel Thomas) — Halftime/Industrial, Bristol, Exit Records/Critical, Infinite Machine
('Sam Binga',            'Drum & Bass + Jungle', ARRAY['Halftime', 'Deep'],
 'Bristol producer Samuel Thomas whose Exit Records and Critical Music releases fuse halftime DnB with industrial music, grime, and experimental club sounds — a founding figure of the Infinite Machine collective alongside Keysound labelmates. His confrontational aesthetic, machine-heavy sound design, and unconventional drum patterns push drum and bass into genuinely alien sonic territory, drawing from club music''s fringes rather than its mainstream.',
 6, 3, 7, 6,  7, 8, 8,  4, 9, 1),

-- Dazee (Michelle Dazee) — Jungle MC, UK, Jungle Fever/Groove Connection, female pioneer 1990s
('Dazee',                'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'One of the few prominent female MCs in the 1990s jungle scene — a regular presence on the Jungle Fever rave circuit and Groove Connection events whose energetic performances helped establish the role of female voices in a male-dominated genre. A pioneer by virtue of her presence and longevity in the jungle underground, sustaining performance across multiple eras from hardcore rave through contemporary DnB festival culture.',
 7, 7, 6, 8,  4, 7, 8,  7, 6, 4),

-- Decoder (Chris Barker) — Atmospheric/Darkstep, UK, Decoder Music/Metalheadz, dark brooding DnB
('Decoder',              'Drum & Bass + Jungle', ARRAY['Deep', 'Darkstep'],
 'UK producer and Decoder Music label founder whose atmospheric, dark DnB carries the brooding, introspective weight of late-night headphone listening. Metalheadz releases and collaborations within the darker end of the liquid/deep DnB spectrum — layered synthesiser textures, precise drum programming, and a sense of controlled tension that rewards patient engagement rather than immediate dancefloor impact.',
 5, 3, 6, 7,  7, 8, 7,  5, 8, 2),

-- Teebee (Tobias) — Neurofunk/Dark, Norway/UK, Subtitles/Virus/Metalheadz, Scandinavian neurofunk pioneer
('Teebee',               'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Darkstep'],
 'Norwegian producer whose Subtitles Recordings, Virus Recordings, and Metalheadz catalogue helped put Scandinavian neurofunk on the international map — dark, technically precise DnB with a distinctly Nordic cold atmosphere. A respected figure across the late 1990s and 2000s techstep and neurofunk scene whose precise engineering and sinister atmospheric vision influenced a generation of European DnB producers.',
 8, 2, 8, 8,  7, 8, 9,  3, 7, 1),

-- Peshay was covered in batch 21 — replacing with Fierce
-- Fierce (Iain Campbell) — Darkstep/Neurofunk, UK, No U Turn/Formation Records, late 90s dark DnB
('Fierce',               'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Techstep'],
 'UK producer whose No U Turn and Formation Records releases in the late 1990s placed him at the forefront of the darkstep and emerging neurofunk movement — heavy, mechanistic basslines and unsettling atmospheres drawn from the same Virus/No U Turn aesthetic as Optical and Ed Rush. A significant contributor to the dark, technical evolution of drum and bass at the genre''s most experimentally aggressive period.',
 8, 2, 8, 8,  6, 7, 9,  3, 7, 1);


-- Klute is already above — replacing slot with MC GQ
-- MC GQ (Gavin Quick) — Jungle MC, UK, RAM Records, Andy C and Chase & Status collaborator
('MC GQ',                'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Jump Up'],
 'UK MC whose energetic, precise vocal performances alongside Andy C, Chase & Status, and DJ Hype across RAM Records events, Fabric residencies, and global festival circuits have made him one of drum and bass''s most in-demand voices. A consistent presence at Outlook, Sun & Bass, and Glastonbury DnB stages — versatile enough to complement liquid sets and jump-up anthems with equal authority across three decades of live performance.',
 8, 6, 7, 8,  4, 6, 9,  7, 5, 2);

-- ========== supabase/seed_artists_batch23.sql ==========
-- PolyJamerous: Artist seed data — Batch 23 (gap-fill: DRS, MCs, international artists)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- DRS (Delroy Pottinger) — Soul MC, Manchester, Good Looking/DnB Allstars, Calibre/LTJ Bukem collaborator
('DRS',                  'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'Manchester MC Delroy Pottinger who emerged on Good Looking Records as a key collaborator with LTJ Bukem and Calibre — Constellation, Horizons, and a decades-long catalogue of deeply personal, poetic vocal performances that transcend conventional MC styles. Mid Mic Crisis and The Blue Hour albums showcase profound lyricism and emotional vulnerability; one of drum and bass''s most respected and distinctive vocal voices across three decades.',
 4, 7, 5, 8,  7, 9, 5,  8, 7, 5),


-- Inja — Jungle/Hip-Hop MC, UK, V Recordings/Hospital/Kings of the Rollers, spoken word and DnB fusion
('Inja',                 'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'UK MC, rapper, poet, and writer whose V Recordings, Hospital Records, and Kings of the Rollers releases blend hip-hop lyricism with DnB dancefloor energy — Gunfinger Fam with Serum and Voltage, Blow Them Away, and Red Eyes demonstrate versatility across jungle and contemporary DnB. Works with educational programmes on creative writing and social advocacy — a sharp, socially conscious voice within the DnB community.',
 7, 6, 6, 8,  5, 7, 8,  7, 6, 4),


-- Navigator — Jungle MC/Sound System, London, Liondub/Jungle Cakes/Dub Shotta, reggae-roots veteran
('Navigator',            'Drum & Bass + Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'London MC and sound system veteran whose roots in early 1990s jungle and reggae culture have sustained a career across Liondub International, Jungle Cakes, and Dub Shotta spanning three decades. Benny Page, D Double E, and Harry Shotta collaboration partner whose reggae-informed lyricism and deep sound system knowledge keep him grounded in the authentic jungle tradition while maintaining a prolific contemporary release schedule.',
 7, 7, 6, 8,  4, 7, 8,  7, 6, 5),



-- Wrec (James Wrec) — Jungle/Dancefloor, UK, Chronic Records/Jungle Fever, south London rave scene veteran
('Wrec',                 'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'South London DJ and producer from the early 1990s Chronic Records and Jungle Fever rave circuit whose loyal underground following and consistent dancefloor output made him a respected figure in the classic jungle scene. A south London rave culture veteran who contributed to the dense network of artists, labels, and events that made the jungle movement a genuinely community-rooted phenomenon in its formative years.',
 7, 6, 6, 8,  4, 7, 8,  6, 6, 4),


-- Trace (Lee Ford) — Techstep/Darkstep, UK, No U Turn/Metalheadz, ''Shadow Boxing'' 1996, Rollers co-founder
('Trace',                'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Techstep'],
 'UK producer Lee Ford and Rollers co-founder whose Shadow Boxing (No U Turn, 1996) and Metalheadz releases helped architect the dark, mechanistic techstep sound. A pioneer of the intelligent-to-dark DnB transition who forged the template for late-90s technical drum and bass — No U Turn label stalwart alongside DJ Trace, Nico, and Ed Rush/Optical; his sparse, haunting productions remain touchstones of the genre''s most experimental period.',
 8, 2, 7, 8,  7, 8, 9,  3, 8, 1),

-- Random Movement already in batch 14 — replacing with Scar
-- Script (David Whiting) — Experimental/Autonomic DnB, UK, Exit Records/SCAR, dBridge collaborator
('Script',               'Drum & Bass + Jungle', ARRAY['Deep', 'Halftime'],
 'UK producer David Whiting whose Exit Records catalogue and SCAR duo (with Survival) represent some of drum and bass''s most exploratory output — The Orkyd Project (2016) blending autonomic, halftime, and experimental DnB textures. An uncompromising sonic artist who operates at the genre''s experimental margins, prioritising long-form textural exploration over conventional energy arcs; respected across the underground for genuine artistic risk-taking.',
 4, 4, 6, 6,  8, 9, 6,  4, 9, 2),

-- Spectrasoul already in batch 19 — replacing with Logistics (already batch 09) — inserting Audio instead
-- Wait — Audio was already listed in batch 01 — inserting Jubei instead

-- Harry Shotta — Ragga/Dancefloor MC, UK, Benny Page/Jungle Cakes, 2026 Battle Champion
('Harry Shotta',         'Drum & Bass + Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'UK MC and freestyle battle champion whose razor-sharp lyrical delivery, impressive syllabic speed, and Benny Page collaboration partnership have made him a formidable presence in ragga jungle and dancefloor DnB. Jungle Cakes and Serial Killaz artist — viral freestyle performances and consistent festival bookings at Boomtown and Born On Road confirm a growing reputation as one of drum and bass''s most technically accomplished and energetic live MCs.',
 8, 7, 7, 8,  4, 7, 9,  7, 5, 3),

-- SP:MC (Steve Prescott) — Jungle MC/Liquid, UK, Metalheadz/Hospital/Shogun, Etherwood and Calibre host
('SP:MC',                'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'UK MC Steve Prescott who has become one of drum and bass''s most respected hosting voices — a Metalheadz, Hospital Records, and Shogun Audio fixture who brings warmth and sophistication to liquid and deeper DnB sets. Etherwood, Calibre, and Seba collaboration partner whose understated, melody-conscious lyrical style suits the emotional register of liquid DnB far better than harder jump-up; a trusted ambassador between producers and audiences at Outlook, Sun & Bass, and Fabric.',
 5, 7, 6, 8,  6, 8, 7,  7, 6, 4);

-- Mele (Melanie Griffiths) — Dancefloor/Future Garage, UK, Hospital Records, female DJ and producer
('Mele',                 'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'British DJ, producer, and educator who came from a non-music background and built a profile through the London scene before joining Hospital Records — an advocate for women and LGBTQ+ communities in electronic music. Energetic dancefloor DnB with warm melodic sensibilities and consistent festival bookings; works as a music technology tutor alongside production career, representing the contemporary Hospital sound''s commitment to diversity and accessibility.',
 7, 7, 7, 8,  5, 7, 7,  7, 5, 2);

-- ========== supabase/seed_artists_batch24.sql ==========
-- PolyJamerous: Artist seed data — Batch 24 (gap-fill: B-P names, European artists)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES




-- Keeno — Orchestral/Liquid DnB, UK, Med School/Keeno Music, piano and string-driven DnB
('Keeno',                'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'British producer who pioneered orchestral and piano-driven liquid drum and bass through Med School Music and his own Keeno Music imprint — fusing cinematic string arrangements and classical instrumentation with rolling DnB rhythms. Life Cycle (2014 debut album), Piano Drum & Bass: Volume 1 (2025), and DRS/DJ Marky collaborations demonstrate a consistent commitment to bringing genuine musicianship into drum and bass production.',
 4, 8, 6, 8,  8, 8, 5,  9, 5, 7),





-- Noisia already in DB — inserting Nymfo (Bart Mosmans) instead

-- Artificial Intelligence (Martin Colegate) — Atmospheric/Intelligent DnB, UK, Metalheadz/Nexus 21/Warp
('Artificial Intelligence', 'Drum & Bass + Jungle', ARRAY['Deep', 'Dancefloor'],
 'UK producer Martin Colegate who released early electronic music as Nexus 21 on Warp Records before transitioning into drum and bass through Metalheadz. One of the genre''s early atmospheric DnB producers whose works bridge the ambient techno of Warp''s early catalogue with the more propulsive rhythmic architecture of 1990s intelligent drum and bass — a foundational figure in DnB''s most cerebral tradition.',
 5, 5, 6, 7,  7, 9, 6,  6, 8, 4),

-- Blame (Joseph Lyons) — already in batch 03 — replacing with Bladerunner
-- Bladerunner (Jamie Duggan) — Jungle/Dancefloor, UK, Hospital/Born On Road/Kings of the Rollers
('Bladerunner',          'Drum & Bass + Jungle', ARRAY['Jungle', 'Dancefloor'],
 'UK producer and DJ Jamie Duggan whose Hospital Records and Born On Road releases helped revive authentic jungle production energy in the contemporary scene — a core member of the Kings of the Rollers supergroup alongside Voltage and Serum. Rolling breakbeat programming, vintage sample culture, and dancefloor-ready energy delivered with an authenticity rooted in genuine appreciation for jungle''s early-90s heritage.',
 7, 6, 6, 8,  5, 7, 8,  6, 6, 3),

-- Concord Dawn already in batch 10 — replacing with Commix


-- T>I (Tina Rowe) — Liquid/Soul DnB, UK, Hospital Records, female producer and broadcaster
('T>I',                  'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'UK producer and broadcaster Tina Rowe who became one of Hospital Records'' key female voices in drum and bass — a presenter, DJ, and producer whose liquid DnB reflects the warm, melodically sophisticated Hospital aesthetic. An advocate for diversity and representation in electronic music whose combination of broadcasting reach and production credibility has helped introduce wider audiences to the genre''s more accessible and emotionally resonant end.',
 5, 7, 7, 8,  6, 7, 6,  7, 5, 3);

-- Calibre already in DB — inserting Quadrant & Iris instead
-- Quadrant & Iris — Liquid DnB, UK, Soul:r/Metalheadz/Shogun Audio, Marcus Intalex collaborators
('Quadrant & Iris',      'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'UK duo who became one of Soul:r''s most celebrated acts through their emotionally rich liquid DnB collaborations — Marcus Intalex-endorsed producers whose Metalheadz and Shogun Audio releases demonstrate an instinct for lush, groove-laden production with harmonic complexity. A consistent presence on the underground liquid scene whose melodic depth and warm bass aesthetics sit squarely in the soulful tradition pioneered by Soul:r and the Good Looking stable.',
 4, 7, 6, 8,  8, 9, 5,  8, 6, 4);

-- ========== supabase/seed_artists_batch25.sql ==========
-- PolyJamerous: Artist seed data — Batch 25 (gap-fill: C-W names, global artists)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES


-- Ill Truth — Deep/Liquid DnB, Bristol, CIA/Shogun Audio/Overview, ''Party''s Over'' 2024 LP
('Ill Truth',            'Drum & Bass + Jungle', ARRAY['Deep', 'Dancefloor'],
 'Bristol duo Haden and Jay who emerged in 2016 and built a catalogue of deep, rolling drum and bass with signature atmospheric layering and soulful dancefloor energy across CIA, Shogun Audio, and Overview Music. Party''s Over LP (2024) and DLR/Melinki collaboration partners — Boomtown and Fabric festival performers whose music bridges the liquid warmth of the Bristol scene with harder underground dancefloor demands.',
 6, 6, 7, 8,  7, 8, 7,  6, 7, 2),

-- Parly B — Jungle/Ragga MC, Doncaster, Scotch Bonnet/Liondub/Serial Killaz/Born on Road, Glastonbury
('Parly B',              'Drum & Bass + Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'Doncaster MC who emerged in 2013 with In a Competition and built a multi-genre reputation across reggae, dancehall, and jungle through Scotch Bonnet Records, Liondub International, Serial Killaz, and Born on Road. Lyrics Spree (2018 debut album) and festival appearances at Glastonbury, Boomtown, and Outlook across three continents confirm his reputation as one of DnB''s most versatile and internationally bookable vocal artists.',
 7, 7, 7, 8,  5, 7, 8,  7, 6, 5),



-- ST Files (Luca Antonioli) — Liquid/Soul DnB, Italy, Soul:R/Metalheadz/31 Records, Italian liquid pioneer
('ST Files',             'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'Italian producer Luca Antonioli who became one of Soul:R''s most celebrated artists under Marcus Intalex''s wing — bringing Italian musical sensibility to soulful, jazz-influenced liquid drum and bass through Metalheadz and 31 Records. Total Science and Marcus Intalex collaboration partner whose melodically sophisticated productions carry a warmth and harmonic richness that elevates them beyond conventional liquid DnB into genuinely soulful composition.',
 4, 7, 6, 8,  8, 9, 5,  8, 6, 5),

-- Specimen A already covered — inserting Charlotte Haining instead
-- Charlotte Haining — Vocal/Liquid DnB, UK, Shogun Audio/Hospital/BCee collab, female vocalist
('Charlotte Haining',    'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'British vocalist whose collaborations with BCee on Spearhead Records, Flava D on Hospital Records, and across the liquid DnB underground have established her as one of the genre''s most sought-after voices. Warm, emotionally expressive vocals that anchor liquid and melodic DnB productions — an artist whose vocal craft elevates the emotional register of collaborative tracks without ever overwhelming the rhythmic architecture beneath.',
 5, 8, 7, 8,  6, 8, 6,  9, 5, 5),


-- Dwarde — Dark/Experimental DnB, UK, Exit Records/Critical, atmospheric minimal DnB
('Dwarde',               'Drum & Bass + Jungle', ARRAY['Deep', 'Halftime'],
 'UK producer whose Exit Records and Critical Music releases explore the darker, more minimal edges of drum and bass — austere productions that prioritise atmosphere, texture, and tension over conventional energy dynamics. A genuinely experimental voice in the scene whose music operates in the space between DnB, techno, and dark electronica; patient, structurally adventurous work respected across the underground for uncompromising artistic intent.',
 5, 3, 6, 6,  7, 9, 7,  4, 9, 2),

-- Chase & Status already in DB via seed.sql — inserting Chimpo instead
-- Chimpo (Matthew Lambert) — Jungle/Grime, Manchester, Shall Not Fade/Exit, Northern UK bass culture
('Chimpo',               'Drum & Bass + Jungle', ARRAY['Jungle', 'Leftfield Bass'],
 'Manchester producer Matthew Lambert whose Shall Not Fade and Exit Records output fuses jungle, grime, and experimental club music from a distinctly Northern English perspective — sampling culture, breakbeat manipulation, and a playful irreverence that channels the DIY energy of Manchester''s bass music scene. A respected voice in the jungle underground whose catalogue straddles multiple bass genres without sitting comfortably in any single one.',
 7, 6, 6, 7,  5, 8, 8,  5, 8, 2),

-- Indivision (Lars van Grinsven) — Liquid/Dancefloor DnB, Netherlands, Liquicity/Fokuz, Dutch liquid star
('Indivision',           'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'Dutch producer Lars van Grinsven who became one of Liquicity Records'' most prominent artists — melodic, uplifting liquid DnB defined by euphoric chord progressions, clean production, and consistent dancefloor energy. Fokuz Recordings and international festival bookings at Liquicity Festival confirm his status as a leading figure in European melodic DnB whose approachable, radio-friendly sound bridges underground credibility with broad audience appeal.',
 6, 8, 7, 8,  6, 7, 7,  9, 5, 2),

-- Ekko & Sidetrack — Liquid/Dancefloor DnB, UK, Hospital/Shogun Audio, melodic duo
('Ekko & Sidetrack',     'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'British duo whose Hospital Records and Shogun Audio releases deliver consistently warm, melodic liquid DnB — rolling basslines, emotive chord work, and clean production across a growing catalogue that has earned them Radio 1 support and major festival bookings. A newer act building momentum at the accessible, emotionally resonant end of the contemporary liquid DnB spectrum with genuine potential for sustained scene impact.',
 6, 7, 7, 8,  6, 7, 7,  8, 5, 2),

-- Paul T & Edward Oberon — Liquid/Dancefloor DnB, UK, Hospital Records, melodic producers
('Paul T & Edward Oberon', 'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'British duo whose Hospital Records home and melodic, polished liquid DnB has earned them consistent placement across Hospitality compilations and BBC Radio 1Xtra support. Rolling basslines, warm melodies, and confident song structures — a reliable and likeable presence on the contemporary Hospital roster whose productions reflect the label''s characteristic blend of underground credibility and accessible emotional warmth.',
 5, 7, 7, 8,  6, 7, 6,  8, 5, 3);


-- Impish — Dancefloor/Liquid DnB, UK, Hospital Records/Metalheadz, emerging scene talent
('Impish',               'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'British producer signed to Hospital Records and Metalheadz whose melodic, dancefloor-oriented drum and bass has established him as a promising contemporary scene voice — well-crafted rolling productions with accessible hooks and precise sound design. Hospitality On The Beach and Hospital30 anniversary performer with an upward trajectory among Hospital''s next generation of flagship artists.',
 6, 7, 7, 8,  6, 7, 7,  7, 5, 2);

-- ========== supabase/seed_artists_batch26.sql ==========
-- PolyJamerous: Artist seed data — Batch 26 (gap-fill: C-W vocalists + DnB newcomers)
-- Sources: drumandbassuk.com profiles + supplementary research

INSERT INTO artists
    (name, genre, subgenres, dna,
     arousal, valence, timbral_brightness, rhythmic_regularity,
     harmonic_complexity, spatial_dimension, articulation,
     melodic_salience, structural_entropy, acousticness)
VALUES

-- Charlotte Plank — Indie-Pop/Jungle Vocalist, Australia/UK, Black Butter/RCA, UK#5 ''Dancing Is Healing'' 2023
('Charlotte Plank',      'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Jungle'],
 'Australian-born, UK-raised vocalist and producer whose unique fusion of indie-pop, 90s grunge, and drum and bass brought mainstream recognition through Dancing Is Healing (UK #5, 2023) with Rudimental and Vibe Chemistry. Black Butter and RCA Records artist who emerged through London''s Loud LDN collective — Skepsis, General Levy, and Congo Natty collaborations alongside early 2022 self-releases confirm a diverse cross-genre creative vision.',
 7, 8, 7, 8,  5, 7, 7,  9, 5, 4),

-- Collette Warren (Laura Pacheco Hill) — Soul Vocalist, Birmingham/London, V Recordings/Spearhead/Liquicity
('Collette Warren',      'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'Birmingham vocalist whose Motown, jazz, reggae, and 90s R&B influences bring rare emotional richness to liquid DnB vocal collaborations — Hidden Lines EP (Beatport #5, 2018), Calibre, Technimatic, and Seba collaboration partner. V Recordings, Spearhead Records, and Liquicity home — The Mic Diaries podcast host and advocate for women in drum and bass whose artistry combines genuine musical heritage with consistent scene engagement.',
 5, 7, 6, 8,  7, 8, 5,  9, 6, 6),



-- Riya (Laura Pacheco Hill) — Soul Vocalist, UK, V Recordings/Spearhead/Liquicity, DBA Award Winner 2014-15
('Riya',                 'Drum & Bass + Jungle', ARRAY['Liquid', 'Dancefloor'],
 'Vocalist who won the Drum&BassArena Award for Best Vocalist in both 2014 and 2015 — Open Page and Kismet are signature tracks that demonstrate her emotive, heartfelt vocal style within liquid DnB. V Recordings, Spearhead Records, and Liquicity releases; Lenzman, Hybrid Minds, and Technimatic collaboration partner who pioneered live DJ-plus-vocals performance formats and continues delivering soulful, harmonically rich contributions to the liquid scene.',
 4, 8, 6, 8,  7, 8, 5,  9, 5, 6),

-- SHY FX (Andre Williams) — Jungle/Ragga DnB, London, Digital Soundboy, ''Original Nuttah'' 1994 co-creator
('SHY FX',               'Drum & Bass + Jungle', ARRAY['Jungle', 'Ragga DnB'],
 'London producer Andre Williams who co-created Original Nuttah (1994) with UK Apache — the first jungle track in the UK Top 40 — making him a pioneering figure in ragga jungle''s mainstream breakthrough. Digital Soundboy label founder and Shake Ur Body producer — Dizzee Rascal, Ms. Dynamite, Plan B, and Lily Allen collaboration partner whose versatility spans jungle''s entire evolution from 1994 to Original Nuttah 25 anniversary (2019) and beyond.',
 7, 7, 7, 8,  5, 7, 8,  7, 6, 4),



-- Dillinja already in batch 20 — replacing with Sephirot
-- Skepta x DnB — actually Skepta is grime; inserting Loxy's label partner Ink instead
-- Ink (Darren Foulger) — Dark/Experimental DnB, UK, Metalheadz/Dispatch/Wheel & Deal, Genotype/Loxy partner
('Ink',                  'Drum & Bass + Jungle', ARRAY['Deep', 'Jungle'],
 'UK producer whose Metalheadz, Dispatch Recordings, and Wheel & Deal releases explore the darker, more atmospheric corners of deep drum and bass — a long-standing creative partner of Loxy and Genotype whose collaborative output represents some of the underground''s most uncompromising sonic explorations. Intricate drum construction, deep bass textures, and restrained emotional complexity define a body of work that rewards patient, attentive listening.',
 5, 3, 5, 7,  7, 9, 7,  4, 8, 2),

-- Marcus Visionary — Liquid DnB, Canada, Influence Records/Metalheadz, Canadian DnB ambassador
('Marcus Visionary',     'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'Canadian producer who built the North American liquid DnB scene through Influence Records and Metalheadz — decades of soulful, groove-laden productions that demonstrate Canadian perspectives on a predominantly British genre. A key figure in establishing DnB infrastructure outside of the UK and Europe — hosting events, supporting emerging talent, and maintaining consistent production output that connects North American and international underground communities.',
 5, 7, 6, 8,  7, 8, 6,  7, 6, 4),

-- Noisia already in DB — inserting Phentix instead
-- Phentix (Tim Jansen) — Melodic/Dancefloor DnB, Netherlands, Shogun Audio/C4C/Hospital, uplifting rollers
('Phentix',              'Drum & Bass + Jungle', ARRAY['Dancefloor', 'Liquid'],
 'Dutch producer Tim Jansen whose Shogun Audio, C4C Recordings, and Hospital Records releases deliver uplifting, melodically rich dancefloor DnB — Synergy and Lights Out are signature tracks balancing groove and energy with accessible melodic intelligence. A respected Dutch voice at the melodic end of the dancefloor spectrum whose consistent output and festival bookings at Rampage and Liquicity demonstrate broad European underground appeal.',
 6, 7, 7, 8,  6, 7, 7,  8, 5, 2),

-- Matrix & Futurebound already in batch 13 — inserting Futurebound solo context as note, using Limewax instead
-- Limewax already in batch 12 — replacing with Calyx
-- Calyx (Nick Scott) — Techstep/Dark DnB, UK, RAM Records, ''Calyx & TeeBee'' duo
('Calyx',                'Drum & Bass + Jungle', ARRAY['Neurofunk', 'Dancefloor'],
 'UK producer Nick Scott who built solo credibility on RAM Records before forming the highly successful Calyx & TeeBee duo — a consistently intense technical drum and bass producer whose solo catalogue displays the same precision and dancefloor instinct that would define the duo''s larger body of work. Heavy basslines, precise drum engineering, and a no-compromise approach to DnB production that defined the RAM Records aesthetic of the early 2010s.',
 8, 4, 8, 8,  6, 7, 8,  4, 6, 1),


-- Skeptical already done above — inserting Skepta as a crossover note? No — inserting Intelligent Manners
-- Intelligent Manners — Liquid/Soul DnB, UK, V Recordings/CIA/Creative Source, UK liquid veterans
('Intelligent Manners',  'Drum & Bass + Jungle', ARRAY['Liquid', 'Deep'],
 'UK production duo who built their reputation on V Recordings, CIA Records, and Creative Source through soulful, harmonically rich liquid DnB rooted in jazz and R&B influences. Command Strange collaboration partner and representatives of the intelligent and liquid DnB traditions — consistent underground output that carries the aesthetic DNA of the Good Looking school of atmospheric, headphone-focused drum and bass production.',
 3, 7, 5, 8,  8, 9, 4,  7, 7, 4);

-- Pola & Bryson already in batch 14 — inserting Dimension instead

