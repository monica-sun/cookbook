yum_package 'gamin' do
  action :install
end

yum_package 'openssl' do
  action :upgrade

yum_package 'net-snmp' do
  action :install
end

remote_file "#{Chef::Config[:file_cache_path]}/pcre-8.12-1.icrc.x86_64.rpm" do
    source "https://s3-us-west-2.amazonaws.com/icrc-packages/common/pcre-8.12-1.icrc.x86_64.rpm"
    action :create
end

rpm_package "pcre" do
    source "#{Chef::Config[:file_cache_path]}/pcre-8.12-1.icrc.x86_64.rpm"
    action :install
end

remote_file "#{Chef::Config[:file_cache_path]}/lighttpd-1.4.35-1.el6.x86_64.rpm" do
    source "https://s3-us-west-2.amazonaws.com/icrc-packages/lighttpd-1.4.35-1.el6.x86_64.rpm"
    action :create
end

rpm_package "lighttpd" do
    source "#{Chef::Config[:file_cache_path]}/lighttpd-1.4.35-1.el6.x86_64.rpm"
    action :install
end

remote_file "#{Chef::Config[:file_cache_path]}/fcgi-2.4.0-1.icrc.x86_64.rpm" do
    source "https://s3-us-west-2.amazonaws.com/icrc-packages/fcgi-2.4.0-1.icrc.x86_64.rpm"
    action :create
end

rpm_package "fcgi" do
    source "#{Chef::Config[:file_cache_path]}/fcgi-2.4.0-1.icrc.x86_64.rpm"
    action :install
end

directory "/var/log/lighttpd" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

bash 'modify_sudoer' do
  user 'root'
  cwd '/etc'
  code <<-EOH
  sed -i 's/Defaults    requiretty/#Defaults    requiretty/g' /etc/sudoers
  EOH
end
