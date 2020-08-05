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
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8"><title>网站防火墙</title></head>
<body style=" background-color: #444; padding-top: 15rem;"><div style="margin: auto; width:90%;height:15rem; color:#fff; font-size:3rem; background:#6bb3f6;padding-left: 1rem;">
网站防火墙<hr>您的请求带有不合法参数，已被拦截并记录!</div></body>
</html>
]]
