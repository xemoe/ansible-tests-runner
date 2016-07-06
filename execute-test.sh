#!/bin/bash

ansible-playbook -i hosts site.yml
rake all
