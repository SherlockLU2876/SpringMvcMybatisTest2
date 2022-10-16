<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lurunao
  Date: 2022/10/16
  Time: 21:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>
    学生信息展示
</h1>
<a href="${pageContext.request.contextPath}/student/toaddstudent">新增学生</a>

<%--<form action="${pageContext.request.contextPath}/Book/querybook" method="post">--%>
<%--    <span>${error}</span>--%>
<%--    书名：<input type="text" name="querybookName">--%>
<%--    <button type="submit" value="查询">查询</button>--%>
<%--</form>--%>
<table>
    <thead>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>sex</th>
        <th>age</th>
        <th>操作</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach var="student" items="${studentList}">
        <tr>
            <td>${student.id}</td>
            <td>${student.name}</td>
            <td>${student.sex}</td>
            <td>${student.age}</td>
            <td>
<%--                <a href="${pageContext.request.contextPath}/Book/toupdatebook?id=${book.bookID}">修改</a>--%>
<%--                <a href="${pageContext.request.contextPath}/Book/deletebook?id=${book.bookID}">删除</a></td>--%>
                <a href="#">修改</a>
                <a href="#">删除</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
