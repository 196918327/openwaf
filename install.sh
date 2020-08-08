#!/bin/bash
# openwaf install
#cs
#2020年8月4日22:51:48
#############################
DIR="/usr/local/openresty"

function installop (){
yum install -y yum-utils
yum-config-manager --add-repo https://openresty.org/package/centos/openresty.repo
yum clean all && yum makecache
yum install -y openresty
}
function setopenresty () {
mkdir -p $DIR/nginx/conf.d/
mkdir -p /var/log/nginx/cache
chown nobody.nobody -R /var/log/nginx
\cp -b nginx.conf  $DIR/nginx/conf/
if [ ! -f $DIR/nginx/conf.d/default.conf ];then
cp default.conf  $DIR/nginx/conf.d/
else
fi
mkdir -p $DIR/nginx/conf/waf/
\cp -r * $DIR/nginx/conf/waf/
ln -snf $DIR/lualib/resty $DIR/nginx/conf/waf/resty
}

if [ -d $DIR/nginx ];then
read -p "$DIR exists,continue install ? (y/n)" anzhuang
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
