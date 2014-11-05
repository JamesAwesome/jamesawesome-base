#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright (C) 2014 James Awesome
#
# All rights reserved - Do Not Redistribute
#

node.override['set_fqdn'] = node.name
log "Hostname will be set to: #{node['set_fqdn']}"

include_recipe 'hostname'

include_recipe 'base::users'
