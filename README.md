# Ansible playbooks for local dev machine. 

Quick and dirty playbooks to setup a Linux box for dev work.

## Install dependencies
```sh
./bootstrap.sh
```

## Run dev playbook
```sh
$ ansible-playbook -i inventory --ask-become-pass devmachine.yml
```

