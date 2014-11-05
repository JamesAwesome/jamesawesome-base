require_relative '../spec_helper'

# test kitchen should use default-ubuntu-1404 as the node name, make sure
# that the hostname recipe changes the vm_hostname from test-kitchen.jamestheaweso.me to
# match this.
describe command('hostname -f') do
  its(:stdout) { should match "default-ubuntu-1404" }
end

# Ensure the hostname cookbook has been run and that it modified /etc/hosts
describe file('/etc/hosts') do
  its(:content) { should match /This file is managed by Chef, using the hostsfile cookbook/ }
end
