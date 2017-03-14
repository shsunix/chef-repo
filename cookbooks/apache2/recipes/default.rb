#
# Cookbook Name:: apache2
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
apt_package "apache2" do
 action :install
end

service "apache2" do
 action [ :enable, :start ]
end

cookbook_file "/var/www/html/index.html" do
 source "index.html"
 mode "0755"
end
