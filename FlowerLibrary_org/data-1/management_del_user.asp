<%@  language="VBScript" codepage="65001" %>
<%if session("admin")<>"" then%>
<%
	else
	response.Redirect("management_login.asp")
	end if
%>
<!--#include file="conn.asp"-->
<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css/Sticky-style.css">


	<link rel="stylesheet" href="css/Pets-style.css">
	<link rel="stylesheet" href="css/Pinterest-style.css">
	<link rel="stylesheet" href="css/index-mystyle.css">
	<title>管理员user-管理界面</title>




</head>
<body>
	<div class="zzsc-container">
		<div class="wrapper wrapperThreeColumns">
			<div class="leftSidebar">
				<%
Mname = session("admin")
set rs2=server.createobject("adodb.recordset")
sql="select Mid, Mname from management where Mname='"&Mname&"'"
rs2.open sql,conn,1,1
				%>
				<div class="information message big-0">
					<img src="image/account.png" style="width: 40px;" />
				</div>
				<div class="information message">
					<h2><%=rs2("Mname") %></h2>
					<p class="my_info">管理员</p>
					<p class="my_info">ID:<%=rs2("Mid") %></p>
				</div>
				<a href="management_login.asp">
					<div class="information message little-4">注销登录</div>
				</a>
				<a href="login.asp">
					<div class="information message little-6">返回用户登录</div>
				</a>
				<a href="management_del_userSMS.asp">
					<div class="information message little-6">管理用户留言</div>
				</a>
				<a href="add.asp">
					<div class="information message little-6">填写置顶留言</div>
				</a>
			</div>
			<div class="kongqi"></div>
			<div class="content box">
				<div class="information message big-4">
					<h2>用户信息</h2>
				</div>

				<%
	set rs=server.createobject("adodb.recordset")
	sql="select * from userdata order by Uid desc"
	rs.open sql,conn,1,1
%>
                <%                                      '「组件1」
    rs.pagesize=10
    if request("page")<>"" then 
    epage=cint(request("page"))
    if epage<1 then epage=1
    if epage>rs.pagecount then epage=rs.pagecount
    else
    epage=1
    end if
    rs.absolutepage=epage '将记录指针移到第epage 页的第一行
    for i=0 to rs.pagesize-1 '循环开始「组件2」
    if rs.bof or rs.eof then exit for '不符合条件 跳出循环
%>
				<div class="">
					<div class="success message">
						<h2><%=rs("Uname")%></h2>
						<p class="user_info"></p>
						<div class="announcement message">
							<p class="user_info del-user-con">ID:<%=rs("Uid") %></p>
							<p class="user_info del-user-con">Q Q：<%=rs("Uqq") %></p>
							<p class="user_info del-user-con">邮箱：<%=rs("Uemail") %></p>
							<p class="user_info del-user-con">密码：<%=rs("Upassword")%></p>
						</div>
						<p class="Bdata">注册时间：<%=rs("Udata")%></p>
						<p class="a-del"><a href="management_deling_user.asp?Uid=<%=rs("Uid")%>" onclick="return confirm('是否确定删除本用户？注意：将会删除该用户所有已发信息！');">删除</a></p>
					</div>
				</div>
<%
rs.movenext() '移到下一条记录。「组件3」 
next 'for...next
%>
			</div>
		</div>
	</div>
<!-- 分页 开始 -->
    <div>                                                       
<p align="center"> <a href="">首页</a>&nbsp;
<a href="management_del_user.asp?page=<%=epage-1%>">前一页</a>&nbsp;
<a href="management_del_user.asp?page=<%=epage+1%>">后一页</a>&nbsp;
<a href="management_del_user.asp?page=<%=rs.pagecount%>">末页</a>
</p>
<p align="center">现在是第<%=epage%>页一共有<%=rs.pagecount%>页</p>
    </div>
<!-- 分页 结束 -->
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


<%@  language="VBScript" codepage="65001" %>
<%Response.Charset="utf-8"%>
<!--#include file="conn.asp"-->
<!--#include file="time.asp"-->

<% dim user_info_display
   dim login_info_display
    if session("user_id")<>"" then  '已经登录
    user_info_display = "block"
    login_display = "none"
    comment_visibility = "visible"
    comment_display = "none"
    comment_nonedisplay = "block"

	else                            '还没有登录
	user_info_display = "none"
	login_display = "block"
    USER_ID = "null"
    comment_visibility = "hidden"
    comment_display = "block"
    comment_nonedisplay = "none"
    end if
%>

<!-- 确认是否已经登录 -->
<%
    if session("user_id")<>"" then
%>

<%  
    
	USER_ID = Session("user_id")

	set rs=server.createobject("adodb.recordset")
	sql="select Uname, Uqq, Uemail, Uid from userdata where Uid like'"&USER_ID&"'"
	rs.open sql,conn,1,1
%>
<!-- 发送留言中的信息 -->
<%

%>

<%
    rs_Uname = rs("Uname")
    rs_Uid = rs("Uid") 
    
    else
    end if
%>

<!-- 个人信息 -->





<!-- magazine_id1.asp 的评论区分页，另一种表示方法备份在这里 -->



<!--<!doctype html>
<html lang="zh">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS 开始 -->
    <link rel="stylesheet" href="../css/nav-small.css">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/mystyle.css">
    <link rel="stylesheet" href="../css/magazine.css">
    <!-- Bootstrap CSS 结束 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:500|Noto+Serif+SC|ZCOOL+XiaoWei" rel="stylesheet">
    <script type="text/javascript"></script>
    <title>美好的一天</title>
</head>

<body>
    <div class="container-fluid-root">

        <!-- nav-small 开始 -->
        <nav class="d-block d-md-none nav-small">
            <ul class="clearfix">
                <li style="display:<%=user_info_display%>;">
                    <a href="../User_info.asp" class="nav-signup">
                        <font><%= word %></font>
                    </a>
                </li>
                <li style="display:<%=user_info_display%>;">
                    <a href="../User_info.asp" class="nav-comment">
                        <font>我的评论</font>
                    </a>
                </li>
                <li style="display:<%=login_display %>;">
                    <a href="../Login.asp" class="nav-login">
                        <font>登录</font>
                    </a>
                </li>
                <li style="display:<%=login_display %>;">
                    <a href="../Register.asp" class="nav-signup">
                        <font>注册</font>
                    </a>
                </li>
                <li>
                    <a href="../User_info.asp" class="nav-cart">
                        <font>购物车</font>
                    </a>
                </li>
                <li>
                    <a href="../User_info.asp" class="nav-wish">
                        <font>愿望清单</font>
                    </a>
                </li>
                <li>
                    <div class="b-container">
                        <div class="b-menu">
                            <div class="b-bun b-bun--top"></div>
                            <div class="b-bun b-bun--mid"></div>
                            <div class="b-bun b-bun--bottom"></div>
                        </div>
                    </div>
                </li>
            </ul>

        </nav>
        <div class="b-nav">
            <li><a class="b-link" href="../Home.asp">Home</a></li>
            <li><a class="b-link" href="../Product.asp">产品</a></li>
            <li><a class="b-link" href="../Dictionary.asp">字典</a></li>
            <li><a class="b-link" href="../Help.asp">购物指南</a></li>
            <li><a class="b-link" href="../Magazine.asp">Magazine</a></li>
            <li><a class="b-link" href="../help/contact_us_7.asp">联系我们</a></li>
        </div>
        <!-- nav-small 结束 -->

        <!-- nav-big 开始 -->
        <div class="d-none d-md-block nav-big">
            <div class="nav-logo">
                <img src="../images/logo.svg" alt="">
            </div>
            <div class="nav-big-area">
                <li style="display:<%=user_info_display%>;">
                    <a href="../User_info.asp" class="nav-signup">
                        <font><%=rs_Uname%></font>
                    </a>
                </li>
                <li style="display:<%=user_info_display%>;">
                    <a href="../User_info.asp" class="nav-comment">
                        <font>我的评论</font>
                    </a>
                </li>
                <li style="display:<%=login_display %>;">
                    <a href="../Login.asp" class="nav-login">
                        <font>登录</font>
                    </a>
                </li>
                <li style="display:<%=login_display %>;">
                    <a href="../Register.asp" class="nav-signup">
                        <font>注册</font>
                    </a>
                </li>
                <li>
                    <a href="../User_info.asp" class="nav-cart">
                        <font>购物车</font>
                    </a>
                </li>
                <li>
                    <a href="../User_info.asp" class="nav-wish">
                    </a>
                </li>
            </div>
        </div>

        <!-- nav-big 结束 -->


        <!-- nav-big-sub 开始 -->
        <div class="d-none d-md-block nav-big-sub no-home">
            <ul class="row">
                <li class="col-2">
                    <a href="../Home.asp">HOME</a>
                </li>
                <li class="col-2">
                    <a href="../Product.asp">产品</a>
                </li>
                <li class="col-2">
                    <a href="../Dictionary.asp">字典</a>
                </li>
                <li class="col-2">
                    <a href="../Help.asp">购物指南</a>
                </li>
                <li class="col-2">
                    <a href="../Magazine.asp">MAGAZINE</a>
                </li>
                <li class="col-2">
                    <a href="../help/contact_us_7.asp">联系我们</a>
                </li>
            </ul>

        </div>

        <!-- nav-big-sub 结束 -->



        <!-- 面包屑 开始 -->
        <div class="b-crumbs d-none d-sm-block">
            <ul>
                <li class="">
                    <a href="../Home.asp">
                        <font>HOME</font>
                    </a>
                </li>
                <li>
                    <a href="../Magazine.asp">
                        <font>阅读</font>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <font>一岁的樱花旭山</font>
                    </a>
                </li>
            </ul>
        </div>
        <!-- 面包屑 结束 -->

        <div class="magazine-section magazine-cell">
            <div class="magazine-cell_header">
                <div class="text-center">
                    <img class="d-md-none" src="../images/logo.svg" alt="logo">
                </div>
                <div class="magazine-cell_title pb-2">
                    <h4 class="text-center">MAGAZINE</h4>
                    <p class="shop-border-solid"></p>
                </div>
            </div>

            <div class="magazine-container">
                <h4 class="text-center">一岁的樱花旭山</h4>
                <p class="card-text text-muted text-center">2019年4月3日</p>
                <div class="magazine-text">
                    <p>3月7日，关于含羞草的一天，男子们举办了关于含羞草的讲座和研讨会。</p>
                    <img class="" src="../images/banner-2.jpg">
                    <p>3月8日是联合国决定的<strong>国际妇女节。</strong></p>
                    <p>在意大利，这一天，“FESTA DELLA DONNA（Festa della Donna =妇女节）”被给予，男人们给他们的母亲，妻子，商业同事等提供含羞草，并且每天都要感谢。</p>
                    <p>它从此被称为<i>“含羞草之日”。</i></p>
                    <p>那些被称为含羞草的女性，据说要求爱和幸福，她们会用乳房和头发自豪地装饰它们。此外，我们免于家务和儿童保育，与女性一起外出就餐，聊天，享受双方之间的自由。</p>
                    <p>随着国际妇女节</p>
                    <img src="../images/shop-info.jpg">
                    <p>在1910年哥本哈根举行的国际社会主义会议上，女工于1904年3月8日举行示威活动，寻求妇女的选举权。妇女的政治自由和平等国际妇女节是在同一年颁布的，因为它主张参加战斗。此后，由于战争等原因，它暂时被暂停，但从1965年代末开始，妇女解放运动的兴趣再次升高，1975年，联合国颁布了联合国，妇女平等参与社会呼吁成员国维持
                        此外，随着国际妇女节之后的事件，1917年俄罗斯的二月革命（当时在彼得格勒当时的首都女工的示威）和1923年3月8日发生在日本其中包括社会主义女权组织的第一次集会。</p>
                    <p>源大田市场花卉俱乐部中央批发合作青年俱乐部：</p>
                </div>


        <!-- 发送留言 开始 -->


        
        <form class="comment-input" id="message-form" action="user_SMSsave.asp" method="post">
             <h5>评论</h5>
            <input class="C-Bmagazine" type="text" name="Bmagazine" id="Bmagazine" value="1" />
            <div class="form-input">
                    <textarea id="Bcontent" name="Bcontent" placeholder="写下此刻的想法..." tabindex="4" required style="display:<%=comment_nonedisplay%>;"></textarea>
                <h5 style="border-bottom:none;height:83px;line-height:83px;padding:0 20px;color: #999;font-weight:normal;display:<%=comment_display%>;">请先登录再评论...</h5>
            </div>
                            <button type="submit" class="" name="Submit1" style="display:<%=comment_nonedisplay%>;">发送</button>
                            <button type="submit" class="" name="Submit1" style="display:<%=comment_display%>; margin:10px auto; position:inherit;">登录</button>
<!--    					<button type="button" class="" id="close" name="bottom" onclick="window.location.href='index.asp'">取消</button> -->
                            <h4 style="display:<%=comment_nonedisplay%>;">
                                <font><%=rs_Uname%></font>
                                <span class="dot">•</span>
                                <em>ID:<%=rs_Uid %></em>
                            </h4>
        </form>
        <!-- 发送留言 结束 -->

        <!-- 评论 开始 -->
                <div class="m-comment magazine-cell">
                    <h4>评论列表</h4>
                    <div class="m-comment_list">
                        <ul>

                            <%

set rs2=server.createobject("adodb.recordset")
sql="select Uname, Uqq, Uemail, Bcontent,Bmagazine, Bdata, userdata.Uid from Bigdata, userdata where Bigdata.Bmagazine = 1 and Bigdata.Uid = userdata.Uid order by Bid desc"
rs2.open sql,conn,1,1
%>
                <%                                      '「组件1」
    rs2.pagesize=10
    if request("page")<>"" then 
    epage=cint(request("page"))
    if epage<1 then epage=1
    if epage>rs2.pagecount then epage=rs2.pagecount
    else
    epage=1
    end if
    rs2.absolutepage=epage '将记录指针移到第epage 页的第一行
    for i=0 to rs2.pagesize-1 '循环开始「组件2」
    if rs2.bof or rs2.eof then exit for '不符合条件 跳出循环
%>

<%  
rs2_Uname = rs2("Uname")
rs2_Uid = rs2("Uid")
rs2_Bdata = rs2("Bdata")
rs2_Bcontent = rs2("Bcontent")
rs2_Bdata = DateStringFromNow(rs2("Bdata"))

%>
                            <li>
                                <h5 class="m-header">
                                    <font><%=rs2_Uname%></font>
                                    <em>ID:<%=rs2_Uid%></em>
                                    <span class="dot">•</span>
                                    <em><%=rs2_Bdata%></em>
                                </h5>
                                <p><%=rs2_Bcontent%></p>
                            </li>
<%
rs2.movenext() '移到下一条记录。「组件3」 
next 'for...next
%>
                        </ul>
                        <!-- 分页 开始 -->
    <div>                                                       
<p align="center"> <a href="magazine_id1.asp">首页</a>&nbsp;
<a href="magazine_id1.asp?page=<%=epage-1%>">前一页</a>&nbsp;
<a href="magazine_id1.asp?page=<%=epage+1%>">后一页</a>&nbsp;
<a href="magazine_id1.asp?page=<%=rs2.pagecount%>">末页</a>
</p>
<p align="center">现在是第<%=epage%>页一共有<%=rs2.pagecount%>页</p>
    </div>
<!-- 分页 结束 -->
                    </div>
                </div>
            </div>
<!-- 评论 结束 -->


        </div>


        <!-- 畅销 开始 -->
        <div class="home-sell magazine-sell">
            <div class="magazine-cell">
                <div class="magazine-cell_header">
                    <div class="magazine-cell_title pb-2">
                        <h4 class="text-center">畅销推荐</h4>
                        <p class="shop-border-solid"></p>
                    </div>
                </div>
            </div>
            <div class="magazine-special shop-footer">
                <div class="row pt-4_5 pb-2 pr-4 shop-footer-info">
                    <div class="col-6 col-md-3 pl-4 pr-0">
                        <img class="shop-info" src="../images/banner-sm-1.jpg" alt="">
                        <p class="mb-0 mt-1">美丽的花朵1</p>
                    </div>
                    <div class="col-6 col-md-3 pl-4 pr-0 pb-4">
                        <img class="shop-info" src="../images/banner-sm-1.jpg" alt="">
                        <p class="mb-0 mt-1">魅力的花朵2</p>
                    </div>
                    <div class="col-6 col-md-3 pl-4 pr-0 pb-4">
                        <img class="shop-info" src="../images/banner-sm-1.jpg" alt="">
                        <p class="mb-0 mt-1">魅力的花朵3</p>
                    </div>
                    <div class="col-6 col-md-3 pl-4 pr-0 pb-4">
                        <img class="shop-info" src="../images/banner-sm-1.jpg" alt="">
                        <p class="mb-0 mt-1">魅力的花朵4，如果我多写一点，</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- 畅销 结束 -->





        <!-- Magazine card -->
        <div class="magazine-cell">
            <div class="magazine-cell_header">
                <div class="magazine-cell_title pb-2">
                    <h4 class="text-center">Magazine</h4>
                    <p class="shop-border-solid"></p>
                </div>
            </div>
            <div class="row container-fluid-root">
                <div class="col-md-3 card d-inline-block">
                    <div class="d-flex align-items-center home-magazine-img">
                        <img class="card-img-top d-block w-100" src="../images/banner-sm-1.jpg" alt="Magazine">
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title">荞麦面系列</h5>
                        <p class="card-text text-muted">2019年4月3日</p>
                        <p class="card-text d-md-none d-lg-block">传统的8个陶器产品遍布全国各地，3月23日，引来众多游人的观赏……传统的陶器产品遍布全国各地
                        </p>
                    </div>
                </div>

                <div class="col-md-3 card d-inline-block">
                    <div class="d-flex align-items-center home-magazine-img">
                        <img class="card-img-top d-block w-100" src="../images/banner-sm-1.jpg" alt="Magazine">
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title">美味荞麦面之旅的开始,何处停止？</h5>
                        <p class="card-text text-muted">2019年4月3日</p>
                        <p class="card-text d-md-none d-lg-block">传统的8个陶器产品遍布全国各地，3月23日，引来众多游人的观赏……传统的陶器产品遍布全国各地
                        </p>
                    </div>
                </div>

                <div class="col-md-3 card d-inline-block">
                    <div class="d-flex align-items-center home-magazine-img">
                        <img class="card-img-top d-block w-100" src="../images/banner-sm-1.jpg" alt="Magazine">
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title">荞麦面系列</h5>
                        <p class="card-text text-muted">2019年4月3日</p>
                        <p class="card-text d-md-none d-lg-block">传统的8个陶器产品遍布全国各地，3月23日，引来众多游人的观赏……传统的陶器产品遍布全国各地
                        </p>
                    </div>
                </div>

                <div class="col-md-3 card d-inline-block">
                    <div class="d-flex align-items-center home-magazine-img">
                        <img class="card-img-top d-block w-100" src="../images/banner-sm-1.jpg" alt="Magazine">
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title">荞麦面系列</h5>
                        <p class="card-text text-muted">2019年4月3日</p>
                        <p class="card-text d-md-none d-lg-block">传统的8个陶器产品遍布全国各地，3月23日，引来众多游人的观赏……传统的陶器产品遍布全国各地
                        </p>
                    </div>
                </div>
            </div>
        </div>




        <!-- 植物图鉴 开始 -->
        <div class="common dic" style="position: relative;">
            <a class="for-go" href="#"></a>
            <div class="background24">
                <div class="dic_title_sm">
                    <div class="plantdic">
                        <p class="dic_plant">
                            <font>植物图鉴</font>
                        </p>
                        <p class="dic_enplant">
                            <font>PLANT DICTIONARY</font>
                        </p>
                    </div>
                    <div class="dic_explant">
                        <p></p>
                    </div>
                    <div class="dic_open">
                        <p>开启图鉴</p>
                        <p class="Abook">一本24节气和植物的图画书</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- 植物图鉴 结束 -->



        <footer>
            <nav class="footerNav">
                <ul class="footer-nav row">
                    <li class="col-md-auto">
                        <a>
                            <font>购物指南</font>
                        </a>
                    </li>
                    <li class="col-md-auto">
                        <a>
                            <font>购物指南</font>
                        </a>
                    </li>
                    <li class="col-md-auto">
                        <a>
                            <font>购物指南</font>
                        </a>
                    </li>
                    <li class="col-md-auto">
                        <a>
                            <font>购物指南</font>
                        </a>
                    </li>
                    <li class="col-md-auto">
                        <a>
                            <font>购物指南</font>
                        </a>
                    </li>
                    <li class="footer-chat col-md">
                        <ul class="">
                            <li>
                                <a href="#"><img src="../images/footer-wechat.svg" alt="微信"></a>
                            </li>
                            <li>
                                <a href="#"><img src="../images/footer-ins.svg" alt="Instagram"></a>
                            </li>
                            <li>
                                <a href="#"><img src="../images/footer-weibo.svg" alt="微博"></a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <div class="footerLogo">
                <img src="../images/logo-lg.svg">
            </div>
            <div class="footerCopyright">
                <p>
                    <font>© 2022 Flower Library, Inc. 保留所有权利</font>
                    <font>该网站仅为学习制作，不具有实际用途</font>
                </p>
                <p>
                    <font><i></i>晋ICP备2021017941号</font>
                </p>
            </div>
        </footer>




    </div>









    <!-- Js 区 -->
    <!-- Optional JavaScript -->
    <!-- bootstrap 引用 -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
        integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
        integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous">
    </script>
    <script src="../js/myjs.js"></script>
    <script src="../js/nav-small.js"></script>
</body>

<%

rs2.close
set rs=nothing
set rs2=nothing
conn.close
set conn=nothing
%>

</html>-->