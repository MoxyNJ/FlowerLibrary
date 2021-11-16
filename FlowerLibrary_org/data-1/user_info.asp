<%@  language="VBScript" codepage="65001" %>
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


<%if session("user_id")<>"" then%>
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

<!doctype html>
<html lang="zh">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS 开始 -->
    <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous"> -->
    <link rel="stylesheet" href="css/nav-small.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/mystyle.css">
    <link rel="stylesheet" href="css/Form.css">
    <!-- Bootstrap CSS 结束 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:500|Noto+Serif+SC|ZCOOL+XiaoWei" rel="stylesheet">
    <script type="text/javascript"></script>








    <title>个人信息 - Flower Library -</title>
</head>

<body>
    <div class="container-fluid-root">
        <!-- nav-small 开始 -->
        <nav class="d-block d-md-none nav-small">
            <ul class="clearfix">
                <li style="display:<%=user_info_display%>;">
                    <a href="User_info.asp" class="nav-signup">
                        <font><%=rs_Uname%></font>
                    </a>
                </li>
                <li style="display:<%=user_info_display%>;">
                    <a href="User_info.asp" class="nav-comment">
                        <font>我的评论</font>
                    </a>
                </li>
                <li style="display:<%=login_display %>;">
                    <a href="Login.asp" class="nav-login">
                        <font>登录</font>
                    </a>
                </li>
                <li style="display:<%=login_display %>;">
                    <a href="Register.asp" class="nav-signup">
                        <font>注册</font>
                    </a>
                </li>
                <li>
                    <a href="User_info.asp" class="nav-cart">
                        <font>购物车</font>
                    </a>
                </li>
                <li>
                    <a href="User_info.asp" class="nav-wish">
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
            <li><a class="b-link" href="Home.asp" >Home</a></li>
            <li><a class="b-link" href="Product.asp" >产品</a></li>
            <li><a class="b-link" href="Dictionary.asp" >字典</a></li>
            <li><a class="b-link" href="Help.asp" >购物指南</a></li>
            <li><a class="b-link" href="Magazine.asp" >Magazine</a></li>
            <li><a class="b-link" href="help/contact_us_7.asp" >联系我们</a></li>
        </div>
        <!-- nav-small 结束 -->

        <!-- nav-big 开始 -->
        <div class="d-none d-md-block nav-big">
            <div class="nav-logo">
                <img src="images/logo.svg" alt="">
            </div>
            <div class="nav-big-area">
                <li style="display:<%=user_info_display%>;">
                    <a href="User_info.asp" class="nav-signup">
                        <font><%=rs_Uname%></font>
                    </a>
                </li>
                <li style="display:<%=user_info_display%>;">
                    <a href="User_info.asp" class="nav-comment">
                        <font>我的评论</font>
                    </a>
                </li>
                <li style="display:<%=login_display %>;">
                    <a href="Login.asp" class="nav-login">
                        <font>登录</font>
                    </a>
                </li>
                <li style="display:<%=login_display %>;">
                    <a href="Register.asp" class="nav-signup">
                        <font>注册</font>
                    </a>
                </li>
                <li>
                    <a href="User_info.asp" class="nav-cart">
                        <font>购物车</font>
                    </a>
                </li>
                <li>
                    <a href="User_info.asp" class="nav-wish">
                    </a>
                </li>
            </div>
        </div>

        <!-- nav-big 结束 -->


        <!-- nav-big-sub 开始 -->
        <div class="d-none d-md-block nav-big-sub no-home">
            <ul class="row">
                <li class="col-2">
                    <a href="Home.asp">HOME</a>
                </li>
                <li class="col-2">
                    <a href="Product.asp">产品</a>
                </li>
                <li class="col-2">
                    <a href="Dictionary.asp">字典</a>
                </li>
                <li class="col-2">
                    <a href="Help.asp">购物指南</a>
                </li>
                <li class="col-2">
                    <a href="Magazine.asp">MAGAZINE</a>
                </li>
                <li class="col-2">
                    <a href="help/contact_us_7.asp">联系我们</a>
                </li>
            </ul>

        </div>

        <!-- nav-big-sub 结束 -->


        <!-- 面包屑 开始 -->
        <div class="b-crumbs d-none d-sm-block">
            <ul>
                <li class="">
                    <a href="#">
                        <font>HOME</font>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <font>产品</font>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <font>梅花</font>
                    </a>
                </li>
            </ul>
        </div>
        <!-- 面包屑 结束 -->




        <div class="form-cell">
            <div class="form-cell_header">
                <div class="text-center">
                    <img class="d-md-none" src="images/logo.svg" alt="logo">
                </div>
                <div class="form-cell_title pb-2">
                    <h4 class="text-center">购物指南</h4>
                    <p class="shop-border-solid"></p>
                </div>
            </div>
        </div>


        <div class="container-fluid-root">

            <div class="accbox">
                <div class="accnav row">
                    <div class="accnav-item col-6 col-md-3">
                        <a class="acc-black" id="acc1">我的信息</a>
                    </div>
                    <div class="accnav-item col-6 col-md-3">
                        <a id="acc2">我的留言</a>
                    </div>
                    <div class="accnav-item col-6 col-md-3">
                        <a id="acc3">愿望清单</a>
                    </div>
                    <div class="accnav-item col-6 col-md-3">
                        <a id="acc4">购物车</a>
                    </div>
                </div>

                <div class="accbox-area">

                    <div id="accountInfo1" class="collapse show">
                        <h2><%=rs("Uname")%> <em><a href="user_logout.asp">注销登录</a></em></h2>
                        <p><strong>我的I D : </strong><%=user_id %></p>
                        <p><strong>我的Q Q : </strong><%=rs("Uqq")%> </p>
                        <p><strong>电子邮箱 ：</strong><%=rs("Uemail")%></p>
                        <p><strong>注册时间 ：</strong><%=rs("Udata")%></p>
                    </div>


                    <div id="accountInfo2" class="m-comment magazine-cell collapse">
                        <h4>我的留言</h4>
                        <div class="m-comment_list">
                            <ul class="showMoreNChildren" pagesize="10">
                                <%
                                    set rs2=server.createobject("adodb.recordset")
                                    sql="select * from Bigdata where Uid='"&user_id&"' order by Bid desc"
                                    rs2.open sql,conn,1,1
                                %>
                                <%do while not rs2.eof
                                %>
                                <%    
                                    rs2_Bdata = DateStringFromNow(rs2("Bdata"))
                                %>
                                <li>
                                    <h5 class="m-header">
                                        <font>文章：<%=rs2("Bmagazine")%></font>
                                        <em><%=rs("Uname")%></em>
                                        <span class="dot">•</span>
                                        <em><%=rs2_Bdata%></em>
                                    </h5>
                                    <p><%=rs2("Bcontent") %></p>
                                    <p class="a-del"><a href="user_deling.asp?Bid=<%=rs2("Bid")%>" onclick="return confirm('是否确定删除本留言？');">删除留言</a></p>
                                </li>
                                <%rs2.movenext
                                    loop %>
                            <li>全部加载完毕</li>
                            </ul>
                        </div>
                    </div>

                    <div id="accountInfo3"></div>
                    <div id="accountInfo4"></div>

            </div>
        </div>
    </div>

    <!-- 我的信息 我的留言 我的心愿单 我的购物车 -->


        <footer>
            <nav class="footerNav">
                <ul class="footer-nav row">
                    <li class="col-md-auto">
                        <a href="Help.asp">
                            <font>购物指南</font>
                        </a>
                    </li>
                    <li class="col-md-auto">
                        <a href="help/company_profile_8.asp">
                            <font>公司简介</font>
                        </a>
                    </li>
                    <li class="col-md-auto">
                        <a href="help/delivery_service_2.asp">
                            <font>退换货政策</font>
                        </a>
                    </li>
                    <li class="col-md-auto">
                        <a href="help/delivery_service_2.asp">
                            <font>配送方式</font>
                        </a>
                    </li>
                    <li class="col-md-auto">
                        <a href="help/contact_us_7.asp">
                            <font>配送方式</font>
                        </a>
                    </li>
                    <li class="footer-chat col-md">
                        <ul class="">
                            <li>
                                <a href="#"><img src="images/footer-wechat.svg" alt="微信"></a>
                            </li>
                            <li>
                                <a href="#"><img src="images/footer-ins.svg" alt="Instagram"></a>
                            </li>
                            <li>
                                <a href="#"><img src="images/footer-weibo.svg" alt="微博"></a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <div class="footerLogo">
                <img src="images/logo-lg.svg">
            </div>
            <div class="footerCopyright">
                <p>
                    <font>© 2019 Flower Library, Inc. 保留所有权利</font>
                    <font>京ICP证030173号</font>
                </p>
                <p>
                    <font><i></i>京公网安备11000002000001号</font>
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
    <script src="js/myjs.js"></script>
    <script src="js/nav-small.js"></script>


    <script type="text/javascript">
        //点击#acc1，则显示accountInfo1,隐藏2，3，4
        $("#acc1").click(function () {
            if ($("#acc1").hasClass('acc-black')) {

            }
            else {
                $("#acc1").addClass('acc-black');
                $("#acc2").removeClass('acc-black');
                $("#acc3").removeClass('acc-black');
                $("#acc4").removeClass('acc-black');
                $("#accountInfo1").collapse('show');
                $("#accountInfo2").collapse('hide');
                $("#accountInfo3").collapse('hide');
                $("#accountInfo4").collapse('hide');
            }
        });
        $("#acc2").click(function () {
            if ($("#acc2").hasClass('acc-black')) {

            }
            else {
                $("#acc1").removeClass('acc-black');
                $("#acc2").addClass('acc-black');
                $("#acc3").removeClass('acc-black');
                $("#acc4").removeClass('acc-black');
                $("#accountInfo1").collapse('hide');
                $("#accountInfo2").collapse('show');
                $("#accountInfo3").collapse('hide');
                $("#accountInfo4").collapse('hide');
            }
        });
        $("#acc3").click(function () {
            if ($("#acc3").hasClass('acc-black')) {

            }
            else {
                $("#acc1").removeClass('acc-black');
                $("#acc2").removeClass('acc-black');
                $("#acc3").addClass('acc-black');
                $("#acc4").removeClass('acc-black');
                $("#accountInfo1").collapse('hide');
                $("#accountInfo2").collapse('hide');
                $("#accountInfo3").collapse('show');
                $("#accountInfo4").collapse('hide');
            }
        });
        $("#acc4").click(function () {
            if ($("#acc4").hasClass('acc-black')) {

            }
            else {
                $("#acc1").removeClass('acc-black');
                $("#acc2").removeClass('acc-black');
                $("#acc3").removeClass('acc-black');
                $("#acc4").addClass('acc-black');
                $("#accountInfo1").collapse('hide');
                $("#accountInfo2").collapse('hide');
                $("#accountInfo3").collapse('hide');
                $("#accountInfo4").collapse('show');
            }
        });
    </script>

        <script type="text/javascript">
        (function () {
            var showMoreNChildren = function ($children, n) {
            //显示某jquery元素下的前n个隐藏的子元素
            var $hiddenChildren = $children.filter(":hidden");
            var cnt = $hiddenChildren.length;
            for (var i = 0; i < n && i < cnt ; i++) {
                $hiddenChildren.eq(i).show();
            }
            return cnt - n;//返回还剩余的隐藏子元素的数量
            }
  
            jQuery.showMore = function (selector) {
            if (selector == undefined) { selector = ".showMoreNChildren" }
            //对页中现有的class=showMorehandle的元素，在之后添加显示更多条，并绑定点击行为
            $(selector).each(function () {
                var pagesize = $(this).attr("pagesize") || 10;
                var $children = $(this).children();
                if ($children.length > pagesize) {
                        for (var i = pagesize; i < $children.length; i++) {
                            $children.eq(i).hide();
                        }
  
                        $("<div class='showMorehandle' >加载更多</div>").insertAfter($(this)).click(function () {
                            if (showMoreNChildren($children, pagesize) <= 0) {
                                //如果目标元素已经没有隐藏的子元素了，就隐藏“点击更多的按钮条”
                                $(this).hide();
                            };
                        });
                    }
                });
            }
        })();
    </script>
    <script type="text/javascript">
    //调用显示更多插件。参数是标准的 jquery 选择符
    $.showMore(".showMoreNChildren");
  </script>
    <!-- <script type="text/javascript">
        //如果#acc中有.show的话，则显示accountInfo1,隐藏2，3，4
        $("#acc1").click(function () {
            if ($("#acc").hasClass('show')) {
                $("#accountInfo1").collapse('show');
                $("#accountInfo2").collapse('hide');
                $("#accountInfo3").collapse('hide');
                $("#accountInfo4").collapse('hide');
            }
            else {
                $("#accountInfo1").collapse('show');
                $("#accountInfo2").collapse('hide');
                $("#accountInfo3").collapse('hide');
                $("#accountInfo4").collapse('hide');
            }
        });
   </script> -->
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
