#!/bin/bash
#
# Generic test-scripts for ansible roles
if [ -f requirements.yml ]; then
  echo "*** Installing requirements / dependencies ***"
  ansible-galaxy install -r requirements.yml
fi

echo "*** Checking Syntax ***"
ansible-playbook tests/test.yml -i tests/inventory --syntax-check
