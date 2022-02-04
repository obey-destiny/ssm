
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>checkbox</title>
    <script>
        // window.onload = function () {
        //     var first = document.getElementById("btn");
        //     first.onclick = function () {
        //         var hobby = document.getElementsByName("hobby");
        //         if (first.checked) {
        //             for (var i = 0; i < hobby.length; i ++ ) {
        //                 hobby[i].checked = true;
        //             }
        //         } else {
        //             for (var i = 0; i < hobby.length; i ++ ) {
        //                 hobby[i].checked = false;
        //             }
        //         }
        //     }
        // }

        window.onload = function () {
            var first = document.getElementById("btn");
            var hobby = document.getElementsByName("hobby");

            first.onclick = function () {
                for (var i = 0; i < hobby.length; i ++ ) {
                    hobby[i].checked = first.checked;
                }
            }

            for (var i = 0; i < hobby.length; i ++ ) {
                hobby[i].onclick = function () {
                    var count = 0;

                    for (var i = 0; i < hobby.length; i ++ ) {
                        if (hobby[i].checked) {
                            count ++ ;
                        }
                    }
                    first.checked = (count == hobby.length);
                }
            }

        }

    </script>
</head>
<body>

    <input type="checkbox" id="btn"/><br>
    <input type="checkbox" name="hobby" value="somke" />smoke<br>
    <input type="checkbox" name="hobby" value="drink"/>drink<br>
    <input type="checkbox" name="hobby" value="hot head"/>fireHair<br>


</body>
</html>
