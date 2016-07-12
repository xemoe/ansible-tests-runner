require 'spec_helper'

logstash_bin = '/opt/logstash/bin/logstash'
logstash_syslog_configurations = '/opt/logstash/conf.d/00-syslog.conf'
supervisor_program = 'supervisor_logstash'

describe "System spec" do
    describe "Required packages should be installed" do
        describe command('java -version') do
            its(:stderr) { should match /java version \"1.8/ }
        end
        describe file("#{logstash_bin}") do
            it { should be_executable }
        end
    end
end

describe "Tasks spec" do
    describe file("#{logstash_syslog_configurations}") do
          it { should be_file }
    end
    describe service("#{supervisor_program}") do
          it { should be_running.under('supervisor') }
    end
end
