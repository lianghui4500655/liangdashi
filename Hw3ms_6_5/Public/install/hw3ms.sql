/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50524
Source Host           : 183.131.144.29:4040
Source Database       : offer

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2018-03-13 09:52:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hw3ms_admin_nav
-- ----------------------------
DROP TABLE IF EXISTS `hw3ms_admin_nav`;
CREATE TABLE `hw3ms_admin_nav` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单表',
  `pid` int(11) unsigned DEFAULT '0' COMMENT '所属菜单',
  `name` varchar(30) DEFAULT '' COMMENT '菜单名称',
  `name_en` varchar(50) DEFAULT NULL COMMENT '英文名',
  `mca` varchar(50) DEFAULT '' COMMENT '模块、控制器、方法',
  `ico` varchar(20) DEFAULT '' COMMENT 'font-awesome图标',
  `order_number` int(11) unsigned DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hw3ms_admin_nav
-- ----------------------------
INSERT INTO `hw3ms_admin_nav` VALUES ('1', '0', '系统设置', null, 'Admin/ShowNav/config', 'cog', '1');
INSERT INTO `hw3ms_admin_nav` VALUES ('2', '1', '菜单管理', '', 'Admin/Nav/index', '', '1');
INSERT INTO `hw3ms_admin_nav` VALUES ('7', '4', '权限管理', null, 'Admin/Rule/index', '', '1');
INSERT INTO `hw3ms_admin_nav` VALUES ('4', '0', '权限控制', null, 'Admin/ShowNav/rule', 'expeditedssl', '2');
INSERT INTO `hw3ms_admin_nav` VALUES ('8', '4', '用户组管理', null, 'Admin/Rule/group', '', '2');
INSERT INTO `hw3ms_admin_nav` VALUES ('9', '4', '管理员列表', null, 'Admin/Rule/admin_user_list', '', '3');
INSERT INTO `hw3ms_admin_nav` VALUES ('39', '0', '最新动态', '', 'Admin/Fight/index', 'navicon', '4');
INSERT INTO `hw3ms_admin_nav` VALUES ('38', '0', '无边界计算营销装备', '', 'Admin/Fight/index', 'sheqel', '3');
INSERT INTO `hw3ms_admin_nav` VALUES ('40', '39', '作战必备', 'Essential Material', 'Admin/Fight/index', '', '1');
INSERT INTO `hw3ms_admin_nav` VALUES ('42', '39', 'V5新品发布', 'V5 New Products Release', 'Admin/Fight/index', '', '2');
INSERT INTO `hw3ms_admin_nav` VALUES ('81', '44', '高性能计算', 'HPC', 'Admin/Fight/index', '', '1');
INSERT INTO `hw3ms_admin_nav` VALUES ('43', '39', '精品推荐', 'Regards', 'Admin/Fight/index', '', '3');
INSERT INTO `hw3ms_admin_nav` VALUES ('44', '0', '产品与解决方案', 'Products&amp;Solutions', 'Admin/Fight/index', 'retweet', '5');
INSERT INTO `hw3ms_admin_nav` VALUES ('45', '0', '常用营销资料', null, 'Admin/Fight/index', 'file-text', '6');
INSERT INTO `hw3ms_admin_nav` VALUES ('46', '45', '数字营销', 'Digital Marketing', 'Admin/Fight/index', '', '1');
INSERT INTO `hw3ms_admin_nav` VALUES ('47', '45', '精品案例', 'Case Studies', 'Admin/Fight/index', '', '2');
INSERT INTO `hw3ms_admin_nav` VALUES ('48', '45', '分析师报告', 'Analyst Reports', 'Admin/Fight/index', '', '3');
INSERT INTO `hw3ms_admin_nav` VALUES ('49', '45', '热点视频', 'Hot Video', 'Admin/Fight/index', '', '4');
INSERT INTO `hw3ms_admin_nav` VALUES ('50', '40', '服务器彩页', 'Data Sheet', 'Admin/Fight/index', '', '1');
INSERT INTO `hw3ms_admin_nav` VALUES ('51', '40', '技术主打胶片', 'Technical Presentation', 'Admin/Fight/index', '', '2');
INSERT INTO `hw3ms_admin_nav` VALUES ('53', '40', '友商竞争分析', 'Competitive Positioning', 'Admin/Fight/index', '', '4');
INSERT INTO `hw3ms_admin_nav` VALUES ('54', '40', '服务器路标', 'Server Roadmap', 'Admin/Fight/index', '', '5');
INSERT INTO `hw3ms_admin_nav` VALUES ('52', '40', '技术白皮书', 'White Paper', 'Admin/Fight/index', '', '3');
INSERT INTO `hw3ms_admin_nav` VALUES ('55', '40', '招标引导指数', 'Bidding Advantage Parameters', 'Admin/Fight/index', '', '6');
INSERT INTO `hw3ms_admin_nav` VALUES ('56', '40', '产品对位表', 'Products Comparison List', 'Admin/Fight/index', '', '7');
INSERT INTO `hw3ms_admin_nav` VALUES ('57', '40', '产品关键信息', 'Key Message', 'Admin/Fight/index', '', '8');
INSERT INTO `hw3ms_admin_nav` VALUES ('59', '40', '售前技术FAQ', 'Pre-sales Training', 'Admin/Fight/index', '', '10');
INSERT INTO `hw3ms_admin_nav` VALUES ('58', '40', '销售指导书', 'Sales Guidelines', 'Admin/Fight/index', '', '9');
INSERT INTO `hw3ms_admin_nav` VALUES ('74', '46', '新闻软文', 'Advertorials', 'Admin/Fight/index', '', '1');
INSERT INTO `hw3ms_admin_nav` VALUES ('61', '44', 'SAP HANA一体机', 'Solutions for SAP HANA', 'Admin/Fight/index', '', '2');
INSERT INTO `hw3ms_admin_nav` VALUES ('62', '44', 'Azure Stack', 'Azure Stack', 'Admin/Fight/index', '', '3');
INSERT INTO `hw3ms_admin_nav` VALUES ('63', '44', 'Atlas', 'Atlas', 'Admin/Fight/index', '', '4');
INSERT INTO `hw3ms_admin_nav` VALUES ('64', '44', 'FusionCube', 'FusionCube', 'Admin/Fight/index', '', '5');
INSERT INTO `hw3ms_admin_nav` VALUES ('65', '44', '开放架构小型机', 'KunLun', 'Admin/Fight/index', '', '6');
INSERT INTO `hw3ms_admin_nav` VALUES ('66', '44', '加速部件', 'SSD', 'Admin/Fight/index', '', '7');
INSERT INTO `hw3ms_admin_nav` VALUES ('67', '44', '管理软件', 'Management', 'Admin/Fight/index', '', '8');
INSERT INTO `hw3ms_admin_nav` VALUES ('68', '44', '机架服务器', 'Rack Server', 'Admin/Fight/index', '', '9');
INSERT INTO `hw3ms_admin_nav` VALUES ('69', '44', '刀片服务器', 'Blade Server', 'Admin/Fight/index', '', '10');
INSERT INTO `hw3ms_admin_nav` VALUES ('70', '44', '高密服务器', 'High-Density Server', 'Admin/Fight/index', '', '11');
INSERT INTO `hw3ms_admin_nav` VALUES ('71', '44', 'G系列服务器', 'G Series Server', 'Admin/Fight/index', '', '12');
INSERT INTO `hw3ms_admin_nav` VALUES ('75', '46', '展览展示', 'Exhibition Resources', 'Admin/Fight/index', '', '2');
INSERT INTO `hw3ms_admin_nav` VALUES ('76', '46', '广告海报', 'Advertisement', 'Admin/Fight/index', '', '3');
INSERT INTO `hw3ms_admin_nav` VALUES ('77', '46', '产品照片', 'Product Album', 'Admin/Fight/index', '', '4');
INSERT INTO `hw3ms_admin_nav` VALUES ('78', '46', '参观资源', 'Visit Resource', 'Admin/Fight/index', '', '5');
INSERT INTO `hw3ms_admin_nav` VALUES ('79', '46', 'EDM', 'EDM', 'Admin/Fight/index', '', '6');
INSERT INTO `hw3ms_admin_nav` VALUES ('60', '40', '其他作战装备', 'More', 'Admin/Fight/index', '', '11');
INSERT INTO `hw3ms_admin_nav` VALUES ('82', '44', 'ISP', 'ISP', 'Admin/Fight/index', '', '4');

-- ----------------------------
-- Table structure for hw3ms_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `hw3ms_auth_group`;
CREATE TABLE `hw3ms_auth_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` text COMMENT '规则id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户组表';

-- ----------------------------
-- Records of hw3ms_auth_group
-- ----------------------------
INSERT INTO `hw3ms_auth_group` VALUES ('1', '超级管理员', '1', '6,96,144,20,1,2,3,4,5,64,21,7,8,9,10,11,12,13,14,15,16,123,124,125,19,126,127,128,129,130,131,133,134,135,136,137,138,147,139,140,141,142,143,145,146');
INSERT INTO `hw3ms_auth_group` VALUES ('2', '产品管理员', '1', '6,96,144,20,1,2,4,64,21,19,125,126,127,128,129,130,131,133,134,135,136,137,138,147,139,140,141,142,143,145,146');
INSERT INTO `hw3ms_auth_group` VALUES ('4', '普通管理员', '1', '6,96,144,126,128,130,131,133,134,135,137,138,147,139,140,141,142,143,145,146');

-- ----------------------------
-- Table structure for hw3ms_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `hw3ms_auth_group_access`;
CREATE TABLE `hw3ms_auth_group_access` (
  `uid` int(11) unsigned NOT NULL COMMENT '用户id',
  `group_id` int(11) unsigned NOT NULL COMMENT '用户组id',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户组明细表';

-- ----------------------------
-- Records of hw3ms_auth_group_access
-- ----------------------------
INSERT INTO `hw3ms_auth_group_access` VALUES ('88', '1');
INSERT INTO `hw3ms_auth_group_access` VALUES ('89', '2');
INSERT INTO `hw3ms_auth_group_access` VALUES ('90', '4');

-- ----------------------------
-- Table structure for hw3ms_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `hw3ms_auth_rule`;
CREATE TABLE `hw3ms_auth_rule` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `name` char(80) NOT NULL DEFAULT '' COMMENT '规则唯一标识',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '规则中文名称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：为1正常，为0禁用',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '' COMMENT '规则表达式，为空表示存在就验证，不为空表示按照条件验证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=148 DEFAULT CHARSET=utf8 COMMENT='规则表';

-- ----------------------------
-- Records of hw3ms_auth_rule
-- ----------------------------
INSERT INTO `hw3ms_auth_rule` VALUES ('1', '20', 'Admin/ShowNav/nav', '菜单管理', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('2', '1', 'Admin/Nav/index', '菜单列表', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('3', '1', 'Admin/Nav/add', '添加菜单', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('4', '1', 'Admin/Nav/edit', '修改菜单', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('5', '1', 'Admin/Nav/delete', '删除菜单', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('21', '0', 'Admin/ShowNav/rule', '权限控制', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('7', '21', 'Admin/Rule/index', '权限管理', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('8', '7', 'Admin/Rule/add', '添加权限', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('9', '7', 'Admin/Rule/edit', '修改权限', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('10', '7', 'Admin/Rule/delete', '删除权限', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('11', '21', 'Admin/Rule/group', '用户组管理', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('12', '11', 'Admin/Rule/add_group', '添加用户组', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('13', '11', 'Admin/Rule/edit_group', '修改用户组', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('14', '11', 'Admin/Rule/delete_group', '删除用户组', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('15', '11', 'Admin/Rule/rule_group', '分配权限', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('16', '11', 'Admin/Rule/check_user', '添加成员', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('19', '21', 'Admin/Rule/admin_user_list', '管理员列表', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('20', '0', 'Admin/ShowNav/config', '系统设置', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('6', '0', 'Admin/Index/index', '后台首页', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('64', '1', 'Admin/Nav/order', '菜单排序', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('96', '6', 'Admin/Index/welcome', '欢迎界面', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('126', '0', 'Admin/Fight/index', '菜单管理', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('127', '126', 'Admin/Fight/add', '添加分类', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('128', '126', 'Admin/Fight/edit', '修改分类', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('129', '126', 'Admin/Fight/delete', '删除分类', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('130', '126', 'Admin/Fight/order', '分类排序', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('131', '126', 'Admin/Fight/addziliao', '添加资料', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('133', '0', 'Admin/Video/index', '热点视频', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('134', '133', 'Admin/Video/add', '添加视频', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('135', '133', 'Admin/Video/edit', '修改视频', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('136', '133', 'Admin/Video/delete', '删除视频', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('123', '11', 'Admin/Rule/add_user_to_group', '设置为管理员', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('124', '19', 'Admin/Rule/add_admin', '添加管理员', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('125', '19', 'Admin/Rule/edit_admin', '修改管理员', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('137', '133', 'Admin/Video/order', '视频排序', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('138', '133', 'Admin/Video/index_show', '视频首页显示', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('139', '0', 'Admin/Ziliao/index', '资料管理', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('140', '139', 'Admin/Ziliao/add', '添加资料', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('141', '139', 'Admin/Ziliao/edit', '修改资料', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('142', '139', 'Admin/Ziliao/delete', '删除资料', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('143', '139', 'Admin/Ziliao/order', '排序资料', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('144', '6', 'Admin/Login/index', '登录页面', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('145', '139', 'Admin/Ziliao/index_show', '资料首页显示', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('146', '139', 'Admin/Ziliao/indexShowSet', '首页显示管理', '1', '1', '');
INSERT INTO `hw3ms_auth_rule` VALUES ('147', '133', 'Admin/Video/indexShowSet', '首页显示管理', '1', '1', '');

-- ----------------------------
-- Table structure for hw3ms_category
-- ----------------------------
DROP TABLE IF EXISTS `hw3ms_category`;
CREATE TABLE `hw3ms_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单表',
  `pid` int(11) DEFAULT NULL COMMENT '所属id',
  `navid` int(11) unsigned DEFAULT '0' COMMENT '菜单id',
  `name` varchar(50) DEFAULT '' COMMENT '菜单名称',
  `name_en` varchar(100) DEFAULT '' COMMENT '英文名',
  `order_number` int(11) unsigned DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=402 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hw3ms_category
-- ----------------------------
INSERT INTO `hw3ms_category` VALUES ('1', '0', '38', '高层交流', 'High-level Communication', '2');
INSERT INTO `hw3ms_category` VALUES ('2', '0', '38', 'V5新品发布', 'V5 New Product &amp; Solution Luanch', '1');
INSERT INTO `hw3ms_category` VALUES ('3', '0', '38', '品牌宣传', 'Branding', '3');
INSERT INTO `hw3ms_category` VALUES ('4', '1', '38', '高层主打胶片', 'Overview Presentation', '1');
INSERT INTO `hw3ms_category` VALUES ('5', '1', '38', '安全主打胶片', 'Security Presentation', '2');
INSERT INTO `hw3ms_category` VALUES ('6', '2', '38', '资料包', 'Documents Package', '1');
INSERT INTO `hw3ms_category` VALUES ('7', '2', '38', '主题演讲', 'Keynotes', '2');
INSERT INTO `hw3ms_category` VALUES ('8', '2', '38', '展示材料', '', '3');
INSERT INTO `hw3ms_category` VALUES ('9', '3', '38', '彩页', 'Datasheet', '1');
INSERT INTO `hw3ms_category` VALUES ('10', '3', '38', '产品照片集', 'Product Album', '2');
INSERT INTO `hw3ms_category` VALUES ('11', '3', '38', '广告/海报', 'Advertising', '3');
INSERT INTO `hw3ms_category` VALUES ('12', '3', '38', '路标', 'Roadmap', '4');
INSERT INTO `hw3ms_category` VALUES ('13', '3', '38', '铭牌', 'Nameplate', '5');
INSERT INTO `hw3ms_category` VALUES ('14', '3', '38', '手绘漫画EDM', 'Hand Drawing EDM', '6');
INSERT INTO `hw3ms_category` VALUES ('16', '0', '50', 'ALL', '', '1');
INSERT INTO `hw3ms_category` VALUES ('17', '0', '50', '机架服务器', 'Rack Server', '2');
INSERT INTO `hw3ms_category` VALUES ('18', '0', '50', 'E9000 刀片服务器', 'E9000 Blade Server', '3');
INSERT INTO `hw3ms_category` VALUES ('19', '0', '50', '高密服务器', 'High-density Server', '4');
INSERT INTO `hw3ms_category` VALUES ('20', '0', '50', 'G系列异构服务器', 'G Series Heterogeneous Servers', '5');
INSERT INTO `hw3ms_category` VALUES ('21', '0', '50', 'ES3000 SSD', '', '6');
INSERT INTO `hw3ms_category` VALUES ('22', '0', '50', '管理软件', 'Management Software', '7');
INSERT INTO `hw3ms_category` VALUES ('23', '0', '50', 'N2000 NAS', '', '8');
INSERT INTO `hw3ms_category` VALUES ('24', '0', '50', 'L2800', '', '9');
INSERT INTO `hw3ms_category` VALUES ('26', '0', '51', '机架服务器', 'Rack Server', '1');
INSERT INTO `hw3ms_category` VALUES ('27', '0', '51', 'E9000 刀片服务器', 'E9000 Blade Server', '2');
INSERT INTO `hw3ms_category` VALUES ('28', '0', '51', '高密服务器', 'High-density Server', '3');
INSERT INTO `hw3ms_category` VALUES ('29', '0', '51', 'G系列异构服务器', 'G Series Heterogeneous Servers', '4');
INSERT INTO `hw3ms_category` VALUES ('30', '0', '51', 'FusionCube', '', '5');
INSERT INTO `hw3ms_category` VALUES ('31', '0', '51', 'KunLun', '', '6');
INSERT INTO `hw3ms_category` VALUES ('32', '0', '51', 'ES3000 SSD', '', '7');
INSERT INTO `hw3ms_category` VALUES ('33', '0', '51', 'Management', '', '8');
INSERT INTO `hw3ms_category` VALUES ('34', '0', '51', 'N2000 V3 NAS', '', '9');
INSERT INTO `hw3ms_category` VALUES ('35', '0', '52', '机架服务器', 'Rack Server', '1');
INSERT INTO `hw3ms_category` VALUES ('36', '0', '52', 'E9000 刀片服务器', 'E9000 Blade Server', '2');
INSERT INTO `hw3ms_category` VALUES ('37', '0', '52', 'G系列异构服务器', 'G Series Heterogeneous Servers', '3');
INSERT INTO `hw3ms_category` VALUES ('38', '0', '52', 'KunLun', '', '4');
INSERT INTO `hw3ms_category` VALUES ('39', '0', '52', '高密服务器', 'High-density Server', '5');
INSERT INTO `hw3ms_category` VALUES ('40', '0', '52', 'ES3000 SSD', '', '6');
INSERT INTO `hw3ms_category` VALUES ('41', '0', '52', 'Management', '', '7');
INSERT INTO `hw3ms_category` VALUES ('42', '0', '52', '网卡', 'Network Card', '8');
INSERT INTO `hw3ms_category` VALUES ('43', '0', '52', 'N2000 NAS', '', '9');
INSERT INTO `hw3ms_category` VALUES ('44', '0', '52', '服务器配套机柜', '', '10');
INSERT INTO `hw3ms_category` VALUES ('45', '0', '53', '2路机架服务器', '2S Rack Server', '1');
INSERT INTO `hw3ms_category` VALUES ('46', '0', '53', '4路机架服务器', '4S Rack Server', '2');
INSERT INTO `hw3ms_category` VALUES ('47', '0', '53', '8路机架服务器', '8S Rack Server', '3');
INSERT INTO `hw3ms_category` VALUES ('48', '0', '53', 'E9000 刀片服务器', 'E9000 Blade Server', '4');
INSERT INTO `hw3ms_category` VALUES ('49', '0', '53', '高密服务器', 'High-density Server', '5');
INSERT INTO `hw3ms_category` VALUES ('50', '0', '53', 'ES3000 SSD', '', '6');
INSERT INTO `hw3ms_category` VALUES ('51', '0', '53', 'Management', '', '7');
INSERT INTO `hw3ms_category` VALUES ('52', '0', '53', 'N2000 NAS', '', '8');
INSERT INTO `hw3ms_category` VALUES ('53', '0', '53', 'L2800', '', '9');
INSERT INTO `hw3ms_category` VALUES ('54', '0', '54', 'All', '', '1');
INSERT INTO `hw3ms_category` VALUES ('55', '0', '55', '机架服务器', 'Rack Server', '1');
INSERT INTO `hw3ms_category` VALUES ('56', '0', '55', 'E9000 刀片服务器', 'E9000 Blade Server', '2');
INSERT INTO `hw3ms_category` VALUES ('57', '0', '55', '高密服务器', 'High-density Server', '3');
INSERT INTO `hw3ms_category` VALUES ('58', '0', '55', 'ES3000 SSD', '', '4');
INSERT INTO `hw3ms_category` VALUES ('59', '0', '55', '管理软件', 'Management Software', '5');
INSERT INTO `hw3ms_category` VALUES ('60', '0', '55', 'N2000 NAS', '', '6');
INSERT INTO `hw3ms_category` VALUES ('61', '0', '56', '产品对比', '', '1');
INSERT INTO `hw3ms_category` VALUES ('62', '0', '57', '机架服务器', 'Rack Server', '1');
INSERT INTO `hw3ms_category` VALUES ('63', '0', '57', 'E9000 刀片服务器', 'E9000 Blade Server', '2');
INSERT INTO `hw3ms_category` VALUES ('64', '0', '57', '高密服务器', 'High-density Server', '3');
INSERT INTO `hw3ms_category` VALUES ('65', '0', '57', 'G系列异构服务器', 'G Series Heterogeneous Servers', '4');
INSERT INTO `hw3ms_category` VALUES ('66', '0', '57', 'FusionCube', '', '5');
INSERT INTO `hw3ms_category` VALUES ('67', '0', '57', 'ES3000 SSD', '', '6');
INSERT INTO `hw3ms_category` VALUES ('68', '0', '58', '兼容性查询', 'Compatibility Checker', '1');
INSERT INTO `hw3ms_category` VALUES ('69', '0', '58', '能耗查询', 'Power Calculator', '2');
INSERT INTO `hw3ms_category` VALUES ('70', '0', '59', 'E9000 刀片服务器', 'E9000 Blade Server', '1');
INSERT INTO `hw3ms_category` VALUES ('71', '0', '59', '高密服务器', 'High-density Server', '2');
INSERT INTO `hw3ms_category` VALUES ('72', '0', '59', 'FusionCube', '', '3');
INSERT INTO `hw3ms_category` VALUES ('73', '0', '59', 'ES3000 SSD', '', '4');
INSERT INTO `hw3ms_category` VALUES ('74', '0', '59', 'HPC', '', '5');
INSERT INTO `hw3ms_category` VALUES ('75', '0', '59', 'SAP HANA', '', '6');
INSERT INTO `hw3ms_category` VALUES ('76', '0', '60', '认证证书', 'Certifications', '1');
INSERT INTO `hw3ms_category` VALUES ('77', '0', '60', '可靠性预计报告', 'MTBF Report', '2');
INSERT INTO `hw3ms_category` VALUES ('78', '0', '60', 'EOX&amp;PCN信息', 'EOX&amp;PCN Information', '3');
INSERT INTO `hw3ms_category` VALUES ('79', '0', '60', '基准测试', 'Benchmark Records', '4');
INSERT INTO `hw3ms_category` VALUES ('81', '0', '81', '客户交流', 'Customer Communication', '1');
INSERT INTO `hw3ms_category` VALUES ('82', '0', '81', '销售指导与投标', 'Sales Guidelines&amp;Bidding', '2');
INSERT INTO `hw3ms_category` VALUES ('83', '0', '81', '品牌宣传', 'Branding', '3');
INSERT INTO `hw3ms_category` VALUES ('84', '0', '81', '方案设计', 'Soution Design', '4');
INSERT INTO `hw3ms_category` VALUES ('85', '81', '81', '高层主打胶片', 'Overview Presentation', '1');
INSERT INTO `hw3ms_category` VALUES ('86', '81', '81', '技术主打胶片', 'Technical Presentation', '2');
INSERT INTO `hw3ms_category` VALUES ('87', '81', '81', '关键信息', 'Key Message', '3');
INSERT INTO `hw3ms_category` VALUES ('88', '81', '81', '成功案例', 'Case Studies', '4');
INSERT INTO `hw3ms_category` VALUES ('89', '81', '81', '竞争分析', 'Competitive Positioning', '5');
INSERT INTO `hw3ms_category` VALUES ('90', '81', '81', '拓展指导书', 'Sales Guide', '6');
INSERT INTO `hw3ms_category` VALUES ('91', '82', '81', '售前培训', 'Pre-sales Training', '1');
INSERT INTO `hw3ms_category` VALUES ('92', '82', '81', '售前技术FAQ', 'Pre-sales FAQs', '2');
INSERT INTO `hw3ms_category` VALUES ('93', '82', '81', '销售指导书', 'Sales Guide', '3');
INSERT INTO `hw3ms_category` VALUES ('94', '82', '81', '销售一纸阐', 'Sales Brief', '4');
INSERT INTO `hw3ms_category` VALUES ('95', '82', '81', '应用场景分析', '', '5');
INSERT INTO `hw3ms_category` VALUES ('96', '82', '81', '专家视频', 'Expert Video', '6');
INSERT INTO `hw3ms_category` VALUES ('97', '82', '81', '可销售清单', 'Sales list', '7');
INSERT INTO `hw3ms_category` VALUES ('98', '83', '81', '海报 &amp; 易拉宝', 'Poster &amp; Roll-up Banner', '1');
INSERT INTO `hw3ms_category` VALUES ('99', '83', '81', '展示PPT', 'Slides Demo', '2');
INSERT INTO `hw3ms_category` VALUES ('100', '83', '81', '彩页', 'Data Sheet', '3');
INSERT INTO `hw3ms_category` VALUES ('101', '83', '81', '解决方案视频', 'Solution Video', '4');
INSERT INTO `hw3ms_category` VALUES ('102', '83', '81', '采访视频', 'Interview Video', '5');
INSERT INTO `hw3ms_category` VALUES ('103', '83', '81', '案例视频', 'Case Video', '6');
INSERT INTO `hw3ms_category` VALUES ('104', '83', '81', '合作仪式视频', 'Partnership Ceremony Video', '7');
INSERT INTO `hw3ms_category` VALUES ('105', '83', '81', '讲解词', 'Commentary', '8');
INSERT INTO `hw3ms_category` VALUES ('106', '83', '81', '论坛视频', 'Forum Video', '9');
INSERT INTO `hw3ms_category` VALUES ('107', '84', '81', '技术白皮书', 'Technical White Paper', '1');
INSERT INTO `hw3ms_category` VALUES ('108', '84', '81', '技术建议书', 'Technical Proposal', '2');
INSERT INTO `hw3ms_category` VALUES ('109', '0', '61', '销售指导与投标', 'Sales Guidelines&amp;Bidding', '1');
INSERT INTO `hw3ms_category` VALUES ('110', '0', '61', '客户交流', 'Customer Communication', '2');
INSERT INTO `hw3ms_category` VALUES ('111', '0', '61', '方案设计', 'Soution Design', '3');
INSERT INTO `hw3ms_category` VALUES ('112', '0', '61', '品牌宣传', 'Branding', '4');
INSERT INTO `hw3ms_category` VALUES ('113', '0', '61', 'SAP生态圈及合作伙伴拓展', 'Development of SAP Ecosystem &amp; Partner', '5');
INSERT INTO `hw3ms_category` VALUES ('114', '109', '61', '售前培训', 'Pre-sales Training', '1');
INSERT INTO `hw3ms_category` VALUES ('115', '109', '61', '售前技术FAQ', 'Pre-sales FAQs', '2');
INSERT INTO `hw3ms_category` VALUES ('116', '109', '61', '招标引导参数', 'Advantage Bidding Parameters', '3');
INSERT INTO `hw3ms_category` VALUES ('117', '109', '61', '投标讲解PPT模板', 'Bidding PPT template', '4');
INSERT INTO `hw3ms_category` VALUES ('118', '109', '61', '销售指导书', 'Sales Guide', '5');
INSERT INTO `hw3ms_category` VALUES ('119', '109', '61', '销售一纸阐', 'Sales Brief', '6');
INSERT INTO `hw3ms_category` VALUES ('120', '109', '61', '配置报价指导', 'Quotation Guide', '7');
INSERT INTO `hw3ms_category` VALUES ('121', '110', '61', '高层主打胶片', 'Overview Presentation', '1');
INSERT INTO `hw3ms_category` VALUES ('122', '110', '61', '技术主打胶片', 'Technical Presentation', '2');
INSERT INTO `hw3ms_category` VALUES ('123', '110', '61', '竞争分析', 'Competitive Positioning', '3');
INSERT INTO `hw3ms_category` VALUES ('124', '110', '61', '成功案例', 'Case Study', '4');
INSERT INTO `hw3ms_category` VALUES ('125', '111', '61', '技术白皮书', 'Technical White Pape', '1');
INSERT INTO `hw3ms_category` VALUES ('126', '111', '61', '技术指导', 'Techinical Guide', '2');
INSERT INTO `hw3ms_category` VALUES ('127', '111', '61', '技术建议书', 'Technical Proposal Template', '3');
INSERT INTO `hw3ms_category` VALUES ('128', '112', '61', '彩页', 'Data Sheet', '1');
INSERT INTO `hw3ms_category` VALUES ('129', '112', '61', '海报', 'Poster', '2');
INSERT INTO `hw3ms_category` VALUES ('130', '112', '61', '铭牌', 'Nameplate', '3');
INSERT INTO `hw3ms_category` VALUES ('131', '112', '61', '关键信息', 'Key Message', '4');
INSERT INTO `hw3ms_category` VALUES ('132', '112', '61', '讲解词', 'Commentary', '5');
INSERT INTO `hw3ms_category` VALUES ('133', '112', '61', '开放演讲胶片', 'OpenSpeech Slides', '6');
INSERT INTO `hw3ms_category` VALUES ('134', '112', '61', '解决方案Demo', 'Solution Demo', '7');
INSERT INTO `hw3ms_category` VALUES ('135', '112', '61', '解决方案技术视频', 'Solution Technical Video', '8');
INSERT INTO `hw3ms_category` VALUES ('136', '112', '61', '事件视频', 'Event Video', '9');
INSERT INTO `hw3ms_category` VALUES ('137', '113', '61', '合作指导书', 'Cooperation Guide', '1');
INSERT INTO `hw3ms_category` VALUES ('138', '113', '61', 'SAP用户联盟', 'SAP User Group', '2');
INSERT INTO `hw3ms_category` VALUES ('139', '113', '61', 'SAP合作伙伴', 'SAP Partner', '3');
INSERT INTO `hw3ms_category` VALUES ('140', '0', '62', '客户交流', 'Customer Communication', '1');
INSERT INTO `hw3ms_category` VALUES ('141', '0', '62', '品牌宣传', 'Branding', '2');
INSERT INTO `hw3ms_category` VALUES ('142', '140', '62', '主打胶片', 'Overview Presentation', '1');
INSERT INTO `hw3ms_category` VALUES ('143', '141', '62', '彩页', 'Data Sheet', '1');
INSERT INTO `hw3ms_category` VALUES ('144', '0', '63', 'Atlas', '', '1');
INSERT INTO `hw3ms_category` VALUES ('145', '0', '63', '异构服务器', 'Heterogeneous Servers', '2');
INSERT INTO `hw3ms_category` VALUES ('146', '144', '63', '展示PPT', 'Slides Demo', '1');
INSERT INTO `hw3ms_category` VALUES ('147', '144', '63', '铭牌', 'Nameplate', '2');
INSERT INTO `hw3ms_category` VALUES ('148', '144', '63', '讲解词', 'Commentary', '3');
INSERT INTO `hw3ms_category` VALUES ('149', '144', '63', '展示Demo', 'Show Demo', '4');
INSERT INTO `hw3ms_category` VALUES ('150', '144', '63', '视频', 'Video', '5');
INSERT INTO `hw3ms_category` VALUES ('151', '144', '63', '技术主打胶片', 'Technical Presentation', '6');
INSERT INTO `hw3ms_category` VALUES ('152', '145', '63', '彩页', 'Datasheet', '1');
INSERT INTO `hw3ms_category` VALUES ('153', '145', '63', '技术白皮书', 'Technical White Paper', '2');
INSERT INTO `hw3ms_category` VALUES ('154', '145', '63', '技术主打胶片', 'Product Slides for Technical', '3');
INSERT INTO `hw3ms_category` VALUES ('155', '145', '63', '竞争分析', 'Competitor Analysis', '4');
INSERT INTO `hw3ms_category` VALUES ('156', '145', '63', '竞争分析一纸阐', 'Battle Card', '5');
INSERT INTO `hw3ms_category` VALUES ('157', '145', '63', '招标引导参数', 'Bidding Advantage Parameters', '6');
INSERT INTO `hw3ms_category` VALUES ('158', '145', '63', '配置工具', 'Config Tool', '7');
INSERT INTO `hw3ms_category` VALUES ('159', '145', '63', '海报', 'Posters', '8');
INSERT INTO `hw3ms_category` VALUES ('160', '145', '63', '易拉宝', 'Roll Up Banner', '9');
INSERT INTO `hw3ms_category` VALUES ('161', '145', '63', '展示PPT', 'Slides Demo', '10');
INSERT INTO `hw3ms_category` VALUES ('162', '0', '64', 'FusionCube Public Documents', '', '1');
INSERT INTO `hw3ms_category` VALUES ('163', '0', '64', 'FusionCube HCI', '', '2');
INSERT INTO `hw3ms_category` VALUES ('164', '0', '64', 'FusionCube DB', '', '3');
INSERT INTO `hw3ms_category` VALUES ('165', '0', '64', 'FusionCube BigData', '', '4');
INSERT INTO `hw3ms_category` VALUES ('166', '0', '64', 'vSAN Ready Nodes', '', '5');
INSERT INTO `hw3ms_category` VALUES ('167', '162', '64', '客户交流', 'Customer Communication', '1');
INSERT INTO `hw3ms_category` VALUES ('168', '162', '64', '品牌宣传', 'Branding', '2');
INSERT INTO `hw3ms_category` VALUES ('169', '162', '64', '销售指导与投标', 'Sales Guidelines&amp;Bidding', '3');
INSERT INTO `hw3ms_category` VALUES ('170', '163', '64', '客户交流', 'Customer Communication', '1');
INSERT INTO `hw3ms_category` VALUES ('171', '163', '64', '方案设计', 'Solution Design', '2');
INSERT INTO `hw3ms_category` VALUES ('172', '163', '64', '销售指导与投标', 'Sales Guidelines&amp;Bidding', '3');
INSERT INTO `hw3ms_category` VALUES ('173', '164', '64', '客户交流', 'Customer Communication', '1');
INSERT INTO `hw3ms_category` VALUES ('174', '164', '64', '方案设计', 'Solution Design', '2');
INSERT INTO `hw3ms_category` VALUES ('175', '164', '64', '销售指导与投标', 'Sales Guidelines&amp;Bidding', '3');
INSERT INTO `hw3ms_category` VALUES ('176', '165', '64', '客户交流', 'Customer Communication', '1');
INSERT INTO `hw3ms_category` VALUES ('177', '165', '64', '销售指导与投标', 'Sales Guidelines&amp;Bidding', '2');
INSERT INTO `hw3ms_category` VALUES ('178', '166', '64', '市场材料', 'Marketing Documents', '1');
INSERT INTO `hw3ms_category` VALUES ('179', '167', '64', '主打胶片', 'Overview Presentation', '1');
INSERT INTO `hw3ms_category` VALUES ('180', '167', '64', '竞争分析', 'Competitive Positioning', '2');
INSERT INTO `hw3ms_category` VALUES ('181', '168', '64', '彩页', 'Datasheet', '1');
INSERT INTO `hw3ms_category` VALUES ('182', '168', '64', '铭牌', 'Nameplate', '2');
INSERT INTO `hw3ms_category` VALUES ('183', '168', '64', '易拉宝', 'Roll Up Banner', '3');
INSERT INTO `hw3ms_category` VALUES ('184', '168', '64', '案例集', 'Case Studies', '4');
INSERT INTO `hw3ms_category` VALUES ('185', '168', '64', '讲解词', 'Commentary', '5');
INSERT INTO `hw3ms_category` VALUES ('186', '169', '64', '售前培训', 'Pre-sales Training', '1');
INSERT INTO `hw3ms_category` VALUES ('187', '169', '64', '销售指导书', 'Sale guide', '2');
INSERT INTO `hw3ms_category` VALUES ('188', '169', '64', '配置报价指导', 'Quotation Guide', '3');
INSERT INTO `hw3ms_category` VALUES ('189', '169', '64', 'POC测试', 'Test for Poc', '4');
INSERT INTO `hw3ms_category` VALUES ('190', '169', '64', '测试认证', 'Test &amp; Certification', '5');
INSERT INTO `hw3ms_category` VALUES ('191', '169', '64', '合同清单', 'Contract List', '6');
INSERT INTO `hw3ms_category` VALUES ('192', '169', '64', '兼容性列表', 'Interoperability Matrix', '7');
INSERT INTO `hw3ms_category` VALUES ('193', '170', '64', '竞争分析', 'Competitive Positioning', '1');
INSERT INTO `hw3ms_category` VALUES ('194', '171', '64', '产品概述', 'Product Description', '1');
INSERT INTO `hw3ms_category` VALUES ('195', '171', '64', '技术建议书', 'Technical Proposal', '2');
INSERT INTO `hw3ms_category` VALUES ('196', '171', '64', '技术白皮书', 'White Paper', '3');
INSERT INTO `hw3ms_category` VALUES ('197', '172', '64', '专项分析', 'Special Analysis', '1');
INSERT INTO `hw3ms_category` VALUES ('198', '172', '64', '标书引导模版（控标项）', 'RFP Template', '2');
INSERT INTO `hw3ms_category` VALUES ('199', '173', '64', '竞争分析', 'Competitive Positioning', '1');
INSERT INTO `hw3ms_category` VALUES ('200', '174', '64', '产品概述', 'Product Description', '1');
INSERT INTO `hw3ms_category` VALUES ('201', '174', '64', '技术建议书', 'Technical Proposal', '2');
INSERT INTO `hw3ms_category` VALUES ('202', '174', '64', '技术白皮书', 'White Paper', '3');
INSERT INTO `hw3ms_category` VALUES ('203', '174', '64', '最佳实践', 'Best Practice', '4');
INSERT INTO `hw3ms_category` VALUES ('204', '175', '64', '专项分析', 'Special Analysis', '1');
INSERT INTO `hw3ms_category` VALUES ('205', '175', '64', '标书引导模版（控标项）', 'RFP Template', '2');
INSERT INTO `hw3ms_category` VALUES ('206', '176', '64', '高层主打胶片', 'Overview Presentation', '1');
INSERT INTO `hw3ms_category` VALUES ('207', '176', '64', '技术主打胶片', 'Technical Presentation', '2');
INSERT INTO `hw3ms_category` VALUES ('208', '176', '64', '竞争分析', 'Competitive Positioning', '3');
INSERT INTO `hw3ms_category` VALUES ('209', '177', '64', '招标引导参数', 'Bidding Parameters', '1');
INSERT INTO `hw3ms_category` VALUES ('210', '177', '64', '白皮书', 'White Paper', '2');
INSERT INTO `hw3ms_category` VALUES ('211', '177', '64', '彩页', 'Solution Data Sheet', '3');
INSERT INTO `hw3ms_category` VALUES ('212', '177', '64', '售前培训', 'Pre-sales Training', '4');
INSERT INTO `hw3ms_category` VALUES ('213', '177', '64', '售前技术FAQ', 'Pre-sales FAQs', '5');
INSERT INTO `hw3ms_category` VALUES ('214', '178', '64', '方案介绍', '', '1');
INSERT INTO `hw3ms_category` VALUES ('215', '178', '64', '配置报价', 'Configuration and Quotation', '2');
INSERT INTO `hw3ms_category` VALUES ('216', '178', '64', '售前培训', 'Pre-sales Training', '3');
INSERT INTO `hw3ms_category` VALUES ('217', '178', '64', '最佳实践', 'Best Practice', '4');
INSERT INTO `hw3ms_category` VALUES ('218', '0', '65', '售前培训', 'Pre-sales Training', '1');
INSERT INTO `hw3ms_category` VALUES ('219', '0', '65', '客户交流', 'Customer Communication', '2');
INSERT INTO `hw3ms_category` VALUES ('220', '0', '65', '品牌宣传', 'Branding', '3');
INSERT INTO `hw3ms_category` VALUES ('221', '0', '65', '销售指导与投标', 'Sales Guidelines&amp;Bidding', '4');
INSERT INTO `hw3ms_category` VALUES ('222', '218', '65', '售前培训', 'Pre-sales Training', '1');
INSERT INTO `hw3ms_category` VALUES ('223', '219', '65', '高层主打胶片', 'Overview Presentation', '1');
INSERT INTO `hw3ms_category` VALUES ('224', '219', '65', '技术主打胶片', 'Technical Presentation', '2');
INSERT INTO `hw3ms_category` VALUES ('225', '219', '65', '案例集', 'Case Studies', '3');
INSERT INTO `hw3ms_category` VALUES ('226', '219', '65', '竞争分析', 'Competitive Positioning', '4');
INSERT INTO `hw3ms_category` VALUES ('227', '219', '65', '解决方案', 'Solution', '5');
INSERT INTO `hw3ms_category` VALUES ('228', '219', '65', '高容错方案', 'HA Solution', '6');
INSERT INTO `hw3ms_category` VALUES ('229', '219', '65', '路标', 'Roadmap', '7');
INSERT INTO `hw3ms_category` VALUES ('230', '220', '65', '广告/海报', 'Advertising', '1');
INSERT INTO `hw3ms_category` VALUES ('231', '220', '65', '展会展示PPT', 'PPT Demo', '2');
INSERT INTO `hw3ms_category` VALUES ('232', '220', '65', '铭牌', 'Nameplate', '3');
INSERT INTO `hw3ms_category` VALUES ('233', '220', '65', '易拉宝', 'Roll Up Banner', '4');
INSERT INTO `hw3ms_category` VALUES ('234', '220', '65', '讲解词', 'Commentary', '5');
INSERT INTO `hw3ms_category` VALUES ('235', '220', '65', '照片集', 'Photo', '6');
INSERT INTO `hw3ms_category` VALUES ('236', '220', '65', 'Visio图标', 'Visio Stencil', '7');
INSERT INTO `hw3ms_category` VALUES ('237', '220', '65', '彩页', 'Datasheet', '8');
INSERT INTO `hw3ms_category` VALUES ('238', '220', '65', '视频', 'Video', '9');
INSERT INTO `hw3ms_category` VALUES ('239', '220', '65', '手绘漫画EDM', 'Hand Drawing EDM', '10');
INSERT INTO `hw3ms_category` VALUES ('240', '221', '65', '技术白皮书', 'White Paper', '1');
INSERT INTO `hw3ms_category` VALUES ('241', '221', '65', '标书引导模版（控标项）', 'RFP Template', '2');
INSERT INTO `hw3ms_category` VALUES ('242', '221', '65', '环境确认表', 'Environment Confirmation', '3');
INSERT INTO `hw3ms_category` VALUES ('243', '221', '65', '配置报价', 'Configuration and Quotation', '4');
INSERT INTO `hw3ms_category` VALUES ('244', '0', '66', 'NVMe SSD', '', '1');
INSERT INTO `hw3ms_category` VALUES ('245', '0', '66', 'SAS SSD', '', '2');
INSERT INTO `hw3ms_category` VALUES ('246', '0', '66', '解决方案', 'Solution', '3');
INSERT INTO `hw3ms_category` VALUES ('247', '244', '66', '品牌宣传', 'Branding', '1');
INSERT INTO `hw3ms_category` VALUES ('248', '244', '66', '客户交流', 'Customer Communication', '2');
INSERT INTO `hw3ms_category` VALUES ('249', '244', '66', '销售指导与投标', 'Sales Guidelines&amp;Bidding', '3');
INSERT INTO `hw3ms_category` VALUES ('250', '245', '66', '品牌宣传', 'Branding', '1');
INSERT INTO `hw3ms_category` VALUES ('251', '245', '66', '客户交流', 'Customer Communication', '2');
INSERT INTO `hw3ms_category` VALUES ('252', '245', '66', '销售指导与投标', 'Sales Guidelines&amp;Bidding', '3');
INSERT INTO `hw3ms_category` VALUES ('253', '246', '66', '销售指导与投标', 'Sales Guidelines&amp;Bidding', '1');
INSERT INTO `hw3ms_category` VALUES ('254', '247', '66', '产品视频', 'Video', '1');
INSERT INTO `hw3ms_category` VALUES ('255', '247', '66', '彩页', 'Data Sheet', '2');
INSERT INTO `hw3ms_category` VALUES ('256', '247', '66', '展会展示PPT', 'PPT Demo', '3');
INSERT INTO `hw3ms_category` VALUES ('257', '247', '66', '铭牌', 'Nameplate', '4');
INSERT INTO `hw3ms_category` VALUES ('258', '247', '66', '讲解词', 'Commentary', '5');
INSERT INTO `hw3ms_category` VALUES ('259', '247', '66', '广告/海报', 'Advertising', '6');
INSERT INTO `hw3ms_category` VALUES ('260', '247', '66', '手绘漫画EDM', 'Hand Drawing EDM', '7');
INSERT INTO `hw3ms_category` VALUES ('261', '247', '66', '产品照片', 'Product Album', '8');
INSERT INTO `hw3ms_category` VALUES ('262', '247', '66', '案例集', 'Case Studies', '9');
INSERT INTO `hw3ms_category` VALUES ('263', '248', '66', '技术主打胶片', 'Technical Presentation', '1');
INSERT INTO `hw3ms_category` VALUES ('264', '248', '66', '关键信息', 'Key Message', '2');
INSERT INTO `hw3ms_category` VALUES ('265', '248', '66', '竞争分析', 'Competitive Positioning', '3');
INSERT INTO `hw3ms_category` VALUES ('266', '249', '66', '可销售清单', 'Sales List', '1');
INSERT INTO `hw3ms_category` VALUES ('267', '249', '66', '销售一指禅', 'Quick Reference', '2');
INSERT INTO `hw3ms_category` VALUES ('268', '249', '66', '招标引导参数', 'Bidding Parameters', '3');
INSERT INTO `hw3ms_category` VALUES ('269', '249', '66', '兼容性列表', 'Compatibility List', '4');
INSERT INTO `hw3ms_category` VALUES ('270', '249', '66', '产品白皮书', 'Product White Paper', '5');
INSERT INTO `hw3ms_category` VALUES ('271', '249', '66', '售前指导', 'Pre-sales Guide', '6');
INSERT INTO `hw3ms_category` VALUES ('272', '250', '66', '彩页', 'Data Sheet', '1');
INSERT INTO `hw3ms_category` VALUES ('273', '251', '66', '竞争分析', 'Competitive Positioning', '1');
INSERT INTO `hw3ms_category` VALUES ('274', '252', '66', '产品白皮书', 'Product White Paper', '1');
INSERT INTO `hw3ms_category` VALUES ('275', '253', '66', '应用白皮书', 'White Paper', '1');
INSERT INTO `hw3ms_category` VALUES ('276', '253', '66', '配置建议书', 'Proposal From', '2');
INSERT INTO `hw3ms_category` VALUES ('277', '0', '67', '品牌宣传', 'Branding', '1');
INSERT INTO `hw3ms_category` VALUES ('278', '0', '67', '客户交流', 'Customer Communication', '2');
INSERT INTO `hw3ms_category` VALUES ('279', '0', '67', '销售指导与投标', 'Sales Guidelines&amp;Bidding', '3');
INSERT INTO `hw3ms_category` VALUES ('280', '0', '67', '售前培训', 'Training', '4');
INSERT INTO `hw3ms_category` VALUES ('281', '277', '67', '彩页', 'Datasheet', '1');
INSERT INTO `hw3ms_category` VALUES ('282', '277', '67', '产品视频', 'Product Video', '2');
INSERT INTO `hw3ms_category` VALUES ('283', '278', '67', '技术主打胶片', 'Technical Presentation', '1');
INSERT INTO `hw3ms_category` VALUES ('284', '278', '67', '路标', 'Roadmap', '2');
INSERT INTO `hw3ms_category` VALUES ('285', '278', '67', '成功案例', 'Case Studies', '3');
INSERT INTO `hw3ms_category` VALUES ('286', '278', '67', '竞争分析', 'Competitive Positioning', '4');
INSERT INTO `hw3ms_category` VALUES ('287', '279', '67', '技术白皮书', 'Technical White Paper', '1');
INSERT INTO `hw3ms_category` VALUES ('288', '279', '67', '配置手册', 'Configuration Manual', '2');
INSERT INTO `hw3ms_category` VALUES ('289', '279', '67', '招标引导参数', 'Advantage Bidding Parameters', '3');
INSERT INTO `hw3ms_category` VALUES ('290', '279', '67', '兼容性列表', 'Specification List', '4');
INSERT INTO `hw3ms_category` VALUES ('291', '280', '67', 'Training 产品文档包', 'Product Document', '1');
INSERT INTO `hw3ms_category` VALUES ('292', '280', '67', '离线Demo', 'Download Demo', '2');
INSERT INTO `hw3ms_category` VALUES ('293', '0', '68', '售前培训', 'Pre-sales Training', '1');
INSERT INTO `hw3ms_category` VALUES ('294', '0', '68', '彩页', 'Data Sheet', '2');
INSERT INTO `hw3ms_category` VALUES ('295', '0', '68', '技术主打胶片', 'Product Slides for Technical', '3');
INSERT INTO `hw3ms_category` VALUES ('296', '0', '68', '关键信息', 'Key Message', '4');
INSERT INTO `hw3ms_category` VALUES ('297', '0', '68', '技术白皮书', 'Technical White Paper', '5');
INSERT INTO `hw3ms_category` VALUES ('298', '0', '68', '竞争分析', 'Competitor Analysis', '6');
INSERT INTO `hw3ms_category` VALUES ('299', '0', '68', '招标引导参数', 'Bidding Advantage Parameters', '7');
INSERT INTO `hw3ms_category` VALUES ('300', '0', '68', '海报', 'Poster', '8');
INSERT INTO `hw3ms_category` VALUES ('301', '0', '68', '易拉宝', 'Roll Up Banner', '9');
INSERT INTO `hw3ms_category` VALUES ('302', '0', '68', '铭牌', 'Nameplate', '10');
INSERT INTO `hw3ms_category` VALUES ('303', '0', '68', '展会展示PPT', 'PPT Demo', '11');
INSERT INTO `hw3ms_category` VALUES ('304', '0', '69', '客户交流', 'Customer Communication', '1');
INSERT INTO `hw3ms_category` VALUES ('305', '0', '69', '品牌宣传', 'Branding', '2');
INSERT INTO `hw3ms_category` VALUES ('306', '0', '69', '', '', '3');
INSERT INTO `hw3ms_category` VALUES ('307', '0', '69', '方案设计', 'Solution Design', '4');
INSERT INTO `hw3ms_category` VALUES ('308', '304', '69', '技术主打胶片', 'Product Slides for Technical', '1');
INSERT INTO `hw3ms_category` VALUES ('309', '304', '69', '关键信息', 'Key Message', '2');
INSERT INTO `hw3ms_category` VALUES ('310', '304', '69', '售前技术FAQ', 'Pre-sales FAQs', '3');
INSERT INTO `hw3ms_category` VALUES ('311', '304', '69', '成功案例', 'Case Study', '4');
INSERT INTO `hw3ms_category` VALUES ('312', '304', '69', '竞争分析', 'Competitor Analysis', '5');
INSERT INTO `hw3ms_category` VALUES ('313', '305', '69', '彩页', 'Data Sheet', '1');
INSERT INTO `hw3ms_category` VALUES ('314', '305', '69', '产品视频', 'Product Video', '2');
INSERT INTO `hw3ms_category` VALUES ('315', '305', '69', '广告/海报', 'Advertising', '3');
INSERT INTO `hw3ms_category` VALUES ('316', '305', '69', '讲解词', 'Commentary', '4');
INSERT INTO `hw3ms_category` VALUES ('317', '305', '69', '铭牌', 'Nameplate', '5');
INSERT INTO `hw3ms_category` VALUES ('318', '306', '69', '售前培训', 'Pre-sales Training', '1');
INSERT INTO `hw3ms_category` VALUES ('319', '306', '69', '招标引导参数', 'Bidding Advantage Parameters', '2');
INSERT INTO `hw3ms_category` VALUES ('320', '306', '69', '销售指导书', 'Sales Guidelines', '3');
INSERT INTO `hw3ms_category` VALUES ('321', '306', '69', '销售一指禅', 'Quick Reference for Sales', '4');
INSERT INTO `hw3ms_category` VALUES ('322', '306', '69', '配置手册', 'Configuration Manual', '5');
INSERT INTO `hw3ms_category` VALUES ('323', '306', '69', '配置指南', 'Configuration Guide', '6');
INSERT INTO `hw3ms_category` VALUES ('324', '307', '69', '技术白皮书', 'Technical White Paper', '1');
INSERT INTO `hw3ms_category` VALUES ('325', '0', '71', '彩页', 'Data Sheet', '1');
INSERT INTO `hw3ms_category` VALUES ('326', '0', '71', '技术主打胶片', 'Product Slides for Technical', '2');
INSERT INTO `hw3ms_category` VALUES ('327', '0', '71', '技术白皮书', 'Technical White Paper', '3');
INSERT INTO `hw3ms_category` VALUES ('328', '0', '71', '竞争分析', 'Competitor Analysis', '4');
INSERT INTO `hw3ms_category` VALUES ('329', '0', '71', '海报', 'Poster', '5');
INSERT INTO `hw3ms_category` VALUES ('330', '0', '71', '易拉宝', 'Roll Up Banner', '6');
INSERT INTO `hw3ms_category` VALUES ('331', '0', '71', '展会展示PPT', 'PPT Demo', '7');
INSERT INTO `hw3ms_category` VALUES ('332', '0', '74', '新闻', 'News', '1');
INSERT INTO `hw3ms_category` VALUES ('333', '0', '75', '展示展览', 'Exhibition', '1');
INSERT INTO `hw3ms_category` VALUES ('334', '0', '75', '论坛', 'Forum', '2');
INSERT INTO `hw3ms_category` VALUES ('335', '0', '75', '视频', 'Video', '3');
INSERT INTO `hw3ms_category` VALUES ('336', '0', '75', 'Openspeech', '', '4');
INSERT INTO `hw3ms_category` VALUES ('337', '0', '76', '广告', 'Advertisement', '1');
INSERT INTO `hw3ms_category` VALUES ('338', '0', '76', '海报', 'Poster', '2');
INSERT INTO `hw3ms_category` VALUES ('339', '0', '76', '易拉宝', 'Roll Up Banner', '3');
INSERT INTO `hw3ms_category` VALUES ('340', '0', '77', '产品照片集', 'Product Album', '1');
INSERT INTO `hw3ms_category` VALUES ('341', '0', '78', '参观资源指导书', 'Visit Resource Guide', '1');
INSERT INTO `hw3ms_category` VALUES ('342', '0', '79', 'EDM', '', '1');
INSERT INTO `hw3ms_category` VALUES ('343', '0', '47', '成功案例', 'Case Studies', '1');
INSERT INTO `hw3ms_category` VALUES ('344', '0', '47', '最佳实践', 'Best Practice', '2');
INSERT INTO `hw3ms_category` VALUES ('345', '0', '48', 'Gartner', '', '1');
INSERT INTO `hw3ms_category` VALUES ('346', '0', '48', 'IDC', '', '2');
INSERT INTO `hw3ms_category` VALUES ('347', '0', '48', 'Others', '', '3');
INSERT INTO `hw3ms_category` VALUES ('348', '0', '49', '总体视频', 'Collection of Video &amp; Demo', '1');
INSERT INTO `hw3ms_category` VALUES ('349', '0', '49', '产品视频', 'Product Video', '2');
INSERT INTO `hw3ms_category` VALUES ('350', '0', '49', '3D视频', '3D Video', '3');
INSERT INTO `hw3ms_category` VALUES ('351', '0', '49', '解决方案视频', 'Solution Video', '4');
INSERT INTO `hw3ms_category` VALUES ('352', '0', '49', '专家视频', 'Expert Video', '5');
INSERT INTO `hw3ms_category` VALUES ('353', '0', '49', '采访视频', 'Interview Video', '6');
INSERT INTO `hw3ms_category` VALUES ('354', '0', '49', '一线打法总结', 'Sales Video', '7');
INSERT INTO `hw3ms_category` VALUES ('355', '0', '42', '新闻', '', '1');
INSERT INTO `hw3ms_category` VALUES ('356', '0', '43', '更多', '', '1');

-- ----------------------------
-- Table structure for hw3ms_pdsolution
-- ----------------------------
DROP TABLE IF EXISTS `hw3ms_pdsolution`;
CREATE TABLE `hw3ms_pdsolution` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '视频表id',
  `name` varchar(80) NOT NULL DEFAULT '' COMMENT '规则唯一标识',
  `name_en` varchar(100) NOT NULL DEFAULT '' COMMENT '规则中文名称',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态：1首页显示',
  `order_number` int(11) DEFAULT '0' COMMENT '排序',
  `img` varchar(100) NOT NULL DEFAULT '1',
  `createtime` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COMMENT='规则表';

-- ----------------------------
-- Records of hw3ms_pdsolution
-- ----------------------------
INSERT INTO `hw3ms_pdsolution` VALUES ('134', '方案1', 'new video', '1', '4', '/web/Hw3ms/Upload/video_img/2018-01-11/5a571980572a7.jpg', '2018-01-11 15:18:39');
INSERT INTO `hw3ms_pdsolution` VALUES ('136', '方案2', 'new video2', '1', '6', '/web/Hw3ms/Upload/video_img/2018-01-11/5a572b09dd25a.jpg', '2018-01-11 17:14:49');
INSERT INTO `hw3ms_pdsolution` VALUES ('137', '方案3', 'chanping1', '1', '2', '/web/Hw3ms/Upload/video_img/2018-01-11/5a572de7ab945.jpg', '2018-01-11 17:27:03');
INSERT INTO `hw3ms_pdsolution` VALUES ('138', '方案4', 'solution4', '1', '1', '/web/Hw3ms/Upload/video_img/2018-01-11/5a572dfa5d789.jpg', '2018-01-11 17:27:22');
INSERT INTO `hw3ms_pdsolution` VALUES ('139', '方案5', 'chanping1', '0', '5', '/web/Hw3ms/Upload/video_img/2018-01-11/5a572e11d3799.jpg', '2018-01-11 17:27:45');
INSERT INTO `hw3ms_pdsolution` VALUES ('140', '方案6', 'new solution6', '0', '7', '1', '2018-01-12 14:34:05');

-- ----------------------------
-- Table structure for hw3ms_users
-- ----------------------------
DROP TABLE IF EXISTS `hw3ms_users`;
CREATE TABLE `hw3ms_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码；mb_password加密',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像，相对于upload/avatar目录',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '登录邮箱',
  `email_code` varchar(60) DEFAULT NULL COMMENT '激活码',
  `phone` bigint(11) unsigned DEFAULT NULL COMMENT '手机号',
  `status` tinyint(1) NOT NULL DEFAULT '2' COMMENT '用户状态 0：禁用； 1：正常 ；2：未验证',
  `register_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `last_login_ip` varchar(16) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `last_login_time` int(10) unsigned NOT NULL COMMENT '最后登录时间',
  PRIMARY KEY (`id`),
  KEY `user_login_key` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hw3ms_users
-- ----------------------------
INSERT INTO `hw3ms_users` VALUES ('88', 'admin', '0192023a7bbd73250516f069df18b500', '/Upload/avatar/user1.jpg', '', '', null, '1', '1449199996', '', '0');
INSERT INTO `hw3ms_users` VALUES ('89', 'hw3ms', 'f7971656c46973ad3a816fde56737e77', '/Upload/avatar/user2.jpg', '941114177@qq.com', '', null, '1', '1449199996', '', '0');
INSERT INTO `hw3ms_users` VALUES ('90', 'test', 'c8837b23ff8aaa8a2dde915473ce0991', '', '', null, '0', '1', '1520587927', '', '0');

-- ----------------------------
-- Table structure for hw3ms_video
-- ----------------------------
DROP TABLE IF EXISTS `hw3ms_video`;
CREATE TABLE `hw3ms_video` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '视频表id',
  `cateid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一标识',
  `name_en` varchar(200) NOT NULL DEFAULT '' COMMENT '规则中文名称',
  `url` varchar(200) NOT NULL DEFAULT '' COMMENT '规则表达式，为空表示存在就验证，不为空表示按照条件验证',
  `url_en` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态：1首页显示',
  `order_number` int(11) DEFAULT NULL COMMENT '排序',
  `img` varchar(100) NOT NULL DEFAULT '',
  `createtime` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=204 DEFAULT CHARSET=utf8 COMMENT='规则表';

-- ----------------------------
-- Records of hw3ms_video
-- ----------------------------
INSERT INTO `hw3ms_video` VALUES ('147', '348', '服务器散热设计演示', 'Server Thermal Design Video', '', '', '0', '1', '', '2018-01-19 15:52:39');
INSERT INTO `hw3ms_video` VALUES ('148', '348', '服务器高可靠设计演示视频', 'Server Reliability Design Video', '', '', '0', '2', '', '2018-01-19 15:52:50');
INSERT INTO `hw3ms_video` VALUES ('146', '348', 'GCTC实验室视频_看服务器测试如何千锤百炼', 'Introduction of GCTC Lab, See How the Huawei Servers Go Through the Strict Test', 'asd', 'asd', '0', '3', '', '2018-01-19 15:52:27');
INSERT INTO `hw3ms_video` VALUES ('142', '348', '华为服务器匠心视频', 'Huawei Server Craftsmanship Video Series', '', '', '1', '3', '/web/test/lh/Hw3ms/Upload/video_img/2018-01-19/5a61b8aececc0.jpg', '2018-01-19 15:51:37');
INSERT INTO `hw3ms_video` VALUES ('143', '348', '华为服务器视频集锦', 'Huawei Server Video', '', '', '0', '4', '', '2018-01-19 15:51:49');
INSERT INTO `hw3ms_video` VALUES ('144', '348', '华为服务器形象视频（暖场视频）', 'Huawei Server Branding Video', '', '', '0', '5', '', '2018-01-19 15:52:01');
INSERT INTO `hw3ms_video` VALUES ('145', '348', '华为服务器精品制造视频', 'Huawei Server High-Quality Manufacture Video', '', '', '0', '6', '', '2018-01-19 15:52:13');
INSERT INTO `hw3ms_video` VALUES ('141', '348', '华为服务器V5管理软件宣传视频', 'Huawei Server V5 Mgmt Software Video', '', '', '0', '7', '', '2018-01-19 15:51:13');
INSERT INTO `hw3ms_video` VALUES ('149', '348', '服务器展会及巡展专用视频', '', '', '', '0', '8', '', '2018-01-19 15:52:56');
INSERT INTO `hw3ms_video` VALUES ('150', '349', 'KunLun开放架构小型机视频资源', 'KunLun Video Materials', '', '', '0', '1', '', '2018-01-19 16:27:57');
INSERT INTO `hw3ms_video` VALUES ('151', '349', 'E9000融合架构刀片服务器产品视频', 'E9000融合架构刀片服务器产品视频', '', '', '0', '2', '', '2018-01-19 16:28:10');
INSERT INTO `hw3ms_video` VALUES ('152', '349', 'E9000融合架构刀片服务器管理特性视频', 'E9000 Management Features Video', '', '', '0', '3', '', '2018-01-19 16:28:22');
INSERT INTO `hw3ms_video` VALUES ('153', '349', '架构师谈E9000刀片服务器设计', 'Huawei Architects Talking About Designing E9000 Blade Server', '', '', '0', '4', '', '2018-01-19 16:28:34');
INSERT INTO `hw3ms_video` VALUES ('154', '349', 'RH8100 V3 8路服务器产品视频', 'RH8100 V3 8-socket Server', '', '', '0', '5', '', '2018-01-19 16:28:51');
INSERT INTO `hw3ms_video` VALUES ('155', '349', 'RH5885H V3四路服务器产品视频', 'RH5885H V3 4-socket Server', '', '', '0', '6', '', '2018-01-19 16:29:03');
INSERT INTO `hw3ms_video` VALUES ('156', '349', 'RH5885H V3服务器拆装视频', 'RH5885H V3 4-socket Server tool-free installation', '', '', '0', '7', '', '2018-01-19 16:29:16');
INSERT INTO `hw3ms_video` VALUES ('157', '349', 'X6800数据中心服务器', 'X6800 Datacenter Server', '', '', '0', '8', '', '2018-01-19 16:29:26');
INSERT INTO `hw3ms_video` VALUES ('158', '349', 'ES3000 V3 NVMe PCIe SSD产品视频', 'ES3000 V3 NVMe PCIe SSD Product Video', '', '', '0', '9', '', '2018-01-19 16:29:48');
INSERT INTO `hw3ms_video` VALUES ('159', '349', 'RH2288H V3节能技术展示视频', 'See How RH2288H V3 Saving Energy', '', '', '0', '10', '', '2018-01-19 16:30:00');
INSERT INTO `hw3ms_video` VALUES ('160', '349', '【HC2016 展览】FusionCube', '[HC 2016 Showcase]FusionCube', '', '', '0', '11', '', '2018-01-19 16:30:13');
INSERT INTO `hw3ms_video` VALUES ('161', '349', 'FusionCube产品视频', 'FusionCube Video', '', '', '0', '12', '', '2018-01-19 16:30:25');
INSERT INTO `hw3ms_video` VALUES ('162', '350', 'KunLun开放架构小型机3D交互式介绍', 'Huawei KunLun Mission Critical Server 360° tour', '', '', '0', null, '', '2018-01-19 16:30:48');
INSERT INTO `hw3ms_video` VALUES ('163', '350', '华为FusionCube超融合基础设施视频', 'Huawei FusionCube Video', '', '', '0', null, '', '2018-01-19 16:31:02');
INSERT INTO `hw3ms_video` VALUES ('164', '350', '华为E9000 3D交互视频电脑版', 'Huawei E9000 3D Interactive Video For PC', '', '', '0', null, '', '2018-01-19 16:31:19');
INSERT INTO `hw3ms_video` VALUES ('165', '350', '华为FusionServer X6800 3D交互视频电脑版', 'Huawei FusionServer X6800 3D Interactive Video For PC', '', '', '0', null, '', '2018-01-19 16:31:31');
INSERT INTO `hw3ms_video` VALUES ('166', '351', '高容错解决方案展示Flash', '', '', '', '0', null, '', '2018-01-19 16:31:48');
INSERT INTO `hw3ms_video` VALUES ('167', '351', '华为服务器液冷解决方案', 'Huawei Server Liquid Cooling Solution', '', '', '0', null, '', '2018-01-19 16:32:00');
INSERT INTO `hw3ms_video` VALUES ('168', '352', '【IT超声波】解密华为KunLun HANA一体机解决方案', '[IT Wiz Talk]Huawei KunLun SAP HANA Appliance Solution', '', '', '0', null, '', '2018-01-19 16:32:13');
INSERT INTO `hw3ms_video` VALUES ('169', '352', '华为助力瑞士洛桑联邦理工学院（EPFL）构建新一代科研高性能计算平台', 'Huawei Helps EPFL Build a New-Generation HPC Platform', '', '', '1', '1', '/web/test/lh/Hw3ms/Upload/video_img/2018-01-19/5a61b7fec63c4.jpg', '2018-01-19 16:32:25');
INSERT INTO `hw3ms_video` VALUES ('170', '352', '华为服务器助力英国TalkTalk 构建混合云平台', 'TalkTalk Builds hybrid cloud platform with Huawei Server', '', '', '1', '4', '/web/test/lh/Hw3ms/Upload/video_img/2018-01-19/5a61b9053e407.jpg', '2018-01-19 16:32:37');
INSERT INTO `hw3ms_video` VALUES ('171', '352', '英国Hillarys选择华为定制SAP HANA一体机解决方案', 'Hillarys of the UK Selects Huawei Customized SAP HANA Appliance Solution', '', '', '0', null, '', '2018-01-19 16:32:51');
INSERT INTO `hw3ms_video` VALUES ('172', '352', '华为SAP HANA解决方案高效支撑良品铺子实现全渠道信息化应用', 'Huawei SAP HANA Appliance Enables Omni-Channel Digital Transformation for China BESTORE', '', '', '0', null, '', '2018-01-19 16:33:05');
INSERT INTO `hw3ms_video` VALUES ('173', '352', '华为服务器助力澳洲R-Group云服务建设', 'Australia\'s R-Group Builds Cloud Service Platform with Huawei Servers', '', '', '0', null, '', '2018-01-19 16:33:18');
INSERT INTO `hw3ms_video` VALUES ('174', '352', '华为FusionCube案例视频', '', '', '', '0', null, '', '2018-01-19 16:33:28');
INSERT INTO `hw3ms_video` VALUES ('175', '352', '波兰PCSS案例视频', 'PCSS (Poland) Picks Huawei for its HPC_Top 100 Project', '', '', '0', null, '', '2018-01-19 16:33:40');
INSERT INTO `hw3ms_video` VALUES ('176', '352', '华沙大学案例视频', 'University of Warsaw (Poland) Picks Huawei for its HPC_Top 500 Project', '', '', '0', null, '', '2018-01-19 16:33:53');
INSERT INTO `hw3ms_video` VALUES ('177', '352', '阿联酋卓美亚帆船酒店案例视频', 'UAE Jumeirah Group Improves IT Efficiency with Huawei Servers', '', '', '0', null, '', '2018-01-19 16:34:06');
INSERT INTO `hw3ms_video` VALUES ('178', '352', '法国Cirteo案例视频', 'French Criteo Implements Big Data Precision Marketing with Huawei Servers', '', '', '0', null, '', '2018-01-19 16:34:20');
INSERT INTO `hw3ms_video` VALUES ('179', '352', '西班牙Espaciorack HANA企业云案例视频', 'Huawei SAP HANA Helps Spain Espaciorack to Build HANA Enterprise Cloud', '', '', '0', null, '', '2018-01-19 16:36:36');
INSERT INTO `hw3ms_video` VALUES ('180', '352', '中石化SAP HANA案例视频', 'Huawei Joins with SAP to Provide Large-Scale, Single-Cluster HANA Solution (Sinopec)', '', '', '0', null, '', '2018-01-19 16:36:51');
INSERT INTO `hw3ms_video` VALUES ('181', '352', '深圳海关FusionCube案例视频', 'Shenzhen Customs Accelerates Service Systems with Huawei FusionCube', '', '', '0', null, '', '2018-01-19 16:37:04');
INSERT INTO `hw3ms_video` VALUES ('182', '352', '浙江移动计费支撑网小机迁移案例视频', 'Huawei Servers Help Zhejiang Mobile Migrate Billing System from RISC to x86', '', '', '0', null, '', '2018-01-19 16:37:16');
INSERT INTO `hw3ms_video` VALUES ('183', '352', '上海盛大G云案例视频', 'Huawei Servers Turbocharge Shanghai Shanda Grand Cloud', '', '', '0', null, '', '2018-01-19 16:37:27');
INSERT INTO `hw3ms_video` VALUES ('184', '352', '甘肃省第二人民医院HIS系统FusionCube案例视频', '', '', '', '0', null, '', '2018-01-19 16:37:34');
INSERT INTO `hw3ms_video` VALUES ('185', '352', '华为FusionCube上海海事大学案例视频', '', '', '', '0', null, '', '2018-01-19 16:37:41');
INSERT INTO `hw3ms_video` VALUES ('186', '352', '华为服务器老友记：上海巨人', 'Old Friend Series Vido-Shanghai Giant Interactive Group', '', '', '0', null, '', '2018-01-19 16:37:57');
INSERT INTO `hw3ms_video` VALUES ('187', '352', '华为服务器老友记：广东省农业厅', '', '', '', '0', null, '', '2018-01-19 16:38:13');
INSERT INTO `hw3ms_video` VALUES ('188', '352', '华为服务器老友记：新余人民医院', '', '', '', '0', null, '', '2018-01-19 16:38:20');
INSERT INTO `hw3ms_video` VALUES ('189', '353', 'Atlas专家及展台采访视频', 'Atlas Expert &amp; Booth Interview Video', '', '', '0', null, '', '2018-01-19 16:45:57');
INSERT INTO `hw3ms_video` VALUES ('190', '353', '京东云平台首席架构师刘海锋谈与华为服务器的合作', 'Chief Architect of Jingdong Cloud Platform Talking About the Cooperation with Huawei Server', '', '', '0', null, '', '2018-01-19 16:46:09');
INSERT INTO `hw3ms_video` VALUES ('191', '353', '华为服务器全球客户点赞集锦', 'Global Customer Comments on Huawei Servers', '', '', '0', null, '', '2018-01-19 16:46:20');
INSERT INTO `hw3ms_video` VALUES ('192', '353', '华为服务器关键业务合作伙伴证言合集', 'VOC of Huawei Servers\' Key Service Partners', '', '', '0', null, '', '2018-01-19 16:46:32');
INSERT INTO `hw3ms_video` VALUES ('193', '353', 'Bright Computing分享与华为HPC在全球市场的合作', 'Bright Computing Talks About Success Stories Worldwide with Huawei HPC', '', '', '0', null, '', '2018-01-19 16:46:44');
INSERT INTO `hw3ms_video` VALUES ('194', '353', '德国Blue Consult分享与华为在FusionCube等领域的合作经验', 'German Blue Consult Shares Cooperation with Huawei in FusionCube', '', '', '0', null, '', '2018-01-19 16:46:56');
INSERT INTO `hw3ms_video` VALUES ('195', '353', 'Canalys分析师Matthew Ball谈华为服务器优势及展望KunLun市场前景', 'Canalys’s Analyst Matthew Ball on Huawei Servers\' Strength and Launch of KunLun 9032 Server', '', '', '0', null, '', '2018-01-19 16:47:07');
INSERT INTO `hw3ms_video` VALUES ('196', '353', 'Dell’Oro 分析师Sameh Boujelene赞华为服务器广受客户认可及展望KunLun市场前景', 'Dell’Oro Analyst Sameh Boujelene on Great Customer Acceptance of Huawei Servers and Launch of KunLun 9032 Server', '', '', '0', null, '', '2018-01-19 16:47:48');
INSERT INTO `hw3ms_video` VALUES ('197', '353', 'LeaseWeb 高度评价华为数据中心产品', 'LeaseWeb Speaks Highly of Huawei\'s Datacenter Products', '', '', '0', null, '', '2018-01-19 16:48:05');
INSERT INTO `hw3ms_video` VALUES ('198', '353', '华为助力SVR构建高性能计算平台', 'Huawei Helps SVR in Turkey Construct a High-Performance Computing Platform', '', '', '0', null, '', '2018-01-19 16:48:19');
INSERT INTO `hw3ms_video` VALUES ('199', '353', '英特尔与华为在服务器和云计算领域不断强化合作', '', '', '', '0', null, '', '2018-01-19 16:48:28');
INSERT INTO `hw3ms_video` VALUES ('200', '353', '', 'Tata Sky Implements Huawei Blade Servers to Enhance Network Efficiency', '', '', '0', null, '', '2018-01-19 16:48:35');
INSERT INTO `hw3ms_video` VALUES ('201', '353', 'Mellanox谈与华为在HPC领域的合作', 'Mellanox talks about cooperations with Huawei in HPC', '', '', '0', null, '', '2018-01-19 16:49:48');
INSERT INTO `hw3ms_video` VALUES ('202', '354', '服务器一线打法总结视频', '', '', '', '0', null, '', '2018-01-19 16:50:04');
INSERT INTO `hw3ms_video` VALUES ('203', '352', 'Insect360分析师展望华为HPC解决方案市场前景', 'Intersect360 Research Analyst Shares His Outlook on Huawei’s Solutions for the HPC Market', '', '', '1', '2', '/web/test/lh/Hw3ms/Upload/video_img/2018-01-19/5a61b85a12d88.jpg', '2018-01-19 17:20:26');

-- ----------------------------
-- Table structure for hw3ms_ziliao
-- ----------------------------
DROP TABLE IF EXISTS `hw3ms_ziliao`;
CREATE TABLE `hw3ms_ziliao` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `name` varchar(80) NOT NULL DEFAULT '',
  `name_en` varchar(200) NOT NULL DEFAULT '' COMMENT '规则中文名称',
  `url` varchar(200) NOT NULL DEFAULT '' COMMENT '规则表达式，为空表示存在就验证，不为空表示按照条件验证',
  `url_en` varchar(200) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态：为1首页显示',
  `order_number` int(11) DEFAULT '0' COMMENT '排序',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `createtime` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=578 DEFAULT CHARSET=utf8 COMMENT='规则表';

-- ----------------------------
-- Records of hw3ms_ziliao
-- ----------------------------
INSERT INTO `hw3ms_ziliao` VALUES ('1', '4', '华为服务器高层主打胶片', 'Huawei Server Overview Presentation', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV12082812240072', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV13013058430208', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('2', '5', '华为服务器安全主打胶片', 'Huawei Server Security Presentation', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV14112131570052', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15082944150144', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('3', '6', 'FusionServer V5 全球发布资料包', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170717031214440', '', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('4', '7', 'FusionServer V5新品及解决方案发布', 'FusionServer V5 New Product &amp; Solution Luanch PPT', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170713244513996', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170713244513996', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('5', '7', '无边界计算战略解读', 'Boundless Computing Strategy Speech', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170713244013996', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170713244013996', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('6', '7', '中国工商银行IT架构转型', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170714495214440', '', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('7', '7', '联合创新 极致性能(SAP)', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170714041314440', '', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('8', '7', '腾讯服务器运营实践管理', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170714460414440', '', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('9', '7', '华为&amp;微软智能混合云解决方案', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170714300014440', '', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('10', '8', 'V5发布会展示区材料汇总', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170713250213996', '', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('11', '9', '华为服务器FusionServer V5产品彩页合集', 'Huawei FusionServer V5 Product Collection Data Sheet', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV12042735380100', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV12091005010139', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('12', '10', '华为服务器产品图片', 'Huawei Server Product Album', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV12103039430029', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV12103039430029', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('13', '11', '华为FusionServer V5服务器海报', 'Huawei FusionServer V5 Poster', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=1740766', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=1740766', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('14', '12', '华为服务器外部路标', 'Huawei Server External Roadmap', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV12110146230125', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV12082911380059', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('15', '13', '华为服务器铭牌', 'Huawei Server Nameplate', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV13020417570107', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV13020417570107', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('16', '14', 'V5服务器特刊——新一代服务器，威武（V5）来袭', 'Special Issue for the V5 Server——New-Generation V5 Server is Coming Soon', 'http://3ms.huawei.com/hi/group/1008137/thread_6348443.html?mapId=7986861', 'http://3ms.huawei.com/hi/group/1008137/thread_6353707.html?mapId=7992733', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('17', '14', '华为服务器手绘漫画——V3 vs V5', 'Huawei FusionServer hand drawing EDM - V3 vs V5', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171103325716884', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171103325716884', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('18', '14', '浅谈FDM——华为服务器故障诊断的“魔法”', 'Huawei Server FDM----Magic Behind Huawei Server Fault Diagnosis', 'http://3ms.huawei.com/hi/group/1008137/thread_6306077.html?mapId=7930121', 'http://3ms.huawei.com/hi/group/1008137/thread_6316813.html?mapId=7952021', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('19', '14', '图说业界最快的SSD', 'Industry\'s Fastest SSD', 'http://3ms.huawei.com/hi/group/1008137/thread_6349847.html?mapId=7988337', 'http://3ms.huawei.com/hi/group/1008137/thread_6372039.html?mapId=8013139', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('20', '14', '华为服务器散热的秘密', 'Let\'s unveil the secrets behind the heat dissipation of Huawei Servers', 'http://3ms.huawei.com/hi/group/1008137/thread_6219627.html?mapId=7823067', 'http://3ms.huawei.com/hi/group/1008137/thread_6242815.html?mapId=7852687', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('21', '14', '谈谈华为液冷那点事儿', 'Let\'s unveil the secrets behind the Liquid Cooling Solution of Huawei Servers', 'http://3ms.huawei.com/hi/group/1008137/thread_6296993.html?mapId=7920503', 'http://3ms.huawei.com/hi/group/1008137/thread_6306015.html?mapId=7930053', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('22', '14', '让计算变简单——聊聊服务器绿色节能', 'Let\'s unveil the secrets behind the Power Consumption of Huawei Servers', 'http://3ms.huawei.com/hi/group/1008137/thread_6335715.html?mapId=7972821', 'http://3ms.huawei.com/hi/group/1008137/thread_6369651.html?mapId=8010591', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('23', '14', '揭秘华为服务器是如何做抗振设计的？', '', 'http://3ms.huawei.com/hi/group/1008137/thread_6612775.html?mapId=8279741#top', '', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('24', '14', '华为服务器3D AR App——所见即所得', 'Huawei FusionServer 3D AR App-All in one', 'http://3ms.huawei.com/hi/group/1008137/thread_6527573.html?mapId=8183671', 'http://3ms.huawei.com/hi/group/1008137/thread_6527573.html?mapId=8183671', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('25', '14', '华为服务器手绘漫画-创新', 'Huawei FusionServer hand drawing EDM - Innovations', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171103331016884', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171103331016884', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('26', '16', '华为服务器 all in one 彩页', 'Collection of Huawei Server Data Sheets', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV12042735380100', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV12091005010139', '0', '1', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('27', '17', '华为FusionServer V5机架服务器产品彩页', 'Huawei FusionServer V5 Rack Server Data Sheet', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170719202913707', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170719293413707', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('28', '18', '华为E9000刀片服务器彩页', 'Huawei E9000 Blade Server Data Sheet', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=pbi4122209125895982', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=pbi4122209125287278', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('29', '19', '华为X6800数据中心服务器彩页', 'Huawei X6800 Data center Server Data Sheet', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV14110348330014', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV14110348450015', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('30', '19', '华为X6000高密度服务器彩页', 'Huawei X6000 High-density Server Data Sheet', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV16112452440162', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV14110348450015', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('31', '20', '华为FusionServer G5500服务器彩页', 'Huawei FusionServer G5500 Data Sheet', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170718003814032', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170718003014032', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('32', '20', '华为FusionServer G2500服务器彩页', 'Huawei FusionServer G2500 Data Sheet', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170428125736494', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170428123036494', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('33', '21', '华为ES3000 V3 NVMe PCIe SSD彩页', 'Huawei ES3000 V3 NVMe PCIe SSD Data Sheet', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15101622580073', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15101623080074', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('34', '22', '华为服务器集群管理系统eSight Server彩页', 'Huawei Server Cluster Management System eSight Server Data Sheet', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171113373544932', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171113373544932', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('35', '22', '华为服务器智能管理系统iBMC彩页', 'Huawei Server Lifecycle Management System iBMC Data Sheet', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171113374344932', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171113374344932', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('36', '23', 'N2000 NAS产品彩页', 'N2000 NAS Data Sheet', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV12101114470024', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV12101721260114', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('37', '23', 'N2000 V3 NAS产品彩页', 'N2000 V3 NAS Data Sheet', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15081056500009', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15081701400043', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('38', '24', 'L2800 产品彩页', 'L2800 Data Sheet', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV13091058230042', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV13091005000043', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('39', '26', '华为FusionServer V5通用机架服务器技术主打胶片', 'Huawei FusionServer V5 General Purpose Rack Server Technical Presentation', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170719292313707', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170719025313707', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('40', '27', '华为FusionServer E9000融合架构刀片服务器主打胶片', 'Huawei FusionServer E9000 Converged Infrastructure Blade Server Technical Presentation', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=pbi20141103031144', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=pbi20141103031144', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('41', '28', '华为X6800数据中心服务器主打胶片', 'Huawei X6800 Data Center Server Technical Presentation', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV14112817550012', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV14112818100013', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('42', '28', '华为FusionServer X6000技术主打胶片', 'Huawei FusionServer X6000 Technical Presentation', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV161206362515731', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV161206350415731', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('43', '29', '华为FusionServer G系列异构服务器（G2500&amp;G5500）技术主打胶片', 'Huawei FusionServer G Series Heterogeneous Server (G2500&amp;G5500) Technical Presentation', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171019025014032', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171019132714032', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('44', '30', '华为FusionCube高层主打胶片', 'Huawei FusionCube Overview Presentation', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CC14091031360016', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CC15012734530085', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('45', '31', '华为KunLun开放架构小型机技术主打胶片', 'KunLun Mission Critical Server Technical Presentation', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15122217200117', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV16071252160103', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('46', '32', 'ES3000 V3 NVMe SSD卡主打胶片', 'ES3000 V3 NVMe SSD Technical Presentation', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15120911310156', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15120912470158', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('47', '33', '华为服务器管理软件解决方案技术主打胶片', 'Huawei Server Full-lifecycle Management Technical Presentation', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV16020101170033', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV16020101270035', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('48', '34', '华为N2000/N2000H V3 NAS技术主打胶片', 'Huawei N2000/N2000H V3 Technical Presentation', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15080606060127', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15081407380099', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('49', '35', '华为 FusionServer 1288H V5服务器白皮书', 'Huawei FusionServer 1288H V5 White Paper', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=MSS170720351213888', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170808554213888', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('50', '35', '华为 FusionServer 2288H V5服务器白皮书', 'Huawei FusionServer 2288H V5 White Paper', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=MSS170720363213888', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170808585313888', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('51', '35', '华为 FusionServer 2488 V5 技术白皮书', 'Huawei FusionServer 2488 V5 White Paper', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170918054815965', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171009164815965', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('52', '35', '华为 FusionServer 8100 V5 技术白皮书', 'Huawei FusionServer 8100 V5 White Paper', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171130150219523', '', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('53', '36', 'E9000机箱&amp;管理特性&amp;安全技术白皮书', 'E9000 Blade Server Chassis &amp; Management &amp; Security Feature White Paper', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15012249320111', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15012255340157', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('54', '36', 'E9000计算节点技术白皮书', 'E9000 Blade Server Compute Node White Paper', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15012254050116', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15012214350176', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('55', '36', 'E9000交换模块技术白皮书', 'E9000 Blade Server Switch Module White Paper', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15012258240118', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15012218590178', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('56', '36', 'E9000网卡模块技术白皮书', 'E9000 Blade Server Network Adapter White Paper', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15012202180119', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15012221330180', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('57', '37', '华为FusionServer G5500服务器技术白皮书', 'Huawei FusionServer G5500 White Paper', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV17092334466233', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV17111747156233', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('58', '38', '华为KunLun开放架构小型机技术白皮书', 'KunLun Mission Critical Server White Paper', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV16012127160023', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV16042917530105', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('59', '39', '华为FusionServer X6800 技术白皮书', 'Huawei FusionServer X6800 White Paper', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV14122617180114', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15020751220036', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('60', '39', '华为FusionServer X6000技术白皮书', 'Huawei FusionServer X6000 Technical White Paper', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171226315812115', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171226315112115', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('61', '40', '华为ES3000 V3 NVMe SSD白皮书', 'Huawei ES3000 V3 NVMe SSD White Paper', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV16042659560056', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV16042646220122', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('62', '40', '华为ES3000解决方案白皮书', 'Huawei ES3000 Solution White Paper', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15012751170020', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15031601030057', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('63', '41', '华为服务器单机智能iBMC管理系统白皮书', 'Huawei Server Intelligent Management System White Paper', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV14112653080057', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV14121528480086', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('64', '41', '华为eSight服务器管理白皮书', 'Huawei eSight Server Management White Paper', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=ISE16062116370027', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=ISE14102014150017', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('65', '41', '华为服务器管理插件白皮书', 'Huawei Server Management Plug-in White Paper', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV13083009540041', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV13083009200039', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('66', '42', '华为FusionServer自研网卡白皮书', 'Huawei FusionServer NIC white paper', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV14122408490337', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV16040119150025', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('67', '42', '华为FusionServer外购网卡白皮书', 'Huawei FusionServer Resell NIC white Paper', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV16040119330026', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('68', '43', '华为N2000 NAS存储系统技术白皮书', 'Huawei N2000 NAS Storage System White Paper', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV12101709590073', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV12103001350081', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('69', '43', '华为N2000/N2000H V3 V3 NAS技术白皮书', 'Huawei N2000/N2000H V3 System Technical White Paper', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15080606270157', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15100843240076', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('70', '44', '服务器配套通用机柜白皮书', 'Universal Cabinet for Server White Paper', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV14123049340036', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV16092825260188', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('71', '45', '华为FusionServer 2路V5机架服务器竞争分析', 'Huawei FusionServer V5 2-Socket Rack Server Competitive Positioning', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170817012015103', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170817012415103', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('72', '46', '华为FusionServer 4路V5机架服务器竞争分析', 'Huawei FusionServer V5 4-Socket Rack Server Competitive Positioning', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170918054315965', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171025483815965', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('73', '47', '华为FusionServer 8路V5机架服务器竞争分析', 'Huawei FusionServer 8-Socket Rack Server V5 Competitive Positioning', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171205443115965', '', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('74', '48', '华为FusionServer E9000融合架构刀片服务器竞争分析', 'Huawei FusionServer E9000 Converged Infrastructure Blade Server Competitive Positioning', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=pbi5042710044689822', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=pbi5042215041105793', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('75', '49', '华为FusionServer X6800竞争分析', 'Huawei FusionServer X6800 Competitive Positioning', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV14120534110029', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV14121720480174', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('76', '49', '华为FusionServer X6000竞争分析', 'Huawei FusionServer X6000 Competitive Positioning', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV161224054515731', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV161224055615731', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('77', '50', 'ES3000 V3 NVMe SSD竞争分析', 'Huawei ES3000 NVMe SSD Competitive Positioning', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV16022402500064', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV16022408110066', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('78', '51', '华为eSight服务器设备管理软件竞争分析', 'Huawei Server Management Software Competitive Positioning', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV13071055420090', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV13071055420090', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('79', '51', '华为服务器管理软件(iBMC&amp;HMM)竞争分析', 'Huawei FusionServer iBMC Competitive Positioning', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15050442170054', '', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('80', '52', '华为N2000 NAS存储系统竞争分析', 'Huawei N2000 NAS Storage System Competitive Positioning', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV12101050010025', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV12103001580083', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('81', '52', '华为N2000/N2000H V3 NAS竞争分析', 'Huawei N2000/N2000H V3 NAS Competitive Positioning', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15080605510126', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15081407100098', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('82', '53', '华为L2800负载均衡器竞争分析', 'Huawei L2800 Competitive Positioning', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV14051533540042', '', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('83', '54', '华为服务器外部路标', 'HUAWEI Server External Roadmap', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV12110146230125', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV12082911380059', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('84', '55', '华为FusionServer 1288H V5机架服务器招标引导参数', 'Huawei FusionServer 1288H V5 Rack Server Bidding Advantage Parameters', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170811474313804', '', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('85', '55', '华为FusionServer 2288H V5机架服务器招标引导参数', 'Huawei FusionServer 2288H V5 Rack Server Bidding Advantage Parameters', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170811522013804', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171129060714069', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('86', '55', '华为FusionServer 2488 V5机架服务器招标引导参数', 'Huawei FusionServer 2488 V5 Rack Server Bidding Advantage Parameters', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170922342618131', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171009413018131', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('87', '56', '华为FusionServer E9000 招标引导参数', 'Huawei FusionServer E9000 Advantage Bidding Parameters', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV16031727120060', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=pbi6031519035098147', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('88', '57', '华为FusionServer X6800招标引导参数', 'Huawei FusionServer X6800 Advantage Bidding Parameters', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15020947260135', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV14121721040175', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('89', '57', '华为FusionServer X6000招标引导参数', 'Huawei FusionServer X6000 Advantage Bidding Parameters', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170417075015731', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170417075815731', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('90', '58', '华为ES3000 V3 NVMe SSD招标引导参数', 'Huawei ES3000 V3 NVMe SSD Advantage Bidding Parameters', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV16031724000056', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV16031724090057', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('91', '59', '华为服务器管理软件招标引导参数', 'Huawei FusionServer Bidding Advantage Parameters', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15020922550090', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;mslType=msl_type&amp;f_id=SV15021321100054&amp;doc_msl_ids=17032&amp;topic_id=1000621', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('92', '60', '华为N2000 NAS招标引导参数', 'Huawei N2000 NAS Advantage Bidding Parameters', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV12110146140102', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV12120335280046', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('93', '60', '华为N2000/N2000H V3 NAS招标引导参数', 'Huawei N2000/N2000H V3 NAS Bidding Advantage Parameters', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15080606380158', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15100834390070', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('94', '61', '华为服务器产品对位表', 'Huawei Server Products Mapping List', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15042216080066', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15080602090154', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('95', '62', '华为FusionServer 2路V5机架服务器关键信息', 'Huawei FusionServer 2-Socket V5 Rack Server Key Message', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171121160011893', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;mslType=msl_type&amp;f_id=1773893&amp;topic_id=1000621', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('96', '62', '华为FusionServer 4路V5机架服务器关键信息', 'Huawei FusionServer 4-Socket V5 Rack Server Key Message', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;mslType=msl_type&amp;f_id=1759214&amp;topic_id=1000621', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171122321018131', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('97', '62', '华为FusionServer 8路V5机架服务器关键信息', 'Huawei FusionServer 8-Socket V5 Rack Server Key Message', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171204215518131', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171204215118131', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('98', '63', '华为FusionServer E9000刀片服务器关键信息', 'Huawei FusionServer E9000 Blade Server Key Message', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV16091245070068', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV16091245350069', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('99', '64', '华为FusionServer X6800关键信息', 'Huawei FusionServer X6800 Key Message', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV16091245430070', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15082406460021', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('100', '65', '华为G系列异构服务器关键信息', 'Huawei G-series Heterogenous Server Key Message', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170919214114032', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170919214114032', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('101', '66', '华为FusionCube关键信息', 'Huawei FusionCube Key Message', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CIF14063032090099', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CIF14063032090099', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('102', '67', '华为ES3000 V3 NVMe SSD关键信息', 'Huawei ES3000 V3 NVMe SSD Key Message', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV16021536520069', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV16021536590070', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('103', '68', '兼容性查询助手', 'Compatibility Checker', 'http://support.huawei.com/onlinetoolsweb/ftca/', 'http://support.huawei.com/onlinetoolsweb/ftca/en', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('104', '69', 'Web化能耗计算器', 'Power Calculator Online Tool', 'http://support.huawei.com/onlinetoolsweb/ftpa/', 'http://support.huawei.com/onlinetoolsweb/ftpa/en', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('105', '70', '华为FusionServer E9000整机配电指南', 'Huawei FusionServer E9000 Converged Infrastructure Blade Server System Power Distribution Quick Referenc', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV170725212342239', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=pbi7072617071419199', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('106', '70', '华为FusionServer E9000融合架构刀片服务器售前技术FAQ', 'Huawei FusionServer E9000 Pre-sales FAQs', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=pbi4122616120600479', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV14093050000108', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('107', '71', '华为FusionServer X6800售前技术FAQ', 'Huawei FusionServer X6800 Pre-sales Technical FAQs', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15100911000028', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV16010449000095', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('108', '72', '华为FusionCube售前技术FAQ', 'Huawei FusionCube Pre-sales FAQs', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171019421014223', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CC15012136360047', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('109', '73', 'ES3000 V3 NVMe SSD售前技术FAQ', 'ES3000 V3 NVMe SSD Pre-sales FAQs', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV16031724170058', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV16031724280059', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('110', '74', '华为高性能计算解决方案售前技术FAQ', 'Huawei HPC Solution Presales Technical FAQs', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15090951220114', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15110955490028', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('111', '75', '华为SAP HANA一体机售前技术FAQ', 'Huawei Solutions for SAP HANA Pre-sales FAQs', '', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV15090609120058', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('112', '76', '华为服务器认证地图&amp;认证证书', 'Huawei Server Certification Map &amp; Certifications', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV12081314410137', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV12081314410137', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('113', '77', '华为服务器产品MTBF可靠性预计报告', 'MTBF Reliability Prediction Report', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV14103027570285', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV14103027570285', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('114', '78', '华为服务器生命周期信息', 'Huawei Server Lifecycle Information', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171028233511893', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171028234011893', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('115', '79', '服务器产品性能测试世界记录汇总', 'Server Benchmark Records', 'http://3ms.huawei.com/hi/group/2351/thread_4126479.html?mapId=3277051&amp;for_statistic_from=all_group_forum', 'http://3ms.huawei.com/hi/group/2351/thread_4126479.html?mapId=3277051&amp;for_statistic_from=all_group_forum', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('116', '85', '华为高性能计算解决方案高层主打胶片', 'Huawei HPC Solution Overview Presentation', 'https://www.baidu.com', '', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('117', '86', '华为高性能计算解决方案技术主打胶片', 'Huawei HPC Solution Technical Presentation', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('118', '86', '华为高性能计算解决方案技术主打胶片（教育）', 'Huawei HPC Solution Technical Presentation (for Education)', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('119', '86', '华为油气行业高性能计算解决方案技术主打胶片', 'Huawei HPC Solution for Oil &amp; Gas Industry Technical Presentation', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('120', '86', '华为工业CAE仿真解决方案', 'Huawei Industrial CAE Simulation Solution', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('121', '86', '华为液冷解决方案技术主打胶片', 'Huawei Liquid Cooling Solution Technical Presentation', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('122', '87', '华为高性能计算解决方案关键信息', 'Huawei HPC Solution Key Messages', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('123', '88', '华为高性能计算案例集', 'Huawei HPC Solution Cases', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('124', '88', '华为高性能计算经典案例', 'Huawei HPC Typical Case Study', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('125', '88', '华为助力瑞士洛桑联邦理工学院(EPFL)构建新一代科研高性能计算平台', 'Huawei Helps EPFL Build a New-Generation HPC Platform', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('126', '88', '波兰PSNC携手华为建成全球TOP80超算集群', 'PSNC Builds a World-TOP80 HPC with Huawei', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('127', '88', '华为HPC助力德国戴姆勒制造高品质豪车', 'Daimler AG Builds High Quality Luxury Cars with Huawei HPC', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('128', '88', '大众集团选择华为HPC构建汽车CAE仿真设计平台', 'Volkswagen Selects Huawei HPC to Build Automotive CAE Simulation Platform', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('129', '88', '南洋理工大学采用KunLun构建多学科高性能计算平台', 'KunLun HPC at the Center of NTU\'s Multidisciplinary', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('130', '88', '埃及亚历山大图书馆携手华为HPC建设数字化科教平台', 'Bibliotheca Alexandrina in Egypt Selects Huawei for New HPC Build', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('131', '89', '华为高性能计算解决方案竞争分析（总体/GPU方案/软件方案/存储方案）', 'Huawei HPC Solution Competitive Positioning(overall/GPU/storage/software)', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('132', '90', '华为高性能计算解决方案拓展指导书', 'Huawei HPC Solution Sales Guide', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('133', '90', '华为高性能计算解决方案CAE场景拓展指导书', 'Huawei HPC Solution Sales Guide for CAE Scenario', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('134', '91', '华为高性能计算方案售前培训', 'Huawei HPC Solution Pre-sales Training', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('135', '92', '华为高性能计算解决方案售前FAQ', 'Huawei HPC Solution Presales Technical FAQs', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('136', '93', '华为高性能计算解决方案销售指导书', 'Huawei HPC Solution Sales Guide', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('137', '93', '华为高性能计算解决方案销售指导书(教育)', 'Huawei HPC Solution Sales Guide (Education)', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('138', '94', '华为高性能计算解决方案销售一纸阐', 'Huawei HPC Solution Sales Brief', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('139', '95', 'CAE场景分析', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('140', '95', '石油勘探HPC场景分析', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('141', '96', '德国李杰讲奔驰HPC项目', '', '', null, '0', '1', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('142', '96', '波兰胡岸讲波兹南超级计算网络中心（PSNC）HPC项目', '', '', null, '0', '2', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('143', '96', '华为HPC在HPCAC 瑞士峰会上的主题演讲', 'Open Speech from Huawei HPC at the Swiss conference of HPCAC', '', null, '0', '3', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('144', '96', '高性能计算加速工业仿真演讲', '', '', null, '0', '4', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('145', '97', '华为高性能计算解决方案可销售清单', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('146', '98', '华为高性能计算解决方案可销售清单', 'Huawei HPC Solution Poster &amp; Roll-up Banner', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('147', '99', '华为高性能计算解决方案展示胶片', 'Huawei HPC Solution Slides Demo', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('148', '100', '华为高性能计算解决方案彩页', 'Huawei HPC Solution Data Sheet', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('149', '100', '华为液冷解决方案彩页', 'Huawei Liquid Cooling Solution Data Sheet', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('150', '101', '华为高性能计算液冷解决方案视频', 'Huawei HPC Liquid Cooling Solution Video', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('151', '101', '华为CAE仿真HPC解决方案视频', 'Huawei HPC Solution for CAE Simulation Video', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('152', '102', 'Insect360分析师展望华为HPC解决方案市场前景', 'Intersect360 Research Analyst Shares His Outlook on Huawei’s Solutions for the HPC Market', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('153', '102', 'Mellanox谈与华为在HPC领域中的合作', 'Mellanox talks about cooperations with Huawei in HPC', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('154', '102', '土耳其SVR客户谈华为HPC方案的价值', 'Turkey SVR customers talk about the value of the HUAWEI HPC', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('155', '102', 'Bright Computing分享与华为HPC在全球市场的合作', 'Bright Computing Talks About Success Stories Worldwide with Huawei HPC', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('156', '102', 'ESI集团首席运营官介绍与华为在hpc以及云计算的合作', 'ESI Talks About Its Collaboration with Huawei for the HPC Solution', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('157', '102', 'ANSYS谈与华为在仿真分析解决方案的合作', 'ANSYS Talks About Collaborations with Huawei on Simulation and Analysis Solutions', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('158', '102', 'InsideHPC介绍华为高性能计算解决方案', 'InsideHPC Interview for Huawei HPC Solution Introduction', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('159', '103', '波兰华沙大学选择华为建设HPC项目', 'HPC Case: Univisity of Warsaw, Poland', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('160', '103', '波兰PSNC选择华为建设HPC TOP100项目', 'PSNC Picks Huawei for HPC TOP 100 Project', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('161', '104', '华为-ESI合作备忘录签约仪式', 'Huawei-ESI MoU Signing Ceremony', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('162', '104', 'ANSYS-华为 Fluent应用性能白皮书联合发布仪式', 'ANSYS-Huawei Fluent White Paper Release Ceremony', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('163', '104', '华为-Intel 发布X6000 HPC平台仪式', 'Huawei HPC Platform X6000 Release Ceremony with Intel', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('164', '105', '华为高性能计算解决方案讲解词', 'Huwei HPC Solution Commentary', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('165', '106', '华为高性能计算解决方案专场论坛材料及视频', 'Huawei HPC Forum Materials &amp; Videos', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('166', '107', '华为FusionServer 液冷系统 V100R001 白皮书', 'Huawei FusionServer Liquid Cooling System V100R001 White Paper', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('167', '108', '华为高性能计算解决方案技术建议书（机架/刀片）', 'Huawei HPC Solution Technical Proposal (Rack/Blade)', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('168', '108', '石油行业高性能集群系统方案建议书', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('169', '108', '图形渲染高性能集群系统方案建议书', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('170', '108', '高性能集群系统方案建议书通用方案-机架方案', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('171', '108', '高性能集群系统方案建议书通用方案-刀片方案', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('172', '114', '华为SAP HANA一体机售前培训', 'Huawei Solutions for SAP HANA Pre-sales Training', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('173', '115', '华为SAP HANA一体机售前技术FAQ', 'Huawei Solutions for SAP HANA Pre-sales FAQs', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('174', '116', '华为SAP HANA一体机招标引导参数', 'Huawei Solutions for SAP HANA Advantage Bidding Parameters', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('175', '117', 'XX项目SAP HANA建设规划方案(X86答标PPT模板)', 'XX SAP Project solution ( Bidding PPT template:VS. IBM Power)', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('176', '117', 'XX项目SAP HANA建设规划方案(Power小机答标PPT模板)', 'XX SAP Project solution ( Bidding PPT template: VS. X86)', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('177', '118', '华为SAP HANA一体机销售指导书', 'Huawei SAP HANA Solution Sales Guide', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('178', '119', '华为SAP HANA一体机销售一纸阐', 'Huawei Solutions for SAP HANA Sales Brief', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('179', '120', '华为SAP HANA一体机配置报价指导', 'Huawei Solutions for SAP HANA Quotation Guide', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('180', '121', '华为SAP HANA一体机解决方案高层主打胶片', 'Huawei SAP HANA Overview Presentation', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('181', '122', '华为SAP HANA一体机技术主打胶片', 'Huawei Solutions for SAP HANA Technical Presentation', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('182', '122', '华为SAP HANA一体机- 高可用方案', 'Huawei Solutions for SAP HANA - High Availability solution', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('183', '122', 'SAP系统容量规划', 'SAP Sytem Sizing Planning', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('184', '123', '华为SAP HANA一体机竞争分析', 'Huawei SAP HANA Competitive Positioning', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('185', '123', 'KunLun HANA竞争分析', 'Why is KunLun Engineered System for SAP HANA', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('186', '123', 'IBM Power竞争分析', 'Huawei SAP HANA appliance VS. IBM power', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('187', '123', '华为SAP HANA一体机竞争分析一纸阐', 'Huawei SAP HANA Appliance Battle Card', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('188', '124', '华为SAP HANA成功案例', 'Huawei SAP HANA Case Study', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('189', '125', '华为SAP HANA一体机技术白皮书-单机版', 'Huawei SAP HANA Appliance Technical White Paper (Single Node Edition)', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('190', '125', '华为SAP HANA一体机技术白皮书-集群版（独立存储）', 'Huawei SAP HANA Appliance Technical White Paper (Scale Out Edition) (for SAN Storage)', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('191', '125', '华为SAP HANA一体机技术白皮书（SAP Business One on HANA）', 'Huawei Solutions for SAP HANA White Paper (Business One on SAP HANA）', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('192', '126', 'SAP HANA Dynamic Tiering Technology', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('193', '126', 'SAP HANA scale up vs. scale-out 最佳实践', 'SAP HANA scale up vs. scale-out best practice', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('194', '126', 'SAP HANA Appliance vs. SAP HANA TDI', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('195', '126', 'SAP HANA Migration', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('196', '127', '华为SAP HANA一体机技术建议书（单机方案）', 'Huawei SAP HANA Appliance Technical Proposal Template（Single Node Solution）', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('197', '127', '华为SAP HANA一体机技术建议书（集群方案-传统架构）', 'Technical Proposal Template for Huawei Solution for SAP HANA (Scale-out Solution — Traditional Architecture)', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('198', '128', '华为SAP HANA一体机彩页', 'Huawei solutions for SAP HANA datasheet', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('199', '129', '华为SAP HANA解决方案海报', 'Huawei SAP HANA Solution Poster', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('200', '130', '华为SAP HANA一体机铭牌', 'Huawei Solutions for SAP HANA Nameplate', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('201', '131', '华为SAP HANA一体机关键信息', 'Huawei SAP HANA Solution Key Message', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('202', '132', '华为SAP HANA一体机讲解词', 'Huawei Solutions for SAP HANA Commentary', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('203', '133', '华为SAP HANA一体机Openspeech胶片', 'Huawei Solutions for SAP HANA Keynote Presentation', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('204', '134', '华为SAP HANA一体机展示胶片', 'Huawei Solutions for SAP HANA Demo', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('205', '135', '华为SAP HANA一体机技术展示视频', 'Huawei Solutions for SAP HANA Video', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('206', '136', '华为与SAP合作历程', 'Huawei SAP Cooperation Introduction 2012 to 2016', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('207', '136', '华为SAP联合创新中心开幕仪式', 'Huawei SAP Co-Innovation Center Opening Ceremony', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('208', '136', 'Huawei day Video in SAP headquarters', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('209', '136', '英国Hillarys Blinds SAP HANA案例视频', 'Hillarys of the UK Selects Huawei Customized SAP HANA Appliance Solution', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('210', '136', '西班牙石油SAP HANA采访视频', 'Case Video: Interview Video of CEPSA SAP HANA Project', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('211', '136', '华为SAP HANA助力西班牙Espaciorack构建HANA企业云', 'Huawei SAP HANA Helps Spain Espaciorack to Build HANA Enterprise Cloud', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('212', '136', '零售行业良品铺子SAP HANA采访视频', 'Interview Video of BESTSTORE of Retail industry SAP HANA Project', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('213', '136', '中石化SAP HANA案例及案例视频视频', 'Huawei Joins with SAP to Provide Large-Scale, Single-Cluster HANA Solution (Sinopec)', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('214', '137', 'Huawei-SAP战略联盟简介', 'Huawei-SAP Strategic Collaboration', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('215', '137', 'SAP合作拓展内部赋能材料', 'Internal Enablement Material for Cooperative Development with SAP', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('216', '138', 'SAP 用户联盟的组织介绍', 'Introduction to SAP User Group', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('217', '138', 'CSUA参与指导说明书V1.0', 'Guide to CSUA (Association of Chinese SAP Users) V1.0', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('218', '139', 'United-VARs全球合作策略分析报告', 'Cooperation Strategy about Uinted-VARs', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('219', '142', '华为Azure Stack 混合云解决方案主打胶片', 'Huawei Hybrid Cloud Solution for Microsoft Azure Stack', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('220', '143', '华为Azure Stack混合云解决方案彩页', 'Huawei Hybrid Cloud Solution for Microsoft Azure Stack - Solution Brief', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('221', '179', '华为Fusi+E3:E16', 'Huawei FusionCube Overview Presentation', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('222', '180', '华为FusionCube竞争分析', 'Huawei FusionCube Competitive Positioning', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('223', '181', '华为FusionCube彩页', '华为FusionCube Data Sheet', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('224', '182', '华为FusionCube铭牌', 'Huawei FusionCube Nameplate', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('225', '183', '华为FusionCube易拉宝', 'Huawei FusionCube Roll Up Banner', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('226', '184', '华为FusionCube案例集', 'Huawei Fusioncube Case Studies', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('227', '185', '华为FusionCube讲解词', 'Huawei FusionCube Commentary', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('228', '186', '华为FusionCube售前培训', 'Huawei FusionCube Pre-Sales Training', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('229', '187', '华为FusionCube销售指导书', 'Huawei FusionCube Sales Guide', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('230', '188', '华为FusionCube 2.6配置报价指导', 'Huawei FusionCube 2.6 Quotation Guide', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('231', '189', '华为FusionCube PoC测试套件', '华为FusionCube PoC测试套件', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('232', '190', 'FusionCube认证资料', 'FusionCube Authentication information', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('233', '191', 'FusionCube合同清单', 'FusionCube Contract List', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('234', '192', '华为FusionCube兼容性列表', 'Huawei FusionCube Interoperability Matrix', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('235', '193', '华为FusionCube竞争分析(Nutanix)', 'Huawei FusionCube Competitive Positioning (Nutanix)', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('236', '194', '华为FusionCube 基础设施虚拟化 产品概述', 'Huawei FusionCube Infrastructure Virtualization Product Description', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('237', '195', '华为FusionCube 虚拟化一体机技术建议书模板', 'Huawei FusionCube Virtualization Appliance Technical Proposal Template', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('238', '196', '华为FusionCube 2.7 虚拟化超融合基础设施技术白皮书', 'Huawei FusionCube 2.7 HCI Technical White Paper', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('239', '197', '重删压缩特性特性分析', 'Deduplication and Compression Analysis', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('240', '198', '华为FusionCube虚拟化一体机标书引导模板', 'Huawei FusionCube RFP Template V1.0 (Virtualization)', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('241', '199', '华为FusionCube竞争分析(Exadata)', 'Huawei FusionCube Competitive Positioning (Exadata)', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('242', '200', '华为FusionCube数据库基础设施产品概述', 'Huawei FusionCube Database Infrastructure Product Description', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('243', '201', '华为FusionCube数据库基础设施技术建议书模板', 'Huawei FusionCube Database Infrastructure Scene Technical Proposal Template', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('244', '202', '华为FusionCube数据仓库基础设施技术白皮书', 'Huawei FusionCube Whitepaper (DB)', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('245', '203', 'FusionCube搬迁Oracle Exadata最佳实践', 'Exadata-to-FusionCube Migration Best Practice', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('246', '204', '整体TCO分析', 'TCO Analysis', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('247', '205', '华为FusionCube数据库基础设施标书引导模板', 'Huawei FusionCube DB Infrastructure RFP Template', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('248', '206', '华为FusionCube大数据专用设备高层主打胶片', 'Huawei FusionCube BigData Machine Overview Presentation', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('249', '207', '华为FusionCube大数据专用设备技术主打胶片', 'Huawei FusionCube BigData Machine Technical Presentation', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('250', '208', '华为FusionCube大数据专用设备竞争分析', 'Huawei FusionCube BigData Machine Competitive Positioning', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('251', '209', '华为FusionCube大数据专用设备招标引导参数', 'Huawei FusionCube BigData Machine Bidding Parameters', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('252', '210', '华为FusionCube大数据专用设备白皮书', 'Huawei FusionCube BigData Machine White Paper', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('253', '211', '华为FusionCube大数据专用设备彩页', 'Huawei FusionCube BigData Machine Data Sheet', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('254', '212', '华为FusionCube大数据专用设备售前培训', 'Huawei FusionCube BigData Machine Pre-sales Training', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('255', '213', '华为FusionCube大数据专用设备FAQ', 'Huawei FusionCube BigData Machine FAQ', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('256', '214', 'vSAN解决方案介绍胶片', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('257', '215', 'vSAN配置指导', 'vSAN Configuration Guide', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('258', '216', 'vSAN技术培训', 'vSAN Technical Training', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('259', '217', 'Vmware vSAN使用最佳实践', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('260', '222', '华为KunLun售前培训', 'Huawei KunLun Pre-Sales Training', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('261', '223', '华为KunLun高层主打胶片', 'Huawei KunLun Overview Presentation', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('262', '224', '华为KunLun技术主打胶片', 'Huawei KunLun Technical Presentation', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('263', '225', '华为KunLun案例集', 'Huawei KunLun Case Study', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('264', '226', '华为KunLun竞争分析', 'Huawei KunLun Competitive Positioning', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('265', '227', '华为KunLun解决方案交流材料', 'Huawei KunLun Solution Presentation', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('266', '228', '华为KunLun高容错解决方案', 'Huawei KunLun HA Solution Presentation', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('267', '229', '华为KunLun外部路标', 'Huawei KunLun Roadmap', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('268', '230', '华为KunLun广告', 'Huawei KunLun Advertisement', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('269', '231', '发布会素材', 'KunLun Launch Material', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('270', '231', '华为KunLun展示胶片及Demo', 'Huawei KunLun Showcase &amp; Demo', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('271', '232', '华为KunLun铭牌', 'Huawei KunLun Nameplate', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('272', '233', '华为KunLun易拉宝', 'Huawei KunLun Roll Up Banner', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('273', '234', '华为KunLun讲解词', 'Huawei KunLun Commentary', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('274', '235', '华为KunLun照片集', 'Huawei KunLun Photo Collection', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('275', '236', '华为KunLun Visio图标', 'Huawei KunLun Visio Stencil Collection', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('276', '237', '华为KunLun彩页', '华为KunLun Data Sheet', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('277', '238', '华为KunLun 3D交互视频', 'Huawei KunLun 360° Tour Video', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('278', '238', '华为KunLun视频资源', 'Huawei KunLun Videos Resource', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('279', '239', 'Kunlun RAS特性探秘——图解CPU、内存热插拔', 'Demistifying the RAS Features of the KunLun-CPU and DIMMs Hot Swap', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('280', '239', '图解KunLun逻辑分区特性', 'KunLun Logical Partitioning Explained', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('281', '239', 'KunLun RAS 特性探秘——NC芯片互联扩展方式', 'Demystifying the KunLun RAS Features-NC Chip Interconnect Mode', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('282', '239', '华为服务器手绘漫画——KunLun', 'FusionServer hand drawing EDM-KunLun', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('283', '240', '华为KunLun开放架构小型机技术白皮书', 'Huawei KunLun Mission Critical Server Technical White Paper', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('284', '241', '华为KunLun开放架构小型机逻辑分区技术白皮书', 'Huawei KunLun Mission Critical Server L-Par Technical White Paper', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('285', '241', '华为KunLun标书引导模板', 'Huawei KunLun RFP Template', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('286', '242', '华为KunLun卸货、搬运及安装环境确认表', 'Huawei KunLun Data Center Environment Confirmation', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('287', '243', '华为KunLun配置手册', 'Huawei KunLun Configuration Manual', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('288', '254', '华为ES3000 V3 NVMe SSD产品视频', 'Huawei ES3000 V3 NVMe SSD Product Video', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('289', '255', '华为ES3000 V3 NVMe SSD彩页', 'Huawei ES3000 V3 NVMe SSD Data Sheet', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('290', '256', '华为ES3000 V3 NVMe SSD展示胶片', 'Huawei ES3000 V3 NVMe SSD PPT Demo', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('291', '257', '华为ES3000 V3 NVMe SSD 铭牌', 'Huawei ES3000 V3 NVMe SSD Nameplate', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('292', '258', '华为ES3000 V3 NVMe SSD讲解词', 'Huawei ES3000 V3 NVMe SSD Commentary', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('293', '259', '华为ES3000 V3 NVMe SSD广告', 'Huawei ES3000 V3 SSD Advertisement', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('294', '260', '华为ES3000 V3 NVMe SSD EDM', 'Huawei ES3000 V3 NVMe SSD EDM', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('295', '261', '华为ES3000 V3 NVMe SSD产品照片集', 'Huawei ES3000 V3 NVMe SSD Product Album', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('296', '262', '华为ES3000 V3 NVMe SSD经典案例', 'Huawei ES3000 V3 NVMe SSD Classic Case', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('297', '262', '华为ES3000 PCIe SSD行业案例集', 'Huawei ES3000 PCIe SSD Cases', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('298', '263', '华为ES3000 SSD技术主打胶片', 'Huawei ES3000 SSD Technical Presentation', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('299', '264', '华为ES3000 V3 NVMe SSD关键信息', 'Huawei ES3000 V3 NVMe SSD Key Message', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('300', '265', '华为ES3000 V3 NVMe SSD竞争分析', 'Huawei ES3000V3 NVMe SSD Competitiveness Analysis', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('301', '266', '华为自研及外购SSD可销售清单及优选', 'Huawei Server SSD sales list and preferred', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('302', '267', '华为ES3000 V3 NVMe SSD 销售一纸阐', 'Huawei ES3000 V3 NVMe SSD Sales Brief', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('303', '268', '华为ES3000 V3 NVMe SSD招标引导参数', 'Huawei ES3000 V3 NVMe SSD Advantage Bidding Parameters', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('304', '269', '华为ES3000 V3 NVMe SSD兼容性列表', 'Huawei ES3000 V3 NVMe SSD Compatibility List', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('305', '270', '华为ES3000 V3 NVMe SSD 白皮书', 'Huawei ES3000 V3 NVMe SSD White Paper', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('306', '271', '华为ES3000 V3 NVMe SSD售前技术FAQ', 'Huawei ES3000 V3 NVMe SSD Pre-sales FAQs', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('307', '271', '华为NVMe机型服务器介绍', 'Huawei Servers with NVMe SSDs', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('308', '272', '华为ES3000 V3 SAS SSD Data Sheet', 'Huawei ES3000 V3 SAS SSD Data Sheet', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('309', '273', '华为ES3000 V3 SAS SSD竞争分析', 'Huawei ES3000 V3 SAS SSD Competitiveness Analysis', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('310', '274', '华为ES3000 V3 SAS SSD 白皮书', 'Huawei ES3000 V3 SAS SSD White Paper', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('311', '275', '华为ES3000 V3 SSD Virtual SAN应用白皮书', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('312', '275', 'Huawei ES3000 V3 SSD used in Cloud', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('313', '275', '华为ES3000 V3 SSD Oracle数据库OLTP场景应用白皮书', 'Huawei ES3000 NVMe SSD in Oracle Database White Paper', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('314', '275', '华为ES3000 NVMe SSD在Cloudera大数据应用白皮书', 'Huawei ES3000 NVMe SSD in Cloudera CDH Big Data Scenarios', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('315', '275', '华为ES3000 SSD 数据库应用白皮书', '华为ES3000 SSD 数据库应用白皮书', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('316', '275', '华为ES3000 V3 SSD MySQL数据库OLTP场景应用白皮书', 'Huawei ES3000 V3 SSD in MySQL Database White Paper', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('317', '276', '华为ES3000 V3SSD MySQL数据库配置建议书', 'MySQL Database Configuration Proposal From ES3000', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('318', '276', 'MySQL Database Configuration Proposal From ES3000', 'NVMe SSD in SAP HANA', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('319', '276', 'ES3000 V3 NVMe SSD 在中移动的大数据应用', 'ES3000 V3 NVMe SSD in Big Data in China Mobile', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('320', '281', '华为服务器集群管理系统eSight Server彩页', 'Huawei Server Cluster Management System eSight Server Datasheet', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('321', '281', '华为服务器智能管理系统iBMC彩页', 'Huawei Server Lifecycle Management System iBMC Datasheet', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('322', '282', '华为服务器V5管理软件宣传视频', 'Huawei Server V5 iBMC Features Video', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('323', '282', '华为E9000管理特性视频', 'Huawei FusionServer E9000 HMM Features Video', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('324', '282', '华为eSight服务器管理宣传视频', 'Huawei eSight Server Management Features Video', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('325', '282', '华为eSight服务器管理功能操作集合', 'Huawei eSight Server Management Functions Operation Video', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('326', '283', '华为服务器全生命周期智能管理主打胶片', 'Intelligent Server Life Cycle Management Technical Presentation', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('327', '283', '华为服务器iBMC管理软件技术主打胶片', 'Huawer Server iBMC Software Technical Presentation', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('328', '284', '华为FusionServer服务器路标', 'Huawei FusionServer Roadmap', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('329', '285', 'IT 成功案例', 'IT Case Studies', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('330', '286', '华为eSight服务器设备管理软件竞争分析', 'Huawei Server Management Software Competitive Analysis', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('331', '286', '华为服务器管理软件(iBMC V2)竞争分析', 'Huawei FusionServer iBMC Competitiveness Analysis', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('332', '287', '华为eSight服务器管理白皮书', 'Huawei eSight Server Management White Paper', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('333', '287', '华为FusionServer智能管理系统(iBMC)技术白皮书', 'Huawei FusionServer iBMC White Paper', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('334', '287', '华为服务器iBMC Agentless Service 2.0技术白皮书', 'Huawei Server iBMC Agentless Service 2.0 White Paper', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('335', '287', '华为FusionServer E9000机箱&amp;管理特性技术白皮书', 'Huawei FusionServer E9000 Blade Server Chassis &amp; Management Feature White Paper', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('336', '287', '华为FusionServer管理插件技术白皮书', 'Huawei Server Management Plug-in White Paper', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('337', '287', '华为服务器 安全技术白皮书', 'Huawei Server Security White Paper', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('338', '287', '华为服务器uREST 工具技术白皮书', 'Huawei Server uREST Tool White Paper', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('339', '288', '华为eSight V300R007 配置手册', 'Huawei eSight V300R007 Configuration Manual', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('340', '288', '华为eSight V300R006 配置手册', 'Huawei eSight V300R006 Configuration Manual', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('341', '289', '华为服务器管理软件招标引导参数', 'Huawei Server Management Software Advantage Bidding Parameters', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('342', '290', 'eSight V300R007C00 规格清单', 'eSight V300R007C00 Specification List', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('343', '290', 'eSight V300R006C00 规格清单', 'eSight V300R006C00 Specification List', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('344', '291', 'eSight Server&amp;Solution 产品文档包', 'eSight Server&amp;Solution Product Documentation', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('345', '292', 'iBMC中文Demo下载链接', 'iBMC English Demo Download Link', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('346', '293', '华为FusionServer服务器V5售前培训', 'Huawei FusionServer V5 Pre-sales Training', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('347', '294', '华为FusionServer V5机架服务器产品彩页', 'Huawei FusionServer V5 Rack Server Data Sheet', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('348', '295', '华为FusionServer V5通用机架服务器技术主打胶片', 'Huawei FusionServer V5 General Purpose Rack Server Technical Presentation', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('349', '296', '华为FusionServer 2路V5机架服务器关键信息', 'Huawei FusionServer 2-Socket V5 Rack Server Key Message', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('350', '296', '华为FusionServer 2488 V5机架服务器关键信息', 'Huawei FusionServer 2488 V5 Rack Server Key Message', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('351', '296', '华为FusionServer 8100 V5机架服务器关键信息', 'Huawei FusionServer 8100 V5 Rack Server Key Message', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('352', '297', '华为 FusionServer 1288H V5 技术白皮书', 'Huawei FusionServer 1288H V5 White Paper', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('353', '297', '华为 FusionServer 2288H V5 技术白皮书', 'Huawei FusionServer 2288H V5 White Paper', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('354', '297', '华为 FusionServer 2488 V5 技术白皮书', 'Huawei FusionServer 2488 V5 White Paper', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('355', '297', '华为 FusionServer 8100 V5 技术白皮书', 'Huawei FusionServer 8100 V5 White Paper', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('356', '298', '华为FusionServer 2路服务器 V5 竞争分析', 'Huawei FusionServer 2-Socket Server V5 Competitive Positioning', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('357', '298', '华为FusionServer 4路机架服务器 V5 竞争分析', 'Huawei FusionServer 4-Socket Rack Server V5 Competitive Positioning', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('358', '298', '华为FusionServer 8路 V5机架服务器竞争分析', 'Huawei FusionServer 8-Socket Rack Server V5 Competitive Positioning', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('359', '299', '华为FusionServer 1288H V5机架服务器招标引导参数', 'Huawei FusionServer 1288H V5 Rack Server Bidding Advantage Parameters', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('360', '299', '华为FusionServer 2288H V5机架服务器招标引导参数', 'Huawei FusionServer 2288H V5 Rack Server Bidding Advantage Parameters', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('361', '299', '华为FusionServer 2488 V5机架服务器招标引导参数', 'Huawei FusionServer 2488 V5 Rack Server Bidding Advantage Parameters', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('362', '300', '华为FusionServer V5机架服务器产品海报', 'Huawei FusionServer V5 Rack Server Poster', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('363', '301', '华为FuisonServer 2488 V5机架服务器易拉宝', 'Huawei FusionServer 2488 V5 Rack Server Roll Up Banner', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('364', '302', '华为FuisonServer 1288H V5机架服务器铭牌', 'Huawei FusionServer 1288H V5 Rack Server Nameplate', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('365', '302', '华为FuisonServer 2288H V5机架服务器铭牌', 'Huawei FusionServer 2288H V5 Rack Server Nameplate', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('366', '302', '华为FuisonServer 2488 V5机架服务器铭牌', 'Huawei FusionServer 2488 V5 Rack Server Nameplate', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('367', '302', '华为FuisonServer 8100 V5机架服务器铭牌', 'Huawei FusionServer 8100 V5 Rack Server Nameplate', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('368', '303', '华为FusionServer 2路V5机架服务器展示胶片', 'Huawei FusionServer 2-Socket V5 Rack Server Display PPT', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('369', '308', '华为FusionServer E9000融合架构刀片服务器主打胶片', 'Huawei FusionServer E9000 Converged Infrastructure Blade Server Technical Presentation', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('370', '308', '华为E9000融合架构刀片服务器NFVI主打胶片', 'Huawei E9000 Converged Architecture Blade Server NFVI Technical Presentation', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('371', '309', '华为FusionServer E9000刀片服务器关键信息', 'Huawei FusionServer E9000 Blade Server Key Message', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('372', '310', '华为FusionServer E9000融合架构刀片服务器售前技术FAQ', 'Huawei FusionServer E9000 Pre-sales FAQs', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('373', '311', 'IT成功案例', 'IT Case Studies', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('374', '311', 'E9000融合架构刀片服务器案例集', 'E9000 Blade Server Success Case Collection', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('375', '312', '华为FusionServer E9000融合架构刀片服务器竞争分析', 'Huawei FusionServer E9000 Converged Infrastructure Blade Server Competitive Positioning', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('376', '313', '华为FusionServer E9000融合架构刀片服务器V5彩页', 'Huawei FusionServer E9000 Converged Infrastructure Blade Server V5 Data Sheet', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('377', '314', 'E9000融合架构刀片服务器产品视频', 'E9000 Converged Infrastructure Blade Server', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('378', '314', 'E9000融合架构刀片服务器管理特性视频', 'E9000 Management Features Video', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('379', '314', '华为架构师谈E9000刀片服务器设计', 'Huawei Architects Talking About Designing E9000 Blade Server', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('380', '315', '华为FusionServer E9000融合架构刀片服务器海报', 'Huawei FusionServer E9000 Blade Server Poster', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('381', '315', '华为服务器形象广告（E9000中文广告素材）', 'E9000 ad. Material', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('382', '316', '华为FusionServer E9000展台讲解词', 'Huawei FusionServer E9000 Converged Infrastructure Blade Server Commentary', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('383', '317', '华为FuisonServer E9000融合架构刀片服务器铭牌', 'Huawei FusionServer E9000 Converged Infrastructure Blade Server Nameplate', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('384', '318', '华为FusionServer服务器V5售前培训', 'Huawei FusionServer V5 Pre-sales Training', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('385', '319', '华为FusionServer E9000 招标引导参数', 'Huawei FusionServer E9000 Advantage Bidding Parameters', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('386', '320', '2018年刀片服务器市场攻守道（销售指导书）', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('387', '320', 'E9000 V5与V3的网络差异和演进', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('388', '321', '华为刀片服务器一指禅', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('389', '322', '华为FusionServer配置手册（汇总）', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('390', '323', 'Why Does E9000 Use a 12U Chassis', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('391', '323', 'E9000开局指导书', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('392', '323', 'MEZZ卡用户指南', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('393', '323', '交换模块配置指南', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('394', '323', 'E9000各部件软件下载', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('395', '323', '华为服务器功率计算器', 'Huawei Server PowerCalculator', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('396', '323', 'E9000组网配置和答标速查参考表', 'E9000 Blade Server System IO Connectivity Guide', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('397', '324', 'E9000计算节点技术白皮书', 'E9000 Blade Server Compute Node White Paper', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('398', '324', 'E9000交换模块技术白皮书', 'E9000 Blade Server Switch Module White Paper', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('399', '324', 'E9000网卡模块技术白皮书', 'E9000 Blade Server Network Adapter White Paper', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('400', '324', 'E9000机箱&amp;管理特性&amp;安全技术白皮书', 'E9000 Blade Server Chassis &amp; Management &amp; Security Feature White Paper', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('401', '325', '华为FusionServer G5500服务器彩页', 'Huawei FusionServer G5500 Data Sheet', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('402', '325', '华为FusionServer G2500服务器彩页', 'Huawei FusionServer G2500 Data Sheet', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('403', '326', '华为FusionServer G系列异构服务器（G2500&amp;G5500）技术主打胶片', 'Huawei FusionServer G Series Heterogeneous Server (G2500&amp;G5500) Technical Presentation', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('404', '327', '华为FusionServer G5500服务器技术白皮书', 'Huawei FusionServer G5500 White Paper', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('405', '328', '华为FusionServer G5500服务器竞争分析', 'Huawei FusionServer G5500 Competitive Positioning', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('406', '329', '华为FusionServer G5500产品系列海报', 'Huawei FusionServer G5500 Product Poster', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('407', '329', '华为FusionServer G2500产品海报', 'Huawei FusionServer G2500 Product Poster', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('408', '330', '华为FusionServer G5500服务器易拉宝', 'Huawei FusionServer G5500 Roll-up Banner', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('409', '330', '华为FusionServer G2500服务器易拉宝', 'Huawei FusionServer G2500 Roll-up Banner', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('410', '331', '华为G系列异构服务器展示材料', 'Huawei G-series Heterogenous Server Presentation Material', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('411', '146', 'Atlas展台展示胶片', 'Atlas PPT for Booth Show', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('412', '147', ' Atlas展示铭牌', 'Atlas Nameplate', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('413', '148', 'Atlas讲解词', 'Atlas Booth Presentation Script', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('414', '149', ' Atlas展示Demo', ' Atlas展示Demo', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('415', '150', 'Atlas展台讲解视频', 'Atlas展台讲解视频', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('416', '150', ' Atlas专家及展台采访视频', 'Atlas Expert &amp; Booth Interview Video', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('417', '151', ' Atlas技术主打胶片', 'Atlas Technical Presentation', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('418', '152', '华为FusionServer G5500服务器彩页', 'Huawei FusionServer G5500 Server Data Sheet', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('419', '152', '华为FusionServer G2500服务器彩页', 'Huawei FusionServer G2500 Server Data Sheet', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('420', '153', '华为FusionServer G5500服务器技术白皮书', 'Huawei FusionServer G5500 White Paper', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('421', '154', '华为FusionServer G系列异构服务器（G2500&amp;G5500）技术主打胶片', 'Huawei FusionServer G Series Heterogeneous Server (G2500&amp;G5500) Technical Presentation', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('422', '155', '华为FusionServer G5500服务器竞争分析', 'Huawei FusionServer G5500 Competitive Positioning', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('423', '156', '华为FusionServer G5500竞争分析一纸禅', 'Huawei FusionServer G5500 Battle Card', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('424', '157', '华为FusionServer G5500服务器产品招标引导参数', 'Huawei FusionServer G5500 Bidding Advantage Parameters', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('425', '158', ' FusionServer G5500配置器手工添加部件指导书', 'FusionServer G5500\'s Instruction for manually inserting parts in Config Tool', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('426', '159', 'FusionServer G5500产品系列海报', 'FusionServer G5500 Product Poster', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('427', '159', ' 华为FusionServer G2500 产品海报', 'Huawei FusionServer G2500 Product Poster', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('428', '160', '华为FusionServer G5500服务器易拉宝', 'Huawei FusionServer G5500 Roll-up Banner', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('429', '161', ' 华为G系列异构服务器展示材料', 'Huawei G-series Heterogenous Server Presentation Material', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('430', '160', ' 华为FusionServer G2500服务器易拉宝', 'Huawei FusionServer G2500 Roll-up Banner', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('431', '332', 'Intersect360 Research发布《华为加速HPC与云及AI融合白皮书》 ，华为跻身全球超算市场第一梯队', 'Intersect360 Research Report Shows Huawei Emerging as a Global Leader in HPC Market with Cloud and AI Convergence Solutions', '', '', '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('432', '332', '华为超融合基础设施FusionCube在中国市场排名第一', 'Huawei\'s FusionCube Hyper-Converged Infrastructure Leads Chinese Market', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('433', '332', '华为在全球超算大会2017发布新一代FusionServer V5高性能服务器', 'Huawei Showcases New-Generation FusionServer V5 High-Performance Servers at SC17', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('434', '332', '中国太保集团选择华为FusionCube构建计算资源池', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('435', '332', '华为和商汤联合发布“超高密人脸识别”一体化解决方案', 'Huawei and SenseTime Jointly Launched the High Capacity Face Recognition Integrated Solution', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('436', '332', '华为联手SUSE推出更可靠的开放架构小型机解决方案', 'Huawei and SUSE Collaborate to Deliver Mission Critical Servers that Set New Standards for Reliability', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('437', '332', '华为在GTC China 2017 展示GPU加速的视频智能分析解决方案', 'Huawei Showcases GPU Accelerated Smart Video Analytics Solution at GTC China 2017', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('438', '332', '华为与软通动力联合发布智慧安全管理解决方案', 'Huawei and iSoftStone Jointly Launch Smart Security Solution', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('439', '332', '华为发布FusionServer G系列异构计算平台', 'Huawei Releases FusionServer G Series Heterogeneous Computing Platform', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('440', '332', '华为发布新一代智能云硬件平台Atlas 引领基础设施资源池变革方向', 'Huawei Releases the New-Generation Intelligent Cloud Hardware Platform Atlas', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('441', '332', '华为新一代FusionServer V5系列服务器打破多项SPEC性能测试纪录', 'Huawei\'s Latest FusionServer V5 Series Shatters Multiple SPEC Performance Records', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('442', '332', '华为和MapD签署合作备忘录 携手加速GPU分析', 'Huawei and MapD Sign MoU to Accelerate Analytics with GPUs', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('443', '332', '华为新一代FusionServer 2288H V5服务器打破SPECpower能效测试世界纪录', 'Huawei\'s Latest Generation FusionServer 2288H V5 Shatters SPECpower World Records', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('444', '332', '华为携新一代FusionServer V5服务器亮相英特尔北京发布会', 'Huawei Unveils Latest FusionServer V5 at Intel Release in Beijing', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('445', '332', '华为率先面向全球发布基于英特尔® 至强® 可扩展处理器的新一代服务器FusionServer V5', 'Huawei First Releases Its Latest-Generation Servers FusionServer V5 Globally to Power Enterprise Digital Transformation', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('446', '332', '华为发布“无边界计算”服务器战略及系列解决方案 加速行业数字化转型', 'Huawei Releases Boundless Computing Strategy and Solutions', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('447', '332', '华为宣布成立高性能计算全球能力中心', 'Huawei Inaugurates the HPC Global Center of Excellence', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('448', '332', '华为携手EPFL共建全球顶尖TOP500 HPC计算集群', 'Huawei and EPFL Partner Together to Build One of the World’s Top 500 High Performance Computing Clusters', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('449', '332', '华为E9000服务器亮相OPNFV Summit 2017，助力开源组织共同加速NFV商用', 'Huawei Showcases E9000 Blade Server at OPNFV Summit 2017, Accelerating NFV Commercialization', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('450', '332', '华为将发布基于其服务器和微软Azure Stack的混合云解决方案', 'Huawei to Expand Its Server Product Portfolio to Deliver Hybrid Cloud Solution for Microsoft Azure Stack', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('451', '332', '华为荣获2017 SAP HANA®创新奖', 'Huawei Receives Prestigious SAP HANA® Innovation Award', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('452', '332', '华为作为顶级赞助商参加 2017 SAPPHIRE NOW大会', 'Huawei attends SAPPHIRE NOW® as a Top Sponsor', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('453', '332', '华为KunLun开放架构小型机通过SAP HANA® 16TB GA认证', 'Huawei KunLun Certified for 16TB SAP HANA®', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('454', '332', '华为和红帽签署企业Linux OEM合作协议', 'Huawei Signs Server OEM Agreement with Red Hat Enterprise Linux', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('455', '332', '华为与英特尔签署合作备忘录，加速高性能计算创新', 'Huawei and Intel Sign a MOU to Accelerate HPC Innovation', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('456', '332', '华为&amp;汉得发布基于SAP HANA一体机的企业财务精细化运营分析平台', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('457', '332', '华为与Altair签署合作备忘录，携手构建工业仿真云方案', 'Huawei and Altair Sign MOU to Jointly Pursue High-Performance Computing (HPC) Opportunities and Build Industrial Simulation Cloud Solutions', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('458', '332', '华为发布FusionCube大数据一体机', 'Huawei Launches FusionCube Big Data Appliance', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('459', '332', '华为与United VARs宣布深化合作，基于SAP HANA平台为客户提供高效行业应用', 'Huawei and United VARs Announce to Advance Collaboration Based on SAP HANA', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('460', '332', '华为与Infosys联合宣布Finacle核心银行系统可运行于华为KunLun开放架构小型机', 'Huawei Extends Banking Offering with Availability of Infosys Finacle Core Banking on KunLun', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('461', '332', '华为携手SUSE发布SLES for KunLun RAS 2.0标准操作系统', 'Huawei and SUSE Announce SUSE Linux Enterprise Server Support for KunLun RAS 2.0', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('462', '332', '华为与英特尔携手发布OPA刀片解决方案，共同突破HPC性能屏障', 'Huawei Breaking Through HPC Performance Barriers with Blade Computing Solution with Intel® Omni-Path Architecture', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('463', '332', '华为全NVMe SSD高密度服务器FusionServer X6000将正式上市', 'Huawei\'s FusionServer X6000 Will Soon Be On the Market', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('464', '332', '华为与微软深度合作，推出“华为-微软商用服务器增值计划”', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('465', '332', '2016年Q4华为服务器发货量全球第三', 'Huawei Ranks Third Globally for 2016 Q4 Server Shipments', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('466', '332', '华为联手南大通用发布GBase 8t for KunLun核心数据库解决方案', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('467', '332', '加速运营商云转型，华为服务器亮相MWC 2017', 'Huawei Showcases Servers at MWC 2017 to Turbocharge the Cloud Transformation of Carriers', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('468', '332', '华为发布NFVI 100GE解决方案，树立NFVI新标杆', 'Huawei Releases NFVI 100GE Solution Setting a New Standard for NFVI', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('469', '332', '华为FusionServer 2288H V3服务器SPEC VIRT_SC® 2013测试排名第一', 'Huawei FusionServer 2288H V3 Tops SPEC VIRT_SC® 2013', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('470', '332', '华为KunLun开放架构小型机通过SAP HANA® 12TB GA认证', 'Huawei KunLun Achieves Certification for Operating SAP HANA® up to 12TB, Now in General Availability', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('471', '332', '华为FusionServer 2288H V3服务器TPCx-BB测试排名第一', 'Huawei FusionServer 2288H V3 Ranked First in TPC Express Benchmark Big Bench Tests', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('472', '332', '华为KunLun助力海澜之家升级ERP系统提升运营效率', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('473', '333', '【HC2017展览】展区铭牌', '【HC2017 Exhibition】Exibition Nameplate', '', null, '0', null, '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('474', '333', '【HC2017展览】展点KM', '【HC2017 Exhibition】Exibition KM', '', null, '0', null, '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('475', '333', '【HC2017展览】FusionCube超融合基础设施', '【HC2017 Exhibition】FusionCube Hyper-Converged Infrastructur', '', null, '0', null, '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('476', '333', '【HC2017展览】Atlas新一代智能云硬件平台', '【HC2017 Exhibition】New-Gen Intelligent Cloud Hardware Platform', '', null, '0', null, '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('477', '333', '【HC2017展览】FusionServer智能故障诊断', '【HC2017 Exhibition】FusionServer Smart Fault Diagnostics', '', null, '0', null, '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('478', '333', '【HC2017展览】G系列异构计算平台', '【HC2017 Exhibition】G Series Heterogeneous Computing Platform', '', null, '0', null, '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('479', '333', '【HC2017展览】FusionServer高效散热&amp;智慧节能', '【HC2017 Exhibition】FusionServer Smart Energy Management', '', null, '0', null, '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('480', '333', '【HC2017展览】FusionServer V5通用服务器', '【HC2017 Exhibition】FusionServer V5 General Purpose Servers', '', null, '0', null, '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('481', '333', '【HC2017展览】FusionServer液冷解决方案', '【HC2017 Exhibition】FusionServer Liquid Cooling Solution', '', null, '0', null, '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('482', '333', '【HC2017展览】大数据应用加速解决方案', '【HC2017 Exhibition】Big Data Acceleration Solution', '', null, '0', null, '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('483', '333', '【HC2017展览】FusionServer高可靠工程设计', '【HC2017 Exhibition】FusionServer High-Reliability Engineering', '', null, '0', null, '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('484', '333', '【HC2017展览】边缘视频智能分析平台', '【HC2017 Exhibition】Edge Smart Video Analytics Platform', '', null, '0', null, '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('485', '333', '【HC2017展览】KunLun开放架构小型机', '【HC2017 Exhibition】KunLun Mission Critical Server', '', null, '0', null, '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('486', '334', '【HCC2017 Track】无边界计算论坛', '【HCC2017 Track】Boundles Computing Forum', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('487', '335', 'Atlas展台讲解视频', 'Atlas Booth Video Record', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('488', '336', '【HCC2017 Openspeech】华为G系列异构计算平台全球发布仪式', '【HCC2017 Openspeech】Huawei G-series Heterogeneous Computing Server Global Launch Ceremony', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('489', '336', '【HC2017 Openspeech】 演讲材料', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('490', '337', 'KunLun开放架构小型机广告', 'KunLun Mission Critical Server Ad.', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('491', '337', 'ES3000 V3 NVMe SSD广告', 'ES3000 V3 NVMe SSD Ad.', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('492', '337', '服务器整体形象一句话广告（中文版）', 'Server Slogan Ad.', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('493', '337', '服务器农行案例广告', 'Sercer Nonghang ad.material_EN', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('494', '338', '华为FusionServer V5服务器海报', 'Huawei FusionServer V5 Poster', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('495', '338', 'FusionServer G5500产品系列海报', 'FusionServer G5500 Product Poster', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('496', '338', '华为FusionServer G2500 产品海报', 'Huawei FusionServer G2500 Poster', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('497', '338', '华为FusionServer V5机架服务器产品海报', 'Huawei FusionServer V5 Rack Server Poster', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('498', '338', '华为FusionServer E9000融合架构刀片服务器海报', 'Huawei FusionServer E9000 Blade Server Poster', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('499', '338', '华为高性能计算解决方案海报 &amp; 易拉宝', 'Huawei HPC Solution Poster &amp; Roll-up Banner', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('500', '338', '华为SAP HANA解决方案海报', 'Huawei SAP HANA Solution Poster', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('501', '338', '华为FusionServer X6800广告中文版', 'HuaWei FusionServer X6800 Ad', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('502', '338', '华为FusionServer X6000广告', 'HuaWei FusionServer X6000 Ad', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('503', '338', '华为FusionServer RH8100广告中文版', 'HuaWei FusionServer RH8100 Ad', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('504', '338', '华为FusionServer RH5885H V3服务器广告', 'HuaWei FusionServer RH5885H V3 Server Ad', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('505', '339', 'KunLun开放架构小型机易拉宝', 'KunLun Mission Critical Server Roll up', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('506', '339', '华为FusionCube易拉宝', 'Huawei FusionCube Roll up', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('507', '339', '华为服务器易拉宝', 'Huawei Server Roll Up Banner', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('508', '339', '华为FusionServer G5500服务器易拉宝', 'Huawei FusionServer G5500 Roll-up Banner', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('509', '339', '华为FusionServer G2500服务器易拉宝', 'Huawei FusionServer G2500 Roll-up Banner', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('510', '339', '华为FuisonServer 2488 V5机架服务器易拉宝', 'Huawei FusionServer 2488 V5 Rack Server Roll Up Banner', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('511', '339', '华为FusionServer G5500服务器易拉宝', 'Huawei FusionServer G5500 Roll-up Banner', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('512', '339', '华为FusionServer G2500服务器易拉宝', 'Huawei FusionServer G2500 Roll-up Banner', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('513', '339', '华为FusionServer RH8100 V3机架服务器易拉宝', 'Huawei FusionServer RH8100 V3 Rack Server Roll up', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('514', '339', '华为FusionServer RH5885H V3机架服务器', 'Huawei FusionServer RH5885H V3 Rack Server Roll up', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('515', '339', '华为FusionServer X6800高密服务器易拉宝', 'Huawei FusionServer X6800 Rack Server Roll up', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('516', '340', '服务器图片', 'Server Pictures / Photos', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('517', '341', '华为服务器参观资源汇总', 'Huawei Server Visitation Guide', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('518', '342', '服务器EDM汇总', 'EDM of server', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('519', '342', 'V5服务器特刊——新一代服务器，威武（V5）来袭', 'Special Issue for the V5 Server——New-Generation V5 Server is Coming Soon', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('520', '342', '华为服务器手绘漫画 V3 vs V5', 'Huawei FusionServer hand drawing EDM - V3 vs V5', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('521', '342', '浅谈FDM——华为服务器故障诊断的“魔法”', 'Huawei Server FDM----Magic Behind Huawei Server Fault Diagnosis', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('522', '342', '图说业界最快的SSD', 'Industry\'s Fastest SSD', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('523', '342', '华为服务器散热的秘密', 'Let\'s unveil the secrets behind the heat dissipation of Huawei Servers', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('524', '342', '谈谈华为液冷那点事儿', 'Let\'s unveil the secrets behind the Liquid Cooling Solution of Huawei Servers', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('525', '342', '让计算变简单——聊聊服务器绿色节能', 'Let\'s unveil the secrets behind the Power Consumption of Huawei Servers', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('526', '342', '揭秘华为服务器是如何做抗振设计的？', '', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('527', '342', '华为服务器3D AR App——所见即所得', 'Huawei FusionServer 3D AR app——All in one', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('528', '342', '华为服务器手绘漫画-创新', 'Huawei FusionServer hand drawing EDM - Innovations', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('529', '342', 'E9000网络演进技术', 'E9000 Network Evolution Technology', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('530', '342', 'E9000的管理艺术', 'The Arts of Management on E9000', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('531', '342', '华为FusionServer 手绘漫画-E9000', 'Huawei FusionServer hand drawing EDM - E9000', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('532', '342', 'Kunlun RAS特性探秘——图解CPU、内存热插拔', 'Demistifying the RAS Features of the KunLun----CPU and ', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('533', '342', '图解KunLun逻辑分区特性', 'KunLun Logical Partitioning Explained', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('534', '342', 'KunLun RAS 特性探秘——NC芯片互联扩展方式', 'Demystifying the KunLun RAS Features——NC Chip Interconnect Mode', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('535', '342', '华为服务器手绘漫画--KunLun', 'FusionServer hand drawing EDM - KunLun', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('536', '343', 'IT产品线案例库链接（首选）', 'Case study material library (preferred)', '', null, '1', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('537', '343', '华为服务器产品案例集', 'Success Stories of Huawei Servers', '', null, '1', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('538', '343', 'IT产品线服务器案例统计一览表', 'IT Server Cases List', '', null, '1', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('539', '344', '华为服务器最佳实践（内部参考）', 'Huawei Server Classic Case', '', null, '1', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('540', '344', 'KunLun经典案例', 'KunLun Classic Case', '', null, '1', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('541', '344', 'FusionCube经典案例', 'FusionCube Classic Case', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('542', '344', 'SAP HANA经典案例', 'SAP HANA Classic Case', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('543', '344', '华为高性能计算经典案例', 'HPC Classic Case', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('544', '344', 'ES3000 V3 NVMe SSD经典案例', 'ES3000 V3 NVMe SSD Classic Case', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('545', '344', '刀片服务器E9000经典案例', 'Huawei Blade Server E9000 Classic Case', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('546', '345', 'Gartner 全球市场份额报告', 'Gartner Global Server Market Share Report', '', '', '1', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('547', '345', '历史报告素材-Gartner全球服务器市场份额报告', 'History Reports Slides-Gartner Server Market Share', '', null, '1', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('548', '345', '2016 Gartner模块化服务器魔力四象限报告', '2016 Magic Quadrant for Modular Servers', '', null, '1', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('549', '346', 'IDC 中国x86服务器市场季度跟踪报告', '', '', null, '1', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('550', '346', '排名及数据引用授权书-中国x86服务器市场跟踪报告', '', '', null, '1', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('551', '347', 'Gartner和IDC报告服务器市场历史排名情况', 'Historical Server Ranks in Gartner and IDC Reports', '', null, '0', '0', '1', null);
INSERT INTO `hw3ms_ziliao` VALUES ('553', '355', '华为FusionServer服务器V5售前培训', 'Huawei FusionServer V5 Pre-sales Training', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=1484064', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=1484065', '1', '1', '1', '2018-01-19 08:57:07');
INSERT INTO `hw3ms_ziliao` VALUES ('554', '355', '华为服务器FusionServer V5产品彩页合集', 'Huawei FusionServer V5 Product Collection Data Sheet', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV12042735380100', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV12091005010139', '1', '2', '1', '2018-01-19 08:57:32');
INSERT INTO `hw3ms_ziliao` VALUES ('555', '355', '华为服务器全家福', 'Huawei Server Portfolio', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV16090719210067', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV16090719210067', '1', '4', '1', '2018-01-19 08:57:51');
INSERT INTO `hw3ms_ziliao` VALUES ('556', '355', '新一代服务器，威武（V5）来袭', 'New-Generation V5 Server is Coming Soon', 'http://3ms.huawei.com/hi/group/1008137/thread_6348443.html?mapId=7986861', 'http://3ms.huawei.com/hi/group/1008137/thread_6353707.html?mapId=7992733', '1', '3', '1', '2018-01-19 08:58:07');
INSERT INTO `hw3ms_ziliao` VALUES ('557', '355', '华为服务器手绘漫画 V3 vs V5', 'Huawei FusionServer hand drawing EDM - V3 vs V5', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171103325716884', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171103325716884', '1', '5', '1', '2018-01-19 08:58:32');
INSERT INTO `hw3ms_ziliao` VALUES ('558', '356', '华为Azure Stack 混合云解决方案主打胶片', 'Huawei Hybrid Cloud Solution for Microsoft Azure Stack', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171123294297185', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171123293797185', '1', '2', '1', '2018-01-19 09:48:54');
INSERT INTO `hw3ms_ziliao` VALUES ('559', '356', 'Atlas新一代智能云硬件平台技术主打胶片', 'Atlas New-Generation Intelligent Cloud Hardware Platform Technical Presentation', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171110424213547', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=SV171110424213547', '1', '1', '1', '2018-01-19 09:49:20');
INSERT INTO `hw3ms_ziliao` VALUES ('560', '356', '华为FusionCube高层主打胶片', 'Huawei FusionCube Overview Presentation', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CC14091031360016', 'http://3ms.huawei.com/mm/docMaintain/mmMaintain.do?method=showMMDetail&amp;f_id=CC15012734530085', '1', '3', '1', '2018-01-19 09:49:50');
INSERT INTO `hw3ms_ziliao` VALUES ('567', '374', 'asdasd', '', '', '', '0', '0', '1', '2018-01-29 10:06:47');
INSERT INTO `hw3ms_ziliao` VALUES ('566', '371', '竞争分析', '', '', '', '0', '0', '1', '2018-01-29 09:10:11');
INSERT INTO `hw3ms_ziliao` VALUES ('570', '379', 'admin', '', '', '', '0', '0', '1', '2018-01-29 18:35:47');
