#!/bin/bash
# openwaf install
#cs
#2020年8月4日22:51:48
#############################
if [ -d /usr/local/openresty ];then
echo "/usr/local/openresty exists!!"
exit
fi
useradd www -s /sbin/nologin
yum install -y yum-utils
yum-config-manager --add-repo https://openresty.org/package/centos/openresty.repo
yum clean all && yum makecache
yum install -y openresty

mkdir -p /usr/local/openresty/nginx/conf.d/
mkdir -p /var/log/nginx/cache
chown www.www -R /var/log/nginx/cache
\cp nginx.conf  /usr/local/openresty/nginx/conf/
\cp default.conf  /usr/local/openresty/nginx/conf.d/
mkdir -p /usr/local/openresty/nginx/conf/waf/
\cp -r * /usr/local/openresty/nginx/conf/waf/
if [ $? -eq 0 ];then
echo "*** Install successfully, start it with \"systemctl start openresty\""
else
echo "something error"
exit
fi
