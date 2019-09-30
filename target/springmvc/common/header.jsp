<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/9/15
  Time: 8:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    .layui-header{
        box-shadow: 10px 10px 5px #888888;
        transition: top 0.5s;
    }
</style>


<%--<div class="layui-header layui-bg-cyan">--%>
<div class="layui-header" >
    <div class="layui-logo"><a href="${ctx}/jsp/index.jsp">研究生管理系统</a></div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
        <li class="layui-nav-item"><a href="${ctx}/stu/check">修改个人信息</a></li>
        <li class="layui-nav-item"><a href="${ctx}/stu/stuMessage">查看个人信息</a></li>
        <li class="layui-nav-item"><a href="${ctx}/stu/teaMessage">查看导师信息</a></li>
        <li class="layui-nav-item"><a href="${ctx}/stu/apply">申报导师</a></li>
        <li class="layui-nav-item">
            <a href="javascript:;">其它功能</a>
            <dl class="layui-nav-child">
                <dd><a href="">邮件管理</a></dd>
                <dd><a href="">消息管理</a></dd>
                <dd><a href="">授权管理</a></dd>
            </dl>
        </li>
    </ul>
    <ul class="layui-nav layui-layout-right">
        <li class="layui-nav-item">
            <a href="javascript:;">
                <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                ${USER_SESSION.username}
            </a>
            <dl class="layui-nav-child">
                <dd><a href="${ctx}/stu/stuMessage">基本资料</a></dd>
                <dd><a href="">安全设置</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item"><a href="${ctx}/stu/logout">退出登录</a></li>
    </ul>
</div>

