<%@  language="VBScript" codepage="65001" %>

<%session("user_id")="" %>
<%session.Abandon %>
<%
response.write "<script language=javascript>"
response.write "alert('已注销');"
response.write "window.location.href='home.asp';"
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
