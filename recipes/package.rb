yum_repository 'mongodb-org-3.2' do
  description 'mongodb RPM Repository'
  baseurl 'https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.2/x86_64/''
  gpgcheck true
  enabled true
  gpgkey 'https://www.mongodb.org/static/pgp/server-3.2.asc'
  action :create
end

##  Install the mongodb packages
%w[ mongodb-org  ].each do |pkg|
  package pkg do
    action :install
  end
end

service 'mongod' do
  action [:enable, :start]
  supports :start => true, :stop => true, :restart => true, :reload => true, :status => true
end
