"""my_controller controller."""

# You may need to import some classes of the controller module. Ex:
#  from controller import Robot, Motor, DistanceSensor
from controller import Robot
import math

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
]
#  ds = robot.getDistanceSensor('dsname')
#  ds.enable(timestep)

# Main loop:
# - perform simulation steps until Webots is stopping the controller
while robot.step(timestep) != -1:

    #motor_lst[0].setPosition(10.0)
    #motor_lst[0].setVelocity(1.0)
    for i in range(4):
    
        motor_lst[1 + i*3].setPosition(math.pi * -3 / 8)
        motor_lst[1 + i*3].setVelocity(1.0)
        
        motor_lst[2 + i*3].setPosition(math.pi * -1 / 8)
        motor_lst[2 + i*3].setVelocity(1.0)

# Enter here exit cleanup code.
