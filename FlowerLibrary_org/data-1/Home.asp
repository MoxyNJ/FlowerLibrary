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
    <!-- Bootstrap CSS 结束 -->

    <!-- 字体 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:500|Noto+Serif+SC|ZCOOL+XiaoWei" rel="stylesheet">
    <script type="text/javascript"></script>
    <title>- Flower Library -</title>
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
            <a href="management_login.asp" style="position:absolute;top:0;left:0;width:50px;height:50px;"></a>
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

        <!-- banner 大屏幕 开始 -->
        <div class="h-banner-lg d-none d-md-block">
            <div class="text-center">
                <img class="banner-sm-logo" src="images/logo-lg.svg" alt="">
            </div>
            <h2>
                <font>花朵的颜色，植物的气味，<br></font>
                <font>水的光泽，风的味道。<br></font>
                <font>自然与四季的更替，丰富、舒适，<br></font>
                <font>绿色与我的日常生活。<br></font>
            </h2>


            <div class="h-banner-lgpic carousel slide carousel-fade d-flex" data-ride="carousel">
                <div class="carousel-inner d-flex  align-items-center">
                    <div class="carousel-item active ">
                        <img class="d-block w-100 d-flex align-items-end" src="images/banner-1.jpg" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100 d-flex align-items-end" src="images/banner-2.jpg" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100 d-flex align-items-end" src="images/banner-3.jpg" alt="Third slide">
                    </div>
                </div>
            </div>
        </div>
        <!-- banner 大屏幕 结束 -->

        <!-- banner 小屏幕 开始 -->
        <div class="h-banner-sm d-md-none">
            <div class="text-center">
                <img class="banner-sm-logo" src="images/logo-lg.svg" alt="">
            </div>
            <div class="carousel slide carousel-fade" data-ride="carousel">
                <div class="carousel-inner carousel-sm-inner">
                    <div class="carousel-item active">
                        <img class="h-banner-sm-bg" src="images/banner-sm-1.jpg" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="h-banner-sm-bg" src="images/banner-sm-2.jpg" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="h-banner-sm-bg" src="images/banner-sm-3.jpg" alt="Third slide">
                    </div>
                </div>
            </div>
        </div>
        <!-- banner 小屏幕 结束 -->

        <!-- nav-big-sub 开始 -->
        <div class="d-none d-md-block nav-big-sub">
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


        <div class="Home-banner-blank"></div>
        <!-- 分版块 1 开始 -->
        <div class="home-shop">
            <div class="shop-header shop-header-right p-stylecool">
                <div class="shop-title pb-5">
                    <h4 class="text-center">本周推荐</h4>
                    <p class="text-center sub-title">This week special</p>
                    <p class="shop-border-solid"></p>
                </div>
                <h5 class="shop-header-title">迎接春天的特别祭</h5>
                <p class="shop-header-info p-fsize">对爱花人而言，立春后的第一件盛世，当是问梅花的消息。老实说，梅花真不是一种耐寒的花儿。</p>
            </div>
            <div class="shop-pic d-flex row">
                <div class="col-lg-8_5 d-flex align-items-center shop-banner">
                    <img class="d-block w-100" src="images/special-1.jpg">
                </div>
            </div>
            <div class="shop-footer pick-color-1">
                <div class="row pt-4_5 pb-2 pr-4 shop-footer-info">
                    <div class="col-6 col-md-3 pl-4 pr-0">
                        <a href="Product/product_id2.asp">
                        <img class="shop-info" src="images/pro/pro-id2.png" alt="">
                        </a>
                        <a href="Product/product_id2.asp">
                        <p class="mb-0 mt-1 p-stylecool p-fsize">梅花</p>
                        </a>
                    </div>
                    <div class="col-6 col-md-3 pl-4 pr-0 pb-4">
                        <a href="Product/product_id1.asp">
                        <img class="shop-info" src="images/pro/pro-id3.jpg" alt="">
                        </a>
                        <a href="Product/product_id1.asp">
                        <p class="mb-0 mt-1 p-stylecool p-fsize">三个月的杜鹃</p>
                        </a>
                    </div>
                    <div class="col-6 col-md-3 pl-4 pr-0 pb-4">
                        <a href="Product/product_id2.asp">
                        <img class="shop-info" src="images/pro/pro-id4.jpg" alt="">
                        </a>
                        <a href="Product/product_id2.asp">
                        <p class="mb-0 mt-1 p-stylecool p-fsize">铁海棠</p>
                        </a>
                    </div>
                    <div class="col-6 col-md-3 pl-4 pr-0 pb-4">
                        <a href="Product/product_id2.asp">
                        <img class="shop-info" src="images/pro/pro-id5.jpg" alt="">
                        </a>
                        <a href="Product/product_id2.asp">
                        <p class="mb-0 mt-1 p-stylecool p-fsize">小叶紫檀</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- 分版块 1 结束 -->

        <div class="gap"></div>

        <!-- 分版块 2 开始 -->
        <div class="home-shop">
            <div class="shop-header shop-header-left p-stylecool">
                <div class="shop-title pb-5">
                    <h4 class="text-center">本周推荐</h4>
                    <p class="text-center sub-title">This week special</p>
                    <p class="shop-border-solid"></p>
                </div>
                <h5 class="shop-header-title">这里是一段不是很长的标题</h5>
                <p class="shop-header-info p-fsize">这里是一段具体的表述，表述，表述，不停的表述；接着表述表述表述</p>
            </div>
            <div class="shop-pic d-flex row">
                <div class="col-lg-3_5 d-none d-lg-block"></div>
                <div class="col-lg-8_5 d-flex align-items-center shop-banner">
                    <img class="d-block w-100" src="images/special-2.jpg" alt="First slide">
                </div>
            </div>
            <div class="shop-footer pick-color-2">
                <div class="row pt-4_5 pb-2 pr-4 shop-footer-info p-white">
                    <div class="col-6 col-md-3 pl-4 pr-0">
                    <a href="Product/product_id1.asp">
                        <img class="shop-info" src="images/pro/pro-id1.png" alt="">
                        </a>
                    <a href="Product/product_id1.asp">
                        <p class="mb-0 mt-1 p-stylecool p-fsize">金钱木老桩</p>
                        </a>
                    </div>
                    <div class="col-6 col-md-3 pl-4 pr-0 pb-4">
                    <a href="Product/product_id2.asp">
                        <img class="shop-info" src="images/pro/pro-id7.jpg" alt="">
                        </a>
                        <a href="Product/product_id2.asp">
                        <p class="mb-0 mt-1 p-stylecool p-fsize">秋叶红枫</p>
                        </a>
                    </div>
                    <div class="col-6 col-md-3 pl-4 pr-0 pb-4">
                        <a href="Product/product_id2.asp">
                            <img class="shop-info" src="images/pro/pro-id8.jpg" alt="">
                        </a>
                        <a href="Product/product_id2.asp">
                            <p class="mb-0 mt-1 p-stylecool p-fsize">金边虎皮兰</p>
                        </a>
                    </div>
                    <div class="col-6 col-md-3 pl-4 pr-0 pb-4">
                        <a href="Product/product_id1.asp">
                            <img class="shop-info" src="images/pro/pro-id10.jpg" alt="">
                        </a>
                        <a href="Product/product_id1.asp">
                            <p class="mb-0 mt-1 p-stylecool p-fsize">文竹</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- 分版块 2 结束 -->

        <div class="gap"></div>

        <!-- 畅销 开始 -->
        <div class="home-sell p-stylecool">
            <div class="sell-header">
                <div class="sell-title pb-2">
                    <h4 class="text-center">畅销推荐</h4>
                    <p class="text-center sub-title">Sell Well</p>
                    <p class="shop-border-solid"></p>
                </div>
            </div>
            <div class="shop-footer">
                <div class="row pt-4_5 pb-2 pr-4 shop-footer-info">
                    <div class="col-6 col-md-3 pl-4 pr-0">
                    <a href="Product/product_id1.asp">
                        <img class="shop-info" src="images/pro/pro-id1.png" alt="">
                    </a>
                    <a href="Product/product_id1.asp">    <p class="mb-0 mt-1 p-fsize">金钱木老桩</p>
                        <p class="mb-0 mt-1 best-sale p-stylenom ">现售：¥199</p>
                    </a>
                    </div>
                    <div class="col-6 col-md-3 pl-4 pr-0 pb-4">
                    <a href="Product/product_id2.asp">
                        <img class="shop-info" src="images/pro/pro-id2.png" alt="">
                    </a>
                    <a href="Product/product_id2.asp">
                        <p class="mb-0 mt-1 p-fsize">梅花</p>
                    </a>
                        <p class="mb-0 mt-1 best-sale p-stylenom ">现售：¥128</p>
                    </div>
                    <div class="col-6 col-md-3 pl-4 pr-0 pb-4">
                    <a href="Product/product_id2.asp">
                        <img class="shop-info" src="images/pro/pro-id3.jpg" alt="">
                    </a>
                        <a href="Product/product_id2.asp">
                        <p class="mb-0 mt-1 p-fsize">三个月的杜鹃</p>
                        </a>
                        <p class="mb-0 mt-1 best-sale p-stylenom ">现售：¥459</p>
                    </div>
                    <div class="col-6 col-md-3 pl-4 pr-0 pb-4">
                    <a href="../Product/product_id2.asp">
                        <img class="shop-info" src="images/pro/pro-id7.jpg" alt="">
                    </a>
                        <a href="Product/product_id2.asp">
                        <p class="mb-0 mt-1 p-fsize">秋叶红枫</p>
                        </a>
                        <p class="mb-0 mt-1 best-sale p-stylenom ">现售：¥1,228</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- 畅销 结束 -->

        <div class="gap"></div>

        <!-- 杂志 开始 -->
        <div class="home-magazine p-stylecool">
            <div class="magazine-header">
                <div class="magazine-title pb-2">
                    <h4 class="text-center">阅读</h4>
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

        <!-- 文字 开始 -->
        <div class="thewords">
            <div class="w-logo">
                <img src="images/logo.svg" alt="Flower Library">
            </div>
            <h3>
                <font>- Flower Library -</font>
            </h3>
            <p class="w-center">
                <font>树木与花朵，水彩与文字。</font><br>
                <font>江南的四季时光，从前的诗词典故。</font><br>
                <font>这里有，</font><br>
                <font>美与自然的全部记录。</font><br>
            </p>
            <p class="w-center">
                <font class="w-sub">绿色，将为您的生活增添更丰富的色彩。</font><br>
                <font>在日常生活中遇到的一切，都在影响着我们；</font><br>
                <font>我想，</font><br>
                <font>我现在和将来都只会向他们学习。</font><br>
            </p>
        </div>
        <!-- 文字 结束 -->

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

        <script type="text/javascript">
        //点击#acc1，则显示accountInfo1,隐藏2，3，4
            $(".b-menu").click(function(){
                $(".b-nav,body, .b-container").toggleClass("open");

            });
    </script>
</body>

</html>