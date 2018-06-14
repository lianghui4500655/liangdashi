<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<title>登录</title>
		  <script src='/web/Hw3ms/Public/statics/js/jquery-2.1.1.min.js'></script>
		<link rel="stylesheet" href="/web/Hw3ms/Public/plugins/layui/css/layui.css" media="all" />
		<link rel="stylesheet" href="/web/Hw3ms/Public/statics/aceadmin/css/login.css" />
		 <link rel="stylesheet" href="/web/Hw3ms/Public/statics/webuploader-0.1.5/xb-webuploader.css">
<script src="/web/Hw3ms/Public/statics/js/jquery-1.10.2.min.js"></script>
	</head>

	<body class="beg-login-bg">
		<div class="beg-login-box">
			<header>
				<h1>后台登录</h1>
			</header>
			<div class="beg-login-main">
				<form action="<?php echo U('login');?>" class="layui-form" method="post">
					<div class="layui-form-item">
						<label class="beg-login-icon">
                        <i class="layui-icon">&#xe612;</i>
                    </label>
						<input type="text" name="username" required="" lay-verify="userName" autocomplete="off" placeholder="用户名" class="layui-input">
					</div>
					<div class="layui-form-item">
						<label class="beg-login-icon">
                        <i class="layui-icon">&#xe642;</i>
                    </label>
						<input type="password" name="password" required="" lay-verify="password" autocomplete="off" placeholder="密码" class="layui-input">
					</div>
					<!-- <div id="captcha"></div>     -->
               
					
					<div class="layui-form-item">
						<div class="beg-pull-right">
							<button class="layui-btn layui-btn-primary" lay-submit lay-filter="login">
                             登录
                        </button>
						</div>
						<div class="beg-clear"></div>
					</div>
				 </form>
				
			</div>
			<footer>
				<p>Issmart版权所有</p>
			</footer>
		</div>
		


<script src="/web/Hw3ms/Public/statics/js/gt.js"></script>
<script>
    var handler = function (captchaObj) {
        // 将验证码加到id为captcha的元素里
        captchaObj.appendTo("#captcha");
     };
    // 获取验证码
    $.get("<?php echo U('geetest_show_verify');?>", function(data) {
        // 使用initGeetest接口
        // 参数1：配置参数，与创建Geetest实例时接受的参数一致
        // 参数2：回调，回调的第一个参数验证码对象，之后可以使用它做appendTo之类的事件
        console.log(data)
        initGeetest({
            gt: data.gt,
            challenge: data.challenge,
            product: "float", // 产品形式
            offline: !data.success
        }, handler);
    },'json');
  
    // $('.layui-btn').click(function(){
    	 // $('form').submit();
    	 // if($('.gt_ajax_tip').hasClass('gt_success')) 
    	 // else alert('请先通过验证码');
    // })
</script>
</body>
</html>