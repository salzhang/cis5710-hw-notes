# Docker-Setup
### Step 1: Pull latest image 
First, run the following code inside your commind line window: `docker pull cis5710/hw-base:latest`.
    
Then, run the following code inside your command line window: `docker run -it cis5710/hw-base:latest /bin/bash`.

After that, open Docker Desktop and you will see a new running container.

### Step 2: Create ssh key and add it to your account 
First, open VSCode to connect to the new container. You can click the blue button on the buttom left corner, and select "***Attach to Running Container***" at the prompt.   

Secondly, open the terminal in VSCode, run the code: `ssh-keygen -t ed25519 -C "your_email@example.com"`. You can keep the default address to save your generated key pair. You also need to enter
and re-enetr your passpharse.

Thirdly, create an empty repo on github. Remember its name.

Then, open the ***id_ed25519.pub*** file in ***.ssh*** folder. Copy the public key in the file.

After that, you can add new SSH key to your github account under following instructions. 
***Settings*** -> ***SSH and GPG keys*** -> ***New SSH key*** -> Name the tilte and paste the public key -> ***Add SSH key***

### Step 3: Pull content from upstream
First, run the following commands inside your VSCode Terminal. Substitute your GH username and the name of the repo you created for `YOURUSERNAME` and `YOURREPO`, respectively:
```
git clone git@github.com:YOURUSERNAME/YOURREPO.git
cd YOURREPO
```
Then, add a connection called `upstream` to the upstream CIS 5710 repo and get the changes from `upstream`:
```
git remote add upstream https://github.com/cis5710/cis5710-homework.git
git fetch upstream
```
Now, merge those changes with the `main` branch in your repo:
```
git merge upstream/main
```
Then, push those changes back to your private Github repo:
```
git push
```

### Step 4: Push modification to origin
Run the following codes to push your changed file to your Github repo:
```
$ git add .
$ git commit -m "remote upload"
$ git push origin main
```

### Step 5: Clone the repo in biglab
First, in biglab.seas.upenn.edu, run the following code to add Vivado to your path:
```
source /home1/c/cis5710/tools/cis5710-update-path.sh
```

Then, use ```git clone``` to clone your Github repo inside your biglab:
```
git clone git@github.com:YOURUSERNAME/YOURREPO.git
```

After that you will see something like, enter ***yes***:
```
Cloning into 'cis5710'... The authenticity of host 'github.com (140.82.114.4)' can't be established. ECDSA key fingerprint is SHA256:p2QAMXNIC1TJYWeIOttrVc98/R1BUFWu3/LiyKgUfQM. Are you sure you want to continue connecting (yes/no/[fingerprint])?
```

