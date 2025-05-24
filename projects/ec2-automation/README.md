Challenge 1 
Objective
The goal of this project was to create a simple Mouse Jiggler script to periodically move the mouse cursor on a MacBook. This type of script is useful for:
* Preventing the system from entering sleep mode.
* Keeping the screen active when idle.
* Preventing inactivity timeouts in remote sessions or company laptops.
The project was also an educational exercise, meant to help me gain experience with:
* Python scripting.
* Virtual environments (venv).
* Using external libraries (pynput).
* Running scripts from the terminal.
* Debugging Python errors on macOS.
* Understanding best practices for script management.

Steps
* Created a directory called mouse-jiggler.
* Created a virtual environment inside it (venv).    # Made a How-to file under the name if venv_activation_script in my 
    * Stored the script (mouse_jiggler.py  --> this is where I placed the code) inside the project folder.
	Reason for venv
	During the initial setup, macOS blocked direct installations of packages due to its externally managed Python environment policy. To work around this and ensure a clean project environment, I created a virtual environment (venv).
    * python3 -m venv venv         # Created the virtual environment
    * source venv/bin/activate    # Activated the enviroment
    * pip install pynput               # Installed the required library
* Installed pynput in venv with pip3 install pynput
* Ran script using, python mouse_jiggler.py
* Ctrl + C to stop script 
* To deactivate venv on Mac deactivate

Challenges
* Couldn’t download pynput on my Mac so I had to create a venv 
* When the script ran, no visible output appeared, leaving uncertainty about whether it was working. So I added this to the script  print(f"Current position: ({x}, {y})")

Summary
This project served both practical and educational purposes. The primary goal was to create a Python script to automatically move the mouse cursor at regular intervals, preventing the system from going idle. Along the way, I encountered and resolved multiple challenges, including issues with macOS's restrictive Python environment, file misplacement, and understanding how to properly start and stop scripts from the terminal. These troubleshooting experiences reinforced the importance of using virtual environments to isolate dependencies, understanding file paths when working in terminal environments, and developing good habits like deactivating environments after use. Ultimately, the project strengthened my understanding of Python project structure, package management, and basic automation scripting, providing a solid foundation for future automation and DevOps work.

What’s Next? Challenge 2 

Objective:
Creating a randomized figure 8 movement
* Speed
* Figure 8 size 
* Starting position

Steps 
Same as previous project. File name figure8.py

Challenges 
Honestly this project being so closely related to the previous one was pretty straight forward 

Summary 
I worked on a Python script to make my mouse move in a figure-8 pattern, incorporating randomized movements to make the automation more dynamic. Initially, I encountered a NameError because my function name was inconsistent between its definition and where I called it. After debugging, I ensured the function name matched exactly, restarted my virtual environment, and successfully ran the script. Now, my mouse moves in a randomized figure-8 loop, with variations in size, speed, and starting position, making it feel more natural. This project helped me improve my Python automation skills, reinforcing concepts like scripting, randomness, and debugging—essential skills for my DevOps journey! 

What’s Next? Challenge 3 

Objective:
Now, I’ll modify the script to allow user input so I can set a custom interval for the mouse movement. This means:
✅ The script will ask me how often (in seconds) I want the mouse to move.
✅ It will then run at that interval, instead of looping endlessly without control.

Steps
*  Created a file called jiggler_sched.py
* Added the script to the file
* Ran the file with python jiggler_sched.py

Challenge
No challenges

Summary 
I upgraded my mouse automation script to allow scheduled execution with user input, making it more flexible and user-driven. Instead of running indefinitely, the script now asks the user for an interval in seconds, determining how often the mouse should move. I also added input validation to ensure only positive numbers are accepted. The movement follows a randomized figure-8 pattern, with varying sizes, speeds, and positions, making it feel more dynamic. By incorporating scheduled execution with time.sleep(interval), the script now operates on a user-defined schedule, improving its usability. This project helped me strengthen my Python scripting skills, particularly in automation, user input handling, and task scheduling—all valuable skills in DevOps and system automation. 

What’s Next? Challenge 4

Objective:
Now, I will modify my script to log all mouse movements to a file called mouse_jiggler.log. This will help with debugging, tracking movement patterns, and understanding how automation runs over time.

Steps
- Created a log file (mouse_jiggler.log)
- Added the script to the file 
- Ran the file

Challenge
No challenges
 
Summary
I enhanced my mouse automation script by adding a logging system that records every movement cycle, including timestamps, start positions, figure-8 sizes, speeds, and wait times. The script now saves all movement details in a log file (mouse_jiggler.log), making it easier to debug and track automation behavior over time. By allowing user-defined intervals, the script runs on a customizable schedule, ensuring flexibility. This project is highly useful in DevOps because logging is essential for monitoring automated tasks, troubleshooting issues, and ensuring scheduled jobs execute correctly. Understanding how to log events efficiently is a key DevOps skill, as logs help diagnose failures, track system activity, and optimize performance in CI/CD pipelines and infrastructure automation. 🚀

