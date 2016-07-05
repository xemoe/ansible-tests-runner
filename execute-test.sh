#!/bin/bash

ansible-playbook -i inventories/vagrant test_suite-playbook.yml
rake all
