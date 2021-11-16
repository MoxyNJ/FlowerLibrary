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
    <title>【花名册】寻梦环游的金色小精灵 - Flower Library -</title>
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
                        <font>【花名册】寻梦环游的金色小精灵</font>
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
                <h4 class="text-center">【花名册】寻梦环游的金色小精灵</h4>
                <p class="card-text text-muted text-center">2019年4月3日<br>作者：蔓玫</p>
                <div class="magazine-text">
                    <p>《寻梦环游记》里，铺天盖地都是万寿菊的花瓣。准确来说……好像除了万寿菊，基本没见到别的花朵。整个画面都呈现出一股浓郁得化不开，却又非常清亮轻盈的金黄色，上一次看到这么登（pū）峰（zhāng）造（làng）极（fèi）地在电影里运用一种花卉元素，好像还是《秒速五厘米》吧。。。</p>
                    <p>这也自然。毕竟，若要扮演「沟通生死」的角色，在这个故事的发生地，传统的墨西哥文化里，只有万寿菊才可以。</p>
                    <img class="" src="../images/magazine/magazine_id1_1.jpg">
                    <p class="blockquote-footer text-center">到处都是万寿菊……看下文就知道这个场景其实并不夸张了</p>

                    <img class="" src="../images/magazine/magazine_id1_2.jpg">
                    <p class="blockquote-footer text-center">连接生死两个世界的桥梁，完全由万寿菊的花瓣所铺就</p>
                    
                    <p>在每一个发展成熟的地域文化里，好像都有这么一两种身负「联系生死」使命的花。在埃及，是蓝睡莲；在日本，是红花石蒜（彼岸花）；在中世纪的欧洲，是白百合；在古代中国……好吧，中国人向来避讳谈「死」，所以好像并没有以某种花草牵引亡魂的说法。追思逝者、祛除恶灵的，倒是有：前者是柳，后者是桃。多少都与生死之事有必然关系，可见大家都是有这个需求的。</p>
                    <p><strong>以植物论生死，这是人类文明中几乎必然会出现的一种自然崇拜现象。</strong>其实稍微想想，就很容易发现这里面的规律：首先，植物得是本土的，伴随这一地区的人们长长久久地生存下来，大家互相都知根知底；其次，植物身上也一定有某些能够触发联想的特性——睡莲的朝开夕闭，红花石蒜的艳色、毒性与「花叶不相见」，白百合的纯洁、流畅、无辜……都很容易地，会叫我们联想起关于「死生契阔」的某些东西来。</p>
                    <p>在万寿菊身上，当然也是一样的。</p>
                    <img class="" src="../images/magazine/magazine_id1_3.jpg">
                    <br>
                    <img class="" src="../images/magazine/magazine_id1_4.jpg">
                    <p class="blockquote-footer text-center">来吧，说说它们的样子让你想起什么？</p>

                    <p><strong>可能没有哪一种花比万寿菊更适合作为墨西哥传统文化的代表。</strong>仙人掌和玉米也不错，但到底不是「花」，没有属于「花」的「好看」——万寿菊之所以能在当地文化中占据牢不可破的地位，「好看」是极重要的一个原因：饱满的花冠，辐射状的花瓣，浓艳金黄的花色，很容易叫人想起天上的太阳。而除此之外，实际用途也很多。</p>
                    <p>比如，浓黄的花瓣可做染料。施以不同媒介，可染出各种漂亮持久的黄橙色调。</p>
                    <p>又比如，鲜嫩花朵可供食用，并富含类胡萝卜素，直到今天也常被用在西餐沙拉中作为配色和增香的调料。</p>
                    <p>再比如，它具有刺激性的气味（所以另有个中文名叫「臭芙蓉」），可驱除蚊虫；若种在农田之中，亦可保护庄稼免受某些害虫的滋扰。</p>
                    <p>这里面还有最重要的一条：<strong>在古代的拉丁美洲，阿兹台克人的生活里，万寿菊也是非常重要的草药。</strong>据说从史前时代开始，它就被广泛地作为药物使用——当然，从现代医学的角度而言，万寿菊的药用价值主要集中在改善视力、抑菌抗炎等方面，并没有古人说的那样神奇。但这么多年下来，「治愈」「抚慰」几乎已成为它的固有标签；与其说是某些基于科学分析而来的成分，倒不如说是更接近某种宗教信仰了。（是不是和中国传统文化里，某些中草药的地位有类似之处呢？）</p>
                    <img class="" src="../images/magazine/magazine_id1_5.jpg">
                    <p class="blockquote-footer text-center">以万寿菊染色的毛线。同理，它也可以给食物、皮肤染色</p>
                    
                    <p><strong>这样一来，我们应该就很好理解阿兹台克文化里的万寿菊形象了。因为长得漂亮，所以特别适合用来做装饰；因为实用，所以堆积如山之后也许很容易让人想起丰盛的食物、光鲜的衣装，以及由此而来的饕餮盛宴；因为外形像太阳，所以大可作为光明的指引；因为有浓烈的气味，所以也许可以唤醒亡灵们的记忆，引诱着他们重新回到这个活色生香的世界来……</strong></p>
                    <p><strong>哦对了，它还能在一年之中迅速完成整个生老病死的过程，来年又凭借自己掉落的种子萌芽复苏——这样的习性，也会叫人想起「死而复生」的情节吧。</strong></p>
                    <p>至于电影里「魂兮归来」的亡灵节（Día de Muertos / Day of the Death），据说是现代墨西哥文化里最为盛大的节日，则可理解为是万圣节的一个阿兹台克化版本。万寿菊呢，作为一直以来装点庙宇、祭奠死者、供奉神明的花卉，也就理所当然成为了这个节日的代言。就连「死亡之花」<strong>（Flor de Muerto / Flower of Dead）</strong>这样看上去好像和它很不般配的名字，也被大家所接受，一代又一代人慢慢地叫开了。</p>
                    <p>昔日的阿兹台克变成今日的墨西哥。就连土著们被代表先进文明的欧洲人所屠戮的历史，小小的花朵也曾静静见证过。据说，在西班牙人抵达并展开大屠杀的16世纪之后，万寿菊也被赋予了新的意义，作为一个生者的纪念——提醒那些幸存的阿兹台克人和脚下的土地，关于他们曾经的文化与历史，以及那些无辜消散的亡魂。</p>
                    <img class="" src="../images/magazine/magazine_id1_6.jpg">
                    <p class="blockquote-footer text-center">亡灵节，墨西哥目的里的万寿菊与剪纸，都被认为是与生死有关的象征</p>

                    <img class="" src="../images/magazine/magazine_id1_7.jpg">
                    <p class="blockquote-footer text-center">为节日准备万寿菊花材的本土老太太</p>
                    
                    <p>我以前很长一段时间不喜欢万寿菊。这是很私人的感受，因为实在看腻了它在路边绿化带和花坛里千篇一律的模样——颜色鲜明，性子皮实，生长周期短，非常适合用来营造某些廉价的、速成的景观。更何况，它背后也没有什么特别浪漫的故事——至少在亚洲和欧洲的文化里，是这样的。所以，看着它，老觉得像是看暴发户身上临时赶制出来的，一身簇新的、鲜亮得扎人眼的衣裳。</p>
                    <p>但这怪不得万寿菊。原是它没有被派上好用场。若放到它自己的老家，墨西哥，好像一切就变得特别般配，特别应景，特别得天独厚。肤浅的花纹变成沟通生死的小信使、传递光明与温情的小精灵，虽然大家面对的是同样一些事，花朵扮演的角色，却非常不一样。</p>
                    <p>花语即人语，这道理果然是放在哪里都很适用的。</p>
                    <img class="" src="../images/magazine/magazine_id1_8.jpg">
                    <p class="blockquote-footer text-center">墨西哥市场上，选购万寿菊的人们</p>

                    <p><br></p>
                    <p><br></p>
                    <p>【植物档案】</p>
                    <p>万寿菊（臭芙蓉）</p>
                    <p>学名：<i>Tagetes erecta</i></p>
                    <p>英文名：Mexican marigold / Aztec marigold （墨西哥的玛丽黄金；阿兹台克的玛丽黄金）</p>
                    <p>菊科 万寿菊属</p>
                    <p>万寿菊属植物极多，大部分均原产中南美洲。</p>
                    <p><em>注一：万寿菊英文名marigold，在英语中亦可指代另一种菊科花卉，金盏花Calendula officinalis。两者形态、习性颇为近似，亦都可入药，故多有混淆。这里不再详细说明。</em></p>
                    <p><em>注二：万寿菊属另有一种在我国常见栽培，名为孔雀草Tagetes patula。区别在于孔雀草叶片更为纤细狭长，花瓣具红色斑。如今两者园艺变种均极多，也非常容易混淆。</em></p>
                    <img class="" src="../images/magazine/magazine_id1_9.jpg">


                </div>


        <!-- 发送留言 开始 -->


        
        <form class="comment-input" id="message-form" action="user_SMSsave.asp" method="post">
             <h5>评论</h5>
            <input class="C-Bmagazine" type="text" name="Bmagazine" id="Bmagazine" value="1" />
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
sql="select Uname, Uqq, Uemail, Bcontent,Bmagazine, Bdata, userdata.Uid from Bigdata, userdata where Bigdata.Bmagazine = 1 and Bigdata.Uid = userdata.Uid order by Bid desc"
rs2.open sql,conn,1,1
%>
<%
    
  
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
                        <a href="magazine_id2.asp">
                            <img class="card-img-top d-block w-100" src="../images/magazine/magazine_id2_0.jpg" alt="Magazine">
                        </a>
                    </div>
                    <div class="card-body magazine-text">
                        <h5 class="card-title"><a href="magazine_id2.asp">【花名册】喜马拉雅蓝是什么蓝</a></h5>
                        <p class="card-text text-muted">2019年4月3日</p>
                        <p class="card-text d-md-none d-lg-block">在爱丁堡植物园（Royal Botanic Garden Edinburgh），正好赶上绿绒蒿盛开的季节。已经快到六月，爱丁堡的天气依然清冷凛冽……
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