#
# Cookbook Name:: rad-stackdriver-agent
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

remote_file '/etc/yum.repos.d/stackdriver.repo' do
  source 'https://repo.stackdriver.com/stackdriver-amzn.repo'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

execute 'installstackdriver agent' do
  command 'yum install -y stackdriver-agent'
end

execute 'Adding to Stackdriver App' do
  command "/opt/stackdriver/stack-config --api-key #{node['stackdriver-agent']['api_key']}"
end

service 'Make sure Stackdriver-agent is started state' do
  service_name 'stackdriver-agent'
  action :start
end

service 'Make sure stackdriver-extractor is started state' do
  service_name 'stackdriver-extractor'
  action :start
end
