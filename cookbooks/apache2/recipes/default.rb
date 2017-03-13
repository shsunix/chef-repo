#
# Cookbook Name:: apache2
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "apache2" do
  action :install
end

directory '/var/www/html' do
  recursive true
end

file '/var/www/html/index.html' do
  content '<html>This is a test script</html>'
  mode '0755'
  owner 'web_admin'
  group 'web_admin'
end

service "apache2" do
  action [:enable, :start]
end
