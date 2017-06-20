<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<form action="/brand/update" method="post">
    <input type="hidden" name="id" value="${brand.id}">
    品牌名:<input type="text" name="name" value="${brand.name}">
    是否可见:

    <select name="isDisplay" >
        <option value="">请选择</option>
        <option value="1" <c:if test="${brand.isDisplay==1}">selected</c:if> >可见</option>
        <option value="0" <c:if test="${brand.isDisplay==0}">selected</c:if> >不可见</option>
    </select>
    <input type="submit" value="提交">
</form>
</body>
</html>
