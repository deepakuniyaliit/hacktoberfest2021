import time
from tkinter import messagebox
from turtle import Screen
from player import Player
from car_manager import CarManager
from scoreboard import Level

screen = Screen()
screen.setup(width=600, height=600)
screen.tracer(0)
player = Player()
screen.listen()
screen.onkey(key="Up", fun=player.up)

car = CarManager()
level = Level()
game_is_on = True
a = 0
while game_is_on:
    time.sleep(.1)
    car.move()
    for car_ in car.cars:
        if car_.distance(player) < 22:
            if not messagebox.askyesno("Game Over!", "Do you want to play again?"):
                game_is_on = False
                level.game_over()
            else:
                level.reset()
                car.reset()
                player.reset_position()
    if player.ycor() > 280:
        player.reset_position()
        car.level_up()
        level.update_level()
    if a % 5 == 0:
        car.add_car()
    screen.update()
    a += 1
screen.exitonclick()
