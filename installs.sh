mkdir $HOME/.ssh/sockets
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
apt update
apt-get -y upgrade
apt install -y build-essential ca-certificates nodejs gnupg-agent apt-transport-https software-properties-common mlocate curl file git libssl-dev binutils-dev libncurses5-dev bison flex libelf-dev python3.9-dev python3.10-pip python3.10-dev python3.10-venv python3.9-pip docker-ce docker-ce-cli containerd.io python3.9-venv awscli google-chrome-stable vim nvidia-settings nvidia-prime nvidia-container-toolkit xdotool openssh-server sshfs
apt update
curl -L "https://github.com/docker/compose/releases/download/2.2.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
git config --global user.name "Guy Wilson"
git config --global user.email "Guywilsonjr@gmail.com"
