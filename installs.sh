wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
wget https://dev.mysql.com/get/mysql-apt-config_0.8.14-1_all.deb
apt update
apt upgrade -y
apt install -y build-essential curl file git python-pip python3-pip python3.8 python3.8-pip python3.8-venv \
 docker-ce docker-ce-cli containerd.io snapd awscli
snap install pycharm-professional --classic
pip install --upgrade pip
pip3 install --upgrade pip
python3.8 -m pip --upgrade pip

# apt install mysql-server
# apt install mysql-workbench