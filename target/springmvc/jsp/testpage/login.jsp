<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/9/19
  Time: 13:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/static/plugins/layui/css/layui.css">
</head>
<body>
<form class="layui-form layui-col-lg12 layui-col-xs12 layui-col-md12 layui-col-sm12" style="height: 360px;">
    <!--<div class="login_face"><img src="__PUBLIC__/admin/images/login_logo.jpg" class="userAvatar"></div>-->
    <div class="login-title">风之涯技术博客 注册</div>
    <div class="layui-form-item input-item">
        <label for="nickname">昵称</label>
        <input type="text" placeholder="请输入昵称" name="nickname" autocomplete="off" id="nickname" class="layui-input" lay-verify="nickname">
    </div>
    <div class="layui-form-item input-item">
        <label for="email">账号</label>
        <input type="email" placeholder="请输入邮箱" name="email" autocomplete="off" id="email" class="layui-input" lay-verify="required|email">
    </div>
    <div class="layui-form-item input-item">
        <label for="password">密码</label>
        <input type="password" placeholder="请输入密码" name="password" autocomplete="off" id="password" class="layui-input" lay-verify="password">
    </div>
    <div class="layui-form-item input-item" id="imgCode">
        <label for="code">验证码</label>
        <input type="text" class="layui-input" name="verify" id="code" placeholder="请输入验证码" autocomplete="off" maxlength="5" lay-verify="verify">
        <img src="/index/pub/verify.html" width="120px" height="36px" onclick="fleshVerify()" id="verifyImg" title="点我刷新!">
    </div>
    <div class="layui-form-item">
        <button class="layui-btn layui-block" lay-filter="*" lay-submit="" id="submit">登录</button>
    </div>
    <div class="layui-form-item layui-row">
        <a href="/index/auth/third/type/qq.html" class="seraph icon-qq layui-col-xs6 layui-col-sm6 layui-col-md6 layui-col-lg6"><small style="font-size: 15px;">QQ登陆</small></a>
        <!--<a href="javascript:;" class="seraph icon-wechat layui-col-xs4 layui-col-sm4 layui-col-md4 layui-col-lg4"></a>-->
        <a href="/index/auth/third/type/weibo.html" class="seraph icon-sina layui-col-xs6 layui-col-sm6 layui-col-md6 layui-col-lg6"><small style="font-size: 15px;">微博登陆</small></a>
    </div>
</form>
<script src="/static/plugins/layui/layui.js"></script>
</body>
</html>
