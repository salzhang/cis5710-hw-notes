# Docker-Setup
### Step 1: Pull latest image 
First, run the following code inside your commind line window: `docker pull cis5710/hw-base:latest`.
    
Then, run the following code inside your command line window: `docker run -it cis5710/hw-base:latest /bin/bash`.

After that, open Docker Desktop and you will see a new running container.

### Step 2: Create ssh key and add it to your account 
First, open VSCode to connect to the new container. You can click the blue button on the buttom left corner, and select "***Attach to Running Container***" at the prompt.   

Secondly, open the terminal in VSCode, run the code `ssh-keygen -t ed25519 -C "your_email@example.com"`. You can keep the default address to save your generated key pair. You also need to enter
and re-enetr your passpharse.


