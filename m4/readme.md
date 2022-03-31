# Task 4.1

## Task 4.1 Part 1.1.
### Logged in as root.
![task4.1.p1.1](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.1/result_images/task4.1.p1.1.png)

## Task 4.1 Part 1.2.
### Password changed by passwd command. It has a lot of options and can change a password any entered user login (if you are root).
![task4.1.p1.2](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.1/result_images/task4.1.p1.2.png)

## Task 4.1 Part 1.3.
### The users that registered in the system can be shown with "cat /etc/passwd", then we can see a list of users and their privilege.
![task4.1.p1.3](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.1/result_images/task4.1.p1.3.png)

## Task 4.1 Part 1.4.
### Changed perfonal information with chfn command.
![task4.1.p1.4](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.1/result_images/task4.1.p1.4.png)

## Task 4.1 Part 1.5.
### Used man for getting info about used commands. Now I know that passwd command have an "-a" key, for example.
![task4.1.p1.5](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.1/result_images/task4.1.p1.5.png)

## Task 4.1 Part 1.6.
### Here we can see .bash_history content
![task4.1.p1.6_1](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.1/result_images/task4.1.p1.6_1.png)
### Here we can see .bash_logout content
![task4.1.p1.6_2](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.1/result_images/task4.1.p1.6_2.png)

## Task 4.1 Part 1.7.
### "finger -l" command can show us who are logged in, in my case, no one logged in. 
![task4.1.p1.7_1](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.1/result_images/task4.1.p1.7_1.png)
### But we also can use lastlog to see last login time for all users.
![task4.1.p1.7_2](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.1/result_images/task4.1.p1.7_2.png)

## Task 4.1 Part 1.8.
### Listing of contents of home dir.
![task4.1.p1.8](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.1/result_images/task4.1.p1.8.png)

## Task 4.1 Part 2.1.
### Listing subdirectories of the root directory up to and including 
the second nesting level.
![task4.1.p2.1](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.1/result_images/task4.1.p2.1.png)

## Task 4.1 Part 2.2.
### We can use "file" command to determine file type.
![task4.1.p2.2](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.1/result_images/task4.1.p2.2.png)

## Task 4.1 Part 2.3.
### We can go back to user's home directory with "cd ~" command.

## Task 4.1 Part 2.4.
### "ls" command can be used for displaying content of current directory, but also we can use "ls <path>" to see entered path content.
### "ls" with "-l" key shall show us files and directories in long-listing format.
![task4.1.p2.4_1](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.1/result_images/task4.1.p2.4_1.png)
### "ls" with "-a" key shall show us hidden files and directories (starting with dot).
![task4.1.p2.4_2](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.1/result_images/task4.1.p2.4_1.png)

## Task 4.1 Part 2.7.
### Locating files that contain "squid" sequence. //or "sudo grep -rnw /etc -e 'squid'" if I don't correctly understood task:)
![task4.1.p2.7_1](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.1/result_images/task4.1.p2.7_1.png)
### Locating files that contain "traceroute" sequence. //or "sudo grep -rnw /etc -e 'traceroute'"
![task4.1.p2.7_2](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.1/result_images/task4.1.p2.7_2.png)

## Task 4.1 Part 2.8.
### We can use "mount" command to determine mounted partitions and their type.
![task4.1.p2.8](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.1/result_images/task4.1.p2.8.png)

## Task 4.1 Part 2.9.
### We can find a given sequence of words with cat and grep commands, and count an amount of founded strings with "wc -l".
![task4.1.p2.9](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.1/result_images/task4.1.p2.9.png)

## Task 4.1 Part 2.10.
### We can find a "host" sequence with "find".
![task4.1.p2.10](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.1/result_images/task4.1.p2.10.png)

## Task 4.1 Part 2.11.
### Listing all objects with "ss" character sequence with 2 different commands.
![task4.1.p2.11](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.1/result_images/task4.1.p2.11.png)

## Task 4.1 Part 2.12.
### Printing the contents of the /etc directory.
![task4.1.p2.12](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.1/result_images/task4.1.p2.12.png)

## Task 4.1 Part 2.13.
### There are a few device types in the system such as the system console (/dev/console), hard drives (/dev/hd), SCSI hard drives (/dev/sd), etc. Also there is /dev/null, something like "black hole", nothing that got there can be restored.

## Task 4.1 Part 2.14.
### From Linux's POV, file is a stream of bytes, with which the system can work. Physical devices, named pipes and sockets are also represented as files in Linux system.

## Task 4.1 Part 2.15.
### The first 5 directory files that were recently accessed in the /etc directory:
![task4.1.p2.15](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.1/result_images/task4.1.p2.15.png)
