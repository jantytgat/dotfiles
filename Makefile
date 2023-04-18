#bootstrap:
#	sh scripts/bootstrap.sh

macos:
	ansible-playbook -i ansible/inventory -K ansible/macos.yaml	