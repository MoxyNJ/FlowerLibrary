﻿<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title></title>
	<%@  language="VBScript" codepage="65001" %>
	<!--#include file="conn.asp"-->
	<%
	set rs=server.createobject("adodb.recordset")
	Bid=Request.QueryString("Bid")
	sql="select * from Bigdata where Bid='"&Bid&"'"
	rs.open sql,conn,2,3
	rs.delete
	rs.update
	%>
	<%
	rs.close
	set rs = nothing
	conn.close
	set rs = nothing
	%>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<!-- 正常的显示文字 -->
	<meta http-equiv="refresh" content="2;URL=management_del_userSMS.asp">
</head>
<body>
	已成功删除留言，2秒钟后将自动返回<a href="management_del_userSMS.asp">管理员页面</a>

</body>
</html>