<%--
  Created by IntelliJ IDEA.
  User: lwy
  Date: 2021/6/16
  Time: 上午8:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <title>首页</title>
    <style>
      body {
        background-image: url("img/index.jpg");
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
      a:hover {
        color: deepskyblue;
      }


    </style>
  </head>
  <body>
  <div class="k">
    <div class="xin"><a href="register.jsp">新用户点这里</a>
      <a href="login.jsp">老用户来登录</a></div>
  </div>
  </body>
</html>
