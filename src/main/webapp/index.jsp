<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h2>index</h2>

    <table border="1">
        <tr>
            <th>用户编号</th>
            <th>用户姓名</th>
            <th>用户密码</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.age}</td>
                <td>
                    <a href="./delete?id=${user.id}">删除</a>
                </td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
