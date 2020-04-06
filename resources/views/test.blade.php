<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="UTF-8">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <title>测试页</title>

    </head>
    <body>
        <div id="app2"></div>
        <script src="{{ mix('js/app.js') }}"></script>
    </body>
</html>
