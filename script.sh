cd
sudo yum install unzip -y
git clone https://github.com/tfutils/tfenv.git .tfenv
echo "export PATH=$PATH:$HOME/.tfenv/bin/" >> ~/.bashrc
source ~/.bashrc
echo "done"
tfenv install 0.14.11
tfenv use 0.14.11