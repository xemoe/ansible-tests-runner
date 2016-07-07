require 'spec_helper'

describe "System spec" do
    describe "Required packages should be installed" do
        describe package('openssh-client') do
            it { should be_installed }
        end
    end
end
