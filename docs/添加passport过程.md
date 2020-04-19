# 后端准备

## 安装

~~~
// 需要先安装这个依赖，否则会报错（貌似默认版本为9.99.99？？？）
composer require paragonie/random_compat:2.*

// laravel版本为5.5，对应适配的passport版本为4.0.*
composer require laravel/passport=~4.0
~~~

## 数据库迁移

~~~
// 迁的是paaport的数据表
php artisan migrate
~~~

## 生成密钥

> 创建生成安全访问令牌时所需的加密密钥，同时，这条命令也会创建用于生成访问令牌的「个人访问」客户端和「密码授权」客户端：

~~~
php artisan passport:install

// 结果
Encryption keys generated successfully.
Personal access client created successfully.
Client ID: 1
Client Secret: 8ALmdaicLmzNOaEIeOjeLidSaTOwKAsmj64yjzTP
Password grant client created successfully.
Client ID: 2
Client Secret: C4BOfKucLtMeMe754kGyzZqe6r6xpvBfE2XENMI5
~~~

## User表添加

~~~
 use HasApiTokens；
~~~

## AuthServiceProvider添加

~~~
// 添加到boot方法中去
Passport::routes();
~~~

## 修改config/auth.php

~~~
'guards' => [
    'web' => [
        'driver' => 'session',
        'provider' => 'users',
    ],

    'api' => [
        'driver' => 'passport',
        'provider' => 'users',
    ],
],
~~~

# 前端准备（vue）

## 发布passport的vue组件

~~~
php artisan vendor:publish --tag=passport-components
~~~

## app.js中注册

~~~
Vue.component(
    'passport-clients',
    require('./components/passport/Clients.vue')
);

Vue.component(
    'passport-authorized-clients',
    require('./components/passport/AuthorizedClients.vue')
);

Vue.component(
    'passport-personal-access-tokens',
    require('./components/passport/PersonalAccessTokens.vue')
);
~~~

## 添加到单独的页面中

~~~
// 以下三个组件为生成token令牌的组件，建议单独设置路由，用来生成令牌，以便访问api路由
<passport-clients></passport-clients>
<passport-authorized-clients></passport-authorized-clients>
<passport-personal-access-tokens></passport-personal-access-tokens>

// 注意：在这个组件中生成的token只会在页面上出现一次，数据库也没有，注意保存
~~~

## 使用令牌进行访问API组件

~~~
// 将生成的令牌添加到发送请求的头部中，到后端后会自动根据刚才添加的路由管理进行校验，判定是否授权
// axios发送请求时添加头部信息

// request拦截器
httpService.interceptors.request.use(
    config => {
        // 根据条件加入token-安全携带
        if (true) { // 需自定义
            // 让每个请求携带token
            config.headers['Authorization'] = 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjZmOGFhNjkxNGZiMTZkODcyN2IzMWQ4YjYzZjE1ZGViZjc3ZjlhNTI1NTAzZjczZmViNzA5NDE5NjAxMzQzMzNmMWFkY2Q2Y2IwZTk0ZTgxIn0.eyJhdWQiOiIxIiwianRpIjoiNmY4YWE2OTE0ZmIxNmQ4NzI3YjMxZDhiNjNmMTVkZWJmNzdmOWE1MjU1MDNmNzNmZWI3MDk0MTk2MDEzNDMzM2YxYWRjZDZjYjBlOTRlODEiLCJpYXQiOjE1ODcyNjQyODAsIm5iZiI6MTU4NzI2NDI4MCwiZXhwIjoxNjE4ODAwMjgwLCJzdWIiOiI0Iiwic2NvcGVzIjpbXX0.ix2LcKZAs7SpHnMFRtvR_TLqhMnA-xWriwmdyo6T9jxVB3MthHReSYxkWIu6V13pttceVN7-9akjicr-xbwJfIGjlVwKx6w14n_Ptmflrp1EgoQWQe_NO8hTVp4XURBoU-OC7GpXUKio8bsJZs_usZT3Bvde3g8XrvK7GZbOo1ut8b6w-Wj_NywB1SAYmfx5TMsAei44C3injfz7hsipvcET3SX1ItiyknZSWAck5CRKfgHevqfz4wMjFVkQ6Qf5QcLEwM1CcT_DW2O89Khphtzwu3NK3Q5lp_ezBSk2QYCzsK7w7QiNeUpdjcGTmWqBkgozuUvtw6Y3U9NqA4OKM9BQYB-ZxVKQeXcu9T7dIm9wwEf1Yu0kXFDTppZZVkCxVcYEik91WJxt1q_nDTMhfmbO5KXS3rCL9sbPB-DMzkp2IgL9EeLaz2DSsq_00rOm0pa6P8zXmfUwKGdioS-9ZQlEbjPD25uT9YcFbpjDgtjbwDzHEAkSfedyG3eaEfiFD_VRX3UiNHkoBSGKbPnpsBlR9qSpsWEI0ealzElZySgL6-fZCUBzO0bUQeCM-9r35q6qYVpdJud3GlQlwsb-wbTu3k4ZC26F03ew4uBGLd5kETy2eSCffR7M-VnXdjoT7e60aNdMRUqqw09tfETO13ytr_Rlz72UBFqhxcSLX_Y';
        }
        return config;
    },
    error => {
        // 请求错误处理
        Promise.reject(error).then(r => {});
    }
)
~~~

# 待改进

## 这里讲一点关于令牌待改进的地方

默认的passport发布的令牌，有效期为永久，不需要刷新，也未设置任何关于刷新的方式

而我们在使用时，是通过手动将令牌添加到api请求的头部当中，以此来进行的授权检验

## 期望的效果：

在头部添加令牌部分，通过令牌生成方法，设置令牌为一定周期进行刷新