# Task 4.2

## Task 4.2.1
### In /etc/passwd we can see something like text database, that contains data fields for every user in system.
### Data format: username:password_bit:uid:gid:annotation:home_directory:shell
### For root user: root:0:0:Mykhailo Tolstyi,,,:/root/bin/bash
![task4.2.1_1](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.2/result_images/task4.2.1_1.png)
### In /etc/group we can see text database like in /etc/passwd, but with different fields.
### Data format: groupname:password_bit:gid:user1,user2.
![task4.2.1_2](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.2/result_images/task4.2.1_2.png)

## Task 4.2.2
### In my WSL works Ubuntu 20.04, and it has those ranges:
### root - 0; system users(or pseudousers) - 1-1000;default users - 1001-60000.

## Task 4.2.3-4
### GID - group identificator. We can define it by opening file /etc/group.
### We can determine belonging to group if we watch to last field of needed group. 
![task4.2.3-4](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.2/result_images/task4.2.3-4.png)

## Task 4.2.5
### To add a user we need to use adduser command and write user name, user name is only thing required to work, but not the last.
### We also can use command keys to add properties for that user. (--uid ID; --shell SHELL; --gid GID)
![task4.2.5](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.2/result_images/task4.2.5.png)

## Task 4.2.6
### We can use usermod command with options to change login, uid, gid, gecos info, home directory etc.

## Task 4.2.7
### /etc/skel contain files that have to be copied to home directory of new created user.
![task4.2.7](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.2/result_images/task4.2.7.png)

## Task 4.2.8
### We can delete user with his mail spool with "userdel -r username".

## Task 4.2.9
### We have to use usermod command with -L key to lock the user, and -U key to unlock the user.

## Task 4.2.10
### We have to use passwd command with -d key to reset the user's password.

## Task 4.2.11-13
### "ls -la" command result strings contains fields about:
### 1. File type ("d" - directory, "l" - link, "-" - file).
### 2. Permitions.
### 3. Amount of hard links in directory
### 4. Owner's name.
### 5. Group name.
### 6. File size.
### 7. Last access time.
### 8. Name of file/directory.
### If we type "ls -la" command, result strings will have permitions field:
### First three - owner's permitions, second three - file group permitions, third three - other user's permitions
### There can be some of that letters in the three: "r" - read file, "w" - write file, "x" - execute file.
### Example: "-rwxr-xr--" record tell us that it's file, that can be ***r***ead, ***w***riten and e***x***ecuted by owner, ***r***ead, and e***x***ecuted by file group users, and only ***r***ead by oher users. "-" means denied.
![task4.2.11-13](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.2/result_images/task4.2.11-13.png)

## Task 4.2.14
### We can change the file owner by chown command, the mode of access by chmod command.
### For example, I created a file, and I'm the owner of that file.
### Changing the owner of file to root, and changing the mode of access to "-rwx------" or "full access only for owner(700).
![task4.2.14](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m4/task4.2/result_images/task4.2.14.png)

## Task 4.2.15
### Octal representation of access rigths makes the process of applying access mode to files/dirs more comfortable.
### For example: 777 = (111 111 111) = (rwx rwx rwx), 666 = (110 110 110) = (rw- rw- rw-), 744 = (111 100 100).

## Task 4.2.16 
### Sticky bit is a permission that allow to remove files only by the owner of file, or owner of directory where that file are located.

## Task 4.2.17
### For execution, file must have "x" attribute to needed user/group. 





