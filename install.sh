#!/bin/bash

root_dir=$(cd $(dirname $0) && pwd)

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)

# copy config files
cp -av \
    $root_dir/.gitconfig \
    $root_dir/.tmux.conf.local \
    $root_dir/.zshrc \
    ~

# install and setup tmux
git clone --single-branch https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
