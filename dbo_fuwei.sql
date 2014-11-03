/*
MySQL Data Transfer
Source Host: localhost
Source Database: dbo_fuwei
Target Host: localhost
Target Database: dbo_fuwei
Date: 2014/11/4 1:28:22
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for orderstatus
-- ----------------------------
DROP TABLE IF EXISTS `orderstatus`;
CREATE TABLE `orderstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `descript` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `orderId` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_authority
-- ----------------------------
DROP TABLE IF EXISTS `tb_authority`;
CREATE TABLE `tb_authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `lcode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKPID323` (`pid`),
  CONSTRAINT `FKPID323` FOREIGN KEY (`pid`) REFERENCES `tb_authority` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_company
-- ----------------------------
DROP TABLE IF EXISTS `tb_company`;
CREATE TABLE `tb_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `companyNumber` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `help_code` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `shortname` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK38B0A3AC87AC0D3A` (`created_user`),
  CONSTRAINT `FK38B0A3AC87AC0D3A` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_factory
-- ----------------------------
DROP TABLE IF EXISTS `tb_factory`;
CREATE TABLE `tb_factory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `help_code` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_user` (`created_user`),
  CONSTRAINT `tb_factory_ibfk_1` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_gongxu
-- ----------------------------
DROP TABLE IF EXISTS `tb_gongxu`;
CREATE TABLE `tb_gongxu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4AB8624F87AC0D3A` (`created_user`),
  CONSTRAINT `FK4AB8624F87AC0D3A` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_headbankorder
-- ----------------------------
DROP TABLE IF EXISTS `tb_headbankorder`;
CREATE TABLE `tb_headbankorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  KEY `created_user` (`created_user`),
  CONSTRAINT `tb_headbankorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`),
  CONSTRAINT `tb_headbankorder_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_headbankorder_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_headbankorder_detail`;
CREATE TABLE `tb_headbankorder_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `headBankOrderId` int(11) NOT NULL,
  `color` varchar(64) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `yarn` varchar(64) DEFAULT NULL,
  `size` varchar(64) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkheadorderid` (`headBankOrderId`),
  CONSTRAINT `fkheadorderid` FOREIGN KEY (`headBankOrderId`) REFERENCES `tb_headbankorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_module
-- ----------------------------
DROP TABLE IF EXISTS `tb_module`;
CREATE TABLE `tb_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `decription` varchar(255) DEFAULT NULL,
  `inUse` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK54F11D5D87AC0D3A` (`created_user`),
  CONSTRAINT `FK54F11D5D87AC0D3A` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `salesmanId` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `delivery_at` datetime DEFAULT NULL,
  `orderNumber` varchar(64) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `stepId` int(11) DEFAULT NULL,
  `step_state` varchar(255) DEFAULT NULL,
  `cost` double NOT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `machine` varchar(255) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `productNumber` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `weight` double NOT NULL,
  `charge_user` int(11) DEFAULT NULL,
  `sampleId` int(11) NOT NULL,
  `price` double NOT NULL,
  `cproductN` varchar(255) DEFAULT NULL,
  `img_s` varchar(255) DEFAULT NULL,
  `img_ss` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `factoryId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK34232225` (`salesmanId`),
  KEY `FK93908CC387AC0` (`created_user`),
  KEY `companyId` (`companyId`),
  KEY `stepId` (`stepId`),
  KEY `factoryId` (`factoryId`),
  KEY `charge_user` (`charge_user`),
  KEY `sampleId` (`sampleId`),
  CONSTRAINT `tb_order_ibfk_3` FOREIGN KEY (`factoryId`) REFERENCES `tb_factory` (`id`),
  CONSTRAINT `tb_order_ibfk_4` FOREIGN KEY (`charge_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_order_ibfk_5` FOREIGN KEY (`sampleId`) REFERENCES `tb_sample` (`id`),
  CONSTRAINT `FK34232225` FOREIGN KEY (`salesmanId`) REFERENCES `tb_salesman` (`id`),
  CONSTRAINT `FK93908CC387AC0` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_order_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `tb_company` (`id`),
  CONSTRAINT `tb_order_ibfk_2` FOREIGN KEY (`stepId`) REFERENCES `tb_order_produce_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_detail`;
CREATE TABLE `tb_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cost` double NOT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `machine` varchar(255) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `productNumber` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `weight` double NOT NULL,
  `charge_user` int(11) DEFAULT NULL,
  `orderId` int(11) NOT NULL,
  `sampleId` int(11) NOT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `cproductN` varchar(255) DEFAULT NULL,
  `img_s` varchar(255) DEFAULT NULL,
  `img_ss` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `charge_user` (`charge_user`),
  KEY `sampleId` (`sampleId`),
  KEY `orderId` (`orderId`),
  CONSTRAINT `tb_order_detail_ibfk_1` FOREIGN KEY (`charge_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_order_detail_ibfk_2` FOREIGN KEY (`sampleId`) REFERENCES `tb_sample` (`id`),
  CONSTRAINT `tb_order_detail_ibfk_3` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_order_handle
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_handle`;
CREATE TABLE `tb_order_handle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  KEY `created_user` (`created_user`),
  CONSTRAINT `tb_order_handle_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_order_handle_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_order_produce_status
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_produce_status`;
CREATE TABLE `tb_order_produce_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  KEY `created_user` (`created_user`),
  CONSTRAINT `tb_order_produce_status_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_order_produce_status_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_production_notification
-- ----------------------------
DROP TABLE IF EXISTS `tb_production_notification`;
CREATE TABLE `tb_production_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderDetailId` int(11) DEFAULT NULL,
  `notificationNumber` varchar(64) DEFAULT NULL,
  `factoryId` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `details` blob,
  PRIMARY KEY (`id`),
  KEY `created_user` (`created_user`),
  KEY `orderDetailId` (`orderDetailId`),
  KEY `factoryId` (`factoryId`),
  CONSTRAINT `tb_production_notification_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_production_notification_ibfk_3` FOREIGN KEY (`orderDetailId`) REFERENCES `tb_order_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_production_notification_ibfk_4` FOREIGN KEY (`factoryId`) REFERENCES `tb_factory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_quote
-- ----------------------------
DROP TABLE IF EXISTS `tb_quote`;
CREATE TABLE `tb_quote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `quotePriceId` int(11) NOT NULL,
  `sampleId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKFAB6A56B87AC0D3A` (`created_user`),
  KEY `FKFAB6A56B88AC0D3A` (`quotePriceId`),
  KEY `FKFAB6A56B87AC0D4A` (`sampleId`),
  CONSTRAINT `FKFAB6A56B87AC0D3A` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `FKFAB6A56B87AC0D4A` FOREIGN KEY (`sampleId`) REFERENCES `tb_sample` (`id`),
  CONSTRAINT `FKFAB6A56B88AC0D3A` FOREIGN KEY (`quotePriceId`) REFERENCES `tb_quoteprice` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_quoteorder
-- ----------------------------
DROP TABLE IF EXISTS `tb_quoteorder`;
CREATE TABLE `tb_quoteorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `excelUrl` varchar(255) DEFAULT NULL,
  `quotationNumber` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `salesmanId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK93908CC387AC0D3A` (`created_user`),
  KEY `FK3423222` (`salesmanId`),
  CONSTRAINT `FK3423222` FOREIGN KEY (`salesmanId`) REFERENCES `tb_salesman` (`id`),
  CONSTRAINT `FK93908CC387AC0D3A` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_quoteorder_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_quoteorder_detail`;
CREATE TABLE `tb_quoteorder_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cost` double NOT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `machine` varchar(255) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `productNumber` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `weight` double NOT NULL,
  `charge_user` int(11) DEFAULT NULL,
  `quoteOrderId` int(11) NOT NULL,
  `sampleId` int(11) NOT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `cproductN` varchar(255) DEFAULT NULL,
  `img_s` varchar(255) DEFAULT NULL,
  `img_ss` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKSample2` (`sampleId`),
  KEY `quoteOrderId` (`quoteOrderId`),
  KEY `charge_user` (`charge_user`),
  CONSTRAINT `FKSample2` FOREIGN KEY (`sampleId`) REFERENCES `tb_sample` (`id`),
  CONSTRAINT `tb_quoteorder_detail_ibfk_4` FOREIGN KEY (`quoteOrderId`) REFERENCES `tb_quoteorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_quoteorder_detail_ibfk_5` FOREIGN KEY (`charge_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_quoteprice
-- ----------------------------
DROP TABLE IF EXISTS `tb_quoteprice`;
CREATE TABLE `tb_quoteprice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `salesmanId` int(11) NOT NULL,
  `sampleId` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `cproductN` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKFAB6A56B87AC0D4A` (`created_user`),
  KEY `FKS` (`sampleId`),
  CONSTRAINT `FKFAB6A56B87AC0D5A` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `FKS` FOREIGN KEY (`sampleId`) REFERENCES `tb_sample` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `decription` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKA4FDFFA787AC0D3A` (`created_user`),
  CONSTRAINT `FKA4FDFFA787AC0D3A` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_role_authority
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_authority`;
CREATE TABLE `tb_role_authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_user` int(11) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `authorityId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `authorityId` (`authorityId`),
  KEY `created_user` (`created_user`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `tb_role_authority_ibfk_1` FOREIGN KEY (`authorityId`) REFERENCES `tb_authority` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_role_authority_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_role_authority_ibfk_3` FOREIGN KEY (`roleId`) REFERENCES `tb_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1199 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_role_module
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_module`;
CREATE TABLE `tb_role_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_user` int(11) DEFAULT NULL,
  `moduleId` int(11) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKA5B50A049710D9E3` (`roleId`),
  KEY `FKA5B50A0487AC0D3A` (`created_user`),
  KEY `FKA5B50A04F98C994F` (`moduleId`),
  CONSTRAINT `FKA5B50A0487AC0D3A` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `FKA5B50A049710D9E3` FOREIGN KEY (`roleId`) REFERENCES `tb_role` (`id`),
  CONSTRAINT `FKA5B50A04F98C994F` FOREIGN KEY (`moduleId`) REFERENCES `tb_module` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_salesman
-- ----------------------------
DROP TABLE IF EXISTS `tb_salesman`;
CREATE TABLE `tb_salesman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `help_code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7497AF7F2FD17BF9` (`companyId`),
  KEY `FK7497AF7F87AC0D3A` (`created_user`),
  CONSTRAINT `FK7497AF7F2FD17BF9` FOREIGN KEY (`companyId`) REFERENCES `tb_company` (`id`),
  CONSTRAINT `FK7497AF7F87AC0D3A` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sample
-- ----------------------------
DROP TABLE IF EXISTS `tb_sample`;
CREATE TABLE `tb_sample` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cost` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `has_detail` bit(1) DEFAULT NULL,
  `help_code` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `machine` varchar(255) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `productNumber` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `weight` double NOT NULL,
  `charge_user` int(11) DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `img_s` varchar(255) DEFAULT NULL,
  `img_ss` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5E6CEC9B87AC0D3A` (`created_user`),
  KEY `FK5E6CEC9B4D2DE8EE` (`charge_user`),
  CONSTRAINT `FK5E6CEC9B4D2DE8EE` FOREIGN KEY (`charge_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `FK5E6CEC9B87AC0D3A` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `help_code` varchar(255) DEFAULT NULL,
  `inUse` bit(1) DEFAULT NULL,
  `locked` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `built_in` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `FKA4FF6AFC9710D9` (`roleId`),
  CONSTRAINT `FKA4FF6AFC9710D9E3` FOREIGN KEY (`roleId`) REFERENCES `tb_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Procedure structure for truncate
-- ----------------------------
DROP PROCEDURE IF EXISTS `truncate`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `truncate`()
TRUNCATE TABLE tb_quoteorder_detail;;
DELIMITER ;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `tb_authority` VALUES ('1', null, '权限管理', 'authority');
INSERT INTO `tb_authority` VALUES ('2', '1', '查看权限列表', 'authority/index');
INSERT INTO `tb_authority` VALUES ('3', '1', '修改用户权限', 'authority/edit');
INSERT INTO `tb_authority` VALUES ('4', null, '系统信息管理', 'systeminfo');
INSERT INTO `tb_authority` VALUES ('5', '4', '用户管理', 'user');
INSERT INTO `tb_authority` VALUES ('6', '5', '查看用户列表', 'user/index');
INSERT INTO `tb_authority` VALUES ('7', '5', '添加用户', 'user/add');
INSERT INTO `tb_authority` VALUES ('8', '5', '编辑用户', 'user/edit');
INSERT INTO `tb_authority` VALUES ('9', '5', '删除用户', 'user/delete');
INSERT INTO `tb_authority` VALUES ('10', '4', '公司管理', 'company');
INSERT INTO `tb_authority` VALUES ('11', '10', '查看公司列表', 'company/index');
INSERT INTO `tb_authority` VALUES ('12', '10', '添加公司', 'company/add');
INSERT INTO `tb_authority` VALUES ('13', '10', '编辑公司', 'company/edit');
INSERT INTO `tb_authority` VALUES ('14', '10', '删除公司', 'company/delete');
INSERT INTO `tb_authority` VALUES ('15', '4', '业务员管理', 'salesman');
INSERT INTO `tb_authority` VALUES ('16', '15', '查看业务员列表', 'salesman/index');
INSERT INTO `tb_authority` VALUES ('17', '15', '添加业务员', 'salesman/add');
INSERT INTO `tb_authority` VALUES ('18', '15', '编辑业务员', 'salesman/edit');
INSERT INTO `tb_authority` VALUES ('19', '15', '删除业务员', 'salesman/delete');
INSERT INTO `tb_authority` VALUES ('20', '4', '工序管理', 'gongxu');
INSERT INTO `tb_authority` VALUES ('21', '20', '查看工序列表', 'gongxu/index');
INSERT INTO `tb_authority` VALUES ('22', '20', '添加工序', 'gongxu/add');
INSERT INTO `tb_authority` VALUES ('23', '20', '编辑工序', 'gongxu/edit');
INSERT INTO `tb_authority` VALUES ('24', '20', '删除工序', 'gongxu/delete');
INSERT INTO `tb_authority` VALUES ('25', null, '样品管理', 'sample');
INSERT INTO `tb_authority` VALUES ('26', '25', '查看样品列表', 'sample/index');
INSERT INTO `tb_authority` VALUES ('27', '25', '未核价列表', 'sample/undetailedindex');
INSERT INTO `tb_authority` VALUES ('28', '25', '添加样品', 'sample/add');
INSERT INTO `tb_authority` VALUES ('29', '25', '编辑样品', 'sample/edit');
INSERT INTO `tb_authority` VALUES ('30', '25', '删除样品', 'sample/delete');
INSERT INTO `tb_authority` VALUES ('31', '25', '查看样品详情', 'sample/detail');
INSERT INTO `tb_authority` VALUES ('32', '25', '生成样品标签', 'sample/print_sign');
INSERT INTO `tb_authority` VALUES ('33', '25', '打印样品详情', 'sample/print_detail');
INSERT INTO `tb_authority` VALUES ('34', '25', '样品核价', 'sample/set_detail');
INSERT INTO `tb_authority` VALUES ('35', '25', '公司价格管理', 'quoteprice');
INSERT INTO `tb_authority` VALUES ('36', '35', '查看价格列表', 'quoteprice/index');
INSERT INTO `tb_authority` VALUES ('37', '35', '添加公司价格', 'quoteprice/add');
INSERT INTO `tb_authority` VALUES ('38', '35', '编辑公司价格', 'quoteprice/edit');
INSERT INTO `tb_authority` VALUES ('39', '35', '删除公司价格', 'quoteprice/delete');
INSERT INTO `tb_authority` VALUES ('40', '35', '打印价格详情', 'quoteprice/print');
INSERT INTO `tb_authority` VALUES ('41', '25', '报价管理', 'quote');
INSERT INTO `tb_authority` VALUES ('42', '41', '添加报价', 'quote/add');
INSERT INTO `tb_authority` VALUES ('43', '41', '删除报价', 'quote/delete');
INSERT INTO `tb_authority` VALUES ('44', '25', '报价单管理', 'quoteorder');
INSERT INTO `tb_authority` VALUES ('45', '44', '查看报价单列表', 'quoteorder/index');
INSERT INTO `tb_authority` VALUES ('46', '44', '生成报价单', 'quoteorder/add');
INSERT INTO `tb_authority` VALUES ('47', '44', '查看报价单详情', 'quoteorder/detail');
INSERT INTO `tb_authority` VALUES ('48', '41', '查看报价列表', 'quote/index');
INSERT INTO `tb_authority` VALUES ('49', '5', '注销用户', 'user/cancel');
INSERT INTO `tb_authority` VALUES ('50', '5', '启用用户', 'user/enable');
INSERT INTO `tb_authority` VALUES ('51', '31', '查看报价详情', 'sample/detail_detail');
INSERT INTO `tb_authority` VALUES ('52', null, '订单管理', 'order');
INSERT INTO `tb_authority` VALUES ('53', '52', '查看订单详情', 'order/detail');
INSERT INTO `tb_authority` VALUES ('54', '52', '查看订单列表', 'order/index');
INSERT INTO `tb_authority` VALUES ('55', '52', '添加订单', 'order/add');
INSERT INTO `tb_authority` VALUES ('56', '52', '编辑订单', 'order/edit');
INSERT INTO `tb_authority` VALUES ('57', '52', '删除订单', 'order/delete');
INSERT INTO `tb_authority` VALUES ('58', '52', '订单流程管理', 'order/step');
INSERT INTO `tb_authority` VALUES ('59', '58', '添加步骤', 'order/addstep');
INSERT INTO `tb_authority` VALUES ('60', '58', '编辑步骤', 'order/editstep');
INSERT INTO `tb_authority` VALUES ('61', '58', '删除步骤', 'order/deletestep');
INSERT INTO `tb_authority` VALUES ('62', '58', '查看步骤详情', 'order/detailstep');
INSERT INTO `tb_authority` VALUES ('63', '58', '执行订单步骤', 'order/exestep');
INSERT INTO `tb_authority` VALUES ('65', '4', '加工工厂管理', 'factory');
INSERT INTO `tb_authority` VALUES ('66', '65', '查看列表', 'factory/index');
INSERT INTO `tb_authority` VALUES ('67', '65', '添加工厂', 'factory/add');
INSERT INTO `tb_authority` VALUES ('68', '65', '编辑工厂', 'factory/edit');
INSERT INTO `tb_authority` VALUES ('69', '65', '删除工厂', 'factory/delete');
INSERT INTO `tb_authority` VALUES ('70', null, '生产系统', 'notification');
INSERT INTO `tb_authority` VALUES ('71', '70', '生产单列表', 'notification/index');
INSERT INTO `tb_authority` VALUES ('72', '70', '添加生产单', 'notification/add');
INSERT INTO `tb_authority` VALUES ('73', '70', '编辑生产单', 'notification/edit');
INSERT INTO `tb_authority` VALUES ('74', '70', '删除生产单', 'notification/delete');
INSERT INTO `tb_company` VALUES ('1', '公司地址', '杭州市', null, null, '2014-07-10 19:46:36', '公司', 'gs', '0', '公司', '2014-07-10 19:46:36', '1');
INSERT INTO `tb_company` VALUES ('2', '西湖区文一西路243号', '杭州市', null, null, '2014-07-13 20:22:16', '测试公司', 'csgs', '0', '公司2', '2014-07-13 20:22:16', '1');
INSERT INTO `tb_factory` VALUES ('1', '加工工厂', '杭州市桐庐县通过村', '2014-08-02 14:34:05', 'jggc', '2014-08-02 14:34:05', '1');
INSERT INTO `tb_factory` VALUES ('2', '恩恩2', '发放给哥哥哈哈', '2014-08-02 14:34:23', 'ee', '2014-08-02 14:34:27', '1');
INSERT INTO `tb_gongxu` VALUES ('1', '2014-07-07 17:18:04', '测试工序', '2014-07-12 22:34:52', '1');
INSERT INTO `tb_gongxu` VALUES ('2', '2014-07-07 17:22:01', '测试工序2', '2014-07-12 22:35:07', '1');
INSERT INTO `tb_gongxu` VALUES ('3', '2014-07-07 19:53:12', '测试工序3', '2014-07-12 22:35:16', '1');
INSERT INTO `tb_gongxu` VALUES ('4', '2014-07-08 21:01:53', '测试', '2014-07-08 21:01:53', '1');
INSERT INTO `tb_gongxu` VALUES ('5', '2014-07-24 18:18:39', 'c', '2014-07-24 18:18:39', '3');
INSERT INTO `tb_gongxu` VALUES ('6', '2014-07-24 18:18:44', 'c', '2014-07-24 18:18:44', '3');
INSERT INTO `tb_gongxu` VALUES ('8', '2014-07-24 18:18:52', 'v', '2014-07-24 18:18:52', '3');
INSERT INTO `tb_gongxu` VALUES ('9', '2014-07-24 18:18:55', 'vv', '2014-07-24 18:18:55', '3');
INSERT INTO `tb_gongxu` VALUES ('10', '2014-07-24 18:18:58', 'v', '2014-07-24 18:18:58', '3');
INSERT INTO `tb_gongxu` VALUES ('11', '2014-07-24 18:19:01', 'g', '2014-07-24 18:19:01', '3');
INSERT INTO `tb_gongxu` VALUES ('12', '2014-07-24 18:19:05', 'h', '2014-07-24 18:19:05', '3');
INSERT INTO `tb_quote` VALUES ('7', '2014-07-21 22:56:04', '2014-07-21 22:56:04', '1', '1', '2');
INSERT INTO `tb_quote` VALUES ('9', '2014-07-30 16:34:03', '2014-07-30 16:34:03', '1', '4', '7');
INSERT INTO `tb_quote` VALUES ('12', '2014-07-30 16:39:17', '2014-07-30 16:39:17', '1', '5', '7');
INSERT INTO `tb_quote` VALUES ('14', '2014-07-30 16:46:05', '2014-07-30 16:46:05', '1', '5', '7');
INSERT INTO `tb_quoteorder` VALUES ('1', '2014-07-21 22:56:54', 'resource.fuwei.com/excel/quote/1_报价单20140721225654.xls', 'FWA10001', '2014-07-21 22:56:54', '1', '1');
INSERT INTO `tb_quoteorder` VALUES ('2', '2014-07-22 12:48:43', 'resource.fuwei.com/excel/quote/2_报价单20140722124843.xls', 'FWA10002', '2014-07-22 12:48:43', '1', '1');
INSERT INTO `tb_quoteorder` VALUES ('3', '2014-07-30 16:35:04', 'resource.fuwei.com/excel/quote/3_报价单20140730163504.xls', 'FWA10003', '2014-07-30 16:35:04', '1', '1');
INSERT INTO `tb_quoteorder` VALUES ('4', '2014-07-30 16:36:00', 'resource.fuwei.com/excel/quote/4_报价单20140730163600.xls', 'FWA10004', '2014-07-30 16:36:00', '1', '1');
INSERT INTO `tb_quoteorder` VALUES ('5', '2014-07-30 16:36:46', 'resource.fuwei.com/excel/quote/5_报价单20140730163637.xls', 'FWA10005', '2014-07-30 16:36:46', '1', '4');
INSERT INTO `tb_quoteorder` VALUES ('6', '2014-07-30 16:40:17', 'resource.fuwei.com/excel/quote/6_报价单20140730164017.xls', 'FWA10006', '2014-07-30 16:40:17', '1', '1');
INSERT INTO `tb_quoteorder` VALUES ('7', '2014-07-30 16:46:20', 'resource.fuwei.com/excel/quote/7_报价单20140730164620.xls', 'FWA10007', '2014-07-30 16:46:20', '1', '1');
INSERT INTO `tb_quoteprice` VALUES ('1', '2014-07-21 22:56:01', '', '40', '1', '2', '2014-07-21 22:56:01', '1', 'AS1');
INSERT INTO `tb_quoteprice` VALUES ('2', '2014-07-21 22:56:11', '', '50', '1', '2', '2014-07-21 22:56:11', '1', 'AS4');
INSERT INTO `tb_quoteprice` VALUES ('3', '2014-07-22 12:16:19', '', '50', '1', '3', '2014-07-22 12:16:19', '1', 'S3F');
INSERT INTO `tb_quoteprice` VALUES ('4', '2014-07-30 16:33:56', '哈密瓜 - 测试公司- 价格备注', '26', '4', '7', '2014-07-30 16:33:56', '1', 'FG4');
INSERT INTO `tb_quoteprice` VALUES ('5', '2014-07-30 16:34:41', '哈密瓜--公司--价格备注', '27', '1', '7', '2014-07-30 16:34:41', '1', 'FG6');
INSERT INTO `tb_role` VALUES ('1', '2014-07-07 17:15:33', '系统管理员', 'admin', '2014-07-07 17:15:43', '1');
INSERT INTO `tb_role` VALUES ('2', '2014-07-23 21:16:59', '业务员', 'salesman', '2014-07-23 21:17:08', '1');
INSERT INTO `tb_role_authority` VALUES ('444', '1', '2', '4');
INSERT INTO `tb_role_authority` VALUES ('445', '1', '2', '5');
INSERT INTO `tb_role_authority` VALUES ('446', '1', '2', '6');
INSERT INTO `tb_role_authority` VALUES ('447', '1', '2', '10');
INSERT INTO `tb_role_authority` VALUES ('448', '1', '2', '11');
INSERT INTO `tb_role_authority` VALUES ('449', '1', '2', '12');
INSERT INTO `tb_role_authority` VALUES ('450', '1', '2', '13');
INSERT INTO `tb_role_authority` VALUES ('451', '1', '2', '14');
INSERT INTO `tb_role_authority` VALUES ('452', '1', '2', '15');
INSERT INTO `tb_role_authority` VALUES ('453', '1', '2', '16');
INSERT INTO `tb_role_authority` VALUES ('454', '1', '2', '17');
INSERT INTO `tb_role_authority` VALUES ('455', '1', '2', '18');
INSERT INTO `tb_role_authority` VALUES ('456', '1', '2', '19');
INSERT INTO `tb_role_authority` VALUES ('457', '1', '2', '20');
INSERT INTO `tb_role_authority` VALUES ('458', '1', '2', '21');
INSERT INTO `tb_role_authority` VALUES ('459', '1', '2', '22');
INSERT INTO `tb_role_authority` VALUES ('460', '1', '2', '23');
INSERT INTO `tb_role_authority` VALUES ('461', '1', '2', '24');
INSERT INTO `tb_role_authority` VALUES ('462', '1', '2', '25');
INSERT INTO `tb_role_authority` VALUES ('463', '1', '2', '26');
INSERT INTO `tb_role_authority` VALUES ('464', '1', '2', '27');
INSERT INTO `tb_role_authority` VALUES ('465', '1', '2', '28');
INSERT INTO `tb_role_authority` VALUES ('466', '1', '2', '31');
INSERT INTO `tb_role_authority` VALUES ('467', '1', '2', '41');
INSERT INTO `tb_role_authority` VALUES ('468', '1', '2', '48');
INSERT INTO `tb_role_authority` VALUES ('1126', '1', '1', '1');
INSERT INTO `tb_role_authority` VALUES ('1127', '1', '1', '2');
INSERT INTO `tb_role_authority` VALUES ('1128', '1', '1', '3');
INSERT INTO `tb_role_authority` VALUES ('1129', '1', '1', '4');
INSERT INTO `tb_role_authority` VALUES ('1130', '1', '1', '5');
INSERT INTO `tb_role_authority` VALUES ('1131', '1', '1', '6');
INSERT INTO `tb_role_authority` VALUES ('1132', '1', '1', '7');
INSERT INTO `tb_role_authority` VALUES ('1133', '1', '1', '8');
INSERT INTO `tb_role_authority` VALUES ('1134', '1', '1', '9');
INSERT INTO `tb_role_authority` VALUES ('1135', '1', '1', '49');
INSERT INTO `tb_role_authority` VALUES ('1136', '1', '1', '50');
INSERT INTO `tb_role_authority` VALUES ('1137', '1', '1', '10');
INSERT INTO `tb_role_authority` VALUES ('1138', '1', '1', '11');
INSERT INTO `tb_role_authority` VALUES ('1139', '1', '1', '12');
INSERT INTO `tb_role_authority` VALUES ('1140', '1', '1', '13');
INSERT INTO `tb_role_authority` VALUES ('1141', '1', '1', '14');
INSERT INTO `tb_role_authority` VALUES ('1142', '1', '1', '15');
INSERT INTO `tb_role_authority` VALUES ('1143', '1', '1', '16');
INSERT INTO `tb_role_authority` VALUES ('1144', '1', '1', '17');
INSERT INTO `tb_role_authority` VALUES ('1145', '1', '1', '18');
INSERT INTO `tb_role_authority` VALUES ('1146', '1', '1', '19');
INSERT INTO `tb_role_authority` VALUES ('1147', '1', '1', '20');
INSERT INTO `tb_role_authority` VALUES ('1148', '1', '1', '21');
INSERT INTO `tb_role_authority` VALUES ('1149', '1', '1', '22');
INSERT INTO `tb_role_authority` VALUES ('1150', '1', '1', '23');
INSERT INTO `tb_role_authority` VALUES ('1151', '1', '1', '24');
INSERT INTO `tb_role_authority` VALUES ('1152', '1', '1', '65');
INSERT INTO `tb_role_authority` VALUES ('1153', '1', '1', '66');
INSERT INTO `tb_role_authority` VALUES ('1154', '1', '1', '67');
INSERT INTO `tb_role_authority` VALUES ('1155', '1', '1', '68');
INSERT INTO `tb_role_authority` VALUES ('1156', '1', '1', '69');
INSERT INTO `tb_role_authority` VALUES ('1157', '1', '1', '25');
INSERT INTO `tb_role_authority` VALUES ('1158', '1', '1', '26');
INSERT INTO `tb_role_authority` VALUES ('1159', '1', '1', '27');
INSERT INTO `tb_role_authority` VALUES ('1160', '1', '1', '28');
INSERT INTO `tb_role_authority` VALUES ('1161', '1', '1', '29');
INSERT INTO `tb_role_authority` VALUES ('1162', '1', '1', '30');
INSERT INTO `tb_role_authority` VALUES ('1163', '1', '1', '31');
INSERT INTO `tb_role_authority` VALUES ('1164', '1', '1', '51');
INSERT INTO `tb_role_authority` VALUES ('1165', '1', '1', '32');
INSERT INTO `tb_role_authority` VALUES ('1166', '1', '1', '33');
INSERT INTO `tb_role_authority` VALUES ('1167', '1', '1', '34');
INSERT INTO `tb_role_authority` VALUES ('1168', '1', '1', '35');
INSERT INTO `tb_role_authority` VALUES ('1169', '1', '1', '36');
INSERT INTO `tb_role_authority` VALUES ('1170', '1', '1', '37');
INSERT INTO `tb_role_authority` VALUES ('1171', '1', '1', '38');
INSERT INTO `tb_role_authority` VALUES ('1172', '1', '1', '39');
INSERT INTO `tb_role_authority` VALUES ('1173', '1', '1', '40');
INSERT INTO `tb_role_authority` VALUES ('1174', '1', '1', '41');
INSERT INTO `tb_role_authority` VALUES ('1175', '1', '1', '42');
INSERT INTO `tb_role_authority` VALUES ('1176', '1', '1', '43');
INSERT INTO `tb_role_authority` VALUES ('1177', '1', '1', '48');
INSERT INTO `tb_role_authority` VALUES ('1178', '1', '1', '44');
INSERT INTO `tb_role_authority` VALUES ('1179', '1', '1', '45');
INSERT INTO `tb_role_authority` VALUES ('1180', '1', '1', '46');
INSERT INTO `tb_role_authority` VALUES ('1181', '1', '1', '47');
INSERT INTO `tb_role_authority` VALUES ('1182', '1', '1', '52');
INSERT INTO `tb_role_authority` VALUES ('1183', '1', '1', '53');
INSERT INTO `tb_role_authority` VALUES ('1184', '1', '1', '54');
INSERT INTO `tb_role_authority` VALUES ('1185', '1', '1', '55');
INSERT INTO `tb_role_authority` VALUES ('1186', '1', '1', '56');
INSERT INTO `tb_role_authority` VALUES ('1187', '1', '1', '57');
INSERT INTO `tb_role_authority` VALUES ('1188', '1', '1', '58');
INSERT INTO `tb_role_authority` VALUES ('1189', '1', '1', '59');
INSERT INTO `tb_role_authority` VALUES ('1190', '1', '1', '60');
INSERT INTO `tb_role_authority` VALUES ('1191', '1', '1', '61');
INSERT INTO `tb_role_authority` VALUES ('1192', '1', '1', '62');
INSERT INTO `tb_role_authority` VALUES ('1193', '1', '1', '63');
INSERT INTO `tb_role_authority` VALUES ('1194', '1', '1', '70');
INSERT INTO `tb_role_authority` VALUES ('1195', '1', '1', '71');
INSERT INTO `tb_role_authority` VALUES ('1196', '1', '1', '72');
INSERT INTO `tb_role_authority` VALUES ('1197', '1', '1', '73');
INSERT INTO `tb_role_authority` VALUES ('1198', '1', '1', '74');
INSERT INTO `tb_salesman` VALUES ('1', '2014-07-10 19:46:49', 'ywy', '业务员', '212455', '2014-07-10 19:46:49', '1', '1');
INSERT INTO `tb_salesman` VALUES ('4', '2014-07-25 16:22:37', 'csywy', '测试业务员1', '13455555', '2014-07-25 16:22:37', '2', '1');
INSERT INTO `tb_sample` VALUES ('2', '2.576', '2014-07-21 22:38:38', '100*1.1*12*10÷ 1000=13.2+10=23.2\r\n1.716\r\n测试工序:6.000\r\n____________________________\r\n6+1.716\r\n=7.716*1\r\n=7.716+23.2\r\n=30.916÷12\r\n=2.576*1.3\r\n=3.349\r\n', '', 'cs', 'resource.fuwei.com/images/sample/140595351558420140716_230658.jpg', '机织', '材料', '', '测试', 'FWA30002', '尺寸', '2014-07-21 22:53:03', '100', '2', '1', 'resource.fuwei.com/images/sample/s/140595351558420140716_230658.png', 'resource.fuwei.com/images/sample/ss/140595351558420140716_230658.png');
INSERT INTO `tb_sample` VALUES ('3', '0', '2014-07-22 12:09:01', '55*1.1*12*10÷ 1000=7.26+10=17.26\r\n0.944\r\n测试工序:6.000\r\n测试工序2:8.000\r\n____________________________\r\n14+0.944\r\n=14.944*1.3\r\n=19.427+17.26\r\n=36.687÷12\r\n=3.057*1.3\r\n=3.974\r\n', '', 'csyp', 'resource.fuwei.com/images/sample/1406002140620QQ图片20140717133813.jpg', '机织', '材料', '', '测试样品', 'FWA30003', '尺寸', '2014-07-29 11:35:00', '55', '1', '1', 'resource.fuwei.com/images/sample/s/1406002140620QQ图片20140717133813.png', 'resource.fuwei.com/images/sample/ss/1406002140620QQ图片20140717133813.png');
INSERT INTO `tb_sample` VALUES ('4', '0', '2014-07-24 14:20:16', null, '', 'csyp', 'resource.fuwei.com/images/sample/1406182815485QQ图片20140717133813.jpg', '机织', '材料', '', '测试样品', 'FWA30004', '尺寸', '2014-07-24 14:20:16', '20', '1', '1', 'resource.fuwei.com/images/sample/s/1406182815485QQ图片20140717133813.png', 'resource.fuwei.com/images/sample/ss/1406182815485QQ图片20140717133813.png');
INSERT INTO `tb_sample` VALUES ('5', '0', '2014-07-24 16:38:10', null, '', '', 'resource.fuwei.com/images/sample/1406191089923QQ图片20140521150608.jpg', 'fd', 'ccc', '', 'cc', 'FWA30005', 'vc', '2014-07-24 16:38:10', '54', '2', '3', 'resource.fuwei.com/images/sample/s/1406191089923QQ图片20140521150608.png', 'resource.fuwei.com/images/sample/ss/1406191089923QQ图片20140521150608.png');
INSERT INTO `tb_sample` VALUES ('6', '0', '2014-07-25 16:06:53', null, '', '', 'resource.fuwei.com/images/sample/1406275612479QQ图片20140521150608.jpg', 'bf', 'ff', '', 'hh', 'FWA30006', 'gfb', '2014-07-25 16:06:53', '5', '2', '1', 'resource.fuwei.com/images/sample/s/1406275612479QQ图片20140521150608.png', 'resource.fuwei.com/images/sample/ss/1406275612479QQ图片20140521150608.png');
INSERT INTO `tb_sample` VALUES ('7', '5.383', '2014-07-30 16:28:34', '100*1.4*12*30÷ 1000=50.4+4=54.4\r\n\r\n测试工序:6.000\r\n____________________________\r\n6+0\r\n=6*1.7\r\n=10.2+54.4\r\n=64.6÷12\r\n=5.383*1.4\r\n=7.536\r\n', '', 'hmg', 'resource.fuwei.com/images/sample/140670891273420140729125945848.jpg', '未知', '哈密瓜', '哈密瓜很甜', '哈密瓜', 'FWA30007', '未知', '2014-07-30 16:28:34', '100', '1', '1', 'resource.fuwei.com/images/sample/s/140670891273420140729125945848.png', 'resource.fuwei.com/images/sample/ss/140670891273420140729125945848.png');
INSERT INTO `tb_user` VALUES ('1', null, '6@qq.com', 'yf', '', '', '余芬', '1', '123', '143333', '2014-07-21 11:46:25', 'yf', '1', '');
INSERT INTO `tb_user` VALUES ('2', '2014-07-10 20:07:03', '345@qq.com', 'yf', '', '', '余芬2', '123456', '12335', '124577', '2014-07-10 20:07:03', 'yufen', '1', '');
INSERT INTO `tb_user` VALUES ('3', '2014-07-24 14:52:24', '638724u2@qq.com', 'hp', '', '', '胡盼', '123456', '638724u2', '1504332', '2014-07-24 14:52:24', 'hp', '2', '');
