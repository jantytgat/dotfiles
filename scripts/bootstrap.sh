#!/usr/bin/env bash
function baseInstall() {
	brew install ansible
}

cd "$(dirname "${BASH_SOURCE}")";
git pull origin main;

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	baseInstall;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		baseInstall;
	fi;
fi;

