import math

def paint_calc(height, width, cover):
    num_cals= height * width / cover
    round_up_cans = math.ceil(num_cals)
    print(f"You will need {round_up_cans} cans of pain")

exp_h = int(input("Could you write height of wall? (metre)"))
exp_w = int(input("Could you write width of wall? (metre)" ))
coverage=5
paint_calc(height=exp_h, width=exp_w, cover=coverage)