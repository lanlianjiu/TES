/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : tes

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-05-11 18:43:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_log`;
CREATE TABLE `admin_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `controller_id` varchar(20) DEFAULT NULL COMMENT '控制器ID',
  `action_id` varchar(20) DEFAULT NULL COMMENT '方法ID',
  `url` varchar(200) DEFAULT NULL COMMENT '访问地址',
  `module_name` varchar(50) DEFAULT NULL COMMENT '模块',
  `func_name` varchar(50) DEFAULT NULL COMMENT '功能',
  `right_name` varchar(50) DEFAULT NULL COMMENT '方法',
  `client_ip` varchar(15) DEFAULT NULL COMMENT '客户端IP',
  `create_user` varchar(50) DEFAULT NULL COMMENT '用户',
  `create_date` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `index_create_date` (`create_date`),
  KEY `index_create_index` (`create_user`),
  KEY `index_url` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_log
-- ----------------------------
INSERT INTO `admin_log` VALUES ('1', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-05-09 12:24:04');
INSERT INTO `admin_log` VALUES ('2', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'admin', '2018-05-09 12:24:08');
INSERT INTO `admin_log` VALUES ('3', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'admin', '2018-05-09 12:25:00');
INSERT INTO `admin_log` VALUES ('4', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'admin', '2018-05-09 12:25:02');
INSERT INTO `admin_log` VALUES ('5', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-05-09 12:25:46');
INSERT INTO `admin_log` VALUES ('6', 'admin-user-role', 'index', 'admin-user-role/index', '菜单用户权限', '角色管理', '分配用户', 'Unknown', 'admin', '2018-05-09 12:25:49');
INSERT INTO `admin_log` VALUES ('7', 'admin-user-role', 'view', 'admin-user-role/view', '菜单用户权限', '角色管理', '分配用户', 'Unknown', 'admin', '2018-05-09 12:25:59');
INSERT INTO `admin_log` VALUES ('8', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'admin', '2018-05-09 12:26:20');
INSERT INTO `admin_log` VALUES ('9', 'admin-user', 'view', 'admin-user/view', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'admin', '2018-05-09 12:26:23');
INSERT INTO `admin_log` VALUES ('10', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'admin', '2018-05-09 12:27:22');
INSERT INTO `admin_log` VALUES ('11', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'admin', '2018-05-09 12:27:23');
INSERT INTO `admin_log` VALUES ('12', 'admin-log', 'view', 'admin-log/view', '日志管理', '操作日志', '操作', 'Unknown', 'admin', '2018-05-09 12:27:31');
INSERT INTO `admin_log` VALUES ('13', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-09 12:40:02');
INSERT INTO `admin_log` VALUES ('14', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'test', '2018-05-09 12:40:10');
INSERT INTO `admin_log` VALUES ('15', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'test', '2018-05-09 12:40:14');
INSERT INTO `admin_log` VALUES ('16', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'test', '2018-05-09 12:40:24');
INSERT INTO `admin_log` VALUES ('17', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'test', '2018-05-09 12:40:43');
INSERT INTO `admin_log` VALUES ('18', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'test', '2018-05-09 12:54:49');
INSERT INTO `admin_log` VALUES ('19', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'test', '2018-05-09 12:55:17');
INSERT INTO `admin_log` VALUES ('20', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'test', '2018-05-09 12:55:37');
INSERT INTO `admin_log` VALUES ('21', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-09 12:59:13');
INSERT INTO `admin_log` VALUES ('22', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-09 12:59:35');
INSERT INTO `admin_log` VALUES ('23', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-09 13:00:19');
INSERT INTO `admin_log` VALUES ('24', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-09 13:00:24');
INSERT INTO `admin_log` VALUES ('25', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-09 13:00:48');
INSERT INTO `admin_log` VALUES ('26', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'test', '2018-05-09 13:00:59');
INSERT INTO `admin_log` VALUES ('27', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-09 13:22:02');
INSERT INTO `admin_log` VALUES ('28', 'admin-module', 'create', 'admin-module/create', '菜单用户权限', '菜单管理', '一级菜单添加', 'Unknown', 'test', '2018-05-09 13:23:52');
INSERT INTO `admin_log` VALUES ('29', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-09 13:23:53');
INSERT INTO `admin_log` VALUES ('30', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'test', '2018-05-09 13:24:01');
INSERT INTO `admin_log` VALUES ('31', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-09 13:25:05');
INSERT INTO `admin_log` VALUES ('32', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'test', '2018-05-09 13:25:15');
INSERT INTO `admin_log` VALUES ('33', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-09 13:25:21');
INSERT INTO `admin_log` VALUES ('34', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'test', '2018-05-09 13:25:23');
INSERT INTO `admin_log` VALUES ('35', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'test', '2018-05-09 13:25:26');
INSERT INTO `admin_log` VALUES ('36', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-09 13:25:38');
INSERT INTO `admin_log` VALUES ('37', 'admin-module', 'view', 'admin-module/view', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-09 13:25:45');
INSERT INTO `admin_log` VALUES ('38', 'admin-module', 'view', 'admin-module/view', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-09 13:25:49');
INSERT INTO `admin_log` VALUES ('39', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'test', '2018-05-09 13:25:56');
INSERT INTO `admin_log` VALUES ('40', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-09 13:26:16');
INSERT INTO `admin_log` VALUES ('41', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-09 13:26:25');
INSERT INTO `admin_log` VALUES ('42', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'test', '2018-05-09 13:26:37');
INSERT INTO `admin_log` VALUES ('43', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'test', '2018-05-09 13:27:17');
INSERT INTO `admin_log` VALUES ('44', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'test', '2018-05-09 13:27:17');
INSERT INTO `admin_log` VALUES ('45', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'test', '2018-05-09 13:27:44');
INSERT INTO `admin_log` VALUES ('46', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'test', '2018-05-09 13:27:49');
INSERT INTO `admin_log` VALUES ('47', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-09 13:27:57');
INSERT INTO `admin_log` VALUES ('48', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'test', '2018-05-09 13:28:08');
INSERT INTO `admin_log` VALUES ('49', 'admin-menu', 'delete', 'admin-menu/delete', '菜单用户权限', '菜单管理', '二级菜单删除', 'Unknown', 'test', '2018-05-09 13:28:12');
INSERT INTO `admin_log` VALUES ('50', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'test', '2018-05-09 13:28:13');
INSERT INTO `admin_log` VALUES ('51', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-09 13:28:52');
INSERT INTO `admin_log` VALUES ('52', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-09 13:37:40');
INSERT INTO `admin_log` VALUES ('53', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-09 14:10:49');
INSERT INTO `admin_log` VALUES ('54', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-09 14:36:22');
INSERT INTO `admin_log` VALUES ('55', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-09 14:36:42');
INSERT INTO `admin_log` VALUES ('56', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-09 14:36:47');
INSERT INTO `admin_log` VALUES ('57', 'admin-role', 'create', 'admin-role/create', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-09 14:37:04');
INSERT INTO `admin_log` VALUES ('58', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-09 14:37:05');
INSERT INTO `admin_log` VALUES ('59', 'admin-role', 'delete', 'admin-role/delete', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-09 14:37:10');
INSERT INTO `admin_log` VALUES ('60', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-09 14:37:11');
INSERT INTO `admin_log` VALUES ('61', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-09 14:37:17');
INSERT INTO `admin_log` VALUES ('62', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-09 14:37:23');
INSERT INTO `admin_log` VALUES ('63', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-09 14:37:35');
INSERT INTO `admin_log` VALUES ('64', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-09 14:49:37');
INSERT INTO `admin_log` VALUES ('65', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-09 14:49:43');
INSERT INTO `admin_log` VALUES ('66', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'test', '2018-05-09 14:49:47');
INSERT INTO `admin_log` VALUES ('67', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'test', '2018-05-09 14:49:52');
INSERT INTO `admin_log` VALUES ('68', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'test', '2018-05-09 14:49:56');
INSERT INTO `admin_log` VALUES ('69', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-09 14:55:23');
INSERT INTO `admin_log` VALUES ('70', 'admin-log', 'view', 'admin-log/view', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-09 14:55:29');
INSERT INTO `admin_log` VALUES ('71', 'admin-log', 'view', 'admin-log/view', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-09 14:55:38');
INSERT INTO `admin_log` VALUES ('72', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 05:55:14');
INSERT INTO `admin_log` VALUES ('73', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-10 05:55:17');
INSERT INTO `admin_log` VALUES ('74', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-10 06:19:43');
INSERT INTO `admin_log` VALUES ('75', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 08:07:28');
INSERT INTO `admin_log` VALUES ('76', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 08:12:54');
INSERT INTO `admin_log` VALUES ('77', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 08:50:32');
INSERT INTO `admin_log` VALUES ('78', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 08:50:55');
INSERT INTO `admin_log` VALUES ('79', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-10 09:02:03');
INSERT INTO `admin_log` VALUES ('80', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 09:02:06');
INSERT INTO `admin_log` VALUES ('81', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 09:11:21');
INSERT INTO `admin_log` VALUES ('82', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 09:11:56');
INSERT INTO `admin_log` VALUES ('83', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 09:12:35');
INSERT INTO `admin_log` VALUES ('84', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 09:13:43');
INSERT INTO `admin_log` VALUES ('85', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 09:14:21');
INSERT INTO `admin_log` VALUES ('86', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 09:14:49');
INSERT INTO `admin_log` VALUES ('87', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 09:27:31');
INSERT INTO `admin_log` VALUES ('88', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'test', '2018-05-10 09:28:58');
INSERT INTO `admin_log` VALUES ('89', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-10 09:29:02');
INSERT INTO `admin_log` VALUES ('90', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-10 09:29:07');
INSERT INTO `admin_log` VALUES ('91', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-10 09:29:55');
INSERT INTO `admin_log` VALUES ('92', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-10 09:30:02');
INSERT INTO `admin_log` VALUES ('93', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-10 09:30:05');
INSERT INTO `admin_log` VALUES ('94', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-10 09:30:07');
INSERT INTO `admin_log` VALUES ('95', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-10 09:30:12');
INSERT INTO `admin_log` VALUES ('96', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-10 09:30:16');
INSERT INTO `admin_log` VALUES ('97', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-10 09:30:25');
INSERT INTO `admin_log` VALUES ('98', 'admin-role', 'view', 'admin-role/view', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-10 09:31:13');
INSERT INTO `admin_log` VALUES ('99', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-10 09:31:18');
INSERT INTO `admin_log` VALUES ('100', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-10 09:31:20');
INSERT INTO `admin_log` VALUES ('101', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-10 09:31:22');
INSERT INTO `admin_log` VALUES ('102', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-10 09:31:25');
INSERT INTO `admin_log` VALUES ('103', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'test', '2018-05-10 09:31:50');
INSERT INTO `admin_log` VALUES ('104', 'admin-user', 'view', 'admin-user/view', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'test', '2018-05-10 09:31:54');
INSERT INTO `admin_log` VALUES ('105', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-10 09:31:57');
INSERT INTO `admin_log` VALUES ('106', 'admin-user-role', 'index', 'admin-user-role/index', '菜单用户权限', '角色管理', '分配用户', 'Unknown', 'test', '2018-05-10 09:32:03');
INSERT INTO `admin_log` VALUES ('107', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 09:32:09');
INSERT INTO `admin_log` VALUES ('108', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-10 09:32:11');
INSERT INTO `admin_log` VALUES ('109', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-10 09:32:14');
INSERT INTO `admin_log` VALUES ('110', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-10 09:32:19');
INSERT INTO `admin_log` VALUES ('111', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-10 09:32:21');
INSERT INTO `admin_log` VALUES ('112', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-10 09:32:27');
INSERT INTO `admin_log` VALUES ('113', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 09:39:18');
INSERT INTO `admin_log` VALUES ('114', 'admin-module', 'delete', 'admin-module/delete', '菜单用户权限', '菜单管理', '一级菜单删除', 'Unknown', 'test', '2018-05-10 09:39:25');
INSERT INTO `admin_log` VALUES ('115', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 09:39:26');
INSERT INTO `admin_log` VALUES ('116', 'admin-module', 'view', 'admin-module/view', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 09:39:32');
INSERT INTO `admin_log` VALUES ('117', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 09:42:23');
INSERT INTO `admin_log` VALUES ('118', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 09:42:46');
INSERT INTO `admin_log` VALUES ('119', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 10:34:50');
INSERT INTO `admin_log` VALUES ('120', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'test', '2018-05-10 10:34:54');
INSERT INTO `admin_log` VALUES ('121', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 10:42:38');
INSERT INTO `admin_log` VALUES ('122', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 10:50:12');
INSERT INTO `admin_log` VALUES ('123', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 10:50:53');
INSERT INTO `admin_log` VALUES ('124', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-10 10:56:29');
INSERT INTO `admin_log` VALUES ('125', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 10:56:50');
INSERT INTO `admin_log` VALUES ('126', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 10:59:35');
INSERT INTO `admin_log` VALUES ('127', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:01:12');
INSERT INTO `admin_log` VALUES ('128', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:01:23');
INSERT INTO `admin_log` VALUES ('129', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:03:29');
INSERT INTO `admin_log` VALUES ('130', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:07:27');
INSERT INTO `admin_log` VALUES ('131', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:09:34');
INSERT INTO `admin_log` VALUES ('132', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:11:50');
INSERT INTO `admin_log` VALUES ('133', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:12:13');
INSERT INTO `admin_log` VALUES ('134', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:12:37');
INSERT INTO `admin_log` VALUES ('135', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:13:02');
INSERT INTO `admin_log` VALUES ('136', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:14:34');
INSERT INTO `admin_log` VALUES ('137', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:16:48');
INSERT INTO `admin_log` VALUES ('138', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:16:49');
INSERT INTO `admin_log` VALUES ('139', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:16:50');
INSERT INTO `admin_log` VALUES ('140', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:17:10');
INSERT INTO `admin_log` VALUES ('141', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:17:16');
INSERT INTO `admin_log` VALUES ('142', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:19:50');
INSERT INTO `admin_log` VALUES ('143', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:20:17');
INSERT INTO `admin_log` VALUES ('144', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:22:20');
INSERT INTO `admin_log` VALUES ('145', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:22:25');
INSERT INTO `admin_log` VALUES ('146', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:23:21');
INSERT INTO `admin_log` VALUES ('147', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:23:53');
INSERT INTO `admin_log` VALUES ('148', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:24:20');
INSERT INTO `admin_log` VALUES ('149', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:25:16');
INSERT INTO `admin_log` VALUES ('150', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:25:45');
INSERT INTO `admin_log` VALUES ('151', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:27:06');
INSERT INTO `admin_log` VALUES ('152', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:27:34');
INSERT INTO `admin_log` VALUES ('153', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:27:38');
INSERT INTO `admin_log` VALUES ('154', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:28:08');
INSERT INTO `admin_log` VALUES ('155', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:29:14');
INSERT INTO `admin_log` VALUES ('156', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:36:04');
INSERT INTO `admin_log` VALUES ('157', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:36:46');
INSERT INTO `admin_log` VALUES ('158', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:37:56');
INSERT INTO `admin_log` VALUES ('159', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:38:30');
INSERT INTO `admin_log` VALUES ('160', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:38:52');
INSERT INTO `admin_log` VALUES ('161', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:39:09');
INSERT INTO `admin_log` VALUES ('162', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:43:34');
INSERT INTO `admin_log` VALUES ('163', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'test', '2018-05-10 11:43:50');
INSERT INTO `admin_log` VALUES ('164', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:43:56');
INSERT INTO `admin_log` VALUES ('165', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:44:19');
INSERT INTO `admin_log` VALUES ('166', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:44:49');
INSERT INTO `admin_log` VALUES ('167', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:45:47');
INSERT INTO `admin_log` VALUES ('168', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:46:16');
INSERT INTO `admin_log` VALUES ('169', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:46:44');
INSERT INTO `admin_log` VALUES ('170', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:47:21');
INSERT INTO `admin_log` VALUES ('171', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:47:47');
INSERT INTO `admin_log` VALUES ('172', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:49:53');
INSERT INTO `admin_log` VALUES ('173', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-10 11:53:25');
INSERT INTO `admin_log` VALUES ('174', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:55:18');
INSERT INTO `admin_log` VALUES ('175', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:56:16');
INSERT INTO `admin_log` VALUES ('176', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-10 11:56:23');
INSERT INTO `admin_log` VALUES ('177', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-10 11:56:55');
INSERT INTO `admin_log` VALUES ('178', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-10 11:56:57');
INSERT INTO `admin_log` VALUES ('179', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-10 11:56:58');
INSERT INTO `admin_log` VALUES ('180', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-10 11:57:01');
INSERT INTO `admin_log` VALUES ('181', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-10 11:57:05');
INSERT INTO `admin_log` VALUES ('182', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:57:27');
INSERT INTO `admin_log` VALUES ('183', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-10 11:57:52');
INSERT INTO `admin_log` VALUES ('184', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-10 11:58:03');
INSERT INTO `admin_log` VALUES ('185', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-10 11:58:06');
INSERT INTO `admin_log` VALUES ('186', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 11:59:37');
INSERT INTO `admin_log` VALUES ('187', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-10 12:00:43');
INSERT INTO `admin_log` VALUES ('188', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:00:54');
INSERT INTO `admin_log` VALUES ('189', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-10 12:01:17');
INSERT INTO `admin_log` VALUES ('190', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:01:24');
INSERT INTO `admin_log` VALUES ('191', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:06:13');
INSERT INTO `admin_log` VALUES ('192', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:07:04');
INSERT INTO `admin_log` VALUES ('193', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:09:20');
INSERT INTO `admin_log` VALUES ('194', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-10 12:12:28');
INSERT INTO `admin_log` VALUES ('195', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-10 12:12:34');
INSERT INTO `admin_log` VALUES ('196', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-10 12:12:38');
INSERT INTO `admin_log` VALUES ('197', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-10 12:12:44');
INSERT INTO `admin_log` VALUES ('198', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-10 12:12:49');
INSERT INTO `admin_log` VALUES ('199', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-10 12:12:51');
INSERT INTO `admin_log` VALUES ('200', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-10 12:12:54');
INSERT INTO `admin_log` VALUES ('201', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-10 12:12:56');
INSERT INTO `admin_log` VALUES ('202', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:13:05');
INSERT INTO `admin_log` VALUES ('203', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:14:09');
INSERT INTO `admin_log` VALUES ('204', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:14:43');
INSERT INTO `admin_log` VALUES ('205', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:14:55');
INSERT INTO `admin_log` VALUES ('206', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-10 12:15:43');
INSERT INTO `admin_log` VALUES ('207', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:16:03');
INSERT INTO `admin_log` VALUES ('208', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:16:10');
INSERT INTO `admin_log` VALUES ('209', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:16:34');
INSERT INTO `admin_log` VALUES ('210', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:17:27');
INSERT INTO `admin_log` VALUES ('211', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'test', '2018-05-10 12:20:25');
INSERT INTO `admin_log` VALUES ('212', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:20:46');
INSERT INTO `admin_log` VALUES ('213', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:23:13');
INSERT INTO `admin_log` VALUES ('214', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:23:27');
INSERT INTO `admin_log` VALUES ('215', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:26:32');
INSERT INTO `admin_log` VALUES ('216', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:27:12');
INSERT INTO `admin_log` VALUES ('217', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:27:35');
INSERT INTO `admin_log` VALUES ('218', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:27:56');
INSERT INTO `admin_log` VALUES ('219', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:28:12');
INSERT INTO `admin_log` VALUES ('220', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:28:16');
INSERT INTO `admin_log` VALUES ('221', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:28:29');
INSERT INTO `admin_log` VALUES ('222', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:28:41');
INSERT INTO `admin_log` VALUES ('223', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:28:59');
INSERT INTO `admin_log` VALUES ('224', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:29:15');
INSERT INTO `admin_log` VALUES ('225', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:29:36');
INSERT INTO `admin_log` VALUES ('226', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:30:08');
INSERT INTO `admin_log` VALUES ('227', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:32:03');
INSERT INTO `admin_log` VALUES ('228', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:33:20');
INSERT INTO `admin_log` VALUES ('229', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:36:42');
INSERT INTO `admin_log` VALUES ('230', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:40:51');
INSERT INTO `admin_log` VALUES ('231', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'test', '2018-05-10 12:41:00');
INSERT INTO `admin_log` VALUES ('232', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:41:07');
INSERT INTO `admin_log` VALUES ('233', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:41:59');
INSERT INTO `admin_log` VALUES ('234', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:42:29');
INSERT INTO `admin_log` VALUES ('235', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:42:53');
INSERT INTO `admin_log` VALUES ('236', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:47:48');
INSERT INTO `admin_log` VALUES ('237', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 12:48:24');
INSERT INTO `admin_log` VALUES ('238', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 13:02:28');
INSERT INTO `admin_log` VALUES ('239', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 13:02:47');
INSERT INTO `admin_log` VALUES ('240', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 13:04:11');
INSERT INTO `admin_log` VALUES ('241', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 13:04:55');
INSERT INTO `admin_log` VALUES ('242', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 13:05:03');
INSERT INTO `admin_log` VALUES ('243', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 13:05:23');
INSERT INTO `admin_log` VALUES ('244', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 13:05:39');
INSERT INTO `admin_log` VALUES ('245', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 13:06:30');
INSERT INTO `admin_log` VALUES ('246', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 13:08:23');
INSERT INTO `admin_log` VALUES ('247', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 13:09:01');
INSERT INTO `admin_log` VALUES ('248', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 13:09:21');
INSERT INTO `admin_log` VALUES ('249', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 13:11:21');
INSERT INTO `admin_log` VALUES ('250', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 13:11:30');
INSERT INTO `admin_log` VALUES ('251', 'admin-module', 'create', 'admin-module/create', '菜单用户权限', '菜单管理', '一级菜单添加', 'Unknown', 'test', '2018-05-10 13:12:23');
INSERT INTO `admin_log` VALUES ('252', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 13:13:10');
INSERT INTO `admin_log` VALUES ('253', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 13:13:38');
INSERT INTO `admin_log` VALUES ('254', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 13:14:34');
INSERT INTO `admin_log` VALUES ('255', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 13:14:55');
INSERT INTO `admin_log` VALUES ('256', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 13:15:04');
INSERT INTO `admin_log` VALUES ('257', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 13:16:35');
INSERT INTO `admin_log` VALUES ('258', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 13:23:27');
INSERT INTO `admin_log` VALUES ('259', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 13:23:37');
INSERT INTO `admin_log` VALUES ('260', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 13:23:45');
INSERT INTO `admin_log` VALUES ('261', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 13:24:24');
INSERT INTO `admin_log` VALUES ('262', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 13:26:05');
INSERT INTO `admin_log` VALUES ('263', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-10 13:44:23');
INSERT INTO `admin_log` VALUES ('264', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 14:26:36');
INSERT INTO `admin_log` VALUES ('265', 'admin-module', 'view', 'admin-module/view', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 14:29:40');
INSERT INTO `admin_log` VALUES ('266', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 14:34:44');
INSERT INTO `admin_log` VALUES ('267', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 14:34:52');
INSERT INTO `admin_log` VALUES ('268', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 14:35:00');
INSERT INTO `admin_log` VALUES ('269', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 14:35:16');
INSERT INTO `admin_log` VALUES ('270', 'admin-module', 'create', 'admin-module/create', '菜单用户权限', '菜单管理', '一级菜单添加', 'Unknown', 'test', '2018-05-10 14:35:36');
INSERT INTO `admin_log` VALUES ('271', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 14:38:03');
INSERT INTO `admin_log` VALUES ('272', 'admin-module', 'create', 'admin-module/create', '菜单用户权限', '菜单管理', '一级菜单添加', 'Unknown', 'test', '2018-05-10 14:38:17');
INSERT INTO `admin_log` VALUES ('273', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 14:39:01');
INSERT INTO `admin_log` VALUES ('274', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 14:39:36');
INSERT INTO `admin_log` VALUES ('275', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 14:39:44');
INSERT INTO `admin_log` VALUES ('276', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 14:40:01');
INSERT INTO `admin_log` VALUES ('277', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 14:40:32');
INSERT INTO `admin_log` VALUES ('278', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 14:42:10');
INSERT INTO `admin_log` VALUES ('279', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 14:43:39');
INSERT INTO `admin_log` VALUES ('280', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 14:54:12');
INSERT INTO `admin_log` VALUES ('281', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 14:54:39');
INSERT INTO `admin_log` VALUES ('282', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 14:54:50');
INSERT INTO `admin_log` VALUES ('283', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 14:55:27');
INSERT INTO `admin_log` VALUES ('284', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-10 14:57:00');
INSERT INTO `admin_log` VALUES ('285', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'test', '2018-05-10 14:57:05');
INSERT INTO `admin_log` VALUES ('286', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'test', '2018-05-10 14:57:28');
INSERT INTO `admin_log` VALUES ('287', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'test', '2018-05-10 15:02:00');
INSERT INTO `admin_log` VALUES ('288', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 15:02:05');
INSERT INTO `admin_log` VALUES ('289', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 15:03:53');
INSERT INTO `admin_log` VALUES ('290', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-10 15:04:01');
INSERT INTO `admin_log` VALUES ('291', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-11 03:28:07');
INSERT INTO `admin_log` VALUES ('292', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-11 03:29:36');
INSERT INTO `admin_log` VALUES ('293', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-11 03:32:58');
INSERT INTO `admin_log` VALUES ('294', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-11 03:33:03');
INSERT INTO `admin_log` VALUES ('295', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-11 03:33:05');
INSERT INTO `admin_log` VALUES ('296', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-11 03:33:07');
INSERT INTO `admin_log` VALUES ('297', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-11 03:33:09');
INSERT INTO `admin_log` VALUES ('298', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-11 03:33:12');
INSERT INTO `admin_log` VALUES ('299', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-11 03:33:19');
INSERT INTO `admin_log` VALUES ('300', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-11 03:33:28');
INSERT INTO `admin_log` VALUES ('301', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-11 03:33:31');
INSERT INTO `admin_log` VALUES ('302', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-11 03:33:34');
INSERT INTO `admin_log` VALUES ('303', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-11 03:33:46');
INSERT INTO `admin_log` VALUES ('304', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'test', '2018-05-11 03:33:48');
INSERT INTO `admin_log` VALUES ('305', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'test', '2018-05-11 04:17:55');
INSERT INTO `admin_log` VALUES ('306', 'admin-user', 'view', 'admin-user/view', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'test', '2018-05-11 04:19:23');
INSERT INTO `admin_log` VALUES ('307', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-11 04:49:01');
INSERT INTO `admin_log` VALUES ('308', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'test', '2018-05-11 04:59:23');
INSERT INTO `admin_log` VALUES ('309', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'test', '2018-05-11 04:59:26');
INSERT INTO `admin_log` VALUES ('310', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'test', '2018-05-11 05:17:45');
INSERT INTO `admin_log` VALUES ('311', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'test', '2018-05-11 05:19:59');
INSERT INTO `admin_log` VALUES ('312', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'test', '2018-05-11 08:00:00');

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(50) NOT NULL COMMENT 'code',
  `menu_name` varchar(200) NOT NULL COMMENT '名称',
  `module_id` int(11) NOT NULL COMMENT '模块id',
  `display_label` varchar(200) DEFAULT NULL COMMENT '显示名',
  `des` varchar(400) DEFAULT NULL COMMENT '描述',
  `display_order` int(5) DEFAULT NULL COMMENT '显示顺序',
  `entry_right_name` varchar(50) DEFAULT NULL COMMENT '入口地址名称',
  `entry_url` varchar(200) NOT NULL COMMENT '入口地址',
  `action` varchar(50) NOT NULL COMMENT '操作ID',
  `controller` varchar(100) NOT NULL COMMENT '控制器ID',
  `has_lef` varchar(1) NOT NULL DEFAULT 'n' COMMENT '是否有子',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_code` (`code`),
  KEY `fk_module_id` (`module_id`),
  CONSTRAINT `fk_module_id` FOREIGN KEY (`module_id`) REFERENCES `admin_module` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', 'menu_manger', '菜单管理', '1', '菜单管理', '菜单管理', '1', '菜单管理', 'admin-module/index', 'index', 'backend\\controllers\\AdminMenuController', 'n', 'admin', '2016-08-11 16:44:11', 'admin', '2016-08-11 16:44:11');
INSERT INTO `admin_menu` VALUES ('2', 'menu_role', '角色管理', '1', '角色管理', '角色管理', '2', '角色管理', 'admin-role/index', 'index', 'backend\\controllers\\AdminRoleController', 'n', 'admin', '2016-08-11 16:51:56', 'admin', '2016-08-11 16:51:56');
INSERT INTO `admin_menu` VALUES ('3', 'menu_user', '用户管理', '1', '用户管理', '用户管理', '3', '用户管理', 'admin-user/index', 'index', 'backend\\controllers\\AdminUserController', 'n', 'admin', '2016-08-11 16:58:43', 'admin', '2016-08-11 16:58:43');
INSERT INTO `admin_menu` VALUES ('4', 'coazaorizhi', '操作日志', '2', '操作日志', '操作日志', '1', '', 'admin-log/index', 'index', 'backend\\controllers\\AdminLogController', 'n', 'test', '2016-08-14 06:54:17', 'test', '2016-08-14 06:54:17');

-- ----------------------------
-- Table structure for admin_message
-- ----------------------------
DROP TABLE IF EXISTS `admin_message`;
CREATE TABLE `admin_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `msg` varchar(1000) DEFAULT NULL COMMENT '留言内容',
  `expiry_days` int(5) unsigned DEFAULT NULL COMMENT '有效天数',
  `create_user` varchar(50) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_user` varchar(50) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_message
-- ----------------------------
INSERT INTO `admin_message` VALUES ('1', '测试文本', '1', 'admin', '2014-11-21 18:47:20', 'admin', '2014-11-21 18:47:27');

-- ----------------------------
-- Table structure for admin_module
-- ----------------------------
DROP TABLE IF EXISTS `admin_module`;
CREATE TABLE `admin_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(50) NOT NULL COMMENT 'code',
  `display_label` varchar(200) NOT NULL COMMENT '显示名称',
  `has_lef` varchar(1) NOT NULL DEFAULT 'n' COMMENT '是否有子',
  `des` varchar(400) DEFAULT NULL COMMENT '描述',
  `entry_url` varchar(100) DEFAULT NULL COMMENT '入口地址',
  `display_order` int(5) DEFAULT NULL COMMENT '顺序',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `meun_icon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_module
-- ----------------------------
INSERT INTO `admin_module` VALUES ('1', 'menu_manage', '菜单用户权限', 'n', '菜单管理', '', '1', 'admin', '2016-08-11 15:26:21', 'admin', '2016-08-11 16:31:08', 'fa-sitemap');
INSERT INTO `admin_module` VALUES ('2', 'rizhimaanage', '日志管理', 'n', '日志管理', '', '2', 'test', '2016-08-14 06:53:13', 'test', '2016-08-14 06:53:13', 'fa-list-alt');

-- ----------------------------
-- Table structure for admin_right
-- ----------------------------
DROP TABLE IF EXISTS `admin_right`;
CREATE TABLE `admin_right` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menu_id` int(11) NOT NULL COMMENT '功能主键',
  `right_name` varchar(200) NOT NULL COMMENT '名称',
  `display_label` varchar(200) DEFAULT NULL COMMENT '显示名',
  `des` varchar(200) DEFAULT NULL COMMENT '描述',
  `display_order` int(5) DEFAULT NULL COMMENT '显示顺序',
  `has_lef` varchar(1) NOT NULL DEFAULT 'n' COMMENT '是否有子',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_admin_right` (`menu_id`),
  KEY `index_menu_id` (`menu_id`),
  CONSTRAINT `FK_admin_right` FOREIGN KEY (`menu_id`) REFERENCES `admin_menu` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_right
-- ----------------------------
INSERT INTO `admin_right` VALUES ('4', '2', '角色操作', '角色操作', '角色操作', '1', 'n', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right` VALUES ('5', '2', '分配用户', '分配用户', '分配用户', '2', 'n', 'admin', '2016-08-13 17:05:04', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right` VALUES ('6', '2', '分配权限', '分配权限', '分配权限', '3', 'n', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right` VALUES ('7', '3', '用户操作', '用户操作', '用户操作', '1', 'n', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right` VALUES ('8', '4', '操作', '操作', '操作', '1', 'n', 'test', '2016-08-14 06:54:38', 'test', '2016-08-14 06:54:38');
INSERT INTO `admin_right` VALUES ('13', '1', '一级菜单查看', '一级菜单查看', '一级菜单查看', '1', 'n', 'test', '2016-08-16 15:52:45', 'test', '2016-08-16 15:52:45');
INSERT INTO `admin_right` VALUES ('14', '1', '一级菜单添加', '一级菜单添加', '一级菜单添加', '2', 'n', 'test', '2016-08-16 15:53:10', 'test', '2016-08-16 15:58:30');
INSERT INTO `admin_right` VALUES ('15', '1', '一级菜单删除', '一级菜单删除', '一级菜单删除', '3', 'n', 'test', '2016-08-16 15:53:44', 'test', '2016-08-16 15:53:44');
INSERT INTO `admin_right` VALUES ('16', '1', '二级菜单查看', '二级菜单查看', '二级菜单查看', '4', 'n', 'test', '2016-08-16 15:55:02', 'test', '2016-08-16 15:55:02');
INSERT INTO `admin_right` VALUES ('17', '1', '二级菜单添加', '二级菜单修改', '二级菜单添加', '5', 'n', 'test', '2016-08-16 15:55:21', 'test', '2016-08-16 15:58:50');
INSERT INTO `admin_right` VALUES ('18', '1', '二级菜单删除', '二级菜单删除', '二级菜单删除', '6', 'n', 'test', '2016-08-16 15:55:58', 'test', '2016-08-16 15:55:58');
INSERT INTO `admin_right` VALUES ('19', '1', '路由查看', '路由查看', '路由查看', '7', 'n', 'test', '2016-08-16 15:56:32', 'test', '2016-08-16 15:57:14');
INSERT INTO `admin_right` VALUES ('20', '1', '路由添加', '路由添加', '路由添加', '8', 'n', 'test', '2016-08-16 15:57:46', 'test', '2016-08-16 15:57:46');
INSERT INTO `admin_right` VALUES ('21', '1', '路由删除', '路由删除', '路由删除', '9', 'n', 'test', '2016-08-16 15:58:05', 'test', '2016-08-16 15:58:05');

-- ----------------------------
-- Table structure for admin_right_url
-- ----------------------------
DROP TABLE IF EXISTS `admin_right_url`;
CREATE TABLE `admin_right_url` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `right_id` int(11) NOT NULL COMMENT 'right主键',
  `url` varchar(200) DEFAULT NULL COMMENT 'url',
  `para_name` varchar(40) DEFAULT NULL COMMENT '参数名',
  `para_value` varchar(40) DEFAULT NULL COMMENT '参数值',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_admin_right_url` (`right_id`),
  KEY `index_right_id` (`right_id`),
  CONSTRAINT `FK_admin_right_url` FOREIGN KEY (`right_id`) REFERENCES `admin_right` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_right_url
-- ----------------------------
INSERT INTO `admin_right_url` VALUES ('16', '4', 'admin-role/index', 'admin-role', 'index', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('17', '4', 'admin-role/view', 'admin-role', 'view', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('18', '4', 'admin-role/create', 'admin-role', 'create', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('19', '4', 'admin-role/update', 'admin-role', 'update', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('20', '4', 'admin-role/delete', 'admin-role', 'delete', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('21', '4', 'admin-role/get-all-rights', 'admin-role', 'get-all-rights', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('22', '4', 'admin-role/save-rights', 'admin-role', 'save-rights', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('30', '6', 'admin-role/index', 'admin-role', 'index', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('31', '6', 'admin-role/view', 'admin-role', 'view', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('32', '6', 'admin-role/create', 'admin-role', 'create', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('33', '6', 'admin-role/update', 'admin-role', 'update', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('34', '6', 'admin-role/delete', 'admin-role', 'delete', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('35', '6', 'admin-role/get-all-rights', 'admin-role', 'get-all-rights', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('36', '6', 'admin-role/save-rights', 'admin-role', 'save-rights', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('37', '7', 'admin-user/index', 'admin-user', 'index', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right_url` VALUES ('38', '7', 'admin-user/view', 'admin-user', 'view', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right_url` VALUES ('39', '7', 'admin-user/create', 'admin-user', 'create', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right_url` VALUES ('40', '7', 'admin-user/update', 'admin-user', 'update', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right_url` VALUES ('41', '7', 'admin-user/delete', 'admin-user', 'delete', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right_url` VALUES ('42', '8', 'admin-log/index', 'admin-log', 'index', 'test', '2016-08-14 06:54:38', 'test', '2016-08-14 06:54:38');
INSERT INTO `admin_right_url` VALUES ('43', '8', 'admin-log/view', 'admin-log', 'view', 'test', '2016-08-14 06:54:38', 'test', '2016-08-14 06:54:38');
INSERT INTO `admin_right_url` VALUES ('44', '8', 'admin-log/create', 'admin-log', 'create', 'test', '2016-08-14 06:54:38', 'test', '2016-08-14 06:54:38');
INSERT INTO `admin_right_url` VALUES ('45', '8', 'admin-log/update', 'admin-log', 'update', 'test', '2016-08-14 06:54:38', 'test', '2016-08-14 06:54:38');
INSERT INTO `admin_right_url` VALUES ('46', '8', 'admin-log/delete', 'admin-log', 'delete', 'test', '2016-08-14 06:54:38', 'test', '2016-08-14 06:54:38');
INSERT INTO `admin_right_url` VALUES ('81', '5', 'admin-user-role/index', 'admin-user-role', 'index', 'test', '2016-08-14 08:22:13', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right_url` VALUES ('82', '5', 'admin-user-role/view', 'admin-user-role', 'view', 'test', '2016-08-14 08:22:13', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right_url` VALUES ('83', '5', 'admin-user-role/create', 'admin-user-role', 'create', 'test', '2016-08-14 08:22:13', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right_url` VALUES ('84', '5', 'admin-user-role/update', 'admin-user-role', 'update', 'test', '2016-08-14 08:22:13', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right_url` VALUES ('85', '5', 'admin-user-role/delete', 'admin-user-role', 'delete', 'test', '2016-08-14 08:22:13', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right_url` VALUES ('112', '13', 'admin-module/index', 'admin-module', 'index', 'test', '2016-08-16 15:52:45', 'test', '2016-08-16 15:52:45');
INSERT INTO `admin_right_url` VALUES ('113', '13', 'admin-module/view', 'admin-module', 'view', 'test', '2016-08-16 15:52:45', 'test', '2016-08-16 15:52:45');
INSERT INTO `admin_right_url` VALUES ('115', '15', 'admin-module/delete', 'admin-module', 'delete', 'test', '2016-08-16 15:53:44', 'test', '2016-08-16 15:53:44');
INSERT INTO `admin_right_url` VALUES ('118', '16', 'admin-menu/index', 'admin-menu', 'index', 'test', '2016-08-16 15:55:02', 'test', '2016-08-16 15:55:02');
INSERT INTO `admin_right_url` VALUES ('119', '16', 'admin-menu/view', 'admin-menu', 'view', 'test', '2016-08-16 15:55:02', 'test', '2016-08-16 15:55:02');
INSERT INTO `admin_right_url` VALUES ('122', '18', 'admin-menu/delete', 'admin-menu', 'delete', 'test', '2016-08-16 15:55:58', 'test', '2016-08-16 15:55:58');
INSERT INTO `admin_right_url` VALUES ('125', '19', 'admin-right/index', 'admin-right', 'index', 'test', '2016-08-16 15:57:14', 'test', '2016-08-16 15:57:14');
INSERT INTO `admin_right_url` VALUES ('126', '19', 'admin-right/view', 'admin-right', 'view', 'test', '2016-08-16 15:57:14', 'test', '2016-08-16 15:57:14');
INSERT INTO `admin_right_url` VALUES ('127', '19', 'admin-right/right-action', 'admin-right', 'right-action', 'test', '2016-08-16 15:57:14', 'test', '2016-08-16 15:57:14');
INSERT INTO `admin_right_url` VALUES ('128', '20', 'admin-right/create', 'admin-right', 'create', 'test', '2016-08-16 15:57:46', 'test', '2016-08-16 15:57:46');
INSERT INTO `admin_right_url` VALUES ('129', '20', 'admin-right/update', 'admin-right', 'update', 'test', '2016-08-16 15:57:46', 'test', '2016-08-16 15:57:46');
INSERT INTO `admin_right_url` VALUES ('130', '21', 'admin-right/delete', 'admin-right', 'delete', 'test', '2016-08-16 15:58:05', 'test', '2016-08-16 15:58:05');
INSERT INTO `admin_right_url` VALUES ('131', '14', 'admin-module/create', 'admin-module', 'create', 'test', '2016-08-16 15:58:30', 'test', '2016-08-16 15:58:30');
INSERT INTO `admin_right_url` VALUES ('132', '14', 'admin-module/update', 'admin-module', 'update', 'test', '2016-08-16 15:58:30', 'test', '2016-08-16 15:58:30');
INSERT INTO `admin_right_url` VALUES ('133', '17', 'admin-menu/create', 'admin-menu', 'create', 'test', '2016-08-16 15:58:51', 'test', '2016-08-16 15:58:51');
INSERT INTO `admin_right_url` VALUES ('134', '17', 'admin-menu/update', 'admin-menu', 'update', 'test', '2016-08-16 15:58:51', 'test', '2016-08-16 15:58:51');

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(50) NOT NULL COMMENT '角色编号',
  `name` varchar(50) NOT NULL COMMENT '角色名称',
  `des` varchar(400) DEFAULT NULL COMMENT '角色描述',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES ('1', 'superadmin', '超级管理员', '拥有所有权限', 'test', '2016-08-12 15:33:01', 'test', '2016-08-12 15:33:01');
INSERT INTO `admin_role` VALUES ('2', 'testuser', '测试人员', '测试人员', 'test', '2016-08-12 15:33:45', 'test', '2016-08-12 15:33:45');

-- ----------------------------
-- Table structure for admin_role_right
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_right`;
CREATE TABLE `admin_role_right` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int(11) NOT NULL COMMENT '角色主键',
  `right_id` int(11) NOT NULL COMMENT '权限主键',
  `full_path` varchar(250) DEFAULT NULL COMMENT '全路径',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `index_role_id` (`role_id`),
  KEY `index_right_id` (`right_id`),
  CONSTRAINT `admin_role_right_ibfk_1` FOREIGN KEY (`right_id`) REFERENCES `admin_right` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_role_right
-- ----------------------------
INSERT INTO `admin_role_right` VALUES ('141', '2', '13', null, 'test', '2018-05-10 09:31:20', 'test', '2018-05-10 09:31:20');
INSERT INTO `admin_role_right` VALUES ('142', '2', '14', null, 'test', '2018-05-10 09:31:20', 'test', '2018-05-10 09:31:20');
INSERT INTO `admin_role_right` VALUES ('143', '2', '15', null, 'test', '2018-05-10 09:31:20', 'test', '2018-05-10 09:31:20');
INSERT INTO `admin_role_right` VALUES ('144', '2', '16', null, 'test', '2018-05-10 09:31:20', 'test', '2018-05-10 09:31:20');
INSERT INTO `admin_role_right` VALUES ('145', '2', '17', null, 'test', '2018-05-10 09:31:20', 'test', '2018-05-10 09:31:20');
INSERT INTO `admin_role_right` VALUES ('146', '2', '18', null, 'test', '2018-05-10 09:31:20', 'test', '2018-05-10 09:31:20');
INSERT INTO `admin_role_right` VALUES ('147', '2', '19', null, 'test', '2018-05-10 09:31:20', 'test', '2018-05-10 09:31:20');
INSERT INTO `admin_role_right` VALUES ('148', '2', '20', null, 'test', '2018-05-10 09:31:20', 'test', '2018-05-10 09:31:20');
INSERT INTO `admin_role_right` VALUES ('149', '2', '21', null, 'test', '2018-05-10 09:31:20', 'test', '2018-05-10 09:31:20');
INSERT INTO `admin_role_right` VALUES ('150', '2', '4', null, 'test', '2018-05-10 09:31:20', 'test', '2018-05-10 09:31:20');
INSERT INTO `admin_role_right` VALUES ('151', '2', '5', null, 'test', '2018-05-10 09:31:20', 'test', '2018-05-10 09:31:20');
INSERT INTO `admin_role_right` VALUES ('152', '2', '6', null, 'test', '2018-05-10 09:31:20', 'test', '2018-05-10 09:31:20');
INSERT INTO `admin_role_right` VALUES ('153', '2', '7', null, 'test', '2018-05-10 09:31:20', 'test', '2018-05-10 09:31:20');
INSERT INTO `admin_role_right` VALUES ('154', '2', '8', null, 'test', '2018-05-10 09:31:20', 'test', '2018-05-10 09:31:20');
INSERT INTO `admin_role_right` VALUES ('170', '1', '13', null, 'test', '2018-05-10 09:32:19', 'test', '2018-05-10 09:32:19');
INSERT INTO `admin_role_right` VALUES ('171', '1', '14', null, 'test', '2018-05-10 09:32:19', 'test', '2018-05-10 09:32:19');
INSERT INTO `admin_role_right` VALUES ('172', '1', '15', null, 'test', '2018-05-10 09:32:19', 'test', '2018-05-10 09:32:19');
INSERT INTO `admin_role_right` VALUES ('173', '1', '16', null, 'test', '2018-05-10 09:32:19', 'test', '2018-05-10 09:32:19');
INSERT INTO `admin_role_right` VALUES ('174', '1', '17', null, 'test', '2018-05-10 09:32:19', 'test', '2018-05-10 09:32:19');
INSERT INTO `admin_role_right` VALUES ('175', '1', '18', null, 'test', '2018-05-10 09:32:19', 'test', '2018-05-10 09:32:19');
INSERT INTO `admin_role_right` VALUES ('176', '1', '19', null, 'test', '2018-05-10 09:32:19', 'test', '2018-05-10 09:32:19');
INSERT INTO `admin_role_right` VALUES ('177', '1', '20', null, 'test', '2018-05-10 09:32:19', 'test', '2018-05-10 09:32:19');
INSERT INTO `admin_role_right` VALUES ('178', '1', '21', null, 'test', '2018-05-10 09:32:19', 'test', '2018-05-10 09:32:19');
INSERT INTO `admin_role_right` VALUES ('179', '1', '4', null, 'test', '2018-05-10 09:32:19', 'test', '2018-05-10 09:32:19');
INSERT INTO `admin_role_right` VALUES ('180', '1', '5', null, 'test', '2018-05-10 09:32:19', 'test', '2018-05-10 09:32:19');
INSERT INTO `admin_role_right` VALUES ('181', '1', '6', null, 'test', '2018-05-10 09:32:19', 'test', '2018-05-10 09:32:19');
INSERT INTO `admin_role_right` VALUES ('182', '1', '7', null, 'test', '2018-05-10 09:32:19', 'test', '2018-05-10 09:32:19');
INSERT INTO `admin_role_right` VALUES ('183', '1', '8', null, 'test', '2018-05-10 09:32:19', 'test', '2018-05-10 09:32:19');

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `auth_key` varchar(50) DEFAULT NULL COMMENT '自动登录key',
  `last_ip` varchar(50) DEFAULT NULL COMMENT '最近一次登录ip',
  `is_online` char(1) DEFAULT 'n' COMMENT '是否在线',
  `domain_account` varchar(100) DEFAULT NULL COMMENT '域账号',
  `status` smallint(6) NOT NULL DEFAULT '10' COMMENT '状态',
  `create_user` varchar(100) NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_user` varchar(101) NOT NULL COMMENT '更新人',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES ('156', 'admin', '$2y$13$9O6bKJieocg//oSax9fZOOuljAKarBXknqD8.RyYg60FfNjS7SoqK', null, 'Unknown', 'n', null, '10', 'admin', '2014-07-07 00:05:47', 'admin', '2014-09-03 12:19:12');
INSERT INTO `admin_user` VALUES ('158', 'test', '$2y$13$IECQQTzV687FOk9D1y1x8uWvWrw9g6b9yQjEPm5ZFcFWZW0CJbrQ2', null, 'Unknown', 'n', null, '10', 'admin', '2014-09-03 12:19:52', 'admin', '2014-11-21 19:19:22');

-- ----------------------------
-- Table structure for admin_user_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_role`;
CREATE TABLE `admin_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `role_id` int(11) NOT NULL COMMENT '角色',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `index_user_id` (`user_id`),
  KEY `index_role_id` (`role_id`),
  CONSTRAINT `admin_user_role_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_user_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_user_role
-- ----------------------------
INSERT INTO `admin_user_role` VALUES ('1', '156', '1', 'admin', '2016-08-12 17:03:13', 'admin', '2016-08-12 17:03:13');
INSERT INTO `admin_user_role` VALUES ('2', '158', '2', 'test', '2016-08-13 16:34:20', 'test', '2016-08-13 16:34:20');

-- ----------------------------
-- Table structure for web_content
-- ----------------------------
DROP TABLE IF EXISTS `web_content`;
CREATE TABLE `web_content` (
  `web_nav_id` int(11) NOT NULL COMMENT '主键',
  `web_content` varchar(255) DEFAULT NULL COMMENT '内容',
  `create_user` varchar(32) NOT NULL COMMENT '创建用户',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_user` varchar(32) DEFAULT NULL COMMENT '更新用户',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`web_nav_id`),
  CONSTRAINT `web_content_ibfk_1` FOREIGN KEY (`web_nav_id`) REFERENCES `web_nav` (`web_nav_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_content
-- ----------------------------

-- ----------------------------
-- Table structure for web_nav
-- ----------------------------
DROP TABLE IF EXISTS `web_nav`;
CREATE TABLE `web_nav` (
  `web_nav_id` int(11) NOT NULL COMMENT '主键',
  `web_navType_id` int(11) NOT NULL COMMENT '导航类型ID',
  `web_nav_name` varchar(32) NOT NULL COMMENT '类型名称',
  `url` varchar(255) NOT NULL COMMENT '地址URL',
  PRIMARY KEY (`web_nav_id`),
  KEY `web_navType_id` (`web_navType_id`),
  CONSTRAINT `web_nav_ibfk_1` FOREIGN KEY (`web_navType_id`) REFERENCES `web_nav_type` (`web_navType_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_nav
-- ----------------------------
INSERT INTO `web_nav` VALUES ('1', '1', '公司首页', '');
INSERT INTO `web_nav` VALUES ('2', '1', '公司简介', '');
INSERT INTO `web_nav` VALUES ('3', '1', '公司资质', '');
INSERT INTO `web_nav` VALUES ('4', '1', '工程案列', '');
INSERT INTO `web_nav` VALUES ('5', '1', '联系我们', '');
INSERT INTO `web_nav` VALUES ('6', '1', '客户留言', '');
INSERT INTO `web_nav` VALUES ('7', '2', '清洗服务', '');
INSERT INTO `web_nav` VALUES ('8', '2', '清洗地毯', '');
INSERT INTO `web_nav` VALUES ('9', '2', '日常托管式保洁', '');
INSERT INTO `web_nav` VALUES ('10', '2', '地面清洗养护', '');
INSERT INTO `web_nav` VALUES ('11', '2', '家庭开荒保洁', '');
INSERT INTO `web_nav` VALUES ('12', '2', '公司开荒保洁', '');
INSERT INTO `web_nav` VALUES ('13', '2', '石材翻新养护', '');
INSERT INTO `web_nav` VALUES ('14', '2', '地板打蜡', '');
INSERT INTO `web_nav` VALUES ('15', '2', '油烟机、油烟管道清洗', '');
INSERT INTO `web_nav` VALUES ('16', '2', '沙发清洗', '');
INSERT INTO `web_nav` VALUES ('17', '2', '管道疏通', '');
INSERT INTO `web_nav` VALUES ('18', '2', '室内装潢', '');
INSERT INTO `web_nav` VALUES ('19', '2', '耐磨地坪密封固化处理', '');

-- ----------------------------
-- Table structure for web_nav_type
-- ----------------------------
DROP TABLE IF EXISTS `web_nav_type`;
CREATE TABLE `web_nav_type` (
  `web_navType_id` int(11) NOT NULL COMMENT '主键',
  `web_navType_name` varchar(32) NOT NULL COMMENT '导航类型名称',
  PRIMARY KEY (`web_navType_id`),
  KEY `web_navType_id` (`web_navType_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_nav_type
-- ----------------------------
INSERT INTO `web_nav_type` VALUES ('1', '首页导航条');
INSERT INTO `web_nav_type` VALUES ('2', '服务导航条');

-- ----------------------------
-- Table structure for web_pic
-- ----------------------------
DROP TABLE IF EXISTS `web_pic`;
CREATE TABLE `web_pic` (
  `pic_id` int(11) NOT NULL,
  `pic_type_id` int(11) NOT NULL,
  `pic_url` varchar(32) NOT NULL,
  PRIMARY KEY (`pic_id`),
  KEY `pic_type_id` (`pic_type_id`),
  CONSTRAINT `web_pic_ibfk_1` FOREIGN KEY (`pic_type_id`) REFERENCES `web_pic_type` (`pic_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_pic
-- ----------------------------
INSERT INTO `web_pic` VALUES ('1', '1', '23423424');
INSERT INTO `web_pic` VALUES ('2', '1', '3434534');

-- ----------------------------
-- Table structure for web_pic_type
-- ----------------------------
DROP TABLE IF EXISTS `web_pic_type`;
CREATE TABLE `web_pic_type` (
  `pic_type_id` int(11) NOT NULL,
  `pic_type_name` varchar(11) NOT NULL,
  PRIMARY KEY (`pic_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_pic_type
-- ----------------------------
INSERT INTO `web_pic_type` VALUES ('1', '右边轮播图');
INSERT INTO `web_pic_type` VALUES ('2', '内容轮播图');
INSERT INTO `web_pic_type` VALUES ('4', 'flash图');
