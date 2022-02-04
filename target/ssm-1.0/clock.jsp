<%--
  Created by IntelliJ IDEA.
  User: 86182
  Date: 2022/1/31
  Time: 19:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>clock</title>
    <script>
        // var now = new Date();
        // document.write(now + "<br>")
        // var newTime = now.toLocaleString();
        // document.write(newTime)
        // alert(now.getTime())
        function display() {
            var time = new Date();
            var strTime = time.toLocaleString();
            document.getElementById("timeDiv").innerText = strTime;
        }
        function start() {
            v = window.setInterval("display()", 1000);
        }

        function stop() {
            window.clearInterval(v);
        }
    </script>
</head>
<body>
    <input type="button" value="display time" onclick="start();"/>
    <input type="button" value="stop" onclick="stop()"/>
    <br><br>
    <div id="timeDiv"></div>
</body>
</html>
