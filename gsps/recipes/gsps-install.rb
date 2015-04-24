node[:deploy].each do |app_name, deploy|
  remote_file "#{Chef::Config[:file_cache_path]}/spsc-2.81-1061.el5.x86_64.rpm" do
    source "http://s3-us-west-2.amazonaws.com/monicatest/spsc-2.81-1061.el5.x86_64.rpm"
    action :create
  end

  rpm_package "spsc" do
    source "#{Chef::Config[:file_cache_path]}/spsc-2.81-1061.el5.x86_64.rpm"
    action :install
  end

  remote_file "#{Chef::Config[:file_cache_path]}/gsps-2.81-1079.el6.x86_64.rpm" do
    source "http://s3-us-west-2.amazonaws.com/monicatest/gsps-2.81-1079.el6.x86_64.rpm"
    action :create
  end

  rpm_package "gsps" do
    source "#{Chef::Config[:file_cache_path]}/gsps-2.81-1079.el6.x86_64.rpm"
    action :install
  end

  service 'lighttpd' do
  	action :start
  end
end