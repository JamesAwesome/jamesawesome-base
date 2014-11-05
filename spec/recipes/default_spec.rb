require_relative '../spec_helper'

describe 'base::default' do 
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '14.04').converge(described_recipe) }

  it 'sets the hostname' do
    expect(chef_run).to include_recipe('hostname')
  end

end
