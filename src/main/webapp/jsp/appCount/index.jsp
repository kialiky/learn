<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>app信息管理系统</title>

    <!--引入css，否则没这个样式-->
    <link rel="stylesheet" href="${ctx}/static/plugin/layui/css/layui.css">

</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <jsp:include page="/jsp/common/header.jsp"></jsp:include>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            <table class="layui-table">
                <thead>
                <tr>
                    <th>APP账号</th>
                    <th>APP账号编号</th>
                    <th>APP信息描述</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${appAccounts}" var="obj">
                    <tr>
                        <td>${obj.id}</td>
                        <td>${obj.no}</td>
                        <td>${obj.description}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
    </div>
</div>
<script src="${ctx}/static/plugin/layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
</script>
</body>
</html>