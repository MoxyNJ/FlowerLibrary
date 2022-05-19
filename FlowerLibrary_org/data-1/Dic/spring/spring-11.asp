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
    <link rel="stylesheet" href="../../css/nav-small.css">
    <link rel="stylesheet" href="../../css/bootstrap.css">
    <link rel="stylesheet" href="../../css/mystyle.css">
    <link rel="stylesheet" href="../../css/Dic.css">
    <link rel="stylesheet" href="../../css/magazine.css">
    <!-- Bootstrap CSS 结束 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:500|Noto+Serif+SC|ZCOOL+XiaoWei" rel="stylesheet">
    <script type="text/javascript"></script>
    <title>梅花 - Flower Library -</title>
</head>

<body>
    <div class="container-fluid-root">

        <!-- nav-small 开始 -->
        <nav class="d-block d-md-none nav-small">
            <ul class="clearfix">
                <li style="display:<%=user_info_display%>;">
                    <a href="../../User_info.asp" class="nav-signup">
                        <font><%=rs_Uname%></font>
                    </a>
                </li>
                <li style="display:<%=user_info_display%>;">
                    <a href="../../User_info.asp" class="nav-comment">
                        <font>我的评论</font>
                    </a>
                </li>
                <li style="display:<%=login_display %>;">
                    <a href="../../Login.asp" class="nav-login">
                        <font>登录</font>
                    </a>
                </li>
                <li style="display:<%=login_display %>;">
                    <a href="../../Register.asp" class="nav-signup">
                        <font>注册</font>
                    </a>
                </li>
                <li>
                    <a href="../../User_info.asp" class="nav-cart">
                        <font>购物车</font>
                    </a>
                </li>
                <li>
                    <a href="../../User_info.asp" class="nav-wish">
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
            <li><a class="b-link" href="../../Home.asp" >Home</a></li>
            <li><a class="b-link" href="../../Product.asp" >产品</a></li>
            <li><a class="b-link" href="../../Dictionary.asp" >字典</a></li>
            <li><a class="b-link" href="../../Help.asp" >购物指南</a></li>
            <li><a class="b-link" href="../../Magazine.asp" >Magazine</a></li>
            <li><a class="b-link" href="../../help/contact_us_7.asp" >联系我们</a></li>
        </div>
        <!-- nav-small 结束 -->

        <!-- nav-big 开始 -->
        <div class="d-none d-md-block nav-big">
            <div class="nav-logo">
                <img src="../../images/logo.svg" alt="">
            </div>
            <div class="nav-big-area">
                <li style="display:<%=user_info_display%>;">
                    <a href="../../User_info.asp" class="nav-signup">
                        <font><%=rs_Uname%></font>
                    </a>
                </li>
                <li style="display:<%=user_info_display%>;">
                    <a href="../../User_info.asp" class="nav-comment">
                        <font>我的评论</font>
                    </a>
                </li>
                <li style="display:<%=login_display %>;">
                    <a href="../../Login.asp" class="nav-login">
                        <font>登录</font>
                    </a>
                </li>
                <li style="display:<%=login_display %>;">
                    <a href="../../Register.asp" class="nav-signup">
                        <font>注册</font>
                    </a>
                </li>
                <li>
                    <a href="../../User_info.asp" class="nav-cart">
                        <font>购物车</font>
                    </a>
                </li>
                <li>
                    <a href="../../User_info.asp" class="nav-wish">
                    </a>
                </li>
            </div>
        </div>

        <!-- nav-big 结束 -->


        <!-- nav-big-sub 开始 -->
        <div class="d-none d-md-block nav-big-sub no-home">
            <ul class="row">
                <li class="col-2">
                    <a href="../../Home.asp">HOME</a>
                </li>
                <li class="col-2">
                    <a href="../../Product.asp">产品</a>
                </li>
                <li class="col-2">
                    <a href="../../Dictionary.asp">字典</a>
                </li>
                <li class="col-2">
                    <a href="../../Help.asp">购物指南</a>
                </li>
                <li class="col-2">
                    <a href="../../Magazine.asp">MAGAZINE</a>
                </li>
                <li class="col-2">
                    <a href="../../help/contact_us_7.asp">联系我们</a>
                </li>
            </ul>

        </div>

    
            <!-- 面包屑 开始 -->
            <div class="b-crumbs d-none d-sm-block">
                <ul>
                    <li class="">
                        <a href="../../Home.asp">
                            <font>HOME</font>
                        </a>
                    </li>
                    <li>
                        <a href="../../Dictionary.asp">
                            <font>字典</font>
                        </a>
                    </li>
                    <li>
                        <a href="../spring.asp">
                            <font>春</font>
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
                    <img class="d-md-none" src="../../images/logo.svg" alt="logo">
                </div>
                <div class="form-cell_title pb-2">
                    <h4 class="text-center">字典</h4>
                    <p>春</p>
                    <p class="shop-border-solid"></p>
                </div>
            </div>
        </div>

        <div class="dic_introduce row">
            <div class="col-lg-7">
                <img class="dic_pic" src="../../images/dic/spring/11.jpg">
            </div>
            <div class="col-lg-5">
                <div class="dic_introducetext">
                    <h4>梅花</h4>
                    <div class="dic_introducetext_info">
                        <dl>
                            <dt>
                                <font>科 名</font>
                            </dt>
                            <dd>
                                <font>蔷薇科</font>
                            </dd>
                        </dl>

                        <dl>
                            <dt>
                                <font>属 名</font>
                            </dt>
                            <dd>
                                <font>樱桃属</font>
                            </dd>
                        </dl>

                        <dl>
                            <dt>
                                <font>学 名</font>
                            </dt>
                            <dd>
                                <font>SDJOIJsdfg</font>
                            </dd>
                        </dl>

                        <dl>
                            <dt>
                                <font>原产地</font>
                            </dt>
                            <dd>
                                <font>中国</font>
                            </dd>
                        </dl>
                        <dl>
                            <dt>
                                <font>品 种</font>
                            </dt>
                            <dd>
                                <font>山东美人梅、泰国美人梅、岭南美人梅</font>
                            </dd>
                        </dl>
                        <dl>
                            <dt>
                                <font>开花期</font>
                            </dt>
                            <dd>
                                <font>春分</font>
                            </dd>
                        </dl>
                        <dl>
                            <dt>
                                <font>繁 殖</font>
                            </dt>
                            <dd>
                                <font>采用扦插、压条的方法繁殖</font>
                            </dd>
                        </dl>
                    </div>
                </div>
                <div class="poetry d-none d-lg-block">
                    <p>曲尽江流换马裘，<br>
                        美人梅下引风流；<br>
                        兰舟未解朱颜紧，<br>
                        幽怨难辞钗凤留。</p>
                    <p class="poetry_footer">西山晚别 · 李亿 唐</p>
                </div>
            </div>
        </div>

        <div class="gap gap-sm"></div>
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
                    <a href="../../Product/product_id2.asp">
                        <img class="shop-info" src="../../images/pro/pro-id1.png" alt="">
                    </a>
                        <a href="../../Product/product_id1.asp">
                            <p class="mb-0 mt-1">金钱木老桩</p>
                        </a>
                    </div>
                    <div class="col-6 col-md-3 pl-4 pr-0 pb-4">
                    <a href="../../Product/product_id2.asp">
                        <img class="shop-info" src="../../images/pro/pro-id2.png" alt="">
                    </a>
                        <a href="../../Product/product_id2.asp">
                            <p class="mb-0 mt-1">梅花盆景</p>
                        </a>
                    </div>
                    <div class="col-6 col-md-3 pl-4 pr-0 pb-4">
                    <a href="../../Product/product_id2.asp">
                        <img class="shop-info" src="../../images/pro/pro-id3.jpg" alt="">
                    </a>
                        <a href="../../Product/product_id2.asp">
                            <p class="mb-0 mt-1">三个月的杜鹃</p>
                        </a>
                    </div>
                    <div class="col-6 col-md-3 pl-4 pr-0 pb-4">
                    <a href="../../Product/product_id2.asp">
                        <img class="shop-info" src="../../images/pro/pro-id7.jpg" alt="">
                    </a>
                        <a href="../../Product/product_id2.asp">
                            <p class="mb-0 mt-1">秋叶红枫</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- 畅销 结束 -->


        <!-- Magazine card -->
        <div class="magazine-cell">
            <div class="magazine-cell_header">
                <div class="magazine-cell_title pb-2">
                    <h4 class="text-center">其他阅读</h4>
                    <p class="shop-border-solid"></p>
                </div>
            </div>
            <div class="row container-fluid-root">
                <div class="col-md-3 card d-inline-block">
                    <div class="d-flex align-items-center home-magazine-img">
                        <a href="../../Magazine/magazine_id2.asp">
                            <img class="card-img-top d-block w-100" src="../../images/magazine/magazine_id2_0.jpg" alt="Magazine">
                        </a>
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title"><a href="../../Magazine/magazine_id2.asp">【花名册】喜马拉雅蓝是什么蓝</a></h5>
                        <p class="card-text text-muted">2019年4月3日</p>
                        <p class="card-text d-md-none d-lg-block">在爱丁堡植物园（Royal Botanic Garden Edinburgh），正好赶上绿绒蒿盛开的季节。已经快到六月，爱丁堡的天气依然清冷凛冽……
                        </p>
                    </div>
                </div>

                <div class="col-md-3 card d-inline-block">
                    <div class="d-flex align-items-center home-magazine-img">
                        <a href="../../Magazine/magazine_id2.asp">
                            <img class="card-img-top d-block w-100" src="../../images/magazine/magazine_id9_0.jpg" alt="Magazine">
                        </a>
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title"><a href="../../Magazine/magazine_id2.asp">【节气手帖】白露：葛花零落风</a></h5>
                        <p class="card-text text-muted">2019年4月3日</p>
                        <p class="card-text d-md-none d-lg-block">和很多野花野草一样，葛的情味，是要长大之后才能慢慢摸索出来的。 我小时候，一度以为葛粉是全国人民普遍享用的东西…… 
                        </p>
                    </div>
                </div>

                <div class="col-md-3 card d-inline-block">
                    <div class="d-flex align-items-center home-magazine-img">
                        <a href="../../Magazine/magazine_id2.asp">
                            <img class="card-img-top d-block w-100" src="../../images/magazine/magazine_id7_0.jpg" alt="Magazine">
                        </a>
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title"><a href="../../Magazine/magazine_id2.asp">【节气手帖】霜降：拒霜花</a></h5>                        
                        <p class="card-text text-muted">2019年4月3日</p>
                        <p class="card-text d-md-none d-lg-block">在爱丁堡植物园（Royal Botanic Garden Edinburgh），正好赶上绿绒蒿盛开的季节…… 
                        </p>
                    </div>
                </div>

                <div class="col-md-3 card d-inline-block">
                    <div class="d-flex align-items-center home-magazine-img">
                        <img class="card-img-top d-block w-100" src="../../images/magazine/magazine_id8_0.jpg" alt="Magazine">
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title"><a href="../../Magazine/magazine_id2.asp">【节气手帖】寒露：板栗，爱是想触碰又收回手</a></h5>                        
                        <p class="card-text text-muted">2019年4月3日</p>
                        <p class="card-text d-md-none d-lg-block">《寻梦环游记》里，铺天盖地都是万寿菊的花瓣。准确来说……好像除了万寿菊，基本没见到别的花朵……
                        </p>
                    </div>
                </div>
            </div>
        </div>


        <!-- 植物图鉴 开始 -->
        <div class="common dic" style="position: relative;">
            <a class="for-go" href="../../Dictionary.asp"></a>
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
                        <a href="../../Help.asp">
                            <font>购物指南</font>
                        </a>
                    </li>
                    <li class="col-md-auto">
                        <a href="../../help/delivery_service_2.asp">
                            <font>配送服务</font>
                        </a>
                    </li>
                    <li class="col-md-auto">
                        <a href="../../help/return_3.asp">
                            <font>退换货</font>
                        </a>
                    </li>
                    <li class="col-md-auto">
                        <a href="../../help/company_profile_8.asp">
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
                                <a href="#"><img src="../../images/footer-wechat.svg" alt="微信"></a>
                            </li>
                            <li>
                                <a href="#"><img src="../../images/footer-ins.svg" alt="Instagram"></a>
                            </li>
                            <li>
                                <a href="#"><img src="../../images/footer-weibo.svg" alt="微博"></a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <div class="footerLogo">
                <img src="../../images/logo-lg.svg">
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
    <script src="../../js/myjs.js"></script>
    <script src="../../js/nav-small.js"></script>
</body>
<%

set rs=nothing
conn.close
set conn=nothing
%>
</html>