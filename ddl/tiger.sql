/*
Navicat MySQL Data Transfer
Source Host     : localhost:3306
Source Database : tiger
Target Host     : localhost:3306
Target Database : tiger
Date: 2018-11-14 01:13:36
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` varchar(32) NOT NULL,
  `menu_name` varchar(50) DEFAULT NULL COMMENT '单菜名称',
  `menu_addr` varchar(100) DEFAULT NULL COMMENT '菜单地址',
  `create_pin` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_pin` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `enabled` tinyint(1) DEFAULT NULL COMMENT '启用标记 1：启用，0：未启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='功能树';

-- ----------------------------
-- Records of menu
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `role_name` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `create_pin` varchar(50) DEFAULT NULL COMMENT '建创PIN',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_pin` varchar(50) DEFAULT NULL COMMENT '新更PIN',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `enabled` tinyint(1) DEFAULT NULL COMMENT '有效标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu` (
  `ID` varchar(32) NOT NULL COMMENT 'ID',
  `role_id` varchar(32) DEFAULT NULL COMMENT '色角ID',
  `menu_id` varchar(32) DEFAULT NULL COMMENT '菜单ID',
  `create_pin` varchar(50) DEFAULT NULL COMMENT '建创人',
  `create_time` datetime DEFAULT NULL COMMENT '建创时间',
  `update_pin` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '改修时间',
  `enabled` tinyint(1) DEFAULT NULL COMMENT '用启标记',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色功能';

-- ----------------------------
-- Records of role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户名称',
  `password` varchar(32) DEFAULT NULL COMMENT '用户密码',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别 1:男，2女',
  `phone` varchar(12) DEFAULT NULL COMMENT '话电号码',
  `mail` varchar(59) DEFAULT NULL COMMENT '邮件',
  `create_pin` varchar(32) DEFAULT NULL COMMENT '建创人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_pin` varchar(255) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `enabled` tinyint(1) DEFAULT NULL COMMENT '1:标示启用，0:标示无效',
  `extends1` varchar(50) DEFAULT NULL COMMENT '展扩1',
  `extends2` varchar(50) DEFAULT NULL COMMENT '展扩2',
  PRIMARY KEY (`id`),
  KEY `user_user_name` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `user_id` varchar(32) DEFAULT NULL COMMENT '户用ID',
  `role_id` varchar(32) DEFAULT NULL COMMENT '色角ID',
  `create_pin` varchar(50) DEFAULT NULL COMMENT '建人创',
  `create_time` datetime DEFAULT NULL COMMENT '建创时间',
  `update_pin` varchar(30) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `enable` tinyint(1) DEFAULT NULL COMMENT '启用标示 1:启用，0未启用',
  PRIMARY KEY (`id`),
  KEY `user_role_relation` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='人员角色';

-- ----------------------------
-- Records of user_role
-- ----------------------------
