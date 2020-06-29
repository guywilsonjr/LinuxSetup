curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
curl -s -L https://nvidia.github.io/nvidia-docker/ubuntu18.04/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
apt purge docker docker-engine docker.io containerd runc nvidia*
add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
add-apt-repository -y ppa:jonathonf/gcc-9.0
add-apt-repository -y ppa:deadsnakes/ppa
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
wget https://dev.mysql.com/get/mysql-apt-config_0.8.14-1_all.deb
dpkg -i mysql-apt-config_0.8.14-1_all.deb
apt update
apt-get -y upgrade
apt install -y build-essential ca-certificates nodejs gnupg-agent apt-transport-https software-properties-common mlocate\

curl file git libssl-dev binutils-dev libncurses5-dev bison flex libelf-dev python-pip python3.8-dev python3-pip python3.8 python3.8\
   python3.8-venv ccache distcc docker-ce docker-ce-cli containerd.io snapd awscli google-chrome-stable vim\
   nvidia-settings libnvidia-decode-450 libnvidia-encode-450 libnvidia-ifr1-450 libnvidia-fbc1-450 libnvidia-gl-450 \
   nvidia-prime libnvidia-compute-450 nvidia-driver-450 nvidia-container-toolkit xdotool openssh-server sshfs

wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-ubuntu1804.pin
mv cuda-ubuntu1804.pin /etc/apt/preferences.d/cuda-repository-pin-600
apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
add-apt-repository "deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/ /"
apt update
apt -y install cuda
curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

echo 'fs.inotify.max_user_watches = 524288' >> /etc/sysctl.d/idea.conf
sysctl -p --system
service docker start
echo 'source /home/guy/LinuxSetup/aliases.sh' >> ~/.bashrc
git config --global user.name "Guy Wilson"
git config --global user.email "Guywilsonjr@gmail.com"
git config --global credential.helper store
