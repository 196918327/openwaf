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
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="tex
t/html; charset=utf-8"><title>网站防火墙</title><style>p {        line-height:20px;}ul{ list-style-ty
pe:none;}li{ list-style-type:none;}</style></head><body style=" background-color:#444; padding:10; margin
:0; font:14px/1.5 Microsoft Yahei, 宋体,sans-serif; color:#555;"> <div style="margin: 0 auto; width:500px; pad
ding-top:70px; overflow:hidden;">    <div style="width:500px; float:left;">    <div style=" height:40px;
 line-height:40px; color:#fff; font-size:16.5px; overflow:hidden; background:#6bb3f6; padding-left:20px;  ">网>
站防火墙 </div>    <div style="border:1px dashed #cdcece; border-top:none; font-size:16px; background:#fff; col
or:#555; line-height:24px; height:100px; padding:20px 20px 0 20px; overflow-y:auto;background:#f3f7f9;">          
 <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-inde
nt:0px;"><span style=" font-weight:600; color:#fc4f03;">您的请求带有不合法参数，已被防火墙自动拦截并记录!</sp
an></p><p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; tex
t-indent:0px;">可能原因：您提交的内容包含危险的请求</p>    </div>  </div></div></body></html>
]]
