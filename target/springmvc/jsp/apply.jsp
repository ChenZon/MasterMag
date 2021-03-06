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
    <div class="layui">
        <!-- 内容主体区域 -->


        <%--<div class="table" style="padding: 2%;">--%>
        <div class="table">
            <table class="layui-hide" id="test" lay-filter="test"></table>
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

</script>

<script type="text/html" id="toolbarDemo">
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
        <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
        <button class="layui-btn layui-btn-sm" lay-event="isAll">验证是否全选</button>
        <button class="layui-btn layui-btn-sm" lay-event="selectedTea">已选择导师</button>
    </div>
</script>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit">申请</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">撤销</a>
</script>


<%--<script src="//res.layui.com/layui/dist/layui.js" charset="utf-8"></script>--%>
<script src="/static/plugins/layui/layui.js"></script>

<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->

<script>
    layui.use('table', function(){
        var table = layui.table;

        table.render({
            elem: '#test'
            ,url:'/static/json/users.json'
            ,toolbar: '#toolbarDemo' //开启头部工具栏，并为其绑定左侧模板
            ,defaultToolbar: ['filter', 'exports', 'print', { //自定义头部工具栏右侧图标。如无需自定义，去除该参数即可
                title: '提示'
                ,layEvent: 'LAYTABLE_TIPS'
                ,icon: 'layui-icon-tips'
            }]
            ,title: '用户数据表'
            ,cols: [[
                {type: 'checkbox', fixed: 'left'}
                ,{field:'id', title:'ID', width:80, fixed: 'left', unresize: true, sort: true}
                ,{field:'username', title:'用户名', width:120, templet: function(res){
            return '<em>'+ res.username +'</em>'
        }}
                ,{field:'email', title:'邮箱', width:150}
                ,{field:'sex', title:'性别', width:80, sort: true}
                ,{field:'city', title:'城市', width:100}
                ,{field:'sign', title:'签名'}
                ,{field:'experience', title:'积分', width:80, sort: true}
                ,{field:'ip', title:'IP', width:120}
                ,{field:'logins', title:'登入次数', width:100, sort: true}
                ,{field:'joinTime', title:'加入时间', width:120}
                ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:150}
            ]]
            ,page: true
            ,height: 'full-250'


        });

        //头工具栏事件
        table.on('toolbar(test)', function(obj){
            var checkStatus = table.checkStatus(obj.config.id);
            switch(obj.event){
                case 'getCheckData':
                    var data = checkStatus.data;
                    layer.alert(JSON.stringify(data));
                    break;
                case 'getCheckLength':
                    var data = checkStatus.data;
                    layer.msg('选中了：'+ data.length + ' 个');
                    break;
                case 'isAll':
                    layer.msg(checkStatus.isAll ? '全选': '未全选');
                    break;
                case 'selectedTea':
                    layer.alert("该功能尚未完善！");
                    break;

                //自定义头工具栏右侧图标 - 提示
                // case 'LAYTABLE_TIPS':
                //     layer.alert('这是工具栏右侧自定义的一个图标按钮');
                //     break;
            };
        });

        //监听行工具事件
        table.on('tool(test)', function(obj){
            var data = obj.data;
            //console.log(obj)
            if(obj.event === 'del'){
                layer.confirm('真的撤销选择的导师吗', function(index){
                    obj.del();
                    layer.close(index);
                });
            } else if(obj.event === 'edit'){
                layer.confirm(data.username, function(index){
                    value: data.username
                    layer.close(index);
                });
            }


            // else if(obj.event === 'edit'){
            //     layer.prompt({
            //         formType: 2
            //         ,value: data.username
            //     }, function(value, index){
            //         obj.update({
            //             username: value
            //         });
            //         layer.close(index);
            //     });
            // }
        });
    });
</script>

</body>
</html>