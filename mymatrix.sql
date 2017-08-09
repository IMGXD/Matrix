/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : matrix

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-08-02 00:49:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for matrix_barrage
-- ----------------------------
DROP TABLE IF EXISTS `matrix_barrage`;
CREATE TABLE `matrix_barrage` (
  `id` int(11) NOT NULL DEFAULT '0',
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
-- Table structure for matrix_category
-- ----------------------------
DROP TABLE IF EXISTS `matrix_category`;
CREATE TABLE `matrix_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类别Id',
  `parent_id` int(11) DEFAULT NULL COMMENT '父类别id当id=0时说明是根节点,一级类别',
  `name` varchar(50) DEFAULT NULL COMMENT '类别名称',
  `status` tinyint(1) DEFAULT '1' COMMENT '类别状态1-正常,2-已废弃',
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
-- Table structure for matrix_comment
-- ----------------------------
DROP TABLE IF EXISTS `matrix_comment`;
CREATE TABLE `matrix_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
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
-- Table structure for matrix_favourite
-- ----------------------------
DROP TABLE IF EXISTS `matrix_favourite`;
CREATE TABLE `matrix_favourite` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `video_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of matrix_favourite
-- ----------------------------
INSERT INTO `matrix_favourite` VALUES ('1', '1', '1', '2017-08-01 11:08:10', '2017-08-15 11:08:13');

-- ----------------------------
-- Table structure for matrix_label
-- ----------------------------
DROP TABLE IF EXISTS `matrix_label`;
CREATE TABLE `matrix_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标签ID',
  `name` varchar(255) NOT NULL COMMENT '标签名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of matrix_label
-- ----------------------------
INSERT INTO `matrix_label` VALUES ('1', 'c++');
INSERT INTO `matrix_label` VALUES ('2', 'HTML');
INSERT INTO `matrix_label` VALUES ('3', 'Java');
INSERT INTO `matrix_label` VALUES ('4', 'python');
INSERT INTO `matrix_label` VALUES ('5', 'c#');
INSERT INTO `matrix_label` VALUES ('6', 'c');
INSERT INTO `matrix_label` VALUES ('7', 'JavaScript');
INSERT INTO `matrix_label` VALUES ('8', 'rubby');
INSERT INTO `matrix_label` VALUES ('9', 'node.js');
INSERT INTO `matrix_label` VALUES ('10', 'spring');
INSERT INTO `matrix_label` VALUES ('11', 'ES6');
INSERT INTO `matrix_label` VALUES ('12', 'bootstrap');
INSERT INTO `matrix_label` VALUES ('13', 'angular');
INSERT INTO `matrix_label` VALUES ('14', 'vue.js');
INSERT INTO `matrix_label` VALUES ('15', 'easyui');
INSERT INTO `matrix_label` VALUES ('16', 'foundation');
INSERT INTO `matrix_label` VALUES ('17', 'xml');
INSERT INTO `matrix_label` VALUES ('18', 'jquery');
INSERT INTO `matrix_label` VALUES ('19', 'react');
INSERT INTO `matrix_label` VALUES ('20', 'ajax');

-- ----------------------------
-- Table structure for matrix_tip
-- ----------------------------
DROP TABLE IF EXISTS `matrix_tip`;
CREATE TABLE `matrix_tip` (
  `id` int(11) NOT NULL DEFAULT '0',
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
-- Table structure for matrix_user
-- ----------------------------
DROP TABLE IF EXISTS `matrix_user`;
CREATE TABLE `matrix_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序列，自增长，主键不为空',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户账号，唯一',
  `nickname` varchar(20) DEFAULT NULL COMMENT '账号昵称',
  `password` varchar(32) NOT NULL COMMENT '账号密码',
  `tel` varchar(20) DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) DEFAULT NULL,
  `sex` int(1) DEFAULT '0' COMMENT '性别（0：男， 1：女   默认：0）',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `valid` int(11) DEFAULT '0' COMMENT '是否删除(1：删除     0：不删除        默认：0)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间  yyyy-mm-dd HH:mi:ss',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间  yyyy-mm-dd HH:mi:ss',
  `authority` int(11) DEFAULT NULL COMMENT '权限等级 0到9 0为游客 1为普通用户 9为管理员',
  `last_login` datetime DEFAULT NULL COMMENT '上次登录时间',
  `current_login` datetime DEFAULT NULL COMMENT '本次登陆时间',
  `last_ip` varchar(255) DEFAULT NULL COMMENT '上次登陆IP',
  `current_ip` varchar(255) DEFAULT NULL COMMENT '本次登陆IP',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of matrix_user
-- ----------------------------
INSERT INTO `matrix_user` VALUES ('1', 'admin_1', 'nickname', '123456', '1234567890', 'admin@admin.com', '0', '2017-07-01', '0', '2017-07-01 00:23:00', '2017-07-24 00:23:50', '9', '2017-07-01 00:00:00', '2017-07-24 00:57:58', '127.0.0.1', '127.0.0.1');
INSERT INTO `matrix_user` VALUES ('2', 'admin_2', 'nickname', '123456', '1234567890', 'admin@admin.com', '0', '2017-07-01', '0', '2017-07-01 00:23:00', '2017-07-24 00:23:50', '9', '2017-07-01 00:00:00', '2017-07-24 00:24:56', '127.0.0.1', '127.0.0.1');
INSERT INTO `matrix_user` VALUES ('3', 'admin_3', 'nickname', 'e10adc3949ba59abbe56e057f20f883e', '1234567890', 'admin@admin.com', '0', '2017-07-01', '0', '2017-07-01 00:23:00', '2017-07-24 00:23:50', '9', '2017-07-01 00:00:00', '2017-07-24 00:24:56', '127.0.0.1', '127.0.0.1');
INSERT INTO `matrix_user` VALUES ('4', 'admin_4', 'nickname', 'e10adc3949ba59abbe56e057f20f883e', '1234567890', 'admin@admin.com', '0', '2017-07-01', '0', '2017-07-01 00:23:00', '2017-07-24 00:23:50', '9', '2017-07-01 00:00:00', '2017-07-24 00:24:56', '127.0.0.1', '127.0.0.1');
INSERT INTO `matrix_user` VALUES ('5', 'admin_5', 'nickname', 'e10adc3949ba59abbe56e057f20f883e', '1234567890', 'admin@admin.com', '0', '2017-07-01', '0', '2017-07-01 00:23:00', '2017-07-24 00:23:50', '9', '2017-07-01 00:00:00', '2017-07-24 00:24:56', '127.0.0.1', '127.0.0.1');
INSERT INTO `matrix_user` VALUES ('6', 'admin_6', 'nickname', 'e10adc3949ba59abbe56e057f20f883e', '1234567890', 'admin@admin.com', '0', '2017-07-01', '0', '2017-07-01 00:23:00', '2017-07-24 00:23:50', '9', '2017-07-01 00:00:00', '2017-07-24 00:24:56', '127.0.0.1', '127.0.0.1');
INSERT INTO `matrix_user` VALUES ('9', 'admin', 'Matrix', 'e10adc3949ba59abbe56e057f20f883e', '1234567890', 'admin@admin.com', '0', '2017-07-01', '0', '2017-07-01 00:23:00', '2017-07-24 00:23:50', '9', '2017-07-01 00:00:00', '2017-07-31 10:44:34', '127.0.0.1', '127.0.0.1');

-- ----------------------------
-- Table structure for matrix_video
-- ----------------------------
DROP TABLE IF EXISTS `matrix_video`;
CREATE TABLE `matrix_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `category_id` int(11) DEFAULT NULL COMMENT '分类id',
  `title` varchar(255) DEFAULT NULL COMMENT '视频名称',
  `detail` varchar(8192) DEFAULT NULL COMMENT '介绍',
  `url` varchar(255) DEFAULT NULL COMMENT '地址',
  `remark` int(255) DEFAULT NULL COMMENT '备注',
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '视频状态.1-在售 2-下架 3-删除',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '编辑时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of matrix_video
-- ----------------------------
INSERT INTO `matrix_video` VALUES ('1', '1', 'ssss', 'ss', 's', '1', 's', '1', '2017-08-15 13:27:08', '2017-08-09 13:27:11');
INSERT INTO `matrix_video` VALUES ('2', '1', 'aa', 'ss', 's', '2', 's', '1', '2017-08-15 13:27:08', '2017-08-09 13:27:11');
INSERT INTO `matrix_video` VALUES ('3', '1', 'ssss', 'ss', 's', '3', 's', '1', '2017-08-15 13:27:08', '2017-08-09 13:27:11');
INSERT INTO `matrix_video` VALUES ('4', '1', 'ssss', 'ss', 's', '4', 's', '1', '2017-08-15 13:27:08', '2017-08-09 13:27:11');
INSERT INTO `matrix_video` VALUES ('5', '1', 'ssss', 'ss', 's', '5', 's', '1', '2017-08-15 13:27:08', '2017-08-09 13:27:11');
INSERT INTO `matrix_video` VALUES ('6', '1', 'bbb', 'ss', 's', '6', 's', '1', '2017-08-15 13:27:08', '2017-08-09 13:27:11');
INSERT INTO `matrix_video` VALUES ('7', '1', 'ssss', 'ss', 's', '7', 's', '1', '2017-08-15 13:27:08', '2017-08-09 13:27:11');
INSERT INTO `matrix_video` VALUES ('8', '1', 'ssss', 'ss', 's', '8', 's', '1', '2017-08-15 13:27:08', '2017-08-09 13:27:11');
INSERT INTO `matrix_video` VALUES ('9', '1', 'ssss', 'ss', 's', '9', 's', '1', '2017-08-15 13:27:08', '2017-08-09 13:27:11');
INSERT INTO `matrix_video` VALUES ('10', '1', 'ssss', 'ss', 's', '10', 's', '1', '2017-08-15 13:27:08', '2017-08-09 13:27:11');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL,
  `authority` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_pwd` varchar(255) DEFAULT NULL,
  `moble` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `bornDate` date DEFAULT NULL,
  `regDate` datetime DEFAULT NULL,
  `lastLogin` datetime DEFAULT NULL,
  `currentLogin` datetime DEFAULT NULL,
  `lastIP` varchar(255) DEFAULT NULL,
  `currentIP` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('0', '9', 'admin', 'admin', '01234567890', 'admin@admin.com', '?', '2017-07-01', '2017-07-01 00:10:00', '2017-07-19 22:10:51', '2017-07-21 10:34:17', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `us_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序列，自增长，主键不为空',
  `us_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户账号，唯一',
  `us_nickname` varchar(20) DEFAULT NULL COMMENT '账号昵称',
  `us_pwd` varchar(20) NOT NULL COMMENT '账号密码',
  `tel` varchar(20) DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) DEFAULT NULL,
  `sex` int(1) DEFAULT '0' COMMENT '性别（0：男， 1：女   默认：0）',
  `bornDate` date DEFAULT NULL COMMENT '出生日期',
  `us_value` int(11) DEFAULT '0' COMMENT '是否删除(1：删除     0：不删除        默认：0)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间  yyyy-mm-dd HH:mi:ss',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间  yyyy-mm-dd HH:mi:ss',
  `authority` int(11) DEFAULT NULL COMMENT '权限等级 0到9',
  `lastLogin` datetime DEFAULT NULL COMMENT '上次登录时间',
  `currentLogin` datetime DEFAULT NULL COMMENT '本次登陆时间',
  `lastIP` varchar(255) DEFAULT NULL COMMENT '上次登陆IP',
  `currentIP` varchar(255) DEFAULT NULL COMMENT '本次登陆IP',
  PRIMARY KEY (`us_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin1', 'nickname', '123456', '1234567890', 'admin@admin.com', '0', '2017-07-01', '1', '2017-07-01 00:23:00', '2017-07-24 00:23:50', '9', '2017-07-01 00:00:00', '2017-07-24 00:57:58', '', '0:0:0:0:0:0:0:1');
INSERT INTO `user` VALUES ('2', 'admin2', 'nickname', '123456', '1234567890', 'admin@admin.com', '0', '2017-07-01', '1', '2017-07-01 00:23:00', '2017-07-24 00:23:50', '9', '2017-07-01 00:00:00', '2017-07-24 00:24:56', '', null);
INSERT INTO `user` VALUES ('3', 'admin3', 'nickname', '123456', '1234567890', 'admin@admin.com', '0', '2017-07-01', '1', '2017-07-01 00:23:00', '2017-07-24 00:23:50', '9', '2017-07-01 00:00:00', '2017-07-24 00:24:56', '', null);
INSERT INTO `user` VALUES ('4', 'admin4', 'nickname', '123456', '1234567890', 'admin@admin.com', '0', '2017-07-01', '1', '2017-07-01 00:23:00', '2017-07-24 00:23:50', '9', '2017-07-01 00:00:00', '2017-07-24 00:24:56', '', null);
INSERT INTO `user` VALUES ('5', 'admin5', 'nickname', '123456', '1234567890', 'admin@admin.com', '0', '2017-07-01', '1', '2017-07-01 00:23:00', '2017-07-24 00:23:50', '9', '2017-07-01 00:00:00', '2017-07-24 00:24:56', '', null);
INSERT INTO `user` VALUES ('6', 'admin6', 'nickname', '123456', '1234567890', 'admin@admin.com', '0', '2017-07-01', '1', '2017-07-01 00:23:00', '2017-07-24 00:23:50', '9', '2017-07-01 00:00:00', '2017-07-24 00:24:56', '', null);
INSERT INTO `user` VALUES ('9', 'admin', 'nickname', '123456', '1234567890', 'admin@admin.com', '0', '2017-07-01', '1', '2017-07-01 00:23:00', '2017-07-24 00:23:50', '9', '2017-07-01 00:00:00', '2017-07-25 13:56:05', '', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for user_comment
-- ----------------------------
DROP TABLE IF EXISTS `user_comment`;
CREATE TABLE `user_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序列，自增长，主键不为空',
  `us_name` varchar(20) NOT NULL,
  `video_name` varchar(20) NOT NULL COMMENT '视频名称 唯一',
  `user_comment_contents` varchar(255) NOT NULL COMMENT '评论内容',
  `user_comment_value` int(1) DEFAULT '0' COMMENT '是否删除（1：删除     0：不删除，默认0）',
  `create_time` varchar(19) NOT NULL COMMENT '创建时间  yyyy-mm-dd HH:mi:ss',
  `update_time` varchar(19) NOT NULL COMMENT '修改时间  yyyy-mm-dd HH:mi:ss',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_comment
-- ----------------------------
INSERT INTO `user_comment` VALUES ('1', 'admin4', '神雕侠侣01', '666666666', '0', '2017-07-08 14:23', '2017-07-08 14:23');
INSERT INTO `user_comment` VALUES ('2', 'admin4', '碧血剑01', '66555555555', '0', '2017-07-11 14:23', '2017-07-11 14:23');
INSERT INTO `user_comment` VALUES ('3', 'admin5', '东邪西毒', '太经典了', '0', '2017-07-22 14:23', '2017-07-22 14:23');
INSERT INTO `user_comment` VALUES ('4', 'admin5', '拆弹专家', '一般般', '0', '2017-07-22 14:23', '2017-07-22 14:23');

-- ----------------------------
-- Table structure for user_praise
-- ----------------------------
DROP TABLE IF EXISTS `user_praise`;
CREATE TABLE `user_praise` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序列，自增长，主键不为空',
  `us_name` varchar(20) NOT NULL COMMENT '用户账号',
  `video_name` varchar(20) NOT NULL COMMENT '视频名称',
  `user_praise_type` int(1) NOT NULL DEFAULT '1' COMMENT '是否点赞（1：点赞       0：不点赞，默认1）',
  `createtime` varchar(19) NOT NULL COMMENT '创建时间  yyyy-mm-dd HH:mi:ss',
  `updatetime` varchar(19) NOT NULL COMMENT '修改时间  yyyy-mm-dd HH:mi:ss',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_praise
-- ----------------------------
INSERT INTO `user_praise` VALUES ('1', 'admin', '拆弹专家', '1', '2017-07-21 11:12', '2017-07-21 11:12');
INSERT INTO `user_praise` VALUES ('2', 'admin', '东邪西毒', '1', '2017-07-21 13:30', '2017-07-21 13:30');
INSERT INTO `user_praise` VALUES ('3', 'admin2', '拆弹专家', '1', '2017-07-21 13:30', '2017-07-21 13:30');
INSERT INTO `user_praise` VALUES ('4', 'admin2', '东邪西毒', '1', '2017-07-21 13:30', '2017-07-21 13:30');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序列，自增长，主键不为空',
  `us_name` varchar(20) NOT NULL COMMENT '用户账号',
  `type_id` int(2) NOT NULL COMMENT '视频类型id',
  `video_name` varchar(20) NOT NULL COMMENT '视频名称   唯一',
  `video_url` varchar(255) NOT NULL COMMENT '视频路径   唯一',
  `video_time` int(11) DEFAULT NULL COMMENT '视频时长,   秒 s 为基本单位',
  `video_type` varchar(10) NOT NULL COMMENT '视频文件格式',
  `video_value` int(1) DEFAULT '0' COMMENT '是否删除(1：删除      0：不删除        默认：0)',
  `create_time` varchar(19) NOT NULL COMMENT '创建时间  yyyy-mm-dd HH:mi:ss',
  `update_time` varchar(19) NOT NULL COMMENT '修改时间  yyyy-mm-dd HH:mi:ss',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('1', 'admin1', '1', '神雕侠侣01', 'D:SoftwareJava神雕侠侣01', '2700', 'mkv', '0', '2017-07-07 14:23', '2017-07-07 14:23');
INSERT INTO `video` VALUES ('2', 'admin1', '1', '碧血剑01', 'D:SoftwareJava碧血剑01', '2700', 'mkv', '0', '2017-07-08 14:23', '2017-07-08 14:23');
INSERT INTO `video` VALUES ('3', 'admin3', '1', '东邪西毒', 'D:SoftwareJava东邪西毒', '5400', 'mkv', '0', '2017-07-12 14:23', '2017-07-12 14:23');
INSERT INTO `video` VALUES ('4', 'admin3', '1', '拆弹专家', 'D:SoftwareJava拆弹专家', '5400', 'mkv', '0', '2017-07-20 14:23', '2017-07-20 14:23');

-- ----------------------------
-- Table structure for video_barrage
-- ----------------------------
DROP TABLE IF EXISTS `video_barrage`;
CREATE TABLE `video_barrage` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序列，自增长，主键不为空',
  `us_name` varchar(20) NOT NULL COMMENT ' 用户账号',
  `video_name` varchar(20) NOT NULL COMMENT '视频名称   唯一',
  `video_barrage_contents` varchar(50) NOT NULL COMMENT '弹幕内容',
  `create_time` varchar(19) NOT NULL COMMENT '创建时间  yyyy-mm-dd HH:mi:ss',
  `video_barrage_time` int(11) NOT NULL COMMENT '弹幕在视频中出现的时间，秒s为基本单位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video_barrage
-- ----------------------------

-- ----------------------------
-- Table structure for video_type
-- ----------------------------
DROP TABLE IF EXISTS `video_type`;
CREATE TABLE `video_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序列，自增长，主键不为空',
  `type_id` int(2) NOT NULL COMMENT '类型id 唯一',
  `type_name` varchar(10) NOT NULL COMMENT '类型名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video_type
-- ----------------------------
INSERT INTO `video_type` VALUES ('1', '1', '电视剧');
INSERT INTO `video_type` VALUES ('2', '2', '电影');
