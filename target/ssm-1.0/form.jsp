<%--
  Created by IntelliJ IDEA.
  User: 86182
  Date: 2022/1/31
  Time: 13:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>form</title>
    <style type="text/css">
        span {
            color: red;
            font-size: 12px;
        }
    </style>

    <script>
        window.onload = function () {
            var usernameElt = document.getElementById("username");
            usernameElt.onblur = function () {
                var username = usernameElt.value;
                username = username.trim();
                if (username) {
                    if (username.length < 6 || username.length > 14) {
                        document.getElementById("usernameError").innerHTML = "username is illegal !!!"
                    } else {
                        var regExp = /^[A-Za-z0-9]+$/;
                        var ok = regExp.test(username);
                        if (ok) {
                            document.getElementById("usernameError").innerHTML = "<font color='#32cd32'>√</font>"
                        } else {
                            document.getElementById("usernameError").innerHTML = "username has illegal signs !!!"
                        }

                    }
                } else {
                    document.getElementById("usernameError").innerHTML = "username is null !!!"
                }
            }

            usernameElt.onfocus = function () {
                if (document.getElementById("usernameError").innerText != "√") {
                    usernameElt.value = "";
                }
                document.getElementById("usernameError").innerText = "";

            }

            var secretElt1 = document.getElementById("secret1");
            var secretElt = document.getElementById("secret");
            secretElt1.onblur = function () {
                var secret1 = secretElt1.value;
                var secret = secretElt.value;
                if (secret) {
                    if (secret == secret1) {
                        document.getElementById("confirmError").innerHTML = "<font color='#32cd32'>√</font>"
                    } else {
                        document.getElementById("confirmError").innerText = "pwd is illegal !!!";
                    }
                } else {
                    document.getElementById("confirmError").innerText = "pwd is null !!!";
                }
            }

            secretElt1.onfocus = function () {

                if (document.getElementById("confirmError").innerText != "√") {
                        secretElt1.value = "";
                }

                document.getElementById("confirmError").innerText = "";
            }

            var submitButton = document.getElementById("submitBtn");
            submitButton.onclick = function () {
                usernameElt.focus();
                usernameElt.blur();

                secretElt1.focus();
                secretElt1.blur();

                if (document.getElementById("usernameError").innerText == "√" && document.getElementById("confirmError").innerText == "√") {
                    var userForm = document.getElementById("userForm");
                    // userForm.action ="https://www.baidu.com";
                    userForm.submit();
                }
            }

        }

    </script>
</head>

<body>
    <form id="userForm" action="https://www.baidu.com" method="get">
        username:<input type="text" name="username" id="username" /><span id="usernameError"></span><br>
        secret:<input type="text" name="secret" id="secret" /><br>
        confirm:<input type="text" name="confirm" id="secret1" /><span id="confirmError"></span><br>
        email:<input type="text" name="email" id="email" /><span id="emailError"></span><br>
        <input type="button" value="register" id="submitBtn"/>
        <input type="reset" value="reset" />
    </form>
</body>
</html>
