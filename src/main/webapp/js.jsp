<%--
  Created by IntelliJ IDEA.
  User: 86182
  Date: 2022/1/30
  Time: 12:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>js</title>
</head>
    <script >
        // var i;
        // alert(i);
        // alert(typeof i);
        // i = 1;
        // alert(typeof i);
        // i = false;
        // alert(typeof i);
        // i = "guanshen";
        // alert(typeof i);
        function add(a, b) {
            console.log(a + b);
        }

        // add(1, 1);

        Add = function (a,b) {
            console.log(a + b)
        }

        // Add(1, 2)
        Add(2, 2, 3);
        sayHello = function (userName) {
            alert("hello " + userName);
        }

        function test1(userName) {
            alert("test1");
        }

        function  test1() {
            alert("test1 test1")
        }

        //test1("lisi");

        function myName() {
            name = "guanshen"
        }

        myName();

        // alert("myName =" + name);

        window.onload = function () {
            document.getElementById("btn").onclick = test1;
        }

        window.onload = function () {
            document.getElementById("btn1").onclick = function () {
                 document.getElementById("mytext").type = "checkbox";
            }
        }

        window.onload = function () {
            var username = document.getElementById("username");
            username.onkeydown = function (event) {
                if (event.keyCode === 13) {
                    alert("login.....");
                }
            }
        }

        window.onload = function () {
            document.getElementById("btn").onclick = function () {
                document.getElementById("username").value = "guanshen"
                alert(document.getElementById("username").value);
            }
        }

        window.onload = function () {
            document.getElementById("btn1").onclick = function () {
                document.getElementById("copy").value = document.getElementById("username").value;
            }
        }

        window.onload = function () {
            document.getElementById("btn2").onclick = function () {
                document.getElementById("div").innerText = "<font color='red'>guanshen</font>"

                document.getElementById("div").innerHTML = "<font color='red'><a href=''>guanshen</a></font>";
            }
        }

        window.onload = function () {
            document.getElementById("btn3").onclick = function () {
                var email = document.getElementById("email").value;
                var emailRegExp = /^[A-Za-z0-9\u4e00-\u9fa5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
                var result = emailRegExp.test(email);
                if (result) {
                    document.getElementById("emailError").innerText = "legal";
                } else {
                    document.getElementById("emailError").innerText = "illegal";
                }
            }

            document.getElementById("email").onfocus = function () {
                document.getElementById("emailError").innerText = "";
            }
        }
    </script>
<body>

<%--    <input type="button" value="hello" onclick="sayHello('guanshen')" />--%>
<%--    <input type="button" id="btn" value="function"  /> <br>--%>

<%--    <input type="text" id="mytext" />--%>
<%--    <input type="button" value="change" id="btn1"/><br><br>--%>

<%--    <input type="text" id="username" />--%>

        <input type="text" id="username" />
        <input type="button" value="get username" id="btn"/><br>
        <input type="text" id="copy" />
        <input type="button" value="copy" id="btn1" />
        <br>
        <input type="text" onblur="alert(this.value)" />
        <br>
        <input type="button" value="set" id="btn2"/>
        <div id="div" style="width: 200px;height: 200px;border: 1px aqua solid"></div><br>
        <span></span><br>
        <input type="text" id="email" />
        <span id="emailError" style="color: red; font-size: 12px"></span>
        <br>
        <input type="button" value="checkEmail" id="btn3" />
</body>
</html>
