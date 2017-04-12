package "apache2" do
  action :install
end

service 'apache2' do
  action [ :enable, :start ]
end

directory '/var' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

directory '/var/www' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

directory '/var/www/html' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

cookbook_file "/var/www/html/index.html" do
  source "index.html"
  mode "0644"
end

