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

    <%--<jsp:include page="/jsp/common/header.jsp"></jsp:include>--%>
    <jsp:include page="${ctx}/common/header.jsp"/>
    <div class="layui-body" style="background-image: url(/static/img/background-2.jpg)">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">查看导师信息</div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
    </div>
</div>
<%--<script src="https://www.layuicdn.com/layui-v2.5.5/layui.js"></script>--%>
<script src="/static/plugins/layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
</script>
</body>
</html>