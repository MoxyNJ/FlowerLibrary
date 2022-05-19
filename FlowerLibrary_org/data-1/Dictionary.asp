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
    <link rel="stylesheet" href="css/Dic.css">
    <!-- Bootstrap CSS 结束 -->
    <!-- 字体 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:500|Noto+Serif+SC|ZCOOL+XiaoWei" rel="stylesheet">
    <script type="text/javascript"></script>

    <title>字典 - Flower Library -</title>
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
                    <a href="Home.asp">
                        <font>HOME</font>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <font>字典</font>
                    </a>
                </li>

            </ul>
        </div>


        <div class="form-cell">
            <div class="form-cell_header">
                <div class="text-center">
                    <img class="d-md-none" src="images/logo.svg" alt="logo">
                </div>
                <div class="form-cell_title pb-2">
                    <h4 class="text-center">字典</h4>
                    <p class="shop-border-solid"></p>
                </div>
            </div>
        </div>

        <div class="dic">
            <div class="background24">
            <a href="Dic/spring.asp">
                <div class="dic_title">
                    <div class="plantdic">
                        <p class="dic_plant">植物图鉴</p>
                        <p class="dic_enplant">PLANT DICTIONARY</p>
                    </div>
                    <div class="dic_explant">
                        <p>一本了解植物的基本知识的图画书</p>
                    </div>
                    <div class="dic_info d-none d-md-block">
                        <p>这里</p>
                        <p>将按照中国传统的24节气来介绍各种植物的相关信息。</p>
                    </div>
                    <div class="dic_open">
                        <p>开启图鉴</p>
                    </div>
                </div>
            </a>
            </div>
            <div class="row dic_option">
                <div class="col-3 dic_text">
                    <a href="Dic/spring.asp">
                    <p>春</p>
                    </a>
                </div>
                <div class="col-3 dic_text">
                <a href="Dic/summer.asp">
                    <p>夏</p>
                    </a>
                </div>
                <div class="col-3 dic_text">
                <a href="Dic/autumn.asp">
                    <p>秋</p>
                    </a>
                </div>
                <div class="col-3 dic_text">
                <a href="Dic/winter.asp">
                    <p>冬</p>
                    </a>
                </div>
            </div>
        </div>





        <footer>
            <nav class="footerNav">
                <ul class="footer-nav row">
                    <li class="col-md-auto">
                        <a href="Help.asp">
                            <font>购物指南</font>
                        </a>
                    </li>
                    <li class="col-md-auto">
                        <a href="help/delivery_service_2.asp">
                            <font>配送服务</font>
                        </a>
                    </li>
                    <li class="col-md-auto">
                        <a href="help/return_3.asp">
                            <font>退换货</font>
                        </a>
                    </li>
                    <li class="col-md-auto">
                        <a href="help/company_profile_8.asp">
                            <font>公司简介</font>
                        </a>
                    </li>
                    <li class="col-md-auto">
                        <a href="#">
                            <font>相关政策</font>
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
    <script src="js/myjs.js"></script>
    <script src="js/nav-small.js"></script>
</body>
<%
set rs=nothing
conn.close
set conn=nothing
%>
</html>