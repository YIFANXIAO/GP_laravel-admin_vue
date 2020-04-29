<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>《计算机网络》课程建设网站</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Raleway', sans-serif;
                font-weight: 100;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 65px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 15px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 80px;
            }
        </style>
    </head>
    <body>
        <div class="flex-center position-ref full-height">
{{--            <a href="http://127.0.0.1:8000/test">测试页</a>--}}
            @if (Route::has('login'))
                <div class="top-right links">
                    @auth
                        <a href="{{ url('/home') }}">首页</a>
                    @else
                        <a href="{{ route('login') }}">登陆</a>
{{--                        <a href="{{ route('register') }}">Register</a>--}}
                    @endauth
                </div>
            @endif

            <div class="content">
                <div class="title m-b-md">
                    《计算机网络》课程建设网站
                </div>

                <br/>

                <div class="links">
                    <a href="http://127.0.0.1:8000/home">首页</a>
                    <a href="http://127.0.0.1:8000/articles">博文随笔</a>
                    <a href="http://127.0.0.1:8000/courses">课程信息</a>
                    <a href="http://127.0.0.1:8000/squads">班级信息</a>
                </div>
            </div>
        </div>
    </body>
</html>
