<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h2>main</h2>
<form action="/mywork1/selectByName" method="post">
    请输入用户姓名：<input type="text" name="name"/>
    <input type="submit" value="查询"/>
</form>
<table border="1">
    <tr>
<%--        <th>用户编号</th>--%>
        <th>用户姓名</th>
        <th>用户年龄</th>
        <th>日期</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${users}" var="user">
        <tr>
<%--            <td>${user.id}</td>--%>
            <td>${user.name}</td>
            <td>${user.age}</td>
            <td>
                <fmt:formatDate value="${user.startTime}" pattern="yyyy-MM-dd"/>
<%--                    ${user.startTime}--%>
            </td>
            <td>
                <a href="./delete?id=${user.id}">删除</a>
                <a href="./tiaozhuanupdate?id=${user.id}&&name=${user.name}&&age=${user.age}">修改</a>
            </td>
        </tr>
    </c:forEach>
    <tr>
        <td align="center" colspan="4"><a href="./insert.jsp">新增</a> </td>
    </tr>
</table>
</div>
</body>
</html>
