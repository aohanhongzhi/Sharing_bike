<%--
  Created by IntelliJ IDEA.
  User: Vodka
  Date: 2017/11/27
  Time: 8:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>管理中心 | 单车调度系统</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/icons/favicon.ico">
    <link rel="apple-touch-icon" href="images/icons/favicon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/icons/favicon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/icons/favicon-114x114.png">
    <!--Loading bootstrap css-->
    <link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,700">
    <link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Oswald:400,700,300">
    <link type="text/css" rel="stylesheet" href="styles/jquery-ui-1.10.4.custom.min.css">
    <link type="text/css" rel="stylesheet" href="styles/font-awesome.min.css">
    <link type="text/css" rel="stylesheet" href="styles/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="styles/animate.css">
    <link type="text/css" rel="stylesheet" href="styles/all.css">
    <link type="text/css" rel="stylesheet" href="styles/main.css">
    <link type="text/css" rel="stylesheet" href="styles/style-responsive.css">
    <link type="text/css" rel="stylesheet" href="styles/zabuto_calendar.min.css">
    <link type="text/css" rel="stylesheet" href="styles/pace.css">
    <link type="text/css" rel="stylesheet" href="styles/jquery.news-ticker.css">
</head>
<body>
<div>
    <!--BEGIN BACK TO TOP-->
    <a id="totop" href="#"><i class="fa fa-angle-up"></i></a>
    <!--END BACK TO TOP-->
    <!--BEGIN TOPBAR-->
    <div id="header-topbar-option-demo" class="page-header-topbar">
        <nav id="topbar" role="navigation" style="margin-bottom: 0;" data-step="3" class="navbar navbar-default navbar-static-top">
            <div class="navbar-header">
                <button type="button" data-toggle="collapse" data-target=".sidebar-collapse" class="navbar-toggle"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                <a id="logo" href="index.html" class="navbar-brand"><span class="fa fa-rocket"></span><span
                        class="logo-text">单车调度系统</span><span style="display: none" class="logo-text-icon">µ</span></a>
            </div>
            <div class="topbar-main"><a id="menu-toggle" href="#" class="hidden-xs"><i class="fa fa-bars"></i></a>

                <form id="topbar-search" action="" method="" class="hidden-sm hidden-xs">
                    <div class="input-icon right text-white"><a href="#"><i class="fa fa-search"></i></a><input
                            type="text" placeholder="搜索内容..." class="form-control text-white"/></div>
                </form>

                <ul class="nav navbar navbar-top-links navbar-right mbn">
                    <li class="dropdown"><a data-hover="dropdown" href="#" class="dropdown-toggle"><i
                            class="fa fa-bell fa-fw"></i><span class="badge badge-green"></span></a>

                    </li>
                    <li class="dropdown"><a data-hover="dropdown" href="#" class="dropdown-toggle"><i
                            class="fa fa-envelope fa-fw"></i><span class="badge badge-orange"></span></a>

                    </li>
                    <li class="dropdown"><a data-hover="dropdown" href="#" class="dropdown-toggle"><i
                            class="fa fa-tasks fa-fw"></i><span class="badge badge-yellow"></span></a>
                    </li>
                    <li class="dropdown topbar-user"><a data-hover="dropdown" href="#" class="dropdown-toggle"><img
                            src="images/avatar/48.jpg" alt="" class="img-responsive img-circle"/>&nbsp;<span
                            class="hidden-xs">赵 耀</span>&nbsp;<span class="caret"></span></a>
                        <ul class="dropdown-menu dropdown-user pull-right">
                            <li><a href="#"><i class="fa fa-user"></i>My Profile</a></li>
                            <li><a href="#"><i class="fa fa-calendar"></i>My Calendar</a></li>
                            <li><a href="#"><i class="fa fa-envelope"></i>My Inbox<span
                                    class="badge badge-danger"></span></a></li>
                            <li><a href="#"><i class="fa fa-tasks"></i>My Tasks<span
                                    class="badge badge-success">1</span></a></li>
                            <li class="divider"></li>
                            <li><a href="#"><i class="fa fa-lock"></i>Lock Screen</a></li>
                            <li><a href="login.jsp"><i class="fa fa-key"></i>Log Out</a></li>
                        </ul>
                    </li>
                    <li id="topbar-chat" class="hidden-xs"><a href="javascript:void(0)" data-step="4"
                                                              data-intro="&lt;b&gt;Form chat&lt;/b&gt; keep you connecting with other coworker"
                                                              data-position="left" class="btn-chat"><i
                            class="fa fa-comments"></i><span class="badge badge-info"> </span></a></li>
                </ul>
            </div>
        </nav>
    </div>
    <!--END TOPBAR-->
    <div id="wrapper">
        <!--BEGIN SIDEBAR MENU-->
        <nav id="sidebar" role="navigation" data-step="2" data-intro="Template has &lt;b&gt;many navigation styles&lt;/b&gt;"
             data-position="right" class="navbar-default navbar-static-side">
            <div class="sidebar-collapse menu-scroll">
                <ul id="side-menu" class="nav">

                    <div class="clearfix"></div>
                    <li><a href="index.jsp"><i class="fa fa-tachometer fa-fw">
                        <div class="icon-bg bg-orange"></div>
                    </i><span class="menu-title">首页</span></a></li>
                    <li><a href="show_map.jsp"><i class="fa fa-desktop fa-fw">
                        <div class="icon-bg bg-pink"></div>
                    </i><span class="menu-title">地图界面</span></a>
                    </li>
                    <li><a href="bike_data.jsp"><i class="fa fa-send-o fa-fw">
                        <div class="icon-bg bg-green"></div>
                    </i><span class="menu-title">单车数据</span></a>

                    </li>
                    <li class="active"><a href="manage.jsp"><i class="fa fa-edit fa-fw">
                        <div class="icon-bg bg-violet"></div>
                    </i><span class="menu-title">管理中心</span></a>

                    </li>
                    <li><a href="contact.jsp"><i class="fa fa-th-list fa-fw">
                        <div class="icon-bg bg-blue"></div>
                    </i><span class="menu-title">与我联系</span></a>

                    </li>
                </ul>
            </div>
        </nav>
        <div id="page-wrapper">
            <!--BEGIN TITLE & BREADCRUMB PAGE-->
            <div id="title-breadcrumb-option-demo" class="page-title-breadcrumb">
                <div class="page-header pull-left">
                    <div class="page-title">
                        管理中心</div>
                </div>
                <ol class="breadcrumb page-breadcrumb pull-right">
                    <li><i class="fa fa-home"></i>&nbsp;<a href="dashboard.html">Home</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                    <li class="hidden"><a href="#">管理中心</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                    <li class="active">管理中心</li>
                </ol>
                <div class="clearfix">
                </div>
            </div>
            <!--END TITLE & BREADCRUMB PAGE-->
            <!--BEGIN CONTENT-->
            <div class="page-content">
                <div id="tab-general">
                    <div class="row mbl">
                        <div class="col-lg-12">

                            <div class="col-md-12">
                                <div id="area-chart-spline" style="width: 100%; height: 300px; display: none;">
                                </div>
                            </div>

                        </div>

                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="panel panel-yellow">
                                        <div class="panel-heading">Simple Table</div>
                                        <div class="panel-body">
                                            <table class="table table-hover">
                                                <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Username</th>
                                                    <th>Age</th>
                                                    <th>Status</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Henry</td>
                                                    <td>23</td>
                                                    <td><span class="label label-sm label-success">Approved</span></td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>John</td>
                                                    <td>45</td>
                                                    <td><span class="label label-sm label-info">Pending</span></td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>Larry</td>
                                                    <td>30</td>
                                                    <td><span class="label label-sm label-warning">Suspended</span></td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td>Lahm</td>
                                                    <td>15</td>
                                                    <td><span class="label label-sm label-danger">Blocked</span></td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="panel panel-green">
                                        <div class="panel-heading">Bordered Table</div>
                                        <div class="panel-body">
                                            <table class="table table-hover table-bordered">
                                                <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Username</th>
                                                    <th>Age</th>
                                                    <th>Status</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Henry</td>
                                                    <td>23</td>
                                                    <td><span class="label label-sm label-success">Approved</span></td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>John</td>
                                                    <td>45</td>
                                                    <td><span class="label label-sm label-info">Pending</span></td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>Larry</td>
                                                    <td>30</td>
                                                    <td><span class="label label-sm label-warning">Suspended</span></td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td>Lahm</td>
                                                    <td>15</td>
                                                    <td><span class="label label-sm label-danger">Blocked</span></td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="panel panel-red">
                                        <div class="panel-heading">Contextual Row</div>
                                        <div class="panel-body">
                                            <table class="table table-hover table-bordered">
                                                <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Column</th>
                                                    <th>Column</th>
                                                    <th>Column</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr class="active">
                                                    <td>1</td>
                                                    <td>active</td>
                                                    <td>active</td>
                                                    <td>active</td>
                                                </tr>
                                                <tr class="success">
                                                    <td>2</td>
                                                    <td>success</td>
                                                    <td>success</td>
                                                    <td>success</td>
                                                </tr>
                                                <tr class="warning">
                                                    <td>3</td>
                                                    <td>warning</td>
                                                    <td>warning</td>
                                                    <td>warning</td>
                                                </tr>
                                                <tr class="danger">
                                                    <td>4</td>
                                                    <td>danger</td>
                                                    <td>danger</td>
                                                    <td>danger</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="panel panel-blue" style="background:#FFF;">
                                        <div class="panel-heading">Variations Table</div>
                                        <div class="panel-body">
                                            <table class="table table-hover table-bordered">
                                                <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Username</th>
                                                    <th>Age</th>
                                                    <th>Status</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Henry</td>
                                                    <td>23</td>
                                                    <td><span class="label label-sm label-success">Approved</span></td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>John</td>
                                                    <td>45</td>
                                                    <td><span class="label label-sm label-info">Pending</span></td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>Larry</td>
                                                    <td>30</td>
                                                    <td><span class="label label-sm label-warning">Suspended</span></td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td>Lahm</td>
                                                    <td>15</td>
                                                    <td><span class="label label-sm label-danger">Blocked</span></td>
                                                </tr>
                                                </tbody>
                                                <tfoot>
                                                <tr>
                                                    <th></th>
                                                    <th><i>4 People</i></th>
                                                    <th></th>
                                                    <th><i>1 Approved</i></th>
                                                </tr>
                                                </tfoot>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="panel panel-violet">
                                        <div class="panel-heading">Striped Table</div>
                                        <div class="panel-body">
                                            <table class="table table-hover table-striped">
                                                <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Username</th>
                                                    <th>Age</th>
                                                    <th>Status</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Henry</td>
                                                    <td>23</td>
                                                    <td><span class="label label-sm label-success">Approved</span></td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>John</td>
                                                    <td>45</td>
                                                    <td><span class="label label-sm label-info">Pending</span></td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>Larry</td>
                                                    <td>30</td>
                                                    <td><span class="label label-sm label-warning">Suspended</span></td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td>Lahm</td>
                                                    <td>15</td>
                                                    <td><span class="label label-sm label-danger">Blocked</span></td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="panel panel-pink">
                                        <div class="panel-heading">Condensed Table</div>
                                        <div class="panel-body">
                                            <table class="table table-hover table-condensed">
                                                <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Username</th>
                                                    <th>Age</th>
                                                    <th>Status</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Henry</td>
                                                    <td>23</td>
                                                    <td><span class="label label-sm label-success">Approved</span></td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>John</td>
                                                    <td>45</td>
                                                    <td><span class="label label-sm label-info">Pending</span></td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>Larry</td>
                                                    <td>30</td>
                                                    <td><span class="label label-sm label-warning">Suspended</span></td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td>Lahm</td>
                                                    <td>15</td>
                                                    <td><span class="label label-sm label-danger">Blocked</span></td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="panel panel-grey">
                                        <div class="panel-heading">Contextual Column</div>
                                        <div class="panel-body">
                                            <table class="table table-hover table-bordered">
                                                <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Column</th>
                                                    <th>Column</th>
                                                    <th>Column</th>
                                                    <th>Column</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td class="active">active</td>
                                                    <td class="success">success</td>
                                                    <td class="warning">warning</td>
                                                    <td class="danger">danger</td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td class="active">active</td>
                                                    <td class="success">success</td>
                                                    <td class="warning">warning</td>
                                                    <td class="danger">danger</td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td class="active">active</td>
                                                    <td class="success">success</td>
                                                    <td class="warning">warning</td>
                                                    <td class="danger">danger</td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td class="active">active</td>
                                                    <td class="success">success</td>
                                                    <td class="warning">warning</td>
                                                    <td class="danger">danger</td>
                                                </tr>
                                                <tr>
                                                    <td>5</td>
                                                    <td class="active">active</td>
                                                    <td class="success">success</td>
                                                    <td class="warning">warning</td>
                                                    <td class="danger">danger</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="panel panel-orange">
                                        <div class="panel-heading">Hover Table - Opion 1</div>
                                        <div class="panel-body">
                                            <table class="table table-hover">
                                                <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Username</th>
                                                    <th>Age</th>
                                                    <th>Status</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Henry</td>
                                                    <td>23</td>
                                                    <td><span class="label label-sm label-success">Approved</span></td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>John</td>
                                                    <td>45</td>
                                                    <td><span class="label label-sm label-info">Pending</span></td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>Larry</td>
                                                    <td>30</td>
                                                    <td><span class="label label-sm label-warning">Suspended</span></td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td>Lahm</td>
                                                    <td>15</td>
                                                    <td><span class="label label-sm label-danger">Blocked</span></td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="panel panel-green">
                                        <div class="panel-heading">Hover Table - Opion 2</div>
                                        <div class="panel-body">
                                            <table class="table table-hover-color">
                                                <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Username</th>
                                                    <th>Age</th>
                                                    <th>Status</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Henry</td>
                                                    <td>23</td>
                                                    <td><span class="label label-sm label-success">Approved</span></td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>John</td>
                                                    <td>45</td>
                                                    <td><span class="label label-sm label-info">Pending</span></td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>Larry</td>
                                                    <td>30</td>
                                                    <td><span class="label label-sm label-warning">Suspended</span></td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td>Lahm</td>
                                                    <td>15</td>
                                                    <td><span class="label label-sm label-danger">Blocked</span></td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>

                    </div>
                </div>
            </div>
            <!--END CONTENT-->
            <!--BEGIN FOOTER-->
            <div id="footer">
                <div class="copyright">
                    <a href="#">2014 © KAdmin Responsive Multi-Purpose Template</a></div>
            </div>
            <!--END FOOTER-->
        </div>
        <!--END PAGE WRAPPER-->
    </div>
</div>
<script src="script/jquery-1.10.2.min.js"></script>
<script src="script/jquery-migrate-1.2.1.min.js"></script>
<script src="script/jquery-ui.js"></script>
<script src="script/bootstrap.min.js"></script>
<script src="script/bootstrap-hover-dropdown.js"></script>
<script src="script/html5shiv.js"></script>
<script src="script/respond.min.js"></script>
<script src="script/jquery.metisMenu.js"></script>
<script src="script/jquery.slimscroll.js"></script>
<script src="script/jquery.cookie.js"></script>
<script src="script/icheck.min.js"></script>
<script src="script/custom.min.js"></script>
<script src="script/jquery.news-ticker.js"></script>
<script src="script/jquery.menu.js"></script>
<script src="script/pace.min.js"></script>
<script src="script/holder.js"></script>
<script src="script/responsive-tabs.js"></script>
<script src="script/jquery.flot.js"></script>
<script src="script/jquery.flot.categories.js"></script>
<script src="script/jquery.flot.pie.js"></script>
<script src="script/jquery.flot.tooltip.js"></script>
<script src="script/jquery.flot.resize.js"></script>
<script src="script/jquery.flot.fillbetween.js"></script>
<script src="script/jquery.flot.stack.js"></script>
<script src="script/jquery.flot.spline.js"></script>
<script src="script/zabuto_calendar.min.js"></script>
<script src="script/index.js"></script>
<!--LOADING SCRIPTS FOR CHARTS-->
<script src="script/highcharts.js"></script>
<script src="script/data.js"></script>
<script src="script/drilldown.js"></script>
<script src="script/exporting.js"></script>
<script src="script/highcharts-more.js"></script>
<script src="script/charts-highchart-pie.js"></script>
<script src="script/charts-highchart-more.js"></script>
<!--CORE JAVASCRIPT-->
<script src="script/main.js"></script>

</body>
</html>
