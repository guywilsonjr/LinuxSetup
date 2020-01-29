alias update='apt update'
alias install='apt -y install'
alias upgrade='apt -y upgrade'
alias upperdate='update && upgrade'
alias autoremove='apt autoremove'
alias purge='apt purge'
alias remove='apt remove'
alias vi='vim'
#dd-apt-repository ppa:jonathonf/gcc-9.0
#add-apt-repository -y ppa:deadsnakes/ppa
#wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
#sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
#wget https://dev.mysql.com/get/mysql-apt-config_0.8.14-1_all.deb
#dpkg -i mysql-apt-config_0.8.14-1_all.deb
#apt update
#apt-get -y upgrade
apt install -y build-essential curl file git libssl-dev binutils-dev libncurses5-dev bison flex libelf-dev python-pip python3-pip python3.8 python3.8 python3.8-venv ccache distcc docker docker.io snapd awscli npm google-chrome-stable vim
service docker start
git clone git://github.com/jakeday/linux-surface --depth 1
#apt install mysql-server
