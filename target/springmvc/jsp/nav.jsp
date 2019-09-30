
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>js和css3智能隐藏和显示的顶部导航菜单</title>

    <style type="text/css">
        html, * {
            margin: 0;
            padding: 0;
        }

        html { min-height: 300vh; }

        body {
            min-height: 300vh;
            background-image: linear-gradient(120deg, #fccb90 0%, #d57eeb 100%);
        }

        .header-navigation {
            position: fixed;
            top: 0;
            width: 100%;
            height: 60px;
            line-height: 60px;
            background-color: #333;
            text-align: center;
            box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
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
</head>
<body>

<header class="header-navigation" id="header">
    <nav>
        <a class="link" href="#">home</a>
        <a class="link" href="#">about us</a>
        <a class="link" href="#">contact us</a>
    </nav>
</header>


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
</body>
</html>