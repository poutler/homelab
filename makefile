pve: 
	ansible-playbook -b main.yml --limit pve

homebox:
	ansible-playbook -b main.yml --limit homebox

decrypt:
	ansible-vault decrypt vars/vault.yml

encrypt:
	ansible-vault encrypt vars/vault.yml

gitinit:
	@./git-init.sh
	@echo "precommit hook installed for ansible vault"
	@echo "don't forget to create a .vault-password too"
