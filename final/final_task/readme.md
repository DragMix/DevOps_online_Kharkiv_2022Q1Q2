# Final Task

## Preparing the final project, it was decided not to use the proposed example, but to develop my own project.

## The main task of my project was the integration of CI/CD into the process of developing modifications for the application and its next release.

## For the project, the Minecraft game was taken as the basis, which has the ability to install a separate server for multiplayer game.
## Like the game client, the server can be modified to change game mechanics or add new items.

## As an example, 3 VMs with Ubuntu Server 2022.4 were installed on my personal PC:
###-JenkinsVM, for Jenkins;
###-testvm, to test the mod for boot stability;
###-prodvm, to simulate a server with a constant number of players, to which you need to add a mod file as soon as possible.

The essence of the project is to automate the process of compiling the source code into a binary modification file, with its testing and delivery to a working server with players.

## Steps:

###-The developer writes the code in an environment convenient for him, after which, using Git, he fixes the changes with a commit and pushes the changes to the server;
###-Jenkins, in turn, being attached to the repository, when a change is made in the repository, launches a pipeline that:
###--uploads the entire repository to the workspace;
###--using Gradle makes the build to a jar file;
###--sends this file to the test machine, adding the file to the server;
###--starts and stops the server;
###--uploads the server log, in which it looks for the "Done" string, which indicates the stability of the loaded mod;
###--downloads the jar file to the main machine, adds this file to the server with the players;
###--stops and starts the main server with players;
###--after loading the server, uploads the main server log and also looks for the "Done" string in it, which indicates the successful integration of the mod into the main server.

### Creating a mod.
![fin.1](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/final/final_task/result_images/fin.1.png)

### GitHub repo.
![fin.2](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/final/final_task/result_images/fin.2.png)

### Jenkins settings.
![fin.3](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/final/final_task/result_images/fin.3.png)

### Pipeline.
![fin.4](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/final/final_task/result_images/fin.4.png)

### Previous build results.
![fin.5](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/final/final_task/result_images/fin.5.png)

### Successful delivery and server work.
![fin.6](https://github.com/DragMix/DevOps_online_Kharkiv_2022Q1Q2/blob/main/final/final_task/result_images/fin.6.png)