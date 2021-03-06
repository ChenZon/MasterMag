<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/9/18
  Time: 20:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>注册页</title>
    <link rel="stylesheet" type="text/css" href="/static/plugins/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="/static/custom/style.css">
    <%--<link rel="icon" href="../frame/static/image/code.png">--%>
    <style>
        body{
            background-image: url("/static/img/background.jpg");
        }
    </style>
</head>
<body>

<div class="login-main">
    <header class="layui-elip" style="width: 82%; font-family: 宋体;letter-spacing: 13px;">注册</header>

    <hr class="layui-bg-orange" style="width: 91%">
    <br/>

    <!-- 表单选项 -->

    <form class="layui-form" action="${ctx}/stu/register" method="post">
        <div class="layui-input-inline">
            <!-- 用户名 -->
            <i class="layui-icon layui-icon-user" style="font-size: 20px; color: #ffee00;"></i>
            <div class="layui-inline" style="width: 85%">
                <input type="number" id="user" name="num" lay-verify="required" placeholder="请输入账号" autocomplete="off" class="layui-input">
            </div>
            <!-- 对号 -->
            <div class="layui-inline layui-icon ">
                <i class="layui-icon-ok layui-icon " id="ri" style="color: green;font-weight: bolder;" hidden> </i>
            </div>
            <!-- 错号 -->
            <div class="layui-inline">
                <i class="layui-icon" id="wr" style="color: red; font-weight: bolder;" hidden>ဆ</i>
            </div>
        </div>
        <!-- 密码 -->
        <div class="layui-input-inline">
            <i class="layui layui-icon layui-icon-password" style="font-size: 20px; color: #ffee00;"></i>
            <div class="layui-inline" style="width: 85%">
                <input type="password" id="pwd" name="password" required  lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
            </div>
            <!-- 对号 -->
            <div class="layui-inline">
                <i class="layui-icon" id="pri" style="color: green;font-weight: bolder;" hidden></i>
            </div>
            <!-- 错号 -->
            <div class="layui-inline">
                <i class="layui-icon" id="pwr" style="color: red; font-weight: bolder;" hidden>ဆ</i>
            </div>
        </div>
        <!-- 确认密码 -->
        <div class="layui-input-inline">
            <i class="layui layui-icon layui-icon-password" style="font-size: 20px; color: #ffee00;"></i>
            <div class="layui-inline" style="width: 85%">
                <input type="password" id="rpwd" name="repassword" required  lay-verify="required" placeholder="请确认密码" autocomplete="off" class="layui-input">
            </div>
            <!-- 对号 -->
            <div class="layui-inline">
                <i class="layui-icon" id="rpri" style="color: green;font-weight: bolder;" hidden></i>
            </div>
            <!-- 错号 -->
            <div class="layui-inline">
                <i class="layui-icon" id="rpwr" style="color: red; font-weight: bolder;" hidden>ဆ</i>
            </div>
        </div>


        <div class="layui-input-inline login-btn" style="width: 90px; margin-left: 35%">
            <button type="submit" lay-submit lay-filter="sub" class="layui-btn layui-btn-warm">注册</button>
        </div>
        <hr style="width: 91%" />
        <p style="width: 85%"><a href="login.jsp" class="fl">已有账号？立即登录</a><a href="javascript:;" class="fr">忘记密码？</a></p>
    </form>
</div>
<script src="/static/plugins/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['form','jquery','layer'], function () {
        var form   = layui.form;
        var $      = layui.jquery;
        var layer  = layui.layer;
        var pass = 0;
        var name = 0;
        var rpass = 0;
        //添加表单失焦事件
        //验证表单
        $('#user').blur(function() {
            var user = $(this).val();
            $.ajax({
                url:'${ctx}/stu/isRegistered',
                type:'post',
                dataType:'text',
                // data:{user:user},
                data:{
                    num:$('#user').val(),
                },
                //验证用户名是否可用
                success:function(data){
                    if (data == 1) {
                        $('#ri').removeAttr('hidden');
                        $('#wr').attr('hidden','hidden');
                        name = 1;
                    } else {
                        $('#wr').removeAttr('hidden');
                        $('#ri').attr('hidden','hidden');
                        name = 0;
                        layer.msg('当前用户名已被占用! ')
                    }
                }
            })
        });
        // 为密码添加正则验证
        $('#pwd').blur(function() {
            var reg = /^[\w]{6,12}$/;
            if(!($('#pwd').val().match(reg))){
                $('#pwr').removeAttr('hidden');
                $('#pri').attr('hidden','hidden');
                pass = 0;
                layer.msg('请输入合法密码');
            }else {
                $('#pri').removeAttr('hidden');
                $('#pwr').attr('hidden','hidden');
                pass = 1;
            }
        });
        //验证两次密码是否一致
        $('#rpwd').blur(function() {
            if($('#pwd').val() != $('#rpwd').val()){
                $('#rpwr').removeAttr('hidden');
                $('#rpri').attr('hidden','hidden');
                rpass = 0;
                layer.msg('两次输入密码不一致!');
            }else {
                $('#rpri').removeAttr('hidden');
                $('#rpwr').attr('hidden','hidden');
                rpass = 1;
            };
        });
        //
        //添加表单监听事件,提交注册信息
        form.on('submit(sub)', function() {
            if (pass == 1 && name == 1 && rpass == 1){
                $.ajax({
                    url:'${ctx}/stu/create',
                    type:'post',
                    dataType:'text',
                    data:{
                        num:$('#user').val(),
                        password:$('#pwd').val(),
                    },
                    success:function(){
                            layer.msg('注册成功');
                            setTimeout(function() {
                                location.href = "/jsp/login.jsp";
                            }, 2000);
                        }
                })
            }else {
                layer.msg('注册失败');
            }

            //防止页面跳转
            return false;
        });
    });
</script>
</body>
</html>