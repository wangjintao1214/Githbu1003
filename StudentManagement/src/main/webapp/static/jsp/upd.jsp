<%--
  Created by IntelliJ IDEA.
  User: 86182
  Date: 2020/10/3
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
<body>
<form action="/doupd" method="post">
    <table border="1px" width="350px" align="center">
        <tr>
            <td colspan="5"><h2>学员信息</h2></td>
        </tr>
        <tr>
            <td>姓名：</td>
            <td>
                <input type="hidden" value="${studentinfo1.sid}" name="sid">
                <input type="text" value="${studentinfo1.sname}" name="sname">
            </td>
        </tr>
        <tr>
            <td>年龄：</td>
            <td><input type="text" value="${studentinfo1.sage}" name="sage"></td>
        </tr>
        <tr>
            <td>性别：</td>
            <td><input type="text" value="${studentinfo1.sgender}" name="sgender"></td>
        </tr>
        <tr>
            <td>家庭住址：</td>
            <td><input type="text" value="${studentinfo1.saddress}" name="saddress"></td>
        </tr>
        <tr>
            <td>Email：</td>
            <td><input type="text" value="${studentinfo1.semail}" name="semail"></td>
        </tr>
        <tr>
            <td colspan="5">
                <input type="submit" value="修改">
                <input type="reset" value="重置">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
<script type="text/javascript">
    $("tr").css("background-color","rgb(91,254,201)");
    $("form").submit(function () {
        var sname=$("[name='sname']").val();
        var sage=$("[name='sage']").val();
        var sgender=$("[name='sgender']").val();
        if(sname==""||sage==""||sgender==""){
            alert("请填写完整学员信息再修改！");
            return false;
        }
        return true;
    })
</script>
