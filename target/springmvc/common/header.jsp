<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/9/15
  Time: 8:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<div class="layui-header layui-bg-blue">
    <div class="layui-logo"><a href="/">研究生管理系统</a></div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
        <li class="layui-nav-item"><a href="">查看个人信息</a></li>
        <li class="layui-nav-item"><a href="">修改个人信息</a></li>
        <li class="layui-nav-item"><a href="">查看导师信息</a></li>
        <li class="layui-nav-item"><a href="">申报确认导师</a></li>
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
                <dd><a href="">基本资料</a></dd>
                <dd><a href="">安全设置</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item"><a href="${ctx}/stu/logout">退出登录</a></li>
    </ul>
</div>


<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
        <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
        <ul class="layui-nav layui-nav-tree"  lay-filter="test">
            <hr class="layui-bg-orange">
            <li class="layui-nav-item layui-nav-itemed">
                <a class="" href="javascript:;" style="background-color: #92B8B1">账号管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="${ctx}/appAccount/index">账号首页</a></dd>
                    <dd><a href="javascript:;">列表二</a></dd>
                    <dd><a href="javascript:;">列表三</a></dd>
                    <dd><a href="">超链接</a></dd>
                </dl>
            </li>
            <hr class="layui-bg-orange">
            <li class="layui-nav-item">
                <a href="javascript:;" style="background-color: #92B8B1">解决方案</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;">列表一</a></dd>
                    <dd><a href="javascript:;">列表二</a></dd>
                    <dd><a href="">超链接</a></dd>
                </dl>
            </li>
            <hr class="layui-bg-orange">
            <li class="layui-nav-item"><a href="" style="background-color: #92B8B1">云市场</a></li>
            <hr class="layui-bg-orange">
            <li class="layui-nav-item"><a href="" style="background-color: #92B8B1">发布商品</a></li>
        </ul>
    </div>
</div>