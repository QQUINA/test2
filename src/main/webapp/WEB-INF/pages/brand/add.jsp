<%--
  Created by IntelliJ IDEA.
  User: dengry
  Date: 2017/5/10
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/add" method="post">
    品牌名:<input type="text" name="name" >
    是否可见:
    <select name="isDisplay" >
        <option value="">请选择</option>
        <option value="1">可见</option>
        <option value="0">不可见</option>
    </select>
    <input type="submit" value="提交">
</form>
</body>
</html>
