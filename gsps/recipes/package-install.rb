yum_package ['gamin', 'fcgi', 'net-snmp'] do
  action :install
end

rpm_package 'spawn-fcgi' do
  package_name node[:rpmpath][:spawnfcgi]
  action :install
end