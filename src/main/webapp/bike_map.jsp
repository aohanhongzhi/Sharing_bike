<%@ page language="java" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
    <title>地图 | 单车调度系统</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/icons/favicon.ico">
    <link rel="apple-touch-icon" href="images/icons/favicon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/icons/favicon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/icons/favicon-114x114.png">
    <link rel="stylesheet" href="http://cache.amap.com/lbs/static/main1119.css"/>
    <script src="http://cache.amap.com/lbs/static/es5.min.js"></script>
    <script src="http://webapi.amap.com/maps?v=1.4.6&key=8566210409ddb0b851c69278fd1e4a2b"></script>
    <script type="text/javascript" src="http://cache.amap.com/lbs/static/addToolbar.js"></script>
    <script type="text/javascript" src="script/mobike-bikedata.js"></script>
    <script type="text/javascript" src="script/ofo-bikedata.js"></script>
</head>
<body>
<div id="container"></div>
<script>
    var map = new AMap.Map('container', {
        resizeEnable: true,
        zoom:17,
        center: [118.786089,31.91454]
    });
    var mobike_icon = new AMap.Icon({
        image: './images/mobike-icon.png',
        size: new AMap.Size(24, 24)
    });
    var ofo_icon = new AMap.Icon({
        image: './images/ofo-icon.png',
        size: new AMap.Size(24, 24)
    });
    var markers = [];
    for (var i = 0; i < mobike_bikes.length; i += 1) {
        var marker;
        marker = new AMap.Marker({
            icon: mobike_icon,
            position: mobike_bikes[i].center.split(','),
            title: mobike_bikes[i].bikeid,
            map: map
        });
        markers.push(marker);
    }
    for (var i = 0; i < ofo_bikes.length; i += 1) {
        var marker;
        marker = new AMap.Marker({
            icon: ofo_icon,
            position: ofo_bikes[i].center.split(','),
            title: ofo_bikes[i].bikeid,
            map: map
        });
        markers.push(marker);
    }
    map.setFitView();

</script>
</body>
</html>