require 'spec_helper'

describe "System spec" do
    describe "Required packages should be installed" do
        describe package('supervisor') do
            it { should be_installed }
        end
    end
    describe "Localtime should be linked to valid timezone" do
        describe file('/etc/localtime') do
            it { should be_linked_to '/usr/share/zoneinfo/Asia/Bangkok' }
        end
    end
end
