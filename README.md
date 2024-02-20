# Docker-Setup
### Step 1: Pull latest image 
First, run the following code inside your commind line window: `docker pull cis5710/hw-base:latest`.
    
Then, run the following code inside your command line window: `docker run -it cis5710/hw-base:latest /bin/bash`.

After that, open Docker Desktop and you will see a new running container.

### Step 2: Create ssh key and add it to your account 
First, open VSCode to connect to the new container. You can click the down left button, and select "***Attach to Running Container***".   

Then, open the terminal, run the code `ssh-keygen -t ed25519 -C "your_email@example.com"`.
