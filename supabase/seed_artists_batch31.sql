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
