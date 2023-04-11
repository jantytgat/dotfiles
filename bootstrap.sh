#!/usr/bin/env bash


cd "$(dirname "${BASH_SOURCE}")";
git pull origin main;

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	clear;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		clear;
	fi;
fi;


function installBrew() {
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
}