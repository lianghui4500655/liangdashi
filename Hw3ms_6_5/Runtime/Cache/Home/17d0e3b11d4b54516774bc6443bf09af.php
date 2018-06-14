<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit" />
    <meta http-equiv="X-UA-Compatible" content="IE=EDGE, chrome=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no, width=device-width">
    <link rel="Shortcut Icon" href="http://enterprise.huawei.com/cn/ucmf/groups/entwebtemplate/documents/enterprise_webasset/ent_cn_img_logo_ico.ico ">
    <title>服务器营销装备库</title>
    <link type="text/css" rel="stylesheet" href="/web/Hw3ms_6_5/themes/Home//assert/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="/web/Hw3ms_6_5/themes/Home//assert/css/comm.css">
    <link type="text/css" rel="stylesheet" href="/web/Hw3ms_6_5/themes/Home//assert/css/header.css">
    <link type="text/css" rel="stylesheet" href="/web/Hw3ms_6_5/themes/Home//assert/css/footer.css">
    <link type="text/css" rel="stylesheet" href="/web/Hw3ms_6_5/themes/Home//assert/css/index.css">

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
                            <img src="/web/Hw3ms_6_5/themes/Home//assert/img/logo<?php if(CONTROLLER_NAME=='Index')echo '_w';?>.png" class="logo_pic"/>
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

<link type="text/css" rel="stylesheet" href="/web/Hw3ms_6_5/themes/Home//assert/css/index.css">

        <!--banner start-->
        <div class="banner">
            <img src="/web/Hw3ms_6_5/themes/Home//assert/img/banner.jpg" class="banner_pic"/>
            <div class="banner_slogan">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-lg-12">
                            <div class="banner_btn">
                                <!-- <a href="<?php echo U('Home/Detail/index',array('nav'=>38));?>" class="bbtn bbtn1" target="_blank">无边界计算营销装备目录 <img src="/web/Hw3ms_6_5/themes/Home//assert/img/arrow.png" class="arrow_pic"/></a> -->
                                <a href="http://3ms.huawei.com/hi/IT/MKTFWQIndex.html" class="bbtn bbtn2" target="_blank">返回旧版3MS书架 <img src="/web/Hw3ms_6_5/themes/Home//assert/img/arrow.png" class="arrow_pic"/></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--banner end-->
        
        <!--最新动态 start-->
        <div class="classify">
            <!-- <div class="yellow_bg"></div>
            <div class="green_bg"></div> -->
            <div class="left_bg bg_1"></div>
            <div class="center_bg bg_2"></div>
            <div class="right_bg bg_3"></div>
            <div class="container">
                <div class="row">
                 <!-- 作战必备start -->
                    <div class="col-md-3 col-lg-3">
                        <div class="classify_conn">
                            <!-- <img src="/web/Hw3ms_6_5/themes/Home//assert/img/yellow_icon.png" class="yellow_pic"/> -->
                            <div class="classify_small_title"><?php echo ($newData[40]['name']); ?></div>
                            <ul class="classify_list">
                                <?php if(is_array($newData[40]['_data'])): $i = 0; $__LIST__ = array_slice($newData[40]['_data'],0,10,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><li class="classify_item">
                                        <a href="<?php echo U('Home/Detail/index',array('nav'=>$val['id']));?>" class="classify_item_a" target="_blank"><?php echo ($val['name']); ?></a>
                                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
                            </ul>
                            <a class="more white_more" href="<?php echo U('Home/Detail/index',array('nav'=>$val['id']+1));?>" target="_blank">
                                <span class="arrow_icon arrow_icon_1"></span>查看更多
                            </a>
                        </div>
                    </div>
                    <!-- 作战必备end -->

                    <!--V5新品发布start-->
                    <div class="col-md-6 col-lg-6">
                        <div class="classify_conn classify_conn1">
                            <!-- <img src="/web/Hw3ms_6_5/themes/Home//assert/img/blue_icon.png" class="blue_pic"/>
                            <div class="blue_bg"></div> -->
                            <div class="classify_small_title"><?php echo ($newData[42]['name']); ?></div>
                            <ul class="newP_list">
                                <?php if(is_array($v5_indexArr)): $i = 0; $__LIST__ = array_slice($v5_indexArr,0,5,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><li class="newP_item">
                                        <a class="newP_item_a" href="<?php if ($val['url']) {echo $val['url'];} else {echo 'javascript:void(0);';}?>" target="_blank"><?php echo ($val["name"]); ?></a>
                                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
                            </ul>
                            <a class="more white_more" href="<?php echo U('Home/Detail/index',array('nav'=>42));?>" target="_blank">
                                <span class="arrow_icon arrow_icon_2"></span>查看更多
                            </a>
                        </div>
                    </div>
                    <!--V5新品发布end-->

                    <!--计算前言start-->
                    <div class="col-md-3 col-lg-3">
                        <div class="classify_conn">
                            <!-- <img src="/web/Hw3ms_6_5/themes/Home//assert/img/green_icon.png" class="green_pic"/> -->
                            <div class="classify_small_title"><?php echo ($newData[43]['name']); ?></div>
                            <ul class="calculate_list">
                               <?php if(is_array($jsqy_indexArr)): $i = 0; $__LIST__ = array_slice($jsqy_indexArr,0,5,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><li class="calculate_item">
                                    <a class="calculate_item_a" href="<?php if ($val['url']) {echo $val['url'];} else {echo 'javascript:void(0);';}?>" target="_blank"><?php echo ($val["name"]); ?></a>
                                </li><?php endforeach; endif; else: echo "" ;endif; ?>
                            </ul>
                            <a class="more white_more" href="<?php echo U('Home/Detail/index',array('nav'=>43));?>">
                                <span class="arrow_icon arrow_icon_3"></span>查看更多
                            </a>
                        </div>
                    </div>
                    <!--计算前言end-->
                </div>
            </div>
        </div>
        <!--最新动态 end-->

        <!--产品与解决方案 start-->
        <div class="case">
            <img src="/web/Hw3ms_6_5/themes/Home//assert/img/case_bg.jpg" class="case_bg"/>
            <div class="container">
             <div class="rr">
               <!--  <div class="row">
                    <div class="col-md-12 col-lg-12">
                        <div class="case_title"><?php echo ($solution['name']); ?></div>
                    </div>
                </div> -->
                <div class="row">
                    <?php if(is_array($solution['_data'])): $i = 0; $__LIST__ = array_slice($solution['_data'],0,5,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><div class="col-md-3 col-lg-3 col-zdlg-2-5">
                            <div class="case_item">
                                <a href="<?php echo U('Home/Detail/index',array('nav'=>$val['id']));?>" class="case_item_a" target="_blank">
                                    <!-- <div class="sanjiao"></div>
                                    <div class="case_item_left <?php if($i==2) echo 'case_item_left1';?>"><?php echo ($val['name']); ?></div>
                                    <div class="case_item_right">
                                        <img src="/web/Hw3ms_6_5/themes/Home//assert/img/case_pic<?php echo ($i); ?>.png" class="case_pic"/>
                                    </div> -->
                                    <div class="case_item_box case_i_<?php echo ($i); ?>">
                                        <span class="case_item_text enFont"><?php echo ($val['name']); ?></span>
                                    </div>
                                </a>
                            </div>
                        </div><?php endforeach; endif; else: echo "" ;endif; ?>
                </div>
              </div>
              <div class="divide_line"></div>

                <div class="row">
                    <div class="col-md-12 col-lg-12">
                        <ul class="case_list">
                          <?php if(is_array($solution['_data'])): $i = 0; $__LIST__ = array_slice($solution['_data'],5,4,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><li class="case_item1 <?php if($i%2==1) echo 'odd';else echo 'even';?>">
                                  <a href="<?php echo U('Home/Detail/index',array('nav'=>$val['id']));?>" class="case_item1_a" target="_blank">
                                        <div class="case_item1_conn">
                                            <img src="/web/Hw3ms_6_5/themes/Home//assert/img/case_b_<?php echo ($i); ?>.png" class="case_black_pic"/>
                                            <img src="/web/Hw3ms_6_5/themes/Home//assert/img/case_w_<?php echo ($i); ?>.png" class="case_white_pic"/>
                                        </div>
                                        <div class="case_item1_title enFont"><?php echo ($val['name']); ?></div>
                                        <?php  if($i==1){ ?>
                                          <div class="case_p_name enFont">超融合/数据库/大数据一体机</div>
                                        <?php } if($i==2){ ?>
                                          <div class="case_p_name enFont">开放架构小型机</div>
                                        <?php } if($i==3){ ?>
                                          <div class="case_p_name enFont">加速部件</div>
                                        <?php } if($i==4){ ?>
                                          <div class="case_p_name enFont">服务器管理</div>
                                        <?php }?>
                                        <!-- <div class="case_link"></div> -->
                                   </a>
                              </li><?php endforeach; endif; else: echo "" ;endif; ?>
                           <?php if(is_array($solution['_data'])): $i = 0; $__LIST__ = array_slice($solution['_data'],9,4,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><li class="case_item1 <?php if($i%2==0) echo 'odd';else echo 'even';?>">
                                  <a href="<?php echo U('Home/Detail/index',array('nav'=>$val['id']));?>" class="case_item1_a" target="_blank">
                                        
                                        <div class="case_item1_conn">
                                            <img src="/web/Hw3ms_6_5/themes/Home//assert/img/case_b_<?php echo ($i+4); ?>.png" class="case_black_pic"/>
                                            <img src="/web/Hw3ms_6_5/themes/Home//assert/img/case_w_<?php echo ($i+4); ?>.png" class="case_white_pic"/>
                                        </div>
                                        <div class="case_item1_title enFont"><?php echo ($val['name']); ?></div>
                                        <?php  if($i<=3){ ?>
                                          <div class="case_p_name enFont">FusionServer通用服务器</div>
                                        <?php } else{ ?>
                                          <div class="case_p_name enFont"> FusionServer异构服务器</div>
                                        <?php }?>
                                        <!-- <div class="case_link"></div> -->
                                   </a>
                              </li><?php endforeach; endif; else: echo "" ;endif; ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--case end-->

        <!--classify start-->
        <div class="classify">
            <!-- <div class="yellow_bg"></div>
            <div class="green_bg"></div> -->
            <div class="left_bg bg_4"></div>
            <div class="center_bg bg_5"></div>
            <div class="right_bg bg_6"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-lg-3">
                        <div class="classify_conn">
                            <div class="classify_small_title"><?php echo ($digital['name']); ?></div>
                            <ul class="classify_list classify_list2">
                                 <?php if(is_array($digital['_data'])): $i = 0; $__LIST__ = $digital['_data'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><li class="classify_item1">
                                        <a href="<?php echo U('Home/Detail/index',array('nav'=>$val['id']));?>" class="classify_item_a1" target="_blank"><?php echo ($val['name']); ?></a>
                                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
                            </ul>
                            <a class="more white_more" href="<?php echo U('Home/Detail/index',array('nav'=>74));?>" target="_blank">
                                <span class="arrow_icon arrow_icon_1"></span>查看更多
                            </a>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6">
                        <div class="classify_conn classify_conn1">
                            <!-- <div class="blue_bg"></div> -->
                            <div class="classify_small_title"><?php echo ($successCase['name']); ?></div>
                            <ul class="newP_list newP_list1">
                                <?php if(is_array($case_indexArr)): $i = 0; $__LIST__ = array_slice($case_indexArr,0,5,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><li class="newP_item">
                                        <a class="newP_item_a" href="<?php if ($val['url']) {echo $val['url'];} else {echo 'javascript:void(0);';}?>" target="_blank">
                                            <?php echo ($val["name"]); ?>
                                        </a>
                                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
                                
                            </ul>
                            <a class="more white_more" href="<?php echo U('Home/Detail/index',array('nav'=>47));?>" target="_blank">
                                <span class="arrow_icon arrow_icon_2"></span>查看更多
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3 col-lg-3">
                        <div class="classify_conn">
                            <div class="classify_small_title"><?php echo ($reports['name']); ?></div>
                            <ul class="calculate_list calculate_list1">
                               <?php if(is_array($reports_indexArr)): $i = 0; $__LIST__ = array_slice($reports_indexArr,0,5,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><li class="newP_item">
                                        <a class="calculate_item_a" href="<?php if ($val['url']) {echo $val['url'];} else {echo 'javascript:void(0);';}?>" target="_blank"><?php echo ($val["name"]); ?></a>
                                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
                            </ul>
                            <a class="more white_more" href="<?php echo U('Home/Detail/index',array('nav'=>48));?>" target="_blank">
                                <span class="arrow_icon arrow_icon_3"></span>查看更多
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--classify end-->

         <!--video start-->
        <div class="video">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-xs-12">
                        <div class="video_title"><?php echo ($hotVideo['name']); ?></div>
                    </div>
                </div>
               <div class="row">
                 <?php if(is_array($video_arr)): $i = 0; $__LIST__ = array_slice($video_arr,0,4,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?><div class="col-md-3 col-xs-12 video-item">
                       <div class="video-cover-img-container">
                           <a href="<?php if ($val['url']) {echo $val['url'];} else {echo 'javascript:void(0);';}?>" class="video_link" target="_blank">
                               <div class="video-cover-play">
                                   <img class="video_big_pic video-cover-img" src="/web/Hw3ms_6_5/<?php echo ($val["img"]); ?>">
                                   <img class="video-play" src="/web/Hw3ms_6_5/themes/Home//assert/img/player_btn.png" />
                               </div>
                               <div class="p2 k1 video_desc">
                                   <?php echo ($val["name"]); ?>
                               </div>
                           </a>
                       </div>
                   </div><?php endforeach; endif; else: echo "" ;endif; ?>
                <div class="row">
                    <div class="col-md-12 col-lg-12">
                        <a class="video_more" href="<?php echo U('Home/Detail/index',array('nav'=>49));?>" target="_blank"><img src="/web/Hw3ms_6_5/themes/Home//assert/img/arrow.png" class="video_more_icon">查看更多</a>
                    </div>
                </div>
            </div>
        </div>
     </div>
        <!--video end-->
         <!--大白 start-->
    <a href="http://10.21.135.176/rb/login.jsp" class="bigWhite" target="_blank">
        <img src="/web/Hw3ms_6_5/themes/Home//assert/img/bigWhite.png" class="bigWhite_pic">
        <img src="/web/Hw3ms_6_5/themes/Home//assert/img/bigWhite_2.png" class="bigWhite_two_pic">
    </a>
    <!--大白 end-->

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
                            <img src="/web/Hw3ms_6_5/themes/Home//assert/img/f_logo.png" class="f_logo"/>
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
<script type="text/javascript" src="/web/Hw3ms_6_5/themes/Home//assert/js/header.js"></script>