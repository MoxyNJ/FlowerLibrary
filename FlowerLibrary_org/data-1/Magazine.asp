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
    <link rel="stylesheet" href="css/magazine.css">
    <!-- Bootstrap CSS 结束 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:500|Noto+Serif+SC|ZCOOL+XiaoWei" rel="stylesheet">
    <script type="text/javascript"></script>
    <title>阅读 - Flower Library -</title>
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
                        <font>阅读</font>
                    </a>
                </li>

            </ul>
        </div>

        <!-- 主体部分 -->
        <div class="magazine-cell">
            <div class="magazine-cell_header">
                <div class="text-center">
                    <img class="d-md-none" src="images/logo.svg" alt="logo">
                </div>
                <div class="magazine-cell_title pb-2">
                    <h4 class="text-center">阅读</h4>
                    <p class="shop-border-solid"></p>
                </div>
            </div>
            <div class="row container-fluid-root">
                <!-- Magazine card -->
                <div class="col-md-3 card d-inline-block">
                    <div class="d-flex align-items-center home-magazine-img">
                        <a href="Magazine/magazine_id1.asp">
                            <img class="card-img-top d-block h-100" src="images/magazine/magazine_id1_0.jpg" alt="Magazine">
                        </a>
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title"><a href="Magazine/magazine_id1.asp">【花名册】寻梦环游的金色小精灵</a></h5>
                        <p class="card-text text-muted">2017年12月02日</p>
                        <p class="card-text d-md-none d-lg-block">《寻梦环游记》里，铺天盖地都是万寿菊的花瓣。准确来说……好像除了万寿菊，基本没见到别的花朵……
                        </p>
                    </div>
                </div>

                <div class="col-md-3 card d-inline-block">
                    <div class="d-flex align-items-center home-magazine-img">
                        <a href="Magazine/magazine_id2.asp">
                            <img class="card-img-top d-block w-100" src="images/magazine/magazine_id2_0.jpg" alt="Magazine">
                        </a>
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title"><a href="Magazine/magazine_id2.asp">【花名册】喜马拉雅蓝是什么蓝</a></h5>
                        <p class="card-text text-muted">2019年04月03日</p>
                        <p class="card-text d-md-none d-lg-block">在爱丁堡植物园（Royal Botanic Garden Edinburgh），正好赶上绿绒蒿盛开的季节…… </p>
                    </div>
                </div>

                <div class="col-md-3 card d-inline-block">
                    <div class="d-flex align-items-center home-magazine-img">
                        <a href="Magazine/magazine_id2.asp">
                            <img class="card-img-top d-block w-100" src="images/magazine/magazine_id3_0.jpg" alt="Magazine">
                        </a>
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title"><a href="Magazine/magazine_id2.asp">【节气手帖】夏至：从蕹菜到空心菜</a></h5>
                        <p class="card-text text-muted">2019年05月03日</p>
                        <p class="card-text d-md-none d-lg-block">蕹菜并不算是为人熟知的名字。至少在我经过的各处，并不是。现在非常努力地回想起来，好像在很多年前……</p>
                    </div>
                </div>

                <div class="col-md-3 card d-inline-block">
                    <div class="d-flex align-items-center home-magazine-img">
                        <a href="Magazine/magazine_id2.asp">
                            <img class="card-img-top d-block w-100" src="images/magazine/magazine_id4_0.jpg" alt="Magazine">
                        </a>
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title"><a href="Magazine/magazine_id2.asp">腌渍樱花：留住春天的风味</a></h5>
                        <p class="card-text text-muted">2019年4月3日</p>
                        <p class="card-text d-md-none d-lg-block">又到了晚樱盛开的时候，今年的腌渍樱花可以做起来了。 之前在自己的书里画过一个步骤图，但篇幅所限…… </p>
                    </div>
                </div>

                <div class="col-md-3 card d-inline-block">
                    <div class="d-flex align-items-center home-magazine-img">
                        <a href="Magazine/magazine_id2.asp">
                            <img class="card-img-top d-block w-100" src="images/magazine/magazine_id5_0.jpg" alt="Magazine">
                        </a>
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title"><a href="Magazine/magazine_id2.asp">【节气手帖】立冬：秋末晚菘</a></h5>
                        <p class="card-text text-muted">2019年4月07日</p>
                        <p class="card-text d-md-none d-lg-block">从前有个隐居山林的大才子叫周颙。有一日太子殿下请教他什么样的蔬菜最好吃…… </p>
                    </div>
                </div>
                <div class="col-md-3 card d-inline-block">
                    <div class="d-flex align-items-center home-magazine-img">
                        <a href="Magazine/magazine_id2.asp">
                            <img class="card-img-top d-block w-100" src="images/magazine/magazine_id6_0.jpg" alt="Magazine">
                        </a>
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title"><a href="Magazine/magazine_id2.asp">【节气手帖】霜降：拒霜花</a></h5>
                        <p class="card-text text-muted">2019年4月11日</p>
                        <p class="card-text d-md-none d-lg-block">汉语里芙蓉二字，最早是指水芙蓉，即荷花。木芙蓉则是另外一种。之所以有此名，是如《本草纲目》所言「艳如荷花」。…… </p>
                    </div>
                </div>
                <div class="col-md-3 card d-inline-block">
                    <div class="d-flex align-items-center home-magazine-img">
                        <a href="Magazine/magazine_id2.asp">
                            <img class="card-img-top d-block w-100" src="images/magazine/magazine_id7_0.jpg" alt="Magazine">
                        </a>
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title"><a href="Magazine/magazine_id2.asp">【花名册】不过一场风雨</a></h5>
                        <p class="card-text text-muted">2019年4月14日</p>
                        <p class="card-text d-md-none d-lg-block">最近热得很。但一想到已经过了立秋，热也肯定热不了多少时间了，便觉得这是强弩之末，廉颇老矣，反而有点享受起它来…… </p>
                    </div>
                </div>
                <div class="col-md-3 card d-inline-block">
                    <div class="d-flex align-items-center home-magazine-img">
                        <a href="Magazine/magazine_id2.asp">
                            <img class="card-img-top d-block w-100" src="images/magazine/magazine_id8_0.jpg" alt="Magazine">
                        </a>
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title"><a href="Magazine/magazine_id2.asp">【节气手帖】寒露：板栗，爱是想触碰又收回手</a></h5>
                        <p class="card-text text-muted">2019年4月15日</p>
                        <p class="card-text d-md-none d-lg-block">如果秋天是一剂香水，那它的香调大概是这样的：前调是菱角与莲蓬，中调是桂花与柑橘，后调是板栗，再加一点点菊花的清气作为调剂。留香散去，秋天也就结束。…… </p>
                    </div>
                </div>
                <div class="col-md-3 card d-inline-block">
                    <div class="d-flex align-items-center home-magazine-img">
                        <a href="Magazine/magazine_id2.asp">
                            <img class="card-img-top d-block w-100" src="images/magazine/magazine_id9_0.jpg" alt="Magazine">
                        </a>
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title"><a href="Magazine/magazine_id2.asp">【节气手帖】白露：葛花零落风</a></h5>
                        <p class="card-text text-muted">2019年4月19日</p>
                        <p class="card-text d-md-none d-lg-block">和很多野花野草一样，葛的情味，是要长大之后才能慢慢摸索出来的。 我小时候，一度以为葛粉是全国人民普遍享用的东西…… </p>
                    </div>
                </div>
                <div class="col-md-3 card d-inline-block">
                    <div class="d-flex align-items-center home-magazine-img">
                        <a href="Magazine/magazine_id2.asp">
                            <img class="card-img-top d-block w-100" src="images/magazine/magazine_id10_0.jpg" alt="Magazine">
                        </a>
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title"><a href="Magazine/magazine_id2.asp">【花名册】就当是单身狗的福利吧</a></h5>
                        <p class="card-text text-muted">2019年04月20日</p>
                        <p class="card-text d-md-none d-lg-block">上次live里有同学问：「七夕想给单身狗小伙伴送花。送什么呢？」 尚未来得及回答，就有人插嘴：「狗尾巴草。」…… </p>
                    </div>
                </div>
                <div class="col-md-3 card d-inline-block">
                    <div class="d-flex align-items-center home-magazine-img">
                        <a href="Magazine/magazine_id2.asp">
                            <img class="card-img-top d-block w-100" src="images/magazine/magazine_id1_0.jpg" alt="Magazine">
                        </a>
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title"><a href="Magazine/magazine_id2.asp">【节气手帖】立秋：这是属于茄子的节日……</a></h5>
                        <p class="card-text text-muted">2019年02月22日</p>
                        <p class="card-text d-md-none d-lg-block">落苏这两个字看上去既新奇又别致不是？可真身却是很接地气的：茄子。所以「落苏节」就是茄子过节，据说是在农历七月三十…… </p>
                    </div>
                </div>
                <div class="col-md-3 card d-inline-block">
                    <div class="d-flex align-items-center home-magazine-img">
                        <a href="Magazine/magazine_id2.asp">
                            <img class="card-img-top d-block w-100" src="images/magazine/magazine_id2_0.jpg" alt="Magazine">
                        </a>
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title"><a href="Magazine/magazine_id2.asp">【花名册】喜马拉雅蓝是什么蓝</a></h5>
                        <p class="card-text text-muted">2019年03月25日</p>
                        <p class="card-text d-md-none d-lg-block">在爱丁堡植物园（Royal Botanic Garden Edinburgh），正好赶上绿绒蒿盛开的季节…… </p>
                    </div>
                </div>
                <div class="col-md-3 card d-inline-block">
                    <div class="d-flex align-items-center home-magazine-img">
                        <a href="Magazine/magazine_id2.asp">
                            <img class="card-img-top d-block w-100" src="images/magazine/magazine_id3_0.jpg" alt="Magazine">
                        </a>
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title"><a href="Magazine/magazine_id2.asp">【花名册】喜马拉雅蓝是什么蓝</a></h5>
                        <p class="card-text text-muted">2019年03月30日</p>
                        <p class="card-text d-md-none d-lg-block">在爱丁堡植物园（Royal Botanic Garden Edinburgh），正好赶上绿绒蒿盛开的季节…… </p>
                    </div>
                </div>
                <div class="col-md-3 card d-inline-block">
                    <div class="d-flex align-items-center home-magazine-img">
                        <a href="Magazine/magazine_id2.asp">
                            <img class="card-img-top d-block w-100" src="images/magazine/magazine_id4_0.jpg" alt="Magazine">
                        </a>
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title"><a href="Magazine/magazine_id2.asp">【花名册】喜马拉雅蓝是什么蓝</a></h5>
                        <p class="card-text text-muted">2019年02月14日</p>
                        <p class="card-text d-md-none d-lg-block">在爱丁堡植物园（Royal Botanic Garden Edinburgh），正好赶上绿绒蒿盛开的季节…… </p>
                    </div>
                </div>
                <div class="col-md-3 card d-inline-block">
                    <div class="d-flex align-items-center home-magazine-img">
                        <a href="Magazine/magazine_id2.asp">
                            <img class="card-img-top d-block w-100" src="images/magazine/magazine_id5_0.jpg" alt="Magazine">
                        </a>
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title"><a href="Magazine/magazine_id2.asp">【花名册】喜马拉雅蓝是什么蓝</a></h5>
                        <p class="card-text text-muted">2019年01月20日</p>
                        <p class="card-text d-md-none d-lg-block">在爱丁堡植物园（Royal Botanic Garden Edinburgh），正好赶上绿绒蒿盛开的季节…… </p>
                    </div>
                </div>
            </div>
        </div>


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
</body>

<%
set rs=nothing
conn.close
set conn=nothing
%>
</html>