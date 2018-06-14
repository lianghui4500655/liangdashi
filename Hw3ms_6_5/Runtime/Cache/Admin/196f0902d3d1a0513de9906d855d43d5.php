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
        <h1>
            首页> 权限管理
        </h1>
    </div>
    <div class="col-xs-12">
        <div class="tabbable">
            <ul class="nav nav-tabs padding-12 tab-color-blue background-blue" id="myTab">
                <li class="active">
                    <a data-toggle="tab" href="#home">
                        权限列表
                    </a>
                </li>
                <li>
                    <a href="javascript:;" onclick="add()">
                        添加权限
                    </a>
                </li>
            </ul>
            <div class="tab-content">
                <table class="table table-striped table-bordered table-hover table-condensed">
                    <tr>
                        <th>
                            权限名
                        </th>
                        <th>
                            权限
                        </th>
                        <th>
                            操作
                        </th>
                    </tr>
                    <?php if(is_array($data)): foreach($data as $key=>$v): ?><tr>
                            <td>
                                <?php echo ($v['_name']); ?>
                            </td>
                            <td>
                                <?php echo ($v['name']); ?>
                            </td>
                            <td>
                                <a href="javascript:;" onclick="add_child(this)" ruleid="<?php echo ($v['id']); ?>">
                                    添加子权限
                                </a>
                                |
                                <a href="javascript:;" onclick="edit(this)" ruleid="<?php echo ($v['id']); ?>" rulename="<?php echo ($v['name']); ?>" ruletitle="<?php echo ($v['title']); ?>">
                                    修改
                                </a>
                                |
                                <a href="javascript:if(confirm('确定删除？'))location='<?php echo U('Admin/Rule/delete',array('id'=>$v['id']));?>'">
                                    删除
                                </a>
                            </td>
                        </tr><?php endforeach; endif; ?>
                </table>
            </div>
        </div>
    </div>
    <div aria-hidden="true" aria-labelledby="myModalLabel" class="modal fade" id="bjy-add" role="dialog" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button aria-hidden="true" class="close" data-dismiss="modal" type="button">
                        ×
                    </button>
                    <h4 class="modal-title" id="myModalLabel">
                        添加权限
                    </h4>
                </div>
                <div class="modal-body">
                    <form action="<?php echo U('Admin/Rule/add');?>" class="form-inline" id="bjy-form" method="post">
                        <input name="pid" type="hidden" value="0">
                            <table class="table table-striped table-bordered table-hover table-condensed">
                                <tr>
                                    <th width="12%">
                                        权限名：
                                    </th>
                                    <td>
                                        <input class="input-medium" name="title" type="text"/>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        权限：
                                    </th>
                                    <td>
                                        <input class="input-medium" name="name" type="text">
                                            输入模块/控制器/方法即可 例如 Admin/Rule/index
                                        </input>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                    </th>
                                    <td>
                                        <input class="btn btn-success" type="submit" value="添加"/>
                                    </td>
                                </tr>
                            </table>
                        </input>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div aria-hidden="true" aria-labelledby="myModalLabel" class="modal fade" id="bjy-edit" role="dialog" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button aria-hidden="true" class="close" data-dismiss="modal" type="button">
                        ×
                    </button>
                    <h4 class="modal-title" id="myModalLabel">
                        修改权限
                    </h4>
                </div>
                <div class="modal-body">
                    <form action="<?php echo U('Admin/Rule/edit');?>" class="form-inline" id="bjy-form" method="post">
                        <input name="id" type="hidden">
                            <table class="table table-striped table-bordered table-hover table-condensed">
                                <tr>
                                    <th width="12%">
                                        权限名：
                                    </th>
                                    <td>
                                        <input class="input-medium" name="title" type="text"/>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        权限：
                                    </th>
                                    <td>
                                        <input class="input-medium" name="name" type="text">
                                            输入模块/控制器/方法即可 例如 Admin/Rule/index
                                        </input>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                    </th>
                                    <td>
                                        <input class="btn btn-success" type="submit" value="修改"/>
                                    </td>
                                </tr>
                            </table>
                        </input>
                    </form>
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
        // 添加菜单
	function add(){
		$("input[name='title'],input[name='name']").val('');
		$("input[name='pid']").val(0);
		$('#bjy-add').modal('show');
	}

	// 添加子菜单
	function add_child(obj){
		var ruleId=$(obj).attr('ruleId');
		$("input[name='pid']").val(ruleId);
		$("input[name='title']").val('');
		$("input[name='name']").val('');
		$('#bjy-add').modal('show');
	}

	// 修改菜单
	function edit(obj){
		var ruleId=$(obj).attr('ruleId');
		var ruletitle=$(obj).attr('ruletitle');
		var ruleName=$(obj).attr('ruleName');
		$("input[name='id']").val(ruleId);
		$("input[name='title']").val(ruletitle);
		$("input[name='name']").val(ruleName);
		$('#bjy-edit').modal('show');
	}
    </script>

<script>
var navid = '<?php echo I('get.nav');?>';
$(function(){
    $(".b-nav-li.three.active").parents(".zyu").children(".b-nav-parent").click();
    $('.b-has-child .active').parent().parent().children('.b-nav-parent').click();
    
});
</script>