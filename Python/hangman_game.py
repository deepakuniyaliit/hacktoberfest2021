import random

words = ["fight", "water", "program", "flutter", "ballon","melons","earth","workload","supernatural","survival"]

word = random.choice(words)

turns = 5

gusses = word[0] + word[len(word) - 1] + ""

while turns > 0:
    failed = 0

    
    for char in word:
        if char in gusses:
                print(char)
        else:
            print("_")
            failed += 1

    if failed == 0:
        print("win")
        print("word is:", word)
        break

    guess = input("Enter your guess here: ")

    gusses += guess

    if guess not in word:
        turns -= 1
        print("wrong")
        print(turns, "lives left")

    if turns == 0:
        print("You Loose")