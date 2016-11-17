#
# Cookbook Name:: stackdriver-agent
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute 'Add repository' do
  command 'curl -o /etc/apt/sources.list.d/stackdriver.list http://repo.stackdriver.com/trusty.list'
end

execute 'Add key' do
  command 'curl --silent https://app.stackdriver.com/RPM-GPG-KEY-stackdriver |apt-key add -'
end

apt_update 'apt update' do
  action :update
end

apt_package 'stackdriver-agent'

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

