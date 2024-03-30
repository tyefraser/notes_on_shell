# Introduction to shell scripting
This section provides notes on Shell scripting, including what it is, how to use it, and some example scripts.
For more information, please visit the full repo here: https://github.com/tyefraser/notes_on_shell/tree/main


# Contents
[what-is-shell-scripting?](#what-is-schell-scripting?)
[how-can-you-use-it?](#how-can-you-use-it?)
[do-your-own-research](#do-your-own-research)
[example-scripts](#example-scripts)


# What is shell scripting?
Shell scripting is a method to automate tasks.

For example, it can help you run other code (e.g. Python, R, C, etc.) with arguments (inputs) in an automated way. A use case would be to automatically run a daily script using the current date as an input, rather than a user having to enter the date and run the script manually. This helps reduce errors and manual effort. Therefore, its a useful tool to learn!

Shell runs through a script, which is a plain text file containing a series of commands. These scripts are executed by the Unix/Linux shell, an interpreter that executes the commands read from a script or the standard input. A shell script can combine lengthy and repetitive sequences of commands into a single, simple command, automate the execution of tasks, and enable decision-making capabilities, looping, and branching within the script.

## Relation to Linux, Unix, and Windows
- **Unix/Linux**: Shell scripting is most closely associated with Unix and Linux systems, where it is a fundamental tool for system administration, task automation, and more. The most common shell for scripting in these environments is the Bourne-Again Shell (bash), though there are other shells like KornShell (ksh), C Shell (csh), and Z Shell (zsh).
- **Windows**: Windows has its own scripting environment, which includes the Command Prompt (batch scripting) and PowerShell. While fundamentally different in syntax and capabilities, the concept of automating tasks through scripts is similar. With the introduction of the Windows Subsystem for Linux (WSL), it's now easier to run bash scripts on Windows, bridging the gap between Unix/Linux scripting and Windows.

## Why Shell Scripting is Used
Shell scripting is used for a variety of reasons:
- **Automation**: Automating repetitive tasks (e.g., file management, system monitoring) saves time and reduces the likelihood of errors.
- **Scheduling**: Scripts can be scheduled to run at specific times using cron jobs (on Unix/Linux) or scheduled tasks (on Windows).
- **Rapid Prototyping**: Shell scripts can be quickly written and executed, making them ideal for prototyping complex operations that might later be implemented in a more robust programming language.
- **System Administration**: Many system administration tasks, from user account management to system updates, can be automated through shell scripts.
- **Portability and Availability**: Shell scripting languages are standard on Unix/Linux systems and available on Windows through WSL, making scripts highly portable across different environments.

### Different Versions of Shell Scripting
There are several different shell scripting languages, each with its own syntax and capabilities:
- **Bourne Shell (sh)**: The original shell for Unix systems. Most scripts are still compatible with newer shells.
- **Bourne-Again Shell (bash)**: An enhanced version of the Bourne Shell, widely used as the default shell in most Linux distributions.
- **KornShell (ksh)**: Offers many features not found in the original Bourne Shell, including some programming constructs.
- **C Shell (csh)** and **TC Shell (tcsh)**: Offer syntax and features closer to the C programming language, with enhancements over the original C Shell.
- **Z Shell (zsh)**: Combines features from bash, ksh, and tcsh, with additional enhancements for interactive use and theming.

Each shell scripting language offers unique features and advantages, but bash is the most widespread due to its balance of features, ease of use, and availability on most Unix/Linux systems.

Understanding the basics of shell scripting and the environments in which it operates provides a strong foundation for automating tasks, enhancing productivity, and leveraging the full power of the command line. Whether you're managing servers, developing applications, or processing data, shell scripting is a versatile and powerful skill to master.


# How to use this guide
In this guide, there will be tools and scripts provided that may or may not work on your machine. The concepts should always apply and you might just need to make some changes in order for it to run for you. To assist you with this please use other resources like:
* [ChatGPT](https://chat.openai.com)
* [Google](https://google.com)
* [Copilot](https://copilot.microsoft.com/)


# Getting Started with a Shell Interpreter

To run shell scripts, you'll first need access to a shell interpreter and a text editor to write your scripts. The specifics vary by operating system, please use the relevant section below:

* [Windows Subsystem for Linux (WSL)](###windows:-windows-subsystem-for-linux-(wsl))
* [Windows: Git Bash](###windows:-git-bash)


## Windows

### Windows: Windows Subsystem for Linux (WSL)

Windows Subsystem for Linux (WSL) allows you to run a Linux distribution alongside your Windows installation, providing access to bash and other Linux shells.

To get the Windows Subsystem for Linux (WSL) set up on your Windows machine, you'll need to follow a few steps to enable the feature and install a Linux distribution of your choice. Here’s a general guide on how to do it:

#### 1. Enable WSL on Windows

For Windows 10 (version 2004 and higher) and Windows 11:

1. **Open PowerShell as Administrator** by searching for PowerShell in the start ment and right-clicking on the application and choosing “Windows PowerShell (Admin)” or “Command Prompt (Admin)”, and agreeing to any User Account Control prompts.

2. **Run the following command to enable WSL**:
   ```powershell
   wsl --install
   ```
   *Note: Right clicking in PowerShell will paste the copied text.*

   This command will install WSL and the Ubuntu distribution by default. If you wish to install a different distribution, you can skip the automatic installation after enabling WSL.

3. **Restart your computer** if prompted.
E.g:

    ```powershell
    Windows PowerShell
    Copyright (C) Microsoft Corporation. All rights reserved.

    Install the latest PowerShell for new features and improvements! https://aka.ms/PSWindows

    PS C:\Windows\system32> wsl --install
    Installing: Virtual Machine Platform
    Virtual Machine Platform has been installed.
    Installing: Windows Subsystem for Linux
    Windows Subsystem for Linux has been installed.
    Installing: Ubuntu
    Ubuntu has been installed.
    The requested operation is successful. Changes will not be effective until the system is rebooted.
    PS C:\Windows\system32>
    ````


#### 2. Update to WSL 2 (Optional but Recommended)

To update to WSL 2, ensure you have Windows 10 version 1903 or higher for x64 systems, or Windows 10 version 2004 or higher for ARM64 systems. Windows 11 supports WSL 2 natively.

1. **Open PowerShell as Administrator** and run the following command to set WSL 2 as the default version:
   ```powershell
   wsl --set-default-version 2
   ```

2. If required, the above command might prompt you to update the WSL 2 Linux kernel. Follow the link provided in the PowerShell window to download and install the kernel update package.

#### 3. Install a Linux Distribution

This optionational as you will already have Ubuntu installed.

After enabling WSL (and optionally updating to WSL 2), you can install a Linux distribution:

1. **Open the Microsoft Store** by searching for it in the Start menu.

2. **Search for your preferred Linux distribution** (e.g., Ubuntu, Debian, Fedora, etc.).

3. **Select the distribution** and click “Get” or “Install” to download and install it.

4. **Launch the installed Linux distribution** from the Start menu. The first launch will take some time as it completes the installation and prompts you to create a user account and password.

#### 4. Use WSL

After installation, you can start your Linux distribution anytime by opening it from the Start menu, just like any other application.

<img src="images\wsl-icon.png" alt="WSL icon" width="75"/> WSL Application


You can also use the `wsl` command in PowerShell or Command Prompt to interact with your Linux distributions, such as opening a specific distribution, running Linux commands directly from Windows, and setting various options.

Keep in mind that specific steps might slightly vary depending on your Windows version and updates. Microsoft provides detailed documentation and troubleshooting guides if you encounter any issues during the installation process.


### Windows: Git Bash

Git Bash provides a bash emulation used to run Git from the command line as well as to execute bash scripts. Download and install Git for Windows to get started with Git Bash.

### Windows: PowerShell/CMD
PowerShell/CMD: While not Unix-based shells, PowerShell and CMD can execute batch scripts and PowerShell scripts, respectively. These come pre-installed on Windows.

### Windows: Example Script (Git Bash or WSL)

````shell
echo hello world!
````

This will print `hello world!` on the screen.

<img src="images\wsl echo.png" alt="WSL icon" width="300"/>

To use a script file:

1. Open Git Bash or your WSL terminal.
2. Use a text editor like `nano` or `vi` to create a script. For example, create a file named `hello.sh`:
   ```bash
   #!/bin/bash
   echo "Hello, World!"
   ```

*SELF RESEARCH:* Research how to edit and save a doc using nano, e.g: https://www.freecodecamp.org/news/how-to-save-and-exit-nano-in-terminal-nano-quit-command/

3. Make the script executable: `chmod +x hello.sh`.
4. Run the script: `./hello.sh`.


## macOS

### macOS: Terminal
macOS comes with Terminal, a built-in application that provides access to the Unix part of macOS, including bash (or zsh in newer versions). You do not need to install anything extra.

### macOS: Homebrew
While not necessary for basic scripting, Homebrew is a package manager for macOS that can install additional Unix tools and software. Install Homebrew by following instructions on the [Homebrew website](https://brew.sh).

### macOS: Example Script (Terminal)
1. Open the Terminal application.
2. Create a new file named `hello.sh` with a text editor, for example:
   ```bash
   #!/bin/zsh
   echo "Hello, World!"
   ```
*SELF RESEARCH:* Research how to edit and save a doc using nano, e.g: https://www.freecodecamp.org/news/how-to-save-and-exit-nano-in-terminal-nano-quit-command/
3. Make the script executable: `chmod +x hello.sh`.
4. Run the script: `./hello.sh`.

## Linux

All Linux distributions come with a terminal application that provides access to the shell. Common shells include bash, zsh, and others.

Use built-in text editors like `nano`, `gedit` (for GNOME), or `kate` (for KDE) to write your scripts.

**Example Script (Terminal)**
1. Open your terminal application.
2. Use a text editor to create a file named `hello.sh`:
   ```bash
   #!/bin/bash
   echo "Hello, World!"
   ```
*SELF RESEARCH:* Research how to edit and save a doc using nano, e.g: https://www.freecodecamp.org/news/how-to-save-and-exit-nano-in-terminal-nano-quit-command/
3. Make the script executable: `chmod +x hello.sh`.
4. Run the script: `./hello.sh`.

## Summary
Running shell scripts is straightforward once you have access to a Unix-like environment or terminal application. On Windows, WSL and Git Bash provide powerful Unix-like environments. macOS and Linux systems are inherently Unix-based and come with everything you need to get started with shell scripting. Remember, the first step is creating your script with a text editor, marking it as executable, and then running it from your shell. Happy scripting!


# Basics and why you should keep reading

Before getting into more technical examples and tasks in the later sections, this section will first show you some examples of practical use-cases for shell scripts. Here will display some shell scripts in action, for example getting a list of files, or directories (aka folders) in a specified location, how to run R or Python using shell.

## Basic Navigation
Navigating your system's file structure from the terminal is a fundamental skill for using shell scripts effectively. Here are some basic commands:

- `pwd`: Prints the current directory path.
- `ls`: Lists files and directories in the current directory.
- `mkdir shell_intro`: Makes a directory (folder) called shell_intro.
- `cd shell_intro`: Changes the current directory to `shell_intro`.
- `echo "message"`: Prints `message` to the screen.
- `cd ..`: Goes back a directory.

<img src="images\WSL-basic-commands.png" alt="WSL Basic Commands image" width="300"/>

Notes:
* These commands should allows you to explore folders and files within your system
* If you have a new version of Linux installed you might not have any files or folders (e.g. in above screenshot). If you're in linux or macOS you should be able to look through your existing folders.

## Gibhub repo
In order to run the code from this repo in your linux environment, you will need to load the repo. To get your repository you'll use Git, the distributed version control system. This process involves cloning the repository from GitHub to your local machine within the WSL environment. Here's how to do it step-by-step:

### Step 1: Install Git (if not already installed)
First, ensure that Git is installed in your distribution. Open your terminal and run the following command to install Git:

For Debian/Ubuntu-based distributions:
````bash
sudo apt update && sudo apt install git -y
````

For Fedora and similar:
````bash
sudo dnf install git -y
````

For openSUSE:
````bash
sudo zypper install git -y
````

### Step 2: Configure Git (if not already configured)
Before cloning your repository, make sure Git is configured with your username and email. This is important for commit history. Run these commands, replacing `"Your Name"` and `"your_email@example.com"` with your GitHub username and email address:

````bash
git config --global user.name "Your Name"
git config --global user.email "your_email@example.com"
````

### Step 3: Clone Your GitHub Repository
1. **Navigate to the GitHub Repository**: Go to the GitHub page for the repository you want to clone. Click the "Code" button and copy the URL for the repository. This URL is what you'll use to clone the repository.

2. **Clone the Repository**: In your terminal, navigate to the directory where you want to clone the repository. Use the `git clone` command followed by the URL you copied:

````bash
git clone https://github.com/tyefraser/notes_on_shell.git
````

3. **Access the Repository Directory**: After cloning, a new directory will be created with the same name as the repository. Use `cd` to change into that directory:

````bash
cd notes_on_shell
````

You now have a copy of your GitHub repository on your local machine, accessible through WSL. You can start working on your project within this directory.

### Step 4: Working with Your Repository
- **Pull Changes**: If the repository is updated on GitHub, you can pull the latest changes with `git pull`.
- **Make Changes**: After making changes to your files, use `git add .` to stage changes, `git commit -m "Commit message"` to commit them, and `git push` to push them back to GitHub.

This process will allow you to seamlessly work with repositories hosted on GitHub using the Linux and Linux-like environments.


## Running Python and R Code from the Terminal
To run Python or R code directly from the terminal, you'll first need to ensure Python and R are installed on your system.

**Python**

We will mainly use python below, so it will be good to ensure you have this installed. You can check by running `python` or `python3` in the terminal, if python doesnt exist it will display an error.

To install python run:
````shell
sudo apt update
sudo apt install python3 python3-pip
````

You should now be able use `python` or `python3` and Python will run (you should see `>>>`). To get back to the normal terminal run `exit()`. You can play around in Python to see how it works in the terminal if you like. e.g. `a = 5`, `print(a)`, to print a.

*SELF RESEARCH*: If the above doesn't work, do some additional research to get python running on your machine.

**Rscript**
You might also want to run R. Similarly, you can write `Rscript` to run `R`. If it is not available please run `sudo apt install r-base-core` to install it.

To run R within the terminal type `R` and hit enter. To exit this you can type `quit()`. You can play around in R to see how it works in the terminal if you like. e.g. `a <- 5`, `print(a)`, to print a.

The examples in this guide will use python, however you should be able to apply the same principals to R code.

*SELF RESEARCH*: If the above doesn't work, do some additional research to get R running on your machine.

## Running Simple Python Code Through a Shell Script
To demonstrate running Python code through a shell script, we'll create a simple Python script and then write a shell script to execute it.

1. **Python Script** (`hello.py`): This script will simply print "Hello World!".

````python
# Save this code in a file named hello.py
print("Hello World!")
````

To do this in the terminal the following steps should work
* type `nano` to enter the nano editor
* enter in the python code (`print("Hello World!")`)
* save the document by typing `ctrl+o`, name the document `hello.py`
* exit nano by typing `ctrl+x`
* type `ls` and you should see your python code file
* type `python3 hello.py` and your code will run and print "Hello World!"


2. **Shell Script** (`run_python.sh`): This script will run the `hello.py` Python script.

````bash
#!/bin/bash
# This script runs a Python script named hello.py

python hello.py
````

To make this work, follow these steps:

1. Save the Python code in a file named `hello.py` within the Python folder.
2. Write the shell script in a file named `run_python.sh`.
3. Make the shell script executable with `chmod +x run_python.sh`.
4. Run the shell script using `./run_python.sh`.


## Running Python Code with arguments Through a Shell Script


1. **Create the Python Script**
The Python script `hello_name.py` has been created and saved. You can download it using the link below:

[Download hello_name.py](\python\hello_name.py)


2. **Create the Shell Script**
Use a text editor to create a new file named `run_hello_name.sh` and paste the following script:

[Download run_hello_name.sh](\shell\run_hello_name.sh)

````bash
#!/bin/bash
# This script runs a Python script named hello.py

python /../python/hello_name.py John
````

3. **Make the Script Executable**:
   Open a terminal where the `run_hello_name.sh` file is saved and run:
   ````bash
   chmod +x run_hello_name.sh
   ````

Note: to get to the folder with the `run_hello_name.sh` file you will have to cd into it. Remember, you can explore the folders using `cd <folder name>` to enter a folder, `cd ..` to get out of a folder, and `ls` to list the contents of a folder. You should end up in a folder like `~/notes_on_shell/intro_to_shell/shell`, which you can get to directly using `cd ~/notes_on_shell/intro_to_shell/shell`. Then use `ls` to check the files in that folder and you should see the `run_hello_main.sh` file.

4. **Run the Shell Script**:
   Still in the terminal, execute the script by running:
   ```bash
   ./run_hello_name.sh
   ```

This shell script will execute the Python script, displaying "You entered: John" on your terminal. This process demonstrates the integration of shell scripting with Python, showcasing how shell scripts can be used to automate and run other programs, including Python and R scripts.

## Summary
You have now seen how shell scripting can be used to explore folders, files, and run code. You can play around with the code if you like to run different or updated code (for example change 'John' to your name in the shell script). Although what we have done may not seem like much, it is the basis for much more advanced code and automation. With a little bit more research you should be able to run a lot more complex code. For example you could create dynamic shell script variables (e.g. getting the current date to use as a function argument) and schedule a shell script to run daily, weekly, monthly etc. to automate repetitive tasks.

In the next sections, we will go over some more of the core knowledge that will make you a decent shell programmer. This will open the doors to:
* using linux based systems (think AWS and cloud computing + automation)
* scheduling scripts
* simplifying command line arguments (automate the structure of function arguments so you don't have to enter them every time)
* ensure that multiple tasks get executed (9e.g. if a python script fails, shell will still run the next script rather than stop all computations)
* logging


# Getting Started with Shell Scripts
- **The Shebang (`#!`)**: Start with explaining the shebang line (`#!/bin/bash`), which specifies the interpreter.
- **Writing Your First Script**: Provide a simple "Hello, World!" example.
  ```bash
  #!/bin/bash
  echo "Hello, World!"
  ```
- **Making Scripts Executable**: Teach how to give execution permissions using `chmod +x scriptname.sh`.

### 3. Basic Concepts and Constructs
- **Variables**: Explain how to declare and use variables.
  ```bash
  name="John"
  echo "Hello, $name!"
  ```
- **Control Structures**: Introduce `if` statements, `for` loops, and `while` loops with examples.
- **Functions**: How to define and call functions.
- **Input and Output**: Handling user input with `read` and directing output with `echo`, `printf`.

### 4. Advanced Topics
- **Arrays**: Usage and examples.
- **Script Arguments**: Accessing script arguments via `$1`, `$2`, etc.
- **Error Handling**: Using `set -e` and custom error messages.
- **Debugging Scripts**: Techniques and tools (like `bash -x`).

### 5. Practical Examples
- **File Operations**: Scripts for creating, listing, and modifying files and directories.
- **System Administration**: Automating user creation, system updates, and backups.
- **Networking**: Scripts for checking network connectivity, port scanning.

### 6. Best Practices
- **Code Readability**: Using comments, meaningful variable names.
- **Security**: Avoiding common security pitfalls, like unchecked user input.
- **Performance**: Tips for writing efficient scripts.

### 7. Resources for Further Learning
- **Books**: Recommend authoritative books on shell scripting.
- **Online Resources**: Websites, forums, and communities where learners can find examples, ask questions, and share scripts.

### 8. Exercises and Challenges
- Provide exercises with increasing complexity to practice scripting skills, from basic file handling to writing scripts that solve real-world problems.

This outline should serve as a solid foundation for your notes and teaching material. Each section can be expanded with more detailed explanations, examples, and tips tailored to the audience's existing knowledge and needs. Shell scripting is a powerful skill, and with practical examples and clear explanations, learners will find it an invaluable tool in their arsenal.
















# Getting Started
We will be running shell scripts, likely bash, within this guide. Therefore, you will need 
You can run shell commands through a 
How to get WSL?
Use it through gitbash
etc.?

## Basic Navigation


# Example scripts
Show some initial practical examples of shell scripts in use
Search for a file
Run Python
Run R
