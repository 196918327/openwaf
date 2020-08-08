#!/bin/bash
# openwaf install
#cs
#2020年8月4日22:51:48
#############################

function installop (){
useradd www -s /sbin/nologin
yum install -y yum-utils
yum-config-manager --add-repo https://openresty.org/package/centos/openresty.repo
yum clean all && yum makecache
yum install -y openresty
}
function setopenresty () {
mkdir -p /usr/local/openresty/nginx/conf.d/
mkdir -p /var/log/nginx/cache
chown www.www -R /var/log/nginx/cache
\cp -b nginx.conf  /usr/local/openresty/nginx/conf/
\cp -b default.conf  /usr/local/openresty/nginx/conf.d/
mkdir -p /usr/local/openresty/nginx/conf/waf/
\cp -r * /usr/local/openresty/nginx/conf/waf/
ln -snf /usr/local/openresty/lualib/resty /usr/local/openresty/nginx/conf/waf/resty
}

if [ -d /usr/local/openresty/nginx ];then
read -p "/usr/local/openresty exists,continue install ? (y/n)" anzhuang
	if [[ $anzhuang == 'y' ]];then
	setopenresty
	else
	exit
	fi
else
installop
setopenresty
fi

if [ $? -eq 0 ];then
echo "*** Install successfully, start it with \"systemctl start openresty\""
else
echo "something error"
exit
fi
