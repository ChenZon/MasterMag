<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/9/18
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>研究生管理系统</title>
    <%--<link rel="stylesheet" type="text/css" href="https://www.layuicdn.com/layui-v2.5.5/css/layui.css">--%>
    <link rel="stylesheet" type="text/css" href="/static/plugins/layui/css/layui.css">

</head>
<body class="layui-layout-body" >
<div class="layui-layout layui-layout-admin">


    <jsp:include page="${ctx}/common/header.jsp"/>
    <div class="layui-body">

        <%--<div class="body" style="padding: 100px; background-image: url(/static/img/background.jpg)">--%>
        <div class="body" style="background-image: url(/static/img/background.jpg); background-attachment: fixed">
            <div style="padding: auto">完善个人信息</div>
            <form class="layui-form" action="${ctx}/stu/update" style="padding-left: 25%; padding-top: 2%; padding-bottom: 2%" method="post">


                <div class="layui-form-item">
                    <label class="layui-form-label">账号</label>
                    <div class="layui-input-inline">
                        <input type="text" name="num" autocomplete="off" class="layui-input layui-disabled" placeholder="${USER_SESSION.num} ">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">昵称</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" lay-verify="required" lay-reqtext="用户名是必填项，岂能为空？" placeholder="${USER_SESSION.username}" autocomplete="off" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">出生日期</label>
                        <div class="layui-input-block">
                            <%--<input type="text" name="age" id="date2" autocomplete="off" class="layui-input">--%>
                            <input type="text" name="age" id="date2" autocomplete="off" placeholder="${USER_SESSION.age}" class="layui-input">
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">手机号码</label>
                        <div class="layui-input-inline">
                            <input type="text" name="phone" lay-verify="required|phone" placeholder="${USER_SESSION.phone}" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">邮箱</label>
                        <div class="layui-input-inline">
                            <input type="text" name="email" lay-verify="email" placeholder="${USER_SESSION.email}" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">入学日期</label>
                        <div class="layui-input-block">
                            <input type="text" name="date" id="date1" autocomplete="off" placeholder="${USER_SESSION.date}" class="layui-input">
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">身份证号码</label>
                    <div class="layui-input-inline">
                        <input type="text" name="idNum" lay-verify="identity" placeholder="${USER_SESSION.idNum}"  autocomplete="off" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">修改密码</label>
                    <div class="layui-input-inline">
                        <input type="password" name="password" lay-verify="pass" placeholder="请输入密码" autocomplete="off" class="layui-input">
                    </div>

                    <%--<div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>--%>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">确认密码</label>
                    <div class="layui-input-inline">
                        <input type="password" name="password" lay-verify="pass" placeholder="请输入密码" autocomplete="off" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">性别</label>
                    <div class="layui-input-block">
                        <input type="radio" name="sex" value="男" title="男" checked="">
                        <input type="radio" name="sex" value="女" title="女">
                    </div>
                </div>

                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">自我描述</label>
                    <div class="layui-input-inline">
                        <textarea name="indroduce" placeholder="${USER_SESSION.introduce}" id="introduce" class="layui-textarea" cols="30" rows="5"></textarea>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
                        <button type="reset" class="layui-btn layui-btn-danger ">重置</button>
                    </div>
                </div>
            </form>
        </div>


    </div>

    <jsp:include page="${ctx}/common/footer.jsp"/>
</div>

<script src="/static/plugins/layui/layui.js"></script>
<script>
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;
        //日期
        laydate.render({
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });
        laydate.render({
            elem: '#date2'
        });
        form.on('select(sex)', function (data) {        //对应lay-filter
            sex= data.value;                                   //获取value值
            text= data.elem[data.elem.selectedIndex].text;;    //获取显示的值
        });
    });
</script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;
    });


    <%--layui.use('layer', function(){--%>
        <%--var layer = layui.layer;--%>
        <%--layer.msg("${requestScope.check}");         //重要--%>
    <%--});--%>

</script>
</body>
</html>
