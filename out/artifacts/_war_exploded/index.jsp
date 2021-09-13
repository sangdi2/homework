<%--
  Created by IntelliJ IDEA.
  User: sangdi
  Date: 2021/5/31
  Time: 13:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
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
      <div class="xin"><a href="zhuce.jsp">新用户点这里</a>
      <a href="login.jsp">老用户来登录</a></div>
 </div>
  </body>
</html>
