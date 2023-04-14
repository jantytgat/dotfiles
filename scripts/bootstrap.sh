#!/usr/bin/env bash
function baseInstall() {
	brew install ansible
}

function runPlaybook() {
	cd ansible
	ansible-playbook -i inventory macos.yaml
}

cd "$(dirname "${BASH_SOURCE}")";
git pull origin main;

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	baseInstall;
	runPlaybook;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		baseInstall;
		runPlaybook;
	fi;
fi;

