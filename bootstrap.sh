#!/bin/sh

set -e

# install virtualenv
sudo apt-get install python-pip python-dev build-essential virtualenvwrapper


VENV=${HOME}/.virtualenvs/ansible

virtualenv ${VENV}
. ${VENV}/bin/activate

pip install --upgrade pip

echo "Installing ansible "
pip install --upgrade -r requirements.txt

echo "Add 3rd party roles to the ones from this repository"
ansible-galaxy install -p ./roles -r requirements.yml
