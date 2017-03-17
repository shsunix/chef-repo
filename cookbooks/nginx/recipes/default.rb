#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribu'
cookbook_file "/var/index.html" do
  source "index.html"
  mode "0644"
end
