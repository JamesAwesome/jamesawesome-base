require_relative '../spec_helper'
require 'fauxhai'

describe 'base::default' do 
  let(:chef_run) do 
    ChefSpec::SoloRunner.new(platform:'ubuntu', version:'14.04') do |node| 
      node.name('test-node.jamestheaweso.me')
    end.converge(described_recipe)
  end

  it 'sets the hostname' do
    expect(chef_run).to write_log('Hostname will be set to: test-node.jamestheaweso.me')
    expect(chef_run).to include_recipe('hostname')
  end

end
