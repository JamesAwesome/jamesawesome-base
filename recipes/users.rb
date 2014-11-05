#
# Cookbook Name:: base
# Recipe:: users
#
# Copyright (C) 2014 James Awesome
#
# All rights reserved - Do Not Redistribute
#

include_recipe "users"

users_manage "devops" do
  action [:create]
end
