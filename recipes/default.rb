#
# Cookbook Name:: rad-stackdriver-agent
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute 'Add repository' do
  command 'curl -o /etc/yum.repos.d/stackdriver.repo https://repo.stackdriver.com/stackdriver-amzn.repo'
end

execute 'installstackdriver agent' do
  command "sudo yum install -y stackdriver-agent"
end

execute 'Adding to Stackdriver App' do
  command "sudo /opt/stackdriver/stack-config --api-key #{node['stackdriver-agent']['api_key']}"
end

service 'Make sure Stackdriver-agent is started state' do
  service_name 'stackdriver-agent'
  action :start
end

service 'Make sure stackdriver-extractor is started state' do
  service_name 'stackdriver-extractor'
  action :start
end

