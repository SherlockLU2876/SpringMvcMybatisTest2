<%--
  Created by IntelliJ IDEA.
  User: lurunao
  Date: 2022/10/16
  Time: 21:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/student/addstudent" method="post">
    姓名：<input type="text"  name="name">
    性别：<input type="text"  name="sex">
    年龄：<input type="text"  name="age">
    <button type="submit" value="添加">添加</button>
</form>
</body>
</html>
