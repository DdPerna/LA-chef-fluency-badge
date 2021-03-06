#
# Cookbook Name:: postgresql
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'postgresql-server' do
  notifies :run, 'execute[postgresql-init]', :immediately
end

execute 'postgresql-init' do
  command 'postgresql-setup initdb'
  action :nothing
end

service 'postgresql' do
  action [:enable, :start]
end
