<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加员工页面</title>
</head>
<body>
<script>
    function check(){

        var name=document.getElementById("name").value;
        var reg1=/^[0-9a-zA-Z]{6,16}$/;
        if(!reg1.test(name)){
            var flag = window.confirm("用户名必须由数字和字母组成，长度在6-16之间");
            if (flag) {
                return;
            }else {
                return;
            }
        }

    }
</script>

<div align="center">
    <h4>添加页面</h4>
    <form method="post" action="./insert">
    <table border="1">
        <tr>
            <td>姓名：</td>
            <td><input type="text" name="name" id="name"></td>
        </tr>
        <tr>
            <td>年龄：</td>
            <td><input type="text" name="age" id="age"></td>
        </tr>
        <tr>
            <td>日期：</td>
            <td><input type="date" name="startTime"></td>
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
