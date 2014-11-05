require_relative '../spec_helper'

describe 'base::users' do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '14.04').converge(described_recipe) }
  before do
    stub_data_bag('devops').and_return({
        'id' => 'james',
        'password' => '',
        'shell'    => '/bin/bash',
        'ssh_keys' => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDn5YosJ7J95BOkSVMaySzaHrlu6dMAHF1uOp3ILSt8OqoUiWvDhFN8ub1HKjRBtC4TsTN8KT9lvMEmkCekg39eWv8NyN4ZKhH3LO3gj9CrKLnXcF/6EKmpBYzTa1xwWFXC5y0knKb3igKG3G1JGqKzvRjaYCkY8nvg9SzSXUUING5Aq+eNtNGTkKD0V99thdcYKwT38JLRJBdk/0ydBs4Otyp3g5ss+OEiQ/aBioVzLI6kLBt35R7yyQ0QtGnRHasQ+YMyqAkKufNz1UFq79XSW/qymrE44L3tdrDgYBRQhE+1xG826TGU4xYsoe8VGP9LlH8z93nrQFpViTIrOtaz'
    })
  end

  it 'Creates the devops users' do
    expect(chef_run).to create_users_manage('devops')
  end
end
