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
    <title>退换货 - Flower Library</title>
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
                        <font>退换货</font>
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
                            <p>退换货</p>
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
                                    <h6>Flower library 的退货政策</h6>
                                </div>
                                <div class="help-box">
                                    <div class="main">
                                        <div class="delivery">
                                            <div class="con-text">
                                                <p>请参考以下内容了解什么是Nike的退货政策：</p>
                                            </div>
                                            <div class="sub-title">
                                                <p>1. 无理由退货</p>
                                            </div>
                                            <div class="con-text">
                                                <p>如果您购买的商品仍是原购买时的状况、并符合二次销售的条件，可自购买之日【线上购物（即指Nike.com，SNKRS、Nike微信小程序、Nike天猫官方旗舰店、Nike天猫儿童官方旗舰店、Jordan天猫官方旗舰店）以收货日期为准、Nike直营店铺购买以收银小票载明的日期为准】起14天内（含14天）以任何理由或无理由通过原购买渠道退回所购商品。除瑕疵品外，超出14天的退货，我们将无法受理。
                                                </p>
                                            </div>
                                            <div class="sub-title">
                                                <p>1.1无理由退货的限制</p>
                                            </div>
                                            <div class="con-text">
                                                <p>A. 您在上述无理由退货期内的退货也有一些限制，尤其是：拟退商品需仍是原购买时的状况、并符合二次销售的条件。具体包含以下三方面要求：
                                                </p>
                                            </div>
                                            <ul class="con-ul">
                                                <li>商品完好。即商品表面无划痕、无磨（破）损、无磕碰、无使用、无拆卸等痕迹；商品能够保持原有的品质、功能； </li>
                                                <li>商品外包装完整。“外包装”系指：生产厂商原包装（不含耐克或物流自行二次封装的纸箱或纸袋）；</li>
                                                <li>如商品配备配件或附件，相关配件和/或附件应齐全。</li>
                                            </ul>
                                            <div class="con-text">
                                                <p>B. 举例如下：</p>
                                            </div>
                                            <ul class="con-ul">
                                                <li>鞋子：外包装完好，鞋盒无撕裂、涂鸦，鞋盒未缠绕胶带或张贴快递面单，鞋盒底部的商品合格证完整；鞋子保持干爽清洁，未水洗等；特别提醒：部分鞋类商品上会悬挂RFID环扣。作为该产品退换货的必要条件之一，请您试穿时务必保留该环扣。如该环扣被损坏（有折痕、上面的标贴被撕掉、或被涂鸦等）、掉落或被拆卸，您将无法办理退换货手续。日常穿着时请移除该环扣。
                                                </li>
                                                <li>衣服：吊牌、洗标、颈标保留完好（无撕损、拆卸）；商品本身无涂鸦、污渍、未水洗；若有防尘包装，也请一并退回；</li>
                                                <li>其它NIKE商品：商品的包装及吊牌应保持完好（无撕损、无拆卸、无涂鸦等），商品的原购配件齐备，商品本身完好。</li>
                                            </ul>
                                            <div class="con-text">
                                                <p>C. 其他</p>
                                            </div>
                                            <ul class="con-ul">
                                                <li>在线上渠道购买的情况下，若退回的商品不符合以上退货要求，我司有权拒绝接受退货申请，并需由消费者承担相关运费。</li>
                                                <li>相关商品退货标准的图例，请参见什么样的符合退货符合NIKE退货标准？</li>
                                                <li>其它NIKE商品：商品的包装及吊牌应保持完好（无撕损、无拆卸、无涂鸦等），商品的原购配件齐备，商品本身完好。</li>
                                            </ul>
                                            <div class="sub-title">
                                                    <p>2. 其它不予退货的情形</p>
                                                </div>
                                                <ul class="con-ul">
                                                        <li>消费者自行拆动或修理造成损坏的，或其它人为破坏的情形；</li>
                                                        <li>若出现由于穿着不当造成的商品损坏；</li>
                                                        <li>无有效销售凭证或发票的；</li>
                                                        <li>其他法律法规规定免除质保责任的</li>
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