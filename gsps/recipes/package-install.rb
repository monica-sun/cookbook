yum_package 'gamin' do
  action :install
end

yum_package 'fcgi' do
  action :install
end

yum_package 'net-snmp' do
  action :install
end

rpm_package 'spawn-fcgi' do
  package_name node[:rpmpath][:spawnfcgi]
  action :install
end