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
    <link rel="stylesheet" href="css/Form.css">
    <!-- Bootstrap CSS 结束 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:500|Noto+Serif+SC|ZCOOL+XiaoWei" rel="stylesheet">
    <script type="text/javascript"></script>
    <title>购物指南 - Flower Library -</title>
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
                        <font>购物指南</font>
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
                    <h4 class="text-center">购物指南</h4>
                    <p class="shop-border-solid"></p>
                </div>
            </div>
        </div>


        <div class="container-fluid-root">
            <div class="main-container">
                <div class="row">
                    <div class="left-section col-lg-auto">
                        <div class="d-none d-md-block left-title">
                            <p>如何订购</p>
                        </div>
                        <div class="d-none d-md-block left-subtitle">
                            <p>指南清单</p>
                        </div>
                        <div class="row">
                            <div class="help-option col-6 col-md-3 col-lg-12">
                                <a href="help.asp"><p>如何订购</p></a>
                            </div>
                            <div class="help-option col-6 col-md-3 col-lg-12">
                                <a href="help/delivery_service_2.asp"><p>配送服务</p></a>
                            </div>
                            <div class="help-option col-6 col-md-3 col-lg-12">
                                <a href="help/return_3.asp"><p>退换货</p>
                            </div>
                            <div class="help-option col-6 col-md-3 col-lg-12">
                                <a href="help/terms_of_use_4.asp"><p>使用条款</p></a>
                            </div>
                            <div class="help-option col-6 col-md-3 col-lg-12">
                                <a href="help/terms_of_sale_5.asp"><p>销售条款</p></a>
                            </div>
                            <div class="help-option col-6 col-md-3 col-lg-12">
                                <a href="help/privacy_policy_6.asp"><p>隐私政策</p></a>
                            </div>
                            <div class="help-option col-6 col-md-3 col-lg-12">
                                <a href="help/contact_us_7.asp"><p>联系我们</p></a>
                            </div>
                            <div class="help-option col-6 col-md-3 col-lg-12">
                                <a href="help/company_profile_8.asp"><p>公司简介</p></a>
                            </div>
                        </div>
                    </div>
                    <div class="right-section col">
                        <div class="help-section">
                            <div class="help-area">
                                <div class="help-title">
                                    <h6>关于订购</h6>
                                </div>
                                <div class="help-header">
                                    <h7>如何订购产品</h7>
                                </div>
                                <div class="help-box">
                                    <div class="main">

                                        <div class="step">
                                            <div class="row align-items-center">
                                                <div class="col-md-auto">
                                                    <div class="icon">
                                                        <img src="images/help/order-goods/step1.svg" alt="第1步">
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <p>从本网站的“ 产品”页面中找到所需的产品，如果找到要购买的产品，请将产品添加到购物车。</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="step">
                                            <div class="row align-items-center">
                                                <div class="col-md-auto">
                                                    <div class="icon">
                                                        <img src="images/help/order-goods/step2.svg" alt="第2步">
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <p>如果您已经是会员，请登录并继续购买程序。如果您是第一次使用，您可以选择通过“会员注册”购买或购买而无需会员注册。请按照您希望的方式进行购买。
                                                    </p>
                                                    <p class="notes-text">※注册成员时可以使用积分等各种会员服务。</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="step">
                                            <div class="row align-items-center">
                                                <div class="col-md-auto">
                                                    <div class="icon">
                                                        <img src="images/help/order-goods/step3.svg" alt="第3步">
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <p>请指定您的送货地址，交货日期和付款方式，并下订单。完成订单后，您将收到订单确认电子邮件。
                                                        如果您是通过银行转帐购买的，请在7天内向订单内容确认电子邮件中列出的转帐目的地付款。</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="step step-sp">
                                            <div class="row align-items-center">
                                                <div class="col-md-auto">
                                                    <div class="icon">
                                                        <img src="images/help/order-goods/step4.svg" alt="第4步">
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <p>我们会将产品交付到您首选的送货地址和日期。</p>
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                    <div class="notes">
                                        <p class="notes-text">※如果是银行转帐·便利店付款将在付款确认后发货。根据付款状态，可能无法按照所需的交货日期和时间交货。</p>
                                        <p class="notes-text">
                                            ※本网站询问您所需的交货日期/时间，但我们不保证交付您所需的交货日期/时间。由于运输原因，恶劣天气等因运输原因，新年假期，Chugen时段，暑假或其他原因，可能无法在指定的日期和时间交付。
                                        </p>
                                        <p class="notes-text">
                                            ※根据库存量，产品不合格，商品管理状况，不能在规定日期送货。在这种情况下，请注意我们可能会更改订单详情，更改付款方式或取消您的订单。</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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
                    <font>© 2019 Flower Library, Inc. 保留所有权利</font>
                    <font>京ICP证030173号</font>
                </p>
                <p>
                    <font><i></i>京公网安备11000002000001号</font>
                </p>
            </div>
        </footer>


















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