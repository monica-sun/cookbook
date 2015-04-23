node[:deploy].each do |app_name, deploy|
  rpm_package 'spsc' do
    package_name node[:rpmpath][:spsc]
    action :install
  end
  
  rpm_package 'gsps' do
    package_name node[:rpmpath][:gsps]
    action :install
  end

  service 'lighttpd' do
  	action :start
  end
end