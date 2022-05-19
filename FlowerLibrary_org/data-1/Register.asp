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
    <title>注册条款 - Flower Library -</title>
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
            <li><a class="b-link" href="Dictionary.asp" >字典</a></li>
            <li><a class="b-link" href="Help.asp" >购物指南</a></li>
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
                        <font>会员登录</font>
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
                    <h4 class="text-center">注册条款</h4>
                    <p class="shop-border-solid"></p>
                </div>
            </div>
        </div>


        <div class="container-fluid-root">
            <from>
                <div class="registerbox">
                    <p class="register_title">
                        <font>请在注册前仔细阅读以下条款和条件。</font>
                    </p>
                    <p>
                        <font>条款和条件规定了您使用服务的权利和义务。</font>
                        <font>同意并单击“注册”按钮即表示您同意本协议的所有条款。</font>
                    </p>
                    <div class="d-block d-md-none register_btn1">
                        <ul>
                            <li>
                                <a class="agree" href="Home.asp">
                                    <font>我不同意</font>
                                </a>
                            </li>
                            <li>
                                <a class="disagree" href="Register_in.asp">
                                    <font>同意注册</font>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="register_text">

                        第1条（会员）
                        <br>


                        1.“会员”是指在按照公司规定的程序同意条款和条件后申请入学的个人。
                        <br>


                        2.“会员信息”是指会员向公司披露的会员属性的信息，以及会员交易历史等信息。
                        <br>


                        3.这些条款和条件适用于所有会员，并且是您在注册过程中和注册后遵循的条款和条件。
                        <br>
                        <br>


                        第2条（注册）
                        <br>


                        1.会员资格
                        <br>


                        在完成规定的注册程序后，在同意条款和条件后申请了
                        会员资格的
                        客户将被认定为会员。
                        会员注册程序应由会员进行。
                        不允许代理注册。
                        此外，可能会有一些情况，即会员资格被撤销或被公司判定为不适当的人的会员申请可能会被拒绝。
                        <br>
                        <br>


                        2.输入会员资料
                        <br>


                        请仔细阅读入门注意事项，并确保在规定的报名表中正确输入所需信息。
                        注册会员信息时，不能使用特殊符号，旧汉字，罗马数字等。
                        如果这些字符已注册，我们将更改它们。
                        <br>
                        <br>


                        3.密码管理
                        <br>


                        （1）密码仅供会员使用，不得转让或借给第三方。
                        <br>


                        （2）会员本人应负责管理，例如定期更改密码，以便其他人不知情。
                        <br>


                        （3）使用密码向公司作出的意图的指示被视为会员本人的意图，由此产生的所有付款等均由会员负责。
                        <br>
                        <br>


                        第3条（变更）
                        <br>


                        1.如果向公司报告的事项发生变化，如名称和地址，会员应立即通知公司。
                        <br>


                        2.对于因未注册变更而造成的任何损害，我们概不负责。
                        此外，即使更改已注册，请注意在更改注册之前已提交的交易将根据更改注册之前的信息进行。
                        <br>
                        <br>


                        第四条（退出）
                        <br>


                        如果会员希望退出会员，会员本人应该执行退出程序。
                        在规定的退出程序后，您将被取消订阅。
                        <br>
                        <br>


                        第五条（会员资格的丧失和赔偿义务）
                        <br>


                        1.会员在申请会员资格时作出虚假声明，
                        未通过邮购支付费用的，其他公司不适合作为会员。如果有理由承认，我们可以取消会员资格。
                        <br>


                        2.如果会员进行了以下活动，他或她将对公司遭受的损害承担责任。
                        <br>


                        （1）未经授权使用会员号和密码
                        <br>


                        （2）访问我们的网站并伪造信息或向本网站发送有害的计算机程序等，以扰乱我们的销售。
                        <br>


                        （3）侵犯公司处理的产品的知识产权。
                        <br>


                        （4）此外，采取违反本使用条款的行为。
                        <br>
                        <br>


                        第6条（会员信息的处理）
                        <br>


                        1.作为一般规则，公司是会员未经会员事先同意，不会向第三方披露信息。
                        但是，在下列情况下，我们可以在未经会员事先同意的情况下披露会员信息和其他客户信息。
                        <br>


                        （1）根据法律法规要求披露时。
                        <br>


                        （2）当确定我们需要保护我们的权利，利润，荣誉等时。
                        <br>


                        2.关于会员信息，我们将我们将按照管理。

                        我们可以使用我们公司的会员信息，以便为会员提供服务，改善服务内容，促进服务的使用，并确保服务的良好和顺利运作
                        <br>


                        3.我们将能够通过电子邮件杂志和其他方法向会员提供信息（包括广告）。
                        如果会员不想提供信息，如果他/她可以按照我们公司规定的方法通知，他/她可以停止提供信息。
                        但是，应该会员的要求，不能暂停提供运营该服务所需的信息。
                        <br>
                        <br>


                        第7条（禁止事项）
                        <br>


                        使用本服务时，禁止会员从事以下行为。
                        <br>
                        <br>


                        1.任何违反法律或法规，使用本服务的条款和条件，使用本服务购物的预防措施或本协议的任何其他条款等。
                        <br>


                        2.本公司及其他第三方的权益，贬低荣誉等。
                        <br>


                        3.可能对年轻人的身心产生不利影响的行为。
                        <br>


                        ，或者违反公共秩序和道德的其他行为。
                        4.导致其他用户或其他第三方惹恼或变得不舒服的行为。
                        <br>


                        5.不要输入虚假信息。
                        <br>


                        6.发送或写入有害的计算机程序，电子邮件等。
                        <br>


                        7.未经授权访问我们的服务器或其他计算机。
                        <br>


                        8.向第三方提供密码转让或与第三方共享。
                        <br>


                        9.我们公司认为不合适的其他
                        事项。
                        <br>
                        <br>


                        第8条（中断/停止服务等）
                        <br>


                        1.保持良好的服务运作，接下来
                        如果适用于一个问题，恕不另行通知，可能会停止全部或提供服务的一部分。
                        <br>


                        （1）必要时进行系统的定期维护和紧急维护。
                        <br>


                        （2）当负载集中在系统上时。
                        <br>


                        （3）当由于火灾，电源故障或第三方干扰而导致系统运行变得困难时。
                        <br>


                        （4）此外，如果公司确定系统必须不可避免地关闭.
                        <br>
                        <br>


                        第9条（更改/弃用服务）
                        <br>
                        根据其判断，公司可以更改全部或部分服务，恕不另行通知。
                        <br>
                        <br>


                        第10条（免责声明）
                        <br>


                        1.关于中断，延误，取消，数据丢失，数据丢失，未经授权访问数据造成的损害，以及由于通信线路或计算机故障而导致我们公司其他服务对会员造成的损害。我们不承担任何责任。
                        <br>


                        2.我们不保证从我们的网页，服务器，域等发送的电子邮件内容不会包含计算机病毒等有害内容。
                        <br>


                        3.对于违反条款和条件的会员造成的任何损害，我们概不负责。
                        <br>
                        <br>


                        第十一条（条款和条件的修改）
                        <br>


                        公司可以随时
                        修改
                        条款和条件，并可以制定补充公司条款和条件的条款和条件（以下简称“可再生条款和条件”）。
                        这些条款和条件的修订或补充应在修订后的条款或补充条款和条件张贴在公司指定的网站上时生效。
                        在这种情况下，成员将受修订条款和补充条款的约束。
                        <br>
                        <br>


                        第12条（管辖法律，管辖权）
                        <br>


                        如果对本协议存在争议，对总部所在地具有管辖权的地区法院将成为一审的专属协议管辖法院。
                        </font>
                    </div>
                    <div class="register_btn1">
                        <ul>
                            <li>
                                <a class="agree" href="Home.asp">
                                    <font>我不同意</font>
                                </a>
                            </li>
                            <li>
                                <a class="disagree" href="Register_in.asp">
                                    <font>同意注册</font>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </from>
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