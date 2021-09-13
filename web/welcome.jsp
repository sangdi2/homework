<%--
  Created by IntelliJ IDEA.
  User: lwy
  Date: 2021/6/16
  Time: 上午9:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

    <base href="<%=basePath%>">
    <title>大学生心理健康网站</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <style>
        body {
            background-color: #f3f5f7;
        }
        .bian {
            height: 140px;
            background-color: #bee1da;
            margin-left: 70px;
            margin-right: 70px;
        }
        .bian .img {
            background-image: url("img/logo.png");
            background-size:477px 140px;
            width: 477px;
            height: 140px;
            float: left;
        }
        .bian .hua {

            width: 140px;
            height: 140px;
            float: right;

        }
        .bian .hua:hover {
            box-shadow: 10px 10px 10px -4px rgba(0,0,0,.3);
        }
        .bian .shu {
            width: 140px;
            height: 140px;
            float: right;
        }
        .bian .shu:hover {
            box-shadow: 10px 10px 10px -4px rgba(0, 0, 0, .3);
        }
        .bian .ya {
            width: 140px;
            height: 140px;
            float: right;
        }
        .bian .ya:hover {
            box-shadow: 10px 10px 10px -4px rgba(0, 0, 0, .3);
        }
        .zhutu {
            height: 600px;
            margin-right: 70px;
            margin-left: 70px;
            background-image: url("img/zhutu.jpeg");
            background-repeat: no-repeat;
            background-position: center;
            background-color: pink;
            padding-top: 50px;
        }
        .zhutu .kuang {
            width:280px;
            height: 500px;
            margin-left: 28px;
            border-radius: 50px;
            border: 10px solid #bee1da;
            background-color: #bee1da;
            padding-top: 50px;
            float: left;
        }
        p {
            font-weight: 600;
            color: white;
            text-indent: 2em;
        }
        .zhutu .kuang img {
            width: 290px;
            height: 159px;
        }
        .zhutu .you {
            width:140px;
            height: 500px;
            border-radius: 50px;
            background-color: white;
            border: 10px solid #bee1da;
            float: right;
            margin-right: 28px;
        }
        .you .huaa {
            float: left;
            width: 140px;
            height: 160px;
            background-color: #bee1da;
            border-radius: 50px;
        }
        .huaa a {
            color: white;
            font-weight: 600;
            text-decoration: none;
            text-align: center;
        }
        .zhutu .huaa:hover {
            box-shadow: 10px 10px 10px -4px rgba(0, 0, 0, .3);
        }
        .you .shua {
            float: left;
            width: 140px;
            height: 160px;
            background-color: #bee1da;
            border-radius: 50px;
        }
        .shua a {
            color: white;
            font-weight: 600;
            text-decoration: none;
            text-align: center;
        }
        .zhutu .shua:hover {
            box-shadow: 10px 10px 10px -4px rgba(0, 0, 0, .3);
        }
        .you .yaa {
            float: left;
            width: 140px;
            height: 160px;
            background-color: #bee1da;
            border-radius: 50px;
        }
        .yaa a {
            color: white;
            font-weight: 600;
            text-decoration: none;
            text-align: center;
        }
        .zhutu .yaa:hover {
            box-shadow: 10px 10px 10px -4px rgba(0, 0, 0, .3);
        }
        .you .nan img {
            width: 140px;
            height: 500px;
        }
        .zhutu .zi {
            padding-left: 20px;
        }


    </style>
</head>
<body>
<div class="bian">
    <div class="img"></div>
    <div class="hua"><a href="#"><img src="img/hua.png"></a></div>
    <div class="shu"><a href="jianjie.jsp"><img src="img/shu.png"></a></div>
    <div class="ya"><a href="xinling.jsp"><img src="img/ya.png"></a></div>
</div>
<div class="zhutu">
    <div class="kuang">
        <p>顺从自己的内心而活，才是最好的生活。</p>
        <p>人生最可怕的不是眼睛看不见了，而是心失去了方向。</p>
        <p>如若心中有彼岸，梦想之帆迟早会扬起；</p>
        <p>如若心中有不灭的灯塔，即使九死一生，希望仍在。</p>
        <p>护好心灯，让它长明，人生就有希望。</p>
        <img src="img/niao.jpg">
    </div>
    <div class="you">
        <div class="huaa"><a href="#"><img src="img/hua.png"> <div class="zi">网站首页</div></a> </div>

        <div class="shua"><a href="jianjie.jsp"><img src="img/shu.png"> <div class="zi">心理健康简介</div></a> </div>
        <div class="yaa"><a href="xinling.jsp"><img src="img/ya.png"> <div class="zi">心灵驿站小测试</div></a> </div>
    </div>
</div>
</body>
</html>