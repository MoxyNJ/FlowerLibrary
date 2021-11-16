<%@  language="VBScript" codepage="65001" %>
<!--#include file="conn.asp"-->
<!--#include file="time.asp"-->

<%if session("user_id")<>"" then%>
<%
	else
	response.Redirect("login.asp")
	end if
%>

<%

dim user_id 
	user_id = session("user_id")


set rs=server.createobject("adodb.recordset")
sql="select * from userdata where Uid='"&user_id&"'"
rs.open sql,conn,1,1
%>

<!DOCTYPE html lang="zh">
<html>
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css/Sticky-style.css">


	<link rel="stylesheet" href="css/Pets-style.css">
	<link rel="stylesheet" href="css/Pinterest-style.css">
	<link rel="stylesheet" href="css/index-mystyle.css">
	<title><%=rs("Uname") %> - 留言板</title>
</head>
<body>

	<div class="zzsc-container">
		<div class="wrapper wrapperThreeColumns">
			<div class="leftSidebar">
				<div class="information message big-0">
					<img src="image/account.png" style="width: 40px;" />
				</div>
				<div class="information message">
					<h2><%=rs("Uname")%> </h2>
					<p class="my_info">I D：<%=user_id %></p>
					<p class="my_info">Q Q：<%=rs("Uqq")%> </p>
					<p class="my_info">邮箱：<%=rs("Uemail")%></p>
				</div>
				<a href="user_logout.asp">
					<div class="information message little-4">注销登录</div>
				</a>
				<a href="index.asp">
					<div class="information message little-4">返回首页</div>
				</a>
                <a href="magazine_id1.asp">
                    <div class="information message little-4">阅读页面_id1</div>
                </a>
                <a href="magazine_id2.asp">
                    <div class="information message little-4">阅读页面_id2</div>
                </a>
                <a href="magazine_id3.asp">
                    <div class="information message little-4">阅读页面_id3</div>
                </a>
			</div>
			<div class="kongqi"></div>
			<div class="content box">
				<div class="information message big-4">
					<h2>我的留言</h2>
				</div>
<%
set rs2=server.createobject("adodb.recordset")
sql="select * from Bigdata where Uid='"&user_id&"' order by Bid desc"
rs2.open sql,conn,1,1
%>
<%do while not rs2.eof
%>
				<div class="karya">
					<div class="success message">
						<h2><%=rs("Uname")%></h2>
						<p class="user_info"></p>
						<div class="announcement message">
							<p class="Bcontent"><%=rs2("Bcontent") %></p>
						</div>
						<p class="Bdata">留言时间：<%=rs2("Bdata") %></p>
						<p class="a-del"><a href="user_deling.asp?Bid=<%=rs2("Bid")%>" onclick="return confirm('是否确定删除本留言？');">删除</a></p>
					</div>
				</div>
				<%         rs2.movenext
            loop  %>
			</div>





		</div>
	</div>






	<%
rs.close
rs2.close
set rs=nothing
set rs2=nothing
conn.close
set conn=nothing
	%>
</body>
</html>
