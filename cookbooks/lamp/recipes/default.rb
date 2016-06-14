#
# Cookbook Name:: lamp
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "vagrant_main"

# Install mysql custom settings
mysql_config 'default' do
  source 'mysql.default.cnf.erb'
  action :create
  notifies :restart, 'mysql_service[default]'
end