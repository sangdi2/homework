<%--
  Created by IntelliJ IDEA.
  User: lwy
  Date: 2021/6/16
  Time: 上午8:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
    <title>登录页面</title>
</head>
<body>
<h3>用户登录</h3>
<form action="login.action" method="post">
    <table><tr align="center">
        <td>用户名：<input type="text" name="username"/></td>
    </tr>
        <tr align="center"><td>密   码：<input type="password" name="password"/></td></tr>
        <tr align="center">
            <td><input type="submit" value="提交"/><input
                    type="reset" value="重置"/></td>
        </tr>
    </table>
</form>
</body>
</html>
