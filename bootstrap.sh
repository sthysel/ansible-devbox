#!/bin/sh

set -e
VENV=${HOME}/ansible_env

virtualenv ${VENV}
. ${VENV}/bin/activate

pip install --upgrade pip

echo "Installing ansible "
pip install --upgrade -r requirements.txt

echo "Add 3rd party roles to the ones from this repository"
ansible-galaxy install -p ./roles -r requirements.yml