<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit" />
    <meta http-equiv="X-UA-Compatible" content="IE=EDGE, chrome=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no, width=device-width">
    <title>服务器营销装备库</title>
    <link type="text/css" rel="stylesheet" href="/web/Hw3ms/themes/Home//assert/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="/web/Hw3ms/themes/Home//assert/css/comm.css">
    <link type="text/css" rel="stylesheet" href="/web/Hw3ms/themes/Home//assert/css/header.css">
    <link type="text/css" rel="stylesheet" href="/web/Hw3ms/themes/Home//assert/css/footer.css">
    <link type="text/css" rel="stylesheet" href="/web/Hw3ms/themes/Home//assert/css/index.css">

    <!--[if lt IE 9 ]>
    <script src="http://www.huawei.com/mwc2014/ucmf/groups/public/documents/webasset/mwc_html5shiv.js"></script>
    <script src="http://www.huawei.com/ucmf/groups/public/documents/webasset/mwc_respond_min.js"></script>
    <![endif]-->
</head>
<body>
    <div id="container">
        <!--header start-->
        <div class="header <?php if(CONTROLLER_NAME == 'Index'): ?>header1<?php endif; ?>">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-lg-6">
                        <div class="logo">
                            <img src="/web/Hw3ms/themes/Home//assert/img/logo<?php if(CONTROLLER_NAME=='Index')echo '_w';?>.png" class="logo_pic"/>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6">
                        <ul class="header_list">
                            <li class="header_item">
                                <a class="header_item_a header_item_curr_a enFont" href="http://3ms.huawei.com/mm/docNav/mmNavigate.do?method=showMMList&tree_id=1-2-35626&node_id=1-2-35626&display_type=0" target="_blank">3MS</a>
                            </li>
                            <li class="header_item">
                                <a class="header_item_a" href="http://3ms.huawei.com/mm/msl/documentList.do?topic_id=1000621&method=getTopicDocDetails" target="_blank"><span class="enFont">IMSS</span> 书架</a>
                            </li>
                            <?php if(CONTROLLER_NAME == 'Index'): ?><li class="header_item">
                                <li class="header_item">
                                    <a class="header_item_aEN" href="?lang=en">EN</a>
                                </li><?php endif; ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--header end-->

    <link type="text/css" rel="stylesheet" href="/web/Hw3ms/themes/Home//assert/css/details.css">
        <!--details start-->
        <div class="details">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-12">
                        <!---->
                        <div class="details_nav">
                            <a class="details_nav_a" href="<?php echo U('Home/index/index');?>">首页</a>
                            <a class="details_nav_a arrow">&gt;</a>
                            <a class="details_nav_a sort"><?php echo ($name); ?></a>
                        </div>

                        <!--有右侧分类 start-->
                        <div class="details_conn">
                            <!--左侧内容 start-->
                            <!--<div class="details_left oneColumn">-->
                             <div class="details_left <?php if (in_array(I('get.nav'), array('38','42','43','47','48','49'))) { echo 'oneColumn';}?>">
                                <!--主体内容-->
                                <table class="tb_two">
                                    <tbody>
                                    <!--NVMe SSD-->
                                    <?php foreach ($data as $k => $v) { $num = array_depth($v); if ($num <= 3) {?>
                                              <?php  if(!empty($v['ziliao'])) {?>
                                                 <tr>
                                                     <td class="s_bg" rowspan="<?php echo count($v['ziliao']);?>" <?php ?>>
                                                         <div class="enFont"><?php echo $v['name'];?> </div>
                                                         <div class="enFont"><?php echo $v['name_en'];?></div>
                                                     </td>
                                                      <?php foreach($v['ziliao'] as $a=>$b){ ?>  
                                                     <td class="w_bg" colspan="3">
                                                         <div class="d_conn">
                                                             <div class="d_left">
                                                                 <div class="d_cnFont"><?php echo $b['name'];?></div>
                                                                 <div class="enFont"><?php echo $b['name_en'];?></div>
                                                             </div>
                                                             <div class="d_right">
                                                                   <a href="<?php if ($b['url']) {echo $b['url'];} else {echo 'javascript:void(0);';}?>" class="d_btn <?php if (!$b['url']) {echo 'd_btn_gray';}?>" target="_blank">Cn</a>
                                                                   <a href="<?php if ($b['url']) {echo $b['url_en'];} else {echo 'javascript:void(0);';}?>" class="d_btn <?php if (!$b['url_en']) {echo 'd_btn_gray';}?>" target="_blank">En</a>
                                                             </div>
                                                         </div>
                                                     </td>
                                                 </tr>
                                               <?php }?>
                                             <?php }?>
                                             <?php }else if ($num <= 5) { $larnum = 0; ?>
                                                   <?php foreach($v['_data'] as $x=>$y){ $larnum += count($y['ziliao']); } ?>
                                                <tr>
                                                   <td rowspan="<?php echo ($larnum); ?>" class="s_bg">
                                                       <div class="enFont"><?php echo ($v['name']); ?></div>
                                                       <div class="enFont"><?php echo ($v['name_en']); ?></div>
                                                   </td>
                                             <?php  foreach($v['_data'] as $key=>$val){ ?>

                                                   <td rowspan="<?php echo count($val['ziliao']);?>" class="m_bg">
                                                       <div><?php echo ($val['name']); ?></div>
                                                       <div><?php echo ($val['name_en']); ?></div>
                                                   </td>
                                             <?php  foreach($val['ziliao'] as $a=>$b){ ?>
                                             
                                                   <td class="w_bg" colspan="2">
                                                       <div class="d_conn">
                                                           <div class="d_left">
                                                               <div class="d_cnFont"><?php echo ($b['name']); ?></div>
                                                               <div class="enFont"><?php echo ($b['name_en']); ?></div>
                                                           </div>
                                                           <div class="d_right">
                                                                      <a href="<?php if ($b['url']) {echo $b['url'];} else {echo 'javascript:void(0);';}?>" class="d_btn <?php if (!$b['url']) {echo 'd_btn_gray';}?>" target="_blank">Cn</a>
                                                                     <a href="<?php if ($b['url']) {echo $b['url_en'];} else {echo 'javascript:void(0);';}?>" class="d_btn <?php if (!$b['url_en']) {echo 'd_btn_gray';}?>" target="_blank">En</a>
                                                           </div>
                                                       </div>
                                                   </td>
                                               </tr>
                                               <?php }}?>

                                            <?php }else { ?>

                                            <?php  $larnum = 0; foreach ($v['_data'] as $x => $y) { if(empty($y['_data'])) { $larnum +=1; }else{ foreach ($y['_data'] as $a => $b) { if(empty($b['ziliao'])) $larnum +=1; else $larnum += count($b['ziliao']); } } }?>
                                       <tr>
                                        <td rowspan="<?php echo ($larnum); ?>" class="s_bg">
                                            <div class="enFont"><?php echo ($v['name']); ?></div>
                                            <div class="enFont"><?php echo ($v['name_en']); ?></div>
                                        </td>
                                        <?php foreach ($v['_data'] as $x => $y) { $minnum = 0; foreach ($y['_data'] as $a => $b) { if(empty($b['ziliao'])) $minnum +=1; else $minnum += count($b['ziliao']); } ?>
                                        <td rowspan="<?php echo ($minnum); ?>" class="m_bg">
                                            <div class="enFont"><?php echo ($y['name']); ?></div>
                                            <div class="enFont"><?php echo ($y['name_en']); ?></div>
                                        </td>
                                         <?php  if(!empty($y['_data'])){ ?>
                                         <?php foreach ($y['_data'] as $c => $d) { ?>
                                        <td class="q_bg" rowspan="<?php echo count($d['ziliao']);?>">
                                            <div><?php echo ($d['name']); ?></div>
                                            <div><?php echo ($d['name_en']); ?></div>
                                        </td>
                                         
                                         <?php  if(!empty($d['ziliao'])){ ?>
                                        <?php foreach ($d['ziliao'] as $m => $n) { ?>
                                        <td class="w_bg">
                                            <div class="d_conn">
                                                <div class="d_left">
                                                    <div class="d_cnFont"><?php echo ($n['name']); ?></div>
                                                    <div class="enFont"><?php echo ($n['name_en']); ?></div>
                                                </div>
                                                <div class="d_right">
                                                      <a href="<?php if ($n['url']) {echo $n['url'];} else {echo 'javascript:void(0);';}?>" class="d_btn <?php if (!$n['url']) {echo 'd_btn_gray';}?>" target="_blank">Cn</a>
                                                      <a href="<?php if ($n['url_en']) {echo $n['url_en'];} else {echo 'javascript:void(0);';}?>" class="d_btn <?php if (!$n['url']) {echo 'd_btn_gray';}?>" target="_blank">En</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                   <?php  }}else{ ?>  
                                     </tr>
                                  <?php }?>
                                  <?php }?>
                                  <?php }else{ ?>
                                   </tr>
                                  <?php }}?>
                                  <?php  }}?>
                                    </tbody>
                                </table>
                                <?php if (in_array(I('get.nav'), array('38','42','43','47','48','49'))) { ?>
                                    <div style="height:100px"></div>
                                <?php }?>
                            </div>
                            <!--左侧内容 end-->

                            <!--分类-->
                            <!--<div class="details_right oneColumnAsideHidden">-->
                            <div class="details_right <?php if (in_array(I('get.nav'), array('38','42','43','47','48','49'))) { echo 'oneColumnAsideHidden';}?>">
                                <ul class="sort_list">
                                    <?php if(is_array($navArr)): $i = 0; $__LIST__ = $navArr;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><li class="sort_item">
                                            <a class="sort_item_a <?php if(I('get.nav')==$val['id']) echo 'sort_item_curr_a';?>"" href="<?php echo U('Home/Detail/index',array('nav'=>$val['id']));?>">
                                                <div class="s_cnFont"><?php echo ($val["name"]); ?></div>
                                                <div class="enFont s_enFont"><?php echo ($val["name_en"]); ?></div>
                                                <div class="enFont s_enFont">&nbsp;</div>
                                                <div class="enFont s_enFont">&nbsp;</div>
                                            </a>
                                        </li><?php endforeach; endif; else: echo "" ;endif; ?>
                                </ul>
                            </div>
                        </div>
                        <!--有右侧分类 end-->

                        <!--
                            备注：如果没有右侧分类，内容区域显示100%；
                            1、在“details_left”样式后面加上“ oneColumn”样式；
                            2、在“details_right”样式后面加上“ oneColumnAsideHidden”样式；
                        -->
                    </div>
                </div>
            </div>
        </div>
        <!--details end-->


        <!--footer start-->
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-lg-6">
                        <ul class="footer_list">
                            <li class="footer_item">
                                <a class="footer_item_a" href="http://3ms.huawei.com/hi/group/1504875/wiki_2882537.html" target="_blank">关于社区</a>
                            </li>
                            <li class="footer_item">
                                <a class="footer_item_a" href="http://3ms.huawei.com/hi/index.php?app=group&mod=Core&act=showSectionData&gid=1504875&id=1233767" target="_blank">新手入门</a>
                            </li>
                            <li class="footer_item">
                                <a class="footer_item_a" href="http://3ms.huawei.com/hi/index.php?app=group&mod=Core&act=showSectionData&gid=1504875&id=1233767" target="_blank">在线帮助</a>
                            </li>
                            <li class="footer_item">
                                <a class="footer_item_a" href="http://3ms.huawei.com/hi/bbs/list_219619,219623,1000369.html" target="_blank">意见与建议</a>
                            </li>
                            <li class="footer_item">
                                <a class="footer_item_a" href="http://3ms.huawei.com/hi/index.php?app=group&mod=Core&act=showSectionData&gid=1504875&id=1177159" target="_blank">联系客服</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-6 col-lg-6">
                        <div class="copyright">
                            <span class="copyright_desc">Copyright © 2018 Huawei Technologies Co., Ltd. All rights reserved.</span>
                            <img src="/web/Hw3ms/themes/Home//assert/img/f_logo.png" class="f_logo"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer_contact">
                版权所有 © 华为软件技术有限公司 2018 保留一切权利
            </div>
        </div>
        <!--footer end-->
    </div>

  

</body>
</html>