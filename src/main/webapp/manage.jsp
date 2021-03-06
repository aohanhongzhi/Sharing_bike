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
            <div id="title-breadcrumb-option-demo" class="page-title-breadcrumb">
                <div class="page-header pull-left">
                    <div class="page-title">
                        管理中心
                    </div>
                </div>
                <ol class="breadcrumb page-breadcrumb pull-right">
                    <li><i class="fa fa-home"></i>&nbsp;<a>管理中心</a>&nbsp;&nbsp;<i
                            class="fa fa-angle-right"></i>&nbsp;&nbsp;
                    </li>
                    全部日期记录
                </ol>
                <div class="clearfix">
                </div>
            </div>
            <div class="page-content">
                <div id="tab-general">
                    <div class="panel panel-red" style="background:#FFF;width: 100%;">
                        <div class="panel-heading">使用量预测</div>
                        <div class="panel-body">
                            <div id="predict"></div>
                        </div>
                    </div>
                    <div class="panel panel-green" style="margin-top: 30px">
                        <div class="panel-heading">全部日期记录</div>
                        <div class="panel-body">
                            <div class="form-group" style="float: right">
                                <p style="float: left;margin-top: 10px;font-size: 15px">查找:&nbsp;&nbsp;</p>
                                <input type="text" class="form-control" id="name" placeholder="请输入形如'年-月-日'的日期" style="float: left;height: 35px;width: 300px">
                                <button type="submit" style="float: left;height: 35px" class="btn btn-sm bg-light rounded"><i class="fa fa-search"></i></button>
                            </div>
                            <table class="table table-hover table-bordered">
                                <thead>
                                <tr>
                                    <th>日期</th>
                                    <th>区域</th>
                                    <th>单车类型</th>
                                    <th>详细信息</th>
                                </tr>
                                </thead>
                                <tbody>
                                     <td>2018-04-17</td>
                                     <td>江宁区</td>
                                     <td>Mobike</td>
                                     <td onclick="window.location.href='detail.jsp'">查看</td>
                                </tbody>
                                <tbody>
                                    <td>2018-04-16</td>
                                    <td>江宁区</td>
                                    <td>Mobike</td>
                                    <td>查看</td>
                                </tbody>
                                <tbody>
                                     <td>2018-04-15</td>
                                     <td>江宁区</td>
                                     <td>Mobike</td>
                                     <td>查看</td>
                                </tbody>
                                <tbody>
                                     <td>2018-04-14</td>
                                     <td>江宁区</td>
                                     <td>Mobike</td>
                                     <td>查看</td>
                                </tbody>
                            </table>
                            <ul class="pagination mtm mbm" style="float:right;">
                                <li class="disabled"><a href="#">«</a></li>
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">»</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(function () {
        $('#predict').highcharts({
            chart: {
                zoomType: 'xy'
            },
            title: {
                text: '未来5天单车使用量预测'
            },
            xAxis: [{
                categories: [
                    '2018-04-18', '2018-04-19', '2018-04-20','2018-04-21','2018-04-22',
                ],
                crosshair: true
            }],
            yAxis: [{ // Primary yAxis
                labels: {
                    format: '{value} 辆',
                    style: {
                        color: Highcharts.getOptions().colors[2]
                    }
                },
                title: {
                    text: '',
                    style: {
                        color: Highcharts.getOptions().colors[2]
                    }
                },
                opposite: true
            }, { // Secondary yAxis
                gridLineWidth: 0,
                title: {
                    text: '净出入量',
                    style: {
                        color: Highcharts.getOptions().colors[0]
                    }
                },
                labels: {
                    format: '{value} 辆',
                    style: {
                        color: Highcharts.getOptions().colors[0]
                    }
                }
            }, { // Tertiary yAxis
                gridLineWidth: 0,
                title: {
                    text: '借出/还入量',
                    style: {
                        color: Highcharts.getOptions().colors[1]
                    }
                },
                labels: {
                    format: '{value} 辆',
                    style: {
                        color: Highcharts.getOptions().colors[1]
                    }
                },
                opposite: true
            }],
            tooltip: {
                shared: true
            },
            legend: {
                layout: 'vertical',
                align: 'left',
                x: 80,
                verticalAlign: 'top',
                y: 55,
                floating: true,
                backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'
            },
            series: [{
                name: '净出入量',
                type: 'column',
                yAxis: 1,
                data: [18,-32,28,21,0],
                tooltip: {
                    valueSuffix: ' 辆'
                }
            }, {
                name: '还入量',
                type: 'spline',
                yAxis: 2,
                data: [3978,3991,4000,3921,3927],
                marker: {
                    enabled: false
                },
                dashStyle: 'shortdot',
                tooltip: {
                    valueSuffix: ' 辆'
                }
            }, {
                name: '借出量',
                type: 'spline',
                data: [3966,3999,3997,3900,3920],
                tooltip: {
                    valueSuffix: ' 辆'
                }
            }]
        });
    })
</script>
</body>
</html>
