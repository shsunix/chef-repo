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

template "/etc/apache2/sites-available/000-default.conf" do
 source "apache2.erb"
 action :create
 notifies :restart, resources(:service => "apache2")
end

