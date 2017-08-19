#
# Cookbook:: teracy-blog
# Recipe:: setup
#
# Copyright:: 2017, The Authors, All Rights Reserved.

cwd_path = node['teracy']['blog']['project_guest_path']

execute 'docker-compose pull --ignore-pull-failures --parallel' do
    cwd cwd_path
    command 'docker-compose pull --ignore-pull-failures --parallel'
end

# get the dev service up by default
execute 'docker-compose up -d dev' do
    cwd cwd_path
    command 'docker-compose up -d dev'
end
