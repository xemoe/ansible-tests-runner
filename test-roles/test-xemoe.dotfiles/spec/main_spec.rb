require 'spec_helper'

describe "System spec" do
    describe "Required packages should be installed" do
        describe package('vim') do
            it { should be_installed }
        end
        describe package('tmux') do
            it { should be_installed }
        end
        describe package('zsh') do
            it { should be_installed }
        end
        describe file('/home/vagrant/.vimrc') do
            it { should be_file }
        end
        describe file('/home/vagrant/.zshrc') do
            it { should be_file }
        end
        describe file('/home/vagrant/.tmux.conf') do
            it { should be_file }
        end
    end
end
