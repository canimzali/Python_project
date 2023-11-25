print("Lünaparka Hoşgeldin")
boy = int(input("Boyun kac cm?"))

if boy >= 120:
    print("Dönmedolap kullanabilirisn")
    yas = int(input("Yaşınız nedir?"))
    if yas < 12:
        print("Lütfen 20 TL ödeyiniz")

    elif yas >= 18:
        print("Lütfen 50 TL ödeyiniz")

    else:
        print("Lütfen 25 TL ödeyiniz")

    kilo= int(input("Kilonuz nedir?"))
    bmi= kilo / (boy * boy / 10000)
    if bmi > 18:
            print(f"Senin {bmi} bmi değerin uygundur ")

    else:
            print(f"Senin {bmi} bmi değerin uygun değildir")

else:
    print("Bu oyuncak sana uyğun değil")


