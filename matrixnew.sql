/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : matrix

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2017-08-02 08:29:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `matrix_barrage`
-- ----------------------------
DROP TABLE IF EXISTS `matrix_barrage`;
CREATE TABLE `matrix_barrage` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '弹幕表主键id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `video_id` int(11) DEFAULT NULL COMMENT '视频id',
  `post_time` datetime DEFAULT NULL COMMENT '弹幕时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of matrix_barrage
-- ----------------------------

-- ----------------------------
-- Table structure for `matrix_category`
-- ----------------------------
DROP TABLE IF EXISTS `matrix_category`;
CREATE TABLE `matrix_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类表主键id',
  `parent_id` int(11) DEFAULT NULL COMMENT '父类别id当id=0时说明是根节点,一级类别',
  `name` varchar(50) DEFAULT NULL COMMENT '分类名称',
  `status` tinyint(1) DEFAULT '1' COMMENT '分类状态1-正常,2-已废弃',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100032 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of matrix_category
-- ----------------------------
INSERT INTO `matrix_category` VALUES ('100001', '0', '家用电器', '1', '2017-03-25 16:46:00', '2017-03-25 16:46:00');
INSERT INTO `matrix_category` VALUES ('100002', '0', '数码3C', '1', '2017-03-25 16:46:21', '2017-03-25 16:46:21');
INSERT INTO `matrix_category` VALUES ('100003', '0', '服装箱包', '1', '2017-03-25 16:49:53', '2017-03-25 16:49:53');
INSERT INTO `matrix_category` VALUES ('100004', '0', '食品生鲜', '1', '2017-03-25 16:50:19', '2017-03-25 16:50:19');
INSERT INTO `matrix_category` VALUES ('100005', '0', '酒水饮料', '1', '2017-03-25 16:50:29', '2017-03-25 16:50:29');
INSERT INTO `matrix_category` VALUES ('100006', '100001', '冰箱', '1', '2017-03-25 16:52:15', '2017-03-25 16:52:15');
INSERT INTO `matrix_category` VALUES ('100007', '100001', '电视', '1', '2017-03-25 16:52:26', '2017-03-25 16:52:26');
INSERT INTO `matrix_category` VALUES ('100008', '100001', '洗衣机', '1', '2017-03-25 16:52:39', '2017-03-25 16:52:39');
INSERT INTO `matrix_category` VALUES ('100009', '100001', '空调', '1', '2017-03-25 16:52:45', '2017-03-25 16:52:45');
INSERT INTO `matrix_category` VALUES ('100010', '100001', '电热水器', '1', '2017-03-25 16:52:54', '2017-03-25 16:52:54');
INSERT INTO `matrix_category` VALUES ('100011', '100002', '电脑', '1', '2017-03-25 16:53:18', '2017-03-25 16:53:18');
INSERT INTO `matrix_category` VALUES ('100012', '100002', '手机', '1', '2017-03-25 16:53:27', '2017-03-25 16:53:27');
INSERT INTO `matrix_category` VALUES ('100013', '100002', '平板电脑', '1', '2017-03-25 16:53:35', '2017-03-25 16:53:35');
INSERT INTO `matrix_category` VALUES ('100014', '100002', '数码相机', '1', '2017-03-25 16:53:56', '2017-03-25 16:53:56');
INSERT INTO `matrix_category` VALUES ('100015', '100002', '3C配件', '1', '2017-03-25 16:54:07', '2017-03-25 16:54:07');
INSERT INTO `matrix_category` VALUES ('100016', '100003', '女装', '1', '2017-03-25 16:54:44', '2017-03-25 16:54:44');
INSERT INTO `matrix_category` VALUES ('100017', '100003', '帽子', '1', '2017-03-25 16:54:51', '2017-03-25 16:54:51');
INSERT INTO `matrix_category` VALUES ('100018', '100003', '旅行箱', '1', '2017-03-25 16:55:02', '2017-03-25 16:55:02');
INSERT INTO `matrix_category` VALUES ('100019', '100003', '手提包', '1', '2017-03-25 16:55:09', '2017-03-25 16:55:09');
INSERT INTO `matrix_category` VALUES ('100020', '100003', '保暖内衣', '1', '2017-03-25 16:55:18', '2017-03-25 16:55:18');
INSERT INTO `matrix_category` VALUES ('100021', '100004', '零食', '1', '2017-03-25 16:55:30', '2017-03-25 16:55:30');
INSERT INTO `matrix_category` VALUES ('100022', '100004', '生鲜', '1', '2017-03-25 16:55:37', '2017-03-25 16:55:37');
INSERT INTO `matrix_category` VALUES ('100023', '100004', '半成品菜', '1', '2017-03-25 16:55:47', '2017-03-25 16:55:47');
INSERT INTO `matrix_category` VALUES ('100024', '100004', '速冻食品', '1', '2017-03-25 16:55:56', '2017-03-25 16:55:56');
INSERT INTO `matrix_category` VALUES ('100025', '100004', '进口食品', '1', '2017-03-25 16:56:06', '2017-03-25 16:56:06');
INSERT INTO `matrix_category` VALUES ('100026', '100005', '白酒', '1', '2017-03-25 16:56:22', '2017-03-25 16:56:22');
INSERT INTO `matrix_category` VALUES ('100027', '100005', '红酒', '1', '2017-03-25 16:56:30', '2017-03-25 16:56:30');
INSERT INTO `matrix_category` VALUES ('100028', '100005', '饮料', '1', '2017-03-25 16:56:37', '2017-03-25 16:56:37');
INSERT INTO `matrix_category` VALUES ('100029', '100005', '调制鸡尾酒', '1', '2017-03-25 16:56:45', '2017-03-25 16:56:45');
INSERT INTO `matrix_category` VALUES ('100030', '100005', '进口洋酒', '1', '2017-03-25 16:57:05', '2017-03-25 16:57:05');
INSERT INTO `matrix_category` VALUES ('100031', '0', '已经修改的家用电器子分类名称', '1', '2017-05-10 15:43:40', '2017-05-10 15:43:40');

-- ----------------------------
-- Table structure for `matrix_comment`
-- ----------------------------
DROP TABLE IF EXISTS `matrix_comment`;
CREATE TABLE `matrix_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论表主键id',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `video_id` datetime DEFAULT NULL COMMENT '视频id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of matrix_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `matrix_favourite`
-- ----------------------------
DROP TABLE IF EXISTS `matrix_favourite`;
CREATE TABLE `matrix_favourite` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '收藏表主键id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `video_id` int(11) DEFAULT NULL COMMENT '视频id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of matrix_favourite
-- ----------------------------
INSERT INTO `matrix_favourite` VALUES ('1', '1', '1', '2017-08-01 11:08:10', '2017-08-15 11:08:13');

-- ----------------------------
-- Table structure for `matrix_label`
-- ----------------------------
DROP TABLE IF EXISTS `matrix_label`;
CREATE TABLE `matrix_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标签表主键id',
  `name` varchar(255) DEFAULT NULL COMMENT '标签名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of matrix_label
-- ----------------------------
INSERT INTO `matrix_label` VALUES ('1', 'html');
INSERT INTO `matrix_label` VALUES ('2', 'java');
INSERT INTO `matrix_label` VALUES ('3', 'css');
INSERT INTO `matrix_label` VALUES ('4', 'ExMobi');
INSERT INTO `matrix_label` VALUES ('5', 'bootstrap');
INSERT INTO `matrix_label` VALUES ('6', 'css3');
INSERT INTO `matrix_label` VALUES ('7', 'c');
INSERT INTO `matrix_label` VALUES ('8', 'html5');

-- ----------------------------
-- Table structure for `matrix_tip`
-- ----------------------------
DROP TABLE IF EXISTS `matrix_tip`;
CREATE TABLE `matrix_tip` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '此表备用id',
  `user_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `video_id` int(11) DEFAULT NULL,
  `post_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of matrix_tip
-- ----------------------------

-- ----------------------------
-- Table structure for `matrix_user`
-- ----------------------------
DROP TABLE IF EXISTS `matrix_user`;
CREATE TABLE `matrix_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户表主键id，序列，自增长，主键不为空',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户账号，唯一',
  `nickname` varchar(20) DEFAULT NULL COMMENT '账号昵称',
  `password` varchar(32) NOT NULL COMMENT '账号密码',
  `tel` varchar(20) DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) DEFAULT NULL COMMENT '邮件',
  `sex` int(1) DEFAULT '0' COMMENT '性别（0：男， 1：女   默认：0）',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `valid` int(11) DEFAULT '0' COMMENT '是否删除(1：删除     0：不删除        默认：0)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间  yyyy-mm-dd HH:mi:ss',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间  yyyy-mm-dd HH:mi:ss',
  `authority` int(11) DEFAULT NULL COMMENT '权限等级 0到9',
  `last_login` datetime DEFAULT NULL COMMENT '上次登录时间',
  `current_login` datetime DEFAULT NULL COMMENT '本次登陆时间',
  `last_ip` varchar(255) DEFAULT NULL COMMENT '上次登陆IP',
  `current_ip` varchar(255) DEFAULT NULL COMMENT '本次登陆IP',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of matrix_user
-- ----------------------------
INSERT INTO `matrix_user` VALUES ('2', 'admin_2', 'nickname', 'e10adc3949ba59abbe56e057f20f883e', '1234567890', 'admin@admin.com', '0', '2017-07-01', '0', '2017-07-01 00:23:00', '2017-07-24 00:23:50', '9', '2017-07-01 00:00:00', '2017-07-24 00:24:56', '127.0.0.1', '127.0.0.1');
INSERT INTO `matrix_user` VALUES ('3', 'admin_3', 'nickname', 'e10adc3949ba59abbe56e057f20f883e', '1234567890', 'admin@admin.com', '0', '2017-07-01', '0', '2017-07-01 00:23:00', '2017-07-24 00:23:50', '9', '2017-07-01 00:00:00', '2017-07-24 00:24:56', '127.0.0.1', '127.0.0.1');
INSERT INTO `matrix_user` VALUES ('4', 'admin_4', 'nickname', 'e10adc3949ba59abbe56e057f20f883e', '1234567890', 'admin@admin.com', '0', '2017-07-01', '0', '2017-07-01 00:23:00', '2017-07-24 00:23:50', '9', '2017-07-01 00:00:00', '2017-07-24 00:24:56', '127.0.0.1', '127.0.0.1');
INSERT INTO `matrix_user` VALUES ('5', 'admin_5', 'nickname', 'e10adc3949ba59abbe56e057f20f883e', '1234567890', 'admin@admin.com', '0', '2017-07-01', '0', '2017-07-01 00:23:00', '2017-07-24 00:23:50', '9', '2017-07-01 00:00:00', '2017-07-24 00:24:56', '127.0.0.1', '127.0.0.1');
INSERT INTO `matrix_user` VALUES ('6', 'tuser', 'nickname', 'e10adc3949ba59abbe56e057f20f883e', '1234567890', 'tuser@admin.com', '0', '2017-07-01', '0', '2017-07-01 00:23:00', '2017-07-24 00:23:50', '1', '2017-07-01 00:00:00', '2017-07-24 00:24:56', '127.0.0.1', '127.0.0.1');
INSERT INTO `matrix_user` VALUES ('9', 'admin', 'nickname', 'e10adc3949ba59abbe56e057f20f883e', '1234567890', 'admin@999.com', '0', '2017-07-01', '0', '2017-07-01 00:23:00', '2017-08-01 13:56:53', '9', '2017-07-01 00:00:00', '2017-07-31 10:44:34', '127.0.0.1', '127.0.0.1');
INSERT INTO `matrix_user` VALUES ('10', 'admmm', 'nicknn', 'E53A0A2978C28872A4505BDB51DB06DC', '13888888888', 'admin@111.com', null, null, null, '2017-08-01 13:48:39', '2017-08-01 13:48:39', null, null, null, null, null);
INSERT INTO `matrix_user` VALUES ('11', 'admmmd', 'nsfdfsd', 'E53A0A2978C28872A4505BDB51DB06DC', '13888888888', 'admin@222.com', null, null, null, '2017-08-01 13:49:30', '2017-08-01 13:49:30', null, null, null, null, null);

-- ----------------------------
-- Table structure for `matrix_video`
-- ----------------------------
DROP TABLE IF EXISTS `matrix_video`;
CREATE TABLE `matrix_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '视频表主键id',
  `category_id` int(11) DEFAULT NULL COMMENT '分类id',
  `title` varchar(255) DEFAULT NULL COMMENT '视频标题',
  `detail` varchar(8192) DEFAULT NULL COMMENT '介绍',
  `url` varchar(255) DEFAULT NULL COMMENT '视频地址',
  `remark` int(255) DEFAULT NULL COMMENT '标签id',
  `image` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `status` int(11) DEFAULT '1' COMMENT '视频状态.1-可看 2-下架 3-删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of matrix_video
-- ----------------------------
INSERT INTO `matrix_video` VALUES ('30', '15', '标题', '介绍2', '视频地址2', '1', '图片地址2', '1', '2017-07-31 19:58:34', '2017-07-31 19:58:36');
INSERT INTO `matrix_video` VALUES ('31', '10', '标题10', '介绍10', '视频地址10', '2', '图片地址10', '10', '2017-07-31 20:47:15', '2017-07-31 20:47:15');
INSERT INTO `matrix_video` VALUES ('32', '11', '标题11', '介绍11', '视频地址11', '3', '图片地址11', '11', '2017-07-31 20:47:16', '2017-07-31 20:47:16');
INSERT INTO `matrix_video` VALUES ('33', '12', '标题12', '介绍12', '视频地址12', '4', '图片地址12', '12', '2017-07-31 20:47:16', '2017-07-31 20:47:16');
INSERT INTO `matrix_video` VALUES ('34', '13', '标题13', '介绍13', '视频地址13', '5', '图片地址13', '13', '2017-07-31 20:47:16', '2017-07-31 20:47:16');
INSERT INTO `matrix_video` VALUES ('35', '14', '标题14', '介绍14', '视频地址14', '6', '图片地址14', '14', '2017-07-31 20:47:16', '2017-07-31 20:47:16');
INSERT INTO `matrix_video` VALUES ('36', '15', '标题15', '介绍15', '视频地址15', '7', '图片地址15', '15', '2017-07-31 20:47:16', '2017-07-31 20:47:16');
INSERT INTO `matrix_video` VALUES ('37', '16', '标题16', '介绍16', '视频地址16', '8', '图片地址16', '16', '2017-07-31 20:47:16', '2017-07-31 20:47:16');
INSERT INTO `matrix_video` VALUES ('38', '17', '标题17', '介绍17', '视频地址17', '1', '图片地址17', '17', '2017-07-31 20:47:16', '2017-07-31 20:47:16');
INSERT INTO `matrix_video` VALUES ('39', '18', '标题18', '介绍18', '视频地址18', '2', '图片地址18', '18', '2017-07-31 20:47:16', '2017-07-31 20:47:16');
INSERT INTO `matrix_video` VALUES ('40', '19', '标题19', '介绍19', '视频地址19', '3', '图片地址19', '19', '2017-07-31 20:47:16', '2017-07-31 20:47:16');
INSERT INTO `matrix_video` VALUES ('41', '10', '标题10', '介绍10', '视频地址10', '4', '图片地址10', '10', '2017-08-01 14:06:57', '2017-08-01 14:06:57');
INSERT INTO `matrix_video` VALUES ('42', '11', '标题11', '介绍11', '视频地址11', '5', '图片地址11', '11', '2017-08-01 14:06:57', '2017-08-01 14:06:57');
INSERT INTO `matrix_video` VALUES ('43', '12', '标题12', '介绍12', '视频地址12', '6', '图片地址12', '12', '2017-08-01 14:06:57', '2017-08-01 14:06:57');
INSERT INTO `matrix_video` VALUES ('44', '13', '标题13', '介绍13', '视频地址13', '7', '图片地址13', '13', '2017-08-01 14:06:57', '2017-08-01 14:06:57');
INSERT INTO `matrix_video` VALUES ('45', '14', '标题14', '介绍14', '视频地址14', '8', '图片地址14', '14', '2017-08-01 14:06:57', '2017-08-01 14:06:57');
INSERT INTO `matrix_video` VALUES ('46', '15', '标题15', '介绍15', '视频地址15', '1', '图片地址15', '15', '2017-08-01 14:06:57', '2017-08-01 14:06:57');
INSERT INTO `matrix_video` VALUES ('134', '13', '标题13', '介绍13', '视频地址13', '2', '图片地址13', '13', '2017-08-01 17:19:49', '2017-08-01 17:19:49');
INSERT INTO `matrix_video` VALUES ('135', '14', '标题14', '介绍14', '视频地址14', '3', '图片地址14', '14', '2017-08-01 17:19:49', '2017-08-01 17:19:49');
INSERT INTO `matrix_video` VALUES ('136', '15', '标题15', '介绍15', '视频地址15', '4', '图片地址15', '15', '2017-08-01 17:19:49', '2017-08-01 17:19:49');
INSERT INTO `matrix_video` VALUES ('137', '16', '标题16', '介绍16', '视频地址16', '5', '图片地址16', '16', '2017-08-01 17:19:49', '2017-08-01 17:19:49');
INSERT INTO `matrix_video` VALUES ('138', '17', '标题17', '介绍17', '视频地址17', '6', '图片地址17', '17', '2017-08-01 17:19:49', '2017-08-01 17:19:49');
INSERT INTO `matrix_video` VALUES ('139', '18', '标题18', '介绍18', '视频地址18', '7', '图片地址18', '18', '2017-08-01 17:19:49', '2017-08-01 17:19:49');
INSERT INTO `matrix_video` VALUES ('140', '19', '标题19', '介绍19', '视频地址19', '8', '图片地址19', '19', '2017-08-01 17:19:50', '2017-08-01 17:19:50');
INSERT INTO `matrix_video` VALUES ('191', '10', '标题10', '介绍10', '视频地址10', '1', '图片地址10', '10', '2017-08-01 20:42:19', '2017-08-01 20:42:19');
INSERT INTO `matrix_video` VALUES ('192', '11', '标题11', '介绍11', '视频地址11', '1', '图片地址11', '11', '2017-08-01 20:42:19', '2017-08-01 20:42:19');
INSERT INTO `matrix_video` VALUES ('193', '12', '标题12', '介绍12', '视频地址12', '1', '图片地址12', '12', '2017-08-01 20:42:19', '2017-08-01 20:42:19');
INSERT INTO `matrix_video` VALUES ('194', '13', '标题13', '介绍13', '视频地址13', '1', '图片地址13', '13', '2017-08-01 20:42:19', '2017-08-01 20:42:19');
INSERT INTO `matrix_video` VALUES ('195', '14', '标题14', '介绍14', '视频地址14', '1', '图片地址14', '14', '2017-08-01 20:42:19', '2017-08-01 20:42:19');
INSERT INTO `matrix_video` VALUES ('196', '15', '标题15', '介绍15', '视频地址15', '1', '图片地址15', '15', '2017-08-01 20:42:19', '2017-08-01 20:42:19');
INSERT INTO `matrix_video` VALUES ('197', '16', '标题16', '介绍16', '视频地址16', '1', '图片地址16', '16', '2017-08-01 20:42:20', '2017-08-01 20:42:20');
INSERT INTO `matrix_video` VALUES ('198', '17', '标题17', '介绍17', '视频地址17', '1', '图片地址17', '17', '2017-08-01 20:42:20', '2017-08-01 20:42:20');
INSERT INTO `matrix_video` VALUES ('199', '18', '标题18', '介绍18', '视频地址18', '1', '图片地址18', '18', '2017-08-01 20:42:20', '2017-08-01 20:42:20');
INSERT INTO `matrix_video` VALUES ('200', '19', '标题19', '介绍19', '视频地址19', '1', '图片地址19', '19', '2017-08-01 20:42:20', '2017-08-01 20:42:20');
