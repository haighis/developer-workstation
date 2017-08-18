#
# Cookbook:: dev2
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'dev2::default' do
  context 'When all attributes are default, on an Ubuntu 16.04' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '16.04')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end

require 'serverspec'

# Required by serverspec
set :backend, :exec

describe file('/usr/lib/jvm/java-8-oracle-amd64/release'), :if => os[:family] == "ubuntu" do
  it { should contain 'JAVA_VERSION="1.8.0_31"' }
end

describe file('/usr/lib/jvm/java/release'), :if => os[:family] == "redhat" do
  it { should contain 'JAVA_VERSION="1.8.0_31"' }
end
