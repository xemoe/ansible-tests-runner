require 'spec_helper'

describe "System spec" do
    describe "Required packages should be installed" do
        describe package('openssh-client') do
            it { should be_installed }
        end
        describe package('sshpass') do
            it { should be_installed }
        end
    end
end

ssh_config_dir = '/opt/ssh_config'
ssh_config_file = "#{ssh_config_dir}/config"
mainbox_private_key = '/opt/ssh_config/keys/mainbox/id_rsa'

ssh_target = 'mainbox'
ssh_cmd = 'ssh -o PasswordAuthentication=no'

describe "Tasks spec" do
    describe "Given directory should be exist" do
        describe file("#{ssh_config_dir}") do
              it { should be_directory }
        end
    end
    describe "SSH configuration file should be exist" do
        describe file("#{ssh_config_file}") do
              it { should be_file }
        end
    end

    describe "Private key from hosts configurations should be generated" do
        describe file("#{mainbox_private_key}") do
              it { should be_file }
        end
    end
    describe command("#{ssh_cmd} -F #{ssh_config_file} -i #{mainbox_private_key} #{ssh_target} -C \"echo yes\" 2>/dev/null | grep \"yes\" -q") do
          its(:exit_status) { should eq 0 }
    end
end
