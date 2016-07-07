#!/bin/bash

#
# Defined ENV
# default=site.yml
#
export PLAYBOOK=site.yml

ansible-playbook -i hosts playbooks/play.yml

rake all
