#
# Cookbook Name:: seal-mongodb
# Recipe:: user_mongodb
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


group node['seal_mongodb']['group'] do
  action :modify
  members node['seal_mongodb']['user']
end

user 'mongod' do
  uid node['seal_mongodb']['uid']
  gid node['seal_mongodb']['gid']
  home node['seal_mongodb']['home']
  shell node['seal_mongodb']['shell']
end
