<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="UTF-8">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <title>首页</title>

    </head>
    <body>
        <div id="test"></div>
        <script src="{{ mix('js/app.js') }}"></script>
    </body>
</html>
