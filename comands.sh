#Install and Set-up Git
git --version

#Create an empty Git repository
mkdir practising-git
cd practising-git
git init

#Set-up your Git account details
git config --global user.name "Your Name"
git config --global user.email "name@domain"

git config --global user.name "pyotrantropov"
git config --global user.email "pyotrantropov@gmail.com"

ls -al ~/.ssh

# Generate SSH Key Pairs
ssh-keygen -t rsa -b 4096 -C "pyotrantropov@gmail.com"
ssh-keygen -t ed25519 -C "pyotrantropov@gmail.com"

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

git remote add origin git@github.com:pyotrantropov/practising-git1.git
git remote add origin https://github.com/pyotrantropov/practising-git1.git

ssh -T git@github.com
git remote add origin git@github.com:pyotrantropov/practising-git1.git
git remote -h
git remote remove origin
git remote add origin git@github.com:pyotrantropov/practising-git1.git
git push -u origin master 

git remote -l