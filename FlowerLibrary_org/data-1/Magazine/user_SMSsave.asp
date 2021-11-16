<%@  language="VBScript" codepage="65001"%>

<!--#include file="conn.asp"-->



<%



USER_ID = Session("user_id")


set rs=server.createobject("adodb.recordset")            
sql="select Bcontent, Bdata, Uid, Bmagazine from Bigdata"     
rs.open sql,conn,1,3


rs.addnew			'用记录集新添加一条数据

'连接第二个数据库userdata表 rs2
set rs2=server.createobject("adodb.recordset")
sql="select Uname, Uqq, Uemail, Uid from userdata where Uid like'"&USER_ID&"'"
rs2.open sql,conn,1,1

Bmagazine = Request.Form("Bmagazine")
Uid = Session("user_id")
Bdata = FormatDateTime(Now(),0)
Bcontent = Request.Form("Bcontent")	

rs("Bcontent") = Bcontent
rs("Bdata") = Bdata
rs("Uid") = Uid
rs("Bmagazine") = Bmagazine


rs.Update
rs.close
set rs = nothing



conn.close
set rs = nothing


%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- 正常的显示文字 -->

<% response.redirect(request.ServerVariables("HTTP_REFERER")) %>
<!-- 返回上一页 -->
<!--<meta http-equiv="refresh" content="0 ;URL=index.asp">-->
<!--用于刷新页面-->

