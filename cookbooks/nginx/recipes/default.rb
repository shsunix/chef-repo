#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'nginx' do
  action :install
end

directory "/var/www/nginx-default" do
  recursive true
end

template "/var/www/nginx-default/index.html" do
  source "index.html.erb"
  mode "0644"
end

service 'nginx' do
  action [ :enable, :start ]
end

