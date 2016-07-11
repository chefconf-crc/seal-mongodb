#
# Cookbook Name:: seal-mongodb
# Recipe:: user_mongodb
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


mongouser 'mongod' do
  action :create
end
