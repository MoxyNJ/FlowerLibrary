﻿<%@  language="VBScript" codepage="65001" %>

<%session("admim")="" %>
<%session.Abandon %>
<%
response.write "<script language=javascript>"
response.write "alert('注销成功！返回前台首页');"
response.write "window.location.href='login.asp';"
response.write "</script>" '用javascript脚本提示用户
	
	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>注销</title>
</head>
<body>
</body>
</html>
