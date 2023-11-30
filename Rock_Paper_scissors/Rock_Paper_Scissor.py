Rock= '''              | |   
 _ __ ___   ___| | __
| '__/ _ \ / __| |/ /
| | | (_) | (__|   < 
|_|  \___/ \___|_|\_\ '''

Paper= ''' _ __   __ _ _ __   ___ _ __ 
| '_ \ / _` | '_ \ / _ \ '__|
| |_) | (_| | |_) |  __/ |   
| .__/ \__,_| .__/ \___|_|   
| |         | |              
|_|         |_|    '''

Scissors = '''   ____
  / __ \
 ( (__) |___ ___
  \________,'   """""----....____
   _______<  () dd       ____----'
  / __   __`.___-----""""
 ( (__) |
  \____/'''

games_images = [Rock , Paper, Scissors]



import random
print("Welcome To Game")

user_choice= int(input("Whic do you choose? Type 0 for Rock, 1 for Paper, 2 for Scissors\n"))

if user_choice >= 3 or user_choice < 0:
    print("You typed an invalid number, You lose!")

else:
    print(games_images[user_choice])

computer_choice= random.randint(0,2)
print("Computer chose:")
print(games_images[computer_choice])



if user_choice > computer_choice:
    print("You win!")
elif user_choice == 0 and computer_choice == 2:
    print("You win!")

elif computer_choice == 0 and user_choice == 2:
    print("You lost!")
elif user_choice == 0 and computer_choice == 1:
    print("You lost!")
elif user_choice == 1 and computer_choice == 0:
    print("You win!")
elif user_choice == 1 and computer_choice == 2:
    print("You lost")
elif user_choice == computer_choice:
    print("It's a draw!")
elif user_choice >= 3 or computer_choice < 0:
    print("You typed an invalid number, You lose!")