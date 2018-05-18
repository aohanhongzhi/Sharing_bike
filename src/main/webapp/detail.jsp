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
    <script src="script/jquery.min.js"></script>
    <script src="http://cdn.hcharts.cn/highcharts/highcharts.js"></script>
    <script src="http://cdn.hcharts.cn/highcharts/modules/exporting.js"></script>
    <script src="http://cdn.hcharts.cn/highcharts/modules/export-data.js"></script>
    <script src="script/bootstrap.js"></script>
    <script src="script/bootstrap-hover-dropdown.js"></script>
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
                    <li><a href=""><i class="fa fa-th-list fa-fw">
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
                        管理中心
                    </div>
                </div>
                <ol class="breadcrumb page-breadcrumb pull-right">
                    <li><i class="fa fa-home"></i>&nbsp;<a>管理中心</a>&nbsp;&nbsp;<i
                            class="fa fa-angle-right"></i>&nbsp;&nbsp;<a>统计数据</a>&nbsp;&nbsp;
                    </li>
                </ol>
                <div class="clearfix">
                </div>
            </div>
            <div class="page-content">
                <div id="tab-general">
                    <div id="p1" style="float:left;width:500px;height:300px"></div>
                    <div id="p2" style="float:left;width:500px;height:300px;margin-left: 50px"></div>
                    <div class="panel panel-blue" style="background:#FFF;float: left;width: 100%;margin-top: 10px">
                        <div class="panel-heading">借出量统计</div>
                        <div class="panel-body">
                            <table class="table table-hover table-bordered">
                                <thead>
                                <tr>
                                    <th>时间段</th>
                                    <th>00:00-04:00</th>
                                    <th>04:00-08:00</th>
                                    <th>08:00-12:00</th>
                                    <th>12:00-16:00</th>
                                    <th>16:00-20:00</th>
                                    <th>20:00-00:00</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>数量/辆</td>
                                    <td>100</td>
                                    <td>820</td>
                                    <td>1045</td>
                                    <td>658</td>
                                    <td>999</td>
                                    <td>421</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="panel panel-violet" style="background:#FFF;float: left;width: 100%;">
                        <div class="panel-heading">还入量统计</div>
                        <div class="panel-body">
                            <table class="table table-hover table-striped">
                                <thead>
                                <tr>
                                    <th>时间段</th>
                                    <th>00:00-04:00</th>
                                    <th>04:00-08:00</th>
                                    <th>08:00-12:00</th>
                                    <th>12:00-16:00</th>
                                    <th>16:00-20:00</th>
                                    <th>20:00-00:00</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>数量/辆</td>
                                    <td>89</td>
                                    <td>670</td>
                                    <td>1200</td>
                                    <td>613</td>
                                    <td>855</td>
                                    <td>514</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="panel panel-red" style="background:#FFF;float: left;width: 100%;margin-top: 10px">
                        <div class="panel-heading">使用时长统计</div>
                        <div class="panel-body">
                            <table class="table table-hover table-bordered">
                                <thead>
                                <tr>
                                    <th>使用时间长度</th>
                                    <th>15分钟之内</th>
                                    <th>15-30分钟</th>
                                    <th>30-45分钟</th>
                                    <th>45分钟-1小时</th>
                                    <th>1小时-1个半小时</th>
                                    <th>1个半小时-2个小时</th>
                                    <th>2个小时以上</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>使用人数/</td>
                                    <td>1815</td>
                                    <td>1031</td>
                                    <td>402</td>
                                    <td>291</td>
                                    <td>102</td>
                                    <td>51</td>
                                    <td>21</td>
                                    <td>7</td>
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
<script>
    $(function () {
        $('#p1').highcharts({
            chart: {
                type: 'areaspline'
            },
            title: {
                text: '昨日江宁区单车使用情况'
            },
            xAxis: {
                categories: [
                    '0-4点',
                    '4-8点',
                    '8-12点',
                    '12-16点',
                    '16-20点',
                    '20-0点',
                ],
            },
            yAxis: {
                title: {
                    text: '使用量/辆'
                }
            },
            tooltip: {
                shared: true,
                valueSuffix: '辆'
            },
            credits: {
                enabled: false
            },
            plotOptions: {
                areaspline: {
                    fillOpacity: 0.5
                }
            },
            series: [{
                name: '借出量',
                data: [100,820,1045,658,999,421]
            }, {
                name: '还入量',
                data: [89, 670, 1200, 613, 855, 514]
            }]
        });
        $('#p2').highcharts({
            chart: {
                type: 'bar'
            },
            title: {
                text: '使用时长统计'
            },
            xAxis: {
                categories: ['0-15', '15-30', '30-45', '45-60',
                    '60-90', '90-120', '120-180', '180+ ']
            },
            yAxis: {
                min: 0,
                title: {
                    text: '使用时长'
                }
            },
            legend: {
                reversed: true
            },
            plotOptions: {
                series: {
                    stacking: 'normal'
                }
            },
            series: [{
                name: '使用人数',
                data: [1815,1031,402,291,102,51,21,7]
            }]
        });
    });
</script>
</body>
</html>
