<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/2/28 0028
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="layui-header">
    <div class="layui-logo">app信息管理系统</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <!--<ul class="layui-nav layui-layout-left">-->
    <!--<li class="layui-nav-item"><a href="">控制台</a></li>-->
    <!--<li class="layui-nav-item"><a href="">商品管理</a></li>-->
    <!--<li class="layui-nav-item"><a href="">用户</a></li>-->
    <!--<li class="layui-nav-item">-->
    <!--<a href="javascript:;">其它系统</a>-->
    <!--<dl class="layui-nav-child">-->
    <!--<dd><a href="">邮件管理</a></dd>-->
    <!--<dd><a href="">消息管理</a></dd>-->
    <!--<dd><a href="">授权管理</a></dd>-->
    <!--</dl>-->
    <!--</li>-->
    <!--</ul>-->
    <ul class="layui-nav layui-layout-right">
        <li class="layui-nav-item">
            <a href="javascript:;">
                <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                贤心
            </a>
            <dl class="layui-nav-child">
                <dd><a href="">基本资料</a></dd>
                <dd><a href="">安全设置</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item"><a href="${ctx}/login.jsp">退了</a></li>
    </ul>
</div>

<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
        <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
        <ul class="layui-nav layui-nav-tree"  lay-filter="test">
            <li class="layui-nav-item layui-nav-itemed">
                <a class="" href="javascript:;">app账号管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="${ctx}/appAccount/index">账号首页</a></dd>
                    <dd><a href="javascript:;">列表二</a></dd>
                    <dd><a href="javascript:;">列表三</a></dd>
                    <dd><a href="">超链接</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">app应用管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="">列表一</a></dd>
                    <dd><a href="javascript:;">列表二</a></dd>
                    <dd><a href="">超链接</a></dd>
                </dl>
            </li>

        </ul>
    </div>
</div>
