#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright (C) 2014 James Awesome
#
# All rights reserved - Do Not Redistribute
#

node.override['set_fqdn'] = node['node_name']
include_recipe 'hostname'
