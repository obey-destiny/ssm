<%--
  Created by IntelliJ IDEA.
  User: 86182
  Date: 2022/1/27
  Time: 13:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文件上传</title>
</head>
<body>
    <h1>文件上传</h1>
    <form enctype="multipart/form-data" method="post"
          action="${pageContext.request.contextPath}/file/update">
        <input type="file" name="file"/>
        <input type="submit" value="上传文件" />
    </form>

    <h1>文件下载</h1>
    <ul>
        <li>img.png<a href="${pageContext.request.contextPath}/file/download?fileName=img.png">在线打开</a> <a href="${pageContext.request.contextPath}/file/download?fileName=img.png&openStyle=attch">附件下载</a></li>
        <li>img.png<a href="${pageContext.request.contextPath}/file/download?fileName=aa.jpg">在线打开</a> <a href="${pageContext.request.contextPath}/file/download?fileName=aa.jpg&openStyle=attch">附件下载</a></li>
        <li>img.png<a href="${pageContext.request.contextPath}/file/download?fileName=自我介绍.txt">在线打开</a> <a href="${pageContext.request.contextPath}/file/download?fileName=自我介绍.txt&openStyle=attch">附件下载</a></li>
    </ul>
</body>
</html>
