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
<body class="layui-layout" >
<div class="layui-layout layui-layout-admin">

    <jsp:include page="${ctx}/common/header.jsp"/>
    <%--<div class="layui-body" style="background-color: rgba(39,59,4,0.06)">--%>
    <div class="layui" style="background-color: rgba(39,59,4,0.06)">
        <!-- 内容主体区域 -->
        <%--<div class="carousel" style="margin-left: 17%; margin-top: 5%">--%>
        <div class="carousel" style="margin-left: 17%; margin-top: 5%">
            <div class="layui-carousel" id="test1">
                <div carousel-item>
                    <div><img src="/static/img/background-4.jpg" style="width: 100%"></div>
                    <div><img src="/static/img/background-5.jpg" style="width: 100%"></div>
                    <div><img src="/static/img/background-6.jpg" style="width: 100%"></div>
                    <div><img src="/static/img/background-7.jpg" style="width: 100%"></div>
                    <div><img src="/static/img/background-8.jpg" style="width: 100%"></div>

                </div>
            </div>
        </div>
    </div>

    <jsp:include page="${ctx}/common/footer.jsp"/>

</div>

<script src="/static/plugins/layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });


    layui.use('layer', function(){
        var layer = layui.layer;
        if("${requestScope.success}" != "" )
        {
            layer.msg("${requestScope.success}");         //重要
        }

    });
</script>

<script>
    layui.use('carousel', function(){
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#test1'
            ,width: '1000px' //设置容器宽度
            ,height: '450px'
            ,arrow: 'always' //始终显示箭头
            //,anim: 'updown' //切换动画方式
        });
    });
</script>
</body>
</html>