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

When you're beginning with shell scripting, understanding the basics sets a strong foundation for writing more complex scripts. Let's dive into some of the fundamental concepts you'll need to know.

## The Shebang (`#!`)

The shebang (`#!`) is a character sequence at the very start of a script file that tells the system which interpreter to use to execute the file. It is followed by the path to the interpreter. For shell scripts, this is commonly `/bin/bash` for Bash scripts, although you can specify other shells or interpreters according to your needs.

The shebang line is only effective when the script is invoked as an executable file. If you run the script as an argument to the shell explicitly (e.g., `bash scriptname.sh`), the shebang line is ignored because the shell to use has already been specified.

Example shebang for a Bash script:
````bash
#!/bin/bash
````

You can see this in the [run_hello_name.sh](\shell\run_hello_name.sh) file.

## Writing Your First Script

Let's start with the classic "Hello, World!" script. This script will simply print "Hello, World!" to the terminal. Here's how you can write your first script:

1. Open your text editor and create a new file named `hello_world.sh`.
2. Enter the following content into the file:

````bash
#!/bin/bash
echo "Hello, World!"
````

3. Save and close the file.

This script starts with the shebang line to specify that it should be executed with `/bin/bash`, followed by a command (`echo`) that prints a message to the terminal.

## Making Scripts Executable

For your script to be run as an executable file, you need to grant it execution permissions. This is done with the `chmod` command, which changes the file's mode bits to allow execution. Here's how to make your script executable:

1. Open a terminal and navigate to the directory containing your script.
2. Run the following command:

````bash
chmod +x hello_world.sh
````

The `chmod +x` command adds execution permission for the user, group, and others (i.e., everyone). Now, your script is executable.

To run your script, you can simply type `./hello_world.sh` from the terminal while in the same directory as the script. You should see "Hello, World!" printed to the terminal, indicating your script ran successfully.

By understanding these foundational elements—shebang lines, writing basic scripts, and making scripts executable—you're now equipped to start exploring more complex scripting tasks. These basics form the cornerstone of shell scripting, enabling you to automate tasks and streamline your workflows effectively.

# Navigating UNIX

Navigating through the filesystem in a UNIX or UNIX-like system is a fundamental skill for any user. The command line provides a powerful and flexible way to browse directories, manage files, and understand the structure of your system. Here's an overview of essential commands for navigating the UNIX filesystem, including some commonly used options for each.

## Listing Files and Directories: `ls`

The `ls` command is used to list the files and directories in the filesystem.

- `ls`: List files and directories in the current directory.
- `ls -a`: List all entries, including hidden files starting with `.`.
- `ls -l`: List in long format, showing permissions, ownership, size, and modification date.
- `ls -h`: When used with `-l`, shows file sizes in a human-readable format.
- `ls -R`: List directories recursively, including all subdirectories.
- `ls -t`: Sort files by modification time, newest first.

Example:

````bash
ls -lah
````

This command lists all files (`-a`) in long format (`-l`) with human-readable sizes (`-h`), in the current directory.

## Changing Directories: `cd`

The `cd` command changes the current working directory.

- `cd directory_name`: Changes the current directory to `directory_name`.
- `cd`: Without any arguments, changes the directory to the user's home directory.
- `cd ..`: Moves up one directory (to the parent directory).
- `cd -`: Changes to the previous directory.

Example:

````bash
cd /notes_on_shell/intro_to_shell
````

This command changes the current working directory to `/notes_on_shell/intro_to_shell`.

## Creating Directories: `mkdir`

The `mkdir` command is used to create new directories.

- `mkdir directory_name`: Creates a new directory named `directory_name`.
- `mkdir -p path/to/directory`: Creates a directory and all necessary parent directories.

Example:

````bash
mkdir -p new_folder/sub_folder
````

This command creates a new directory `new_folder` and a subdirectory `sub_folder` within it, including any intermediate directories as necessary.

## Removing Files and Directories: `rm` and `rmdir`

- `rm file_name`: Removes (deletes) a file.
- `rm -r directory_name`: Recursively removes a directory and all its contents.
- `rm -f file_name`: Forcefully removes a file without prompting for confirmation.
- `rmdir directory_name`: Removes an empty directory. For non-empty directories, use `rm -r`.

Example:

````bash
rm -rf old_directory
````

This command forcefully and recursively removes `old_directory` and all its contents.

## Viewing the Current Path: `pwd`

The `pwd` command prints the working directory's full pathname.

Example:

````bash
pwd
````

This command outputs the current directory's absolute path.

## Creating and Viewing Files: `touch` and `cat`

- `touch file_name.txt`: Creates a new file if it doesn't exist or updates the modification time if it does.
- `cat file_name.txt`: Displays the contents of a file. (if it is empty nothing will diaplay)
- `nano file_name.txt`: Opens the file in and editor. To exit follow the commands at the bottom of the editor (or chatGPT/Google if you have trouble)
- `vi file_name.txt`: Opens the file in and editor. Note, to exit vim:
   - If You Want to Save Your Changes, Press `Esc`, Type `:wq` (which stands for "write and quit") or `:x`,ress `Enter`.
   - If You Want to Exit Without Saving Changes, Press `Esc`,Type `:q!`, Press `Enter`.
   - If you've started the quit process but decide you're not sure (for example, after pressing `:`), you can usually cancel and go back to editing by pressing `Esc`.
   - Remember, `vi`/`vim` has different modes:
      - *Normal Mode*: For navigating and manipulating the text.
      - *Insert Mode*: For inserting text. Enter this mode by pressing `i` when in normal mode.
      - *Command Mode*: Accessed by pressing `:` from normal mode, for entering commands like `wq`, `x`, `q!`, etc.

Understanding these modes is key to effectively using `vi`/`vim`.

Example:

````bash
touch new_file.txt
nano new_file.txt # enter text into the file and save it
cat new_file.txt
````

This first command creates `new_file.txt`, and the second command would display its contents.

By mastering these commands and their options, you can efficiently navigate and manage files in a UNIX or UNIX-like system's command line environment. Remember, the command line is very powerful, and with great power comes the responsibility to use it wisely—especially with commands that can delete data.

# Basic Concepts and Constructs

Understanding the basic concepts and constructs of shell scripting is essential for automating tasks and creating efficient scripts. Let's delve into some fundamental components such as variables, control structures, functions, and input/output operations.

## Variables

Variables in shell scripting store data that can be used and manipulated within the script. To declare a variable, simply assign a value to a name without spaces.

````bash
name="John"
echo "Hello, $name!"
````

Variables are called by prefixing the variable name with a dollar sign (`$`). It's also good practice to enclose your variables in quotes to prevent issues with spaces and special characters.

To run the above, you can enter each line in the terminal, or run the [file](/shell/variables.sh)file by entering:
`chmod +x shell/variables.sh`
`./shell/variables.sh`

## Control Structures

Control structures control the flow of execution in your script. They include conditional statements and loops.

### If Statements

`if` statements allow you to execute commands based on conditions.

````bash
if [ "$name" == "John" ]; then
  echo "Hello, John!"
else
  echo "Who are you?"
fi
````

### For Loops

`for` loops are used for iterating over a list of values.

````bash
for i in 1 2 3; do
  echo "Looping ... number $i"
done
````

You can enter this as one line in the terminal as:
````bash
for i in 1 2 3; do echo "Looping ... number $i";done
````

Or you can run:
`chmod +x shell/loop.sh`
`./shell/loop.sh`

### While Loops

`while` loops perform a set of commands as long as the given condition is true.

````bash
count=1
while [ $count -le 5 ]; do
  echo "Count: $count"
  count=$((count + 1))
done
````

Note: le stands for "less than or equal to".

To run this you can enter the following into the terminal:
`count=1; while [ $count -le 5 ]; do echo "Count: $count"; count=$((count + 1));done`

Or run the file:
`chmod +x shell/while.sh`
`./shell/while.sh`

## Functions

Functions in shell scripting are blocks of code that can be reused. They are defined and then called by name.

````bash
greet() {
  echo "Hello, $1!"
}

greet "John"
````

Functions can accept arguments, referred to inside the function as `$1`, `$2`, etc., based on their position.

You can run the functions.sh script using:
`chmod +x shell/function.sh`
`./shell/function.sh`

## Input and Output

### Reading User Input

The `read` command captures input from the user and stores it in a variable.

````bash
echo "Enter your name: "
read name
echo "Hello, $name!"
````

You can run the functions.sh script using:
`chmod +x shell/io.sh`
`./shell/io.sh`

### Directing Output

- `echo` is used for displaying a line of text.
- `printf` offers more formatting options compared to `echo`.

````bash
printf "Hello, %s!\n" "$name"
````

`printf` uses format specifiers like `%s` for strings and `%d` for integers, followed by the variables containing the values to format.

You can run the functions.sh script using:
`chmod +x shell/printf.sh`
`./shell/printf.sh`


## Additional Items

### Test `[ ]`

The test command `[ ]` in shell scripting is a fundamental construct used for evaluating conditional expressions. Inside the brackets, various types of tests can be performed, including checking file attributes, comparing strings, and evaluating arithmetic conditions. The outcome of the test command determines the execution flow of conditional statements like `if`.

#### Syntax
The general syntax for using the test command is:
````bash
[ expression ]
````
It's important to note that spaces around the brackets and expression are required, as they are part of the syntax.

#### Commonly Used Test Expressions

##### File Tests
- `-f file`: True if `file` exists and is a regular file.
- `-d directory`: True if `directory` exists and is a directory.
- `-e entity`: True if the entity (file or directory) exists.
- `-r file`: True if `file` exists and is readable.
- `-w file`: True if `file` exists and is writable.
- `-x file`: True if `file` exists and is executable.

##### String Tests
- `string1 = string2`: True if the strings are equal.
- `string1 != string2`: True if the strings are not equal.
- `-z string`: True if the string is empty.
- `-n string`: True if the string is not empty.

##### Arithmetic Tests
- `num1 -eq num2`: True if num1 is equal to num2.
- `num1 -ne num2`: True if num1 is not equal to num2.
- `num1 -lt num2`: True if num1 is less than num2.
- `num1 -le num2`: True if num1 is less than or equal to num2.
- `num1 -gt num2`: True if num1 is greater than num2.
- `num1 -ge num2`: True if num1 is greater than or equal to num2.

#### Examples

**Check if file exists**:
````bash
if [ -f "$filename" ]; then
  echo "$filename exists."
fi
````

**Check if a file is writable**:
````bash
if [ -w "$filename" ]; then
  echo "$filename is writable."
else
  echo "$filename is not writable."
fi
````

**Compare two strings**:
````bash
if [ "$string1" = "$string2" ]; then
  echo "The strings are equal."
else
  echo "The strings are not equal."
fi
````

**Check if a variable is set and not empty**:
````bash
if [ -n "$variable" ]; then
  echo "Variable is set and not empty."
else
  echo "Variable is unset or empty."
fi
````

You can run the following to test the above:
`chmod +x shell/test.sh`
`./shell/test.sh`


#### Advanced Usage

The `[[ ]]` construct is a more advanced version of the test command, offering several enhancements like pattern matching for strings. However, it is not POSIX-compliant and may not be available in all shells.

#### Note

It's crucial to quote variable expansions within test expressions to prevent errors or unexpected behavior when variables contain spaces or are empty.

Understanding the test command and its various expressions is essential for writing robust shell scripts that can make decisions based on file attributes, string values, and arithmetic comparisons.

### Redirecting Output

Output of commands can be redirected to files using `>`, `>>`, or piped into other commands with `|`.

````bash
echo "Hello, World!" > hello.txt  # Overwrites the file
echo "Hello, again!" >> hello.txt # Appends to the file
cat hello.txt
cat hello.txt | grep Hello
echo "Overwritten!" > hello.txt
cat hello.txt
rm hello.txt
````

### Exit Status

Every command returns an exit status (`$?`), with `0` typically meaning success. This can be used in scripts to check if a command succeeded.

````bash
ls /not/a/real/directory
if [ $? -ne 0 ]; then
  echo "The command failed."
fi
````

Understanding these basic concepts and constructs is crucial for writing effective shell scripts. With practice, you can start combining these elements to automate complex tasks and streamline your workflow.


# Advanced Topics

As you become more comfortable with basic shell scripting concepts, you'll find that advanced features can significantly enhance the functionality and robustness of your scripts. Here are some advanced topics, including arrays, script arguments, error handling, and debugging techniques.

## Arrays

Shell scripting supports arrays, which are useful for storing and manipulating lists of data.

### Defining Arrays
You can define an array in Bash by simply listing elements within parentheses, separated by spaces.

````bash
my_array=("apple" "banana" "cherry")
````

### Accessing Array Elements
Elements can be accessed by their index, with the first element at index 0.

````bash
echo "${my_array[0]}"  # Outputs "apple"
````

### Iterating Over Arrays
Use a loop to iterate over each element in the array.

````bash
for fruit in "${my_array[@]}"; do
  echo "$fruit"
done
````

### Array Length
To get the number of elements in an array:

````bash
echo "${#my_array[@]}"  # Outputs 3
````

## Script Arguments

Scripts often need to accept input parameters, which are accessible inside the script as `$1`, `$2`, etc., corresponding to the order they were provided.

````bash
#!/bin/bash
echo "First argument: $1"
echo "Second argument: $2"
````

To run the file:
`chmod +x shell/arguments_two.sh`
`./shell/arguments_two.sh this that`
`./shell/arguments_two.sh this that test`
Test doesnt print in the above
`./shell/arguments_two.sh this`
Prints:
````bash
Argument 1: this
Argument 2:
`````


To handle an unknown number of arguments, you can loop over `$@`:

````bash
for arg in "$@"; do
  echo "$arg"
done
````

`chmod +x shell/arguments_any.sh`
`./shell/arguments_any.sh this that`
`./shell/arguments_any.sh this that test`
`./shell/arguments_any.sh this`

## Error Handling

Robust scripts should handle errors gracefully.

### Exit on Error
`set -e` instructs the shell to exit the script if any command returns a non-zero status (indicating failure).

````bash
set -e
cp non_existent_file.txt another_location/
````
This will close the terminal as the location doesnt exist.

### Custom Error Messages
Use conditional statements to provide informative error messages.

````bash
if ! cp important_file.txt backup_location/; then
  echo "Failed to copy important_file.txt to backup_location/"
  exit 1
fi
````

## Debugging Scripts

Debugging shell scripts can be challenging, but Bash provides tools to make it easier.

### Using `set -x`
Enabling the `-x` option with `set -x` prints each command before it's executed, along with its arguments.

````bash
set -x
echo "Debugging this script"
````

### Redirecting stderr
You can redirect the standard error stream (`stderr`) to a file for later inspection.

````bash
your_command 2> error_log.txt
````

### Checking Return Values
Explicitly check the return value of commands with `$?`.

````bash
your_command
if [ $? -ne 0 ]; then
  echo "your_command failed"
fi
````

Utilizing these advanced features and techniques can greatly improve the functionality, readability, and reliability of your shell scripts. Whether it's managing complex data with arrays, handling user inputs gracefully, ensuring your scripts fail safely, or finding and fixing bugs, these tools are invaluable for any shell scripter.


# Practical Examples

## Print positions

The following script reads in a CSV and then uses the value to print the positions of each person. This is a useful skill to know as it will allow you to use CSV files to provide inputs to your shell scripts and use them as values. In this instance we print the values out to show the variables working, however you could use them as arguments to functions, for example the dates you want to run.

This example also shows how functions can be used to manipulate the inputs provided to give values you want. In this case we show you how to convert numbers to their ordinal form (1, 2, 3, etc. tp 1st, 2nd, 3rd). The same concept can be applied to convert numeric months to the month name (1 to January, etc.), or convert an amount from various currencies into a single currency (e.g. USD, CNY, GBP to AUD).

[Download print_positions.sh](\shell/print_positions.sh)
[Link to data](/data/positions.csv)

Run the following in a terminal to test it out:

`chmod +x shell/print_positions.sh`
`./shell/print_positions.sh data/positions.csv`


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
