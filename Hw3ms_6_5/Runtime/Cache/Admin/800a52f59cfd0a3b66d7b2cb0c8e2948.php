<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
 <head>
  <meta charset="utf-8" />
  <title>3MS</title>
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <script src='/web/Hw3ms/Public/statics/js/jquery-2.1.1.min.js'></script>
  <script src="/web/Hw3ms/Public/statics/aceadmin/js/jquery-ui-1.10.3.custom.min.js"></script>
  <script src="/web/Hw3ms/Public/statics/aceadmin/js/jquery.ui.touch-punch.min.js"></script>
  <link rel="shortcut icon" type="image/x-icon" href="/web/Hw3ms/Public/img/fac.ico">
  <link href="/web/Hw3ms/Public/statics/aceadmin/css/bootstrap.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="/web/Hw3ms/Public/statics/aceadmin/css/font-awesome.min.css" />
  <link rel="stylesheet" href="/web/Hw3ms/Public/statics/font-awesome-4.4.0/css/font-awesome.min.css" />
  <!--[if IE 7]><link rel="stylesheet" href="/web/Hw3ms/Public/statics/aceadmin/css/font-awesome-ie7.min.css"/><![endif]-->
  <link rel="stylesheet" href="/web/Hw3ms/Public/statics/aceadmin/css/ace.min.css" />


  <!--[if lte IE 8]><link rel="stylesheet" href="/web/Hw3ms/Public/statics/aceadmin/css/ace-ie.min.css"/><![endif]-->
  <!--[if lt IE 9]><script src="/web/Hw3ms/Public/statics/aceadmin/js/html5shiv.js"></script><script src="/web/Hw3ms/Public/statics/aceadmin/js/respond.min.js"></script><![endif]-->
  <style type="text/css">
      #sidebar .nav-list{
          overflow-y: auto;
          overflow-x: hidden;
      }
      .b-nav-li{
          padding: 5px 0;
      }
      tfoot,form{
        cursor: pointer;
      }
      .suo1{
              margin-left: 0px;
            }
      .suo2{
        margin-left: 10px;
      }
      .suo3{
        margin-left: 20px;
      }
    </style>

</head>
<body>
<div class="navbar navbar-default" id="navbar">
    <script type="text/javascript">
            try{ace.settings.check('navbar' , 'fixed')}catch(e){}
    </script>
    <div class="navbar-container" id="navbar-container">
        <div class="navbar-header pull-left">
             <a href="<?php echo U('admin/index/index');?>" class="navbar-brand">
             <small>
                <i class="icon-leaf"></i>3MS管理后台
             </small>
             </a>
        </div>
        <div class="navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">
                <li class="light-blue"> 
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                         <img class="nav-user-photo" src="/web/Hw3ms/Public/statics/aceadmin/avatars/user.jpg" alt="Jason's Photo"/>
                         <span class="user-info"><small>欢迎光临,</small> <?php echo ($_SESSION['user']['username']); ?></span>
                         <i class="icon-caret-down"></i>
                    </a>
                    <ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                       <li class="divider"></li>
                       <li><a href="<?php echo U('Admin/login/logout');?>"><i class="icon-off"></i> 退出</a>
                       </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
 <?php ?>
<div class="main-container" id="main-container">
    <script type="text/javascript">
        try{ace.settings.check('main-container' , 'fixed')}catch(e){}
    </script>
    <div class="main-container-inner">
        <a class="menu-toggler" id="menu-toggler" href="#">
        <span class="menu-text"></span></a>
        <div class="sidebar" id="sidebar">
            <script type="text/javascript">
                try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
            </script>
            <div class="sidebar-shortcuts" id="sidebar-shortcuts">
                <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large"> 
                     <button class="btn btn-success" style="width: 180px !important;" onclick="window.open('<?php echo U('Home/index/index');?>');"><i class="fa fa-home"></i></button> 
                    <!--  <button class="btn btn-info"><i class="icon-pencil"></i></button> 
                     <button class="btn btn-warning"><i class="icon-group"></i></button> 
                     <button class="btn btn-danger"><i class="icon-cogs"></i></button> -->
                </div>
                <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
                    <span class="btn btn-success"></span>
                    <span class="btn btn-info"></span>
                    <span class="btn btn-warning"></span>
                    <span class="btn btn-danger"></span>
               </div>
             </div>
             <!-- #sidebar-shortcuts -->
             <ul class="nav nav-list">

                <?php if(is_array($nav_data)): foreach($nav_data as $key=>$v): if(empty($v['_data'])): ?><li class="b-nav-li <?php if(I('get.nav')==$v['id']) echo 'active';?>">
                              <a href="<?php echo U($v['mca']);?>/nav/<?php echo ($v['id']); ?>"><i class="fa fa-<?php echo ($v['ico']); ?> icon-test"></i> <span class="menu-text"><?php echo ($v['name']); ?></span></a>
                         </li>
                    <?php else: ?>
                         <li class="b-has-child  zyu">
                              <a href="#" class="dropdown-toggle b-nav-parent">
                                  <i class="fa fa-<?php echo ($v['ico']); ?> icon-test"></i> 
                                  <span class="menu-text"><?php echo ($v['name']); ?></span>
                                  <b class="arrow icon-angle-down"></b>
                              </a>
                              <ul class="submenu">
                                  <?php if(is_array($v['_data'])): foreach($v['_data'] as $key=>$n): if(empty($n['_data'])){ ?>
                                      <li class="b-nav-li <?php if(I('get.nav')==$n['id']) echo 'active';?>">
                                          <a href="<?php echo U($n['mca']);?>/nav/<?php echo ($n['id']); ?>">
                                                <i class="icon-double-angle-right"></i> <?php echo ($n['name']); ?>
                                           </a>
                                      </li>
                                      <?php }else{?>
                                                <li class="b-has-child">
                                                     <a href="#" class="dropdown-toggle b-nav-parent">
                                                         <i class="fa fa-{$n['ico']} icon-test"></i> 
                                                         <span class="menu-text"><?php echo ($n['name']); ?></span>
                                                         <b class="arrow icon-angle-down"></b>
                                                     </a>
                                                     <ul class="submenu">
                                                         <?php if(is_array($n['_data'])): foreach($n['_data'] as $key=>$u): ?><li class="b-nav-li three <?php if(I('get.nav')==$u['id']) echo 'active';?>">
                                                              <a href="<?php echo U($u['mca']);?>/nav/<?php echo ($u['id']); ?>">
                                                                       <i class="icon-double-angle-right"></i> <?php echo ($u['name']); ?>
                                                                  </a>
                                                             </li><?php endforeach; endif; ?>
                                                     </ul>
                                               </li>
                                      <?php } endforeach; endif; ?>
                              </ul>
                        </li><?php endif; endforeach; endif; ?>
            </ul>
            <!-- <div class="sidebar-collapse" id="sidebar-collapse">
                  <i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
            </div> -->
            <script type="text/javascript">
               try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
            </script>
        </div>
        <div class="main-content">
             <div class="page-content">
                  
	<div class="page-header">
	    <h1><i class="fa fa-home"></i> 首页</h1>
	</div>
	<div class="col-xs-12">
	    <div id="out">
	        <div class="inside">
	            <div class="box test">
	                <h2>环境监测</h2>
	                <table class="table table-border">
	                    <tr>
	                        <th width="25%">坏境</th>
	                        <th width="25%">当前配置</th>
	                    </tr>
	                    <tr>
	                        <td>操作系统</td>
	                        <td><?php echo php_uname('s'); ?></td>
	                    </tr>
	                    <tr>
	                        <td>php版本</td>
	                        <td><?php echo PHP_VERSION ?></td>
	                    </tr>
	                    <tr>
	                        <td>apache版本</td>
	                        <td><?php echo apache_get_version(); ?></td>
	                    </tr>
	                    
	                </table>
	                <h2>目录权限</h2>
	                <table class="table table-border">
	                    <tr>
	                        <th width="25%">坏境</th>
	                        <th width="25%">当前配置</th>
	                    </tr>
	                    <tr>
	                        <td>./</td>
	                        <td>
	                            <?php if (is_writable('./')): ?>
	                                可写
	                            <?php else: ?>
	                                不可写
	                            <?php endif ?>
	                        </td>
	                    </tr>
	                    <tr>
	                        <td>./Upload</td>
	                        <td>
	                            <?php if (is_writable('./Upload')): ?>
	                                可写
	                            <?php else: ?>
	                                不可写
	                            <?php endif ?>
	                        </td>
	                    </tr>
	                    <tr>
	                        <td>./Runtime</td>
	                        <td>
	                            <?php if (is_writable('./Runtime')): ?>
	                                可写
	                            <?php else: ?>
	                                不可写
	                            <?php endif ?>
	                        </td>
	                    </tr>
	                    <tr>
	                        <td>./Public/install</td>
	                        <td>
	                            <?php if (is_writable('./Public/install')): ?>
	                                可写
	                            <?php else: ?>
	                                不可写
	                            <?php endif ?>
	                        </td>
	                    </tr>
	                    <tr>
	                        <td>./Application/Common/Conf</td>
	                        <td>
	                            <?php if (is_writable('./Application/Common/Conf')): ?>
	                                可写
	                            <?php else: ?>
	                                不可写
	                            <?php endif ?>
	                        </td>
	                    </tr>
	                </table>
	            </div>
	        </div>
	    </div>
	</div>

            </div>
        </div>
     </div>
     <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse"><i class="icon-double-angle-up icon-only bigger-110"></i></a>
</div>


<script type="text/javascript">
    if("ontouchend" in document) document.write("<script src='/web/Hw3ms/Public/statics/aceadmin/js/jquery.mobile.custom.min.js'>"+"<"+"script>");
</script>
<script src="/web/Hw3ms/Public/statics/aceadmin/js/typeahead-bs2.min.js"></script>
<script src="/web/Hw3ms/Public/statics/aceadmin/js/bootstrap.min.js"></script>

<script src="/web/Hw3ms/Public/statics/aceadmin/js/jquery.slimscroll.min.js"></script>
<!-- <script src="/web/Hw3ms/Public/statics/aceadmin/js/jquery.easy-pie-chart.min.js"></script> -->
<!-- <script src="/web/Hw3ms/Public/statics/aceadmin/js/jquery.sparkline.min.js"></script> -->
<!-- <script src="/web/Hw3ms/Public/statics/aceadmin/js/flot/jquery.flot.min.js"></script> -->
<!-- <script src="/web/Hw3ms/Public/statics/aceadmin/js/flot/jquery.flot.pie.min.js"></script> -->
<!-- <script src="/web/Hw3ms/Public/statics/aceadmin/js/flot/jquery.flot.resize.min.js"></script> -->
<!-- <script src="/web/Hw3ms/Public/statics/aceadmin/js/ace-elements.min.js"></script> -->
<script src="/web/Hw3ms/Public/statics/aceadmin/js/ace.min.js"></script>

<!-- <script src="/web/Hw3ms/themes/Public/js/base.js"></script> -->

<script>
var navid = '<?php echo I('get.nav');?>';
$(function(){
    $(".b-nav-li.three.active").parents(".zyu").children(".b-nav-parent").click();
    $('.b-has-child .active').parent().parent().children('.b-nav-parent').click();
    
});
</script>