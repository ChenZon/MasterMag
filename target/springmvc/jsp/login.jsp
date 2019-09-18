<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/9/15
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>研究生管理系统</title>
    <link rel="stylesheet" type="text/css" href="https://www.layuicdn.com/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="static/plugins/layui/css/layui.css">

    <style>


        .login{
            background-color: rgba(175, 255, 185, 0.51);
            margin: auto;
            margin-top: 8%;
            padding: 50px;

            width: 250px;
            border-radius: 15px;
            box-shadow: 10px 10px 5px #888888;

        }
        .system{
            font-family: 宋体;
            letter-spacing: 13px;
        }
        body{
            background: #92B8B1;
        }
    </style>
</head>
<body>

    <div style="color: red">${errMsg}</div>
<div class="login">
    <div>
        <h2 class="system">研究生管理系统</h2>
    </div>

    <hr class="layui-bg-orange">

    <form class="layui-form" action="${ctx}/stu/login" method="post">     <!--表单-->
    <%--<form class="layui-form" action="/jsp/dev/login.jsp" method="post">     <!--表单-->--%>
        <br/>
        <div class="layui-form-item">
            <label class="layui-form-label">账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：</label>
            <div class="layui-input-block">
                <input type="text" name="id" lay-verify="title" autocomplete="off" placeholder="请输入账号" class="layui-input">
            </div>
        </div>
        <br/>
        <div class="layui-form-item">
            <label class="layui-form-label">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</label>
            <div class="layui-input-block">
                <input type="password" name="password" lay-verify="pass" placeholder="请输入密码" autocomplete="off" class="layui-input">
            </div>
            <%--<div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>--%>
        </div>

        <br/>

        <div class="layui-form-item" style="padding-left: 65px">
            <div class="layui-input-inline">
                <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1">登录</button>
                <button type="reset" class="layui-btn">注册</button>
            </div>
        </div>


    </form>

</div>

<script src="https://www.layuicdn.com/layui/layui.js"></script>

</body>
</html>
