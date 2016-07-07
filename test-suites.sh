#!/bin/bash

#
# Defined ENV
#
export PLAYBOOK=suites.yml

#
# Execute playbook
#
ansible-playbook -i hosts ${PLAYBOOK}

rake all
