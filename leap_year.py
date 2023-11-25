year = int(input("Yılı giriniz"))
hesap = year % 4
if year % 4 ==0:
    if year % 100 ==0:
        if year % 400 ==00:
            print("Leap Year")
        else:
            print("Not Leap")
    else:
        print("Leap Year")

else:
    print("Not Leap Year")




