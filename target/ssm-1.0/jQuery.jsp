<%--
  Created by IntelliJ IDEA.
  User: 86182
  Date: 2022/2/2
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jQuery</title>
    <script src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#btn").on("click", function () {
                $.ajax({
                    url:"http://www.baidu.com",
                    dataType:"json",
                    success:function (res) {
                        alert(res)
                    }
                })
            })
        })
    </script>
</head>
<body>
    <input type="button" id="btn" />
</body>
</html>
