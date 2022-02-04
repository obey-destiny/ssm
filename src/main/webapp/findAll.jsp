<%--
  Created by IntelliJ IDEA.
  User: 86182
  Date: 2022/1/26
  Time: 20:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>展示所有用户信息</title>
</head>
<body>
    <h1>展示用户列表</h1>
    <c:forEach items="${requestScope.users}" var="user">
        ${user.id} === ${user.name} === ${user.password} <br>
    </c:forEach>
    ${user.id} === ${user.name} === ${user.password} <br>

    <a href="${pageContext.request.contextPath}/add.jsp">添加用户信息</a>
</body>
</html>
