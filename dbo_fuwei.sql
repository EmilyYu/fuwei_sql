/*
MySQL Data Transfer
Source Host: localhost
Source Database: dbo_fuwei
Target Host: localhost
Target Database: dbo_fuwei
Date: 2015/4/4 2:06:16
*/

SET FOREIGN_KEY_CHECKS=0;
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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_carfixrecordorder
-- ----------------------------
DROP TABLE IF EXISTS `tb_carfixrecordorder`;
CREATE TABLE `tb_carfixrecordorder` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  KEY `created_user` (`created_user`),
  CONSTRAINT `tb_carfixrecordorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`),
  CONSTRAINT `tb_carfixrecordorder_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_checkrecordorder
-- ----------------------------
DROP TABLE IF EXISTS `tb_checkrecordorder`;
CREATE TABLE `tb_checkrecordorder` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  CONSTRAINT `tb_checkrecordorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_coloringorder
-- ----------------------------
DROP TABLE IF EXISTS `tb_coloringorder`;
CREATE TABLE `tb_coloringorder` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `detail_json` text,
  `factoryId` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `materialId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `productNumber` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `sampleId` int(11) DEFAULT NULL,
  `orderNumber` varchar(64) DEFAULT NULL,
  `img_s` varchar(255) DEFAULT NULL,
  `img_ss` varchar(255) DEFAULT NULL,
  `charge_user` int(11) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  KEY `created_user` (`created_user`),
  KEY `factoryId` (`factoryId`),
  KEY `tb_coloringorder_ibfk_4` (`sampleId`),
  KEY `tb_coloringorder_ibfk_5` (`companyId`),
  KEY `tb_coloringorder_ibfk_6` (`charge_user`),
  KEY `customerId` (`customerId`),
  KEY `materialId` (`materialId`),
  CONSTRAINT `tb_coloringorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`),
  CONSTRAINT `tb_coloringorder_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_coloringorder_ibfk_3` FOREIGN KEY (`factoryId`) REFERENCES `tb_factory` (`id`),
  CONSTRAINT `tb_coloringorder_ibfk_4` FOREIGN KEY (`sampleId`) REFERENCES `tb_sample` (`id`),
  CONSTRAINT `tb_coloringorder_ibfk_5` FOREIGN KEY (`companyId`) REFERENCES `tb_company` (`id`),
  CONSTRAINT `tb_coloringorder_ibfk_6` FOREIGN KEY (`charge_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_coloringorder_ibfk_7` FOREIGN KEY (`customerId`) REFERENCES `tb_customer` (`id`),
  CONSTRAINT `tb_coloringorder_ibfk_8` FOREIGN KEY (`materialId`) REFERENCES `tb_material` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_coloringprocessorder
-- ----------------------------
DROP TABLE IF EXISTS `tb_coloringprocessorder`;
CREATE TABLE `tb_coloringprocessorder` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  CONSTRAINT `tb_coloringprocessorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

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
-- Table structure for tb_customer
-- ----------------------------
DROP TABLE IF EXISTS `tb_customer`;
CREATE TABLE `tb_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_user` (`created_user`),
  CONSTRAINT `tb_customer_ibfk_1` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_user` (`created_user`),
  CONSTRAINT `tb_factory_ibfk_1` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_finalstoreorder
-- ----------------------------
DROP TABLE IF EXISTS `tb_finalstoreorder`;
CREATE TABLE `tb_finalstoreorder` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  CONSTRAINT `tb_finalstoreorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_fuliaopurchaseorder
-- ----------------------------
DROP TABLE IF EXISTS `tb_fuliaopurchaseorder`;
CREATE TABLE `tb_fuliaopurchaseorder` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `detail_json` text,
  `factoryId` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `materialId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `productNumber` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `sampleId` int(11) DEFAULT NULL,
  `orderNumber` varchar(64) DEFAULT NULL,
  `img_s` varchar(255) DEFAULT NULL,
  `img_ss` varchar(255) DEFAULT NULL,
  `charge_user` int(11) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  KEY `created_user` (`created_user`),
  KEY `factoryId` (`factoryId`),
  KEY `tb_fuliaopurchaseorder_ibfk_4` (`sampleId`),
  KEY `tb_fuliaopurchaseorder_ibfk_5` (`companyId`),
  KEY `tb_fuliaopurchaseorder_ibfk_6` (`charge_user`),
  KEY `tb_fuliaopurchaseorder_ibfk_8` (`materialId`),
  KEY `tb_fuliaopurchaseorder_ibfk_7` (`customerId`),
  CONSTRAINT `tb_fuliaopurchaseorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`),
  CONSTRAINT `tb_fuliaopurchaseorder_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_fuliaopurchaseorder_ibfk_3` FOREIGN KEY (`factoryId`) REFERENCES `tb_factory` (`id`),
  CONSTRAINT `tb_fuliaopurchaseorder_ibfk_4` FOREIGN KEY (`sampleId`) REFERENCES `tb_sample` (`id`),
  CONSTRAINT `tb_fuliaopurchaseorder_ibfk_5` FOREIGN KEY (`companyId`) REFERENCES `tb_company` (`id`),
  CONSTRAINT `tb_fuliaopurchaseorder_ibfk_6` FOREIGN KEY (`charge_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_fuliaopurchaseorder_ibfk_7` FOREIGN KEY (`customerId`) REFERENCES `tb_customer` (`id`),
  CONSTRAINT `tb_fuliaopurchaseorder_ibfk_8` FOREIGN KEY (`materialId`) REFERENCES `tb_material` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_halfcheckrecordorder
-- ----------------------------
DROP TABLE IF EXISTS `tb_halfcheckrecordorder`;
CREATE TABLE `tb_halfcheckrecordorder` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `detail_2_json` text,
  `status` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  KEY `created_user` (`created_user`),
  CONSTRAINT `tb_halfcheckrecordorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`),
  CONSTRAINT `tb_halfcheckrecordorder_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

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
  `status` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  KEY `created_user` (`created_user`),
  CONSTRAINT `tb_headbankorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`),
  CONSTRAINT `tb_headbankorder_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ironingrecordorder
-- ----------------------------
DROP TABLE IF EXISTS `tb_ironingrecordorder`;
CREATE TABLE `tb_ironingrecordorder` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  KEY `created_user` (`created_user`),
  CONSTRAINT `tb_ironingrecordorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`),
  CONSTRAINT `tb_ironingrecordorder_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_material
-- ----------------------------
DROP TABLE IF EXISTS `tb_material`;
CREATE TABLE `tb_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_user` (`created_user`),
  CONSTRAINT `tb_material_ibfk_1` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_materialpurchaseorder
-- ----------------------------
DROP TABLE IF EXISTS `tb_materialpurchaseorder`;
CREATE TABLE `tb_materialpurchaseorder` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `detail_json` text,
  `purchase_at` datetime DEFAULT NULL,
  `factoryId` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `materialId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `productNumber` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `sampleId` int(11) DEFAULT NULL,
  `orderNumber` varchar(64) DEFAULT NULL,
  `img_s` varchar(255) DEFAULT NULL,
  `img_ss` varchar(255) DEFAULT NULL,
  `charge_user` int(11) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  KEY `created_user` (`created_user`),
  KEY `factoryId` (`factoryId`),
  KEY `sampleId` (`sampleId`),
  KEY `companyId` (`companyId`),
  KEY `tb_materialpurchaseorder_ibfk_6` (`charge_user`),
  KEY `tb_materialpurchaseorder_ibfk_8` (`materialId`),
  KEY `tb_materialpurchaseorder_ibfk_7` (`customerId`),
  CONSTRAINT `tb_materialpurchaseorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`),
  CONSTRAINT `tb_materialpurchaseorder_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_materialpurchaseorder_ibfk_3` FOREIGN KEY (`factoryId`) REFERENCES `tb_factory` (`id`),
  CONSTRAINT `tb_materialpurchaseorder_ibfk_4` FOREIGN KEY (`sampleId`) REFERENCES `tb_sample` (`id`),
  CONSTRAINT `tb_materialpurchaseorder_ibfk_5` FOREIGN KEY (`companyId`) REFERENCES `tb_company` (`id`),
  CONSTRAINT `tb_materialpurchaseorder_ibfk_6` FOREIGN KEY (`charge_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_materialpurchaseorder_ibfk_7` FOREIGN KEY (`customerId`) REFERENCES `tb_customer` (`id`),
  CONSTRAINT `tb_materialpurchaseorder_ibfk_8` FOREIGN KEY (`materialId`) REFERENCES `tb_material` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

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
  `materialId` int(11) DEFAULT NULL,
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
  `detail_json` text,
  `in_use` bit(1) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK34232225` (`salesmanId`),
  KEY `FK93908CC387AC0` (`created_user`),
  KEY `companyId` (`companyId`),
  KEY `stepId` (`stepId`),
  KEY `charge_user` (`charge_user`),
  KEY `sampleId` (`sampleId`),
  KEY `customerId` (`customerId`),
  KEY `materialId` (`materialId`),
  CONSTRAINT `FK34232225` FOREIGN KEY (`salesmanId`) REFERENCES `tb_salesman` (`id`),
  CONSTRAINT `FK93908CC387AC0` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_order_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `tb_company` (`id`),
  CONSTRAINT `tb_order_ibfk_2` FOREIGN KEY (`stepId`) REFERENCES `tb_order_produce_status` (`id`),
  CONSTRAINT `tb_order_ibfk_4` FOREIGN KEY (`charge_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_order_ibfk_5` FOREIGN KEY (`sampleId`) REFERENCES `tb_sample` (`id`),
  CONSTRAINT `tb_order_ibfk_6` FOREIGN KEY (`customerId`) REFERENCES `tb_customer` (`id`),
  CONSTRAINT `tb_order_ibfk_7` FOREIGN KEY (`materialId`) REFERENCES `tb_material` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_planorder
-- ----------------------------
DROP TABLE IF EXISTS `tb_planorder`;
CREATE TABLE `tb_planorder` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `detail_json` text,
  `status` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  KEY `created_user` (`created_user`),
  CONSTRAINT `tb_planorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`),
  CONSTRAINT `tb_planorder_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_producingorder
-- ----------------------------
DROP TABLE IF EXISTS `tb_producingorder`;
CREATE TABLE `tb_producingorder` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `detail_json` text,
  `detail_2_json` text,
  `factoryId` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  KEY `created_user` (`created_user`),
  KEY `factoryId` (`factoryId`),
  CONSTRAINT `tb_producingorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`),
  CONSTRAINT `tb_producingorder_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_producingorder_ibfk_4` FOREIGN KEY (`factoryId`) REFERENCES `tb_factory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_productionscheduleorder
-- ----------------------------
DROP TABLE IF EXISTS `tb_productionscheduleorder`;
CREATE TABLE `tb_productionscheduleorder` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_productionscheduleorder_ibfk_1` (`orderId`),
  CONSTRAINT `tb_productionscheduleorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`)
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `built_in` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKA4FDFFA787AC0D3A` (`created_user`),
  CONSTRAINT `FKA4FDFFA787AC0D3A` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=3287 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_sample
-- ----------------------------
DROP TABLE IF EXISTS `tb_sample`;
CREATE TABLE `tb_sample` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cost` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `detail` text,
  `has_detail` bit(1) DEFAULT NULL,
  `help_code` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `materialId` int(11) DEFAULT NULL,
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
  `factoryId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5E6CEC9B87AC0D3A` (`created_user`),
  KEY `FK5E6CEC9B4D2DE8EE` (`charge_user`),
  KEY `factoryId` (`factoryId`),
  KEY `materialId` (`materialId`),
  CONSTRAINT `FK5E6CEC9B4D2DE8EE` FOREIGN KEY (`charge_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `FK5E6CEC9B87AC0D3A` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_sample_ibfk_1` FOREIGN KEY (`factoryId`) REFERENCES `tb_factory` (`id`),
  CONSTRAINT `tb_sample_ibfk_2` FOREIGN KEY (`materialId`) REFERENCES `tb_material` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_shoprecordorder
-- ----------------------------
DROP TABLE IF EXISTS `tb_shoprecordorder`;
CREATE TABLE `tb_shoprecordorder` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  CONSTRAINT `tb_shoprecordorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_storeorder
-- ----------------------------
DROP TABLE IF EXISTS `tb_storeorder`;
CREATE TABLE `tb_storeorder` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `detail_json` text,
  `detail_2_json` text,
  `status` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  KEY `created_user` (`created_user`),
  CONSTRAINT `tb_storeorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`),
  CONSTRAINT `tb_storeorder_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

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
INSERT INTO `tb_authority` VALUES ('25', null, '样品系统', 'sample');
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
INSERT INTO `tb_authority` VALUES ('52', null, '订单系统', 'order');
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
INSERT INTO `tb_authority` VALUES ('75', '52', '表格', 'ordergrids');
INSERT INTO `tb_authority` VALUES ('76', '75', '质量记录单', 'order/headbank');
INSERT INTO `tb_authority` VALUES ('77', '75', '生产单', 'order/producing');
INSERT INTO `tb_authority` VALUES ('78', '75', '计划单', 'order/plan');
INSERT INTO `tb_authority` VALUES ('79', '75', '原材料仓库', 'order/store');
INSERT INTO `tb_authority` VALUES ('80', '75', '半检记录单', 'order/halfcheckrecord');
INSERT INTO `tb_authority` VALUES ('81', '75', '原材料采购单', 'order/materialpurchase');
INSERT INTO `tb_authority` VALUES ('82', '75', '染色单', 'order/coloring');
INSERT INTO `tb_authority` VALUES ('83', '75', '抽检记录单', 'order/checkrecord');
INSERT INTO `tb_authority` VALUES ('84', '75', '辅料采购', 'order/fuliaopurchase');
INSERT INTO `tb_authority` VALUES ('85', '75', '车缝记录单', 'order/carfixrecord');
INSERT INTO `tb_authority` VALUES ('86', '75', '整烫记录', 'order/ironingrecord');
INSERT INTO `tb_authority` VALUES ('87', '52', '取消订单', 'order/cancel');
INSERT INTO `tb_authority` VALUES ('88', null, '材料系统', 'materialsys');
INSERT INTO `tb_authority` VALUES ('94', null, '报表中心', 'report');
INSERT INTO `tb_authority` VALUES ('95', '94', '材料库存报表', 'report/material');
INSERT INTO `tb_authority` VALUES ('96', '94', '材料采购报表', 'report/material_purchase');
INSERT INTO `tb_authority` VALUES ('97', '94', '财务报表', 'report/financial');
INSERT INTO `tb_authority` VALUES ('102', '4', '材料管理', 'material');
INSERT INTO `tb_authority` VALUES ('103', '102', '查看材料列表', 'material/index');
INSERT INTO `tb_authority` VALUES ('104', '102', '添加材料', 'material/add');
INSERT INTO `tb_authority` VALUES ('105', '102', '编辑材料', 'material/edit');
INSERT INTO `tb_authority` VALUES ('106', '102', '删除材料', 'material/delete');
INSERT INTO `tb_authority` VALUES ('107', '88', '原材料采购单', 'material_purchase_order');
INSERT INTO `tb_authority` VALUES ('108', '107', '新增', 'material_purchase_order/add');
INSERT INTO `tb_authority` VALUES ('109', '107', '编辑', 'material_purchase_order/edit');
INSERT INTO `tb_authority` VALUES ('110', '107', '删除', 'material_purchase_order/delete');
INSERT INTO `tb_authority` VALUES ('111', '107', '查看列表', 'material_purchase_order/index');
INSERT INTO `tb_authority` VALUES ('112', '88', '辅料采购单', 'fuliao_purchase_order');
INSERT INTO `tb_authority` VALUES ('113', '112', '新增', 'fuliao_purchase_order/add');
INSERT INTO `tb_authority` VALUES ('114', '112', '编辑', 'fuliao_purchase_order/edit');
INSERT INTO `tb_authority` VALUES ('115', '112', '删除', 'fuliao_purchase_order/delete');
INSERT INTO `tb_authority` VALUES ('116', '112', '查看列表', 'fuliao_purchase_order/index');
INSERT INTO `tb_authority` VALUES ('117', '88', '染色单', 'coloring_order');
INSERT INTO `tb_authority` VALUES ('118', '117', '新增', 'coloring_order/add');
INSERT INTO `tb_authority` VALUES ('119', '117', '编辑', 'coloring_order/edit');
INSERT INTO `tb_authority` VALUES ('120', '117', '删除', 'coloring_order/delete');
INSERT INTO `tb_authority` VALUES ('121', '117', '查看列表', 'coloring_order/index');
INSERT INTO `tb_authority` VALUES ('122', '117', '查看单据详情', 'coloring_order/detail');
INSERT INTO `tb_authority` VALUES ('123', '112', '查看单据详情', 'fuliao_purchase_order/detail');
INSERT INTO `tb_authority` VALUES ('124', '107', '查看单据详情', 'material_purchase_order/detail');
INSERT INTO `tb_authority` VALUES ('125', '4', '角色管理', 'role');
INSERT INTO `tb_authority` VALUES ('126', '125', '添加角色', 'role/add');
INSERT INTO `tb_authority` VALUES ('127', '125', '编辑角色', 'role/edit');
INSERT INTO `tb_authority` VALUES ('128', '125', '删除角色', 'role/delete');
INSERT INTO `tb_authority` VALUES ('129', '4', '客户管理', 'customer');
INSERT INTO `tb_authority` VALUES ('130', '129', '新增', 'customer/add');
INSERT INTO `tb_authority` VALUES ('131', '129', '编辑', 'customer/edit');
INSERT INTO `tb_authority` VALUES ('132', '129', '删除', 'customer/delete');
INSERT INTO `tb_authority` VALUES ('133', '129', '查看列表', 'customer/index');
INSERT INTO `tb_authority` VALUES ('134', '77', '删除生产单', 'order/producing/delete');
INSERT INTO `tb_carfixrecordorder` VALUES ('1', '1', '2015-03-31 21:48:39', '2015-03-31 21:48:39', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('2', '2', '2015-04-03 21:46:02', '2015-04-03 21:46:02', '6', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('1', '1', '2015-03-31 21:48:39', '2015-03-31 21:48:39', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('2', '2', '2015-04-03 21:46:02', '2015-04-03 21:46:02', '6', '0', '新建');
INSERT INTO `tb_coloringorder` VALUES ('1', '1', '2015-04-01 21:43:41', '2015-04-03 19:04:21', '6', '[{\"color\":\"白色\",\"material\":1,\"quantity\":190,\"standardyarn\":\"\"},{\"color\":\"黑色\",\"material\":1,\"quantity\":990,\"standardyarn\":\"\"}]', '2', '0', '新建', '1', 'resource.fuwei.com/images/sample/1427808371841QQ图片20150331211900.jpg', '1', '全晴格子披肩', 'FWA30001', '126*126 + 10*2', '0', '1', 'FWA20001', 'resource.fuwei.com/images/sample/s/1427808371841QQ图片20150331211900.png', 'resource.fuwei.com/images/sample/ss/1427808371841QQ图片20150331211900.png', '8', '1', null);
INSERT INTO `tb_coloringorder` VALUES ('2', null, '2015-04-02 22:03:58', '2015-04-02 22:10:43', '6', '[{\"color\":\"baise\",\"material\":1,\"quantity\":1980.9,\"standardyarn\":\"\"}]', '2', '0', '新建', '2', null, null, 'pinming', '7866g', null, '0', null, null, null, null, '6', null, null);
INSERT INTO `tb_coloringorder` VALUES ('3', '1', '2015-04-02 22:39:20', '2015-04-03 19:04:00', '6', '[{\"color\":\"baise\",\"material\":1,\"quantity\":1233.5,\"standardyarn\":\"21\"}]', '2', '0', '新建', '1', 'resource.fuwei.com/images/sample/1427808371841QQ图片20150331211900.jpg', '1', '全晴格子披肩', 'FWA30001', '126*126 + 10*2', '0', '1', 'FWA20001', 'resource.fuwei.com/images/sample/s/1427808371841QQ图片20150331211900.png', 'resource.fuwei.com/images/sample/ss/1427808371841QQ图片20150331211900.png', '8', '1', null);
INSERT INTO `tb_coloringprocessorder` VALUES ('1', '1', '2015-03-31 21:48:39', '2015-03-31 21:48:39', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('2', '2', '2015-04-03 21:46:02', '2015-04-03 21:46:02', '6', '0', '新建');
INSERT INTO `tb_company` VALUES ('1', '拱墅区湖州街18号', '杭州', null, null, '2015-03-31 21:45:42', '杭州翔天实业有限公司', 'hzxtsyyxgs', '0', '翔天', '2015-03-31 21:45:42', '6');
INSERT INTO `tb_company` VALUES ('2', '不详', '不详', null, null, '2015-04-02 09:49:56', '公司A', 'gs', '0', 'A', '2015-04-02 09:49:56', '6');
INSERT INTO `tb_customer` VALUES ('1', '比利时', '2015-03-31 21:46:05', 'VIS', '2015-03-31 21:46:05', '6');
INSERT INTO `tb_factory` VALUES ('1', '江波', '孙家村', '2015-03-31 21:24:01', 'jb', '2015-03-31 21:24:01', '6', '0');
INSERT INTO `tb_factory` VALUES ('2', '诚信', '未知', '2015-04-01 21:42:52', 'cx', '2015-04-01 21:42:52', '6', '2');
INSERT INTO `tb_factory` VALUES ('3', '采购单位', '未知2', '2015-04-01 21:48:23', 'cgdw', '2015-04-02 12:51:21', '6', '1');
INSERT INTO `tb_finalstoreorder` VALUES ('1', '1', '2015-03-31 21:48:39', '2015-03-31 21:48:39', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('2', '2', '2015-04-03 21:46:02', '2015-04-03 21:46:02', '6', '0', '新建');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('1', '1', '2015-04-01 21:51:10', '2015-04-03 19:04:59', '6', '[{\"memo\":\"\",\"quantity\":3133,\"style\":1}]', '3', '0', '新建', '1', 'resource.fuwei.com/images/sample/1427808371841QQ图片20150331211900.jpg', '1', '全晴格子披肩', 'FWA30001', '126*126 + 10*2', '0', '1', 'FWA20001', 'resource.fuwei.com/images/sample/s/1427808371841QQ图片20150331211900.png', 'resource.fuwei.com/images/sample/ss/1427808371841QQ图片20150331211900.png', '8', '1');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('2', '1', '2015-04-02 17:28:57', '2015-04-03 21:42:28', '6', '[{\"memo\":\"备注\",\"quantity\":178.3,\"style\":1},{\"memo\":\"\",\"quantity\":122,\"style\":1},{\"memo\":\"\",\"quantity\":1,\"style\":1},{\"memo\":\"\",\"quantity\":1,\"style\":1},{\"memo\":\"\",\"quantity\":1,\"style\":1},{\"memo\":\"\",\"quantity\":2,\"style\":1}]', '3', '0', '新建', '1', 'resource.fuwei.com/images/sample/1427808371841QQ图片20150331211900.jpg', '1', '全晴格子披肩', 'FWA30001', '126*126 + 10*2', '0', '1', 'FWA20001', 'resource.fuwei.com/images/sample/s/1427808371841QQ图片20150331211900.png', 'resource.fuwei.com/images/sample/ss/1427808371841QQ图片20150331211900.png', '8', '1');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('3', null, '2015-04-02 17:32:27', '2015-04-02 20:08:21', '6', '[{\"memo\":\"\",\"quantity\":111,\"style\":1}]', '3', '0', '新建', '2', null, null, '品名', '33', null, '0', null, null, null, null, '8', null);
INSERT INTO `tb_gongxu` VALUES ('1', '2015-03-31 21:33:40', '机织', '2015-03-31 21:33:40', '9');
INSERT INTO `tb_gongxu` VALUES ('2', '2015-03-31 21:33:48', '锁口', '2015-03-31 21:33:48', '9');
INSERT INTO `tb_gongxu` VALUES ('3', '2015-03-31 21:33:58', '套口', '2015-03-31 21:33:58', '9');
INSERT INTO `tb_gongxu` VALUES ('4', '2015-03-31 21:34:10', '挂须', '2015-03-31 21:34:10', '9');
INSERT INTO `tb_gongxu` VALUES ('5', '2015-03-31 21:34:18', '整烫', '2015-03-31 21:34:18', '9');
INSERT INTO `tb_gongxu` VALUES ('6', '2015-03-31 21:34:25', '费用+后道', '2015-03-31 21:34:25', '9');
INSERT INTO `tb_gongxu` VALUES ('7', '2015-04-03 22:01:11', '1', '2015-04-03 22:01:11', '6');
INSERT INTO `tb_gongxu` VALUES ('8', '2015-04-03 22:01:19', '3', '2015-04-03 22:01:19', '6');
INSERT INTO `tb_gongxu` VALUES ('9', '2015-04-03 22:03:36', '2', '2015-04-03 22:03:36', '6');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('1', '1', '2015-03-31 21:48:39', '2015-03-31 21:48:39', '7', '[{\"color\":\"黑白色组\",\"colorsample\":\"\",\"material\":1}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('2', '2', '2015-04-03 21:46:02', '2015-04-03 21:46:02', '6', '[{\"color\":\"baise\",\"colorsample\":\"\",\"material\":1},{\"color\":\"heise\",\"colorsample\":\"\",\"material\":1}]', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('1', '1', '2015-03-31 21:48:39', '2015-03-31 21:48:39', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('2', '2', '2015-04-03 21:46:02', '2015-04-03 21:46:02', '6', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('1', '1', '2015-03-31 21:48:39', '2015-03-31 21:48:39', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('2', '2', '2015-04-03 21:46:02', '2015-04-03 21:46:02', '6', '0', '新建');
INSERT INTO `tb_material` VALUES ('1', '2015-03-31 21:23:41', '26s晴纶', '2015-03-31 21:23:41', '6');
INSERT INTO `tb_materialpurchaseorder` VALUES ('2', null, '2015-04-02 15:09:48', '2015-04-02 15:09:48', '6', '[{\"material\":1,\"price\":0,\"quantity\":1566}]', null, '3', '0', '新建', '1', null, null, '测试采购单品名', '134343', null, '0', null, null, null, null, '8', '1');
INSERT INTO `tb_materialpurchaseorder` VALUES ('3', null, '2015-04-02 16:14:16', '2015-04-02 16:19:04', '6', '[{\"material\":1,\"memo\":\"备注\",\"quantity\":1200.9}]', null, '3', '0', '新建', '1', null, null, '品名2', 'huohao2', null, '0', null, null, null, null, '8', '1');
INSERT INTO `tb_materialpurchaseorder` VALUES ('4', '1', '2015-04-02 16:21:52', '2015-04-02 16:21:52', '6', '[{\"material\":1,\"memo\":\"vc\",\"quantity\":122.1}]', null, '3', '0', '新建', '1', 'resource.fuwei.com/images/sample/1427808371841QQ图片20150331211900.jpg', '1', '全晴格子披肩', 'FWA30001', '126*126 + 10*2', '471', '1', 'FWA20001', 'resource.fuwei.com/images/sample/s/1427808371841QQ图片20150331211900.png', 'resource.fuwei.com/images/sample/ss/1427808371841QQ图片20150331211900.png', '8', '1');
INSERT INTO `tb_materialpurchaseorder` VALUES ('5', '1', '2015-04-03 20:58:29', '2015-04-03 20:58:29', '6', '[{\"material\":1,\"memo\":\"\",\"quantity\":1},{\"material\":1,\"memo\":\"\",\"quantity\":2},{\"material\":1,\"memo\":\"\",\"quantity\":3},{\"material\":1,\"memo\":\"\",\"quantity\":4},{\"material\":1,\"memo\":\"\",\"quantity\":5},{\"material\":1,\"memo\":\"\",\"quantity\":6}]', null, '3', '0', '新建', '1', 'resource.fuwei.com/images/sample/1427808371841QQ图片20150331211900.jpg', '1', '全晴格子披肩', 'FWA30001', '126*126 + 10*2', '471', '1', 'FWA20001', 'resource.fuwei.com/images/sample/s/1427808371841QQ图片20150331211900.png', 'resource.fuwei.com/images/sample/ss/1427808371841QQ图片20150331211900.png', '8', '1');
INSERT INTO `tb_order` VALUES ('1', '2015-03-31 21:48:39', '2015-03-31 21:48:39', '7', '1', '25830', '1', '待发货', '', '全晴格子披肩(471.0克)', '2015-03-09 00:00:00', '2015-04-20 00:00:00', null, 'FWA20001', '1', null, null, '33.441', '471*1.12*12*32÷ 1000=202.568+15=217.568\r\n8.229\r\n机织:66.000\r\n锁口:18.000\r\n套口:9.600\r\n挂须:20.400\r\n整烫:16.800\r\n费用+后道:18.000\r\n____________________________\r\n148.8+8.229\r\n=157.029*1.17\r\n=183.724+217.568\r\n=401.292÷12\r\n=33.441*1.17\r\n=39.126\r\n', 'resource.fuwei.com/images/sample/1427808371841QQ图片20150331211900.jpg', '1', '全晴格子披肩', 'FWA30001', '126*126 + 10*2', '471', '8', '1', '0', null, 'resource.fuwei.com/images/sample/s/1427808371841QQ图片20150331211900.png', 'resource.fuwei.com/images/sample/ss/1427808371841QQ图片20150331211900.png', '615', '[{\"color\":\"黑白色组\",\"id\":1,\"price\":42,\"quantity\":615,\"size\":\"126*126+10*2\",\"weight\":471,\"yarn\":1}]', '', '1');
INSERT INTO `tb_order` VALUES ('2', '2015-04-03 21:46:02', '2015-04-03 21:46:02', '6', '1', '8592', '1', '待发货', '', 'df(133.0克)', '2015-04-03 00:00:00', '2015-06-03 00:00:00', null, 'FWA20002', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/1427854869010图片1.png', '1', 'df', 'FWA30003', 'fd', '133', '6', '3', '0', null, 'resource.fuwei.com/images/sample/s/1427854869010图片1.png', 'resource.fuwei.com/images/sample/ss/1427854869010图片1.png', '1432', '[{\"color\":\"baise\",\"id\":1,\"price\":6,\"quantity\":323,\"size\":\"12\",\"weight\":1232,\"yarn\":1},{\"color\":\"heise\",\"id\":2,\"price\":6,\"quantity\":1109,\"size\":\"cd\",\"weight\":190,\"yarn\":1}]', '', null);
INSERT INTO `tb_order_handle` VALUES ('1', '1', '创建订单', '1', '待发货', null, '7', '2015-03-31 21:48:39');
INSERT INTO `tb_order_handle` VALUES ('2', '2', '创建订单', '1', '待发货', null, '6', '2015-04-03 21:46:02');
INSERT INTO `tb_planorder` VALUES ('1', '1', '2015-03-31 21:48:39', '2015-03-31 21:48:39', '7', '[{\"color\":\"黑白色组\",\"id\":1,\"price\":42,\"quantity\":615,\"size\":\"126*126+10*2\",\"weight\":471,\"yarn\":1}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('2', '2', '2015-04-03 21:46:02', '2015-04-03 21:46:02', '6', '[{\"color\":\"baise\",\"id\":1,\"price\":6,\"quantity\":323,\"size\":\"12\",\"weight\":1232,\"yarn\":1},{\"color\":\"heise\",\"id\":2,\"price\":6,\"quantity\":1109,\"size\":\"cd\",\"weight\":190,\"yarn\":1}]', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('1', '1', '2015-04-02 09:12:37', '2015-04-02 12:05:44', '6', '[{\"color\":\"黑白色组\",\"planOrderDetailId\":1,\"price\":0,\"quantity\":615,\"size\":\"126*126+10*2\",\"weight\":471,\"yarn\":1}]', '[{\"color\":\"12\",\"colorsample\":\"43\",\"material\":1,\"quantity\":3243.56}]', '1', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('1', '1', '2015-03-31 21:48:39', '2015-03-31 21:48:39', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('2', '2', '2015-04-03 21:46:02', '2015-04-03 21:46:02', '6', '0', '新建');
INSERT INTO `tb_role` VALUES ('1', '2014-07-07 17:15:33', '系统管理员', 'admin', '2014-07-07 17:15:43', null, '');
INSERT INTO `tb_role` VALUES ('2', '2015-03-31 20:54:39', '生产主管', '生产主管', '2015-03-31 20:54:39', '6', '');
INSERT INTO `tb_role` VALUES ('3', '2015-03-31 21:19:40', '业务员', 'salesman', '2015-03-31 21:19:40', '6', '');
INSERT INTO `tb_role` VALUES ('4', '2015-03-31 21:27:08', '总经理', 'BOSS', '2015-03-31 21:27:08', '6', '');
INSERT INTO `tb_role_authority` VALUES ('2969', '6', '1', '1');
INSERT INTO `tb_role_authority` VALUES ('2970', '6', '1', '2');
INSERT INTO `tb_role_authority` VALUES ('2971', '6', '1', '3');
INSERT INTO `tb_role_authority` VALUES ('2972', '6', '1', '4');
INSERT INTO `tb_role_authority` VALUES ('2973', '6', '1', '5');
INSERT INTO `tb_role_authority` VALUES ('2974', '6', '1', '6');
INSERT INTO `tb_role_authority` VALUES ('2975', '6', '1', '7');
INSERT INTO `tb_role_authority` VALUES ('2976', '6', '1', '8');
INSERT INTO `tb_role_authority` VALUES ('2977', '6', '1', '9');
INSERT INTO `tb_role_authority` VALUES ('2978', '6', '1', '49');
INSERT INTO `tb_role_authority` VALUES ('2979', '6', '1', '50');
INSERT INTO `tb_role_authority` VALUES ('2980', '6', '1', '10');
INSERT INTO `tb_role_authority` VALUES ('2981', '6', '1', '11');
INSERT INTO `tb_role_authority` VALUES ('2982', '6', '1', '12');
INSERT INTO `tb_role_authority` VALUES ('2983', '6', '1', '13');
INSERT INTO `tb_role_authority` VALUES ('2984', '6', '1', '14');
INSERT INTO `tb_role_authority` VALUES ('2985', '6', '1', '15');
INSERT INTO `tb_role_authority` VALUES ('2986', '6', '1', '16');
INSERT INTO `tb_role_authority` VALUES ('2987', '6', '1', '17');
INSERT INTO `tb_role_authority` VALUES ('2988', '6', '1', '18');
INSERT INTO `tb_role_authority` VALUES ('2989', '6', '1', '19');
INSERT INTO `tb_role_authority` VALUES ('2990', '6', '1', '20');
INSERT INTO `tb_role_authority` VALUES ('2991', '6', '1', '21');
INSERT INTO `tb_role_authority` VALUES ('2992', '6', '1', '22');
INSERT INTO `tb_role_authority` VALUES ('2993', '6', '1', '23');
INSERT INTO `tb_role_authority` VALUES ('2994', '6', '1', '24');
INSERT INTO `tb_role_authority` VALUES ('2995', '6', '1', '65');
INSERT INTO `tb_role_authority` VALUES ('2996', '6', '1', '66');
INSERT INTO `tb_role_authority` VALUES ('2997', '6', '1', '67');
INSERT INTO `tb_role_authority` VALUES ('2998', '6', '1', '68');
INSERT INTO `tb_role_authority` VALUES ('2999', '6', '1', '69');
INSERT INTO `tb_role_authority` VALUES ('3000', '6', '1', '102');
INSERT INTO `tb_role_authority` VALUES ('3001', '6', '1', '103');
INSERT INTO `tb_role_authority` VALUES ('3002', '6', '1', '104');
INSERT INTO `tb_role_authority` VALUES ('3003', '6', '1', '105');
INSERT INTO `tb_role_authority` VALUES ('3004', '6', '1', '106');
INSERT INTO `tb_role_authority` VALUES ('3005', '6', '1', '125');
INSERT INTO `tb_role_authority` VALUES ('3006', '6', '1', '126');
INSERT INTO `tb_role_authority` VALUES ('3007', '6', '1', '127');
INSERT INTO `tb_role_authority` VALUES ('3008', '6', '1', '128');
INSERT INTO `tb_role_authority` VALUES ('3009', '6', '1', '129');
INSERT INTO `tb_role_authority` VALUES ('3010', '6', '1', '130');
INSERT INTO `tb_role_authority` VALUES ('3011', '6', '1', '131');
INSERT INTO `tb_role_authority` VALUES ('3012', '6', '1', '132');
INSERT INTO `tb_role_authority` VALUES ('3013', '6', '1', '133');
INSERT INTO `tb_role_authority` VALUES ('3014', '6', '1', '25');
INSERT INTO `tb_role_authority` VALUES ('3015', '6', '1', '26');
INSERT INTO `tb_role_authority` VALUES ('3016', '6', '1', '27');
INSERT INTO `tb_role_authority` VALUES ('3017', '6', '1', '28');
INSERT INTO `tb_role_authority` VALUES ('3018', '6', '1', '29');
INSERT INTO `tb_role_authority` VALUES ('3019', '6', '1', '30');
INSERT INTO `tb_role_authority` VALUES ('3020', '6', '1', '31');
INSERT INTO `tb_role_authority` VALUES ('3021', '6', '1', '51');
INSERT INTO `tb_role_authority` VALUES ('3022', '6', '1', '32');
INSERT INTO `tb_role_authority` VALUES ('3023', '6', '1', '33');
INSERT INTO `tb_role_authority` VALUES ('3024', '6', '1', '34');
INSERT INTO `tb_role_authority` VALUES ('3025', '6', '1', '35');
INSERT INTO `tb_role_authority` VALUES ('3026', '6', '1', '36');
INSERT INTO `tb_role_authority` VALUES ('3027', '6', '1', '37');
INSERT INTO `tb_role_authority` VALUES ('3028', '6', '1', '38');
INSERT INTO `tb_role_authority` VALUES ('3029', '6', '1', '39');
INSERT INTO `tb_role_authority` VALUES ('3030', '6', '1', '40');
INSERT INTO `tb_role_authority` VALUES ('3031', '6', '1', '41');
INSERT INTO `tb_role_authority` VALUES ('3032', '6', '1', '42');
INSERT INTO `tb_role_authority` VALUES ('3033', '6', '1', '43');
INSERT INTO `tb_role_authority` VALUES ('3034', '6', '1', '48');
INSERT INTO `tb_role_authority` VALUES ('3035', '6', '1', '44');
INSERT INTO `tb_role_authority` VALUES ('3036', '6', '1', '45');
INSERT INTO `tb_role_authority` VALUES ('3037', '6', '1', '46');
INSERT INTO `tb_role_authority` VALUES ('3038', '6', '1', '47');
INSERT INTO `tb_role_authority` VALUES ('3039', '6', '1', '52');
INSERT INTO `tb_role_authority` VALUES ('3040', '6', '1', '53');
INSERT INTO `tb_role_authority` VALUES ('3041', '6', '1', '54');
INSERT INTO `tb_role_authority` VALUES ('3042', '6', '1', '55');
INSERT INTO `tb_role_authority` VALUES ('3043', '6', '1', '56');
INSERT INTO `tb_role_authority` VALUES ('3044', '6', '1', '57');
INSERT INTO `tb_role_authority` VALUES ('3045', '6', '1', '58');
INSERT INTO `tb_role_authority` VALUES ('3046', '6', '1', '59');
INSERT INTO `tb_role_authority` VALUES ('3047', '6', '1', '60');
INSERT INTO `tb_role_authority` VALUES ('3048', '6', '1', '61');
INSERT INTO `tb_role_authority` VALUES ('3049', '6', '1', '62');
INSERT INTO `tb_role_authority` VALUES ('3050', '6', '1', '63');
INSERT INTO `tb_role_authority` VALUES ('3051', '6', '1', '75');
INSERT INTO `tb_role_authority` VALUES ('3052', '6', '1', '76');
INSERT INTO `tb_role_authority` VALUES ('3053', '6', '1', '77');
INSERT INTO `tb_role_authority` VALUES ('3054', '6', '1', '134');
INSERT INTO `tb_role_authority` VALUES ('3055', '6', '1', '78');
INSERT INTO `tb_role_authority` VALUES ('3056', '6', '1', '79');
INSERT INTO `tb_role_authority` VALUES ('3057', '6', '1', '80');
INSERT INTO `tb_role_authority` VALUES ('3058', '6', '1', '81');
INSERT INTO `tb_role_authority` VALUES ('3059', '6', '1', '82');
INSERT INTO `tb_role_authority` VALUES ('3060', '6', '1', '83');
INSERT INTO `tb_role_authority` VALUES ('3061', '6', '1', '84');
INSERT INTO `tb_role_authority` VALUES ('3062', '6', '1', '85');
INSERT INTO `tb_role_authority` VALUES ('3063', '6', '1', '86');
INSERT INTO `tb_role_authority` VALUES ('3064', '6', '1', '87');
INSERT INTO `tb_role_authority` VALUES ('3065', '6', '1', '88');
INSERT INTO `tb_role_authority` VALUES ('3066', '6', '1', '107');
INSERT INTO `tb_role_authority` VALUES ('3067', '6', '1', '108');
INSERT INTO `tb_role_authority` VALUES ('3068', '6', '1', '109');
INSERT INTO `tb_role_authority` VALUES ('3069', '6', '1', '110');
INSERT INTO `tb_role_authority` VALUES ('3070', '6', '1', '111');
INSERT INTO `tb_role_authority` VALUES ('3071', '6', '1', '124');
INSERT INTO `tb_role_authority` VALUES ('3072', '6', '1', '112');
INSERT INTO `tb_role_authority` VALUES ('3073', '6', '1', '113');
INSERT INTO `tb_role_authority` VALUES ('3074', '6', '1', '114');
INSERT INTO `tb_role_authority` VALUES ('3075', '6', '1', '115');
INSERT INTO `tb_role_authority` VALUES ('3076', '6', '1', '116');
INSERT INTO `tb_role_authority` VALUES ('3077', '6', '1', '123');
INSERT INTO `tb_role_authority` VALUES ('3078', '6', '1', '117');
INSERT INTO `tb_role_authority` VALUES ('3079', '6', '1', '118');
INSERT INTO `tb_role_authority` VALUES ('3080', '6', '1', '119');
INSERT INTO `tb_role_authority` VALUES ('3081', '6', '1', '120');
INSERT INTO `tb_role_authority` VALUES ('3082', '6', '1', '121');
INSERT INTO `tb_role_authority` VALUES ('3083', '6', '1', '122');
INSERT INTO `tb_role_authority` VALUES ('3084', '6', '1', '94');
INSERT INTO `tb_role_authority` VALUES ('3085', '6', '1', '95');
INSERT INTO `tb_role_authority` VALUES ('3086', '6', '1', '96');
INSERT INTO `tb_role_authority` VALUES ('3087', '6', '1', '97');
INSERT INTO `tb_role_authority` VALUES ('3127', '6', '4', '1');
INSERT INTO `tb_role_authority` VALUES ('3128', '6', '4', '2');
INSERT INTO `tb_role_authority` VALUES ('3129', '6', '4', '3');
INSERT INTO `tb_role_authority` VALUES ('3130', '6', '4', '4');
INSERT INTO `tb_role_authority` VALUES ('3131', '6', '4', '5');
INSERT INTO `tb_role_authority` VALUES ('3132', '6', '4', '6');
INSERT INTO `tb_role_authority` VALUES ('3133', '6', '4', '7');
INSERT INTO `tb_role_authority` VALUES ('3134', '6', '4', '8');
INSERT INTO `tb_role_authority` VALUES ('3135', '6', '4', '9');
INSERT INTO `tb_role_authority` VALUES ('3136', '6', '4', '49');
INSERT INTO `tb_role_authority` VALUES ('3137', '6', '4', '50');
INSERT INTO `tb_role_authority` VALUES ('3138', '6', '4', '10');
INSERT INTO `tb_role_authority` VALUES ('3139', '6', '4', '11');
INSERT INTO `tb_role_authority` VALUES ('3140', '6', '4', '12');
INSERT INTO `tb_role_authority` VALUES ('3141', '6', '4', '13');
INSERT INTO `tb_role_authority` VALUES ('3142', '6', '4', '14');
INSERT INTO `tb_role_authority` VALUES ('3143', '6', '4', '15');
INSERT INTO `tb_role_authority` VALUES ('3144', '6', '4', '16');
INSERT INTO `tb_role_authority` VALUES ('3145', '6', '4', '17');
INSERT INTO `tb_role_authority` VALUES ('3146', '6', '4', '18');
INSERT INTO `tb_role_authority` VALUES ('3147', '6', '4', '19');
INSERT INTO `tb_role_authority` VALUES ('3148', '6', '4', '20');
INSERT INTO `tb_role_authority` VALUES ('3149', '6', '4', '21');
INSERT INTO `tb_role_authority` VALUES ('3150', '6', '4', '22');
INSERT INTO `tb_role_authority` VALUES ('3151', '6', '4', '23');
INSERT INTO `tb_role_authority` VALUES ('3152', '6', '4', '24');
INSERT INTO `tb_role_authority` VALUES ('3153', '6', '4', '65');
INSERT INTO `tb_role_authority` VALUES ('3154', '6', '4', '66');
INSERT INTO `tb_role_authority` VALUES ('3155', '6', '4', '67');
INSERT INTO `tb_role_authority` VALUES ('3156', '6', '4', '68');
INSERT INTO `tb_role_authority` VALUES ('3157', '6', '4', '69');
INSERT INTO `tb_role_authority` VALUES ('3158', '6', '4', '102');
INSERT INTO `tb_role_authority` VALUES ('3159', '6', '4', '103');
INSERT INTO `tb_role_authority` VALUES ('3160', '6', '4', '104');
INSERT INTO `tb_role_authority` VALUES ('3161', '6', '4', '105');
INSERT INTO `tb_role_authority` VALUES ('3162', '6', '4', '106');
INSERT INTO `tb_role_authority` VALUES ('3163', '6', '4', '125');
INSERT INTO `tb_role_authority` VALUES ('3164', '6', '4', '126');
INSERT INTO `tb_role_authority` VALUES ('3165', '6', '4', '127');
INSERT INTO `tb_role_authority` VALUES ('3166', '6', '4', '128');
INSERT INTO `tb_role_authority` VALUES ('3167', '6', '4', '129');
INSERT INTO `tb_role_authority` VALUES ('3168', '6', '4', '130');
INSERT INTO `tb_role_authority` VALUES ('3169', '6', '4', '131');
INSERT INTO `tb_role_authority` VALUES ('3170', '6', '4', '132');
INSERT INTO `tb_role_authority` VALUES ('3171', '6', '4', '133');
INSERT INTO `tb_role_authority` VALUES ('3172', '6', '4', '25');
INSERT INTO `tb_role_authority` VALUES ('3173', '6', '4', '26');
INSERT INTO `tb_role_authority` VALUES ('3174', '6', '4', '27');
INSERT INTO `tb_role_authority` VALUES ('3175', '6', '4', '28');
INSERT INTO `tb_role_authority` VALUES ('3176', '6', '4', '29');
INSERT INTO `tb_role_authority` VALUES ('3177', '6', '4', '30');
INSERT INTO `tb_role_authority` VALUES ('3178', '6', '4', '31');
INSERT INTO `tb_role_authority` VALUES ('3179', '6', '4', '51');
INSERT INTO `tb_role_authority` VALUES ('3180', '6', '4', '32');
INSERT INTO `tb_role_authority` VALUES ('3181', '6', '4', '33');
INSERT INTO `tb_role_authority` VALUES ('3182', '6', '4', '34');
INSERT INTO `tb_role_authority` VALUES ('3183', '6', '4', '35');
INSERT INTO `tb_role_authority` VALUES ('3184', '6', '4', '36');
INSERT INTO `tb_role_authority` VALUES ('3185', '6', '4', '37');
INSERT INTO `tb_role_authority` VALUES ('3186', '6', '4', '38');
INSERT INTO `tb_role_authority` VALUES ('3187', '6', '4', '39');
INSERT INTO `tb_role_authority` VALUES ('3188', '6', '4', '40');
INSERT INTO `tb_role_authority` VALUES ('3189', '6', '4', '41');
INSERT INTO `tb_role_authority` VALUES ('3190', '6', '4', '42');
INSERT INTO `tb_role_authority` VALUES ('3191', '6', '4', '43');
INSERT INTO `tb_role_authority` VALUES ('3192', '6', '4', '48');
INSERT INTO `tb_role_authority` VALUES ('3193', '6', '4', '44');
INSERT INTO `tb_role_authority` VALUES ('3194', '6', '4', '45');
INSERT INTO `tb_role_authority` VALUES ('3195', '6', '4', '46');
INSERT INTO `tb_role_authority` VALUES ('3196', '6', '4', '47');
INSERT INTO `tb_role_authority` VALUES ('3197', '6', '4', '52');
INSERT INTO `tb_role_authority` VALUES ('3198', '6', '4', '53');
INSERT INTO `tb_role_authority` VALUES ('3199', '6', '4', '54');
INSERT INTO `tb_role_authority` VALUES ('3200', '6', '4', '55');
INSERT INTO `tb_role_authority` VALUES ('3201', '6', '4', '56');
INSERT INTO `tb_role_authority` VALUES ('3202', '6', '4', '57');
INSERT INTO `tb_role_authority` VALUES ('3203', '6', '4', '58');
INSERT INTO `tb_role_authority` VALUES ('3204', '6', '4', '59');
INSERT INTO `tb_role_authority` VALUES ('3205', '6', '4', '60');
INSERT INTO `tb_role_authority` VALUES ('3206', '6', '4', '61');
INSERT INTO `tb_role_authority` VALUES ('3207', '6', '4', '62');
INSERT INTO `tb_role_authority` VALUES ('3208', '6', '4', '63');
INSERT INTO `tb_role_authority` VALUES ('3209', '6', '4', '75');
INSERT INTO `tb_role_authority` VALUES ('3210', '6', '4', '76');
INSERT INTO `tb_role_authority` VALUES ('3211', '6', '4', '77');
INSERT INTO `tb_role_authority` VALUES ('3212', '6', '4', '134');
INSERT INTO `tb_role_authority` VALUES ('3213', '6', '4', '78');
INSERT INTO `tb_role_authority` VALUES ('3214', '6', '4', '79');
INSERT INTO `tb_role_authority` VALUES ('3215', '6', '4', '80');
INSERT INTO `tb_role_authority` VALUES ('3216', '6', '4', '81');
INSERT INTO `tb_role_authority` VALUES ('3217', '6', '4', '82');
INSERT INTO `tb_role_authority` VALUES ('3218', '6', '4', '83');
INSERT INTO `tb_role_authority` VALUES ('3219', '6', '4', '84');
INSERT INTO `tb_role_authority` VALUES ('3220', '6', '4', '85');
INSERT INTO `tb_role_authority` VALUES ('3221', '6', '4', '86');
INSERT INTO `tb_role_authority` VALUES ('3222', '6', '4', '87');
INSERT INTO `tb_role_authority` VALUES ('3223', '6', '4', '88');
INSERT INTO `tb_role_authority` VALUES ('3224', '6', '4', '107');
INSERT INTO `tb_role_authority` VALUES ('3225', '6', '4', '108');
INSERT INTO `tb_role_authority` VALUES ('3226', '6', '4', '109');
INSERT INTO `tb_role_authority` VALUES ('3227', '6', '4', '110');
INSERT INTO `tb_role_authority` VALUES ('3228', '6', '4', '111');
INSERT INTO `tb_role_authority` VALUES ('3229', '6', '4', '124');
INSERT INTO `tb_role_authority` VALUES ('3230', '6', '4', '112');
INSERT INTO `tb_role_authority` VALUES ('3231', '6', '4', '113');
INSERT INTO `tb_role_authority` VALUES ('3232', '6', '4', '114');
INSERT INTO `tb_role_authority` VALUES ('3233', '6', '4', '115');
INSERT INTO `tb_role_authority` VALUES ('3234', '6', '4', '116');
INSERT INTO `tb_role_authority` VALUES ('3235', '6', '4', '123');
INSERT INTO `tb_role_authority` VALUES ('3236', '6', '4', '117');
INSERT INTO `tb_role_authority` VALUES ('3237', '6', '4', '118');
INSERT INTO `tb_role_authority` VALUES ('3238', '6', '4', '119');
INSERT INTO `tb_role_authority` VALUES ('3239', '6', '4', '120');
INSERT INTO `tb_role_authority` VALUES ('3240', '6', '4', '121');
INSERT INTO `tb_role_authority` VALUES ('3241', '6', '4', '122');
INSERT INTO `tb_role_authority` VALUES ('3242', '6', '4', '94');
INSERT INTO `tb_role_authority` VALUES ('3243', '6', '4', '95');
INSERT INTO `tb_role_authority` VALUES ('3244', '6', '4', '96');
INSERT INTO `tb_role_authority` VALUES ('3245', '6', '4', '97');
INSERT INTO `tb_role_authority` VALUES ('3246', '6', '2', '25');
INSERT INTO `tb_role_authority` VALUES ('3247', '6', '2', '26');
INSERT INTO `tb_role_authority` VALUES ('3248', '6', '2', '28');
INSERT INTO `tb_role_authority` VALUES ('3249', '6', '2', '29');
INSERT INTO `tb_role_authority` VALUES ('3250', '6', '2', '31');
INSERT INTO `tb_role_authority` VALUES ('3251', '6', '2', '51');
INSERT INTO `tb_role_authority` VALUES ('3252', '6', '2', '52');
INSERT INTO `tb_role_authority` VALUES ('3253', '6', '2', '53');
INSERT INTO `tb_role_authority` VALUES ('3254', '6', '2', '54');
INSERT INTO `tb_role_authority` VALUES ('3255', '6', '2', '55');
INSERT INTO `tb_role_authority` VALUES ('3256', '6', '2', '56');
INSERT INTO `tb_role_authority` VALUES ('3257', '6', '2', '57');
INSERT INTO `tb_role_authority` VALUES ('3258', '6', '2', '75');
INSERT INTO `tb_role_authority` VALUES ('3259', '6', '2', '76');
INSERT INTO `tb_role_authority` VALUES ('3260', '6', '2', '77');
INSERT INTO `tb_role_authority` VALUES ('3261', '6', '2', '134');
INSERT INTO `tb_role_authority` VALUES ('3262', '6', '2', '78');
INSERT INTO `tb_role_authority` VALUES ('3263', '6', '2', '79');
INSERT INTO `tb_role_authority` VALUES ('3264', '6', '2', '80');
INSERT INTO `tb_role_authority` VALUES ('3265', '6', '2', '81');
INSERT INTO `tb_role_authority` VALUES ('3266', '6', '2', '82');
INSERT INTO `tb_role_authority` VALUES ('3267', '6', '2', '83');
INSERT INTO `tb_role_authority` VALUES ('3268', '6', '2', '84');
INSERT INTO `tb_role_authority` VALUES ('3269', '6', '2', '85');
INSERT INTO `tb_role_authority` VALUES ('3270', '6', '2', '86');
INSERT INTO `tb_role_authority` VALUES ('3271', '6', '2', '88');
INSERT INTO `tb_role_authority` VALUES ('3272', '6', '2', '107');
INSERT INTO `tb_role_authority` VALUES ('3273', '6', '2', '108');
INSERT INTO `tb_role_authority` VALUES ('3274', '6', '2', '109');
INSERT INTO `tb_role_authority` VALUES ('3275', '6', '2', '111');
INSERT INTO `tb_role_authority` VALUES ('3276', '6', '2', '124');
INSERT INTO `tb_role_authority` VALUES ('3277', '6', '2', '112');
INSERT INTO `tb_role_authority` VALUES ('3278', '6', '2', '113');
INSERT INTO `tb_role_authority` VALUES ('3279', '6', '2', '114');
INSERT INTO `tb_role_authority` VALUES ('3280', '6', '2', '116');
INSERT INTO `tb_role_authority` VALUES ('3281', '6', '2', '123');
INSERT INTO `tb_role_authority` VALUES ('3282', '6', '2', '117');
INSERT INTO `tb_role_authority` VALUES ('3283', '6', '2', '118');
INSERT INTO `tb_role_authority` VALUES ('3284', '6', '2', '119');
INSERT INTO `tb_role_authority` VALUES ('3285', '6', '2', '121');
INSERT INTO `tb_role_authority` VALUES ('3286', '6', '2', '122');
INSERT INTO `tb_salesman` VALUES ('1', '2015-03-31 21:46:59', 'stx', '孙童欣', '89919732', '2015-03-31 21:46:59', '1', '6');
INSERT INTO `tb_salesman` VALUES ('2', '2015-04-02 09:50:08', '', '1', '1', '2015-04-02 09:50:08', '1', '6');
INSERT INTO `tb_salesman` VALUES ('4', '2015-04-02 09:51:55', '', '2', '2', '2015-04-02 09:51:55', '1', '6');
INSERT INTO `tb_salesman` VALUES ('5', '2015-04-02 09:53:27', '', '3', '3', '2015-04-02 09:53:27', '2', '6');
INSERT INTO `tb_salesman` VALUES ('6', '2015-04-02 09:53:33', '', '4', '4', '2015-04-02 09:53:33', '2', '6');
INSERT INTO `tb_salesman` VALUES ('7', '2015-04-02 09:54:50', '', '5', '5', '2015-04-02 09:54:50', '1', '6');
INSERT INTO `tb_sample` VALUES ('1', '33.441', '2015-03-31 21:26:12', '471*1.12*12*32÷ 1000=202.568+15=217.568\r\n8.229\r\n机织:66.000\r\n锁口:18.000\r\n套口:9.600\r\n挂须:20.400\r\n整烫:16.800\r\n费用+后道:18.000\r\n____________________________\r\n148.8+8.229\r\n=157.029*1.17\r\n=183.724+217.568\r\n=401.292÷12\r\n=33.441*1.17\r\n=39.126\r\n', '', 'qqgzpj', 'resource.fuwei.com/images/sample/1427808371841QQ图片20150331211900.jpg', '1', '', '全晴格子披肩', 'FWA30001', '126*126 + 10*2', '2015-03-31 21:26:12', '471', '6', '7', 'resource.fuwei.com/images/sample/s/1427808371841QQ图片20150331211900.png', 'resource.fuwei.com/images/sample/ss/1427808371841QQ图片20150331211900.png', '1');
INSERT INTO `tb_sample` VALUES ('2', '29.273', '2015-04-01 10:18:44', '材料1：100*1.1*12*100÷ 1000=132\r\n材料2：120*1.1*12*100÷ 1000=158.4\r\n132+158.4=290.4+12=302.4\r\n1.716+2.059=3.775\r\n机织:12.000\r\n机织:6.000\r\n机织:5.000\r\n机织:10.000\r\n机织:5.000\r\n____________________________\r\n38+3.775\r\n=41.775*1.17\r\n=48.877+302.4\r\n=351.277÷12\r\n=29.273*1.2\r\n=35.128\r\n', '', '', 'resource.fuwei.com/images/sample/1427854723718QQ图片20150331211900.jpg', '1', '', 'dafd', 'FWA30002', '1123', '2015-04-01 10:18:44', '11', '6', '6', 'resource.fuwei.com/images/sample/s/1427854723718QQ图片20150331211900.png', 'resource.fuwei.com/images/sample/ss/1427854723718QQ图片20150331211900.png', '1');
INSERT INTO `tb_sample` VALUES ('3', '0', '2015-04-01 10:21:09', null, '', '', 'resource.fuwei.com/images/sample/1427854869010图片1.png', '1', '', 'df', 'FWA30003', 'fd', '2015-04-01 10:21:09', '133', '6', '6', 'resource.fuwei.com/images/sample/s/1427854869010图片1.png', 'resource.fuwei.com/images/sample/ss/1427854869010图片1.png', '1');
INSERT INTO `tb_shoprecordorder` VALUES ('1', '1', '2015-03-31 21:48:39', '2015-03-31 21:48:39', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('2', '2', '2015-04-03 21:46:02', '2015-04-03 21:46:02', '6', '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('1', '1', '2015-04-01 20:58:43', '2015-04-01 21:26:27', '6', '[{\"color\":\"1\",\"factoryId\":1,\"material\":1,\"quantity\":33,\"yarn\":\"343\"},{\"color\":\"2\",\"factoryId\":1,\"material\":1,\"quantity\":433,\"yarn\":\"fggg\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('2', '2', '2015-04-03 21:52:40', '2015-04-03 21:56:10', '6', '[{\"color\":\"r23\",\"factoryId\":1,\"material\":1,\"quantity\":56.9,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_user` VALUES ('6', null, null, null, '', '', '系统内建帐号', 'fuwei_hp', null, null, null, 'system', '1', '');
INSERT INTO `tb_user` VALUES ('7', '2015-03-31 21:05:17', 'cfz@fuwei.net.cn', 'czf', '', '', '陈珍芳', '123456', '', '13326134466', '2015-03-31 21:05:17', 'cfz', '2', '');
INSERT INTO `tb_user` VALUES ('8', '2015-03-31 21:22:18', '', 'rx', '', '', '任晓', '123456', '', '', '2015-03-31 21:22:18', 'rx', '3', '');
INSERT INTO `tb_user` VALUES ('9', '2015-03-31 21:27:30', 'hp@fuwei.net.cn', 'hp', '', '', '胡盼', '123456', '', '15068821361', '2015-03-31 21:27:30', 'hp', '4', '');
