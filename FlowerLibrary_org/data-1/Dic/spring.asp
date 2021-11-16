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

    <!-- google font 引入 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+SC|Noto+Serif+SC" rel="stylesheet">

    <!-- Bootstrap CSS 开始 -->
    <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous"> -->
    <link rel="stylesheet" href="../css/nav-small.css">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/mystyle.css">
    <link rel="stylesheet" href="../css/Dic.css">
    <!-- Bootstrap CSS 结束 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:500|Noto+Serif+SC|ZCOOL+XiaoWei" rel="stylesheet">
    <script type="text/javascript"></script>
    <title>春 - Flower Library -</title>
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
                        <a href="../Dictionary.asp">
                            <font>字典</font>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <font>春</font>
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
                    <h4 class="text-center">字典</h4>
                    <p class="p-stylen">春</p>
                    <p class="shop-border-solid"></p>
                </div>
            </div>
        </div>

        <div class="dic">
            <div class="row dic_option">
                <div class="col-3 dic_text">
                    <a href="spring.asp">
                    <p class="p-stylen">春</p>
                    </a>
                </div>
                <div class="col-3 dic_text">
                <a href="summer.asp">
                    <p class="p-stylen">夏</p>
                    </a>
                </div>
                <div class="col-3 dic_text">
                <a href="autumn.asp">
                    <p class="p-stylen">秋</p>
                    </a>
                </div>
                <div class="col-3 dic_text">
                <a href="winter.asp">
                    <p class="p-stylen">冬</p>
                    </a>
                </div>
            </div>
        </div>


        <div class="dictionary">
            <!-- 一组节气，例如“春分” 开始 -->
            <div class="dictionary_words">
                <div class="plantdic">
                    <p class="dic_plant">立春</p>
                    <p class="dic_enplant">二月四日或五日</p>
                </div>
                <div class="dic_info d-none d-md-block">
                    <p>初候东风解冻，二候蛰虫始振，三候鱼陟负冰；</p>
                    <p>古时立春即春节，为一年之首，迎春抬头；</p>
                    <p>梅花消息逐近。</p>
                </div>
            </div>
            <div class="row">
                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">梅花</p>
                    </a>
                </div>

                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">宫粉</p>
                    </a>
                </div>

                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">美人</p>
                    </a>
                </div>

                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">迎春花</p>
                    </a>
                </div>

                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">连翘</p>
                    </a>
                </div>
            </div>
            <!-- 一组节气，例如“春分” 结束 -->


            <div class="dictionary_words">
                <div class="plantdic">
                    <p class="dic_plant">雨水</p>
                    <p class="dic_enplant">二月十九日或二十日</p>
                </div>
                <div class="dic_info d-none d-md-block">
                    <p>初候獭祭鱼，二候鸿雁来，三候草木萌动；</p>
                    <p>水温回升，冰雪散化为水，降雨增多；</p>
                    <p>木笔书空，菜花始盛。</p>
                </div>
            </div>
            <div class="row">
                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">二月兰</p>
                    </a>
                </div>
                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">油菜花</p>
                    </a>
                </div>
                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">紫玉兰</p>
                    </a>
                </div>
                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">二乔玉兰</p>
                    </a>
                </div>
            </div>


            <div class="dictionary_words">
                <div class="plantdic">
                    <p class="dic_plant">惊蛰</p>
                    <p class="dic_enplant">三月五日或六日</p>
                </div>
                <div class="dic_info d-none d-md-block">
                    <p>初候獭祭鱼，二候鸿雁来，三候草木萌动；</p>
                    <p>水温回升，冰雪散化为水，降雨增多；</p>
                    <p>木笔书空，菜花始盛。</p>
                </div>
            </div>
            <div class="row">
                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">紫罗兰</p>
                    </a>
                </div>
                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">桃花</p>
                    </a>
                </div>
                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">梅花</p>
                    </a>
                </div>
                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">樱花</p>
                    </a>
                </div>
            </div>

            <div class="dictionary_words">
                <div class="plantdic">
                    <p class="dic_plant">春分</p>
                    <p class="dic_enplant">三月十九日或二十日</p>
                </div>
                <div class="dic_info d-none d-md-block">
                    <p>初候獭祭鱼，二候鸿雁来，三候草木萌动；</p>
                    <p>水温回升，冰雪散化为水，降雨增多；</p>
                    <p>木笔书空，菜花始盛。</p>
                </div>
            </div>
            <div class="row">
                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">海棠春</p>
                    </a>
                </div>
                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">西府海棠</p>
                    </a>
                </div>
                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">贴梗海棠</p>
                    </a>
                </div>
                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">杏花</p>
                    </a>
                </div>
                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">梨花</p>
                    </a>
                </div>
                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">琼花</p>
                    </a>
                </div>
            </div>

            <div class="dictionary_words">
                <div class="plantdic">
                    <p class="dic_plant">清明</p>
                    <p class="dic_enplant">四月四日或五日</p>
                </div>
                <div class="dic_info d-none d-md-block">
                    <p>初候獭祭鱼，二候鸿雁来，三候草木萌动；</p>
                    <p>水温回升，冰雪散化为水，降雨增多；</p>
                    <p>木笔书空，菜花始盛。</p>
                </div>
            </div>
            <div class="row">
                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">柳树花</p>
                    </a>
                </div>
                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">杜鹃</p>
                    </a>
                </div>
                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">映山红</p>
                    </a>
                </div>
                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">桐花</p>
                    </a>
                </div>
            </div>

            <div class="dictionary_words">
                <div class="plantdic">
                    <p class="dic_plant">谷雨</p>
                    <p class="dic_enplant">四月二十日或二十一日</p>
                </div>
                <div class="dic_info d-none d-md-block">
                    <p>初候獭祭鱼，二候鸿雁来，三候草木萌动；</p>
                    <p>水温回升，冰雪散化为水，降雨增多；</p>
                    <p>木笔书空，菜花始盛。</p>
                </div>
            </div>
            <div class="row">
                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">牡丹</p>
                    </a>
                </div>
                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">二乔</p>
                    </a>
                </div>
                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">白兰花</p>
                    </a>
                </div>
                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">藤花</p>
                    </a>
                </div>
                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">梨花</p>
                    </a>
                </div>
                <div class="dictionary_group col-6 col-md-3">
                    <div class="">
                        <a href="spring/spring-11.asp">
                            <img src="../images/dic/spring/11.jpg">
                        </a>                    
                    </div>
                    <a href="spring/spring-11.asp">
                        <p class="dictionary_info dic_text">琼花</p>
                    </a>
                </div>
            </div>
        </div>




        <!-- 植物图鉴 开始 -->
        <div class="common dic" style="position: relative;">
            <a class="for-go" href="../Dictionary.asp"></a>
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
    <script src="../js/myjs.js"></script>
    <script src="../js/nav-small.js"></script>

</body>
<%

set rs=nothing
conn.close
set conn=nothing
%>
</html>