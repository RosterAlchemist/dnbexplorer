from supabase import create_client

url = "https://ocwsxudtaoarqfaildtf.supabase.co"
key = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9jd3N4dWR0YW9hcnFmYWlsZHRmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzIyOTk2OTYsImV4cCI6MjA4Nzg3NTY5Nn0.BD6Pdg7M6Q_DaZHWWEj6UwSRbfvdv2eTjatdGorwsQE"
supabase = create_client(url, key)

updates = [
    {
        "name": "ALB",
        "bio": "ALB, a liquid drum and bass producer and DJ from Leicester, UK, has become a prominent name in the genre through his soulful and emotive productions. Known for his lush melodies and intricate drum patterns, he was signed exclusively to RAM Records in 2020. His discography features notable releases like the 'Voyage' EP and 'Confession' EP, earning support from legends like Andy C and DJ Marky.",
        "dna": "RAM Records exclusive known for soulful, emotive liquid DnB. Fuses lush melodies with intricate drum patterns.",
        "subgenres": ["Liquid"]
    },
    {
        "name": "Albees",
        "bio": "Albees (Alberto Curci) is an Italian drum and bass DJ and producer with roots in the early 2000s rave scene. Transitioning from a respected DJ career into production, his sound fuses dusty vinyl tones, early funk, and 90s hip-hop influences with modern, distorted tech-bass. He has released on imprints like Grid Recordings UK, Innerground, and DeVice.",
        "dna": "Italian DJ/producer bridging 90s hip-hop and funk roots with modern, distorted tech-bass and rolling rhythms.",
        "subgenres": ["Deep", "Neurofunk"]
    },
    {
        "name": "Jake Follen",
        "bio": "Jake Follen is a versatile UK-based electronic music producer and DJ primarily associated with drum and bass. Active since the early 2010s, he is known for high-energy productions that balance intricate drum patterns with atmospheric soundscapes. A prolific contributor to major underground compilations, his work often appears on LW Recordings and Nothing But.",
        "dna": "Versatile UK producer known for high-energy DnB and atmospheric soundscapes. Prolific contributor to major underground compilations.",
        "subgenres": ["Dancefloor", "Deep"]
    },
    {
        "name": "MVRK",
        "bio": "MVRK is a prominent producer in the contemporary technical drum and bass scene. Known for a dark, minimalist, and often experimental sound, he bridges the gap between neurofunk and deep, atmospheric rollers. A key figure on Delta9 Recordings and Vandal Records, his music is characterized by intricate sound design and cinematic tension.",
        "dna": "Architect of technical, dark DnB. Blends aggressive energy with sophisticated, minimalist sound design and cinematic tension.",
        "subgenres": ["Neurofunk", "Deep"]
    },
    {
        "name": "Andrey HOT",
        "bio": "Andrey HoT is a Russian producer and DJ recognized as a powerhouse in the international Ragga Jungle community. His sound blends classic jungle breakbeats with modern production techniques and heavy reggae/dancehall influences. Known for 'choppy' breaks and deep sub-bass, he has released on labels like Moonshine Recordings and Booyaka Sound.",
        "dna": "Ragga Jungle powerhouse from Russia. Blends classic jungle breakbeats with heavy reggae/dancehall influences and deep sub-bass.",
        "subgenres": ["Jungle", "Dancefloor"]
    },
    {
        "name": "Alcemist",
        "bio": "Alcemist (Theo Bogucki) is a London-based drum and bass star who emerged as a significant figure in 2019. Known for 'sonic alchemy,' he blends UK Garage and House influences with high-energy DnB. With over 40 million streams on Spotify and massive hits like 'Stan Smith' and 'Gold,' he is a core member of the new wave of DnB crossover artists.",
        "dna": "London star (Theo Bogucki) blending UK Garage and House vibes with high-energy, soulful DnB. 40M+ streams on DnB Allstars.",
        "subgenres": ["Dancefloor", "Liquid"]
    },
    {
        "name": "Alcrani",
        "bio": "Alcrani (Carter Wolfe) is a veteran American drum and bass producer and DJ active since the late 2000s. A key figure in the Stateside DnB scene, he is known for technical precision, foreboding atmospheres, and intricate drum programming. His work has been featured on respected imprints like Vibration Records, Absys, and Ammunition Recordings.",
        "dna": "Stateside DnB veteran (Carter Wolfe) known for technical precision, foreboding atmospheres, and intricate drum programming.",
        "subgenres": ["Neurofunk", "Deep"]
    },
    {
        "name": "Alekay",
        "bio": "Alekay is a drum and bass producer and DJ specializing in liquid and atmospheric subgenres. Known for smooth, jazz-influenced arrangements and deep, ethereal soundscapes, he has maintained a consistent stream of releases on underground imprints like Liquid Drops and Theoryon Records.",
        "dna": "Liquid and atmospheric specialist known for smooth, jazz-influenced arrangements and deep, ethereal soundscapes.",
        "subgenres": ["Liquid"]
    },
    {
        "name": "ALEPH",
        "bio": "ALEPH (Kai Maynard) is an experimental electronic music producer based in Los Angeles. Known for intricate sound design and a genre-defying approach, his work fuses glitch, bass music, and cinematic soundscapes. His albums 'Ego Death' (2021) and 'Sepulchre' (2023) on Renraku have solidified his position as a leading innovator in experimental bass music.",
        "dna": "Experimental architect (Kai Maynard) fusing glitch, bass music, and cinematic sound design into an innovative, genre-defying sound.",
        "subgenres": ["Experimental", "Halftime"]
    },
    {
        "name": "Alex Physalis",
        "bio": "Alex Physalis is a Belarus-based sound designer and producer known for his technically driven approach to dark electronic music. A pioneer of the 'Neurobreaks' sound, he bridges the gap between breakbeat energy and neurofunk weight. His precision-engineered basslines and intricate sound architecture have been featured on legendary labels like Renegade Hardware.",
        "dna": "Sound design specialist and 'Neurobreaks' pioneer. Sharply engineered basslines and intricate sound architecture on Renegade Hardware.",
        "subgenres": ["Neurofunk", "Experimental"]
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
