#
# Cookbook:: unit_redis
# Spec:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'unit_redis::default' do
  context 'When all attributes are default, on Ubuntu 16.04' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '16.04')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'Install epel-release' do
      expect(chef_run).to install_package('epel-release')
    end

    it 'Install Redis' do
      expect(chef_run).to install_package('redis')
    end

    it 'Start the Redis Service' do
       expect(chef_run).to start_service('redis')
    end
    it 'Enable the Redis Service' do
       expect(chef_run).to enable_service('redis')
    end


  end

  context 'When all attributes are default, on CentOS 7.4.1708' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '7.4.1708')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
    it 'Install epel-release' do
      expect(chef_run).to install_package('epel-release')
    end

    it 'Install Redis' do
      expect(chef_run).to install_package('redis')
    end

    it 'Start the Redis Service' do
       expect(chef_run).to start_service('redis')
    end
    it 'Enable the Redis Service' do
       expect(chef_run).to enable_service('redis')
    end

  end
end
