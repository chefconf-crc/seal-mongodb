#
## Cookbook Name:: seal-mongodb
## Attributes:: default
##

# Base attributes
node['mongodb']['config']['dbpath'] = '/var/lib/mongodb'
node['mongodb']['config']['logpath'] = '/var/log/mongodb/mongodb.log'
node['mongodb']['config']['port'] = '27017'
node['mongodb']['config']['bind_ip'] = 'localhost'

# User attributes
default['seal_mongodb']['group'] = 'mongod'
default['seal_mongodb']['gid'] = '1337'
default['seal_mongodb']['user'] = 'mongod'
default['seal_mongodb']['uid'] = '1337'
default['seal_mongodb']['home'] = '/var/lib/mongo'
default['seal_mongodb']['shell'] = '/bin/false'
