<%@  language="VBScript" codepage="65001" %>
<%Response.Charset="utf-8"%>
<% 
if session("user_id")<>"" then
    response.redirect("Home.asp")  '如果已经登录，则不需要再次登录，跳转到首页。
else
'    session("return_asp")=""
end if

%>
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
    <title>注册会员 - Flower Library -</title>
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
            <li><a class="b-link" href="Home.asp" >Home</a></li>
            <li><a class="b-link" href="Product.asp" >产品</a></li>
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
                    <a href="Register.asp">
                        <font>注册条款</font>
                    </a>
                </li>
                                <li>
                    <a href="#">
                        <font>注册会员</font>
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
                    <h4 class="text-center">注册会员</h4>
                    <p class="shop-border-solid"></p>
                </div>
            </div>
        </div>


        <div class="container-fluid-root">

            <div class="rebox">
                <p>请在下面的项目中填写所需的项目。"<strong>*</strong>"标记是必填选项。</p>
                <form action="user_register_save.asp" method="post">
                    <div class="row">
                        <div class="col-lg-auto">
                            <p>你的名字<strong>※</strong></p>
                        </div>
                        <div class="col">
                            <input type="text" id="user_Uname" name="Uname" class="re_50" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-auto">
                            <p>电子邮箱<strong>※</strong></p>
                        </div>
                        <div class="col">
                            <input type="email" id="register-email" name="Uemail" aria-describedby="emailHelp" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-auto">
                            <p>联系QQ</p>
                        </div>
                        <div class="col">
                            <input type="number" id="" name="Uqq" class="re_50" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-auto">
                            <p>输入密码<strong>※</strong></p>
                        </div>
                        <div class="col">
                            <input type="password" id="register-password" name="Upassword" />
                            <p class="re_pwd"><strong>请使用4到50个半角字母数字字符(可输入标点符号)。 </strong></p>
  						    <input type="password" id="register-password-conf" name="Upassword_check"/>
                            <p class="re_pwd"><strong>请输入两次进行确认。</strong></p>
                        </div>
                    </div>
                    <div class="re_btn">
                        <ul>
                            <li>
                                <button type="submit" class="proceed">确认注册</button>
                            </li>
                        </ul>
                    </div>
                </form>
            </div>
        </div>


        <footer>
            <nav class="footerNav">
                <ul class="footer-nav row">
                    <li class="col-md-auto">
                        <a>
                            <font>购物指南</font>
                        </a>
                    </li>
                    <li class="col-md-auto">
                        <a>
                            <font>购物指南</font>
                        </a>
                    </li>
                    <li class="col-md-auto">
                        <a>
                            <font>购物指南</font>
                        </a>
                    </li>
                    <li class="col-md-auto">
                        <a>
                            <font>购物指南</font>
                        </a>
                    </li>
                    <li class="col-md-auto">
                        <a>
                            <font>购物指南</font>
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

</html>