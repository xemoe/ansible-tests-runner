#!/bin/bash

ansible-galaxy install -r requirements.yml -p ./roles/ --ignore-errors --force
ansible-playbook -i inventories/test prepare.yml