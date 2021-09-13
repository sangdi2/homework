<%--
  Created by IntelliJ IDEA.
  User: lwy
  Date: 2021/6/16
  Time: 上午8:52
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
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <base href="<%=basePath%>">    <title>My JSP 'error.jsp' starting page</title>
    <meta http-equiv="keywords"
          content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <style>
        body {
            background-image: url("img/error.jpg");
            background-repeat: no-repeat;
            background-position: top;
            background-size: 100%;
        }
        .k {
            width:944px ;
            height: 322px;
            background-color: rgba(0,0,0,.3);
            margin:180px auto ;
            text-align: center;
            padding-top: 60px;
        }
        a {
            display: block;
            font-size: 30px;
            color: white;
            text-decoration: none;
            margin: 20px;

        }



    </style>
</head>

<body>

<div class="k">
    <div class="xin"><a href="#">用户名或密码输入错误</a>
        <a href="#">登陆失败</a></div>
</div>
</body>
</html>
