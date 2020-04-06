# 部署流程

## 拉取项目

~~~git
git clone https://github.com/xyfDoYourLove/GP_laravel-admin_vue.git
~~~

## 配置.env文件

复制.env.example文件

```
cp .env.example .env
```

修改以下配置

```
//配置应用url，本地环境是配置了虚拟端口，要保证能够url指到项目文件夹下的public文件夹，主要用于图片的显示等等
APP_URL=http://admin.vue.xiao.com/  

// 数据库配置,分别为数据库名、用户名、密码，保证数据库没问题
DB_DATABASE=admin_vue2
DB_USERNAME=root
DB_PASSWORD=
```

> 关于数据库，这里使用的是mysql5.7.26版本，默认已经修改了cofing/database的部分配置，无需再更改
>
> ```
> 'charset' => 'utf8',
> 'collation' => 'utf8_unicode_ci',
> ```
>
> 新建数据库时与这里保持一致

> laravel这里默认的配置为utf8mb4 ,据说由于版本问题，默认的配置会导致在迁移数据库时报错

## 安装laravel依赖

~~~
// 速度慢可以先全局配置阿里云镜像
composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/
// 安装依赖
composer install   
~~~

## 安装laravel-admin

~~~
// 发布资源
php artisan vendor:publish --provider="Encore\Admin\AdminServiceProvider"
// 安装依赖
php artisan admin:install
~~~

## 安装前端依赖

~~~
// npm速度慢的，自行全局更换淘宝镜像
npm config set registry https://registry.npm.taobao.org
// 安装前端依赖
npm install
~~~

## 生成应用密钥

~~~
php artisan key:generate
~~~

## 迁移数据库

~~~
// sql文件放在：项目文件夹/sql
// 准备好数据库后直接转储sql文件即可
~~~

## 启动

~~~
// 编译前端资源
npm run dev
// 使用php内置服务器启动
php artisan serve
~~~

