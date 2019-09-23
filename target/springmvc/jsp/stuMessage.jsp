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
    <link rel="stylesheet" type="text/css" href="/static/plugins/layui/css/layui.css">


</head>
<body class="layui-layout-body" >
<div class="layui-layout layui-layout-admin">


    <jsp:include page="${ctx}/common/header.jsp"/>

    <div class="layui-body">

        <div class="body" style="background-image: url(/static/img/background-2.jpg)">
            <div class="table" style="background-color: red">
                <table class="layui-table">
                    <colgroup>
                        <col width="150">
                        <col width="200">
                    </colgroup>
                    <thead>
                    <tr>
                        <th>类型</th>
                        <th>内容</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>ID</td>
                        <td>${USER_SESSION.id}</td>
                    </tr>

                    <tr>
                        <td>账号</td>
                        <td>${USER_SESSION.num}</td>
                    </tr>
                    <tr>
                        <td>昵称</td>
                        <td>${USER_SESSION.username}</td>
                    </tr>
                    <tr>
                        <td>年龄</td>
                        <td>${USER_SESSION.age}</td>
                    </tr>
                        <td>手机号码</td>
                        <td>${USER_SESSION.phone}</td>
                    </tr>
                        <td>邮箱</td>
                        <td>${USER_SESSION.email}</td>
                    </tr>
                        <td>入学日期</td>
                        <td>${USER_SESSION.date}</td>
                    </tr>
                        <td>身份证号码</td>
                        <td>${USER_SESSION.idNum}</td>
                    </tr>
                    </tr>
                        <td>性别</td>
                        <td>${USER_SESSION.age}</td>
                    </tr>
                        <td>自我描述</td>
                        <td>${USER_SESSION.introduce}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
    </div>
</div>


<script src="/static/plugins/layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
</script>
</body>
</html>