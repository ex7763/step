"""my_controller controller."""

# You may need to import some classes of the controller module. Ex:
#  from controller import Robot, Motor, DistanceSensor
from controller import Robot
from controller import Camera
from controller import Keyboard

from controller import InertialUnit
from controller import Gyro


import math
import time

# create the Robot instance.
robot = Robot()

# get the time step of the current world.
timestep = int(robot.getBasicTimeStep())

# You should insert a getDevice-like function in order to get the
# instance of a device of the robot. Something like:
motor_lst = [
    robot.getMotor('leg0_servo0'),
    robot.getMotor('leg0_servo1'),
    robot.getMotor('leg0_servo2'),
    
    robot.getMotor('leg1_servo0'),
    robot.getMotor('leg1_servo1'),
    robot.getMotor('leg1_servo2'),
    
    robot.getMotor('leg2_servo0'),
    robot.getMotor('leg2_servo1'),
    robot.getMotor('leg2_servo2'),
    
    robot.getMotor('leg3_servo0'),
    robot.getMotor('leg3_servo1'),
    robot.getMotor('leg3_servo2'),
    
    robot.getMotor('leg4_servo0'),
    robot.getMotor('leg4_servo1'),
    robot.getMotor('leg4_servo2'),
    
    robot.getMotor('leg5_servo0'),
    robot.getMotor('leg5_servo1'),
    robot.getMotor('leg5_servo2'),
]
#  ds = robot.getDistanceSensor('dsname')
#  ds.enable(timestep)

def move_forward():
    motor_lst[1 + 0*3].setPosition(math.pi * -1 / 8)
    motor_lst[1 + 0*3].setVelocity(1.0)
    
def rotate(angle):
    for i in range(6):
        motor_lst[0 + i*3].setPosition(angle)
        motor_lst[0 + i*3].setVelocity(1.0)

camera = Camera("camera_d435i")
camera.enable(15)
print(camera.getSamplingPeriod())
camera.saveImage("~/test.png", 100)

gyro = Gyro("gyro")
gyro.enable(60)

inertial_unit = InertialUnit("inertial_unit")
inertial_unit.enable(60)

# Main loop:
# - perform simulation steps until Webots is stopping the controller
def default_low_pos():
    for i in range(6):
        motor_lst[0 + i*3].setPosition(0)
        motor_lst[0 + i*3].setVelocity(1.0)
    
        motor_lst[1 + i*3].setPosition(math.pi * 1 / 8)
        motor_lst[1 + i*3].setVelocity(1.0)
        
        motor_lst[2 + i*3].setPosition(math.pi * -6 / 8)
        motor_lst[2 + i*3].setVelocity(1.0)
        
def default_high_pos():
    for i in range(6):
        motor_lst[0 + i*3].setPosition(0)
        motor_lst[0 + i*3].setVelocity(1.0)
        
        motor_lst[2 + i*3].setPosition(math.pi * -1 / 8)
        motor_lst[2 + i*3].setVelocity(1.0)
    
        motor_lst[1 + i*3].setPosition(math.pi * -3 / 8)
        motor_lst[1 + i*3].setVelocity(1.0)
        
        

default_high_pos()

keyboard = Keyboard()
keyboard.enable(60)

while robot.step(timestep) != -1:

    #motor_lst[0].setPosition(10.0)
    #motor_lst[0].setVelocity(1.0)

        
    key=keyboard.getKey()
    if (key==ord('D')):
        print('D is pressed')
        rotate(math.pi * -2 / 8)
    elif (key==ord('F')):
        print('F is pressed')
        rotate(math.pi * 2 / 8)
    elif (key==ord(' ')):
        print('Space is pressed')
        default_high_pos()
    elif (key==ord('V')):
        print('V is pressed')
        default_low_pos()
        
    print("gyro", gyro.getValues())
    print("inertial_unit", inertial_unit.getRollPitchYaw())
        
    #rotate()
    #move_forward()

# Enter here exit cleanup code.
