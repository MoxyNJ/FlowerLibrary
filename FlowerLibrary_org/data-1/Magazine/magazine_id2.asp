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
    <link rel="stylesheet" href="../css/magazine.css">
    <!-- Bootstrap CSS 结束 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:500|Noto+Serif+SC|ZCOOL+XiaoWei" rel="stylesheet">
    <script type="text/javascript"></script>
    <title>【花名册】喜马拉雅蓝是什么蓝 - Flower Library -</title>
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
                    <a href="../Magazine.asp">
                        <font>阅读</font>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <font>【花名册】喜马拉雅蓝是什么蓝</font>
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
                <h4 class="text-center">【花名册】喜马拉雅蓝是什么蓝</h4>
                <p class="card-text text-muted text-center">2019年4月3日<br>作者：蔓玫</p>
                <div class="magazine-text">

                    <p>在爱丁堡植物园（Royal Botanic Garden Edinburgh），正好赶上绿绒蒿盛开的季节。</p>
                    <p>已经快到六月，爱丁堡的天气依然清冷凛冽。我大概运气好，一路碰上的都是晴天，雪亮日光兜头倾泻下来。这真像藏区的春夏——走在太阳里是穿着短袖，肋下快然生风；然而一到阴处，冷风四起，却又要把羊绒大衣裹起来。我终于明白为什么藏族同胞要那样穿衣服：一半在棉袄里，一半却裸露着臂膀。前可攻退可守，啊，多么方便。</p>
                    <p>怪不得。来自高原的绿绒蒿能在这里茁壮生长，也是顺理成章的事情吧。</p>
                    <img class="" src="../images/magazine/magazine_id2_1.jpg">

                    <p>对植物不太感兴趣的人来说，绿绒蒿应该不算是个熟悉的名字。托商家们的福，我们知道那么多来自雪域高原的身负传奇的物种——雪莲，虫草，红景天……但没有绿绒蒿。这样也好：你只需知道它是瑰宝级的植物即可。它没有盛名，因此不需难负，只要在那里，就不会让任何一个邂逅者失望。</p>
                    <p><strong>绿绒蒿属植物（Meconopsis）</strong>目前已知一共49种。并不多，但都很有来头。除了1种产西欧（坑爹的是最近有研究认为这唯一的一种也可能并不算绿绒蒿，专家们正在讨论要不要把它从绿绒蒿属踢出去……），其他所有均分布于喜马拉雅地区。有一种就叫尼泊尔绿绒蒿 <em>M. napaulensis</em> 的，而不丹的国花 <em>M. gakyidiana</em> 也是其中之一。</p>
                    <p>我在爱丁堡植物园，见到最多的是以藿香叶绿绒蒿 M. betonicifolia 为亲本的杂交种，也是最富观赏价值的一种——花朵硕大，花色是极艳丽、纯粹、独特的蓝。英文里因此称呼它为<strong>「Himalaya blue poppy」</strong>——<strong>喜马拉雅蓝罂粟</strong>，因为原产喜马拉雅，又有植物中最罕见的纯蓝色花。至于poppy，则是因为与罂粟形似：绿绒蒿属，本来就是罂粟科的，与罂粟、虞美人们是一家子</p>
                    <p>罂粟与虞美人，花朵都以轻盈秾艳见长。绿绒蒿们也是如此。何况它们生长在那么难以触及的地方。是因为这样的遗世独立吗？在最接近天空的地方，才能生就这样最纤尘不染的纯净的蓝。这么蓝，蓝到不真实，蓝到让人怀疑人生。隔在镜头另一端，连我自己都忍不住要怀疑这颜色是PS出来的。</p>
                    <p>然而这次PS的不是人力，而是自然的手笔。多少花商挤破了头要把玫瑰百合满天星染蓝，殊不知在绿绒蒿面前，一下子都成了庸脂俗粉，妖艳贱货。人世不公平，植物的世界何尝不是呢？</p>
                    <p>哦对，<strong>他们说许巍歌里那盛开永不凋零的「蓝莲花」，其实就是绿绒蒿。</strong></p>
                    <img class="" src="../images/magazine/magazine_id2_2.jpg">
                    <br>
                    <img class="" src="../images/magazine/magazine_id2_3.jpg">
                    <br>
                    <img class="" src="../images/magazine/magazine_id2_4.jpg">
                    <br>
                    <img class="" src="../images/magazine/magazine_id2_5.jpg">
                    <p class="blockquote-footer text-center">（图：藿香叶绿绒蒿 M. betonicifolia 园艺杂交种。此种适合为园林种植，除花大色艳外，另一重要理由是它的多年生属性。大部分绿绒蒿属植物均为一年生，寿命短，但藿香叶绿绒蒿却是例外。）</p>

                    <p>本来这样已足矣。但绿绒蒿却又不止有蓝色，这就更厉害了。如全缘叶绿绒蒿 M. integrifolia，丽江一带俗称「黄芙蓉」者，开柔嫩的鹅黄色花；又如红花绿绒蒿 M. punicea ，则是热烈大红色。此外另有白色、粉色、紫色不等。原种尚如此，园艺品种的色彩就更多。有些花朵在开放过程中也会变色，如前面提到的藿香叶绿绒蒿，初开深蓝，盛放天蓝，及至凋谢，则幻化出意犹未尽的紫来。</p>
                    <img class="" src="../images/magazine/magazine_id2_6.jpg">
                    <p class="blockquote-footer text-center">（图：不同形色的绿绒蒿属植物花朵。一般认为其罕见的蓝色系来源于花青素、黄酮醇、金属离子和细胞液泡pH的共同作用，因此十分多变。）</p>

                    <p>1814年，来自法国的植物猎人Viguier第一次将绿绒蒿的存在公诸于世。然而直到一个世纪后，这些生于中国西南腹地的植物才算是真正引起大众的兴趣——倒不是因为它们不够美，而是因为实在太难得一见了。不同于杜鹃、龙胆等高山植物，在平原地区也有充足分布；绿绒蒿们几乎只存在于喜马拉雅高山地区，身处乱石流坡，即使跋山涉水也未必得见一面。此外还有烈日暴风，强烈紫外线辐射，土壤也是贫瘠得可以。这样的反差简直叫人匪夷所思——偏偏是山穷水尽的地方，却能造就它们一干绝色，出尘脱俗，不与凡世群芳为伍。</p>
                    <p>这和任何一条通往无人之境的朝圣路都很像。因为难得，所以更叫人珍惜。关于绿绒蒿的溢美之词往往立足于斯，它也因此成为许多环保主义者和植物研究、植物爱好者的某种理想象征：美的，顽强的，纯粹的，回归本真的。</p>
                    <p>我并没有见过野生的绿绒蒿。但想来这感觉也很好理解：奇花异草如爱丁堡植物园，其中邂逅的绿绒蒿尚叫我劈面惊艳。若是要历经千辛万苦才能抵达，那相见的一面当然是更无与伦比的美妙吧。</p>
                     <img class="" src="../images/magazine/magazine_id2_7.jpg">

                    <p>——最后顺便提一下爱丁堡植物园~~~据说这大概是全世界引种中国植物最多的一个植物园，园内还有一个非常有趣的Chinese Hillside（中国高山植物区），几乎是把玉龙雪山植被的一隅整个搬了过来，指示牌上还有超萌的东巴文字。。。除此之外，许多原产华西南地区的特色植物在此也如鱼得水，如珙桐、报春、高山杜鹃等，私以为比之邱园（Kew Garden）也毫不逊色。</p>
                    <p>想当年爱丁堡植物园曾有名为 George Forrest 的工作人员——耗尽半生时光在云南游荡，采集标本超过三万份，最后也是死在云南腾冲。对植物猎人们的做法不置可否，但不得不承认，爱丁堡植物园能有与中国植物水乳交融的今天，他功不可没。
</p>
<br>
<br>
                    <p>【植物档案】</p>
                    <p>藿香叶绿绒蒿（绿绒蒿属的植物都各富特色。别的就先不展开介绍了~）</p>
                    <p>学名：<i>Meconopsis betonicifolia</i></p>
                    <p>英文名：Himalayan blue poppy</p>
                    <p>罂粟科 绿绒蒿属</p>
                    <p>目前西方园艺界已开发出数种绿绒蒿的观赏品种，并在花园造景中投入运用。如近期大热的切尔西花展（Chelsea Flower Show）上即有多处绿绒蒿的身影，片植或混植均很美丽。但国内对本属植物的开发应用仍很少，如有意购买种源——尤其是X宝上某些无实物图的「蓝罂粟」之类——请谨慎。</p>
                    <p>另，绿绒蒿生境脆弱，如有幸在野外遇见，请万勿采摘破坏。</p>
                    <img class="" src="../images/magazine/magazine_id2_8.jpg">

                </div>


        <!-- 发送留言 开始 -->


        
        <form class="comment-input" id="message-form" action="user_SMSsave.asp" method="post">
             <h5>评论</h5>
            <input class="C-Bmagazine" type="text" name="Bmagazine" id="Bmagazine" value="2" />
            <div class="form-input">
                    <textarea id="Bcontent" name="Bcontent" placeholder="写下此刻的想法..." tabindex="4" required style="display:<%=comment_nonedisplay%>;"></textarea>
                <h5 style="border-bottom:none;height:83px;line-height:83px;padding:0 20px;color: #999;font-weight:normal;display:<%=comment_display%>;">请先登录再评论...</h5>
            </div>
                            <button type="submit" class="" name="Submit1" style="display:<%=comment_nonedisplay%>;">发送</button>
                            <a href="../login.asp"><button type="submit" class="" name="Submit1" style="display:<%=comment_display%>; margin:10px auto; position:inherit;">登录</button></a>
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
                        <ul class="showMoreNChildren" pagesize="10">
<%

set rs2=server.createobject("adodb.recordset")
sql="select Uname, Uqq, Uemail, Bcontent,Bmagazine, Bdata, userdata.Uid from Bigdata, userdata where Bigdata.Bmagazine = 2 and Bigdata.Uid = userdata.Uid order by Bid desc"
rs2.open sql,conn,1,1
%>
<%
do while not rs2.eof
  
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
<%rs2.movenext
loop %>
                        <li>全部加载完毕</li>
                        </ul>
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
                    <a href="../Product/product_id2.asp">
                        <img class="shop-info" src="../images/pro/pro-id1.png" alt="">
                    </a>
                        <a href="../Product/product_id1.asp">
                            <p class="mb-0 mt-1">金钱木老桩</p>
                        </a>
                    </div>
                    <div class="col-6 col-md-3 pl-4 pr-0 pb-4">
                    <a href="../Product/product_id2.asp">
                        <img class="shop-info" src="../images/pro/pro-id2.png" alt="">
                    </a>
                        <a href="../Product/product_id2.asp">
                            <p class="mb-0 mt-1">梅花盆景</p>
                        </a>
                    </div>
                    <div class="col-6 col-md-3 pl-4 pr-0 pb-4">
                    <a href="../Product/product_id2.asp">
                        <img class="shop-info" src="../images/pro/pro-id3.jpg" alt="">
                    </a>
                        <a href="../Product/product_id2.asp">
                            <p class="mb-0 mt-1">三个月的杜鹃</p>
                        </a>
                    </div>
                    <div class="col-6 col-md-3 pl-4 pr-0 pb-4">
                    <a href="../Product/product_id2.asp">
                        <img class="shop-info" src="../images/pro/pro-id7.jpg" alt="">
                    </a>
                        <a href="../Product/product_id2.asp">
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
                        <a href="magazine_id1.asp">
                            <img class="card-img-top d-block w-100" src="../images/magazine/magazine_id1_0.jpg" alt="Magazine">
                        </a>
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title"><a href="magazine_id2.asp">【花名册】寻梦环游的金色小精灵</a></h5>
                        <p class="card-text text-muted">2019年4月3日</p>
                        <p class="card-text d-md-none d-lg-block">《寻梦环游记》里，铺天盖地都是万寿菊的花瓣。准确来说……好像除了万寿菊，基本没见到别的花朵……
                        </p>
                    </div>
                </div>

                <div class="col-md-3 card d-inline-block">
                    <div class="d-flex align-items-center home-magazine-img">
                        <a href="magazine_id3.asp">
                            <img class="card-img-top d-block w-100" src="../images/magazine/magazine_id9_0.jpg" alt="Magazine">
                        </a>
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title"><a href="magazine_id9.asp">【节气手帖】白露：葛花零落风</a></h5>
                        <p class="card-text text-muted">2019年4月3日</p>
                        <p class="card-text d-md-none d-lg-block">和很多野花野草一样，葛的情味，是要长大之后才能慢慢摸索出来的。 我小时候，一度以为葛粉是全国人民普遍享用的东西…… 
                        </p>
                    </div>
                </div>

                <div class="col-md-3 card d-inline-block">
                    <div class="d-flex align-items-center home-magazine-img">
                        <a href="magazine_id4.asp">
                            <img class="card-img-top d-block w-100" src="../images/magazine/magazine_id7_0.jpg" alt="Magazine">
                        </a>
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title"><a href="magazine_id3.asp">【节气手帖】霜降：拒霜花</a></h5>                        
                        <p class="card-text text-muted">2019年4月3日</p>
                        <p class="card-text d-md-none d-lg-block">在爱丁堡植物园（Royal Botanic Garden Edinburgh），正好赶上绿绒蒿盛开的季节…… 
                        </p>
                    </div>
                </div>

                <div class="col-md-3 card d-inline-block">
                    <div class="d-flex align-items-center home-magazine-img">
                        <img class="card-img-top d-block w-100" src="../images/magazine/magazine_id8_0.jpg" alt="Magazine">
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title"><a href="magazine_id4.asp">【节气手帖】寒露：板栗，爱是想触碰又收回手</a></h5>                        
                        <p class="card-text text-muted">2019年4月3日</p>
                        <p class="card-text d-md-none d-lg-block">《寻梦环游记》里，铺天盖地都是万寿菊的花瓣。准确来说……好像除了万寿菊，基本没见到别的花朵……
                        </p>
                    </div>
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
                var $children    = $(this).children();
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

</body>

<%
'rs.close
rs2.close
set rs=nothing
set rs2=nothing
conn.close
set conn=nothing
%>

</html>