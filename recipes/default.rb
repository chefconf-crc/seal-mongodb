#
# Cookbook Name:: seal-mongodb
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#

include_recipe 'seal-mongodb::user_mongodb'
include_recipe 'seal-mongodb::package'
