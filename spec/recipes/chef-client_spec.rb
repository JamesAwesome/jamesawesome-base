require_relative '../spec_helper'

describe 'base::chef_client' do
  let(:chef_run) do ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '14.04') do |node|
    node.set['chef_client']['config'] = {
        :chef_server_url        => 'https://getchef.com/example_org',
        :node_name              => 'test-node',
        :validation_client_name => 'example-validation'
      }
    end.converge(described_recipe)
  end

  it 'Should include the correct init recipe from chef-client' do
    expect(chef_run).to include_recipe('chef-client::init_service')
  end

  it 'Should start the chef-client service' do
    expect(chef_run).to start_service('chef-client')
  end

  it 'Should setup the chef client.rb' do
    expect(chef_run).to create_template('/etc/chef/client.rb')
  end
end
