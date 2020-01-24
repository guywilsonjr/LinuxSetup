mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
brew tap aws/tap
brew install aws-sam-cli
npm install -g aws-cdk
alias update='apt update && apt upgrade -y'

# aws configure