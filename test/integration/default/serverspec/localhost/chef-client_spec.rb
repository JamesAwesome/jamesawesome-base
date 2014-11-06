require_relative '../spec_helper'

describe service('chef-client') do
  it { should be_running }
  it { should be_enabled }
end

describe file('/etc/chef/client.rb') do
  it { should be_file }
end
