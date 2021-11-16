<%@  language="VBScript" codepage="65001" %>
<!--#include file="conn.asp"-->
<!--#include file="time.asp"-->
<%if session("user_id")<>"" then%>
<%
	else
	response.Redirect("login.asp")
	end if
%>

<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="utf-8" />


	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css/Sticky-style.css">

	<link rel="stylesheet" href="css/Back-style.css">



	<link rel="stylesheet" href="css/Pets-style.css">
	<link rel="stylesheet" href="css/Pinterest-style.css">
	<link rel="stylesheet" href="css/index-mystyle.css">

	<title>留言板</title>
</head>
<body class="backgroundcoloR">

	<div class="zzsc-container">
		<div class="wrapper wrapperThreeColumns">
			<div class="leftSidebar">
				<%
user_id = session("user_id")
set rs2=server.createobject("adodb.recordset")
sql="select Uid, Uname, Uqq, Uemail from userdata where Uid='"&user_id&"'"
rs2.open sql,conn,1,1
				%>

				<div class="information message big-0">
					<img src="image/account.png" style="width: 40px;" />
				</div>
				<div class="information message">
					<h2><%=rs2("Uname") %></h2>
					<div>
						<p class="my_info">我的ID：<%=rs2("Uid") %></p>
						<p class="my_info">我的QQ：<%=rs2("Uqq") %></p>
						<p class="my_info">我的邮箱：<%=rs2("Uemail") %></p>

					</div>
				</div>
				<a href="user_logout.asp">
					<div class="information message little-4">注销登录</div>
				</a>
				<a href="user_info.asp">
					<div class="information message little-4">我的留言</div>
				</a>
				<a href="user_SMS.asp">
					<div class="information message little-4">填写留言</div>
				</a>
			</div>



			<div class="kongqi"></div>
			<div class="content box">
				<div class="information message big-2">
					<h2>首页</h2>
				</div>
				<%
set rs=server.createobject("adodb.recordset")
sql="select Uname, Uqq, Uemail, Bcontent, Bdata, userdata.Uid from Bigdata, userdata where Bigdata.Uid = userdata.Uid order by Bid desc"
rs.open sql,conn,1,1
				%>
				<%do while not rs.eof%>
				<div class="karya">
					<div class="success message">
						<h2><%=rs("Uname")%></h2>
						<p class="user_info">ID:<%=rs("Uid") %>,QQ:<%=rs("Uqq") %>,Email:<%=rs("Uemail") %></p>
						<div class="announcement message">
							<p class="Bcontent"><%=rs("Bcontent")%></p>
						</div>
						<p class="Bdata"><%=DateStringFromNow(rs("Bdata"))%></p>
					</div>
				</div>
				<%rs.movenext
loop %>
			</div>

		</div>
		<div class="footer" style="text-align: center; margin: 10px 0; font: normal 14px/24px 'MicroSoft YaHei';">
			<p>你找到最底下了呦 ~</p>
		</div>
	</div>

	<script src="js/Pinterest-jquery.min.js"></script>
	<script src="js/Pinterest-index.js"></script>
	<script src="js/Sticky-jquery-1.11.0.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/Sticky-theia-sticky-sidebar.min.js"></script>
	<script>
	$(document).ready(function() {
		$('.leftSidebar, .content, .rightSidebar')
			.theiaStickySidebar({
				additionalMarginTop: 30
			});
	});
	</script>

</body>
<%
rs.close
rs2.close
set rs=nothing
set rs2=nothing
conn.close
set conn=nothing
%>
</html>

