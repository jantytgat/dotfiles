#!/bin/bash
if [ -d ~/.oh-my-zsh ]; then 
    echo "oh-my-zsh is installed";
else 
    echo "oh-my-zsh is not installed";
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi;