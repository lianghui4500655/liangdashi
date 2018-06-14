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
                  
 <link rel="stylesheet" href="/web/Hw3ms/Public/statics/css/drop2.css" />
    <div class="page-header">
        <h1>
             <span> <?php if(!empty($pname)): echo ($pname); ?> ><?php endif; ?> <?php echo ($name); ?> </span>
        </h1>
    </div>
    <div class="col-xs-12">
             <div class="tabbable">
                   <ul class="nav nav-tabs padding-12 tab-color-blue background-blue" id="myTab">
                       <li class="active"><a href="#home" data-toggle="tab">分类列表</a></li>
                       <li> <a href="javascript:;" onclick="add()">添加分类</a></li>
                   </ul>
                   <div class="tab-content">
                        <!-- <form class="" action="<?php echo U('order');?>/nav/<?php echo I('get.nav');?>" method="post">
                             <table class="table table-striped table-bordered table-hover table-condensed">
                                 <tr>
                                     <th width="5%">排序</th>
                                     <th>中文名</th>
                                     <th>英文名</th>
                                     <th>操作</th>
                                 </tr>
                            <?php if(is_array($data)): foreach($data as $key=>$v): ?><tr>
                                    <td> <input class="input-medium" style="width:40px;height:25px;" type="text" name="<?php echo ($v['id']); ?>" value="<?php echo ($v['order_number']); ?>">
                                    </td>
                                    <td><?php echo ($v['_name']); ?></td>
                                    <td><?php echo ($v['name_en']); ?></td>
                                    <td> 
                                         <a href="javascript:;" cateId="<?php echo ($v['id']); ?>" cateName="<?php echo ($v['name']); ?>" onclick="add_child(this)">添加子分类</a> | 
                                         <a href="javascript:;" cateId="<?php echo ($v['id']); ?>" cateName="<?php echo ($v['name']); ?>" cateName_en="<?php echo ($v['name_en']); ?>" cateNum="<?php echo ($v['order_num']); ?>" onclick="edit(this)">修改</a> | 
                                         <a href="javascript:if(confirm('确定删除？'))location='<?php echo U('delete',array('id'=>$v['id']));?>'">删除</a>
                                         <?php if($v['haschild']=='0'){ ?>
                                                |<a href="<?php echo U('Admin/Video/index',array('nav'=>I('get.nav'),'cate'=>$v['id']));?>" > 查看/添加视频</a>
                                         <?php }?>

                                    </td>
                                </tr><?php endforeach; endif; ?>
                                <tr>
                                   <th><input class="btn btn-success" type="submit" value="排序"></th>
                                </tr>
                            </table>
                       </form> -->

                       <div class="ul_head">
                            <div class="li1">排序</div>
                            <div class="li2">中文名</div>
                            <div class="li3">英文名</div>
                            <div class="li5">操作</div>
                        </div>
             <form class="order_table" action="<?php echo U('order');?>/nav/<?php echo I('get.nav');?>" method="post">
                  <?php if(is_array($data)): foreach($data as $key=>$v): ?><div class="droptarget droptarget<?php echo ($v['id']); ?>">
                        <div>
                          <div class="btnBG">
                              <div class="ul_box">
                              <div class="li1"><input class="input-medium suo<?php echo ($v['_level']); ?>" style="width:40px;height:25px;" type="text" name="<?php echo ($v['id']); ?>" value="<?php echo ($v['order_number']); ?>" readonly=""><?php if($v['haschild']=='1'){?><i class="fa icon-chevron-down listBtn"></i><?php }?></div>
                              <div class="li2"><?php echo ($v['name']); ?></div>
                              <div class="li3"><?php echo ($v['name_en']); ?></div>
                              <div class="li5">
                                 <a href="javascript:;" cateId="<?php echo ($v['id']); ?>" cateName="<?php echo ($v['name']); ?>" onclick="add_child(this)">添加子分类</a>  | <a href="javascript:;" cateId="<?php echo ($v['id']); ?>" cateName="<?php echo ($v['name']); ?>" cateName_en="<?php echo ($v['name_en']); ?>" cateNum="<?php echo ($v['order_num']); ?>" onclick="edit(this)">修改</a>  | <a href="javascript:if(confirm('确定删除？'))location='<?php echo U('delete',array('id'=>$v['id']));?>'">删除</a>
                                 <?php if($v['haschild']=='0'){ ?>
                                      |<a href="<?php echo U('Admin/Video/index',array('nav'=>I('get.nav'),'cate'=>$v['id']));?>" > 查看视频</a>
                                  <?php }?>
                              </div>
                            </div>
                          </div>

                          <div class="box box<?php echo ($v['id']); ?>">
                           <?php if(!empty($v['_data'])){ ?>
                           <?php if(is_array($v['_data'])): foreach($v['_data'] as $key=>$n): ?><div>
                              <div class="btnBG">
                                <div class="ul_box">
                                <div class="li1"><input class="input-medium suo<?php echo ($n['_level']); ?>" style="width:40px;height:25px;" type="text" name="<?php echo ($n['id']); ?>" value="<?php echo ($n['order_number']); ?>" readonly=""><?php if($n['haschild']=='1'){?><i class="fa icon-chevron-down listBtn"></i><?php }?></div>
                                <div class="li2">&emsp;├─<?php echo ($n['name']); ?></div>
                                <div class="li3"><?php echo ($n['name_en']); ?></div>
                                <div class="li5">
                                   <a href="javascript:;" navId="<?php echo ($n['id']); ?>" navName="<?php echo ($n['name']); ?>" onclick="add_child(this)">添加子菜单</a> | <a href="javascript:;" navId="<?php echo ($n['id']); ?>" navName="<?php echo ($n['name']); ?>" navName_en="<?php echo ($n['name_en']); ?>" navMca="<?php echo ($n['mca']); ?>" navIco="<?php echo ($n['ico']); ?>" onclick="edit(this)">修改</a> | <a href="javascript:if(confirm('确定删除？'))location='<?php echo U('Admin/Nav/delete',array('id'=>$n['id']));?>'">删除</a>
                                   <?php if($n['haschild']=='0'){ ?>
                                      |<a href="<?php echo U('Admin/Ziliao/index',array('nav'=>I('get.nav'),'cate'=>$n['id']));?>" > 查看资料</a>
                                  <?php }?>
                                </div>
                              </div>
                              </div>
                              <div class="boox boox<?php echo ($n['id']); ?>">

                               <?php if(!empty($n['_data'])){ ?>
                           <?php if(is_array($n['_data'])): foreach($n['_data'] as $key=>$u): ?><div>
                                  <div class="btnBG">
                                    <div class="ul_box">
                                    <div class="li1"><input class="input-medium suo<?php echo ($u['_level']); ?>" style="width:40px;height:25px;" type="text" name="<?php echo ($u['id']); ?>" value="<?php echo ($u['order_number']); ?>" readonly=""></div>
                                    <div class="li2"> &emsp;|&emsp;├─<?php echo ($u['name']); ?></div>
                                    <div class="li3"><?php echo ($u['name_en']); ?></div>
                                    <div class="li5">
                                       <a href="javascript:;" navId="<?php echo ($u['id']); ?>" navName="<?php echo ($u['name']); ?>" onclick="add_child(this)">添加子菜单</a> | <a href="javascript:;" navId="<?php echo ($u['id']); ?>" navName="<?php echo ($u['name']); ?>" navName_en="<?php echo ($u['name_en']); ?>" navMca="<?php echo ($u['mca']); ?>" navIco="<?php echo ($u['ico']); ?>" onclick="edit(this)">修改</a> | <a href="javascript:if(confirm('确定删除？'))location='<?php echo U('Admin/Nav/delete',array('id'=>$u['id']));?>'">删除</a>
                                       <?php if($u['haschild']=='0'){ ?>
                                      |<a href="<?php echo U('Admin/Ziliao/index',array('nav'=>I('get.nav'),'cate'=>$u['id']));?>" > 查看资料</a>
                                       <?php }?>
                                    </div>
                                  </div>
                                  </div>
                                </div><?php endforeach; endif; ?>
                                <?php }?>
                                <script type="text/javascript">
                         $( ".boox<?php echo ($n['id']); ?>" ).sortable({
                          connectWith: ".boox<?php echo ($n['id']); ?>",
                          dropOnEmpty: false,
                          stop: function() {
                            for (var i = 0; i < $(".boox<?php echo ($n['id']); ?>>div>.btnBG>.ul_box").size(); i++) {
                              $(".boox<?php echo ($n['id']); ?>>div>.btnBG>.ul_box>.li1>input").eq(i).val(i+1)
                            }
                          }
                        });
                         $( ".boox<?php echo ($n['id']); ?>").disableSelection();
                          </script>

                              </div>
                            </div><?php endforeach; endif; ?>
                              <?php }?>
                          </div>
                        </div>
                      </div>

                      <script type="text/javascript">
                         $( ".box<?php echo ($v['id']); ?>" ).sortable({
                          connectWith: ".box<?php echo ($v['id']); ?>",
                          dropOnEmpty: false,
                          stop: function() {
                            for (var i = 0; i < $(".box<?php echo ($v['id']); ?>>div>.btnBG>.ul_box").size(); i++) {
                              $(".box<?php echo ($v['id']); ?>>div>.btnBG>.ul_box>.li1>input").eq(i).val(i+1)
                            }
                          }
                        });
                         $( ".box<?php echo ($v['id']); ?>").disableSelection();
                       </script><?php endforeach; endif; ?>
                       </form>
                       <table class="table table-striped table-bordered table-hover table-condensed">
                                <tr>
                                   <td><input class="btn btn-success" type="submit" value="确认排序">(拖拽完成后请点击)</td>
                                </tr>
                        </table>
                   </div>
             </div>
         </div>
        <div class="modal fade" id="bjy-add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                 <div class="modal-content">
                      <div class="modal-header"> 
                           <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> &times;</button>
                           <h4 class="modal-title" id="myModalLabel"> 添加分类</h4>
                     </div>
                     <div class="modal-body">
                          <form id="bjy-form" class="form-inline" action="<?php echo U('add');?>" method="post"> 
                                  <input type="hidden" name="pid" value="0">
                                  <input type="hidden" name="navid" value="<?php echo I('get.nav');?>">
                                  <table class="table table-striped table-bordered table-hover table-condensed">
                                      <tr>
                                          <th width="12%">中文名：</th>
                                          <td> <input class="input-medium" type="text" name="name" required=""></td>
                                     </tr>
                                     <tr>
                                          <th>英文名：</th>
                                          <td> <input class="input-medium" type="text" name="name_en"> </td>
                                     </tr>
                                    <!--  <tr>
                                         <th>图标：</th>
                                         <td> <input class="input-medium" type="text" name="ico"> font-awesome图标 输入fa fa- 后边的即可</td>
                                     </tr> -->
                                     <tr>
                                         <th></th>
                                         <td> <input class="btn btn-success" type="submit" value="添加"></td>
                                    </tr>
                                </table>
                        </form>
                    </div>
                </div>
             </div>
          </div>
          <div class="modal fade" id="bjy-edit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
               <div class="modal-dialog">
                     <div class="modal-content">
                            <div class="modal-header"> 
                                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> &times;</button>
                                  <h4 class="modal-title" id="myModalLabel"> 修改分类</h4>
                            </div>
                            <div class="modal-body">
                                 <form id="bjy-form" class="form-inline" action="<?php echo U('edit');?>" method="post"> 
                                      <input type="hidden" name="id">
                                      <input type="hidden" name="navid" value="<?php echo I('get.nav');?>">
                                      <table class="table table-striped table-bordered table-hover table-condensed">
                                           <tr>
                                               <th width="12%">中文名：</th>
                                               <td> <input class="input-medium" type="text" name="name" required=""></td>
                                           </tr>
                                           <tr>
                                              <th>英文名：</th>
                                              <td> <input class="input-medium" type="text" name="name_en"> </td>
                                           </tr>
                                           <tr><th></th>
                                               <td> <input class="btn btn-success" type="submit" value="修改">
                                               </td>
                                          </tr>
                                    </table>
                                 </form>
                            </div>
                     </div>
               </div>
       </div>

       <div class="modal fade" id="bjy-addziliao" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                 <div class="modal-content">
                      <div class="modal-header"> 
                           <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> &times;</button>
                           <h4 class="modal-title" id="myModalLabel"> 添加资料</h4>
                     </div>
                     <div class="modal-body">
                          <form id="bjy-form" class="form-inline" action="<?php echo U('addziliao');?>" method="post"> 
                                  <input type="hidden" name="cateid" value="">
                                  <table class="table table-striped table-bordered table-hover table-condensed">
                                      <tr>
                                          <th width="12%">中文名：</th>
                                          <td> <input class="input-medium" type="text" name="name" required=""></td>
                                     </tr>
                                     <tr>
                                          <th>英文名：</th>
                                          <td> <input class="input-medium" type="text" name="name_en"> </td>
                                     </tr>
                                     <tr>
                                         <th>中文链接：</th>
                                         <td> <input class="input-medium" type="text" name="url"></td>
                                     </tr>
                                     <tr>
                                         <th>英文链接：</th>
                                         <td> <input class="input-medium" type="text" name="url_en"></td>
                                     </tr>
                                     <tr>
                                         <th></th>
                                         <td> <input class="btn btn-success" type="submit" value="添加"></td>
                                    </tr>
                                </table>
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
 $( "form").sortable({
            connectWith: "form",
            dropOnEmpty: false,
            stop: function() {
              for (var i = 0; i < $('.droptarget').size(); i++) {
                $('.droptarget>div>.btnBG>.ul_box>.li1>input').eq(i).val(i+1)
              }
            }
          });
   $( "form").disableSelection();

   $(".listBtn").click(function(){
    $(this).parents('.btnBG').next('div').slideToggle();
    if($(this).attr('data')!='0') {
       $(this).attr('data','0');
       $(this).removeClass('icon-chevron-down').addClass('icon-chevron-up');
    }else {
       $(this).attr('data','1');
       $(this).removeClass('icon-chevron-up').addClass('icon-chevron-down');
    }
    console.log($(this).parents('.btnBG').next('div').attr('class'))
  });
   $('input[type=submit]').click(function(){
       $('.order_table').submit();
   })

    // 添加菜单
    function add(){
        $("input[name='name'],input[name='mca']").val('');
        $("input[name='pid']").val(0);
        $('#bjy-add').modal('show');
    }

    // 添加子菜单
    function add_child(obj){
        var navId=$(obj).attr('cateId');
        
        $("input[name='pid']").val(navId);
        $("input[name='name']").val('');
        $("input[name='mca']").val('');
        $("input[name='ico']").val('');
        $('#bjy-add').modal('show');
    }

     // 添加资料
    function add_ziliao(obj){
        var cateId=$(obj).attr('cateId');
        
        $("input[name='cateid']").val(cateId);
        $("input[name='name']").val('');
        $("input[name='url']").val('');
        $('#bjy-addziliao').modal('show');
    }

    // 修改菜单
    function edit(obj){
        var cateId=$(obj).attr('cateId');
        var cateName=$(obj).attr('cateName');
        var cateName_en=$(obj).attr('cateName_en');
        $('#bjy-edit').find("input[name='id']").val(cateId);
        $('#bjy-edit').find("input[name='name']").val(cateName);
        $('#bjy-edit').find("input[name='name_en']").val(cateName_en);
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