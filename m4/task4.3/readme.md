# Task 4.3 Part 1

## Task 4.3.1
### In Linux a process could has 4 different states:
### "S" - sleeping
### "I" - idle
### "R" - running or awaiting to run
### "Z" - zombie
![task4.3.1](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.3/result_images/task4.3.1.png)

## Task 4.3.2
### pstree command result.
![task4.3.2](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.3/result_images/task4.3.2.png)

## Task 4.3.3
### /proc have a "proc" type of file system. It helps programms to interract with the system.
![task4.3.3](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.3/result_images/task4.3.3.png)

## Task 4.3.4
### "lscpu" command result.
![task4.3.4](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.3/result_images/task4.3.4.png)

## Task 4.3.5-6
### We can watch info aboud process, process owner etc. by top command.
### Difference between kernel and user process is in process owner. If it's "root" - it's the process that was launched by kernel.
![task4.3.5](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.3/result_images/task4.3.5-6.png)

## Task 4.3.7
### At the screenshot below, we can "bash" with "S" status process. It means that bash shell is awaiting for command.
### Also we can see "top" process, it's running and showing us the table of processes.
![task4.3.7](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.3/result_images/task4.3.7.png)

## Task 4.3.8
### Displayed processes, started by root.
![task4.3.8](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.3/result_images/task4.3.8.png)

## Task 4.3.9
### We can use ps command with different keys to analyze existing tasks:
### "ps au" - processes in BSD format
### "ps -f"
![task4.3.9](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.3/result_images/task4.3.9.png)

## Task 4.3.10
### "top" command show us PID, user, priority, nice value, virtual memory used, resident memory size, shared memory size, process status, cpu usage, memory usage, cpu time in hundreds and executable command.
![task4.3.10](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.3/result_images/task4.3.10.png)

## Task 4.3.11
### "top" command with -u key.
![task4.3.11](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.3/result_images/task4.3.11.png)

## Task 4.3.12
### If we type num "1" on keyboard, we will see cpu threads load, if we type "a" - we will see alternate display.

## Task 4.3.13
### "top -o TIME"
![task4.3.13](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.3/result_images/task4.3.13.png)

## Task 4.3.14
### We can set a priority for a process with nice and renice command.
![task4.3.14](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.3/result_images/task4.3.14.png)

## Task 4.3.15
### We can use "top" TUI and use hotkey "r" that means renice, set the value and it's done.

## Task 4.3.16 
### We can use kill to terminate the process with a some time to save program data (SYSTERM(15)), or kill it immidiately(SYSKILL(9))
![task4.3.16](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.3/result_images/task4.3.16.png)

## Task 4.3.17
### We can use "jobs -l" to see tasks in system. "fg" command can move task to foreground, "bg" to background, Ctrl+Z hotkey can be used to "sleep" the process.
![task4.3.17](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.3/result_images/task4.3.16.png)

# Task 4.3 Part 2

## Task 4.3.p2.1
### There is a list of commands used in MS Windows PowerShell:
```
//Installing components:
Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0 //for installing ssh client
Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0 //for installing ssh server

//Starting sshd:
Start-Service sshd
Set-Service -Name sshd -StartupType 'Automatic'

//Connecting to remote machine:
ssh [destination]
//or with different keys
```
![task4.3.p2.1](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.3/result_images/task4.3.p2.1.png)

## Task 4.3.p2.2-3
### Changed port for connection, established connections with remote machine, shared .pub key to remote host and disabled pass auth.
### We can use -i key to use public key to connect to host without password.
### We also can improve encryption of public key with 
```
ssh-keygen -t rsa -b 4096
ssh-keygen -t rsa -b 4096 -o -a 250
ssh-keygen -t rsa -b 4096 -o -a 250 -C “epam devops”
```
![task4.3.p2.3](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.3/result_images/task4.3.p2.3.png)

## Task 4.3.p2.4
### Port forwarding set up.
