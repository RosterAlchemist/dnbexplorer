from supabase import create_client

url = "https://ocwsxudtaoarqfaildtf.supabase.co"
key = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9jd3N4dWR0YW9hcnFmYWlsZHRmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzIyOTk2OTYsImV4cCI6MjA4Nzg3NTY5Nn0.BD6Pdg7M6Q_DaZHWWEj6UwSRbfvdv2eTjatdGorwsQE"
supabase = create_client(url, key)

updates = [
    {
        "name": "AIRGLO",
        "bio": "AIRGLO, a Los Angeles-based drum and bass producer, has rapidly emerged as a significant figure in the American electronic music scene. Originally trained in classical piano, he has seamlessly transitioned his musical expertise into producing dynamic drum and bass tracks characterized by tight, saturated drums and crisp, fuzzy basslines. Prolific on esteemed labels such as RAM/Program, Hospital Records, Onyx, and Gorilla Warfare, his consistent quality and evolving sound have garnered support from industry heavyweights including Andy C and Sub Focus.",
        "dna": "Piano-trained technical producer delivering high-energy US DnB. Blends saturated drums with crisp, fuzzy basslines.",
        "subgenres": ["Dancefloor", "Neurofunk"]
    },
    {
        "name": "Air.K & Cephei",
        "bio": "Air.K & Cephei, an Austrian drum and bass duo from Klagenfurt, have been a formidable presence in the genre since forming in 2013. Comprised of Johannes Erker and Uwe Kesselbacher, the duo met at local drum and bass events in 2006. Their discography includes standout releases such as the 'All You Know' EP on Integral Records and tracks on Fokuz Recordings. Known for their refined, emotive, and atmospheric liquid drum and bass style, they continue to earn critical acclaim within the international community.",
        "dna": "Austrian duo crafting emotive, sophisticated liquid and melodic DnB. Known for lush atmospheric textures and deep rollers.",
        "subgenres": ["Liquid", "Deep"]
    },
    {
        "name": "Airtek",
        "bio": "Airtek is a UK-based drum and bass producer and DJ known for a style that blends technical, high-energy neurofunk with deep, atmospheric rollers. A consistent name in the underground scene, he is associated with labels like Delta9 Recordings, Program (RAM), C4C, and Korsakov Music. His sound is characterized by technical precision, clean punchy drums, and highly modulated basslines, earning him support from the likes of Noisia and Black Sun Empire.",
        "dna": "Technical UK producer blending high-energy neurofunk with deep, atmospheric rollers. Precision sound design on Delta9 and Program.",
        "subgenres": ["Neurofunk", "Deep"]
    },
    {
        "name": "A.K.A",
        "bio": "A.K.A is a London-based drum and bass artist who has been a consistent force in the scene since 2010. Known for high-energy performances and an innovative production style, he has established himself as a versatile producer capable of delivering heavy dancefloor impact alongside intricate sound design. His tracks have been featured on top radio shows and played at festivals globally, cementing his status as a reliable and exciting voice in the genre.",
        "dna": "London-based veteran known for high-energy dancefloor impact and innovative sound design. Versatile floor-focused DnB.",
        "subgenres": ["Dancefloor"]
    },
    {
        "name": "Ak:Hash",
        "bio": "Ak:Hash is the solo alias of Valentin Marthon, a French drum and bass producer based in Toulouse and a core member of the acclaimed collective Visages. Emerging from the underground scene with a deep, technical, and atmospheric sound, he is a primary architect of the 'Toulouse sound.' His work is closely associated with Alix Perez's 1985 Music, as well as labels like Flexout Audio and Dispatch Recordings.",
        "dna": "Solo alias of Visages member Valentin Marthon. Core architect of the deep, technical 'Toulouse sound' on 1985 Music.",
        "subgenres": ["Deep", "Halftime"]
    },
    {
        "name": "AKOV",
        "bio": "AKOV is a Vienna-based drum and bass producer (originally from the UK) recognized for his ferocious, high-energy 'Space Bear' sound. Breaking through in the mid-2010s on labels like Bad Taste and Eatbrain, his style fuses aggressive sound design with orchestral textures and cinematic drama. A fearless and distinct voice in contemporary neurofunk, he pushs the boundaries of the genre through his own Akov Music imprint and the Evolution Chamber collective.",
        "dna": "The 'Space Bear' of neurofunk. Ferocious, high-energy sound design influenced by heavy metal and cinematic scores.",
        "subgenres": ["Neurofunk", "Crossbreed"]
    },
    {
        "name": "Vektion",
        "bio": "Vektion (also known as Slaine) is an emerging drum and bass producer who gained significant traction in early 2025. His production style is characterized by intricate rhythms, atmospheric depth, and bruising basslines that blend deep DnB vibes with technical techstep elements. His debut 'Deathstroke' EP on BrainRave Music showcased his ability to create high-impact, atmospheric soundscapes for the modern dancefloor.",
        "dna": "Emerging voice in deep techstep. Intricate rhythms and bruising basslines designed for atmospheric, high-impact dancefloors.",
        "subgenres": ["Deep", "Neurofunk"]
    },
    {
        "name": "Akrom",
        "bio": "Marco Reggianini, better known as Akrom, is an Italian drum and bass producer from Modena. Refined through years in the rave scene, his breakthrough in 2014 led to signings on respected labels such as Blackout Music, Cause4Concern, and Evolution Chamber. Known for a deep, technical production style and hard-hitting sound design, Akrom is a highly influential force in the international neurofunk community.",
        "dna": "Italian neurofunk architect known for hard-hitting sound design and technical precision on Blackout and Evolution Chamber.",
        "subgenres": ["Neurofunk"]
    },
    {
        "name": "Aktive",
        "bio": "Aktive is a rising drum and bass star from London/Luton, known for a high-energy blend of dancefloor DnB and jump-up. With over 40 million streams on Spotify and consistent support from BBC Radio 1 (including 'Hottest Record' status), he has released on major imprints like Sony, Viper, Liquicity, and Rene LaVice's DeVice. His festival-ready sound has made him a staple at Let It Roll and Rampage.",
        "dna": "Crossover powerhouse blending dancefloor DnB with jump-up energy. 40M+ streams and consistent BBC Radio 1 support.",
        "subgenres": ["Dancefloor", "Jump Up"]
    },
    {
        "name": "Al Pack",
        "bio": "Al Pack is a London-based drum and bass artist recognized for a unique blend of soulful melodies and intricate rhythms. His sound reflects an eclectic mix of jazz, funk, and hip-hop influences, resulting in meticulously crafted liquid rollers. With a career spanning over a decade, he has established himself as a pioneer of modern soulful DnB with releases on several of the genre's most prestigious labels.",
        "dna": "Soulful liquid specialist fusing jazz, funk, and hip-hop. Meticulously crafted rollers with deep, rumbling basslines.",
        "subgenres": ["Liquid", "Deep"]
    }
]

def apply_updates():
    for item in updates:
        print(f"Updating {item['name']}...")
        response = supabase.table("artists").update({
            "bio": item["bio"],
            "dna": item["dna"],
            "subgenres": item["subgenres"]
        }).eq("name", item["name"]).execute()
    print("Done!")

if __name__ == "__main__":
    apply_updates()
