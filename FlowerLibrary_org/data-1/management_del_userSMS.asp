<%@  language="VBScript" codepage="65001" %>
<%if session("admin")<>"" then%>
<%
	else
	response.Redirect("management_login.asp")
	end if
    session("user_id")=""
%>
<!--#include file="conn.asp"-->
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








    <title>管理界面 - Flower Library -</title>
</head>

<body>
    <div class="container-fluid-root">
        <!-- nav-small 开始 -->
        <nav class="d-block d-md-none nav-small">
                <ul class="clearfix">
                    <li>
                        <a href="login.asp" class="nav-login">
                            <font>登录</font>
                        </a>
                    </li>
                    <li>
                        <a href="register.asp" class="nav-signup">
                            <font>注册</font>
                        </a>
                    </li>
                    <li>
                        <a href="user_info.asp" class="nav-cart">
                            <font>购物车</font>
                        </a>
                    </li>
                    <li>
                        <a href="user_info.asp" class="nav-wish">
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
                    </li>
                </ul>
    
        </nav>
            <div class="b-nav">
                <li><a class="b-link" href="Home.asp">Home</a></li>
                <li><a class="b-link" href="Product.asp">产品</a></li>
                <li><a class="b-link" href="Dictionary.asp">字典</a></li>
                <li><a class="b-link" href="Help.asp">购物指南</a></li>
                <li><a class="b-link" href="Magazine.asp">Magazine</a></li>
                <li><a class="b-link" href="help/contact_us_7.asp">联系我们</a></li>
            </div>
            <!-- nav-small 结束 -->
    
            <!-- nav-big 开始 -->
            <div class="d-none d-md-block nav-big">
                <div class="nav-logo">
                    <img src="images/logo.svg" alt="">
                </div>
                <div class="nav-big-area">
                    <li>
                        <a href="Login.asp" class="nav-login">
                            <font>登录</font>
                        </a>
                    </li>
                    <li>
                        <a href="Register.asp" class="nav-signup">
                            <font>注册</font>
                        </a>
                    </li>
                    <li>
                        <a href="user_info.asp" class="nav-cart">
                            <font>购物车</font>
                        </a>
                    </li>
                    <li>
                        <a href="user_info.asp" class="nav-wish">
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
                            <font>管理界面</font>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- 面包屑 结束 -->



        <div class="form-cell">
            <div class="form-cell_header">
                <div class="text-center">
                    <img class="d-md-none" src="images/logo.svg" alt="logo">
                </div>
                <div class="form-cell_title pb-2">
                    <h4 class="text-center">管理界面</h4>
                    <p class="shop-border-solid"></p>
                </div>
            </div>
        </div>


        <div class="container-fluid-root">

            <div class="accbox">
                <div class="accnav row">
                    <div class="accnav-item col-6 col-md-3">
                        <a class="acc-black" id="acc1">管理员信息</a>
                    </div>
                    <div class="accnav-item col-6 col-md-3">
                        <a id="acc2">用户留言</a>
                    </div>
                    <div class="accnav-item col-6 col-md-3">
                        <a id="acc3">用户信息</a>
                    </div>
                    <div class="accnav-item col-6 col-md-3">
                        <a id="acc4">文章信息</a>
                    </div>
                </div>

                <div class="accbox-area">
				<%
Mname = session("admin")
set rs2=server.createobject("adodb.recordset")
sql="select Mid, Mname from management where Mname='"&Mname&"'"
rs2.open sql,conn,1,1
				%>
                    <div id="accountInfo1" class="collapse show">
                        <h2><%=rs2("Mname") %><em style="padding-left:1rem;"><a href="management_login.asp">注销登录</a></em></h2>
                        <p><strong>管理员I D : </strong><%=rs2("Mid") %></p>
                    </div>


                    <div id="accountInfo2" class="m-comment magazine-cell collapse">
                        <h4>用户留言</h4>
                        <div class="m-comment_list">
                            <ul class="showMoreNChildren" pagesize="10">
				<%
	set rs1=server.createobject("adodb.recordset")
	sql="select Bmagazine, Bid, Uname, Uqq, Uemail, Bcontent, Bdata, userdata.Uid from Bigdata, userdata where Bigdata.Uid = userdata.Uid order by Bid desc"
	rs1.open sql,conn,1,1

	do while not rs1.eof
                %>
                                <li>
                                    <h5 class="m-header">
                                        <font><%=rs1("Uname")%></font>
                                        <em>用户I D：<%=rs1("Uid")%></em>
                                        <span class="dot">•</span>
                                        <em>Q Q：<%=rs1("Uqq")%></em>
                                        <span class="dot">•</span>
                                        <em>email：<%=rs1("Uemail")%></em>
                                    </h5>
                                    <h5 class="m-header">
                                        <font>文章I D：<%=rs1("Bmagazine") %></font>
                                        <span class="dot">•</span>
                                        <em><%=rs1("Bdata")%></em>
                                    </h5>
                                    <p><%=rs1("Bcontent") %></p>
                                    <p class="a-del"><a href="management_deling.asp?Bid=<%=rs1("Bid")%>" onclick="return confirm('是否确定删除本留言？');">删除留言</a></p>
                                </li>
                                <%rs1.movenext
                                    loop %>
                            <li>全部加载完毕</li>
                            </ul>
                        </div>
                    </div>

                    <div id="accountInfo3" class="m-comment magazine-cell collapse">
                         <h4>用户信息</h4>
                        <div class="m-comment_list">
                           <ul class="showMoreNChildren2" pagesize="10">
				<%
	set rs3=server.createobject("adodb.recordset")
	sql="select * from userdata order by Uid desc"
	rs3.open sql,conn,1,1

	do while not rs3.eof
				%>
                               <li>
                                    <h5 class="m-header">
                                        <font><%=rs3("Uname") %></font>
                                        <em>Q Q：<%=rs3("Uqq") %></em>
                                        <span class="dot">•</span>
                                        <em>email：<%=rs3("Uemail") %></em>
                                        <span class="dot">•</span>
                                    </h5>
                                   <h5 class="m-header">
                                        <font>用户I D：<%=rs3("Uid") %></font>
                                        <span class="dot">•</span>
                                        <font>用户密码：<%=rs3("Upassword") %></font>
                                    </h5>
                                   <p class="a-del"><%=rs3("Udata") %></p>
                                   <p class="a-del"><a href="management_deling_user.asp?Uid=<%=rs3("Uid")%>" onclick="return confirm('是否确定删除本用户？注意：将会删除该用户所有已发信息！');">注销用户</a></p>
                               </li>
            <%         
            rs3.movenext
            loop  
            %>
                           <li>全部加载完毕</li>
                           </ul>
                        </div>
                    </div>


                    <div id="accountInfo4"></div>

            </div>
        </div>
    </div>

    <!-- 我的信息 我的留言 我的心愿单 我的购物车 -->


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


    <script type="text/javascript">
        //点击#acc1，则显示accountInfo1,隐藏2，3，4
        $("#acc1").click(function () {
            if ($("#acc1").hasClass('acc-black')) {

            }
            else {
                $("#acc1").addClass('acc-black');
                $("#acc2").removeClass('acc-black');
                $("#acc3").removeClass('acc-black');
                $("#acc4").removeClass('acc-black');
                $("#accountInfo1").collapse('show');
                $("#accountInfo2").collapse('hide');
                $("#accountInfo3").collapse('hide');
                $("#accountInfo4").collapse('hide');
            }
        });
        $("#acc2").click(function () {
            if ($("#acc2").hasClass('acc-black')) {

            }
            else {
                $("#acc1").removeClass('acc-black');
                $("#acc2").addClass('acc-black');
                $("#acc3").removeClass('acc-black');
                $("#acc4").removeClass('acc-black');
                $("#accountInfo1").collapse('hide');
                $("#accountInfo2").collapse('show');
                $("#accountInfo3").collapse('hide');
                $("#accountInfo4").collapse('hide');
            }
        });
        $("#acc3").click(function () {
            if ($("#acc3").hasClass('acc-black')) {

            }
            else {
                $("#acc1").removeClass('acc-black');
                $("#acc2").removeClass('acc-black');
                $("#acc3").addClass('acc-black');
                $("#acc4").removeClass('acc-black');
                $("#accountInfo1").collapse('hide');
                $("#accountInfo2").collapse('hide');
                $("#accountInfo3").collapse('show');
                $("#accountInfo4").collapse('hide');
            }
        });
        $("#acc4").click(function () {
            if ($("#acc4").hasClass('acc-black')) {

            }
            else {
                $("#acc1").removeClass('acc-black');
                $("#acc2").removeClass('acc-black');
                $("#acc3").removeClass('acc-black');
                $("#acc4").addClass('acc-black');
                $("#accountInfo1").collapse('hide');
                $("#accountInfo2").collapse('hide');
                $("#accountInfo3").collapse('hide');
                $("#accountInfo4").collapse('show');
            }
        });
    </script>

    <!-- <script type="text/javascript">
        //如果#acc中有.show的话，则显示accountInfo1,隐藏2，3，4
        $("#acc1").click(function () {
            if ($("#acc").hasClass('show')) {
                $("#accountInfo1").collapse('show');
                $("#accountInfo2").collapse('hide');
                $("#accountInfo3").collapse('hide');
                $("#accountInfo4").collapse('hide');
            }
            else {
                $("#accountInfo1").collapse('show');
                $("#accountInfo2").collapse('hide');
                $("#accountInfo3").collapse('hide');
                $("#accountInfo4").collapse('hide');
            }
        });
   </script> -->

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
    $.showMore(".showMoreNChildren,.showMoreNChildren2");
  </script>
</body>
<%
rs1.close
rs2.close
rs3.close
set rs1=nothing
set rs2=nothing
set rs3=nothing
conn.close
set conn=nothing
%>
</html>
