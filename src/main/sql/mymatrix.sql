/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : matrix

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-08-04 16:37:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for matrix
-- ----------------------------
DROP TABLE IF EXISTS `matrix`;
CREATE TABLE `matrix` (
  `C1` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of matrix
-- ----------------------------
INSERT INTO `matrix` VALUES ('/*');
INSERT INTO `matrix` VALUES ('Navicat MySQL Data Transfer');
INSERT INTO `matrix` VALUES ('');
INSERT INTO `matrix` VALUES ('Source Server         : localhost');
INSERT INTO `matrix` VALUES ('Source Server Version : 50173');
INSERT INTO `matrix` VALUES ('Source Host           : localhost:3306');
INSERT INTO `matrix` VALUES ('Source Database       : matrix');
INSERT INTO `matrix` VALUES ('');
INSERT INTO `matrix` VALUES ('Target Server Type    : MYSQL');
INSERT INTO `matrix` VALUES ('Target Server Version : 50173');
INSERT INTO `matrix` VALUES ('File Encoding         : 65001');
INSERT INTO `matrix` VALUES ('');
INSERT INTO `matrix` VALUES ('Date: 2017-08-04 10:48:03');
INSERT INTO `matrix` VALUES ('*/');
INSERT INTO `matrix` VALUES ('');
INSERT INTO `matrix` VALUES ('SET FOREIGN_KEY_CHECKS=0;');
INSERT INTO `matrix` VALUES ('');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('-- Table structure for `matrix_barrage`');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('DROP TABLE IF EXISTS `matrix_barrage`;');
INSERT INTO `matrix` VALUES ('CREATE TABLE `matrix_barrage` (');
INSERT INTO `matrix` VALUES ('  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT \'弹幕表主键id\',');
INSERT INTO `matrix` VALUES ('  `user_id` int(11) DEFAULT NULL COMMENT \'用户id\',');
INSERT INTO `matrix` VALUES ('  `content` varchar(255) DEFAULT NULL COMMENT \'内容\',');
INSERT INTO `matrix` VALUES ('  `create_time` datetime DEFAULT NULL COMMENT \'创建时间\',');
INSERT INTO `matrix` VALUES ('  `update_time` datetime DEFAULT NULL COMMENT \'更新时间\',');
INSERT INTO `matrix` VALUES ('  `video_id` int(11) DEFAULT NULL COMMENT \'视频id\',');
INSERT INTO `matrix` VALUES ('  `post_time` datetime DEFAULT NULL COMMENT \'弹幕时间\',');
INSERT INTO `matrix` VALUES ('  PRIMARY KEY (`id`)');
INSERT INTO `matrix` VALUES (') ENGINE=InnoDB DEFAULT CHARSET=utf8;');
INSERT INTO `matrix` VALUES ('');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('-- Records of matrix_barrage');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('-- Table structure for `matrix_category`');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('DROP TABLE IF EXISTS `matrix_category`;');
INSERT INTO `matrix` VALUES ('CREATE TABLE `matrix_category` (');
INSERT INTO `matrix` VALUES ('  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT \'分类表主键id\',');
INSERT INTO `matrix` VALUES ('  `parent_id` int(11) DEFAULT NULL COMMENT \'父类别id当id=0时说明是根节点,一级类别\',');
INSERT INTO `matrix` VALUES ('  `name` varchar(50) DEFAULT NULL COMMENT \'分类名称\',');
INSERT INTO `matrix` VALUES ('  `status` tinyint(1) DEFAULT \'1\' COMMENT \'分类状态1-正常,2-已废弃\',');
INSERT INTO `matrix` VALUES ('  `create_time` datetime DEFAULT NULL COMMENT \'创建时间\',');
INSERT INTO `matrix` VALUES ('  `update_time` datetime DEFAULT NULL COMMENT \'更新时间\',');
INSERT INTO `matrix` VALUES ('  PRIMARY KEY (`id`)');
INSERT INTO `matrix` VALUES (') ENGINE=InnoDB AUTO_INCREMENT=100032 DEFAULT CHARSET=utf8;');
INSERT INTO `matrix` VALUES ('');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('-- Records of matrix_category');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_category` VALUES (\'1\', \'0\', \'后端开发\', \'1\', \'2017-03-25 16:46:00\', \'2017-03-25 16:46:00\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_category` VALUES (\'2\', \'0\', \'前端开发\\r\\n前端开发\', \'1\', \'2017-03-25 16:46:21\', \'2017-03-25 16:46:21\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_category` VALUES (\'3\', \'0\', \'数据库\', \'1\', \'2017-03-25 16:49:53\', \'2017-03-25 16:49:53\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_category` VALUES (\'4\', \'0\', \'运维&测试\', \'1\', \'2017-03-25 16:50:19\', \'2017-03-25 16:50:19\');');
INSERT INTO `matrix` VALUES ('');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('-- Table structure for `matrix_comment`');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('DROP TABLE IF EXISTS `matrix_comment`;');
INSERT INTO `matrix` VALUES ('CREATE TABLE `matrix_comment` (');
INSERT INTO `matrix` VALUES ('  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT \'评论表主键id\',');
INSERT INTO `matrix` VALUES ('  `content` varchar(255) DEFAULT NULL COMMENT \'内容\',');
INSERT INTO `matrix` VALUES ('  `user_id` int(11) DEFAULT NULL COMMENT \'用户id\',');
INSERT INTO `matrix` VALUES ('  `create_time` datetime DEFAULT NULL COMMENT \'创建时间\',');
INSERT INTO `matrix` VALUES ('  `update_time` datetime DEFAULT NULL COMMENT \'更新时间\',');
INSERT INTO `matrix` VALUES ('  `video_id` int(11) DEFAULT NULL COMMENT \'视频id\',');
INSERT INTO `matrix` VALUES ('  PRIMARY KEY (`id`)');
INSERT INTO `matrix` VALUES (') ENGINE=InnoDB DEFAULT CHARSET=utf8;');
INSERT INTO `matrix` VALUES ('');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('-- Records of matrix_comment');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('-- Table structure for `matrix_favourite`');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('DROP TABLE IF EXISTS `matrix_favourite`;');
INSERT INTO `matrix` VALUES ('CREATE TABLE `matrix_favourite` (');
INSERT INTO `matrix` VALUES ('  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT \'收藏表主键id\',');
INSERT INTO `matrix` VALUES ('  `user_id` int(11) DEFAULT NULL COMMENT \'用户id\',');
INSERT INTO `matrix` VALUES ('  `video_id` int(11) DEFAULT NULL COMMENT \'视频id\',');
INSERT INTO `matrix` VALUES ('  `create_time` datetime DEFAULT NULL COMMENT \'创建时间\',');
INSERT INTO `matrix` VALUES ('  `update_time` datetime DEFAULT NULL COMMENT \'更新时间\',');
INSERT INTO `matrix` VALUES ('  PRIMARY KEY (`id`)');
INSERT INTO `matrix` VALUES (') ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;');
INSERT INTO `matrix` VALUES ('');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('-- Records of matrix_favourite');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_favourite` VALUES (\'1\', \'1\', \'33\', \'2017-08-01 11:08:10\', \'2017-08-15 11:08:13\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_favourite` VALUES (\'2\', \'1\', \'32\', \'2017-08-03 11:00:46\', \'2017-08-03 11:00:48\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_favourite` VALUES (\'3\', \'1\', \'31\', \'2017-08-03 11:00:58\', \'2017-08-03 11:01:01\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_favourite` VALUES (\'4\', \'2\', \'231\', \'2017-08-03 11:05:12\', \'2017-08-03 11:05:14\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_favourite` VALUES (\'5\', \'2\', \'232\', \'2017-08-03 11:05:22\', \'2017-08-03 11:05:24\');');
INSERT INTO `matrix` VALUES ('');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('-- Table structure for `matrix_label`');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('DROP TABLE IF EXISTS `matrix_label`;');
INSERT INTO `matrix` VALUES ('CREATE TABLE `matrix_label` (');
INSERT INTO `matrix` VALUES ('  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT \'标签表主键id\',');
INSERT INTO `matrix` VALUES ('  `name` varchar(255) DEFAULT NULL COMMENT \'标签名\',');
INSERT INTO `matrix` VALUES ('  PRIMARY KEY (`id`)');
INSERT INTO `matrix` VALUES (') ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;');
INSERT INTO `matrix` VALUES ('');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('-- Records of matrix_label');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_label` VALUES (\'1\', \'html\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_label` VALUES (\'2\', \'java\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_label` VALUES (\'3\', \'css\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_label` VALUES (\'4\', \'ExMobi\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_label` VALUES (\'5\', \'bootstrap\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_label` VALUES (\'6\', \'css3\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_label` VALUES (\'7\', \'c\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_label` VALUES (\'8\', \'html5\');');
INSERT INTO `matrix` VALUES ('');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('-- Table structure for `matrix_tip`');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('DROP TABLE IF EXISTS `matrix_tip`;');
INSERT INTO `matrix` VALUES ('CREATE TABLE `matrix_tip` (');
INSERT INTO `matrix` VALUES ('  `id` int(11) NOT NULL DEFAULT \'0\' COMMENT \'此表备用id\',');
INSERT INTO `matrix` VALUES ('  `user_id` int(11) DEFAULT NULL,');
INSERT INTO `matrix` VALUES ('  `content` varchar(255) DEFAULT NULL,');
INSERT INTO `matrix` VALUES ('  `create_time` datetime DEFAULT NULL,');
INSERT INTO `matrix` VALUES ('  `update_time` datetime DEFAULT NULL COMMENT \'更新时间\',');
INSERT INTO `matrix` VALUES ('  `video_id` int(11) DEFAULT NULL,');
INSERT INTO `matrix` VALUES ('  `post_time` datetime DEFAULT NULL,');
INSERT INTO `matrix` VALUES ('  PRIMARY KEY (`id`)');
INSERT INTO `matrix` VALUES (') ENGINE=InnoDB DEFAULT CHARSET=utf8;');
INSERT INTO `matrix` VALUES ('');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('-- Records of matrix_tip');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('-- Table structure for `matrix_user`');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('DROP TABLE IF EXISTS `matrix_user`;');
INSERT INTO `matrix` VALUES ('CREATE TABLE `matrix_user` (');
INSERT INTO `matrix` VALUES ('  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT \'用户表主键id，序列，自增长，主键不为空\',');
INSERT INTO `matrix` VALUES ('  `username` varchar(20) NOT NULL DEFAULT \'\' COMMENT \'用户账号，唯一\',');
INSERT INTO `matrix` VALUES ('  `nickname` varchar(20) DEFAULT NULL COMMENT \'账号昵称\',');
INSERT INTO `matrix` VALUES ('  `password` varchar(32) NOT NULL COMMENT \'账号密码\',');
INSERT INTO `matrix` VALUES ('  `tel` varchar(20) DEFAULT NULL COMMENT \'手机号\',');
INSERT INTO `matrix` VALUES ('  `email` varchar(255) DEFAULT NULL COMMENT \'邮件\',');
INSERT INTO `matrix` VALUES ('  `sex` int(1) DEFAULT \'0\' COMMENT \'性别（0：男， 1：女   默认：0）\',');
INSERT INTO `matrix` VALUES ('  `birthday` date DEFAULT NULL COMMENT \'出生日期\',');
INSERT INTO `matrix` VALUES ('  `valid` int(11) DEFAULT \'0\' COMMENT \'是否删除(1：注销，0：激活， 默认：0)\',');
INSERT INTO `matrix` VALUES ('  `create_time` datetime DEFAULT NULL COMMENT \'创建时间  yyyy-mm-dd HH:mi:ss\',');
INSERT INTO `matrix` VALUES ('  `update_time` datetime DEFAULT NULL COMMENT \'修改时间  yyyy-mm-dd HH:mi:ss\',');
INSERT INTO `matrix` VALUES ('  `authority` int(11) DEFAULT NULL COMMENT \'权限等级 0到9\',');
INSERT INTO `matrix` VALUES ('  `last_login` datetime DEFAULT NULL COMMENT \'上次登录时间\',');
INSERT INTO `matrix` VALUES ('  `current_login` datetime DEFAULT NULL COMMENT \'本次登陆时间\',');
INSERT INTO `matrix` VALUES ('  `last_ip` varchar(255) DEFAULT NULL COMMENT \'上次登陆IP\',');
INSERT INTO `matrix` VALUES ('  `current_ip` varchar(255) DEFAULT NULL COMMENT \'本次登陆IP\',');
INSERT INTO `matrix` VALUES ('  PRIMARY KEY (`id`)');
INSERT INTO `matrix` VALUES (') ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;');
INSERT INTO `matrix` VALUES ('');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('-- Records of matrix_user');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_user` VALUES (\'1\', \'admin_3\', \'nickname\', \'e10adc3949ba59abbe56e057f20f883e\', \'1234567890\', \'admin@admin.com\', \'0\', \'2017-07-01\', \'0\', \'2017-07-01 00:23:00\', \'2017-07-24 00:23:50\', \'1\', \'2017-07-01 00:00:00\', \'2017-07-24 00:24:56\', \'127.0.0.1\', \'127.0.0.1\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_user` VALUES (\'2\', \'admin_2\', \'nickname\', \'e10adc3949ba59abbe56e057f20f883e\', \'1234567890\', \'admin@admin.com\', \'0\', \'2017-07-01\', \'0\', \'2017-07-01 00:23:00\', \'2017-07-24 00:23:50\', \'9\', \'2017-07-01 00:00:00\', \'2017-07-24 00:24:56\', \'127.0.0.1\', \'127.0.0.1\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_user` VALUES (\'6\', \'tuser\', \'nickname\', \'e10adc3949ba59abbe56e057f20f883e\', \'1234567890\', \'tuser@admin.com\', \'0\', \'2017-07-01\', \'0\', \'2017-07-01 00:23:00\', \'2017-07-24 00:23:50\', \'1\', \'2017-07-01 00:00:00\', \'2017-07-24 00:24:56\', \'127.0.0.1\', \'127.0.0.1\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_user` VALUES (\'9\', \'admin\', \'nickname\', \'e10adc3949ba59abbe56e057f20f883e\', \'1234567890\', \'admin@999.com\', \'0\', \'2017-07-01\', \'0\', \'2017-07-01 00:23:00\', \'2017-08-01 13:56:53\', \'9\', \'2017-07-01 00:00:00\', \'2017-07-31 10:44:34\', \'127.0.0.1\', \'127.0.0.1\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_user` VALUES (\'10\', \'admmm\', \'nicknn\', \'E53A0A2978C28872A4505BDB51DB06DC\', \'13888888888\', \'admin@111.com\', null, null, null, \'2017-08-01 13:48:39\', \'2017-08-01 13:48:39\', null, null, null, null, null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_user` VALUES (\'11\', \'admmmd\', \'nsfdfsd\', \'E53A0A2978C28872A4505BDB51DB06DC\', \'13888888888\', \'admin@222.com\', null, null, null, \'2017-08-01 13:49:30\', \'2017-08-01 13:49:30\', null, null, null, null, null);');
INSERT INTO `matrix` VALUES ('');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('-- Table structure for `matrix_video`');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('DROP TABLE IF EXISTS `matrix_video`;');
INSERT INTO `matrix` VALUES ('CREATE TABLE `matrix_video` (');
INSERT INTO `matrix` VALUES ('  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT \'视频表主键id\',');
INSERT INTO `matrix` VALUES ('  `category_id` int(11) DEFAULT NULL COMMENT \'分类id\',');
INSERT INTO `matrix` VALUES ('  `title` varchar(255) DEFAULT NULL COMMENT \'视频标题\',');
INSERT INTO `matrix` VALUES ('  `detail` varchar(8192) DEFAULT NULL COMMENT \'介绍\',');
INSERT INTO `matrix` VALUES ('  `url` varchar(255) DEFAULT NULL COMMENT \'视频地址\',');
INSERT INTO `matrix` VALUES ('  `remark` int(255) DEFAULT NULL COMMENT \'标签id\',');
INSERT INTO `matrix` VALUES ('  `image` varchar(255) DEFAULT NULL COMMENT \'图片地址\',');
INSERT INTO `matrix` VALUES ('  `status` int(11) DEFAULT \'1\' COMMENT \'视频状态.1-可看 2-下架 3-删除\',');
INSERT INTO `matrix` VALUES ('  `create_time` datetime DEFAULT NULL COMMENT \'创建时间\',');
INSERT INTO `matrix` VALUES ('  `update_time` datetime DEFAULT NULL COMMENT \'更新时间\',');
INSERT INTO `matrix` VALUES ('  `user_id` int(11) DEFAULT NULL,');
INSERT INTO `matrix` VALUES ('  PRIMARY KEY (`id`)');
INSERT INTO `matrix` VALUES (') ENGINE=InnoDB AUTO_INCREMENT=908 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;');
INSERT INTO `matrix` VALUES ('');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('-- Records of matrix_video');
INSERT INTO `matrix` VALUES ('-- ----------------------------');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'2\', \'15\', \'标题\', \'介绍2\', \'视频地址2\', \'1\', \'图片地址2\', \'3\', \'2017-07-31 19:58:34\', \'2017-07-31 19:58:36\', \'2\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'31\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'2\', \'图片地址10\', \'1\', \'2017-07-31 20:47:15\', \'2017-07-31 20:47:15\', \'3\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'32\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'3\', \'图片地址11\', \'2\', \'2017-07-31 20:47:16\', \'2017-07-31 20:47:16\', \'4\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'33\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'4\', \'图片地址12\', \'1\', \'2017-07-31 20:47:16\', \'2017-07-31 20:47:16\', \'5\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'34\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'5\', \'图片地址13\', \'2\', \'2017-07-31 20:47:16\', \'2017-07-31 20:47:16\', \'6\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'35\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'6\', \'图片地址14\', \'2\', \'2017-07-31 20:47:16\', \'2017-07-31 20:47:16\', \'9\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'36\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'7\', \'图片地址15\', \'1\', \'2017-07-31 20:47:16\', \'2017-07-31 20:47:16\', \'10\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'37\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'8\', \'图片地址16\', \'16\', \'2017-07-31 20:47:16\', \'2017-07-31 20:47:16\', \'11\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'231\', null, \'面膜\', \'面膜介绍\', \'xxxxxxxxxx.avi\', \'2\', \'xxaaaaaaa.jpg\', \'1\', \'2017-08-02 10:08:47\', \'2017-08-02 10:08:47\', \'9\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'232\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'2\', \'2017-08-02 10:10:17\', \'2017-08-02 10:10:17\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'233\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'1\', \'2017-08-02 10:10:17\', \'2017-08-02 10:10:17\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'234\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 10:10:17\', \'2017-08-02 10:10:17\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'235\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 10:10:17\', \'2017-08-02 10:10:17\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'236\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 10:10:17\', \'2017-08-02 10:10:17\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'237\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 10:10:17\', \'2017-08-02 10:10:17\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'238\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 10:10:17\', \'2017-08-02 10:10:17\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'239\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 10:10:17\', \'2017-08-02 10:10:17\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'240\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 10:10:17\', \'2017-08-02 10:10:17\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'241\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 10:10:17\', \'2017-08-02 10:10:17\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'242\', \'9\', \'面膜\', \'面膜介绍\', \'xxxxxxxxxx.avi\', \'1\', \'xxaaaaaaa.jpg\', null, \'2017-08-02 10:10:47\', \'2017-08-02 10:10:47\', \'9\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'243\', \'8\', \'面膜\', \'面膜介绍\', \'xxxxxxxxxx.avi\', \'1\', \'xxaaaaaaa.jpg\', null, \'2017-08-02 10:11:24\', \'2017-08-02 10:11:24\', \'9\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'244\', \'100006\', \'面膜\', \'面膜介绍\', \'xxxxxxxxxx.avi\', \'1\', \'xxaaaaaaa.jpg\', null, \'2017-08-02 10:11:55\', \'2017-08-02 10:11:55\', \'9\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'245\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 10:16:49\', \'2017-08-02 10:16:49\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'246\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 10:16:49\', \'2017-08-02 10:16:49\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'247\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 10:16:49\', \'2017-08-02 10:16:49\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'248\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 10:16:49\', \'2017-08-02 10:16:49\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'249\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 10:16:49\', \'2017-08-02 10:16:49\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'250\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 10:16:49\', \'2017-08-02 10:16:49\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'251\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 10:16:49\', \'2017-08-02 10:16:49\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'252\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 10:16:49\', \'2017-08-02 10:16:49\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'253\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 10:16:49\', \'2017-08-02 10:16:49\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'254\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 10:16:49\', \'2017-08-02 10:16:49\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'255\', \'20\', \'放松的如热\', \'放松的如热介绍\', \'fsdfsdfsdfsdfdsfsdfdsffsfd.avi\', \'1\', \'fsdfsdfsdfsdfdsfsdfdsffsfd.jpg\', null, \'2017-08-02 10:18:06\', \'2017-08-02 10:18:06\', \'9\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'256\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 10:20:06\', \'2017-08-02 10:20:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'257\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 10:20:06\', \'2017-08-02 10:20:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'258\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 10:20:06\', \'2017-08-02 10:20:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'259\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 10:20:06\', \'2017-08-02 10:20:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'260\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 10:20:06\', \'2017-08-02 10:20:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'261\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 10:20:06\', \'2017-08-02 10:20:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'262\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 10:20:06\', \'2017-08-02 10:20:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'263\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 10:20:06\', \'2017-08-02 10:20:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'264\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 10:20:06\', \'2017-08-02 10:20:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'265\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 10:20:06\', \'2017-08-02 10:20:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'266\', \'100005\', \'复赛复赛赛特温热为主\', \'复赛复赛赛特温热为主\', \'fsdfsdfsdfsdfdsfsdfdsffsfd.avi\', \'2\', \'fsdfsdfsdfsdfdsfsdfdsffsfd.jpg\', \'1\', \'2017-08-02 10:20:53\', \'2017-08-02 10:20:53\', \'9\');');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'267\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 10:51:50\', \'2017-08-02 10:51:50\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'268\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 10:51:50\', \'2017-08-02 10:51:50\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'269\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 10:51:50\', \'2017-08-02 10:51:50\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'270\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 10:51:50\', \'2017-08-02 10:51:50\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'271\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 10:51:50\', \'2017-08-02 10:51:50\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'272\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 10:51:51\', \'2017-08-02 10:51:51\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'273\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 10:51:51\', \'2017-08-02 10:51:51\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'274\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 10:51:51\', \'2017-08-02 10:51:51\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'275\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 10:51:51\', \'2017-08-02 10:51:51\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'276\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 10:51:51\', \'2017-08-02 10:51:51\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'277\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 10:57:18\', \'2017-08-02 10:57:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'278\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 10:57:18\', \'2017-08-02 10:57:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'279\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 10:57:18\', \'2017-08-02 10:57:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'280\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 10:57:18\', \'2017-08-02 10:57:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'281\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 10:57:18\', \'2017-08-02 10:57:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'282\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 10:57:18\', \'2017-08-02 10:57:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'283\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 10:57:18\', \'2017-08-02 10:57:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'284\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 10:57:18\', \'2017-08-02 10:57:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'285\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 10:57:18\', \'2017-08-02 10:57:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'286\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 10:57:18\', \'2017-08-02 10:57:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'287\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 10:59:57\', \'2017-08-02 10:59:57\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'288\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 10:59:57\', \'2017-08-02 10:59:57\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'289\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 10:59:57\', \'2017-08-02 10:59:57\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'290\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 10:59:58\', \'2017-08-02 10:59:58\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'291\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 10:59:58\', \'2017-08-02 10:59:58\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'292\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 10:59:58\', \'2017-08-02 10:59:58\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'293\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 10:59:58\', \'2017-08-02 10:59:58\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'294\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 10:59:58\', \'2017-08-02 10:59:58\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'295\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 10:59:58\', \'2017-08-02 10:59:58\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'296\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 10:59:58\', \'2017-08-02 10:59:58\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'297\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 11:01:15\', \'2017-08-02 11:01:15\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'298\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 11:01:15\', \'2017-08-02 11:01:15\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'299\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 11:01:15\', \'2017-08-02 11:01:15\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'300\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 11:01:15\', \'2017-08-02 11:01:15\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'301\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 11:01:15\', \'2017-08-02 11:01:15\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'302\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 11:01:15\', \'2017-08-02 11:01:15\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'303\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 11:01:15\', \'2017-08-02 11:01:15\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'304\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 11:01:15\', \'2017-08-02 11:01:15\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'305\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 11:01:15\', \'2017-08-02 11:01:15\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'306\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 11:01:15\', \'2017-08-02 11:01:15\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'307\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 11:32:39\', \'2017-08-02 11:32:39\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'308\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 11:32:39\', \'2017-08-02 11:32:39\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'309\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 11:32:39\', \'2017-08-02 11:32:39\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'310\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 11:32:39\', \'2017-08-02 11:32:39\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'311\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 11:32:39\', \'2017-08-02 11:32:39\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'312\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 11:32:39\', \'2017-08-02 11:32:39\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'313\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 11:32:39\', \'2017-08-02 11:32:39\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'314\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 11:32:39\', \'2017-08-02 11:32:39\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'315\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 11:32:39\', \'2017-08-02 11:32:39\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'316\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 11:32:39\', \'2017-08-02 11:32:39\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'317\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 11:33:07\', \'2017-08-02 11:33:07\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'318\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 11:33:07\', \'2017-08-02 11:33:07\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'319\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 11:33:07\', \'2017-08-02 11:33:07\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'320\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 11:33:07\', \'2017-08-02 11:33:07\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'321\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 11:33:07\', \'2017-08-02 11:33:07\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'322\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 11:33:07\', \'2017-08-02 11:33:07\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'323\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 11:33:08\', \'2017-08-02 11:33:08\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'324\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 11:33:08\', \'2017-08-02 11:33:08\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'325\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 11:33:08\', \'2017-08-02 11:33:08\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'326\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 11:33:08\', \'2017-08-02 11:33:08\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'327\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 14:08:24\', \'2017-08-02 14:08:24\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'328\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 14:08:24\', \'2017-08-02 14:08:24\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'329\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 14:08:24\', \'2017-08-02 14:08:24\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'330\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 14:08:25\', \'2017-08-02 14:08:25\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'331\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 14:08:25\', \'2017-08-02 14:08:25\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'332\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 14:08:25\', \'2017-08-02 14:08:25\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'333\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 14:08:25\', \'2017-08-02 14:08:25\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'334\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 14:08:25\', \'2017-08-02 14:08:25\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'335\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 14:08:25\', \'2017-08-02 14:08:25\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'336\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 14:08:25\', \'2017-08-02 14:08:25\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'337\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 14:13:51\', \'2017-08-02 14:13:51\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'338\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 14:13:51\', \'2017-08-02 14:13:51\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'339\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 14:13:52\', \'2017-08-02 14:13:52\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'340\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 14:13:52\', \'2017-08-02 14:13:52\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'341\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 14:13:52\', \'2017-08-02 14:13:52\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'342\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 14:13:52\', \'2017-08-02 14:13:52\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'343\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 14:13:52\', \'2017-08-02 14:13:52\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'344\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 14:13:52\', \'2017-08-02 14:13:52\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'345\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 14:13:52\', \'2017-08-02 14:13:52\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'346\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 14:13:52\', \'2017-08-02 14:13:52\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'347\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 14:15:04\', \'2017-08-02 14:15:04\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'348\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 14:15:04\', \'2017-08-02 14:15:04\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'349\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 14:15:05\', \'2017-08-02 14:15:05\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'350\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 14:15:05\', \'2017-08-02 14:15:05\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'351\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 14:15:05\', \'2017-08-02 14:15:05\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'352\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 14:15:05\', \'2017-08-02 14:15:05\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'353\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 14:15:05\', \'2017-08-02 14:15:05\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'354\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 14:15:05\', \'2017-08-02 14:15:05\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'355\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 14:15:05\', \'2017-08-02 14:15:05\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'356\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 14:15:05\', \'2017-08-02 14:15:05\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'357\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 14:17:18\', \'2017-08-02 14:17:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'358\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 14:17:18\', \'2017-08-02 14:17:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'359\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 14:17:18\', \'2017-08-02 14:17:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'360\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 14:17:18\', \'2017-08-02 14:17:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'361\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 14:17:18\', \'2017-08-02 14:17:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'362\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 14:17:18\', \'2017-08-02 14:17:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'363\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 14:17:18\', \'2017-08-02 14:17:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'364\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 14:17:18\', \'2017-08-02 14:17:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'365\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 14:17:18\', \'2017-08-02 14:17:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'366\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 14:17:18\', \'2017-08-02 14:17:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'367\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 14:22:03\', \'2017-08-02 14:22:03\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'368\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 14:22:03\', \'2017-08-02 14:22:03\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'369\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 14:22:03\', \'2017-08-02 14:22:03\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'370\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 14:22:03\', \'2017-08-02 14:22:03\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'371\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 14:22:03\', \'2017-08-02 14:22:03\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'372\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 14:22:03\', \'2017-08-02 14:22:03\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'373\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 14:22:03\', \'2017-08-02 14:22:03\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'374\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 14:22:03\', \'2017-08-02 14:22:03\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'375\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 14:22:03\', \'2017-08-02 14:22:03\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'376\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 14:22:03\', \'2017-08-02 14:22:03\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'377\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 14:34:21\', \'2017-08-02 14:34:21\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'378\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 14:34:21\', \'2017-08-02 14:34:21\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'379\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 14:34:21\', \'2017-08-02 14:34:21\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'380\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 14:34:21\', \'2017-08-02 14:34:21\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'381\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 14:34:22\', \'2017-08-02 14:34:22\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'382\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 14:34:22\', \'2017-08-02 14:34:22\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'383\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 14:34:22\', \'2017-08-02 14:34:22\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'384\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 14:34:22\', \'2017-08-02 14:34:22\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'385\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 14:34:22\', \'2017-08-02 14:34:22\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'386\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 14:34:22\', \'2017-08-02 14:34:22\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'387\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 14:36:16\', \'2017-08-02 14:36:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'388\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 14:36:16\', \'2017-08-02 14:36:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'389\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 14:36:16\', \'2017-08-02 14:36:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'390\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 14:36:16\', \'2017-08-02 14:36:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'391\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 14:36:16\', \'2017-08-02 14:36:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'392\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 14:36:16\', \'2017-08-02 14:36:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'393\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 14:36:16\', \'2017-08-02 14:36:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'394\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 14:36:16\', \'2017-08-02 14:36:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'395\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 14:36:16\', \'2017-08-02 14:36:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'396\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 14:36:16\', \'2017-08-02 14:36:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'397\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 14:41:45\', \'2017-08-02 14:41:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'398\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 14:41:45\', \'2017-08-02 14:41:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'399\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 14:41:45\', \'2017-08-02 14:41:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'400\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 14:41:45\', \'2017-08-02 14:41:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'401\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 14:41:45\', \'2017-08-02 14:41:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'402\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 14:41:45\', \'2017-08-02 14:41:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'403\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 14:41:45\', \'2017-08-02 14:41:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'404\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 14:41:46\', \'2017-08-02 14:41:46\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'405\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 14:41:46\', \'2017-08-02 14:41:46\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'406\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 14:41:46\', \'2017-08-02 14:41:46\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'407\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 14:52:08\', \'2017-08-02 14:52:08\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'408\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 14:52:09\', \'2017-08-02 14:52:09\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'409\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 14:52:09\', \'2017-08-02 14:52:09\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'410\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 14:52:09\', \'2017-08-02 14:52:09\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'411\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 14:52:09\', \'2017-08-02 14:52:09\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'412\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 14:52:09\', \'2017-08-02 14:52:09\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'413\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 14:52:09\', \'2017-08-02 14:52:09\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'414\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 14:52:09\', \'2017-08-02 14:52:09\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'415\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 14:52:09\', \'2017-08-02 14:52:09\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'416\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 14:52:09\', \'2017-08-02 14:52:09\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'417\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 14:52:28\', \'2017-08-02 14:52:28\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'418\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 14:52:28\', \'2017-08-02 14:52:28\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'419\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 14:52:28\', \'2017-08-02 14:52:28\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'420\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 14:52:28\', \'2017-08-02 14:52:28\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'421\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 14:52:28\', \'2017-08-02 14:52:28\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'422\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 14:52:28\', \'2017-08-02 14:52:28\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'423\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 14:52:28\', \'2017-08-02 14:52:28\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'424\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 14:52:28\', \'2017-08-02 14:52:28\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'425\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 14:52:28\', \'2017-08-02 14:52:28\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'426\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 14:52:28\', \'2017-08-02 14:52:28\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'427\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 14:55:28\', \'2017-08-02 14:55:28\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'428\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 14:55:28\', \'2017-08-02 14:55:28\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'429\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 14:55:28\', \'2017-08-02 14:55:28\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'430\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 14:55:28\', \'2017-08-02 14:55:28\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'431\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 14:55:28\', \'2017-08-02 14:55:28\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'432\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 14:55:28\', \'2017-08-02 14:55:28\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'433\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 14:55:28\', \'2017-08-02 14:55:28\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'434\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 14:55:28\', \'2017-08-02 14:55:28\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'435\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 14:55:28\', \'2017-08-02 14:55:28\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'436\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 14:55:28\', \'2017-08-02 14:55:28\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'437\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 15:02:16\', \'2017-08-02 15:02:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'438\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 15:02:16\', \'2017-08-02 15:02:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'439\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 15:02:16\', \'2017-08-02 15:02:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'440\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 15:02:16\', \'2017-08-02 15:02:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'441\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 15:02:16\', \'2017-08-02 15:02:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'442\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 15:02:16\', \'2017-08-02 15:02:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'443\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 15:02:16\', \'2017-08-02 15:02:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'444\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 15:02:16\', \'2017-08-02 15:02:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'445\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 15:02:16\', \'2017-08-02 15:02:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'446\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 15:02:16\', \'2017-08-02 15:02:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'447\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 15:03:23\', \'2017-08-02 15:03:23\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'448\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 15:03:23\', \'2017-08-02 15:03:23\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'449\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 15:03:23\', \'2017-08-02 15:03:23\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'450\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 15:03:23\', \'2017-08-02 15:03:23\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'451\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 15:03:23\', \'2017-08-02 15:03:23\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'452\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 15:03:23\', \'2017-08-02 15:03:23\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'453\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 15:03:23\', \'2017-08-02 15:03:23\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'454\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 15:03:23\', \'2017-08-02 15:03:23\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'455\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 15:03:23\', \'2017-08-02 15:03:23\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'456\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 15:03:23\', \'2017-08-02 15:03:23\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'457\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 15:04:40\', \'2017-08-02 15:04:40\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'458\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 15:04:40\', \'2017-08-02 15:04:40\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'459\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 15:04:40\', \'2017-08-02 15:04:40\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'460\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 15:04:40\', \'2017-08-02 15:04:40\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'461\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 15:04:40\', \'2017-08-02 15:04:40\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'462\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 15:04:40\', \'2017-08-02 15:04:40\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'463\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 15:04:40\', \'2017-08-02 15:04:40\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'464\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 15:04:40\', \'2017-08-02 15:04:40\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'465\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 15:04:40\', \'2017-08-02 15:04:40\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'466\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 15:04:40\', \'2017-08-02 15:04:40\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'467\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 15:07:15\', \'2017-08-02 15:07:15\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'468\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 15:07:15\', \'2017-08-02 15:07:15\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'469\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 15:07:15\', \'2017-08-02 15:07:15\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'470\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 15:07:15\', \'2017-08-02 15:07:15\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'471\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 15:07:15\', \'2017-08-02 15:07:15\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'472\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 15:07:16\', \'2017-08-02 15:07:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'473\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 15:07:16\', \'2017-08-02 15:07:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'474\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 15:07:16\', \'2017-08-02 15:07:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'475\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 15:07:16\', \'2017-08-02 15:07:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'476\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 15:07:16\', \'2017-08-02 15:07:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'477\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 15:13:06\', \'2017-08-02 15:13:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'478\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 15:13:06\', \'2017-08-02 15:13:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'479\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 15:13:06\', \'2017-08-02 15:13:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'480\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 15:13:06\', \'2017-08-02 15:13:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'481\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 15:13:06\', \'2017-08-02 15:13:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'482\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 15:13:06\', \'2017-08-02 15:13:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'483\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 15:13:06\', \'2017-08-02 15:13:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'484\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 15:13:06\', \'2017-08-02 15:13:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'485\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 15:13:07\', \'2017-08-02 15:13:07\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'486\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 15:13:07\', \'2017-08-02 15:13:07\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'487\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 15:15:50\', \'2017-08-02 15:15:50\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'488\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 15:15:50\', \'2017-08-02 15:15:50\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'489\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 15:15:50\', \'2017-08-02 15:15:50\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'490\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 15:15:50\', \'2017-08-02 15:15:50\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'491\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 15:15:50\', \'2017-08-02 15:15:50\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'492\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 15:15:50\', \'2017-08-02 15:15:50\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'493\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 15:15:50\', \'2017-08-02 15:15:50\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'494\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 15:15:50\', \'2017-08-02 15:15:50\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'495\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 15:15:50\', \'2017-08-02 15:15:50\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'496\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 15:15:50\', \'2017-08-02 15:15:50\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'497\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 15:17:33\', \'2017-08-02 15:17:33\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'498\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 15:17:33\', \'2017-08-02 15:17:33\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'499\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 15:17:33\', \'2017-08-02 15:17:33\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'500\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 15:17:33\', \'2017-08-02 15:17:33\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'501\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 15:17:33\', \'2017-08-02 15:17:33\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'502\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 15:17:33\', \'2017-08-02 15:17:33\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'503\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 15:17:33\', \'2017-08-02 15:17:33\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'504\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 15:17:33\', \'2017-08-02 15:17:33\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'505\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 15:17:33\', \'2017-08-02 15:17:33\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'506\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 15:17:33\', \'2017-08-02 15:17:33\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'507\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 15:18:29\', \'2017-08-02 15:18:29\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'508\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 15:18:29\', \'2017-08-02 15:18:29\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'509\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 15:18:29\', \'2017-08-02 15:18:29\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'510\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 15:18:29\', \'2017-08-02 15:18:29\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'511\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 15:18:29\', \'2017-08-02 15:18:29\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'512\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 15:18:29\', \'2017-08-02 15:18:29\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'513\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 15:18:29\', \'2017-08-02 15:18:29\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'514\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 15:18:29\', \'2017-08-02 15:18:29\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'515\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 15:18:29\', \'2017-08-02 15:18:29\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'516\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 15:18:29\', \'2017-08-02 15:18:29\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'517\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 15:19:20\', \'2017-08-02 15:19:20\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'518\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 15:19:20\', \'2017-08-02 15:19:20\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'519\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 15:19:20\', \'2017-08-02 15:19:20\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'520\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 15:19:20\', \'2017-08-02 15:19:20\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'521\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 15:19:20\', \'2017-08-02 15:19:20\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'522\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 15:19:20\', \'2017-08-02 15:19:20\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'523\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 15:19:20\', \'2017-08-02 15:19:20\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'524\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 15:19:21\', \'2017-08-02 15:19:21\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'525\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 15:19:21\', \'2017-08-02 15:19:21\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'526\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 15:19:21\', \'2017-08-02 15:19:21\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'527\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 15:21:35\', \'2017-08-02 15:21:35\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'528\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 15:21:35\', \'2017-08-02 15:21:35\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'529\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 15:21:35\', \'2017-08-02 15:21:35\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'530\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 15:21:35\', \'2017-08-02 15:21:35\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'531\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 15:21:35\', \'2017-08-02 15:21:35\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'532\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 15:21:35\', \'2017-08-02 15:21:35\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'533\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 15:21:35\', \'2017-08-02 15:21:35\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'534\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 15:21:35\', \'2017-08-02 15:21:35\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'535\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 15:21:35\', \'2017-08-02 15:21:35\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'536\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 15:21:35\', \'2017-08-02 15:21:35\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'537\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 15:24:42\', \'2017-08-02 15:24:42\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'538\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 15:24:42\', \'2017-08-02 15:24:42\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'539\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 15:24:42\', \'2017-08-02 15:24:42\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'540\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 15:24:42\', \'2017-08-02 15:24:42\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'541\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 15:24:42\', \'2017-08-02 15:24:42\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'542\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 15:24:42\', \'2017-08-02 15:24:42\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'543\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 15:24:42\', \'2017-08-02 15:24:42\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'544\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 15:24:42\', \'2017-08-02 15:24:42\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'545\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 15:24:42\', \'2017-08-02 15:24:42\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'546\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 15:24:42\', \'2017-08-02 15:24:42\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'547\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 15:27:05\', \'2017-08-02 15:27:05\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'548\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 15:27:05\', \'2017-08-02 15:27:05\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'549\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 15:27:06\', \'2017-08-02 15:27:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'550\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 15:27:06\', \'2017-08-02 15:27:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'551\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 15:27:06\', \'2017-08-02 15:27:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'552\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 15:27:06\', \'2017-08-02 15:27:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'553\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 15:27:06\', \'2017-08-02 15:27:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'554\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 15:27:06\', \'2017-08-02 15:27:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'555\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 15:27:06\', \'2017-08-02 15:27:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'556\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 15:27:06\', \'2017-08-02 15:27:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'557\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 15:28:12\', \'2017-08-02 15:28:12\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'558\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 15:28:13\', \'2017-08-02 15:28:13\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'559\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 15:28:13\', \'2017-08-02 15:28:13\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'560\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 15:28:13\', \'2017-08-02 15:28:13\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'561\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 15:28:13\', \'2017-08-02 15:28:13\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'562\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 15:28:13\', \'2017-08-02 15:28:13\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'563\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 15:28:13\', \'2017-08-02 15:28:13\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'564\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 15:28:13\', \'2017-08-02 15:28:13\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'565\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 15:28:13\', \'2017-08-02 15:28:13\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'566\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 15:28:13\', \'2017-08-02 15:28:13\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'567\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 15:29:05\', \'2017-08-02 15:29:05\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'568\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 15:29:05\', \'2017-08-02 15:29:05\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'569\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 15:29:05\', \'2017-08-02 15:29:05\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'570\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 15:29:05\', \'2017-08-02 15:29:05\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'571\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 15:29:05\', \'2017-08-02 15:29:05\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'572\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 15:29:05\', \'2017-08-02 15:29:05\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'573\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 15:29:05\', \'2017-08-02 15:29:05\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'574\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 15:29:05\', \'2017-08-02 15:29:05\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'575\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 15:29:05\', \'2017-08-02 15:29:05\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'576\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 15:29:05\', \'2017-08-02 15:29:05\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'577\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 15:42:41\', \'2017-08-02 15:42:41\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'578\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 15:42:41\', \'2017-08-02 15:42:41\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'579\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 15:42:41\', \'2017-08-02 15:42:41\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'580\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 15:42:41\', \'2017-08-02 15:42:41\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'581\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 15:42:41\', \'2017-08-02 15:42:41\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'582\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 15:42:41\', \'2017-08-02 15:42:41\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'583\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 15:42:41\', \'2017-08-02 15:42:41\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'584\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 15:42:41\', \'2017-08-02 15:42:41\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'585\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 15:42:41\', \'2017-08-02 15:42:41\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'586\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 15:42:42\', \'2017-08-02 15:42:42\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'587\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 15:43:07\', \'2017-08-02 15:43:07\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'588\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 15:43:07\', \'2017-08-02 15:43:07\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'589\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 15:43:07\', \'2017-08-02 15:43:07\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'590\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 15:43:07\', \'2017-08-02 15:43:07\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'591\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 15:43:07\', \'2017-08-02 15:43:07\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'592\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 15:43:07\', \'2017-08-02 15:43:07\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'593\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 15:43:07\', \'2017-08-02 15:43:07\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'594\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 15:43:07\', \'2017-08-02 15:43:07\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'595\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 15:43:07\', \'2017-08-02 15:43:07\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'596\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 15:43:07\', \'2017-08-02 15:43:07\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'597\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 15:45:05\', \'2017-08-02 15:45:05\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'598\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 15:45:05\', \'2017-08-02 15:45:05\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'599\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 15:45:06\', \'2017-08-02 15:45:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'600\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 15:45:06\', \'2017-08-02 15:45:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'601\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 15:45:06\', \'2017-08-02 15:45:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'602\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 15:45:06\', \'2017-08-02 15:45:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'603\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 15:45:06\', \'2017-08-02 15:45:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'604\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 15:45:06\', \'2017-08-02 15:45:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'605\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 15:45:06\', \'2017-08-02 15:45:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'606\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 15:45:06\', \'2017-08-02 15:45:06\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'607\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 15:48:54\', \'2017-08-02 15:48:54\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'608\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 15:48:54\', \'2017-08-02 15:48:54\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'609\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 15:48:54\', \'2017-08-02 15:48:54\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'610\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 15:48:54\', \'2017-08-02 15:48:54\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'611\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 15:48:54\', \'2017-08-02 15:48:54\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'612\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 15:48:54\', \'2017-08-02 15:48:54\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'613\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 15:48:54\', \'2017-08-02 15:48:54\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'614\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 15:48:54\', \'2017-08-02 15:48:54\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'615\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 15:48:55\', \'2017-08-02 15:48:55\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'616\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 15:48:55\', \'2017-08-02 15:48:55\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'617\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 15:50:41\', \'2017-08-02 15:50:41\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'618\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 15:50:42\', \'2017-08-02 15:50:42\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'619\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 15:50:42\', \'2017-08-02 15:50:42\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'620\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 15:50:42\', \'2017-08-02 15:50:42\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'621\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 15:50:42\', \'2017-08-02 15:50:42\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'622\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 15:50:42\', \'2017-08-02 15:50:42\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'623\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 15:50:42\', \'2017-08-02 15:50:42\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'624\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 15:50:42\', \'2017-08-02 15:50:42\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'625\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 15:50:42\', \'2017-08-02 15:50:42\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'626\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 15:50:42\', \'2017-08-02 15:50:42\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'627\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 15:52:25\', \'2017-08-02 15:52:25\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'628\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 15:52:25\', \'2017-08-02 15:52:25\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'629\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 15:52:25\', \'2017-08-02 15:52:25\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'630\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 15:52:25\', \'2017-08-02 15:52:25\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'631\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 15:52:25\', \'2017-08-02 15:52:25\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'632\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 15:52:25\', \'2017-08-02 15:52:25\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'633\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 15:52:25\', \'2017-08-02 15:52:25\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'634\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 15:52:25\', \'2017-08-02 15:52:25\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'635\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 15:52:25\', \'2017-08-02 15:52:25\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'636\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 15:52:25\', \'2017-08-02 15:52:25\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'637\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 15:54:10\', \'2017-08-02 15:54:10\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'638\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 15:54:10\', \'2017-08-02 15:54:10\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'639\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 15:54:11\', \'2017-08-02 15:54:11\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'640\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 15:54:11\', \'2017-08-02 15:54:11\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'641\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 15:54:11\', \'2017-08-02 15:54:11\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'642\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 15:54:11\', \'2017-08-02 15:54:11\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'643\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 15:54:11\', \'2017-08-02 15:54:11\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'644\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 15:54:11\', \'2017-08-02 15:54:11\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'645\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 15:54:11\', \'2017-08-02 15:54:11\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'646\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 15:54:11\', \'2017-08-02 15:54:11\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'647\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 15:55:16\', \'2017-08-02 15:55:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'648\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 15:55:16\', \'2017-08-02 15:55:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'649\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 15:55:16\', \'2017-08-02 15:55:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'650\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 15:55:16\', \'2017-08-02 15:55:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'651\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 15:55:16\', \'2017-08-02 15:55:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'652\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 15:55:16\', \'2017-08-02 15:55:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'653\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 15:55:16\', \'2017-08-02 15:55:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'654\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 15:55:16\', \'2017-08-02 15:55:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'655\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 15:55:16\', \'2017-08-02 15:55:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'656\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 15:55:16\', \'2017-08-02 15:55:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'657\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 15:56:30\', \'2017-08-02 15:56:30\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'658\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 15:56:30\', \'2017-08-02 15:56:30\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'659\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 15:56:30\', \'2017-08-02 15:56:30\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'660\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 15:56:30\', \'2017-08-02 15:56:30\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'661\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 15:56:30\', \'2017-08-02 15:56:30\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'662\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 15:56:30\', \'2017-08-02 15:56:30\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'663\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 15:56:30\', \'2017-08-02 15:56:30\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'664\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 15:56:30\', \'2017-08-02 15:56:30\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'665\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 15:56:30\', \'2017-08-02 15:56:30\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'666\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 15:56:30\', \'2017-08-02 15:56:30\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'667\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 16:00:34\', \'2017-08-02 16:00:34\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'668\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 16:00:34\', \'2017-08-02 16:00:34\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'669\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 16:00:34\', \'2017-08-02 16:00:34\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'670\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 16:00:34\', \'2017-08-02 16:00:34\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'671\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 16:00:34\', \'2017-08-02 16:00:34\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'672\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 16:00:34\', \'2017-08-02 16:00:34\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'673\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 16:00:34\', \'2017-08-02 16:00:34\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'674\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 16:00:34\', \'2017-08-02 16:00:34\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'675\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 16:00:34\', \'2017-08-02 16:00:34\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'676\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 16:00:34\', \'2017-08-02 16:00:34\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'677\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 16:02:16\', \'2017-08-02 16:02:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'678\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 16:02:16\', \'2017-08-02 16:02:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'679\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 16:02:16\', \'2017-08-02 16:02:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'680\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 16:02:16\', \'2017-08-02 16:02:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'681\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 16:02:16\', \'2017-08-02 16:02:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'682\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 16:02:16\', \'2017-08-02 16:02:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'683\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 16:02:16\', \'2017-08-02 16:02:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'684\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 16:02:16\', \'2017-08-02 16:02:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'685\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 16:02:17\', \'2017-08-02 16:02:17\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'686\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 16:02:17\', \'2017-08-02 16:02:17\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'687\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 16:10:15\', \'2017-08-02 16:10:15\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'688\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 16:10:15\', \'2017-08-02 16:10:15\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'689\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 16:10:15\', \'2017-08-02 16:10:15\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'690\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 16:10:15\', \'2017-08-02 16:10:15\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'691\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 16:10:15\', \'2017-08-02 16:10:15\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'692\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 16:10:15\', \'2017-08-02 16:10:15\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'693\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 16:10:16\', \'2017-08-02 16:10:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'694\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 16:10:16\', \'2017-08-02 16:10:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'695\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 16:10:16\', \'2017-08-02 16:10:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'696\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 16:10:16\', \'2017-08-02 16:10:16\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'697\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 16:12:40\', \'2017-08-02 16:12:40\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'698\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 16:12:40\', \'2017-08-02 16:12:40\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'699\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 16:12:40\', \'2017-08-02 16:12:40\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'700\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 16:12:40\', \'2017-08-02 16:12:40\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'701\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 16:12:40\', \'2017-08-02 16:12:40\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'702\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 16:12:40\', \'2017-08-02 16:12:40\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'703\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 16:12:40\', \'2017-08-02 16:12:40\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'704\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 16:12:40\', \'2017-08-02 16:12:40\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'705\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 16:12:40\', \'2017-08-02 16:12:40\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'706\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 16:12:40\', \'2017-08-02 16:12:40\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'707\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 16:14:29\', \'2017-08-02 16:14:29\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'708\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 16:14:30\', \'2017-08-02 16:14:30\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'709\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 16:14:30\', \'2017-08-02 16:14:30\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'710\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 16:14:30\', \'2017-08-02 16:14:30\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'711\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 16:14:30\', \'2017-08-02 16:14:30\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'712\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 16:14:30\', \'2017-08-02 16:14:30\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'713\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 16:14:30\', \'2017-08-02 16:14:30\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'714\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 16:14:30\', \'2017-08-02 16:14:30\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'715\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 16:14:30\', \'2017-08-02 16:14:30\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'716\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 16:14:30\', \'2017-08-02 16:14:30\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'717\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 16:32:57\', \'2017-08-02 16:32:57\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'718\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 16:32:57\', \'2017-08-02 16:32:57\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'719\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 16:32:57\', \'2017-08-02 16:32:57\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'720\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 16:32:57\', \'2017-08-02 16:32:57\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'721\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 16:32:57\', \'2017-08-02 16:32:57\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'722\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 16:32:57\', \'2017-08-02 16:32:57\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'723\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 16:32:57\', \'2017-08-02 16:32:57\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'724\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 16:32:57\', \'2017-08-02 16:32:57\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'725\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 16:32:57\', \'2017-08-02 16:32:57\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'726\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 16:32:57\', \'2017-08-02 16:32:57\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'727\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 17:14:45\', \'2017-08-02 17:14:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'728\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 17:14:45\', \'2017-08-02 17:14:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'729\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 17:14:45\', \'2017-08-02 17:14:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'730\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 17:14:45\', \'2017-08-02 17:14:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'731\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 17:14:46\', \'2017-08-02 17:14:46\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'732\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 17:14:46\', \'2017-08-02 17:14:46\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'733\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 17:14:46\', \'2017-08-02 17:14:46\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'734\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 17:14:46\', \'2017-08-02 17:14:46\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'735\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 17:14:46\', \'2017-08-02 17:14:46\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'736\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 17:14:46\', \'2017-08-02 17:14:46\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'737\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 17:15:18\', \'2017-08-02 17:15:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'738\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 17:15:18\', \'2017-08-02 17:15:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'739\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 17:15:18\', \'2017-08-02 17:15:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'740\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 17:15:18\', \'2017-08-02 17:15:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'741\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 17:15:18\', \'2017-08-02 17:15:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'742\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 17:15:18\', \'2017-08-02 17:15:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'743\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 17:15:18\', \'2017-08-02 17:15:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'744\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 17:15:18\', \'2017-08-02 17:15:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'745\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 17:15:18\', \'2017-08-02 17:15:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'746\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 17:15:18\', \'2017-08-02 17:15:18\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'747\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 17:22:12\', \'2017-08-02 17:22:12\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'748\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 17:22:12\', \'2017-08-02 17:22:12\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'749\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 17:22:12\', \'2017-08-02 17:22:12\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'750\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 17:22:12\', \'2017-08-02 17:22:12\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'751\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 17:22:12\', \'2017-08-02 17:22:12\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'752\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 17:22:12\', \'2017-08-02 17:22:12\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'753\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 17:22:12\', \'2017-08-02 17:22:12\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'754\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 17:22:12\', \'2017-08-02 17:22:12\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'755\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 17:22:12\', \'2017-08-02 17:22:12\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'756\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 17:22:12\', \'2017-08-02 17:22:12\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'757\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-02 17:33:45\', \'2017-08-02 17:33:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'758\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-02 17:33:45\', \'2017-08-02 17:33:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'759\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-02 17:33:45\', \'2017-08-02 17:33:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'760\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-02 17:33:45\', \'2017-08-02 17:33:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'761\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-02 17:33:45\', \'2017-08-02 17:33:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'762\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-02 17:33:45\', \'2017-08-02 17:33:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'763\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-02 17:33:45\', \'2017-08-02 17:33:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'764\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-02 17:33:45\', \'2017-08-02 17:33:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'765\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-02 17:33:45\', \'2017-08-02 17:33:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'766\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-02 17:33:45\', \'2017-08-02 17:33:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'767\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-03 09:50:29\', \'2017-08-03 09:50:29\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'768\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-03 09:50:29\', \'2017-08-03 09:50:29\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'769\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-03 09:50:29\', \'2017-08-03 09:50:29\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'770\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-03 09:50:29\', \'2017-08-03 09:50:29\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'771\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-03 09:50:29\', \'2017-08-03 09:50:29\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'772\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-03 09:50:29\', \'2017-08-03 09:50:29\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'773\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-03 09:50:29\', \'2017-08-03 09:50:29\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'774\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-03 09:50:29\', \'2017-08-03 09:50:29\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'775\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-03 09:50:29\', \'2017-08-03 09:50:29\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'776\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-03 09:50:29\', \'2017-08-03 09:50:29\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'777\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-03 09:55:14\', \'2017-08-03 09:55:14\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'778\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-03 09:55:14\', \'2017-08-03 09:55:14\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'779\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-03 09:55:14\', \'2017-08-03 09:55:14\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'780\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-03 09:55:14\', \'2017-08-03 09:55:14\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'781\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-03 09:55:14\', \'2017-08-03 09:55:14\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'782\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-03 09:55:14\', \'2017-08-03 09:55:14\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'783\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-03 09:55:14\', \'2017-08-03 09:55:14\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'784\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-03 09:55:14\', \'2017-08-03 09:55:14\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'785\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-03 09:55:14\', \'2017-08-03 09:55:14\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'786\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-03 09:55:14\', \'2017-08-03 09:55:14\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'787\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-03 09:58:57\', \'2017-08-03 09:58:57\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'788\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-03 09:58:57\', \'2017-08-03 09:58:57\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'789\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-03 09:58:57\', \'2017-08-03 09:58:57\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'790\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-03 09:58:57\', \'2017-08-03 09:58:57\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'791\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-03 09:58:57\', \'2017-08-03 09:58:57\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'792\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-03 09:58:57\', \'2017-08-03 09:58:57\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'793\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-03 09:58:57\', \'2017-08-03 09:58:57\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'794\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-03 09:58:58\', \'2017-08-03 09:58:58\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'795\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-03 09:58:58\', \'2017-08-03 09:58:58\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'796\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-03 09:58:58\', \'2017-08-03 09:58:58\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'797\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-03 10:21:44\', \'2017-08-03 10:21:44\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'798\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-03 10:21:44\', \'2017-08-03 10:21:44\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'799\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-03 10:21:44\', \'2017-08-03 10:21:44\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'800\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-03 10:21:45\', \'2017-08-03 10:21:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'801\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-03 10:21:45\', \'2017-08-03 10:21:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'802\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-03 10:21:45\', \'2017-08-03 10:21:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'803\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-03 10:21:45\', \'2017-08-03 10:21:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'804\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-03 10:21:45\', \'2017-08-03 10:21:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'805\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-03 10:21:45\', \'2017-08-03 10:21:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'806\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-03 10:21:45\', \'2017-08-03 10:21:45\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'807\', null, \'初二脑海球砸\', null, null, null, null, \'1\', null, null, null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'808\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-03 11:31:04\', \'2017-08-03 11:31:04\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'809\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-03 11:31:04\', \'2017-08-03 11:31:04\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'810\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-03 11:31:04\', \'2017-08-03 11:31:04\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'811\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-03 11:31:04\', \'2017-08-03 11:31:04\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'812\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-03 11:31:04\', \'2017-08-03 11:31:04\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'813\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-03 11:31:04\', \'2017-08-03 11:31:04\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'814\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-03 11:31:04\', \'2017-08-03 11:31:04\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'815\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-03 11:31:04\', \'2017-08-03 11:31:04\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'816\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-03 11:31:04\', \'2017-08-03 11:31:04\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'817\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-03 11:31:04\', \'2017-08-03 11:31:04\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'818\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-03 11:37:13\', \'2017-08-03 11:37:13\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'819\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-03 11:37:13\', \'2017-08-03 11:37:13\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'820\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-03 11:37:13\', \'2017-08-03 11:37:13\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'821\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-03 11:37:13\', \'2017-08-03 11:37:13\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'822\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-03 11:37:13\', \'2017-08-03 11:37:13\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'823\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-03 11:37:13\', \'2017-08-03 11:37:13\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'824\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-03 11:37:13\', \'2017-08-03 11:37:13\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'825\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-03 11:37:13\', \'2017-08-03 11:37:13\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'826\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-03 11:37:13\', \'2017-08-03 11:37:13\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'827\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-03 11:37:13\', \'2017-08-03 11:37:13\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'828\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-03 11:38:41\', \'2017-08-03 11:38:41\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'829\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-03 11:38:41\', \'2017-08-03 11:38:41\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'830\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-03 11:38:41\', \'2017-08-03 11:38:41\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'831\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-03 11:38:41\', \'2017-08-03 11:38:41\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'832\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-03 11:38:41\', \'2017-08-03 11:38:41\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'833\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-03 11:38:41\', \'2017-08-03 11:38:41\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'834\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-03 11:38:41\', \'2017-08-03 11:38:41\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'835\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-03 11:38:41\', \'2017-08-03 11:38:41\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'836\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-03 11:38:41\', \'2017-08-03 11:38:41\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'837\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-03 11:38:41\', \'2017-08-03 11:38:41\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'838\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-03 14:17:23\', \'2017-08-03 14:17:23\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'839\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-03 14:17:23\', \'2017-08-03 14:17:23\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'840\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-03 14:17:23\', \'2017-08-03 14:17:23\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'841\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-03 14:17:23\', \'2017-08-03 14:17:23\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'842\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-03 14:17:23\', \'2017-08-03 14:17:23\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'843\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-03 14:17:23\', \'2017-08-03 14:17:23\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'844\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-03 14:17:23\', \'2017-08-03 14:17:23\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'845\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-03 14:17:24\', \'2017-08-03 14:17:24\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'846\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-03 14:17:24\', \'2017-08-03 14:17:24\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'847\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-03 14:17:24\', \'2017-08-03 14:17:24\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'848\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-03 14:19:35\', \'2017-08-03 14:19:35\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'849\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-03 14:19:35\', \'2017-08-03 14:19:35\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'850\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-03 14:19:35\', \'2017-08-03 14:19:35\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'851\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-03 14:19:35\', \'2017-08-03 14:19:35\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'852\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-03 14:19:35\', \'2017-08-03 14:19:35\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'853\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-03 14:19:35\', \'2017-08-03 14:19:35\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'854\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-03 14:19:35\', \'2017-08-03 14:19:35\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'855\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-03 14:19:35\', \'2017-08-03 14:19:35\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'856\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-03 14:19:35\', \'2017-08-03 14:19:35\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'857\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-03 14:19:35\', \'2017-08-03 14:19:35\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'858\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-04 09:38:11\', \'2017-08-04 09:38:11\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'859\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-04 09:38:11\', \'2017-08-04 09:38:11\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'860\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-04 09:38:11\', \'2017-08-04 09:38:11\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'861\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-04 09:38:11\', \'2017-08-04 09:38:11\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'862\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-04 09:38:11\', \'2017-08-04 09:38:11\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'863\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-04 09:38:11\', \'2017-08-04 09:38:11\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'864\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-04 09:38:11\', \'2017-08-04 09:38:11\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'865\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-04 09:38:11\', \'2017-08-04 09:38:11\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'866\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-04 09:38:11\', \'2017-08-04 09:38:11\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'867\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-04 09:38:11\', \'2017-08-04 09:38:11\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'868\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-04 09:52:09\', \'2017-08-04 09:52:09\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'869\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-04 09:52:09\', \'2017-08-04 09:52:09\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'870\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-04 09:52:09\', \'2017-08-04 09:52:09\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'871\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-04 09:52:09\', \'2017-08-04 09:52:09\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'872\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-04 09:52:09\', \'2017-08-04 09:52:09\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'873\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-04 09:52:09\', \'2017-08-04 09:52:09\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'874\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-04 09:52:09\', \'2017-08-04 09:52:09\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'875\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-04 09:52:09\', \'2017-08-04 09:52:09\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'876\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-04 09:52:09\', \'2017-08-04 09:52:09\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'877\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-04 09:52:09\', \'2017-08-04 09:52:09\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'878\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-04 09:57:52\', \'2017-08-04 09:57:52\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'879\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-04 09:57:52\', \'2017-08-04 09:57:52\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'880\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-04 09:57:52\', \'2017-08-04 09:57:52\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'881\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-04 09:57:52\', \'2017-08-04 09:57:52\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'882\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-04 09:57:52\', \'2017-08-04 09:57:52\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'883\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-04 09:57:52\', \'2017-08-04 09:57:52\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'884\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-04 09:57:52\', \'2017-08-04 09:57:52\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'885\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-04 09:57:52\', \'2017-08-04 09:57:52\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'886\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-04 09:57:52\', \'2017-08-04 09:57:52\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'887\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-04 09:57:52\', \'2017-08-04 09:57:52\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'888\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-04 09:59:07\', \'2017-08-04 09:59:07\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'889\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-04 09:59:07\', \'2017-08-04 09:59:07\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'890\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-04 09:59:07\', \'2017-08-04 09:59:07\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'891\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-04 09:59:07\', \'2017-08-04 09:59:07\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'892\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-04 09:59:07\', \'2017-08-04 09:59:07\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'893\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-04 09:59:07\', \'2017-08-04 09:59:07\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'894\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-04 09:59:08\', \'2017-08-04 09:59:08\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'895\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-04 09:59:08\', \'2017-08-04 09:59:08\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'896\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-04 09:59:08\', \'2017-08-04 09:59:08\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'897\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-04 09:59:08\', \'2017-08-04 09:59:08\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'898\', \'10\', \'标题10\', \'介绍10\', \'视频地址10\', \'1\', \'图片地址10\', \'10\', \'2017-08-04 10:22:49\', \'2017-08-04 10:22:49\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'899\', \'11\', \'标题11\', \'介绍11\', \'视频地址11\', \'1\', \'图片地址11\', \'11\', \'2017-08-04 10:22:49\', \'2017-08-04 10:22:49\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'900\', \'12\', \'标题12\', \'介绍12\', \'视频地址12\', \'1\', \'图片地址12\', \'12\', \'2017-08-04 10:22:49\', \'2017-08-04 10:22:49\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'901\', \'13\', \'标题13\', \'介绍13\', \'视频地址13\', \'1\', \'图片地址13\', \'13\', \'2017-08-04 10:22:49\', \'2017-08-04 10:22:49\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'902\', \'14\', \'标题14\', \'介绍14\', \'视频地址14\', \'1\', \'图片地址14\', \'14\', \'2017-08-04 10:22:49\', \'2017-08-04 10:22:49\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'903\', \'15\', \'标题15\', \'介绍15\', \'视频地址15\', \'1\', \'图片地址15\', \'15\', \'2017-08-04 10:22:49\', \'2017-08-04 10:22:49\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'904\', \'16\', \'标题16\', \'介绍16\', \'视频地址16\', \'1\', \'图片地址16\', \'16\', \'2017-08-04 10:22:49\', \'2017-08-04 10:22:49\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'905\', \'17\', \'标题17\', \'介绍17\', \'视频地址17\', \'1\', \'图片地址17\', \'17\', \'2017-08-04 10:22:49\', \'2017-08-04 10:22:49\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'906\', \'18\', \'标题18\', \'介绍18\', \'视频地址18\', \'1\', \'图片地址18\', \'18\', \'2017-08-04 10:22:49\', \'2017-08-04 10:22:49\', null);');
INSERT INTO `matrix` VALUES ('INSERT INTO `matrix_video` VALUES (\'907\', \'19\', \'标题19\', \'介绍19\', \'视频地址19\', \'1\', \'图片地址19\', \'19\', \'2017-08-04 10:22:49\', \'2017-08-04 10:22:49\', null);');

-- ----------------------------
-- Table structure for matrix_barrage
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
-- Table structure for matrix_category
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
-- Table structure for matrix_comment
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
-- Table structure for matrix_favourite
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
-- Table structure for matrix_label
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
-- Table structure for matrix_tip
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
-- Table structure for matrix_user
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
-- Table structure for matrix_video
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
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=331 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of matrix_video
-- ----------------------------
INSERT INTO `matrix_video` VALUES ('1', '1', '西藏·星空', '美丽的西藏', 'upload/video/Matrix-Sky.webm', '1', 'upload/image/Matrix-400X400 .jpeg', '1', '2017-08-03 11:03:19', '2017-08-03 11:03:19', '9');
INSERT INTO `matrix_video` VALUES ('2', '1', '无限·星空', '无限星空', 'statics/video/sky.mp4', '1', 'statics/video/sky.jpg', '1', '2017-07-31 20:47:15', '2017-07-31 20:47:15', '3');
INSERT INTO `matrix_video` VALUES ('3', '1', '标题11', '介绍11', 'statics/video/sky.mp4', '0', 'statics/video/sky.jpg', '1', '2017-07-31 20:47:16', '2017-07-31 20:47:16', '4');
INSERT INTO `matrix_video` VALUES ('4', '5', '标题19', '介绍19', 'statics/video/sky.mp4', '9', 'statics/video/sky.jpg', '1', '2017-08-02 11:33:08', '2017-08-02 11:33:08', '1');
INSERT INTO `matrix_video` VALUES ('30', '3', '标题', '介绍2', 'statics/video/sky.mp4', '4', 'statics/video/sky.jpg', '1', '2017-07-31 19:58:34', '2017-07-31 19:58:36', '2');
INSERT INTO `matrix_video` VALUES ('33', '2', '标题12', '介绍12', 'statics/video/sky.mp4', '2', 'statics/video/sky.jpg', '1', '2017-07-31 20:47:16', '2017-07-31 20:47:16', '5');
INSERT INTO `matrix_video` VALUES ('34', '2', '标题13', '介绍13', 'statics/video/sky.mp4', '2', 'statics/video/sky.jpg', '1', '2017-07-31 20:47:16', '2017-07-31 20:47:16', '6');
INSERT INTO `matrix_video` VALUES ('35', '3', '标题14', '介绍14', 'statics/video/sky.mp4', '4', 'statics/video/sky.jpg', '1', '2017-07-31 20:47:16', '2017-07-31 20:47:16', '9');
INSERT INTO `matrix_video` VALUES ('36', '3', '标题15', '介绍15', 'statics/video/sky.mp4', '5', 'statics/video/sky.jpg', '1', '2017-07-31 20:47:16', '2017-07-31 20:47:16', '10');
INSERT INTO `matrix_video` VALUES ('37', '4', '标题16', '介绍16', 'statics/video/sky.mp4', '6', 'statics/video/sky.jpg', '1', '2017-07-31 20:47:16', '2017-07-31 20:47:16', '11');
INSERT INTO `matrix_video` VALUES ('231', '1', '面膜', '面膜介绍', 'statics/video/sky.mp4', '1', 'statics/video/sky.jpg', '1', '2017-08-02 10:08:47', '2017-08-02 10:08:47', '9');
INSERT INTO `matrix_video` VALUES ('232', '1', '标题10', '介绍10', 'statics/video/sky.mp4', '1', 'statics/video/sky.jpg', '1', '2017-08-02 10:10:17', '2017-08-02 10:10:17', '1');
INSERT INTO `matrix_video` VALUES ('233', '2', '标题11', '介绍11', 'statics/video/sky.mp4', '3', 'statics/video/sky.jpg', '1', '2017-08-02 10:10:17', '2017-08-02 10:10:17', '1');
INSERT INTO `matrix_video` VALUES ('234', '2', '标题12', '介绍12', 'statics/video/sky.mp4', '3', 'statics/video/sky.jpg', '1', '2017-08-02 10:10:17', '2017-08-02 10:10:17', '1');
INSERT INTO `matrix_video` VALUES ('235', '3', '标题13', '介绍13', 'statics/video/sky.mp4', '5', 'statics/video/sky.jpg', '1', '2017-08-02 10:10:17', '2017-08-02 10:10:17', '1');
INSERT INTO `matrix_video` VALUES ('236', '3', '标题14', '介绍14', 'statics/video/sky.mp4', '5', 'statics/video/sky.jpg', '1', '2017-08-02 10:10:17', '2017-08-02 10:10:17', '1');
INSERT INTO `matrix_video` VALUES ('237', '4', '标题15', '介绍15', 'statics/video/sky.mp4', '7', 'statics/video/sky.jpg', '1', '2017-08-02 10:10:17', '2017-08-02 10:10:17', '1');
INSERT INTO `matrix_video` VALUES ('238', '4', '标题16', '介绍16', 'statics/video/sky.mp4', '7', 'statics/video/sky.jpg', '1', '2017-08-02 10:10:17', '2017-08-02 10:10:17', '1');
INSERT INTO `matrix_video` VALUES ('239', '5', '标题17', '介绍17', 'statics/video/sky.mp4', '9', 'statics/video/sky.jpg', '1', '2017-08-02 10:10:17', '2017-08-02 10:10:17', '1');
INSERT INTO `matrix_video` VALUES ('240', '5', '标题18', '介绍18', 'statics/video/sky.mp4', '9', 'statics/video/sky.jpg', '1', '2017-08-02 10:10:17', '2017-08-02 10:10:17', '1');
INSERT INTO `matrix_video` VALUES ('241', '5', '标题19', '介绍19', 'statics/video/sky.mp4', '10', 'statics/video/sky.jpg', '1', '2017-08-02 10:10:17', '2017-08-02 10:10:17', '1');
INSERT INTO `matrix_video` VALUES ('242', '1', '面膜', '面膜介绍', 'statics/video/sky.mp4', '1', 'statics/video/sky.jpg', '0', '2017-08-02 10:10:47', '2017-08-02 10:10:47', '9');
INSERT INTO `matrix_video` VALUES ('243', '1', '面膜', '面膜介绍', 'statics/video/sky.mp4', '1', 'statics/video/sky.jpg', '0', '2017-08-02 10:11:24', '2017-08-02 10:11:24', '9');
INSERT INTO `matrix_video` VALUES ('244', '5', '面膜', '面膜介绍', 'statics/video/sky.mp4', '10', 'statics/video/sky.jpg', '0', '2017-08-02 10:11:55', '2017-08-02 10:11:55', '9');
INSERT INTO `matrix_video` VALUES ('245', '1', '标题10', '介绍10', 'statics/video/sky.mp4', '1', 'statics/video/sky.jpg', '1', '2017-08-02 10:16:49', '2017-08-02 10:16:49', '1');
INSERT INTO `matrix_video` VALUES ('246', '2', '标题11', '介绍11', 'statics/video/sky.mp4', '3', 'statics/video/sky.jpg', '1', '2017-08-02 10:16:49', '2017-08-02 10:16:49', '1');
INSERT INTO `matrix_video` VALUES ('247', '2', '标题12', '介绍12', 'statics/video/sky.mp4', '4', 'statics/video/sky.jpg', '1', '2017-08-02 10:16:49', '2017-08-02 10:16:49', '1');
INSERT INTO `matrix_video` VALUES ('248', '3', '标题13', '介绍13', 'statics/video/sky.mp4', '5', 'statics/video/sky.jpg', '1', '2017-08-02 10:16:49', '2017-08-02 10:16:49', '1');
INSERT INTO `matrix_video` VALUES ('249', '3', '标题14', '介绍14', 'statics/video/sky.mp4', '5', 'statics/video/sky.jpg', '1', '2017-08-02 10:16:49', '2017-08-02 10:16:49', '1');
INSERT INTO `matrix_video` VALUES ('250', '4', '标题15', '介绍15', 'statics/video/sky.mp4', '7', 'statics/video/sky.jpg', '1', '2017-08-02 10:16:49', '2017-08-02 10:16:49', '1');
INSERT INTO `matrix_video` VALUES ('251', '4', '标题16', '介绍16', 'statics/video/sky.mp4', '8', 'statics/video/sky.jpg', '1', '2017-08-02 10:16:49', '2017-08-02 10:16:49', '1');
INSERT INTO `matrix_video` VALUES ('252', '5', '标题17', '介绍17', 'statics/video/sky.mp4', '10', 'statics/video/sky.jpg', '1', '2017-08-02 10:16:49', '2017-08-02 10:16:49', '1');
INSERT INTO `matrix_video` VALUES ('253', '5', '标题18', '介绍18', 'statics/video/sky.mp4', '10', 'statics/video/sky.jpg', '1', '2017-08-02 10:16:49', '2017-08-02 10:16:49', '1');
INSERT INTO `matrix_video` VALUES ('254', '5', '标题19', '介绍19', 'statics/video/sky.mp4', '10', 'statics/video/sky.jpg', '1', '2017-08-02 10:16:49', '2017-08-02 10:16:49', '1');
INSERT INTO `matrix_video` VALUES ('255', '5', '放松的如热', '放松的如热介绍', 'statics/video/sky.mp4', '10', 'statics/video/sky.jpg', '1', '2017-08-02 10:18:06', '2017-08-02 10:18:06', '9');
INSERT INTO `matrix_video` VALUES ('256', '1', '标题10', '介绍10', 'statics/video/sky.mp4', '0', 'statics/video/sky.jpg', '1', '2017-08-02 10:20:06', '2017-08-02 10:20:06', '1');
INSERT INTO `matrix_video` VALUES ('257', '1', '标题11', '介绍11', 'statics/video/sky.mp4', '0', 'statics/video/sky.jpg', '1', '2017-08-02 10:20:06', '2017-08-02 10:20:06', '1');
INSERT INTO `matrix_video` VALUES ('258', '2', '标题12', '介绍12', 'statics/video/sky.mp4', '2', 'statics/video/sky.jpg', '1', '2017-08-02 10:20:06', '2017-08-02 10:20:06', '1');
INSERT INTO `matrix_video` VALUES ('259', '2', '标题13', '介绍13', 'statics/video/sky.mp4', '2', 'statics/video/sky.jpg', '1', '2017-08-02 10:20:06', '2017-08-02 10:20:06', '1');
INSERT INTO `matrix_video` VALUES ('260', '3', '标题14', '介绍14', 'statics/video/sky.mp4', '4', 'statics/video/sky.jpg', '1', '2017-08-02 10:20:06', '2017-08-02 10:20:06', '1');
INSERT INTO `matrix_video` VALUES ('261', '3', '标题15', '介绍15', 'statics/video/sky.mp4', '4', 'statics/video/sky.jpg', '1', '2017-08-02 10:20:06', '2017-08-02 10:20:06', '1');
INSERT INTO `matrix_video` VALUES ('262', '4', '标题16', '介绍16', 'statics/video/sky.mp4', '6', 'statics/video/sky.jpg', '1', '2017-08-02 10:20:06', '2017-08-02 10:20:06', '1');
INSERT INTO `matrix_video` VALUES ('263', '4', '标题17', '介绍17', 'statics/video/sky.mp4', '6', 'statics/video/sky.jpg', '1', '2017-08-02 10:20:06', '2017-08-02 10:20:06', '1');
INSERT INTO `matrix_video` VALUES ('264', '5', '标题18', '介绍18', 'statics/video/sky.mp4', '8', 'statics/video/sky.jpg', '1', '2017-08-02 10:20:06', '2017-08-02 10:20:06', '1');
INSERT INTO `matrix_video` VALUES ('265', '5', '标题19', '介绍19', 'statics/video/sky.mp4', '8', 'statics/video/sky.jpg', '1', '2017-08-02 10:20:06', '2017-08-02 10:20:06', '1');
INSERT INTO `matrix_video` VALUES ('266', '5', '复赛复赛赛特温热为主', '复赛复赛赛特温热为主', 'statics/video/sky.mp4', '8', 'statics/video/sky.jpg', '1', '2017-08-02 10:20:53', '2017-08-02 10:20:53', '9');
INSERT INTO `matrix_video` VALUES ('267', '1', '标题10', '介绍10', 'statics/video/sky.mp4', '0', 'statics/video/sky.jpg', '1', '2017-08-02 10:51:50', '2017-08-02 10:51:50', '1');
INSERT INTO `matrix_video` VALUES ('268', '1', '标题11', '介绍11', 'statics/video/sky.mp4', '0', 'statics/video/sky.jpg', '1', '2017-08-02 10:51:50', '2017-08-02 10:51:50', '1');
INSERT INTO `matrix_video` VALUES ('269', '2', '标题12', '介绍12', 'statics/video/sky.mp4', '2', 'statics/video/sky.jpg', '1', '2017-08-02 10:51:50', '2017-08-02 10:51:50', '1');
INSERT INTO `matrix_video` VALUES ('270', '2', '标题13', '介绍13', 'statics/video/sky.mp4', '2', 'statics/video/sky.jpg', '1', '2017-08-02 10:51:50', '2017-08-02 10:51:50', '1');
INSERT INTO `matrix_video` VALUES ('271', '3', '标题14', '介绍14', 'statics/video/sky.mp4', '4', 'statics/video/sky.jpg', '1', '2017-08-02 10:51:50', '2017-08-02 10:51:50', '1');
INSERT INTO `matrix_video` VALUES ('272', '3', '标题15', '介绍15', 'statics/video/sky.mp4', '4', 'statics/video/sky.jpg', '1', '2017-08-02 10:51:51', '2017-08-02 10:51:51', '1');
INSERT INTO `matrix_video` VALUES ('273', '4', '标题16', '介绍16', 'statics/video/sky.mp4', '6', 'statics/video/sky.jpg', '1', '2017-08-02 10:51:51', '2017-08-02 10:51:51', '1');
INSERT INTO `matrix_video` VALUES ('274', '4', '标题17', '介绍17', 'statics/video/sky.mp4', '6', 'statics/video/sky.jpg', '1', '2017-08-02 10:51:51', '2017-08-02 10:51:51', '1');
INSERT INTO `matrix_video` VALUES ('275', '5', '标题18', '介绍18', 'statics/video/sky.mp4', '8', 'statics/video/sky.jpg', '1', '2017-08-02 10:51:51', '2017-08-02 10:51:51', '1');
INSERT INTO `matrix_video` VALUES ('276', '5', '标题19', '介绍19', 'statics/video/sky.mp4', '8', 'statics/video/sky.jpg', '1', '2017-08-02 10:51:51', '2017-08-02 10:51:51', '1');
INSERT INTO `matrix_video` VALUES ('277', '1', '标题10', '介绍10', 'statics/video/sky.mp4', '0', 'statics/video/sky.jpg', '1', '2017-08-02 10:57:18', '2017-08-02 10:57:18', '1');
INSERT INTO `matrix_video` VALUES ('278', '1', '标题11', '介绍11', 'statics/video/sky.mp4', '0', 'statics/video/sky.jpg', '1', '2017-08-02 10:57:18', '2017-08-02 10:57:18', '1');
INSERT INTO `matrix_video` VALUES ('279', '2', '标题12', '介绍12', 'statics/video/sky.mp4', '2', 'statics/video/sky.jpg', '1', '2017-08-02 10:57:18', '2017-08-02 10:57:18', '1');
INSERT INTO `matrix_video` VALUES ('280', '2', '标题13', '介绍13', 'statics/video/sky.mp4', '2', 'statics/video/sky.jpg', '1', '2017-08-02 10:57:18', '2017-08-02 10:57:18', '1');
INSERT INTO `matrix_video` VALUES ('281', '3', '标题14', '介绍14', 'statics/video/sky.mp4', '4', 'statics/video/sky.jpg', '1', '2017-08-02 10:57:18', '2017-08-02 10:57:18', '1');
INSERT INTO `matrix_video` VALUES ('282', '3', '标题15', '介绍15', 'statics/video/sky.mp4', '4', 'statics/video/sky.jpg', '1', '2017-08-02 10:57:18', '2017-08-02 10:57:18', '1');
INSERT INTO `matrix_video` VALUES ('283', '4', '标题16', '介绍16', 'statics/video/sky.mp4', '6', 'statics/video/sky.jpg', '1', '2017-08-02 10:57:18', '2017-08-02 10:57:18', '1');
INSERT INTO `matrix_video` VALUES ('284', '4', '标题17', '介绍17', 'statics/video/sky.mp4', '6', 'statics/video/sky.jpg', '1', '2017-08-02 10:57:18', '2017-08-02 10:57:18', '1');
INSERT INTO `matrix_video` VALUES ('285', '5', '标题18', '介绍18', 'statics/video/sky.mp4', '8', 'statics/video/sky.jpg', '1', '2017-08-02 10:57:18', '2017-08-02 10:57:18', '1');
INSERT INTO `matrix_video` VALUES ('286', '5', '标题19', '介绍19', 'statics/video/sky.mp4', '8', 'statics/video/sky.jpg', '1', '2017-08-02 10:57:18', '2017-08-02 10:57:18', '1');
INSERT INTO `matrix_video` VALUES ('287', '1', '标题10', '介绍10', 'statics/video/sky.mp4', '0', 'statics/video/sky.jpg', '1', '2017-08-02 10:59:57', '2017-08-02 10:59:57', '1');
INSERT INTO `matrix_video` VALUES ('288', '1', '标题11', '介绍11', 'statics/video/sky.mp4', '0', 'statics/video/sky.jpg', '1', '2017-08-02 10:59:57', '2017-08-02 10:59:57', '1');
INSERT INTO `matrix_video` VALUES ('289', '2', '标题12', '介绍12', 'statics/video/sky.mp4', '2', 'statics/video/sky.jpg', '1', '2017-08-02 10:59:57', '2017-08-02 10:59:57', '1');
INSERT INTO `matrix_video` VALUES ('290', '2', '标题13', '介绍13', 'statics/video/sky.mp4', '3', 'statics/video/sky.jpg', '1', '2017-08-02 10:59:58', '2017-08-02 10:59:58', '1');
INSERT INTO `matrix_video` VALUES ('291', '3', '标题14', '介绍14', 'statics/video/sky.mp4', '4', 'statics/video/sky.jpg', '1', '2017-08-02 10:59:58', '2017-08-02 10:59:58', '1');
INSERT INTO `matrix_video` VALUES ('292', '3', '标题15', '介绍15', 'statics/video/sky.mp4', '5', 'statics/video/sky.jpg', '1', '2017-08-02 10:59:58', '2017-08-02 10:59:58', '1');
INSERT INTO `matrix_video` VALUES ('293', '4', '标题16', '介绍16', 'statics/video/sky.mp4', '6', 'statics/video/sky.jpg', '1', '2017-08-02 10:59:58', '2017-08-02 10:59:58', '1');
INSERT INTO `matrix_video` VALUES ('294', '4', '标题17', '介绍17', 'statics/video/sky.mp4', '6', 'statics/video/sky.jpg', '1', '2017-08-02 10:59:58', '2017-08-02 10:59:58', '1');
INSERT INTO `matrix_video` VALUES ('295', '5', '标题18', '介绍18', 'statics/video/sky.mp4', '8', 'statics/video/sky.jpg', '1', '2017-08-02 10:59:58', '2017-08-02 10:59:58', '1');
INSERT INTO `matrix_video` VALUES ('296', '5', '标题19', '介绍19', 'statics/video/sky.mp4', '8', 'statics/video/sky.jpg', '1', '2017-08-02 10:59:58', '2017-08-02 10:59:58', '1');
INSERT INTO `matrix_video` VALUES ('297', '1', '标题10', '介绍10', 'statics/video/sky.mp4', '1', 'statics/video/sky.jpg', '1', '2017-08-02 11:01:15', '2017-08-02 11:01:15', '1');
INSERT INTO `matrix_video` VALUES ('298', '1', '标题11', '介绍11', 'statics/video/sky.mp4', '1', 'statics/video/sky.jpg', '1', '2017-08-02 11:01:15', '2017-08-02 11:01:15', '1');
INSERT INTO `matrix_video` VALUES ('299', '2', '标题12', '介绍12', 'statics/video/sky.mp4', '3', 'statics/video/sky.jpg', '1', '2017-08-02 11:01:15', '2017-08-02 11:01:15', '1');
INSERT INTO `matrix_video` VALUES ('300', '2', '标题13', '介绍13', 'statics/video/sky.mp4', '3', 'statics/video/sky.jpg', '1', '2017-08-02 11:01:15', '2017-08-02 11:01:15', '1');
INSERT INTO `matrix_video` VALUES ('301', '3', '标题14', '介绍14', 'statics/video/sky.mp4', '5', 'statics/video/sky.jpg', '1', '2017-08-02 11:01:15', '2017-08-02 11:01:15', '1');
INSERT INTO `matrix_video` VALUES ('302', '4', '标题15', '介绍15', 'statics/video/sky.mp4', '7', 'statics/video/sky.jpg', '1', '2017-08-02 11:01:15', '2017-08-02 11:01:15', '1');
INSERT INTO `matrix_video` VALUES ('303', '4', '标题16', '介绍16', 'statics/video/sky.mp4', '7', 'statics/video/sky.jpg', '1', '2017-08-02 11:01:15', '2017-08-02 11:01:15', '1');
INSERT INTO `matrix_video` VALUES ('304', '4', '标题17', '介绍17', 'statics/video/sky.mp4', '7', 'statics/video/sky.jpg', '1', '2017-08-02 11:01:15', '2017-08-02 11:01:15', '1');
INSERT INTO `matrix_video` VALUES ('305', '5', '标题18', '介绍18', 'statics/video/sky.mp4', '9', 'statics/video/sky.jpg', '1', '2017-08-02 11:01:15', '2017-08-02 11:01:15', '1');
INSERT INTO `matrix_video` VALUES ('306', '5', '标题19', '介绍19', 'statics/video/sky.mp4', '9', 'statics/video/sky.jpg', '1', '2017-08-02 11:01:15', '2017-08-02 11:01:15', '1');
INSERT INTO `matrix_video` VALUES ('307', '1', '标题10', '介绍10', 'statics/video/sky.mp4', '1', 'statics/video/sky.jpg', '1', '2017-08-02 11:32:39', '2017-08-02 11:32:39', '1');
INSERT INTO `matrix_video` VALUES ('308', '2', '标题11', '介绍11', 'statics/video/sky.mp4', '3', 'statics/video/sky.jpg', '1', '2017-08-02 11:32:39', '2017-08-02 11:32:39', '1');
INSERT INTO `matrix_video` VALUES ('309', '2', '标题12', '介绍12', 'statics/video/sky.mp4', '3', 'statics/video/sky.jpg', '1', '2017-08-02 11:32:39', '2017-08-02 11:32:39', '1');
INSERT INTO `matrix_video` VALUES ('310', '3', '标题13', '介绍13', 'statics/video/sky.mp4', '5', 'statics/video/sky.jpg', '1', '2017-08-02 11:32:39', '2017-08-02 11:32:39', '1');
INSERT INTO `matrix_video` VALUES ('311', '3', '标题14', '介绍14', 'statics/video/sky.mp4', '5', 'statics/video/sky.jpg', '1', '2017-08-02 11:32:39', '2017-08-02 11:32:39', '1');
INSERT INTO `matrix_video` VALUES ('312', '4', '标题15', '介绍15', 'statics/video/sky.mp4', '7', 'statics/video/sky.jpg', '1', '2017-08-02 11:32:39', '2017-08-02 11:32:39', '1');
INSERT INTO `matrix_video` VALUES ('313', '4', '标题16', '介绍16', 'statics/video/sky.mp4', '7', 'statics/video/sky.jpg', '1', '2017-08-02 11:32:39', '2017-08-02 11:32:39', '1');
INSERT INTO `matrix_video` VALUES ('314', '5', '标题17', '介绍17', 'statics/video/sky.mp4', '9', 'statics/video/sky.jpg', '1', '2017-08-02 11:32:39', '2017-08-02 11:32:39', '1');
INSERT INTO `matrix_video` VALUES ('315', '5', '标题18', '介绍18', 'statics/video/sky.mp4', '9', 'statics/video/sky.jpg', '1', '2017-08-02 11:32:39', '2017-08-02 11:32:39', '1');
INSERT INTO `matrix_video` VALUES ('316', '5', '标题19', '介绍19', 'statics/video/sky.mp4', '9', 'statics/video/sky.jpg', '1', '2017-08-02 11:32:39', '2017-08-02 11:32:39', '1');
INSERT INTO `matrix_video` VALUES ('317', '1', '标题10', '介绍10', 'statics/video/sky.mp4', '1', 'statics/video/sky.jpg', '1', '2017-08-02 11:33:07', '2017-08-02 11:33:07', '1');
INSERT INTO `matrix_video` VALUES ('318', '2', '标题11', '介绍11', 'statics/video/sky.mp4', '3', 'statics/video/sky.jpg', '1', '2017-08-02 11:33:07', '2017-08-02 11:33:07', '1');
INSERT INTO `matrix_video` VALUES ('319', '2', '标题12', '介绍12', 'statics/video/sky.mp4', '3', 'statics/video/sky.jpg', '1', '2017-08-02 11:33:07', '2017-08-02 11:33:07', '1');
INSERT INTO `matrix_video` VALUES ('320', '3', '标题13', '介绍13', 'statics/video/sky.mp4', '5', 'statics/video/sky.jpg', '1', '2017-08-02 11:33:07', '2017-08-02 11:33:07', '1');
INSERT INTO `matrix_video` VALUES ('321', '3', '标题14', '介绍14', 'statics/video/sky.mp4', '5', 'statics/video/sky.jpg', '1', '2017-08-02 11:33:07', '2017-08-02 11:33:07', '1');
INSERT INTO `matrix_video` VALUES ('322', '4', '标题15', '介绍15', 'statics/video/sky.mp4', '7', 'statics/video/sky.jpg', '1', '2017-08-02 11:33:07', '2017-08-02 11:33:07', '1');
INSERT INTO `matrix_video` VALUES ('323', '4', '标题16', '介绍16', 'statics/video/sky.mp4', '7', 'statics/video/sky.jpg', '1', '2017-08-02 11:33:08', '2017-08-02 11:33:08', '1');
INSERT INTO `matrix_video` VALUES ('324', '5', '标题17', '介绍17', 'statics/video/sky.mp4', '9', 'statics/video/sky.jpg', '1', '2017-08-02 11:33:08', '2017-08-02 11:33:08', '1');
INSERT INTO `matrix_video` VALUES ('325', '5', '标题18', '介绍18', 'statics/video/sky.mp4', '9', 'statics/video/sky.jpg', '1', '2017-08-02 11:33:08', '2017-08-02 11:33:08', '1');

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
