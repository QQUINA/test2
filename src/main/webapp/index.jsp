<%--
  Created by IntelliJ IDEA.
  User: dengry
  Date: 2017/5/5
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<a href="/brand/toList">品牌列表</a>

<form action="/saveUser" method="post">
    用户名:<input type="text" name="username"><br/>
    年龄:<input type="text" name="userage"><br/>
    <input type="submit" value="提交">
</form>
</body>
</html>
