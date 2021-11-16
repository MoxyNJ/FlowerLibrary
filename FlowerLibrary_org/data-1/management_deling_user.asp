<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title></title>
	<%@  language="VBScript" codepage="65001" %>
	<!--#include file="conn.asp"-->


	<%
	
		

	%>



	<%
	set rs=server.createobject("adodb.recordset")
	Uid=Request.QueryString("Uid")
	sql="select * from Bigdata where Uid='"&Uid&"'"
	rs.open sql,conn,2,3
	if not(rs.eof or rs.bof) then
	rs.delete
	rs.update
	end if
	%>

	<%
	set rs2=server.createobject("adodb.recordset")
	Uid=Request.QueryString("Uid")
	sql="select * from userdata where Uid='"&Uid&"'"
	rs2.open sql,conn,2,3
	if not(rs2.eof or rs2.bof) then
	rs2.delete
	rs2.update
	end if
	%>


	<%
	rs.close
	rs2.close
	set rs = nothing
	set rs2 = nothing
	conn.close
	set rs2 = nothing
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
