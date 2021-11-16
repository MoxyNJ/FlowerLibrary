<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>用户登录-验证界面</title>


	<!--#include file="conn.asp"-->
	<% 
user_login=request.form("user_login") '定义admin的值是表单传过来的用户名域名称admin
user_password=request.form("user_password") '定义admin的值是表单传过来的用户名域名称admin

if user_login="" or user_password="" then '假如用户名和密码没有输入的话那么执行下一句
response.Write("<script language=javascript>alert('请填写完整!');history.back(-1)</script>") '用javascript脚本提示用户
response.end		'停止执行语句
end if '结束if语句

sql="select * from userdata where (convert(varchar,Uid)='"&user_login&"' and Upassword='"&user_password&"') or (Uname='"&user_login&"' and Upassword='"&user_password&"')"
set rs=conn.execute(sql) '设定记录集rs，用conn执行SQL语句
if rs.eof or rs.bof then '当没有符合筛选结果时，则执行下面的句子
response.write "<script language=javascript>"
response.write "alert('用户或密码不对!');"
response.write "javascript:history.go(-1);"
response.write "</script>" '用javascript脚本提示用户
else '如果符合条件的时候
session("user_id") = rs("Uid") '新建session，值等于表单传来的用户名
response.redirect "user_welcome.asp" '转向到add.asp，进入填写留言页面
'response.redirect(request.ServerVariables("HTTP_REFERER")) '返回上一页，不通过welcome页面跳转
end if '结束if语句
	%>
</head>
<body>
</body>
</html>
