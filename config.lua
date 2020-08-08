RulePath = "/usr/local/openresty/nginx/conf/waf/wafconf/"
attacklog = "on"
logdir = "/var/log/nginx/"
UrlDeny="on"
Redirect="on"
CookieMatch="on"
postMatch="on" 
whiteModule="on" 
black_fileExt={"php","jsp"}
ipWhitelist={"127.0.0.1"}
ipBlocklist={"1.0.0.1"}
CCDeny="on"
CCrate="100/60"
html=[[
<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<h2 align="center">Encounter Firewall</h2>
]]
