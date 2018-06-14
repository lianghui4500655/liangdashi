<?php
//网站主配置项
return array(
//*************************************附加设置***********************************
    'DEFAULT_MODULE'         => 'Home', // 默认模块
    'DEFAULT_CONTROLLER'     => 'Index', // 默认控制器名称
    'DEFAULT_ACTION'         => 'index', // 默认操作名称
    'DEFAULT_M_LAYER'        => 'Model', // 默认的模型层名称
    'DEFAULT_C_LAYER'        => 'Controller', // 默认的控制器层名称
    'VAR_MODULE'             => 'm', // 默认模块获取变量
    'VAR_CONTROLLER'         => 'c', // 默认控制器获取变量
    'VAR_ACTION'             => 'a', // 默认操作获取变量

    'URL_CASE_INSENSITIVE'   => false, // url区分大小写
    'TAGLIB_BUILD_IN'        => 'Cx,Common\Tag\My', // 加载自定义标签
    'LOAD_EXT_CONFIG'        => 'db,alipay,oauth', // 加载网站设置文件
    'TMPL_PARSE_STRING'      => array( // 定义常用路径
        '__OSS__'            => OSS_URL,
        '__PUBLIC__'         => OSS_URL . __ROOT__ . '/Public',
        '__HOME_CSS__'       => __ROOT__ . trim(TMPL_PATH, '.') . 'Home/Public/css',
        '__HOME_JS__'        => __ROOT__ . trim(TMPL_PATH, '.') . 'Home/Public/js',
        '__HOME_IMAGES__'    => OSS_URL . trim(TMPL_PATH, '.') . 'Home/Public/images',
        '__ADMIN_CSS__'      => __ROOT__ . trim(TMPL_PATH, '.') . 'Admin/Public/css',
        '__ADMIN_JS__'       => __ROOT__ . trim(TMPL_PATH, '.') . 'Admin/Public/js',
        '__ADMIN_IMAGES__'   => OSS_URL . trim(TMPL_PATH, '.') . 'Admin/Public/images',
        '__ADMIN_ACEADMIN__' => OSS_URL . __ROOT__ . '/Public/statics/aceadmin',
        '__PUBLIC_CSS__'     => __ROOT__ . trim(TMPL_PATH, '.') . 'Public/css',
        '__PUBLIC_JS__'      => __ROOT__ . trim(TMPL_PATH, '.') . 'Public/js',
        '__PUBLIC_IMAGES__'  => OSS_URL . trim(TMPL_PATH, '.') . 'Public/images',
        '__USER_CSS__'       => __ROOT__ . trim(TMPL_PATH, '.') . 'User/Public/css',
        '__USER_JS__'        => __ROOT__ . trim(TMPL_PATH, '.') . 'User/Public/js',
        '__USER_IMAGES__'    => OSS_URL . trim(TMPL_PATH, '.') . 'User/Public/images',
        '__APP_CSS__'        => __ROOT__ . trim(TMPL_PATH, '.') . 'App/Public/css',
        '__APP_JS__'         => __ROOT__ . trim(TMPL_PATH, '.') . 'App/Public/js',
        '__APP_IMAGES__'     => OSS_URL . trim(TMPL_PATH, '.') . 'App/Public/images',
    ),
//***********************************URL设置**************************************
    'MODULE_ALLOW_LIST'      => array('Home', 'Admin', 'Api', 'App'), //允许访问列表
    'URL_HTML_SUFFIX'        => '', // URL伪静态后缀设置
    'URL_MODEL'              => 1, //启用rewrite
    //***********************************SESSION设置**********************************
    'SESSION_OPTIONS'        => array(
        'name'             => 'Hw3ms_', //设置session名
        'expire'           => 24 * 3600 * 2, //SESSION保存2天
        // 'expire'           => 60, //SESSION保存60s
        'use_trans_sid'    => 1, //跨页传递
        'use_only_cookies' => 0, //是否只开启基于cookies的session的会话方式
    ),

    'COOKIE_EXPIRE'          => 0, // Cookie有效期
    'COOKIE_PREFIX'          => 'Hw3ms_', // Cookie前缀 避免冲突
    // 'SHOW_PAGE_TRACE'        => false, //调试模式开启调试面板
    //***********************************页面设置**************************************
    'TMPL_EXCEPTION_FILE'    => APP_DEBUG ? THINK_PATH . 'Tpl/think_exception.tpl' : './Template/default/Home/Public/404.html',
    'TMPL_ACTION_ERROR'      => TMPL_PATH . '/Public/dispatch_jump.tpl', // 默认错误跳转对应的模板文件
    'TMPL_ACTION_SUCCESS'    => TMPL_PATH . '/Public/dispatch_jump.tpl', // 默认成功跳转对应的模板文件
    //***********************************auth设置**********************************
    'AUTH_CONFIG'            => array(
        'AUTH_USER' => 'users', //用户信息表
    ),
//***********************************邮件服务器**********************************
    'EMAIL_FROM_NAME'        => '', // 发件人
    'EMAIL_SMTP'             => '', // smtp
    'EMAIL_USERNAME'         => '', // 账号
    'EMAIL_PASSWORD'         => '', // 密码  注意: 163和QQ邮箱是授权码；不是登录的密码
    'EMAIL_SMTP_SECURE'      => '', // 链接方式 如果使用QQ邮箱；需要把此项改为  ssl
    'EMAIL_PORT'             => '25', // 端口 如果使用QQ邮箱；需要把此项改为  465
    //***********************************其他设置**********************************
    'RONG_IS_DEV'            => false, //是否是在开发中
    'RONG_DEV_APP_KEY'       => '8luwapkvu3xwl', //融云开发环境下的key       仅供测试使用
    'RONG_DEV_APP_SECRET'    => '1Aw1D7F6Td25', //融云开发环境下的SECRET     仅供测试使用
    'GEETEST_ID'             => '034b9cc862456adf05398821cefc94eb', //极验id  仅供测试使用
    'GEETEST_KEY'            => 'b7f064b9ae813699de794303f0b0e76f', //极验key 仅供测试使用
    'RONG_PRO_APP_KEY'       => '', //融云生产环境下的key
    'RONG_PRO_APP_SECRET'    => '', //融云生产环境下的SECRET
    'UMENG_IOS_APP_KEY'      => '', //友盟ios AppKey
    'UMENG_IOS_SECRET'       => '', //友盟ios App Master Secret
    'UMENG_ANDROID_APP_KEY'  => '', //友盟android AppKey
    'UMENG_ANDROID_SECRET'   => '', //友盟android App Master Secret
    'RONGLIAN_ACCOUNT_SID'   => '', //容联云通讯 主账号 accountSid
    'RONGLIAN_ACCOUNT_TOKEN' => '', //容联云通讯 主账号token accountToken
    'RONGLIAN_APPID'         => '', //容联云通讯 应用Id appid
    'RONGLIAN_TEMPLATE_ID'   => '', //容联云通讯 模板Id
    //***********************************缓存设置**********************************
    'DATA_CACHE_TIME'        => 1800, // 数据缓存有效期s
    'DATA_CACHE_PREFIX'      => 'mem_', // 缓存前缀
    'DATA_CACHE_TYPE'        => 'Memcached', // 数据缓存类型,
    'MEMCACHED_SERVER'       => '127.0.0.1', // 服务器ip
    'ALIOSS_CONFIG'          => array(
        'KEY_ID'     => '', // 阿里云oss key_id
        'KEY_SECRET' => '', // 阿里云oss key_secret
        'END_POINT'  => '', // 阿里云oss endpoint
        'BUCKET'     => '', // bucken 名称
    ),
    'NEED_UPLOAD_OSS'        => array( // 需要上传的目录
        '/Upload/avatar',
        '/Upload/cover',
        '/Upload/image/webuploader',
        '/Upload/video',
    ),
    'ALIPAY_CONFIG'          => array(
        'partner'          => '', // partner 从支付宝商户版个人中心获取
        'seller_email'     => '', // email 从支付宝商户版个人中心获取
        'key'              => '', // key 从支付宝商户版个人中心获取
        'sign_type'        => strtoupper(trim('MD5')), // 可选md5  和 RSA
        'input_charset'    => 'utf-8', // 编码 (固定值不用改)
        'transport'        => 'http', // 协议  (固定值不用改)
        'cacert'           => VENDOR_PATH . 'Alipay/cacert.pem', // cacert.pem存放的位置 (固定值不用改)
        'notify_url'       => '', // 异步接收支付状态通知的链接
        'return_url'       => '', // 页面跳转 同步通知 页面路径 支付宝处理完请求后,当前页面自 动跳转到商户网站里指定页面的 http 路径。 (扫码支付专用)
        'show_url'         => '', // 商品展示网址,收银台页面上,商品展示的超链接。 (扫码支付专用)
        'private_key_path' => '', //移动端生成的私有key文件存放于服务器的 绝对路径 如果为MD5加密方式；此项可为空 (移动支付专用)
        'public_key_path'  => '', //移动端生成的公共key文件存放于服务器的 绝对路径 如果为MD5加密方式；此项可为空 (移动支付专用)
    ),
    'WEIXINPAY_CONFIG'       => array(
        'APPID'      => '', // 微信支付APPID
        'MCHID'      => '', // 微信支付MCHID 商户收款账号
        'KEY'        => '', // 微信支付KEY
        'APPSECRET'  => '', //公众帐号secert
        'NOTIFY_URL' => '', // 接收支付状态的连接
    ),
);
