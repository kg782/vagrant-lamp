#
# Cookbook Name:: angular
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'ruby'

gem_package 'compass' do
end

nodejs_npm "generator-angular" do
end
