#!/bin/bash - 

set -o nounset                              # Treat unset variables as an error

if [ -f /etc/redhat-release ]; then
    yum update
    yum install -u tmux zsh vim
fi

if [ -f /etc/lsb-release ]; then
    apt-get update
    apt-get install -y tmux zsh vim
fi

mkdir -p ~/.vim/swap
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/undo

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

echo "Waiting for oh-my-zsh to install"
sleep 10

cp tmux.conf.sane ~/.tmux.conf
cp vimrc.sane ~/.vimrc
cp zshrc.sane ~/.zshrc
