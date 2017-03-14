<<<<<<< HEAD

apt_package "apache2" do
 action :install
end

service "apache2" do
 action [ :enable, :start ]
end

directory node['main']['doc_root'] do
 owner 'www-data'
 group 'www-data'
 mode '0644'
 action :create
end

cookbook_file "#{node['main']['doc_root']}/index.html" do
 content '<html>Hello world</html>'
 owner 'www-data'
 group 'www-data'
 action :create
end

template "/etc/apache2/sites-available/000-default.conf" do
 source "apache2.erb"
 variables({ :doc_root => node['main']['doc_root'] })
 action :create
 notifies :restart, resources(:service => "apache2")
=======
#
# Cookbook Name:: apache2
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "apache2" do
  action :uninstall
end

directory '/var/www' do
  recursive true
end

file '/var/www/index.html' do
  content '<html>Hello world</html>'
  mode '0755'
end

service "apache2" do
  action [:enable, :stop]
>>>>>>> 55253995152954901710433c154bcdd0e739edaa
end
