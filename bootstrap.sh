#!/bin/bash

ansible-galaxy install -r requirements.yml -p ./roles/
ansible-playbook -i hosts playbooks/prepare.yml
