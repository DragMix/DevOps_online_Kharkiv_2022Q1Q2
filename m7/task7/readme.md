# Task 7

## Task 7.1-2
### Downloaded and installed MySQL to Ubuntu Server VM with `sudo apt install mysql-server`
![task7.1-2](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m7/task7/result_images/task7.1-2.png)

## Task 7.3-4
### Created DB and tables for Wheels shop, it's contains models, specs and importer info tables.
![task7.3-4](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m7/task7/result_images/task7.3-4.png)

## Task 7.5
### Tables was filled in.
![task7.5](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m7/task7/result_images/task7.5.png)

## Task 7.6
### Used `SELECT` with different options.
![task7.6](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m7/task7/result_images/task7.6.png)

## Task 7.7
### Used `ALTER`, `SELECT`, `UPDATE` commands.
![task7.7](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m7/task7/result_images/task7.7.png)

## Task 7.8
### Created users named john and mary, and set all privileges to john and only `SELECT` to mary.
### Logged in as mary and tried to `select` data from `Wheels.Models`(granted) and `Wheels.Specs`(not granted).
![task7.8](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m7/task7/result_images/task7.8.png)

## Task 7.9
### `SELECT`ed data from mysql.user table.
![task7.9](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m7/task7/result_images/task7.9.png)

## Task 7.10
### DB "Wheels" backup was made with `mysqldump --databases Wheels > database_backup.sql` command.

## Task 7.11
### Deleted "Specs" table from "Wheels" DB.
![task7.11](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m7/task7/result_images/task7.11.png)

## Task 7.12
### "Specs" table restored with `mysql < database_backup.sql` command.

## Task 7.13
### Transfered "Wheels" database to RDS instance.
![task7.13](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m7/task7/result_images/task7.13.png)

## Task 7.14
### Connected to remote DB.
![task7.14](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m7/task7/result_images/task7.14.png)

## Task 7.15
### Used `SELECT` with different options.
![task7.15](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m7/task7/result_images/task7.15.png)

## Task 7.16
### Dump created with `root@m7-vm:/home/flynn21# mysqldump -h lab-db.cmkygdqx5qsq.eu-central-1.rds.amazonaws.com -u admin -p --databases Wheels > remote_db_backup.sql` command.

## Task 7.17
### Created DB named "M7_DB".
![task7.17](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m7/task7/result_images/task7.17.png)

## Task 7.18
### Created collection named "Wheels_Again".
![task7.18](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m7/task7/result_images/task7.18.png)

## Task 7.19
### Created document with "type", "manufact" and "price" fields.
![task7.19](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m7/task7/result_images/task7.19.png)

## Task 7.20
### Find command used.
![task7.20](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/m7/task7/result_images/task7.20.png)
