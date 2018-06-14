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
            <span> <?php if(!empty($navpname)): echo ($navpname); ?> ><?php endif; ?>
            <?php if(!empty($navname)): echo ($navname); ?> ><?php endif; ?> 
            <?php echo ($name); ?> </span>
        </h1>
    </div>
<style type="text/css">
    th{
       text-align: center;
    }
    td{
      word-break: break-all;
       text-align: center;
    }
    table{
      table-layout:fixed;
    }

</style>
    <div class="col-xs-12">
             <div class="tabbable">
                   <ul class="nav nav-tabs padding-12 tab-color-blue background-blue" id="myTab">
                       <li class="active"><a href="#home" data-toggle="tab">资料列表</a></li>
                       <li> <a href="javascript:;" onclick="add()">添加资料</a></li>
                       <?php if (in_array(I('get.nav'), $index_id)) { ?>
                       <li> <a href="<?php echo U('Admin/Ziliao/indexShowSet',array('nav'=>I('nav'),'cate'=>I('cate')));?>">首页展示管理</a></li>
                       <?php }?>
                       <li><a href="<?php echo U('Admin/Fight/index',array('nav'=>I('nav')));?>">返回</a></li>
                   </ul>
                   <div class="tab-content">
                        <form class="" action="<?php echo U('order');?>" method="post">
                             <table class="table table-striped table-bordered table-hover table-condensed">
                                 <tr>
                                     <th width="5%">排序</th>
                                     <th width="17%">中文名</th>
                                     <th width="17%">英文名</th>
                                     <th width="20%">中文链接</th>
                                     <th width="20%">英文链接</th>
                                     <!-- <th>添加时间</th> -->
                                     <?php if (in_array(I('get.nav'), $index_id)) { ?>
                                     <th width="10%">首页显示</th>
                                     <?php }?>
                                     <th width="10%">操作</th>

                                 </tr>
                            <tfoot class="tt">
                            <?php if(is_array($data)): foreach($data as $key=>$v): ?><tr>
                                    <td class="ym"> <input class="input-medium" style="width:40px;height:25px;" type="text" name="<?php echo ($v['id']); ?>" value="<?php echo ($v['order_number']); ?>" readonly="">
                                    </td>
                                    <td><?php echo ($v['name']); ?></td>
                                    <td><?php echo ($v['name_en']); ?></td>
                                    <td><?php echo ($v['url']); ?></td>
                                    <td><?php echo ($v['url_en']); ?></td>
                                    <!-- <td><?php echo ($v['createtime']); ?></td> -->
                                    <?php if (in_array(I('get.nav'), $index_id)) { ?>
                                    <td><?php echo ($v['state']); ?></td>
                                    <?php }?>
                                    <td>
                                         <p><a href="javascript:;" vId="<?php echo ($v['id']); ?>" vName="<?php echo ($v['name']); ?>" vName_en="<?php echo ($v['name_en']); ?>" vUrl="<?php echo ($v['url']); ?>" vUrl_en="<?php echo ($v['url_en']); ?>" vImg="<?php echo ($v['img']); ?>" onclick="edit(this)">修改</a></p> 
                                         <p><a href="javascript:if(confirm('确定删除？'))location='<?php echo U('delete',array('id'=>$v['id']));?>'">删除</a></p>
                                         <?php if (in_array(I('get.nav'), $index_id)) { ?>
                                          <?php if($v['status'] == '0'): ?><p><a href="#" vId="<?php echo ($v['id']); ?>" onclick="index_show(this,'1')">首页显示</a> </p>
                                          <?php else: ?>
                                           <p><a href="#" vId="<?php echo ($v['id']); ?>" onclick="index_show(this,'0')"> 取消首页显示</a> </p><?php endif; ?>
                                          <?php }?>
                                    </td>
                                </tr><?php endforeach; endif; ?>
                            </tfoot>
                                
                            </table>
                                <tr>
                                   <td style="text-align: left;"><input class="btn btn-success" type="submit" value="确认排序">(拖拽完成后请点击)</td>
                                </tr>
                       </form>
                   </div>
             </div>
         </div>
         <?php ?>
        <div class="modal fade" id="bjy-add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                 <div class="modal-content">
                      <div class="modal-header"> 
                           <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> &times;</button>
                           <h4 class="modal-title" id="myModalLabel"><?php if(!empty($navname)): echo ($navname); ?> ><?php endif; ?> 
            <?php echo ($name); ?> > 添加资料</h4>
                     </div>
                     <div class="modal-body">
                          <form id="bjy-form" class="form-inline" action="<?php echo U('add');?>" method="post"> 
                                 <input type="hidden" name="cateid" value="<?php echo I('cate');?>">
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
                                          <th width="12%">中文链接：</th>
                                          <td> <input class="input-medium" type="text" name="url"></td>
                                     </tr>
                                     <tr>
                                          <th>英文链接：</th>
                                          <td> <input class="input-medium" type="text" name="url_en"> </td>
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
          <div class="modal fade" id="bjy-edit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
               <div class="modal-dialog">
                     <div class="modal-content">
                            <div class="modal-header"> 
                                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> &times;</button>
                                  <h4 class="modal-title" id="myModalLabel"><?php if(!empty($navname)): echo ($navname); ?> ><?php endif; ?> 
            <?php echo ($name); ?>  > 修改资料</h4>
                            </div>
                            <div class="modal-body">
                                 <form id="bjy-form" class="form-inline" action="<?php echo U('edit');?>" method="post" enctype="multipart/form-data"> 
                                      <input type="hidden" name="id">
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
                                                <th width="12%">中文链接：</th>
                                                <td> <input class="input-medium" type="text" name="url"></td>
                                           </tr>
                                           <tr>
                                                <th>英文链接：</th>
                                                <td> <input class="input-medium" type="text" name="url_en"> </td>
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
   $( "tfoot").sortable({
            connectWith: "tfoot",
            dropOnEmpty: false,
            stop: function() {
              for (var i = 0; i <$('.ym').size(); i++) {
                $('.ym>input').eq(i).val(i+1);
              }
            }
          });
   $( "tfoot").disableSelection();
   var navid = '<?php echo I('nav');?>';
    // 添加资料
    function add(){
        $("input[name='name']").val('');
        $('#bjy-add').modal('show');
    }
     // 首页显示/不显示
    function index_show(re,item){
        var vId=$(re).attr('vId');
        $.ajax({
            url:'<?php echo U('index_show');?>',
            type:'post',
            dataType:'json',
            data:{'id':vId,'status':item,'navid':navid},
            success:function(re){
                  console.log(re);
                  alert(re.info)
                  if(re.status=='0') {}
                  else  location.href="";
            }
        })
    }
    // 修改资料
    function edit(obj){
        var vId=$(obj).attr('vId');
        var vName=$(obj).attr('vName');
        var vName_en=$(obj).attr('vName_en');
        var vUrl=$(obj).attr('vUrl');
        var vUrl_en=$(obj).attr('vUrl_en');
        var vImg=$(obj).attr('vImg');
        $('#bjy-edit').find("input[name='id']").val(vId);
        $('#bjy-edit').find("input[name='name']").val(vName);
        $('#bjy-edit').find("input[name='name_en']").val(vName_en);
        // $('#bjy-edit').find("input[name='img']").val(vImg);
        $('#bjy-edit').find("input[name='url']").val(vUrl);
        $('#bjy-edit').find("input[name='url_en']").val(vUrl_en);
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