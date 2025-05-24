Challenge 1
import time
from pynput.mouse import Controller

mouse = Controller()

def jiggle_mouse():
    # Get current position
    x, y = mouse.position
    print(f"Current position: ({x}, {y})")

    # Move the mouse slightly 
    mouse.position = (x + 1, y)   # Move right by 1 pixel
    print("Mouse moved right 5 pixel")
    time.sleep(0.5)
    mouse.position = (x, y)   # Move back to original position
    print("Mouse moved back to original position")

# Run every 30 seconds (you can adjust this)
while True:
    jiggle_mouse()
    time.sleep(5)

Challenge 2
import time 
import math 
import random 
from pynput.mouse  import Controller

# 🎯 Initialize mouse controller
mouse = Controller()
def get_random_figure8_params():
    A = random.randint(80,150)    # Random Width
    B = random.randint(40,100)    # Random Height
    speed = random.uniform(0.05, 0.2)  # Random speed
    return A, B, speed

def move_mouse_figure8(): 
    # 🎲 Randomly change figure-8 size & speed
    A, B, speed = get_random_figure8_params()

    # 🔀 Randomly pick a new starting position on screen
    x0, y0 = mouse.position
    x0 += random.randint(-200, 200)   # Shift starting point randomly
    y0 += random.randint(-200, 200)

    print(f"Starting posotion: ({x0}, {y0}) | Size: ({A}, {B}) | Speed: {round(speed, 3)}")
    
    steps = 100 # Smoothness of the loop
    for i in range(steps):
        t = (i/ steps) * (2 * math.pi)   # Full 360-degree cycle
        new_x = x0 + A * math.sin(t)
        new_y = y0 + B * math.sin(t) * math.cos(t)

        # 🖱️ Move the mouse to the new calculated position
        mouse.position = (int(new_x), int(new_y))

        # ⏳ Small delay for smooth movement
        time.sleep(speed)
    
    print("✅ Randomized Figure-8 movement completed!")

# 🔄 Run the function in a loop with random intervals
while True:
    move_mouse_figure8()
    
    # ⏳ Add random pauses between loops
    wait_time = random.randint(3, 10)  # Random wait between 3-10 seconds
    print(f"⏳ Waiting {wait_time} seconds before next move...")
    time.sleep(wait_time)

Challenge 3 import time
import math
import random
from pynput.mouse import Controller

# 🎯 Initialize mouse controller
mouse = Controller()

# ✅ Step 1: Ask user for input interval
while True:
    try:
        interval = float(input("⏳ Enter the time interval (in seconds) between movements: "))
        if interval <= 0:
            print("⚠️ Please enter a positive number.")
            continue
        break
    except ValueError:
        print("⚠️ Invalid input! Please enter a number.")

print(f"✅ Mouse will move every {interval} seconds.")

# 🎲 Function to get random movement parameters
def get_random_figure8_params():
    A = random.randint(80, 150)  # Random width
    B = random.randint(40, 100)  # Random height
    speed = random.uniform(0.05, 0.2)  # Random speed
    return A, B, speed

# 🖱️ Function to move mouse in a figure-8
def move_mouse_figure_8():
    A, B, speed = get_random_figure8_params()

    # 🔀 Pick a random starting position
    x0, y0 = mouse.position
    x0 += random.randint(-200, 200)
    y0 += random.randint(-200, 200)

    print(f"🎭 Moving mouse: Size({A}, {B}), Speed({round(speed, 3)})")

    steps = 100  
    for i in range(steps):
        t = (i / steps) * (2 * math.pi)  
        new_x = x0 + A * math.sin(t)
        new_y = y0 + B * math.sin(t) * math.cos(t)

        mouse.position = (int(new_x), int(new_y))
        time.sleep(speed)
    
    print("✅ Movement cycle complete!")

# 🔄 Scheduled execution loop using user-defined interval
while True:
    move_mouse_figure_8()
    print(f"⏸️ Waiting {interval} seconds before next move...")
    time.sleep(interval)

Challenge 4 
import time
import math
import random
import logging
from pynput.mouse import Controller

# 🎯 Initialize mouse controller
mouse = Controller()

# 📝 Setup logging
logging.basicConfig(
    filename="mouse_jiggler.log",  # Save logs to a file
    level=logging.INFO,  # Log only INFO level and above
    format="%(asctime)s - %(message)s",  # Include timestamp in logs
)

# ✅ Step 1: Ask user for input interval
while True:
    try:
        interval = float(input("⏳ Enter the time interval (in seconds) between movements: "))
        if interval <= 0:
            print("⚠️ Please enter a positive number.")
            continue
        break
    except ValueError:
        print("⚠️ Invalid input! Please enter a number.")

print(f"✅ Mouse will move every {interval} seconds.")

# 🎲 Function to get random movement parameters
def get_random_figure8_params():
    A = random.randint(80, 150)  # Random width
    B = random.randint(40, 100)  # Random height
    speed = random.uniform(0.05, 0.2)  # Random speed
    return A, B, speed

# 🖱️ Function to move mouse in a figure-8 and log movements
def move_mouse_figure_8():
    A, B, speed = get_random_figure8_params()

    # 🔀 Pick a random starting position
    x0, y0 = mouse.position
    x0 += random.randint(-200, 200)
    y0 += random.randint(-200, 200)

    log_message = f"🎭 Moving mouse: Start({x0}, {y0}), Size({A}, {B}), Speed({round(speed, 3)})"
    print(log_message)
    logging.info(log_message)  # 📝 Log the movement details

    steps = 100  
    for i in range(steps):
        t = (i / steps) * (2 * math.pi)  
        new_x = x0 + A * math.sin(t)
        new_y = y0 + B * math.sin(t) * math.cos(t)

        mouse.position = (int(new_x), int(new_y))
        time.sleep(speed)
    
    logging.info("✅ Movement cycle complete!")

# 🔄 Scheduled execution loop using user-defined interval
while True:
    move_mouse_figure_8()
    log_message = f"⏸️ Waiting {interval} seconds before next move..."
    print(log_message)
    logging.info(log_message)  # 📝 Log the wait time
    time.sleep(interval)2025-03-13 14:02:41,163 - 🎭 Moving mouse: Start(-3071.8828125, 828.421875), Size(135, 84), Speed(0.179)

