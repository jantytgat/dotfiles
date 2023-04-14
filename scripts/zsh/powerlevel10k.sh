#!/bin/bash
if [ -d ~/.oh-my-zsh/custom/themes/powerlevel10k ]; then 
    echo "powerlevel10k is installed";
else 
    echo "powerlevel10k is not installed";
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi;