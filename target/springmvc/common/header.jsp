<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/9/15
  Time: 8:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<style>
    html, * {
        margin: 0;
        padding: 0;
    }

    html { min-height: 300vh; }

    body {
        margin-top: 75px;
        min-height: 300vh;
        background-image: linear-gradient(to bottom right, rgba(180, 182, 83, 0.74) 0%, rgba(85, 179, 118, 0.71) 100%);
        /*background: linear-gradient(to bottom right, rgba(255,0,0,0), rgb(246, 255, 126)); !*Standard*!*/
    }

    .header-navigation {
        position: fixed;
        top: 0;
        width: 100%;
        height: 60px;
        line-height: 60px;
        text-align: center;
        box-shadow: 0 14px 28px rgb(0, 0, 0), 0 10px 10px rgba(0, 0, 0, 0.11);
        z-index: 9999;
    }

    .link {
        color: #fff;
        text-decoration: none;
        margin: 0 30px;
    }

    h1 {
        text-align: center;
        margin-top: 170px;
        margin-bottom:50px;
        color: #fff;
    }

    /* Slide transitions */

    .slideUp {
        /* -webkit-transform: translateY(-100px);
         transform: translateY(-100px);*/
        -webkit-transform: translateY(-100px);
        -ms-transform: translateY(-100px);
        -o-transform: translateY(-100px);
        transform: translateY(-100px);
        /*transition: transform .5s ease-out;*/
        -webkit-transition: transform .5s ease-out;
        -o-transition: transform .5s ease-out;
        transition: transform .5s ease-out;
    }

    .slideDown {
        /*-webkit-transform: translateY(0);
        transform: translateY(0);*/
        -webkit-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
        /*transition: transform .5s ease-out;*/
        -webkit-transition: transform .5s ease-out;
        -o-transition: transform .5s ease-out;
        transition: transform .5s ease-out;
    }


</style>


<%--<div class="layui-header layui-bg-cyan">--%>
<div class="header-navigation layui-header" id="header" >
    <div class="layui-logo"><a href="${ctx}/jsp/index.jsp">研究生管理系统</a></div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
        <li class="layui-nav-item link"><a href="${ctx}/stu/check">修改个人信息</a></li>
        <li class="layui-nav-item link"><a href="${ctx}/stu/stuMessage">查看个人信息</a></li>
        <li class="layui-nav-item link"><a href="${ctx}/stu/teaMessage">查看导师信息</a></li>
        <li class="layui-nav-item link"><a href="${ctx}/stu/apply">申报导师</a></li>
        <li class="layui-nav-item link">
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
                <dd><a href="${ctx}/stu/stuMessage">基本资料</a></dd>
                <dd><a href="">安全设置</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item"><a href="${ctx}/stu/logout">退出登录</a></li>
    </ul>
</div>


<script type="text/javascript">

    var new_scroll_position = 0;
    var last_scroll_position;
    var header = document.getElementById("header");

    window.addEventListener('scroll', function(e) {
        last_scroll_position = window.scrollY;

        // Scrolling down
        if (new_scroll_position < last_scroll_position && last_scroll_position > 80) {
            // header.removeClass('slideDown').addClass('slideUp');
            header.classList.remove("slideDown");
            header.classList.add("slideUp");

            // Scrolling up
        } else if (new_scroll_position > last_scroll_position) {
            // header.removeClass('slideUp').addClass('slideDown');
            header.classList.remove("slideUp");
            header.classList.add("slideDown");
        }

        new_scroll_position = last_scroll_position;
    });
</script>

