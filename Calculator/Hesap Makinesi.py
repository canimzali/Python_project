Menu = """
1- Topla
2- Çıkar
3- Çarp
4- Böl
5- Karesini hesapla
6- Karekök bulma
q- çıkış
"""

print(Menu)
kontrol = True
while kontrol:
    secim = input("Yapmak istediğiniz işlemi seçiniz:")

    if secim == "q":
        print("Program sonu")
        kontrol = False
    elif secim == "1":
        print("Toplama işlemi")
        print("-" * 50)
        topla1 = int(input("İlk sayıyı giriniz:"))
        topla2 = int(input("İkinci sayıyı giriniz:"))
        print(f"{topla1} + {topla2} = {topla1 + topla2}")
    elif secim == "2":
        print("Cıkarma işlemi")
        print("-" * 50)
        cıkar1 = int(input("İlk sayıyı giriniz:"))
        cıkar2 = int(input("İkinci sayıyı giriniz:"))
        print(f"{cıkar1} - {cıkar2} = {cıkar1 - cıkar2}")
    elif secim == "3":
        print("Çarpma işlemi")
        print("-" * 50)
        çarp1 = int(input("İlk sayıyı giriniz:"))
        çarp2 = int(input("İkinci sayıyı giriniz:"))
        print(f"{çarp1} * {çarp2} = {çarp1 * çarp2}")
    elif secim == "4":
        print("Bölme işlemi")
        print("-" * 50)
        böl1 = int(input("İlk sayıyı giriniz:"))
        böl2 = int(input("İkinci sayıyı giriniz:"))
        print(f"{böl1} / {böl2} = {böl1/böl2}")
    elif secim == "5":
        print("Karesini hesapla")
        print("-" * 50)
        kare = int(input("Sayıyı yazınız:"))
        print(f"{kare} saysının karesi = {kare ** 2}")

    elif secim == "6":
        print("Karekok bulma")
        print("-" * 50)
        kok = int(input("Sayıyı yazınız:"))
        print(f"{kok} sayısının karekökü = {kok ** (1/2)}")
    else:
        print("DİKKATLİ OL")
