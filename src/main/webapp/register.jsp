<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/3 0003
  Time: 20:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${ctx}/static/plugin/layui/css/layui.css">
    <scriptc src="${ctx}/static/plugin/jquery/jquery.js"></scriptc>
    <style>
        form>div{
            width: 300px;
            margin: auto;
        }
    </style>
</head>
<body>
<form action="${ctx}/user/register" method="post" class="layui-form">

    <div class="layui-form-item">
        <label class="layui-form-label">姓名</label>
        <div class="layui-input-block">
            <input type="text" name="name" required  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">密码</label>
        <div class="layui-input-block">
            <input type="text" name="password" required  lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
        </div>
    </div>
    <input type="submit" value="注册">
</form>

<script src="${ctx}/static/plugin/layui/layui.js"></script>

<script>
    layui.use(['element','jquery','layer'], function(){
        var element = layui.element;
        var jquery = layui.jquery;
        var layer = layui.layer;

        $(function () {
            $('input[name=name]').blur(function () {
                var name = $('input[name=name]').val();
                var obj ={
                    name:name
                }
                $.ajax({
                    url:'${ctx}/user/checkname',
                    type:'post',
                    contentType:'application/json',
                    data:JSON.stringify(obj),
                    success:function (data) {
                        if (data.code==2000){
                            //    可用
                            // $('#msg').html('用户名可以使用')
                            layer.msg('用户名可以使用')
                        }else{
                            //    不可用
                            // $('#msg').html('用户名已被注册')
                            layer.msg('用户名已被注册',{icon:6});
                        }
                    }
                })
            })
        })
    });


</script>
</body>
</html>
