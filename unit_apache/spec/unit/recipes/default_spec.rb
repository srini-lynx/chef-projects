#
# Cookbook:: unit_apache
# Spec:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'unit_apache::default' do
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

    it 'Install Apache' do
      expect(chef_run).to install_package('apache2')

    end
    it 'Apache Service Start' do
	expect(chef_run).to start_service('apache2')
    end
    it 'Apache Service Enable' do

	expect(chef_run).to enable_service('apache2')
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
    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'Install Apache' do
      expect(chef_run).to install_package('httpd')

    end
    it 'Apache Service Start' do
	expect(chef_run).to start_service('httpd')
    end
    it 'Apache Service Enable' do

	expect(chef_run).to enable_service('httpd')
    end
  end
end
