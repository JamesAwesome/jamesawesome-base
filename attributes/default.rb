default['chef_client']['config'] = {
  chef_server_url: 'https://api.opscode.com/organizations/jamesawesome',
  validation_client_name: 'jamesawesome-validator',
  validation_key: '/etc/chef/jamesawesome-validator.pem',
  encrypted_data_bag_secret: '/etc/chef/encrypted_data_bag_secret'
}
