<%--
  Created by IntelliJ IDEA.
  User: 86182
  Date: 2020/10/3
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
<body>
<table border="1px" width="500px" align="center">
    <tr>
        <td colspan="8"><h2 align="center">学员信息列表</h2></td>
    </tr>
    <tr>
        <td>编号</td>
        <td>姓名</td>
        <td>性别</td>
        <td>年龄</td>
        <td>住址</td>
        <td>Email</td>
    </tr>
    <c:forEach items="${list}" var="stu">
        <tr>
            <td><a href="/toupd?sid=${stu.sid}">${stu.sid}</a></td>
            <td>${stu.sname}</td>
            <td>${stu.sgender}</td>
            <td>${stu.sage}</td>
            <td>${stu.saddress}</td>
            <td>${stu.semail}</td>
        </tr>
    </c:forEach>
</table>
<p>${msg}</p>
</body>
</html>
<script type="text/javascript">
    $("tr:odd").css("background-color","rgb(91,254,201)");
</script>
