<%@  language="VBScript" codepage="65001" %>
<!--#include file="conn.asp"-->



<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<!-- 正常的显示文字 -->
	<meta http-equiv="refresh" content="5;URL=login.asp">
	<!--用于刷新页面-->



	<%

Udata = FormatDateTime(Now(),0)
Uqq = Request.Form("Uqq") 
Uemail = Request.Form("Uemail") 
Uname = Request.Form("Uname")
Upassword = Request.Form("Upassword")
Upassword_check = Request.Form("Upassword_check")

if Udata="" or Uqq="" or Uemail="" or Uname="" or Upassword="" then
response.Write("<script language=javascript>alert('请填写完整!');history.back(-1)</script>") '用javascript脚本提示用户
response.end		'停止执行语句
end if	

if Upassword <> Upassword_check then
response.Write("<script language=javascript>alert('两次密码输入不一致，请重新输入!');history.back(-1)</script>")
response.end	
end if

sql="select * from userdata where Uname='"&Uname&"' and Uid='"&Uid&"'" '这句很重要，我们放到后面讲
set rsUname=conn.execute(sql) '设定记录集rs，用conn执行SQL语句
if not(rsUname.eof and rsUname.bof) then
response.Write("<script language=javascript>alert('您输入的昵称已注册，请重新输入！');history.back(-1)</script>")
rsUname.close
set rsUname = nothing
conn.close
response.end		'停止执行语句
end if

sql="select * from userdata where Uqq='"&Uqq&"'" '这句很重要，我们放到后面讲
set rsUqq=conn.execute(sql) '设定记录集rs，用conn执行SQL语句
if not(rsUqq.eof and rsUqq.bof) then
response.Write("<script language=javascript>alert('您输入的QQ已注册，请重新输入！');history.back(-1)</script>")
rsUqq.close
set rsUqq = nothing
conn.close
response.end		'停止执行语句
end if

sql="select * from userdata where Uemail='"&Uemail&"'" '这句很重要，我们放到后面讲
set rsUemail=conn.execute(sql) '设定记录集rs，用conn执行SQL语句
if not(rsUemail.eof and rsUemail.bof) then
response.Write("<script language=javascript>alert('您输入的邮箱已注册，请重新输入！');history.back(-1)</script>")
rsUemail.close
set rsUemail = nothing
conn.close
response.end		'停止执行语句
end if

set rs=server.createobject("adodb.recordset")            
sql="select Uname, Uqq, Uemail, Udata, Upassword from Userdata"  
rs.open sql,conn,1,3


rs.addnew			'用记录集新添加一条数据


rs("Uname") = Uname
rs("Uqq") = Uqq
rs("Uemail") = Uemail
rs("Udata") = Udata
rs("Upassword") = Upassword




rs.Update
rs.close
set rs = nothing


set rs2=server.createobject("adodb.recordset")            
sql="select * from userdata where Uname='"&Uname&"' and Udata='"&Udata&"'"  
rs2.open sql,conn,1,1

	%>
	<%
response.write "<script language=javascript>"
response.write "alert(成功注册，请重新登录);"
response.write "window.location.href='login.asp';"
response.write "</script>" '用javascript脚本提示用户
	%>


	<title><%=rs2("Uname") %>-注册成功</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css/Sticky-style.css">


	<link rel="stylesheet" href="css/Pets-style.css">
	<link rel="stylesheet" href="css/Pinterest-style.css">
	<link rel="stylesheet" href="css/index-mystyle.css">
	<link rel="stylesheet" href="css/Sent-style.css">
</head>
<body>
	<div class="success message" style="max-width: 600px; margin: 50px auto">
		<h2><%=rs2("Uname")%>，ID:<%=rs2("Uid") %></h2>
		<p class="user_info">注册成功，您也可以用ID登录账户</p>
		<p class="user_info"><a href="login.asp">5秒钟后将自动返回登录页面</a></p>
	</div>
	<%
	rs2.close
	set rs2=nothing
	conn.close
	%>
</body>
</html>
