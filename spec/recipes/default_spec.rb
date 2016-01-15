require_relative '../spec_helper'
require 'fauxhai'

describe 'base::default' do 
  let(:chef_run) { ChefSpec::SoloRunner.new(platform:'ubuntu', version:'14.04').converge(described_recipe) }

  it 'runs without error' do
    chef_run
  end
end
