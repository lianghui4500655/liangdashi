<?php
if ($_SERVER['HTTP_HOST'] == 'localhost') {

    $db = array( //数据库配置
        'DB_DEPLOY_TYPE' => 1,
        'DB_TYPE'        => 'mysql', // 数据库类型
        'DB_HOST'        => 'localhost', // 服务器地址
        'DB_NAME'        => 'offer', // 数据库名
        'DB_USER'        => 'root', // 用户名
        'DB_PWD'         => '', // 密码
        'DB_PORT'        => '3306', // 端口
        'DB_PREFIX'      => 'hw3ms_', // 数据库表前缀
    );
} else {
    $db = array( //数据库配置
        'DB_DEPLOY_TYPE' => 1,
        'DB_TYPE'        => 'mysql', // 数据库类型
        'DB_HOST'        => 'dbserver', // 服务器地址
        'DB_NAME'        => 'offer', // 数据库名
        'DB_USER'        => 'root', // 用户名
        'DB_PWD'         => 'Huawei$123#_', // 密码
        'DB_PORT'        => '3306', // 端口
        'DB_PREFIX'      => 'hw3ms_', // 数据库表前缀
    );
}

return $db;
