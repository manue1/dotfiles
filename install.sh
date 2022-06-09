#!/bin/bash

root_dir=$(cd $(dirname $0) && pwd)
cp -av \
    $root_dir/.bash_profile \
    $root_dir/.bashrc \
    $root_dir/.gitconfig \
    $root_dir/.tmux.conf.local \
    $root_dir/.zshrc \
    ~
