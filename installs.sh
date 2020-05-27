curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
apt remove docker docker-engine docker.io containerd runc
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
add-apt-repository ppa:jonathonf/gcc-9.0
add-apt-repository -y ppa:deadsnakes/ppa
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
wget https://dev.mysql.com/get/mysql-apt-config_0.8.14-1_all.deb
dpkg -i mysql-apt-config_0.8.14-1_all.deb
apt update
apt-get -y upgrade
apt install -y build-essential ca-certificates nodejs gnupg-agent apt-transport-https software-properties-common mlocate curl file git libssl-dev binutils-dev libncurses5-dev bison flex libelf-dev python-pip python3-pip python3.8 python3.8 python3.8-venv ccache distcc install docker-ce docker-ce-cli containerd.io snapd awscli google-chrome-stable vim
echo 'fs.inotify.max_user_watches = 524288' >> /etc/sysctl.d/idea.conf
sysctl -p --system
service docker start
echo 'source ~/LinuxSetup/aliases.sh' >> ~/.bashrc
git config --global user.name "Guy Wilson"
git config --global user.email "Guywilsonjr@gmail.com"
git config --global credential.helper store

#apt install mysql-server
