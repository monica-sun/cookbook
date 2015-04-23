yum_package 'gamin' do
  action :install
end

yum_package 'fcgi' do
  action :install
end

yum_package 'net-snmp' do
  action :install
end

remote_file "#{Chef::Config[:file_cache_path]}/spawn-fcgi-1.6.3-1.el6.x86_64.rpm" do
    source "http://s3-us-west-2.amazonaws.com/icrctestrpm/common/spawn-fcgi-1.6.3-1.el6.x86_64.rpm"
    action :create
end

rpm_package "spwan-fcgi" do
    source "#{Chef::Config[:file_cache_path]}/spawn-fcgi-1.6.3-1.el6.x86_64.rpm"
    action :install
end