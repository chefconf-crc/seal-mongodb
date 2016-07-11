resource_name :mongouser

property :mongo_user, kind_of: String, default: 'mongod'
property :mongo_uid, kind_of: String, default: '1337'
property :mongo_group, kind_of: String, default: 'mongod'
property :mongo_gid, kind_of: String, default: '1337'
property :mongo_home, kind_of: String, default: '/var/lib/mongo'
property :mongo_shell, kind_of: String, default: '/bin/false'

action :create do
  group new_resource.mongo_group do
    action :create
    gid new_resource.mongo_gid
  end 

  user 'mongod' do
    uid new_resource.mongo_uid
    gid new_resource.mongo_gid
    gid new_resource.mongo_group
    home new_resource.mongo_home
    shell new_resource.mongo_shell
  end

end
