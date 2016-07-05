#!/bin/bash

ansible-galaxy install -r requirements.yml -p ./roles/
ansible-playbook -i inventories/vagrant playbooks/prepare.yml
