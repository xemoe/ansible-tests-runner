# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

    config.vm.box = "gbarbieru/xenial"
    config.ssh.username = 'vagrant'
    config.ssh.password = 'vagrant'
    config.ssh.insert_key = 'false'

    config.vm.define :mainbox do |node|
        node.vm.provider :virtualbox do |vb|
            vb.name = "mainbox"
            vb.gui = false
        end
        node.vm.network :private_network, ip: "172.100.0.200"
    end

    config.vm.define :secondbox do |node|
        node.vm.provider :virtualbox do |vb|
            vb.name = "second_server"
            vb.gui = false
        end
        node.vm.network :private_network, ip: "172.100.0.201"
    end

    config.vm.define :thirdbox do |node|
        node.vm.provider :virtualbox do |vb|
            vb.name = "third_server"
            vb.gui = false
        end
        node.vm.network :private_network, ip: "172.100.0.202"
    end

end
