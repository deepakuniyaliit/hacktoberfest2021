from turtle import Turtle
import random
COLORS = ["red", "orange", "yellow", "green", "blue", "purple"]
MOVE_INCREMENT = 10


class CarManager:
    def __init__(self, ):
        self.cars = []
        self.Add = 1
        self.STARTING_MOVE_DISTANCE = 5

    def add_car(self):
        for i in range(self.Add):
            color = random.choice(COLORS)
            y = random.randint(-250, 260)
            car = Turtle()
            car.shape("square")
            car.shapesize(1, 2)
            car.color(color)
            car.penup()
            car.goto(300, y)
            car.setheading(180)
            self.cars.append(car)

    def move(self):
        for car in self.cars:
            if car.xcor() < -320:
                car.hideturtle()
                self.cars.remove(car)
            else:
                car.forward(self.STARTING_MOVE_DISTANCE)

    def level_up(self):
        self.STARTING_MOVE_DISTANCE += MOVE_INCREMENT
        self.Add += 1

    def reset(self):
        self.STARTING_MOVE_DISTANCE = 5
        self.Add = 1
