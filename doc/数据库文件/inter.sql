/*
Navicat MariaDB Data Transfer

Source Server         : 文件服务器
Source Server Version : 100207
Source Host           : 192.168.1.200:3333
Source Database       : file

Target Server Type    : MariaDB
Target Server Version : 100207
File Encoding         : 65001

Date: 2017-11-22 11:02:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sy_chanmgfunh
-- ----------------------------
DROP TABLE IF EXISTS `sy_chanmgfunh`;
CREATE TABLE `sy_chanmgfunh` (
  `FUNID` varchar(50) NOT NULL COMMENT '功能代号',
  `SEQNO` varchar(32) NOT NULL COMMENT '排序',
  `ORDERVAL` int(11) NOT NULL COMMENT '排序',
  `LAYID` int(11) NOT NULL COMMENT '当前层',
  `FUNDESC` varchar(120) NOT NULL COMMENT '功能名称',
  `FUNPATH` varchar(120) DEFAULT NULL COMMENT '对应页面路径',
  `PARENTID` varchar(50) DEFAULT NULL COMMENT '父功能代号',
  `BOTFLAG` char(1) NOT NULL DEFAULT '1' COMMENT '是否是底层权限[0=否/1=是(default)]',
  `USEFLAG` char(1) NOT NULL DEFAULT '1' COMMENT '是否在使用[0=否/1=是(default)]',
  `DISPLAYFUN` char(1) DEFAULT '1' COMMENT '是否展示【0：否/1：是】',
  `OPERATE_STATUS` char(1) NOT NULL DEFAULT '0' COMMENT '操作状态（1-新增，2-修改，3-删除）',
  `OPERATE_USER` varchar(32) DEFAULT NULL COMMENT '操作者',
  `OPERATE_TIME` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '操作时间',
  `ATTACHID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`FUNID`,`SEQNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统菜单历史表';

-- ----------------------------
-- Records of sy_chanmgfunh
-- ----------------------------

-- ----------------------------
-- Table structure for sy_chanmgfunm
-- ----------------------------
DROP TABLE IF EXISTS `sy_chanmgfunm`;
CREATE TABLE `sy_chanmgfunm` (
  `FUNID` varchar(50) NOT NULL COMMENT '功能代号',
  `ORDERVAL` int(11) NOT NULL COMMENT '排序',
  `LAYID` int(11) NOT NULL COMMENT '当前层',
  `FUNDESC` varchar(120) NOT NULL COMMENT '功能名称',
  `FUNPATH` varchar(120) DEFAULT NULL COMMENT '对应页面路径',
  `PARENTID` varchar(50) DEFAULT NULL COMMENT '父功能代号',
  `BOTFLAG` char(1) NOT NULL DEFAULT '1' COMMENT '是否是底层权限[0=否/1=是(default)]',
  `USEFLAG` char(1) NOT NULL DEFAULT '1' COMMENT '是否在使用[0=否/1=是(default)]',
  `DISPLAYFUN` char(1) DEFAULT '1' COMMENT '是否展示【0：否/1：是】',
  `OPERATE_USER` varchar(32) DEFAULT NULL COMMENT '操作者',
  `OPERATE_TIME` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '操作时间',
  `ATTACHID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`FUNID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统菜单表';

-- ----------------------------
-- Records of sy_chanmgfunm
-- ----------------------------
INSERT INTO `sy_chanmgfunm` VALUES ('ADDSYSFUN', '1', '3', '添加权限', '', 'FUNMANAGER', '0', '1', '0', '1', '2017-11-22 10:59:07', '');
INSERT INTO `sy_chanmgfunm` VALUES ('ADDSYSPRORULE', '1', '3', '新增产品匹配规则', '', 'SYSPRORULE', '0', '1', '0', '1', '2017-08-13 10:34:59', '');
INSERT INTO `sy_chanmgfunm` VALUES ('ADDSYSROLE', '2', '3', '添加角色', '', 'ROLEMANAGE', '0', '1', '0', '1', '2017-11-22 10:58:01', '');
INSERT INTO `sy_chanmgfunm` VALUES ('ADDSYSUSER', '1', '3', '添加用户', '', 'SYSUSERMANAGE', '0', '1', '0', '1', '2017-11-22 10:57:20', '');
INSERT INTO `sy_chanmgfunm` VALUES ('CONFIGSYSROLE', '5', '3', '配置角色', '', 'ROLEMANAGE', '0', '1', '0', '1', '2017-11-22 10:56:55', '');
INSERT INTO `sy_chanmgfunm` VALUES ('CONFIGSYSUSERROLE', '6', '3', '确认用户角色', '', 'SYSUSERMANAGE', '0', '1', '0', '1', '2017-11-22 10:54:29', '');
INSERT INTO `sy_chanmgfunm` VALUES ('DELSYSFUN', '3', '3', '删除权限', '', 'FUNMANAGER', '0', '1', '0', '1', '2017-11-22 10:58:40', '');
INSERT INTO `sy_chanmgfunm` VALUES ('DELSYSPRORULE', '3', '3', '删除产品规则', '', 'SYSPRORULE', '0', '1', '0', '1', '2017-08-13 10:35:00', '');
INSERT INTO `sy_chanmgfunm` VALUES ('DELSYSROLE', '3', '3', '删除角色', '', 'ROLEMANAGE', '0', '1', '0', '1', '2017-11-22 10:57:35', '');
INSERT INTO `sy_chanmgfunm` VALUES ('DELSYSUSER', '3', '3', '删除用户', '', 'SYSUSERMANAGE', '0', '1', '0', '1', '2017-11-22 10:55:56', '');
INSERT INTO `sy_chanmgfunm` VALUES ('FUNMANAGER', '98', '2', '权限管理', '/user/sysfun/index.html', 'USERMANAGE', '1', '1', '0', '1', '2017-11-22 10:56:20', '');
INSERT INTO `sy_chanmgfunm` VALUES ('LOCKSYSUSER', '5', '3', '锁定系统用户', '', 'SYSUSERMANAGE', '0', '1', '0', '1', '2017-11-22 10:55:09', '');
INSERT INTO `sy_chanmgfunm` VALUES ('MODMESSAGEQRY', '1', '3', '新增消息权限', '', 'MESSAGEQRYMANAGE', '0', '1', '0', '1', '2017-08-13 10:58:00', '');
INSERT INTO `sy_chanmgfunm` VALUES ('MODSYSFUN', '2', '3', '修改权限', '', 'FUNMANAGER', '0', '1', '0', '1', '2017-11-22 10:58:55', '');
INSERT INTO `sy_chanmgfunm` VALUES ('MODSYSPRORULE', '2', '3', '修改产品规则', '', 'SYSPRORULE', '0', '1', '0', '1', '2017-08-13 10:35:01', '');
INSERT INTO `sy_chanmgfunm` VALUES ('MODSYSROLE', '3', '3', '修改角色', '', 'ROLEMANAGE', '0', '1', '0', '1', '2017-11-22 10:57:49', '');
INSERT INTO `sy_chanmgfunm` VALUES ('MODSYSUSER', '2', '3', '修改用户', '', 'SYSUSERMANAGE', '0', '1', '0', '1', '2017-11-22 10:57:08', '');
INSERT INTO `sy_chanmgfunm` VALUES ('QRYSYSFUN', '6', '3', '查询权限', '', 'FUNMANAGER', '0', '1', '1', '1', '2017-11-22 10:58:26', '');
INSERT INTO `sy_chanmgfunm` VALUES ('QRYSYSPRORULE', '6', '3', '查询产品匹配规则', '', 'SYSPRORULE', '0', '1', '1', '1', '2017-08-13 10:35:03', '');
INSERT INTO `sy_chanmgfunm` VALUES ('QRYSYSROLE', '1', '3', '查询角色', '', 'ROLEMANAGE', '0', '1', '1', '1', '2017-11-22 10:58:13', '');
INSERT INTO `sy_chanmgfunm` VALUES ('QRYSYSUSER', '4', '3', '查询用户', '', 'SYSUSERMANAGE', '0', '1', '1', '1', '2017-11-22 10:55:43', '');
INSERT INTO `sy_chanmgfunm` VALUES ('RESETPWD', '7', '3', '重置密码', '', 'SYSUSERMANAGE', '0', '1', '0', '1', '2017-11-22 10:54:12', '');
INSERT INTO `sy_chanmgfunm` VALUES ('ROLEMANAGE', '99', '2', '角色管理', '/user/sysrole/index.html', 'USERMANAGE', '1', '1', '0', '1', '2017-11-22 10:56:08', '');
INSERT INTO `sy_chanmgfunm` VALUES ('SYSUSERMANAGE', '100', '2', '系统用户管理', '/user/sysuser/index.html', 'USERMANAGE', '1', '1', '0', '1', '2017-11-22 10:53:55', '');
INSERT INTO `sy_chanmgfunm` VALUES ('USERMANAGE', '100', '1', '系统管理', '', 'TOP', '1', '0', '1', '1', '2017-11-22 10:55:23', '');

-- ----------------------------
-- Table structure for sy_chanmgrlfunh
-- ----------------------------
DROP TABLE IF EXISTS `sy_chanmgrlfunh`;
CREATE TABLE `sy_chanmgrlfunh` (
  `ROLEID` varchar(32) NOT NULL COMMENT '角色ID',
  `FUNID` varchar(50) NOT NULL COMMENT '权限ID',
  `SEQNO` varchar(32) NOT NULL COMMENT '历史序列号',
  `OPERATE_STATUS` char(1) NOT NULL DEFAULT '0' COMMENT '操作状态（1-新增，2-修改，3-删除）',
  `OPERATE_TIME` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '操作时间',
  `OPERATE_USER` varchar(32) NOT NULL DEFAULT '1' COMMENT '操作者',
  PRIMARY KEY (`ROLEID`,`FUNID`,`SEQNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统角色权限表';

-- ----------------------------
-- Records of sy_chanmgrlfunh
-- ----------------------------

-- ----------------------------
-- Table structure for sy_chanmgrlfunm
-- ----------------------------
DROP TABLE IF EXISTS `sy_chanmgrlfunm`;
CREATE TABLE `sy_chanmgrlfunm` (
  `ROLEID` varchar(32) NOT NULL COMMENT '角色ID',
  `FUNID` varchar(50) NOT NULL COMMENT '权限ID',
  `OPERATE_TIME` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '操作时间',
  `OPERATE_USER` varchar(32) NOT NULL DEFAULT '1' COMMENT '操作者',
  PRIMARY KEY (`ROLEID`,`FUNID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统角色权限表';

-- ----------------------------
-- Records of sy_chanmgrlfunm
-- ----------------------------
INSERT INTO `sy_chanmgrlfunm` VALUES ('', 'QRYSYSROLE', '2017-09-14 15:50:34', '1');
INSERT INTO `sy_chanmgrlfunm` VALUES ('SUPER', 'ADDSYSFUN', '2017-09-21 15:16:22', '1');
INSERT INTO `sy_chanmgrlfunm` VALUES ('SUPER', 'ADDSYSROLE', '2017-09-21 15:16:22', '1');
INSERT INTO `sy_chanmgrlfunm` VALUES ('SUPER', 'ADDSYSUSER', '2017-09-21 15:16:22', '1');
INSERT INTO `sy_chanmgrlfunm` VALUES ('SUPER', 'CONFIGSYSROLE', '2017-09-21 15:16:22', '1');
INSERT INTO `sy_chanmgrlfunm` VALUES ('SUPER', 'CONFIGSYSUSERROLE', '2017-09-21 15:16:22', '1');
INSERT INTO `sy_chanmgrlfunm` VALUES ('SUPER', 'DELSYSFUN', '2017-09-21 15:16:22', '1');
INSERT INTO `sy_chanmgrlfunm` VALUES ('SUPER', 'DELSYSROLE', '2017-09-21 15:16:22', '1');
INSERT INTO `sy_chanmgrlfunm` VALUES ('SUPER', 'DELSYSUSER', '2017-09-21 15:16:22', '1');
INSERT INTO `sy_chanmgrlfunm` VALUES ('SUPER', 'FUNMANAGER', '2017-09-21 15:16:22', '1');
INSERT INTO `sy_chanmgrlfunm` VALUES ('SUPER', 'LOCKSYSUSER', '2017-09-21 15:16:22', '1');
INSERT INTO `sy_chanmgrlfunm` VALUES ('SUPER', 'MODMESSAGEQRY', '2017-09-21 15:16:22', '1');
INSERT INTO `sy_chanmgrlfunm` VALUES ('SUPER', 'MODSYSFUN', '2017-09-21 15:16:22', '1');
INSERT INTO `sy_chanmgrlfunm` VALUES ('SUPER', 'MODSYSROLE', '2017-09-21 15:16:22', '1');
INSERT INTO `sy_chanmgrlfunm` VALUES ('SUPER', 'MODSYSUSER', '2017-09-21 15:16:22', '1');
INSERT INTO `sy_chanmgrlfunm` VALUES ('SUPER', 'QRYSYSFUN', '2017-09-21 15:16:22', '1');
INSERT INTO `sy_chanmgrlfunm` VALUES ('SUPER', 'QRYSYSROLE', '2017-09-21 15:16:22', '1');
INSERT INTO `sy_chanmgrlfunm` VALUES ('SUPER', 'QRYSYSUSER', '2017-09-21 15:16:22', '1');
INSERT INTO `sy_chanmgrlfunm` VALUES ('SUPER', 'RESETPWD', '2017-09-21 15:16:22', '1');
INSERT INTO `sy_chanmgrlfunm` VALUES ('SUPER', 'ROLEMANAGE', '2017-09-21 15:16:22', '1');
INSERT INTO `sy_chanmgrlfunm` VALUES ('SUPER', 'SYSUSERMANAGE', '2017-09-21 15:16:22', '1');
INSERT INTO `sy_chanmgrlfunm` VALUES ('SUPER', 'USERMANAGE', '2017-09-21 15:16:22', '1');

-- ----------------------------
-- Table structure for sy_chanmgroleh
-- ----------------------------
DROP TABLE IF EXISTS `sy_chanmgroleh`;
CREATE TABLE `sy_chanmgroleh` (
  `ROLEID` varchar(20) NOT NULL COMMENT '角色代号',
  `SEQNO` varchar(32) NOT NULL COMMENT '历史序列值',
  `ROLEDESC` varchar(120) NOT NULL COMMENT '角色名称',
  `ROLEREMARK` varchar(200) DEFAULT NULL COMMENT '角色描述',
  `MARKFLAG` char(1) NOT NULL DEFAULT '1' COMMENT '审核标记[1 有效 0 无效]',
  `OPERATE_STATUS` char(1) NOT NULL DEFAULT '0' COMMENT '操作状态（1-新增，2-修改，3-删除）',
  `OPERATE_USER` varchar(32) DEFAULT NULL COMMENT '操作者',
  `OPERATE_TIME` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '操作时间',
  PRIMARY KEY (`ROLEID`,`SEQNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色基本信息历史表';

-- ----------------------------
-- Records of sy_chanmgroleh
-- ----------------------------

-- ----------------------------
-- Table structure for sy_chanmgrolem
-- ----------------------------
DROP TABLE IF EXISTS `sy_chanmgrolem`;
CREATE TABLE `sy_chanmgrolem` (
  `ROLEID` varchar(20) NOT NULL COMMENT '角色代号',
  `ROLEDESC` varchar(120) NOT NULL COMMENT '角色名称',
  `ROLEREMARK` varchar(200) DEFAULT NULL COMMENT '角色描述',
  `MARKFLAG` char(1) NOT NULL DEFAULT '1' COMMENT '审核标记[1 有效 0 无效]',
  `OPERATE_USER` varchar(32) DEFAULT NULL COMMENT '操作者',
  `OPERATE_TIME` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '操作时间',
  PRIMARY KEY (`ROLEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色基本信息表';

-- ----------------------------
-- Records of sy_chanmgrolem
-- ----------------------------
INSERT INTO `sy_chanmgrolem` VALUES ('aAA', 'aAA', null, '0', '1', '2017-09-11 19:08:26');
INSERT INTO `sy_chanmgrolem` VALUES ('ASD', 'AD', null, '0', '1', '2017-09-11 19:03:57');
INSERT INTO `sy_chanmgrolem` VALUES ('asddasdasd', 'dasd', null, '0', '1', '2017-09-11 19:04:18');
INSERT INTO `sy_chanmgrolem` VALUES ('SUPER', '超级管理员', null, '0', '1', '2017-11-22 10:55:21');

-- ----------------------------
-- Table structure for sy_chanmgurrlh
-- ----------------------------
DROP TABLE IF EXISTS `sy_chanmgurrlh`;
CREATE TABLE `sy_chanmgurrlh` (
  `USERID` varchar(32) NOT NULL COMMENT '用户ID',
  `ROLEID` varchar(20) NOT NULL COMMENT '角色ID',
  `SEQNO` varchar(32) NOT NULL COMMENT '历史序列值',
  `OPERATE_STATUS` char(1) NOT NULL DEFAULT '0' COMMENT '操作状态（1-新增，2-修改，3-删除）',
  `OPERATE_TIME` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '操作时间',
  `OPERATE_USER` varchar(32) NOT NULL DEFAULT '1' COMMENT '操作者',
  PRIMARY KEY (`USERID`,`ROLEID`,`SEQNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统用户角色表';

-- ----------------------------
-- Records of sy_chanmgurrlh
-- ----------------------------
INSERT INTO `sy_chanmgurrlh` VALUES ('1', 'SUPER', '2', '2', '2017-08-11 16:49:35', '1');
INSERT INTO `sy_chanmgurrlh` VALUES ('1', 'SUPER', '3', '3', '2017-08-11 17:03:21', '1');
INSERT INTO `sy_chanmgurrlh` VALUES ('1', 'SUPER', '4', '2', '2017-08-11 17:03:21', '1');
INSERT INTO `sy_chanmgurrlh` VALUES ('24', 'SUPER', '2', '2', '2017-08-21 16:22:11', '1');
INSERT INTO `sy_chanmgurrlh` VALUES ('26', 'SUPER', '904983687391477760', '2', '2017-09-05 16:24:59', '1');
INSERT INTO `sy_chanmgurrlh` VALUES ('907795581781372928', 'SUPER', '907799845593378816', '2', '2017-09-13 10:55:23', '1');

-- ----------------------------
-- Table structure for sy_chanmgurrlm
-- ----------------------------
DROP TABLE IF EXISTS `sy_chanmgurrlm`;
CREATE TABLE `sy_chanmgurrlm` (
  `USERID` varchar(32) NOT NULL COMMENT '用户ID',
  `ROLEID` varchar(20) NOT NULL COMMENT '角色ID',
  `OPERATE_TIME` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '操作时间',
  `OPERATE_USER` varchar(32) NOT NULL DEFAULT '1' COMMENT '操作者',
  PRIMARY KEY (`USERID`,`ROLEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统用户角色表';

-- ----------------------------
-- Records of sy_chanmgurrlm
-- ----------------------------
INSERT INTO `sy_chanmgurrlm` VALUES ('1', 'SUPER', '2017-08-11 17:03:21', '1');
INSERT INTO `sy_chanmgurrlm` VALUES ('24', 'SUPER', '2017-08-21 16:22:11', '1');
INSERT INTO `sy_chanmgurrlm` VALUES ('26', 'SUPER', '2017-09-05 16:24:59', '1');
INSERT INTO `sy_chanmgurrlm` VALUES ('907795581781372928', 'SUPER', '2017-09-13 10:55:23', '1');

-- ----------------------------
-- Table structure for sy_chanmguserh
-- ----------------------------
DROP TABLE IF EXISTS `sy_chanmguserh`;
CREATE TABLE `sy_chanmguserh` (
  `USERID` varchar(32) NOT NULL COMMENT '用户唯一编号',
  `SEQNO` varchar(32) NOT NULL COMMENT '历史序列号',
  `USERNAME` varchar(120) DEFAULT NULL COMMENT '用户名称',
  `PASSWORD` varchar(50) DEFAULT NULL COMMENT '密码',
  `CHGPWDFLAG` char(1) NOT NULL DEFAULT '1' COMMENT '用户登陆时是否要求修改密码[0=否/1=是(default)／9=用户锁定]',
  `VALIDDAY` int(11) NOT NULL DEFAULT 30 COMMENT '密码有效天数',
  `WARNINGDAY` int(11) NOT NULL DEFAULT 7 COMMENT '密码到期前警告天数',
  `EMAIL` varchar(120) DEFAULT NULL COMMENT 'Email',
  `TEL` varchar(30) DEFAULT NULL COMMENT '电话',
  `MOBILEPHONE` varchar(30) NOT NULL COMMENT '移动电话',
  `ADDRESS` varchar(180) DEFAULT NULL COMMENT '地址',
  `ENTRANTDATE` timestamp NULL DEFAULT NULL COMMENT '注册日期',
  `AVAILABLE` char(1) NOT NULL DEFAULT '1' COMMENT '用户账号是否有效[1=有效(default)/0=无效]',
  `OPERATE_STATUS` char(1) NOT NULL DEFAULT '0' COMMENT '操作状态（1-新增，2-修改，3-删除）',
  `OPERATE_USER` varchar(32) DEFAULT NULL COMMENT '操作者',
  `OPERATE_TIME` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '操作时间',
  PRIMARY KEY (`USERID`,`SEQNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理人用户历史表';

-- ----------------------------
-- Records of sy_chanmguserh
-- ----------------------------

-- ----------------------------
-- Table structure for sy_chanmguserm
-- ----------------------------
DROP TABLE IF EXISTS `sy_chanmguserm`;
CREATE TABLE `sy_chanmguserm` (
  `USERID` varchar(32) NOT NULL COMMENT '用户唯一编号（建议从100000000开始）',
  `USERNAME` varchar(120) DEFAULT NULL COMMENT '用户名称',
  `PASSWORD` varchar(50) DEFAULT NULL COMMENT '密码',
  `CHGPWDFLAG` char(1) NOT NULL DEFAULT '1' COMMENT '用户登陆时是否要求修改密码[0=否/1=是(default)／9=用户锁定]',
  `VALIDDAY` int(11) NOT NULL DEFAULT 30 COMMENT '密码有效天数',
  `WARNINGDAY` int(11) NOT NULL DEFAULT 7 COMMENT '密码到期前警告天数',
  `EMAIL` varchar(120) DEFAULT NULL COMMENT 'Email',
  `TEL` varchar(30) DEFAULT NULL COMMENT '电话',
  `MOBILEPHONE` varchar(30) NOT NULL COMMENT '移动电话',
  `ADDRESS` varchar(180) DEFAULT NULL COMMENT '地址',
  `ENTRANTDATE` timestamp NULL DEFAULT NULL COMMENT '注册日期',
  `AVAILABLE` char(1) NOT NULL DEFAULT '1' COMMENT '用户账号是否有效[1=有效(default)/0=无效]',
  `OPERATE_USER` varchar(32) DEFAULT NULL COMMENT '操作者',
  `OPERATE_TIME` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '操作时间',
  PRIMARY KEY (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理人用户表';

-- ----------------------------
-- Records of sy_chanmguserm
-- ----------------------------
INSERT INTO `sy_chanmguserm` VALUES ('1', '系统管理员', '511b56a0c2c74ab89f58f84bbf4f19f5', '1', '30', '7', '4708461864@qq.com', '08136210030', '13348828865', '`122', null, '1', '1', '2017-11-22 11:07:56');
INSERT INTO `sy_chanmguserm` VALUES ('24', 'string', 'b46f672c84ed2c383556a12b956c7e7a', '1', '30', '7', 'string', 'string', 'str11212121ing', 'string', '2017-08-15 14:58:34', '1', '1', '2017-08-31 10:15:10');
INSERT INTO `sy_chanmguserm` VALUES ('25', 'string', 'b46f672c84ed2c383556a12b956c7e7a', '1', '30', '7', 'string', 'string', 'str111212121ing', 'string', '2017-08-15 15:01:45', '1', '1', '2017-08-15 15:01:45');
INSERT INTO `sy_chanmguserm` VALUES ('26', 'string', 'b46f672c84ed2c383556a12b956c7e7a', '1', '30', '7', 'string', 'string', 'str1111212121ing', 'string', '2017-08-15 15:57:12', '1', '1', '2017-09-05 15:23:55');
INSERT INTO `sy_chanmguserm` VALUES ('27', 'string', 'b46f672c84ed2c383556a12b956c7e7a', '1', '30', '7', 'string', 'string', 'str111111212121ing', 'string', '2017-08-15 16:44:35', '1', '1', '2017-08-15 16:44:35');
INSERT INTO `sy_chanmguserm` VALUES ('903079667099463680', 'dsadasd', 'd1c2ee1f9e33245fb2ba98469f496b4f', '1', '30', '7', '5656@qq.com', '21351513513', '13513156111', 'fdsfdsffffffffffffff', '2017-08-31 10:19:06', '1', '1', '2017-09-08 16:35:54');
INSERT INTO `sy_chanmguserm` VALUES ('904566755917537280', 'sadas', 'ea4f5af41070fdafbed170379e062dc8', '1', '30', '7', 'aaa!@qq.com', '11111111', '13555555555', '', '2017-09-04 12:48:15', '1', '1', '2017-09-13 09:46:36');
INSERT INTO `sy_chanmguserm` VALUES ('904567806011875328', '11212', 'd1c2ee1f9e33245fb2ba98469f496b4f', '1', '30', '7', '1375673662@qq.com', '081-62100301', '18123313611', '1212', '2017-09-04 12:52:26', '1', '1', '2017-10-30 11:15:47');
INSERT INTO `sy_chanmguserm` VALUES ('904979021358301184', '发的发的', '511b56a0c2c74ab89f58f84bbf4f19f5', '1', '30', '7', '12@12', '21132131213', '13231232131', '2321223', '2017-09-05 16:06:27', '1', '1', '2017-09-05 16:06:27');
INSERT INTO `sy_chanmguserm` VALUES ('904980790276653056', '是我不明白', '511b56a0c2c74ab89f58f84bbf4f19f5', '1', '30', '7', '12@12', '12132324', '13232321314', '23131313131', '2017-09-05 16:13:28', '0', '1', '2017-09-29 14:36:07');
INSERT INTO `sy_chanmguserm` VALUES ('906079158646263808', '明明白白', '511b56a0c2c74ab89f58f84bbf4f19f5', '1', '30', '7', '18@1.com', '11111111', '18900007770', '新增vsdgas', '2017-09-08 16:58:00', '1', '1', '2017-09-11 10:30:06');
INSERT INTO `sy_chanmguserm` VALUES ('907425923664367616', '11', '511b56a0c2c74ab89f58f84bbf4f19f5', '1', '30', '7', '12@12', '028110', '14411111111', '12121', '2017-09-12 10:09:34', '1', '1', '2017-09-12 10:11:29');
INSERT INTO `sy_chanmguserm` VALUES ('907795581781372928', '我滴个神啊', '511b56a0c2c74ab89f58f84bbf4f19f5', '1', '30', '7', '12@12.cn', '028-111111', '14111111111', '天梯说那天泰塔那今天', '2017-09-13 10:38:27', '1', '1', '2017-09-13 10:55:48');
INSERT INTO `sy_chanmguserm` VALUES ('910065913825312768', '23233', '511b56a0c2c74ab89f58f84bbf4f19f5', '1', '30', '7', '12@12', '1111111', '15111111111', '风风地方的', '2017-09-19 16:59:56', '1', '1', '2017-09-19 16:59:56');
INSERT INTO `sy_chanmguserm` VALUES ('913587252838158336', '我是钢蛋来自蒙塔基', '511b56a0c2c74ab89f58f84bbf4f19f5', '1', '30', '7', '12@12.com.cn', '1223232', '13345678912', 'hghgh', '2017-09-29 10:12:29', '1', '1', '2017-09-29 10:12:29');
INSERT INTO `sy_chanmguserm` VALUES ('913588566175404032', '白素贞', '511b56a0c2c74ab89f58f84bbf4f19f5', '1', '30', '7', '123@23.hk', '343424', '14712345678', '地方的佛挡杀佛顺丰到付', '2017-09-29 10:17:42', '1', '1', '2017-09-29 10:17:42');
