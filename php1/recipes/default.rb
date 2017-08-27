#
# Cookbook:: try1
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'httpd'

['php','php-mysql','php-devel','php-gd','php-pecl-memcache','php-pspell','php-snmp','php-xmlrpc','php-xml'].each do |p|
package p do
        action :install
end
end

execute 'replacing' do
        command "sed -i 's#display_errors = On#display_errors = Off#g' /etc/php.ini"
end

file '/var/www/html/index.php' do
        content "<?php  phpinfo(); ?>"
end

service 'httpd' do
        action :restart
end
