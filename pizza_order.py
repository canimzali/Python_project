print("Welcome Pizza Store")
size = input("Which do you prefer pizza size? 'S', 'M' , 'L' ")
add_pepperoni = input("Do you want to take pepperoni = 'Y' or 'N' ")
extra_cheese = input("Do you wanto take extra cheese? Y or N")


bill = 0
if size == "S":
    bill += 10
elif size == "M":
    bill += 20
else:
    bill += 30

if add_pepperoni == "Y":
  if size == "S":
    bill += 2
  elif size =="M":
      bill += 2

  else:
      bill +=2

if extra_cheese == "Y":
    if size == "S":
        bill +=3
    elif size == "M":
        bill += 3

    else:
        bill += 3


print(f" your bill is {bill} $")
