print("Welcome the Love Calculator")
name1 = input("What is your name ?")
name2= input("What is their name ?" )

combined_names= name1 + name2
lower_combined_names =combined_names.lower()

t=combined_names.count("t")
r=combined_names.count("r")
u=combined_names.count("u")
e=combined_names.count("e")

firt_digit = t + r + u + e

l=combined_names.count("l")
o=combined_names.count("o")
v=combined_names.count("v")
e=combined_names.count("e")

second_digit = l + o + v + e

score = firt_digit + second_digit
str(firt_digit) + str(second_digit)
if score <= 10 or score >= 90:
    print(f"Your score is {score}, you go together like that cola and mentos")
elif score <=40 or score >=50:
    print(f"Your score is {score}, you are alright together")
else:
    print(f"Your score is {score}.")