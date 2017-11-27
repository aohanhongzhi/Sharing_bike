<%--
  Created by IntelliJ IDEA.
  User: Vodka
  Date: 2017/11/27
  Time: 17:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>注册 | 单车调度系统</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,800italic,400,700,800">
    <link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Oswald:400,700,300">
    <link type="text/css" rel="stylesheet" href="styles/font-awesome.min.css">
    <link type="text/css" rel="stylesheet" href="styles/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="styles/animate.css">
    <link type="text/css" rel="stylesheet" href="styles/all.css">
    <link type="text/css" rel="stylesheet" href="styles/main.css">
    <link type="text/css" rel="stylesheet" href="styles/style-responsive.css">
</head>
<body style="background: url('images/bg/bg.png') center center fixed;">
<div class="page-form">
    <div class="panel panel-blue">
        <div class="panel-body pan">
            <form action="" class="form-horizontal">
                <div class="form-body pal" style="margin-top: -90px">
                    <div class="col-md-12 text-center">
                        <h1 style="margin-top: -50px; font-size: 40px;">
                            单车调度系统</h1>
                        <h5 style="margin-top: -40px; font-size: 30px;margin-left: 400px">
                            ——注册</h5>
                        <br />
                    </div>
                    <div class="form-group">
                        <div class="col-md-3">
                            <img src="images/avatar/profile-pic.png" class="img-responsive" style="margin-top: -35px;" />
                        </div>
                        <div class="col-md-9 text-center">
                            <h1></h1>
                            <br/><br/>
                            <p></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputName" class="col-md-3 control-label">
                            用户名:</label>
                        <div class="col-md-9">
                            <div class="input-icon right">
                                <i class="fa fa-user"></i>
                                <input name="username" id="inputName" type="text" placeholder="请输入用户名" class="form-control" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword" class="col-md-3 control-label">
                            密码:</label>
                        <div class="col-md-9">
                            <div class="input-icon right">
                                <i class="fa fa-lock"></i>
                                <input name="password" id="inputPassword" type="password" placeholder="请输入密码" class="form-control" /></div>
                        </div>
                    </div>
                    <div class="form-group mbn">
                        <div class="col-lg-12" align="right">
                            <div class="form-group mbn">
                                <div class="col-lg-3">
                                    &nbsp;
                                </div>
                                <div class="col-lg-9">
                                    <button type="submit" class="btn btn-default">完成</button>&nbsp;&nbsp;
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="col-lg-12 text-center">
        <p>
            Forgot Something ?
        </p>
    </div>
</div>
</body>
</html>


