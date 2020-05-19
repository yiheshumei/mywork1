<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加员工页面</title>
</head>
<body>
<div align="center">
    <h4>添加页面</h4>
    <form method="post" action="./insert">
    <table border="1">
        <tr>
            <td>姓名：</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>年龄：</td>
            <td><input type="text" name="age"></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="添加">
                <input type="reset" value="重置">
            </td>
        </tr>
    </table>
    </form>
</div>
</body>
</html>
