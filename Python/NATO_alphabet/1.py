from typing import List
import pandas

data = pandas.read_csv("./NATO_phonetic_alphabet.csv")
# print(data)

phonic_dict = {raw.letter : raw.code for (index, raw) in data.iterrows()}
# print(phonic_dict
ans = False

while not ans:
    word = input("Enter the WORD / SENTENCE  / NAME  & any other: ").upper()

    try:
        output = [phonic_dict[letter] for letter in word]
        
    except KeyError:
        print("please enter alphabets only")

    else:
        print(output)
        ans = True



