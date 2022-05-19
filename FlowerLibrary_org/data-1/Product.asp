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
    <link rel="stylesheet" href="css/Product.css">

    <!-- Bootstrap CSS 结束 -->

    <!-- 字体 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:500|Noto+Serif+SC|ZCOOL+XiaoWei" rel="stylesheet">
    <script type="text/javascript"></script>

    <title>产品 - Flower Library -</title>
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
                        <font>产品</font>
                    </a>
                </li>
            </ul>
        </div>
        <!-- 面包屑 结束 -->

        <!-- 标题 开始 -->

        <div class="form-cell">
            <div class="form-cell_header">
                <div class="text-center">
                    <img class="d-md-none" src="images/logo.svg" alt="logo">
                </div>
                <div class="form-cell_title pb-2">
                    <h4 class="text-center">产品</h4>
                    <p class="shop-border-solid"></p>
                </div>
            </div>
        </div>

        <!-- 标题 结束 -->

        <!-- 产品导航 开始 -->

        <div class="pro-list p-stylecool">


                <nav class="pro-title navbar navbar-light">
                            <font>所有产品</font>
                        <button class="navbar-toggler d-block d-lg-none" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
                            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                            <div class="navbar-nav">
                                <a class="nav-item nav-link active" href="#">全部商品<span class="sr-only">(current)</span></a>
                                <a class="nav-item nav-link" href="#">每月新品</a>
                                <a class="nav-item nav-link" href="#">组合推荐</a>
                                <a class="nav-item nav-link" href="#">绿植</a>
                                <a class="nav-item nav-link" href="#">多肉</a>
                                <a class="nav-item nav-link" href="#">盆器</a>
                                <a class="nav-item nav-link" href="#">植料</a>
                            </div>
                        </div>
                    </nav>
    
                    <div class="d-none d-lg-block pro-choice-md">
                <div class="pro-title">
                    <font>筛选</font>
                </div>
                <div class="pro-chioce-i">
                    <p></p>
                </div>
                <div class="pro-choice-item p-stylenom">
                    <a href="#">
                        <p>全部商品</p>
                    </a>
                </div>
                <div class="pro-choice-item p-stylenom">
                    <a href="#">
                        <p>每月新品</p>
                    </a>
                </div>
                <div class="pro-choice-item p-stylenom">
                    <a href="#">
                        <p>组合推荐</p>
                    </a>
                </div>
                <div class="pro-choice-item p-stylenom">
                    <a href="#">
                        <p>绿植</p>
                    </a>
                </div>
                <div class="pro-choice-item p-stylenom">
                    <a href="#">
                        <p>多肉</p>
                    </a>
                </div>
                <div class="pro-choice-item p-stylenom">
                    <a href="#">
                        <p>盆器</p>
                    </a>
                </div>
                <div class="pro-choice-item p-stylenom">
                    <a href="#">
                        <p>植料</p>
                    </a>
                </div>
            </div>

            <div class="pro-itemlist row">
                <div class="pro-item col-6 col-md-4 p-stylecool">
                    <div class="pro-itempic">
                    <a href="Product/product_id1.asp">
                        <img src="images/pro/pro-id1.png" alt="">
                    </a>
                    </div>
                    <div class="pro-itemtext ">
                        <div class="h6">
                            <a href="Product/product_id1.asp">
                                <font>金钱木老桩</font>
                            </a>
                        </div>
                        <div class="pro-pricetext">
                            <font>售价：</font>
                            <font class="pro-price">¥128</font>
                            
                        </div>
                    </div>
                </div>

                <div class="pro-item col-6 col-md-4 p-stylecool">
                    <div class="pro-itempic">
                        <a href="Product/product_id2.asp">
                            <img src="images/pro/pro-id2.png" alt="">
                        </a>
                    </div>
                    <div class="pro-itemtext ">
                        <div class="h6">
                            <a href="Product/product_id2.asp">
                                <font>梅花盆景</font>
                            </a>
                        </div>
                        <div class="pro-pricetext">
                            <font>售价：</font>
                            <font class="pro-price">¥328</font>
                        </div>
                    </div>
                </div>

                <div class="pro-item col-6 col-md-4 p-stylecool">
                    <div class="pro-itempic">
                        <a href="Product/product_id2.asp">
                            <img src="images/pro/pro-id3.jpg" alt="">
                        </a>                    
                    </div>
                    <div class="pro-itemtext ">
                        <div class="h6">
                            <a href="Product/product_id2.asp">
                                <font>三个月的杜鹃</font>
                            </a>
                        </div>
                        <div class="pro-pricetext">
                            <font>售价：</font>
                            <font class="pro-price">¥88.8</font>
                            <font class="pro-saleout">售罄</font>
                        </div>
                    </div>
                </div>
                <div class="pro-item col-6 col-md-4 p-stylecool">
                    <div class="pro-itempic">
                        <a href="Product/product_id2.asp">
                            <img src="images/pro/pro-id4.jpg" alt="">
                        </a>
                    </div>
                    <div class="pro-itemtext ">
                        <div class="h6">
                            <a href="Product/product_id2.asp">
                                <font>铁海棠</font>
                            </a>
                        </div>
                        <div class="pro-pricetext">
                            <font>售价：</font>
                            <font class="pro-price">¥28.8</font>
                        </div>
                    </div>
                </div>

                <div class="pro-item col-6 col-md-4 p-stylecool">
                    <div class="pro-itempic">
                        <a href="Product/product_id2.asp">
                            <img src="images/pro/pro-id5.jpg" alt="">
                        </a>                    
                    </div>
                    <div class="pro-itemtext ">
                        <div class="h6">
                            <a href="Product/product_id2.asp">
                                <font>小叶紫檀</font>
                            </a>
                        </div>
                        <div class="pro-pricetext">
                            <font>售价：</font>
                            <font class="pro-price">¥1,288</font>
                            <font class="pro-saleout">售罄</font>
                        </div>
                    </div>
                </div>

                                <div class="pro-item col-6 col-md-4 p-stylecool">
                    <div class="pro-itempic">
                        <a href="Product/product_id2.asp">
                            <img src="images/pro/pro-id6.jpg" alt="">
                        </a>
                    </div>
                    <div class="pro-itemtext ">
                        <div class="h6">
                            <a href="Product/product_id2.asp">
                                <font>发财树</font>
                            </a>
                        </div>
                        <div class="pro-pricetext">
                            <font>售价：</font>
                            <font class="pro-price">¥99.8</font>
                        </div>
                    </div>
                </div>

                <div class="pro-item col-6 col-md-4 p-stylecool">
                    <div class="pro-itempic">
                        <a href="Product/product_id2.asp">
                            <img src="images/pro/pro-id7.jpg" alt="">
                        </a>                    
                    </div>
                    <div class="pro-itemtext ">
                        <div class="h6">
                            <a href="Product/product_id2.asp">
                                <font>秋叶红枫</font>
                            </a>
                        </div>
                        <div class="pro-pricetext">
                            <font>售价：</font>
                            <font class="pro-price">¥588</font>
                        </div>
                    </div>
                </div>

                                <div class="pro-item col-6 col-md-4 p-stylecool">
                    <div class="pro-itempic">
                        <a href="Product/product_id2.asp">
                            <img src="images/pro/pro-id8.jpg" alt="">
                        </a>
                    </div>
                    <div class="pro-itemtext ">
                        <div class="h6">
                            <a href="Product/product_id2.asp">
                                <font>金边虎皮兰</font>
                            </a>
                        </div>
                        <div class="pro-pricetext">
                            <font>售价：</font>
                            <font class="pro-price">¥328</font>
                        </div>
                    </div>
                </div>

                <div class="pro-item col-6 col-md-4 p-stylecool">
                    <div class="pro-itempic">
                        <a href="Product/product_id2.asp">
                            <img src="images/pro/pro-id9.jpg" alt="">
                        </a>                    
                    </div>
                    <div class="pro-itemtext ">
                        <div class="h6">
                            <a href="Product/product_id2.asp">
                                <font>茉莉</font>
                            </a>
                        </div>
                        <div class="pro-pricetext">
                            <font>售价：</font>
                            <font class="pro-price">¥88.8</font>
                            <font class="pro-saleout">售罄</font>
                        </div>
                    </div>
                </div>

                                <div class="pro-item col-6 col-md-4 p-stylecool">
                    <div class="pro-itempic">
                        <a href="Product/product_id2.asp">
                            <img src="images/pro/pro-id10.jpg" alt="">
                        </a>
                    </div>
                    <div class="pro-itemtext ">
                        <div class="h6">
                            <a href="Product/product_id2.asp">
                                <font>文竹</font>
                            </a>
                        </div>
                        <div class="pro-pricetext">
                            <font>售价：</font>
                            <font class="pro-price">¥108</font>
                        </div>
                    </div>
                </div>

            </div>


        </div>

        <!-- 产品导航 结束 -->





        <div class="gap"></div>

        <!-- 杂志 开始 -->
        <div class="home-magazine p-stylecool">
            <div class="magazine-header">
                <div class="magazine-title pb-2">
                    <h4 class="text-center">相关阅读</h4>
                    <p class="text-center sub-title">Magazine</p>
                    <p class="shop-border-solid"></p>
                </div>
            </div>
            <div class="row container-fluid-root home-card">
                <div class="col-md-3">
                    <div class="card h-100 d-inline-block">
                        <div class=" d-flex align-items-center home-magazine-img">
                        <a href="Magazine/magazine_id2.asp">
                            <img class="card-img-top d-block w-100" src="images/magazine/magazine_id2_0.jpg" alt="Card image cap">
                        </a>
                        </div>
                        <div class="card-body">
                            <h6 class="card-title"><a href="Magazine/magazine_id2.asp">【花名册】喜马拉雅蓝是什么蓝</a></h6>
                            <small class="text-muted">2019年01月24日</small>
                            <p class="home-text d-md-none d-lg-block p-stylenom ">
                               在爱丁堡植物园（Royal Botanic Garden Edinburgh），正好赶上绿绒蒿盛开的季节…… 
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 d-inline-block">
                        <div class=" d-flex align-items-center home-magazine-img">
                        <a href="Magazine/magazine_id1.asp">
                            <img class="card-img-top d-block w-100" src="images/magazine/magazine_id1_0.jpg" alt="Card image cap">
                        </a>
                        </div>
                        <div class="card-body">
                            <h6 class="card-title"><a href="Magazine/magazine_id1.asp">【花名册】寻梦环游的金色小精灵</a></h6>
                            <small class="text-muted">2017年12月02日</small>
                            <p class="home-text d-md-none d-lg-block p-stylenom ">《寻梦环游记》里，铺天盖地都是万寿菊的花瓣。准确来说……好像除了万寿菊，基本没见到别的花朵……</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 d-inline-block">
                        <div class=" d-flex align-items-center home-magazine-img">
                        <a href="Magazine/magazine_id1.asp">
                            <img class="card-img-top d-block w-100" src="images/magazine/magazine_id4_0.jpg" alt="Card image cap">
                        </a>
                        </div>
                        <div class="card-body">
                            <h6 class="card-title"><a href="Magazine/magazine_id2.asp">腌渍樱花：留住春天的风味</a></h6>
                            <small class="text-muted">2019年01月02日</small>
                            <p class="home-text d-md-none d-lg-block p-stylenom ">
                               又到了晚樱盛开的时候，今年的腌渍樱花可以做起来了。 之前在自己的书里画过一个步骤图，但篇幅所限…… 
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card h-100 d-inline-block">
                        <div class=" d-flex align-items-center home-magazine-img">
                        <a href="Magazine/magazine_id1.asp">
                            <img class="card-img-top d-block w-100" src="images/magazine/magazine_id5_0.jpg" alt="Card image cap">
                        </a>
                        </div>
                        <div class="card-body">
                            <h6 class="card-title"><a href="Magazine/magazine_id2.asp">【节气手帖】立冬：秋末晚菘</a></h6>
                            <small class="text-muted">2019年11月14日</small>
                            <p class="home-text d-md-none d-lg-block p-stylenom">
                                从前有个隐居山林的大才子叫周颙。有一日太子殿下请教他什么样的蔬菜最好吃……
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col d-flex card-more">
                <a href="Magazine.asp"><span>More</span></a>
                
            </div>
        </div>
        <!-- 杂志 结束 -->


        <!-- 植物图鉴 开始 -->
        <div class="common dic" style="position: relative;">
            <a class="for-go" href="Dictionary.asp"></a>
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