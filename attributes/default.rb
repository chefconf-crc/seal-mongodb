#
## Cookbook Name:: seal-mongodb
## Attributes:: default
##


default['seal_mongodb']['group'] = 'mongod'
default['seal_mongodb']['gid'] = '1337'
default['seal_mongodb']['user'] = 'mongod'
default['seal_mongodb']['uid'] = '1337'
default['seal_mongodb']['home'] = '/var/lib/mongo'
default['seal_mongodb']['shell'] = '/bin/false'
