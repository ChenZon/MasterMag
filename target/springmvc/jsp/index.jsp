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
    <%--<script src="/static/plugins/layui/layui.js"></script>--%>

</head>
<body class="layui-layout-body" >
<div class="layui-layout layui-layout-admin">


    <jsp:include page="${ctx}/common/header.jsp"/>
    <div class="layui-body" style="background-image: url(/static/img/background-3.jpg)">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">首页</div>
    </div>

    <jsp:include page="${ctx}/common/footer.jsp"/>

</div>

<script src="/static/plugins/layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });


    <%--layui.use('layer', function(){--%>
        <%--var layer = layui.layer;--%>
        <%--layer.msg("${requestScope.success}");         //重要--%>
    <%--});--%>
</script>
</body>
</html>