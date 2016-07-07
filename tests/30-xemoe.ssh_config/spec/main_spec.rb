require 'spec_helper'

describe "System spec" do
    describe "Required packages should be installed" do
        describe package('openssh-client') do
            it { should be_installed }
        end
    end
end

describe "Tasks spec" do
    describe "Given directory should be exist" do
        describe file('/opt/ssh_config') do
              it { should be_directory }
        end
    end
    describe "SSH configuration file should be exist" do
        describe file('/opt/ssh_config/config') do
              it { should be_file }
        end
    end
    describe "Private key from hosts configurations should be generated" do
        describe file('/opt/ssh_config/keys/mainbox/id_rsa') do
              it { should be_file }
        end
    end
end
