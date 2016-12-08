#
# Cookbook Name:: drupal
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'ruby-compass'

bash "drush" do
  user "root"
  cwd "/home/vagrant"
  code <<-EOF
    if ! type drush > /dev/null; then
      php -r "readfile('https://s3.amazonaws.com/files.drush.org/drush.phar');" > drush
      php drush core-status
      chmod +x drush
      mv drush /usr/local/bin
      drush init --no-add-path
    fi
  EOF
end