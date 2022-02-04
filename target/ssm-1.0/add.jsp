<%--
  Created by IntelliJ IDEA.
  User: 86182
  Date: 2022/1/26
  Time: 21:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加用户</title>
</head>
<body>
    <h1>添加用户信息</h1>
    <form action="${pageContext.request.contextPath}/user/save">
        用户名：<input type="text" name="name"/> <br>
        密码：<input type="bame" name="password" /> <br>
        <input type="submit" value="提交" /> <br>
    </form>
</body>
</html>
