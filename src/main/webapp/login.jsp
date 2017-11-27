<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <title>登陆与注册 | 单车调度系统</title>
    <link rel="stylesheet" href="styles/login_style.css">
    <link href="styles/popup-box.css" rel="stylesheet" type="text/css" media="all" />
    <!--<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
-->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Sign In And Sign Up Forms  Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

    </script><script src="script/jquery.min.js"></script>
    <script src="script/jquery.magnific-popup.js" type="text/javascript"></script>
    <script type="text/javascript" src="script/modernizr.custom.53451.js"></script>
    <script>
        $(document).ready(function() {
            $('.popup-with-zoom-anim').magnificPopup({
                type: 'inline',
                fixedContentPos: false,
                fixedBgPos: true,
                overflowY: 'auto',
                closeBtnInside: true,
                preloader: false,
                midClick: true,
                removalDelay: 300,
                mainClass: 'my-mfp-zoom-in'
            });

        });
    </script>

</head>
<body>
<input id="mark" type="hidden" value="<%=request.getParameter("mark")%>">
<h1 style="font-weight: 900">单车调度系统</h1>
<div class="w3layouts" style="margin-top: -20px">
    <div class="signin-agile">
        <h2 style="font-weight: 600">登录</h2>
        <form action="${pageContext.request.contextPath }/user/login" method="post">
            <input type="text" name="username" class="name" placeholder="用户名" required="">
            <input type="password" name="password" class="password" placeholder="密码" required="">
            <ul>
                <li>
                    <input type="checkbox" id="brand1" value="">
                    <label for="brand1"><span></span>记住密码</label>
                </li>
            </ul>
            <a href="#">忘记密码?</a><br>
            <div class="clear"></div>
            <input type="submit" value="登录">
        </form>
    </div>
    <div class="signup-agileinfo">
        <p>本系统采用一种轨迹预测的方式来对单车使用情况进行分析。由于现有的单车管理存在问题，仅凭借人的主观判断进行单车调
            度很容易出现偏差。并且当前通过轨迹预测来对单车进行管理的模式还未普及，因此本系统提出的基于城市计算的共享单
            车调度系统，可根据单车的轨迹进行预测，提高了共享单车管理机制的运维效率。</p>
        <div class="more">
            <a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog">点击注册</a>
        </div>
    </div>
    <div class="clear"></div>
</div>
<div class="pop-up">
    <div id="small-dialog" class="mfp-hide book-form">
        <h3>注册 </h3>
        <form action="${pageContext.request.contextPath }/user/regist" method="post">
            <input type="text" name="username" placeholder="用户名" required=""/>
            <input type="text" name="user_email" class="email" placeholder="邮件" required=""/>
            <input type="password" name="Password" class="password" placeholder="密码" required=""/>
            <input type="password" name="Password2" class="password" placeholder="重复密码" required=""/>
            <input type="submit" value="点击注册">
        </form>
    </div>
</div>
</body>
<script type="text/javascript">
	var mark=$("#mark").attr("value");
	if (mark==1){
	//注册成功
	alert("注册成功！请登录")
	}
</script>
</html>