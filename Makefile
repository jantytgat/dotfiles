#bootstrap:
#	sh scripts/bootstrap.sh

macos:
	brew install ansible
	ansible-playbook -i ansible/inventory -K ansible/macos.yaml	