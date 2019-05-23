<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="${pageContext.request.contextPath}/assts/js/core/jquery-3.3.1.js"></script>
<body>
<form action="${pageContext.request.contextPath}/upload" method="post" enctype="multipart/form-data">
  <h2>文件上传</h2>
    文件:<input type="file" name="file1"/><br/><br/>
    用户名：<input type="text" name="username">
    <br/><br/>
    图片：<img src="${ pageContext.request.contextPath }/assets/img/"+${ imgpath }/><br/><br/>
    <input type="submit" value="上传"/>
</form>
</body>
</html>