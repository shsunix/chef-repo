log_level                :info
log_location             STDOUT
ssl_verify_mode          :verify_none
node_name                'admin'
client_key               '~/chef-repo/.chef/admin.pem'
validation_client_name   'mindtree-validator'
validation_key           '~/chef-repo/.chef/mindtree-validator.pem'
chef_server_url          'https://52.207.225.106/organizations/mindtree'
syntax_check_cache_path  '~/chef-repo/.chef/syntax_check_cache'
cookbook_path [ '~/chef-repo/cookbooks' ]

