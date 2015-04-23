default[:rpmname][:spawnfcgi] = 'spawn-fcgi-1.6.3-1.el6.x86_64.rpm'
default[:rpmname][:lighttpdfcgi] = 'lighttpd-fastcgi-1.4.35-1.el6.x86_64.rpm'
default[:rpmpath][:root] = 'http://s3-us-west-2.amazonaws.com/icrctestrpm/common/'
default[:rpmpath][:spawnfcgi] = "#{default[:rpmpath][:root]}/#{default[:rpmname][:spawnfcgi]}"
default[:rpmpath][:lighttpdfcgi] = "#{default[:rpmpath][:root]}/#{default[:rpmname][:lighttpdfcgi]}"

default[:rpmname][:spsc] = 'spsc-2.81-1061.el5.x86_64.rpm'
default[:rpmname][:gsps] = 'gsps-2.81-1079.el6.x86_64.rpm'
default[:rpmname][:lighttpd] = 'lighttpd-1.4.35-1.el6.x86_64.rpm'
default[:rpmpath][:icrcroot] = 'http://s3-us-west-2.amazonaws.com/monicatest/'
default[:rpmpath][:spsc] = "#{default[:rpmpath][:icrcroot]}/#{default[:rpmname][:spsc]}"
default[:rpmpath][:gsps] = "#{default[:rpmpath][:icrcroot]}/#{default[:rpmname][:gsps]}"
default[:rpmpath][:lighttpd] = "#{default[:rpmpath][:icrcroot]}/#{default[:rpmname][:lighttpd]}"