/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : thinkcms

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2016-08-30 10:51:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sys_article`
-- ----------------------------
DROP TABLE IF EXISTS `sys_article`;
CREATE TABLE `sys_article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `available` bit(1) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `content` longtext,
  `create_date` date DEFAULT NULL,
  `imgUrl` varchar(255) DEFAULT NULL,
  `modify_date` date DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `show_order` int(11) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `attr` varchar(255) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_article
-- ----------------------------
INSERT INTO `sys_article` VALUES ('9', 'admin', '', '4', '新闻动态', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>复反反复复反反复复反反复复反反复复反反复复反反复复反反复复吩咐</p>\r\n<p><img src=\"http://7xkeg5.com1.z0.glb.clouddn.com/d49c4d86-7282-458b-9e9b-06528ede9a46.png\" alt=\"\" width=\"600\" height=\"600\" /></p>\r\n</body>\r\n</html>', '2016-07-12', 'http://7xkeg5.com1.z0.glb.clouddn.com/d49c4d86-7282-458b-9e9b-06528ede9a46.png', '2016-07-12', '习总书记莅临指导习总书记莅临指导习总书记莅临指导习总书记莅临指导习总书记莅临指导习总书记莅临指导习总书记莅临指导习总书记莅临指导习总书记莅临指导习总书记莅临指导习总书记莅临指导习总书记莅临指导习总书记莅临指导习总书记莅临指导习总书记莅临指导习总书记莅临指导习总书记莅临指导习总书记莅临指导习总书记莅临指导习总书记莅临指导习总书记莅临指导习总书记莅临指导习总书记莅临指导习总书记莅临指导习总书记莅临指导习总书记莅临指导习总书记莅临指导习总书记莅临指导', null, '', '习总书记莅临指导', '4', 'http://7xkeg5.com1.z0.glb.clouddn.com/8787852a-340d-4a7d-9046-d5142f46eda4.png');
INSERT INTO `sys_article` VALUES ('10', '马斯克', '', '4', '新闻动态', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>滴答滴答滴答滴答滴答滴答滴答滴答滴答滴</p>\r\n</body>\r\n</html>', '2016-07-11', 'http://7xkeg5.com1.z0.glb.clouddn.com/ed0f5f67-1995-4d3f-aee1-77d711bb42c9.png', '2016-07-11', '公司新公司新三板上市公司新三板上市公司新三板上市公司新三板上市公司新三板上市公司新三板上市公司新三板上市公司新三板上市公司新三板上市公司新三板上市公司新三板上市公司新三板上市公司新三板上市公司新三板上市公司新三板上市公司新三板上市公司新三板上市公司新三板上市公司新三板上市公司新三板上市公司新三板上市公司新三板上市公司新三板上市公司新三板上市公司新三板上市三板上市公司新三板上市公司新三板上市公司新三板上市公司新三板上市', null, '', '公司新三板上市', null, 'http://7xkeg5.com1.z0.glb.clouddn.com/0215cbb2-d177-4246-a088-160760f654e4.png');
INSERT INTO `sys_article` VALUES ('11', 'admin', '', '4', '新闻动态', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p class=\"solution-inform-content-words\">(一) 业务管理预受理单据 1) 预受理单据用于需要上门取货的客户及货物信息的录入。预受理单据可以由发货客户远程录入，也可以由业务员录入。录入的预受理单据信息主要包括以下内容： 2) 发货人信息；收货人信息；终点站、到站、付款方式是否保险（保价费）及 3) 货物信息：货物名称、货物包装、件数、运费。 <img src=\"http://7xkeg5.com1.z0.glb.clouddn.com/b7b32162-f7fa-4aba-af6b-23fc28367df9.png\" alt=\"\" width=\"500\" height=\"320\" /></p>\r\n<p class=\"solution-inform-content-words\">4) 预受理单支持多种条件组合查询。</p>\r\n<p class=\"solution-inform-content-words\">醒信息后，可以点击进入进行预受理派车操作（录入车号、默认司机信息（姓名、电话），提交派车）。 2) 也可以通过查询客户名称、可以通过日期实在营运解决方案，通过６年的不断积累，汲取数十家物流企业的实战经验，以客户为中心，以业务为纽带，为车辆调度，仓库管理，装车发货，分拣中心，卸货提货，</p>\r\n<p class=\"solution-inform-content-words\">(一) 业务管理预受理单据 1) 预受理单据用于需要上门取货的客户及货物信息的录入。预受理单据可以由发货客户远程录入，也可以由业务员录入。录入的预受理单据信息主要包括以下内容： 2) 发货人信息；收货人信息；终点站、到站、付款方式是否保险（保价费）及 3) 货物信息：货物名称、货物包装、件数、运费。 4) 预受理单支持多种条件组合查询。</p>\r\n<p class=\"solution-inform-content-words\">醒信息后，可以点击进入进行预受理派车操作（录入车号、默认司机信息（姓名、电话），提交派车）。 2) 也可以通过查询客户名称、可以通过日期实在营运解决方案，通过６年的不断积累，汲取数十家物流企业的实战经验，以客户为中心，以业务为纽带，为车辆调度，仓库管理，装车发货，分拣中心，卸货提货</p>\r\n<p class=\"solution-inform-content-words\">', '2016-07-11', 'http://7xkeg5.com1.z0.glb.clouddn.com/10c3dfe0-9a7a-4d68-af3b-799ecb5b4a21.png', '2016-07-11', '新办公楼落成新办公楼落成新办公楼落成新办公楼落成新办公楼落成新办公楼落成新办公楼落成新办公楼落成新办公楼落成新办公楼落成新办公楼落成新办公楼落成新办公楼落成新办公楼落成新办公楼落成新办公楼落成', null, '', '新办公楼落成', null, 'http://7xkeg5.com1.z0.glb.clouddn.com/950fd9ec-26e2-4a96-9da2-1583a6949bc5.png');
INSERT INTO `sys_article` VALUES ('12', 'admin', '', '5', '客户案例', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>一款响应式商城模板，是专门针对中小物流企业的实际业务需求量身定做的物流管理系统，具有界面简洁、流程灵活、操作方便、易于实施的特点。 该产品基于领先的云计算技术，用户无需在本地安装软件、无需购买专门的服务器硬件、无需专业的IT人员进行维护， 只要打开浏览器，登录网站，即可使用在线物流软件。 技术，用户无需在本地安装软件、无需购买专门的服务器硬件、无需专业的IT人员进行维护， 只要打开浏览器，登录网站，即可是专门针对中小物流企业的实际业务需求量身定做的物流管理系统，具有界面简洁、<img src=\"http://7xkeg5.com1.z0.glb.clouddn.com/0215cbb2-d177-4246-a088-160760f654e4.png\" alt=\"\" width=\"650\" height=\"520\" /></p>\r\n</body>\r\n</html>', '2016-07-11', 'http://7xkeg5.com1.z0.glb.clouddn.com/0215cbb2-d177-4246-a088-160760f654e4.png', '2016-07-11', '一款响应式商城模板，是专门针对中小物流企业的实际业务需求量身定做的物流管理系统，具有界面简洁、流程灵活、操作方便、易于实施的特点。 该产品基于领先的云计算技术，用户无需在本地安装软件、无需购买专门的服务器硬件、无需专业的IT人员进行维护， 只要打开浏览器，登录网站，即可使用在线物流软件。 技术，用户无需在本地安装软件、无需购买专门的服务器硬件、无需专业的IT人员进行维护， 只要打开浏览器，登录网站，即可是专门针对中小物流企业的实际业务需求量身定做的物流管理系统，具有界面简洁、', '1', '', '物流红娘', null, 'http://7xkeg5.com1.z0.glb.clouddn.com/950fd9ec-26e2-4a96-9da2-1583a6949bc5.png');
INSERT INTO `sys_article` VALUES ('14', '', '', '1', '关于我们', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h1 style=\"text-align: center;\"><strong><span style=\"color: #800000;\">关于我们</span></strong></h1>\r\n<p>天公路货运管理系统是华天软件为物流货运企业全力打造的一套物流网络信息化的实在营运解决方案，通过６年的不华天公路货运管理系统是华天软件为物流货运企业全力打造的一套物流网络信息化的实在营流网络信息化的实在营运解决</p>\r\n<p>天公路货运管理系统是华天软件为物流货运企业天软件为物流货运企业全力打造的一套物流网络信息化的实在营流网络信息化的实在营运解决</p>\r\n<p>天公路货运管理系统是华天软件为物流货运企业天软件为物流货运企业流网络信息化的实在营运解决</p>\r\n<p>天公路货运管理系统是华天软件为物流货运企业全力打造的一套物流网络信息化的实在营运解决方案，通过６年的不华天公路货运管理系统是华天软件为物流货运企业全力打造的一套物流网络信息化的实在营流网络信息化的实在营运解决</p>\r\n', '2016-07-11', '', '2016-07-11', '', null, '', '关于我们', null, 'http://7xkeg5.com1.z0.glb.clouddn.com/ed0f5f67-1995-4d3f-aee1-77d711bb42c9.png');

-- ----------------------------
-- Table structure for `sys_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `sys_attachment`;
CREATE TABLE `sys_attachment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_size` float DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_attachment
-- ----------------------------
INSERT INTO `sys_attachment` VALUES ('110', '2016-07-04 16:20:53', 'app3-3.png', '193.384', 'image/png', 'http://7xkeg5.com1.z0.glb.clouddn.com/ed0f5f67-1995-4d3f-aee1-77d711bb42c9.png');
INSERT INTO `sys_attachment` VALUES ('112', '2016-07-04 16:26:33', 'app2-2.png', '143.926', 'image/png', 'http://7xkeg5.com1.z0.glb.clouddn.com/d49c4d86-7282-458b-9e9b-06528ede9a46.png');
INSERT INTO `sys_attachment` VALUES ('113', '2016-07-04 17:28:59', 'space-2.png', '60.8379', 'image/png', 'http://7xkeg5.com1.z0.glb.clouddn.com/10c3dfe0-9a7a-4d68-af3b-799ecb5b4a21.png');
INSERT INTO `sys_attachment` VALUES ('114', '2016-07-04 17:30:22', 'space-1.png', '249.355', 'image/png', 'http://7xkeg5.com1.z0.glb.clouddn.com/b7b32162-f7fa-4aba-af6b-23fc28367df9.png');
INSERT INTO `sys_attachment` VALUES ('115', '2016-07-04 17:43:34', 'app6.png', '180.434', 'image/png', 'http://7xkeg5.com1.z0.glb.clouddn.com/0215cbb2-d177-4246-a088-160760f654e4.png');
INSERT INTO `sys_attachment` VALUES ('116', '2016-07-05 17:20:19', 'ptn4.png', '8.00781', 'image/png', 'http://7xkeg5.com1.z0.glb.clouddn.com/8126c7e6-11ea-4dd0-ab2b-88acb327b050.png');
INSERT INTO `sys_attachment` VALUES ('117', '2016-07-06 15:29:32', 'ptn7.png', '5.88477', 'image/png', 'http://7xkeg5.com1.z0.glb.clouddn.com/1e0c345f-be53-4e2b-8e4e-b90f63fae47f.png');
INSERT INTO `sys_attachment` VALUES ('118', '2016-07-06 17:39:28', 'space-1.png', '249.355', 'image/png', 'http://7xkeg5.com1.z0.glb.clouddn.com/8787852a-340d-4a7d-9046-d5142f46eda4.png');
INSERT INTO `sys_attachment` VALUES ('119', '2016-07-07 10:46:01', 'hw_bg.png', '225.711', 'image/png', 'http://7xkeg5.com1.z0.glb.clouddn.com/a69216c9-1fc3-498b-9575-ec207746ab49.png');
INSERT INTO `sys_attachment` VALUES ('120', '2016-07-07 10:46:22', 'hw_bg1.png', '420.738', 'image/png', 'http://7xkeg5.com1.z0.glb.clouddn.com/c75da3ff-36c1-40a5-8a5e-32dcc3966191.png');
INSERT INTO `sys_attachment` VALUES ('121', '2016-07-07 10:46:50', 'hw_bg2.png', '81.1729', 'image/png', 'http://7xkeg5.com1.z0.glb.clouddn.com/9b92d078-b791-4335-8404-b8c90940ebdc.png');
INSERT INTO `sys_attachment` VALUES ('123', '2016-07-11 15:29:41', 'logo.png', '3', 'image/png', 'http://7xkeg5.com1.z0.glb.clouddn.com/d1211476-c896-478f-8ca2-f5a9ba5d7a9f.png');
INSERT INTO `sys_attachment` VALUES ('124', '2016-07-11 16:06:08', '222.png', '308.363', 'image/png', 'http://7xkeg5.com1.z0.glb.clouddn.com/950fd9ec-26e2-4a96-9da2-1583a6949bc5.png');
INSERT INTO `sys_attachment` VALUES ('125', '2016-07-11 17:22:23', 'hw_bg.png', '225.711', 'image/png', 'http://7xkeg5.com1.z0.glb.clouddn.com/0467b3e8-b07d-4f2b-9ebe-bf26d52278b3.png');
INSERT INTO `sys_attachment` VALUES ('126', '2016-07-11 17:22:38', 'hw_bg1.png', '420.738', 'image/png', 'http://7xkeg5.com1.z0.glb.clouddn.com/cf23ded6-17d6-4520-9d5f-133b01b0f4a6.png');
INSERT INTO `sys_attachment` VALUES ('127', '2016-07-11 17:22:51', 'hw_bg3.png', '124.873', 'image/png', 'http://7xkeg5.com1.z0.glb.clouddn.com/1105c843-ff3c-48dd-befa-f8e9ee12ec0c.png');
INSERT INTO `sys_attachment` VALUES ('128', '2016-08-25 17:04:18', 'u=1028411230,3427228597&fm=21&gp=0.jpg', '7.14258', 'image/jpeg', 'http://7xkeg5.com1.z0.glb.clouddn.com/5567f400-33b8-4f29-8005-94772b8d1087.jpg');

-- ----------------------------
-- Table structure for `sys_category`
-- ----------------------------
DROP TABLE IF EXISTS `sys_category`;
CREATE TABLE `sys_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `available` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `parent_name` varchar(255) DEFAULT NULL,
  `show_order` int(11) DEFAULT NULL,
  `list_type` varchar(255) DEFAULT NULL,
  `blank` bit(1) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_category
-- ----------------------------
INSERT INTO `sys_category` VALUES ('1', '', '关于我们', '0', '根节点', '100', 'single', '', '');
INSERT INTO `sys_category` VALUES ('4', '', '新闻动态', '0', '根节点', '5', 'list-article', '', '');
INSERT INTO `sys_category` VALUES ('5', '', '客户案例', '0', '根节点', '1', 'list-case', '', '');

-- ----------------------------
-- Table structure for `sys_category_article`
-- ----------------------------
DROP TABLE IF EXISTS `sys_category_article`;
CREATE TABLE `sys_category_article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `article_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_category_article
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_friendship_link`
-- ----------------------------
DROP TABLE IF EXISTS `sys_friendship_link`;
CREATE TABLE `sys_friendship_link` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `available` bit(1) DEFAULT NULL,
  `show_order` int(11) DEFAULT NULL,
  `site_logo` varchar(255) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `site_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_friendship_link
-- ----------------------------
INSERT INTO `sys_friendship_link` VALUES ('9', '', '2', 'http://7xkeg5.com1.z0.glb.clouddn.com/ed0f5f67-1995-4d3f-aee1-77d711bb42c9.png', '想222', 'http://www.baidu.com');
INSERT INTO `sys_friendship_link` VALUES ('10', '', '2', 'http://7xkeg5.com1.z0.glb.clouddn.com/8126c7e6-11ea-4dd0-ab2b-88acb327b050.png', '想111', 'http://www.qq.com');

-- ----------------------------
-- Table structure for `sys_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `sys_permissions`;
CREATE TABLE `sys_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `available` bit(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `show_order` varchar(255) DEFAULT NULL,
  `parent_name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_permissions
-- ----------------------------
INSERT INTO `sys_permissions` VALUES ('1', '', '根节点', 'root', '0', null, null, null);
INSERT INTO `sys_permissions` VALUES ('2', '', '首页', 'admin/index', '1', '1', '根节点', 'am-icon-home');
INSERT INTO `sys_permissions` VALUES ('3', '', '系统管理', 'admin', '1', '2', '根节点', 'am-icon-calendar');
INSERT INTO `sys_permissions` VALUES ('4', '', '菜单管理', 'menu/list', '3', '4', '系统管理', null);
INSERT INTO `sys_permissions` VALUES ('6', '', '用户管理', 'user/list', '3', '4', '系统管理', 'am-icon-github');
INSERT INTO `sys_permissions` VALUES ('43', '', '角色管理', 'role/list', '3', '2', '系统管理', 'am-icon-drupal');
INSERT INTO `sys_permissions` VALUES ('49', '', '菜单新增', 'menu/add', '4', '1', '菜单管理', '');
INSERT INTO `sys_permissions` VALUES ('50', '', '菜单修改', 'menu/edit', '4', '5', '菜单管理', '');
INSERT INTO `sys_permissions` VALUES ('51', '', '菜单删除', 'menu/del', '4', null, '菜单管理', '');
INSERT INTO `sys_permissions` VALUES ('52', '', '内容管理', 'cms', '1', '2', '根节点', 'am-icon-th');
INSERT INTO `sys_permissions` VALUES ('53', '', '栏目管理', 'category/list', '52', '1', '内容管理', '');
INSERT INTO `sys_permissions` VALUES ('54', '', '栏目新增', 'category/add', '53', '1', '栏目管理', '');
INSERT INTO `sys_permissions` VALUES ('55', '', '栏目修改', 'category/edit', '53', '2', '栏目管理', '');
INSERT INTO `sys_permissions` VALUES ('56', '', '栏目删除', 'category/del', '53', '3', '栏目管理', '');
INSERT INTO `sys_permissions` VALUES ('57', '', '文章管理', 'article/list', '52', '2', '内容管理', '');
INSERT INTO `sys_permissions` VALUES ('58', '', '文章新增', 'article/add', '57', '1', '文章管理', '');
INSERT INTO `sys_permissions` VALUES ('59', '', '文章修改', 'article/edit', '57', '2', '文章管理', '');
INSERT INTO `sys_permissions` VALUES ('60', '', '文章删除', 'article/del', '57', '3', '文章管理', '');
INSERT INTO `sys_permissions` VALUES ('61', '', '附件管理', 'attachment/list', '52', '3', '内容管理', '');
INSERT INTO `sys_permissions` VALUES ('62', '', '附件新增', 'attachment/add', '61', '1', '附件管理', '');
INSERT INTO `sys_permissions` VALUES ('63', '', '附件修改', 'attachment/edit', '61', '2', '附件管理', '');
INSERT INTO `sys_permissions` VALUES ('64', '', '附件删除', 'attachment/del', '61', '3', '附件管理', '');
INSERT INTO `sys_permissions` VALUES ('65', '', '用户新增', 'user/add', '6', '1', '用户管理', 'am-icon-drupal');
INSERT INTO `sys_permissions` VALUES ('66', '', '用户修改', 'user/edit', '6', '2', '用户管理', '');
INSERT INTO `sys_permissions` VALUES ('67', '', '用户删除', 'user/del', '6', '3', '用户管理', '');
INSERT INTO `sys_permissions` VALUES ('68', '', '系统设置', 'system', '1', '9', '根节点', 'am-icon-shield');
INSERT INTO `sys_permissions` VALUES ('69', '', '角色新增', 'role/add', '43', '1', '角色管理', '');
INSERT INTO `sys_permissions` VALUES ('70', '', '角色修改', 'role/edit', '43', '2', '角色管理', '');
INSERT INTO `sys_permissions` VALUES ('71', '', '角色删除', 'role/del', '43', '3', '角色管理', '');
INSERT INTO `sys_permissions` VALUES ('72', '', '友情链接', 'friendshipLink/list', '68', '1', '系统设置', '');
INSERT INTO `sys_permissions` VALUES ('73', '', '链接新增', 'friendshipLink/add', '72', '1', '友情链接', '');
INSERT INTO `sys_permissions` VALUES ('74', '', '链接修改', 'friendshipLink/edit', '72', '3', '友情链接', '');
INSERT INTO `sys_permissions` VALUES ('75', '', '链接删除', 'friendshipLink/del', '72', '4', '友情链接', '');
INSERT INTO `sys_permissions` VALUES ('76', '', '站点设置', 'siteInfo/edit', '68', '0', '系统设置', '');
INSERT INTO `sys_permissions` VALUES ('77', '', '幻灯管理', 'slideImg/list', '52', '1', '内容管理', '');
INSERT INTO `sys_permissions` VALUES ('78', '', '幻灯新增', 'slideImg/add', '77', '1', '幻灯管理', '');
INSERT INTO `sys_permissions` VALUES ('79', '', '幻灯修改', 'slideImg/edit', '77', '2', '幻灯管理', '');
INSERT INTO `sys_permissions` VALUES ('80', '', '幻灯删除', 'slideImg/del', '77', '3', '幻灯管理', '');
INSERT INTO `sys_permissions` VALUES ('82', '', '球场管理', 'stadium/list', '52', '5', '内容管理', '');
INSERT INTO `sys_permissions` VALUES ('83', '', '球场新增', 'stadium/add', '82', null, '球场管理', '');
INSERT INTO `sys_permissions` VALUES ('84', '', '球场删除', 'stadium/del', '82', null, '球场管理', '');
INSERT INTO `sys_permissions` VALUES ('85', '', '球场编辑', 'stadium/edit', '82', null, '球场管理', '');

-- ----------------------------
-- Table structure for `sys_roles`
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles`;
CREATE TABLE `sys_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `available` bit(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `show_order` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_roles
-- ----------------------------
INSERT INTO `sys_roles` VALUES ('6', '', '超级管理员', 'admin', '');
INSERT INTO `sys_roles` VALUES ('7', '', '测试', 'test', '');

-- ----------------------------
-- Table structure for `sys_roles_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_permissions`;
CREATE TABLE `sys_roles_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `permission_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=380 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_roles_permissions
-- ----------------------------
INSERT INTO `sys_roles_permissions` VALUES ('19', '2', '8');
INSERT INTO `sys_roles_permissions` VALUES ('20', '3', '8');
INSERT INTO `sys_roles_permissions` VALUES ('21', '43', '8');
INSERT INTO `sys_roles_permissions` VALUES ('22', '4', '8');
INSERT INTO `sys_roles_permissions` VALUES ('23', '51', '8');
INSERT INTO `sys_roles_permissions` VALUES ('24', '49', '8');
INSERT INTO `sys_roles_permissions` VALUES ('25', '50', '8');
INSERT INTO `sys_roles_permissions` VALUES ('26', '6', '8');
INSERT INTO `sys_roles_permissions` VALUES ('27', '2', '9');
INSERT INTO `sys_roles_permissions` VALUES ('28', '3', '9');
INSERT INTO `sys_roles_permissions` VALUES ('29', '43', '9');
INSERT INTO `sys_roles_permissions` VALUES ('30', '4', '9');
INSERT INTO `sys_roles_permissions` VALUES ('31', '51', '9');
INSERT INTO `sys_roles_permissions` VALUES ('32', '49', '9');
INSERT INTO `sys_roles_permissions` VALUES ('33', '50', '9');
INSERT INTO `sys_roles_permissions` VALUES ('34', '6', '9');
INSERT INTO `sys_roles_permissions` VALUES ('35', '2', '10');
INSERT INTO `sys_roles_permissions` VALUES ('36', '3', '10');
INSERT INTO `sys_roles_permissions` VALUES ('37', '43', '10');
INSERT INTO `sys_roles_permissions` VALUES ('38', '4', '10');
INSERT INTO `sys_roles_permissions` VALUES ('39', '51', '10');
INSERT INTO `sys_roles_permissions` VALUES ('40', '49', '10');
INSERT INTO `sys_roles_permissions` VALUES ('41', '50', '10');
INSERT INTO `sys_roles_permissions` VALUES ('42', '6', '10');
INSERT INTO `sys_roles_permissions` VALUES ('43', '2', '11');
INSERT INTO `sys_roles_permissions` VALUES ('44', '3', '11');
INSERT INTO `sys_roles_permissions` VALUES ('45', '43', '11');
INSERT INTO `sys_roles_permissions` VALUES ('46', '4', '11');
INSERT INTO `sys_roles_permissions` VALUES ('47', '51', '11');
INSERT INTO `sys_roles_permissions` VALUES ('48', '49', '11');
INSERT INTO `sys_roles_permissions` VALUES ('49', '50', '11');
INSERT INTO `sys_roles_permissions` VALUES ('50', '6', '11');
INSERT INTO `sys_roles_permissions` VALUES ('51', '2', '12');
INSERT INTO `sys_roles_permissions` VALUES ('52', '3', '12');
INSERT INTO `sys_roles_permissions` VALUES ('53', '43', '12');
INSERT INTO `sys_roles_permissions` VALUES ('54', '4', '12');
INSERT INTO `sys_roles_permissions` VALUES ('55', '51', '12');
INSERT INTO `sys_roles_permissions` VALUES ('56', '49', '12');
INSERT INTO `sys_roles_permissions` VALUES ('57', '50', '12');
INSERT INTO `sys_roles_permissions` VALUES ('58', '6', '12');
INSERT INTO `sys_roles_permissions` VALUES ('59', '2', '13');
INSERT INTO `sys_roles_permissions` VALUES ('60', '3', '13');
INSERT INTO `sys_roles_permissions` VALUES ('61', '43', '13');
INSERT INTO `sys_roles_permissions` VALUES ('62', '4', '13');
INSERT INTO `sys_roles_permissions` VALUES ('63', '51', '13');
INSERT INTO `sys_roles_permissions` VALUES ('64', '49', '13');
INSERT INTO `sys_roles_permissions` VALUES ('65', '50', '13');
INSERT INTO `sys_roles_permissions` VALUES ('66', '6', '13');
INSERT INTO `sys_roles_permissions` VALUES ('67', '2', '14');
INSERT INTO `sys_roles_permissions` VALUES ('68', '3', '14');
INSERT INTO `sys_roles_permissions` VALUES ('69', '43', '14');
INSERT INTO `sys_roles_permissions` VALUES ('70', '4', '14');
INSERT INTO `sys_roles_permissions` VALUES ('71', '51', '14');
INSERT INTO `sys_roles_permissions` VALUES ('72', '49', '14');
INSERT INTO `sys_roles_permissions` VALUES ('73', '50', '14');
INSERT INTO `sys_roles_permissions` VALUES ('74', '6', '14');
INSERT INTO `sys_roles_permissions` VALUES ('308', '2', '7');
INSERT INTO `sys_roles_permissions` VALUES ('309', '3', '7');
INSERT INTO `sys_roles_permissions` VALUES ('310', '43', '7');
INSERT INTO `sys_roles_permissions` VALUES ('311', '69', '7');
INSERT INTO `sys_roles_permissions` VALUES ('312', '4', '7');
INSERT INTO `sys_roles_permissions` VALUES ('313', '49', '7');
INSERT INTO `sys_roles_permissions` VALUES ('314', '6', '7');
INSERT INTO `sys_roles_permissions` VALUES ('315', '65', '7');
INSERT INTO `sys_roles_permissions` VALUES ('316', '52', '7');
INSERT INTO `sys_roles_permissions` VALUES ('317', '53', '7');
INSERT INTO `sys_roles_permissions` VALUES ('318', '54', '7');
INSERT INTO `sys_roles_permissions` VALUES ('319', '55', '7');
INSERT INTO `sys_roles_permissions` VALUES ('320', '56', '7');
INSERT INTO `sys_roles_permissions` VALUES ('321', '77', '7');
INSERT INTO `sys_roles_permissions` VALUES ('322', '78', '7');
INSERT INTO `sys_roles_permissions` VALUES ('323', '79', '7');
INSERT INTO `sys_roles_permissions` VALUES ('324', '80', '7');
INSERT INTO `sys_roles_permissions` VALUES ('325', '57', '7');
INSERT INTO `sys_roles_permissions` VALUES ('326', '58', '7');
INSERT INTO `sys_roles_permissions` VALUES ('327', '59', '7');
INSERT INTO `sys_roles_permissions` VALUES ('328', '60', '7');
INSERT INTO `sys_roles_permissions` VALUES ('329', '61', '7');
INSERT INTO `sys_roles_permissions` VALUES ('330', '62', '7');
INSERT INTO `sys_roles_permissions` VALUES ('331', '63', '7');
INSERT INTO `sys_roles_permissions` VALUES ('332', '64', '7');
INSERT INTO `sys_roles_permissions` VALUES ('333', '68', '7');
INSERT INTO `sys_roles_permissions` VALUES ('334', '76', '7');
INSERT INTO `sys_roles_permissions` VALUES ('335', '72', '7');
INSERT INTO `sys_roles_permissions` VALUES ('336', '73', '7');
INSERT INTO `sys_roles_permissions` VALUES ('337', '74', '7');
INSERT INTO `sys_roles_permissions` VALUES ('338', '75', '7');
INSERT INTO `sys_roles_permissions` VALUES ('339', '2', '6');
INSERT INTO `sys_roles_permissions` VALUES ('340', '3', '6');
INSERT INTO `sys_roles_permissions` VALUES ('341', '43', '6');
INSERT INTO `sys_roles_permissions` VALUES ('342', '69', '6');
INSERT INTO `sys_roles_permissions` VALUES ('343', '70', '6');
INSERT INTO `sys_roles_permissions` VALUES ('344', '71', '6');
INSERT INTO `sys_roles_permissions` VALUES ('345', '4', '6');
INSERT INTO `sys_roles_permissions` VALUES ('346', '51', '6');
INSERT INTO `sys_roles_permissions` VALUES ('347', '49', '6');
INSERT INTO `sys_roles_permissions` VALUES ('348', '50', '6');
INSERT INTO `sys_roles_permissions` VALUES ('349', '6', '6');
INSERT INTO `sys_roles_permissions` VALUES ('350', '65', '6');
INSERT INTO `sys_roles_permissions` VALUES ('351', '66', '6');
INSERT INTO `sys_roles_permissions` VALUES ('352', '67', '6');
INSERT INTO `sys_roles_permissions` VALUES ('353', '52', '6');
INSERT INTO `sys_roles_permissions` VALUES ('354', '53', '6');
INSERT INTO `sys_roles_permissions` VALUES ('355', '54', '6');
INSERT INTO `sys_roles_permissions` VALUES ('356', '55', '6');
INSERT INTO `sys_roles_permissions` VALUES ('357', '56', '6');
INSERT INTO `sys_roles_permissions` VALUES ('358', '77', '6');
INSERT INTO `sys_roles_permissions` VALUES ('359', '78', '6');
INSERT INTO `sys_roles_permissions` VALUES ('360', '79', '6');
INSERT INTO `sys_roles_permissions` VALUES ('361', '80', '6');
INSERT INTO `sys_roles_permissions` VALUES ('362', '57', '6');
INSERT INTO `sys_roles_permissions` VALUES ('363', '58', '6');
INSERT INTO `sys_roles_permissions` VALUES ('364', '59', '6');
INSERT INTO `sys_roles_permissions` VALUES ('365', '60', '6');
INSERT INTO `sys_roles_permissions` VALUES ('366', '61', '6');
INSERT INTO `sys_roles_permissions` VALUES ('367', '62', '6');
INSERT INTO `sys_roles_permissions` VALUES ('368', '63', '6');
INSERT INTO `sys_roles_permissions` VALUES ('369', '64', '6');
INSERT INTO `sys_roles_permissions` VALUES ('370', '82', '6');
INSERT INTO `sys_roles_permissions` VALUES ('371', '83', '6');
INSERT INTO `sys_roles_permissions` VALUES ('372', '84', '6');
INSERT INTO `sys_roles_permissions` VALUES ('373', '85', '6');
INSERT INTO `sys_roles_permissions` VALUES ('374', '68', '6');
INSERT INTO `sys_roles_permissions` VALUES ('375', '76', '6');
INSERT INTO `sys_roles_permissions` VALUES ('376', '72', '6');
INSERT INTO `sys_roles_permissions` VALUES ('377', '73', '6');
INSERT INTO `sys_roles_permissions` VALUES ('378', '74', '6');
INSERT INTO `sys_roles_permissions` VALUES ('379', '75', '6');

-- ----------------------------
-- Table structure for `sys_site_info`
-- ----------------------------
DROP TABLE IF EXISTS `sys_site_info`;
CREATE TABLE `sys_site_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contact_addr` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_fixed_phone` varchar(255) DEFAULT NULL,
  `contact_mobile_phone` varchar(255) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `site_logo` varchar(255) DEFAULT NULL,
  `site_modal` varchar(255) DEFAULT NULL,
  `site_template` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_site_info
-- ----------------------------
INSERT INTO `sys_site_info` VALUES ('1', '四川省成都市高新区软件园F区菁蓉国际', 'thinkcms@163.com', '028-8329888', '15928165825', 'YY足球', '-专注业余足球场地信息收集整理,赛事活动组织', 'http://7xkeg5.com1.z0.glb.clouddn.com/d1211476-c896-478f-8ca2-f5a9ba5d7a9f.png', null, 'football');

-- ----------------------------
-- Table structure for `sys_slide_img`
-- ----------------------------
DROP TABLE IF EXISTS `sys_slide_img`;
CREATE TABLE `sys_slide_img` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `alt` varchar(255) DEFAULT NULL,
  `available` bit(1) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `show_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_slide_img
-- ----------------------------
INSERT INTO `sys_slide_img` VALUES ('1', '公司成立1', '', 'http://7xkeg5.com1.z0.glb.clouddn.com/0467b3e8-b07d-4f2b-9ebe-bf26d52278b3.png', '2');
INSERT INTO `sys_slide_img` VALUES ('3', '1', '', 'http://7xkeg5.com1.z0.glb.clouddn.com/cf23ded6-17d6-4520-9d5f-133b01b0f4a6.png', '2');
INSERT INTO `sys_slide_img` VALUES ('4', '22', '', 'http://7xkeg5.com1.z0.glb.clouddn.com/1105c843-ff3c-48dd-befa-f8e9ee12ec0c.png', null);

-- ----------------------------
-- Table structure for `sys_users`
-- ----------------------------
DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `department` varchar(255) DEFAULT NULL,
  `locked` bit(1) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `nice_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_users
-- ----------------------------
INSERT INTO `sys_users` VALUES ('2', '产品技术部', '', '15928165825', '张三', '1fc309f0ad2d84330f134bdea19cff2d', '64ea3bdf3dee60e6cb4da5f50813205c', 'admin');
INSERT INTO `sys_users` VALUES ('6', '文化传播部', '', '15988888888', '托尔斯泰', 'ae2cc871e5c6e2222a0c5a6e3d103076', '80416718d825a39d826ef479f31edab4', 'test');
INSERT INTO `sys_users` VALUES ('7', '1', '', '15928821830', '1', '404405b55d96db8d2d46d91e4d179377', '81845a6dd59c53969161682cd417a721', 'test123');
INSERT INTO `sys_users` VALUES ('8', 'aa', '', '15928165825', 'aaa', 'ac85b57e70d3930e2d3decab70ebff8b', 'ab678dfd72939822108068dc35caa033', 'aaa');

-- ----------------------------
-- Table structure for `sys_users_roles`
-- ----------------------------
DROP TABLE IF EXISTS `sys_users_roles`;
CREATE TABLE `sys_users_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_users_roles
-- ----------------------------
INSERT INTO `sys_users_roles` VALUES ('5', '6', '2');
INSERT INTO `sys_users_roles` VALUES ('6', '7', '6');
INSERT INTO `sys_users_roles` VALUES ('7', '7', '7');
INSERT INTO `sys_users_roles` VALUES ('9', '7', '8');

-- ----------------------------
-- Table structure for `zq_stadium`
-- ----------------------------
DROP TABLE IF EXISTS `zq_stadium`;
CREATE TABLE `zq_stadium` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addr` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `contMan` varchar(255) DEFAULT NULL,
  `contPhone` varchar(255) DEFAULT NULL,
  `contQQ` varchar(255) DEFAULT NULL,
  `contQqun` varchar(255) DEFAULT NULL,
  `contWb` varchar(255) DEFAULT NULL,
  `contWx` varchar(255) DEFAULT NULL,
  `lamplight` varchar(255) DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `openTime` varchar(255) DEFAULT NULL,
  `showImg` varchar(255) DEFAULT NULL,
  `siteInfo` varchar(255) DEFAULT NULL,
  `siteType` varchar(255) DEFAULT NULL,
  `sod` varchar(255) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_stadium
-- ----------------------------
INSERT INTO `zq_stadium` VALUES ('23', '武侯区昆华路919-10号', '武侯区->大源', '成都', '老杨', '028-86035000', '无', '无', '无', '无', '有灯光', null, '猎豹足球俱乐部', '9:00-22:00', 'http://7xkeg5.com1.z0.glb.clouddn.com/5567f400-33b8-4f29-8005-94772b8d1087.jpg', '一共三块场地,在大源公园里面.有两块是平时是开放的免费球场.', '室外五人制|5-7人', '人造草皮', '2016-08-25 15:12:57');
INSERT INTO `zq_stadium` VALUES ('24', '淡淡的', '高新区', '成都', '无无', '无', '无', '无', '无', '无', '有灯光', null, '绿洲足球俱乐部', '8：00-20：00', 'http://7xkeg5.com1.z0.glb.clouddn.com/1105c843-ff3c-48dd-befa-f8e9ee12ec0c.png', '无', '室外五人制', '人工草皮', '2016-08-25 18:16:53');
