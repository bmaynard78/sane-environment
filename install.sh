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

mkdir -p .vim/swap
mkdir -p .vim/backup
mkdir -p .vim/undo

cp tmux.conf.san ~/.tmux.conf
cp vimrc.sane ~/.vimrc
cp zshrc.sane ~/.zshrc
