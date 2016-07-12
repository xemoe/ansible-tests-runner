#!/bin/bash

ansible-galaxy install -r requirements.yml -p ./roles/

git clone https://github.com/xemoe/ansible-server_preparations ./roles/xemoe.server_preparations
git clone https://github.com/xemoe/ansible-dotfiles ./roles/xemoe.dotfiles
git clone https://github.com/xemoe/ansible-webpack ./roles/xemoe.webpack
git clone https://github.com/xemoe/ansible-apt-cacher-ng-client ./roles/xemoe.apt-cacher-ng-client
git clone https://github.com/xemoe/ansible-ssh_config ./roles/xemoe.ssh_config
git clone https://github.com/xemoe/ansible-mount_sshfs ./roles/xemoe.mount_sshfs
git clone git@bitbucket.org:xemoe/ansible-logstash_configurations.git ./roles/xemoe.logstash_configurations

