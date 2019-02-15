# # encoding: utf-8

# Inspec test for recipe bcf_nginx::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

require 'spec_helper'

describe 'bcf_nginx::default' do
	context 'When all attributes are default, on UBUNTU 16.0.4' do
		let(:chef_run) do

			runner=ChefSpec::ServerRunner.new(platform: 'ubuntu',version: '16.04')
			runner.converge(described_recipe)
		end

		it 'Converges Successfully' do
			expect { chef_run}.to_not raise_error
		end

		it 'Installs NGINX' do
			expect(chef_run).to install_package('nginx')
		end

		it 'Starts the NGINX Service' do
			expect(chef_run).to start_service('nginx')
		end

		it 'enables the NGINX service' do
			expect(chef_run).to enable_service('nginx')
		end

		end
end


#unless os.windows?
  # This is an example test, replace with your own test.
#  describe user('root'), :skip do
#    it { should exist }
#  end
#end

# This is an example test, replace it with your own test.
#describe port(80), :skip do
#  it { should_not be_listening }
#end
