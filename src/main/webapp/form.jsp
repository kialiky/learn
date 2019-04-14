<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/2/28 0028
  Time: 23:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${ctx}/json2/add" method="post">
    姓名<input type="text" name="name"><br>
    密码<input type="text" pwd="pws"><br>
    <input type="submit" value="提交">
</form>
</body>
</html>
