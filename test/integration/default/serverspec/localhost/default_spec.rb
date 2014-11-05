require_relative '../spec_helper'

describe command('hostname -f') do
  its(:stdout) { should match "test-kitchen.jamestheaweso.me" }
end
