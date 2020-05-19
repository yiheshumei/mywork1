<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改员工页面</title>
</head>
<body>
<div align="center">
    <h4>修改员工信息</h4>
    <form method="post" action="./update">
    <table border="1">
        <tr>
            <td>编号：</td>
            <td><input type="text" name="id" value="${id}" readonly></td>
        </tr>
        <tr>
            <td>姓名：</td>
            <td><input type="text" name="name" value="${name}"></td>
        </tr>
        <tr>
            <td>年龄：</td>
            <td><input type="text" name="age" value="${age}"></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="修改">
                <input type="reset" value="重置">
            </td>
        </tr>
    </table>
    </form>
</div>
</body>
</html>
