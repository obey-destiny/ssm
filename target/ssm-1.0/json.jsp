<%--
  Created by IntelliJ IDEA.
  User: 86182
  Date: 2022/1/27
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试SpringMVC与Ajax集成</title>
    <script src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js"></script>
    <script>
        $(function () {
            $("#btn").click(function () {

                $.get("${pageContext.request.contextPath}/user/ajaxFindAll", function (result) {
                    $.each(result, function (i, user) {
                        var ul = $("<ul/>");
                        var idLi = $("<li/>").text(user.id);
                        var nameLi = $("<li/>").text(user.name);
                        var passwordLi = $("<li/>").text(user.password);
                        ul.append(idLi).append(nameLi).append(passwordLi);
                        $("#bd").append(ul);
                    })
                }, "JSON");
            })
        })
    </script>
</head>
<body id="bd">
    <button id="btn">显示一群人</button>
</body>
</html>
