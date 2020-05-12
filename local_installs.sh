sudo snap install node --channel=13 --classic
sudo snap install pycharm-professional --classic
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile
mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
brew install gcc
brew tap aws/tap
brew install aws-sam-cli
# aws configure
sudo npm upgrade -g
sudo npm install -g aws-cdk
pip install --upgrade pip
pip3 install --upgrade pip
python3.8 -m pip --upgrade pip
