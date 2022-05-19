

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
    <link rel="stylesheet" href="../css/nav-small.css">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/mystyle.css">
    <link rel="stylesheet" href="../css/Form.css">
    <!-- Bootstrap CSS 结束 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:500|Noto+Serif+SC|ZCOOL+XiaoWei" rel="stylesheet">
    <script type="text/javascript"></script>
    <title>配送服务 - Flower Library</title>
</head>

<body>
    <div class="container-fluid-root">
        <!-- nav-small 开始 -->
        <nav class="d-block d-md-none nav-small">
            <ul class="clearfix">
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
            <li><a class="b-link" href="../Home.asp" >Home</a></li>
            <li><a class="b-link" href="../Product.asp" >产品</a></li>
            <li><a class="b-link" href="../Dictionary.asp" >字典</a></li>
            <li><a class="b-link" href="../Help.asp" >购物指南</a></li>
            <li><a class="b-link" href="../Magazine.asp" >Magazine</a></li>
            <li><a class="b-link" href="../help/contact_us_7.asp" >联系我们</a></li>
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
                    <a href="../Help.asp">
                        <font>购物指南</font>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <font>配送服务</font>
                    </a>
                </li>
            </ul>
        </div>
        <!-- 面包屑 结束 -->


        <div class="form-cell">
            <div class="form-cell_header">
                <div class="text-center">
                    <img class="d-md-none" src="../images/logo.svg" alt="logo">
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
                            <p>配送服务</p>
                        </div>
                        <div class="d-none d-md-block left-subtitle">
                            <p>指南清单</p>
                        </div>
                        <div class="row">
                            <div class="help-option col-6 col-md-3 col-lg-12">
                                <a href="../help.asp"><p>如何订购</p></a>
                            </div>
                            <div class="help-option col-6 col-md-3 col-lg-12">
                                <a href="delivery_service_2.asp"><p>配送服务</p></a>
                            </div>
                            <div class="help-option col-6 col-md-3 col-lg-12">
                                <a href="return_3.asp"><p>退换货</p>
                            </div>
                            <div class="help-option col-6 col-md-3 col-lg-12">
                                <a href="terms_of_use_4.asp"><p>使用条款</p></a>
                            </div>
                            <div class="help-option col-6 col-md-3 col-lg-12">
                                <a href="terms_of_sale_5.asp"><p>销售条款</p></a>
                            </div>
                            <div class="help-option col-6 col-md-3 col-lg-12">
                                <a href="privacy_policy_6.asp"><p>隐私政策</p></a>
                            </div>
                            <div class="help-option col-6 col-md-3 col-lg-12">
                                <a href="contact_us_7.asp"><p>联系我们</p></a>
                            </div>
                            <div class="help-option col-6 col-md-3 col-lg-12">
                                <a href="company_profile_8.asp"><p>公司简介</p></a>
                            </div>
                        </div>
                    </div>
                    <div class="right-section col">
                        <div class="help-section">
                            <div class="help-area">
                                <div class="help-title">
                                    <h6>送货方式及相应费用</h6>
                                </div>
                                <div class="help-header">
                                    <h7>送货方式有以下几种类型：</h7>
                                </div>
                                <div class="help-box">
                                    <div class="main">
                                        <div class="delivery">
                                            <div class="sub-title">
                                                <p>1. 普通达</p>
                                            </div>
                                            <ul class="con-ul">
                                                <li>费用：10元，<p class="notes-text">*NikePlus会员及单笔订单金额满399元的访客免运费</p>
                                                </li>
                                                <li>发货：一般情况下将在完成订单支付后的1-2天安排送货</li>
                                                <li>到货：将在安排送货后的3-6天送达</li>
                                            </ul>
                                            <div class="sub-title">
                                                <p>2. 次日达</p>
                                            </div>
                                            <ul class="con-ul">
                                                <li>费用：15元</li>
                                                <li>发货及到货：上海地区用户（崇明岛除外）、苏州、杭州、南京、无锡、常州用户，当天晚上
                                                    23：00前完成订单支付可尊享次日达服务。其他次日达适用地区用户在当天下午14:00前完成订单支付，可享次日送达。具体次日达服务适用地区请点击按钮查看。
                                                </li>
                                            </ul>
                                            <div class="sub-title">
                                                <p>3. 当日达</p>
                                            </div>
                                            <ul class="con-ul">
                                                <li>费用：20元</li>
                                                <li>发货及到货：上海地区用户（崇明岛除外），苏州、杭州、无锡、常州地区的部分区域用户，当日上午11:00前完成支付可尊享当日达服务。上午11:00后完成支付的订单，预期送达日期将顺延一天。如遇节日大促或天气原因等不可抗力因素，此服务暂停。
                                                    具体次日达服务适用地区请点击按钮查看。</li>
                                            </ul>
                                            <div class="sub-title">
                                                <p>4. 说明</p>
                                            </div>
                                            <ul class="con-ul">
                                                <li>在您下单之后，您将收到有关送货和交货信息的更多详情。</li>
                                                <li>预售商品、包括SPECIAL在内的定制类商品及遇特殊情况部分商品可能不适用当日达及次日达服务，具体以相关商品页面及Flowerlibrary.com通知为准。大多数
                                                    SPECIAL 订单会在下单后约4至6周送达，请在产品页面查看预计交货时间。
                                                    送货时间和费用了解更多信息。</li>
                                            </ul>
                                            <div class="help-header">
                                                <h7>FAQ</h7>
                                            </div>
                                            <div class="sub-title">
                                                <p>1. 怎样能够免运费？</p>
                                            </div>
                                            <ul class="con-ul">
                                                <li>注册并登陆Flowerlibrary会员账户，所有订单都可以享受免费的普通达配送。订单将在结算时自动去除运费。
                                                    你可以免费注册成为Flowerlibrary会员。如果您是以访客身份下单，您将在订单满399元时享受免费的普通达配送</li>
                                            </ul>
                                            <div class="sub-title">
                                                <p>2. 我能在订单配送期间查看配送状态吗？</p>
                                            </div>
                                            <ul class="con-ul">
                                                <li>您可以在订单提交之后查看订单状态。 在订单开始配送之后您也会收到邮件通知您配送信息。</li>
                                            </ul>
                                            <div class="sub-title">
                                                <p>3. 我能够更改订单配送地址吗？</p>
                                            </div>
                                            <ul class="con-ul">
                                                <li>您不能在下单之后更改订单配送地址。您可以 取消您的订单并重新下一个新的订单。 如果您无法取消订单请联系我们。</li>
                                            </ul>
                                        </div>
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
                        <a href="../Help.asp">
                            <font>购物指南</font>
                        </a>
                    </li>
                    <li class="col-md-auto">
                        <a href="../help/delivery_service_2.asp">
                            <font>配送服务</font>
                        </a>
                    </li>
                    <li class="col-md-auto">
                        <a href="../help/return_3.asp">
                            <font>退换货</font>
                        </a>
                    </li>
                    <li class="col-md-auto">
                        <a href="../help/company_profile_8.asp">
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

set rs=nothing
conn.close
set conn=nothing
%>
</html>