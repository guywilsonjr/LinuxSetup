curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
curl -s -L https://nvidia.github.io/nvidia-docker/ubuntu20.04/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

apt purge docker docker-engine docker.io containerd runc nvidia*
add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
apt update
apt-get -y upgrade
apt install -y build-essential ca-certificates nodejs gnupg-agent apt-transport-https software-properties-common mlocate curl file git libssl-dev binutils-dev libncurses5-dev bison flex libelf-dev python3.9-dev python3.10-pip python3.10-dev python3.10-venv python3.9-pip docker-ce docker-ce-cli containerd.io python3.9-venv awscli google-chrome-stable vim nvidia-settings nvidia-prime nvidia-container-toolkit xdotool openssh-server sshfs

apt update

curl -L "https://github.com/docker/compose/releases/download/2.2.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

echo 'fs.inotify.max_user_watches = 524288' >> /etc/sysctl.d/idea.conf
sysctl -p --system
service docker start
echo 'source /home/guy/LinuxSetup/aliases.sh' >> ~/.bashrc
git config --global user.name "Guy Wilson"
git config --global user.email "Guywilsonjr@gmail.com"
aliasrcloc=$(find ~/ -wholename */LinuxSetup/.aliasrc)
echo $aliasrcloc >> ~/.bashrc
source $aliasrcloc
