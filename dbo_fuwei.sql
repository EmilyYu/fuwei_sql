/*
MySQL Data Transfer
Source Host: localhost
Source Database: dbo_fuwei
Target Host: localhost
Target Database: dbo_fuwei
Date: 2015/4/5 1:17:12
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
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

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
  `number` varchar(255) DEFAULT NULL,
  `company_productNumber` varchar(255) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

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
  `number` varchar(255) DEFAULT NULL,
  `company_productNumber` varchar(255) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

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
  `number` varchar(255) DEFAULT NULL,
  `company_productNumber` varchar(255) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_message
-- ----------------------------
DROP TABLE IF EXISTS `tb_message`;
CREATE TABLE `tb_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_user_id` int(11) DEFAULT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `to_url` varchar(255) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `has_read` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `tb_message_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_message_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

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
  `company_productNumber` varchar(255) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=3449 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

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
INSERT INTO `tb_authority` VALUES ('136', '53', '查看样品成本、订单金额', 'order/detail/price');
INSERT INTO `tb_authority` VALUES ('137', '77', '查看单价', 'order/producing/price');
INSERT INTO `tb_authority` VALUES ('138', '77', '编辑单价', 'order/producing/price_edit');
INSERT INTO `tb_authority` VALUES ('139', '77', '请求划价', 'order/producing/price_request');
INSERT INTO `tb_carfixrecordorder` VALUES ('1', '1', '2015-03-31 21:48:39', '2015-03-31 21:48:39', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('2', '2', '2015-04-02 22:09:03', '2015-04-02 22:09:03', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('3', '3', '2015-04-02 22:32:58', '2015-04-02 22:32:58', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('4', '4', '2015-04-02 22:44:59', '2015-04-02 22:44:59', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('5', '5', '2015-04-03 01:12:31', '2015-04-03 01:12:31', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('6', '6', '2015-04-03 09:52:51', '2015-04-03 09:52:51', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('7', '7', '2015-04-03 15:04:20', '2015-04-03 15:04:20', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('8', '8', '2015-04-03 15:22:38', '2015-04-03 15:22:38', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('9', '9', '2015-04-03 21:39:34', '2015-04-03 21:39:34', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('10', '10', '2015-04-03 22:01:02', '2015-04-03 22:01:02', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('11', '11', '2015-04-03 22:08:13', '2015-04-03 22:08:13', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('12', '12', '2015-04-03 23:16:47', '2015-04-03 23:16:47', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('13', '13', '2015-04-03 23:52:25', '2015-04-03 23:52:25', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('14', '14', '2015-04-04 00:25:22', '2015-04-04 00:25:22', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('15', '15', '2015-04-04 01:47:47', '2015-04-04 01:47:47', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('16', '16', '2015-04-04 01:52:57', '2015-04-04 01:52:57', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('17', '17', '2015-04-04 18:28:46', '2015-04-04 18:28:46', '6', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('1', '1', '2015-03-31 21:48:39', '2015-03-31 21:48:39', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('2', '2', '2015-04-02 22:09:02', '2015-04-02 22:09:02', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('3', '3', '2015-04-02 22:32:58', '2015-04-02 22:32:58', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('4', '4', '2015-04-02 22:44:59', '2015-04-02 22:44:59', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('5', '5', '2015-04-03 01:12:31', '2015-04-03 01:12:31', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('6', '6', '2015-04-03 09:52:51', '2015-04-03 09:52:51', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('7', '7', '2015-04-03 15:04:20', '2015-04-03 15:04:20', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('8', '8', '2015-04-03 15:22:38', '2015-04-03 15:22:38', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('9', '9', '2015-04-03 21:39:34', '2015-04-03 21:39:34', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('10', '10', '2015-04-03 22:01:02', '2015-04-03 22:01:02', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('11', '11', '2015-04-03 22:08:13', '2015-04-03 22:08:13', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('12', '12', '2015-04-03 23:16:47', '2015-04-03 23:16:47', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('13', '13', '2015-04-03 23:52:25', '2015-04-03 23:52:25', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('14', '14', '2015-04-04 00:25:22', '2015-04-04 00:25:22', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('15', '15', '2015-04-04 01:47:47', '2015-04-04 01:47:47', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('16', '16', '2015-04-04 01:52:57', '2015-04-04 01:52:57', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('17', '17', '2015-04-04 18:28:46', '2015-04-04 18:28:46', '6', '0', '新建');
INSERT INTO `tb_coloringorder` VALUES ('1', '1', '2015-04-01 20:25:35', '2015-04-01 20:25:35', '7', '[{\"color\":\"白色\",\"material\":1,\"quantity\":145,\"standardyarn\":\"\"},{\"color\":\"黑色\",\"material\":1,\"quantity\":40,\"standardyarn\":\"\"}]', '3', '0', '新建', '1', 'resource.fuwei.com/images/sample/1427808371841QQ图片20150331211900.jpg', '1', '全晴格子披肩', 'FWA30001', '126*126 + 10*2', '471', '1', 'FWA20001', 'resource.fuwei.com/images/sample/s/1427808371841QQ图片20150331211900.png', 'resource.fuwei.com/images/sample/ss/1427808371841QQ图片20150331211900.png', '8', '1', null, null, null);
INSERT INTO `tb_coloringorder` VALUES ('2', '2', '2015-04-02 22:17:59', '2015-04-02 22:26:37', '7', '[{\"color\":\"QY035-米色\",\"material\":4,\"quantity\":773,\"standardyarn\":\"\"},{\"color\":\"QY035-藏青\",\"material\":4,\"quantity\":773,\"standardyarn\":\"\"},{\"color\":\"QY035-米色\",\"material\":8,\"quantity\":1.5,\"standardyarn\":\"\"},{\"color\":\"QY035-藏青\",\"material\":8,\"quantity\":1.5,\"standardyarn\":\"\"}]', '12', '0', '新建', '4', 'resource.fuwei.com/images/sample/1427955494579图片1.png', '4', '冰岛毛正反针挂须围巾', 'FWA30003', '190*40+2*20CM F', '0', '3', 'FWA20002', 'resource.fuwei.com/images/sample/s/1427955494579图片1.png', 'resource.fuwei.com/images/sample/ss/1427955494579图片1.png', '11', '2', null, null, null);
INSERT INTO `tb_coloringorder` VALUES ('3', '3', '2015-04-02 22:34:50', '2015-04-02 22:40:14', '7', '[{\"color\":\"QY034-米色\",\"material\":4,\"quantity\":190.5,\"standardyarn\":\"\"},{\"color\":\"QY034-藏青\",\"material\":4,\"quantity\":190.5,\"standardyarn\":\"\"},{\"color\":\"QY034-米色\",\"material\":8,\"quantity\":1.5,\"standardyarn\":\"\"},{\"color\":\"QY034-藏青\",\"material\":8,\"quantity\":1.5,\"standardyarn\":\"\"}]', '12', '0', '新建', '4', 'resource.fuwei.com/images/sample/1427955562784图片1.png', '4', '冰岛毛正反针吊球帽', 'FWA30004', '24CMH *20CM', '0', '4', 'FWA20003', 'resource.fuwei.com/images/sample/s/1427955562784图片1.png', 'resource.fuwei.com/images/sample/ss/1427955562784图片1.png', '11', '2', null, null, null);
INSERT INTO `tb_coloringorder` VALUES ('4', '4', '2015-04-02 22:47:03', '2015-04-02 22:47:03', '7', '[{\"color\":\"QY036-米色\",\"material\":4,\"quantity\":28,\"standardyarn\":\"\"},{\"color\":\"QY036-米色\",\"material\":8,\"quantity\":1,\"standardyarn\":\"\"},{\"color\":\"QY036-藏青\",\"material\":8,\"quantity\":28,\"standardyarn\":\"\"},{\"color\":\"QY036-藏青\",\"material\":8,\"quantity\":1,\"standardyarn\":\"\"}]', '12', '0', '新建', '4', 'resource.fuwei.com/images/sample/1427955633832图片1.png', '4', '冰岛正反针包套', 'FWA30005', '24CM L *10CM W ，做为S/M码', '83', '5', 'FWA20004', 'resource.fuwei.com/images/sample/s/1427955633832图片1.png', 'resource.fuwei.com/images/sample/ss/1427955633832图片1.png', '11', '2', null, null, null);
INSERT INTO `tb_coloringorder` VALUES ('5', '5', '2015-04-03 01:18:39', '2015-04-03 01:18:39', '7', '[{\"color\":\"QY113-黑色\",\"material\":9,\"quantity\":419,\"standardyarn\":\"\"},{\"color\":\"QY113-黑色\",\"material\":1,\"quantity\":8,\"standardyarn\":\"\"}]', '15', '0', '新建', '4', 'resource.fuwei.com/images/sample/1427992528634图片1.png', '9', '马海毛挂须三角巾', 'FWA30007', '155*85+15cmf', '247', '7', 'FWA20005', 'resource.fuwei.com/images/sample/s/1427992528634图片1.png', 'resource.fuwei.com/images/sample/ss/1427992528634图片1.png', '11', '2', null, null, null);
INSERT INTO `tb_coloringorder` VALUES ('6', '5', '2015-04-03 14:37:33', '2015-04-03 14:37:33', '7', '[{\"color\":\"深夹花灰\",\"material\":9,\"quantity\":419,\"standardyarn\":\"\"},{\"color\":\"深夹花灰\",\"material\":1,\"quantity\":8,\"standardyarn\":\"\"}]', '26', '0', '新建', '4', 'resource.fuwei.com/images/sample/1427992528634图片1.png', '9', '马海毛挂须三角巾', 'FWA30007', '155*85+15cmf', '247', '7', 'FWA20005', 'resource.fuwei.com/images/sample/s/1427992528634图片1.png', 'resource.fuwei.com/images/sample/ss/1427992528634图片1.png', '11', '2', null, null, null);
INSERT INTO `tb_coloringorder` VALUES ('7', '7', '2015-04-03 15:12:53', '2015-04-03 15:12:53', '7', '[{\"color\":\"深夹花灰\",\"material\":9,\"quantity\":622,\"standardyarn\":\"\"}]', '26', '0', '新建', '4', 'resource.fuwei.com/images/sample/1427992746746图片1.png', '9', '马海毛毛球帽', 'FWA30008', '22*22', '85', '8', 'FWA20007', 'resource.fuwei.com/images/sample/s/1427992746746图片1.png', 'resource.fuwei.com/images/sample/ss/1427992746746图片1.png', '11', '3', null, null, null);
INSERT INTO `tb_coloringorder` VALUES ('8', '7', '2015-04-03 15:13:12', '2015-04-03 15:13:12', '7', '[{\"color\":\"黑色\",\"material\":9,\"quantity\":6,\"standardyarn\":\"\"}]', '15', '0', '新建', '4', 'resource.fuwei.com/images/sample/1427992746746图片1.png', '9', '马海毛毛球帽', 'FWA30008', '22*22', '85', '8', 'FWA20007', 'resource.fuwei.com/images/sample/s/1427992746746图片1.png', 'resource.fuwei.com/images/sample/ss/1427992746746图片1.png', '11', '3', null, null, null);
INSERT INTO `tb_coloringorder` VALUES ('9', '8', '2015-04-03 15:23:50', '2015-04-03 15:23:50', '7', '[{\"color\":\"深夹花灰\",\"material\":9,\"quantity\":102,\"standardyarn\":\"\"}]', '26', '0', '新建', '4', 'resource.fuwei.com/images/sample/1427992902609图片1.png', '9', '马海毛包套', 'FWA30009', 'S/M', '80', '9', 'FWA20008', 'resource.fuwei.com/images/sample/s/1427992902609图片1.png', 'resource.fuwei.com/images/sample/ss/1427992902609图片1.png', '11', '3', null, null, null);
INSERT INTO `tb_coloringorder` VALUES ('10', '8', '2015-04-03 15:24:25', '2015-04-03 15:24:25', '7', '[{\"color\":\"黑色\",\"material\":9,\"quantity\":109,\"standardyarn\":\"\"}]', '15', '0', '新建', '4', 'resource.fuwei.com/images/sample/1427992902609图片1.png', '9', '马海毛包套', 'FWA30009', 'S/M', '80', '9', 'FWA20008', 'resource.fuwei.com/images/sample/s/1427992902609图片1.png', 'resource.fuwei.com/images/sample/ss/1427992902609图片1.png', '11', '3', null, null, null);
INSERT INTO `tb_coloringorder` VALUES ('11', '9', '2015-04-03 21:50:18', '2015-04-03 21:50:18', '7', '[{\"color\":\"QY102-米白\",\"material\":6,\"quantity\":525,\"standardyarn\":\"\"}]', '12', '0', '新建', '4', 'resource.fuwei.com/images/sample/1428066399895图片1.png', '6', '冰岛毛绞花毛球帽', 'FWA30014', '21*20CM', '123', '14', 'FWA20009', 'resource.fuwei.com/images/sample/s/1428066399895图片1.png', 'resource.fuwei.com/images/sample/ss/1428066399895图片1.png', '11', '3', null, null, null);
INSERT INTO `tb_coloringorder` VALUES ('12', '9', '2015-04-03 21:50:44', '2015-04-03 21:50:44', '7', '[{\"color\":\"深夹花灰\",\"material\":7,\"quantity\":525,\"standardyarn\":\"\"}]', '26', '0', '新建', '4', 'resource.fuwei.com/images/sample/1428066399895图片1.png', '6', '冰岛毛绞花毛球帽', 'FWA30014', '21*20CM', '123', '14', 'FWA20009', 'resource.fuwei.com/images/sample/s/1428066399895图片1.png', 'resource.fuwei.com/images/sample/ss/1428066399895图片1.png', '11', '3', null, null, null);
INSERT INTO `tb_coloringorder` VALUES ('13', '10', '2015-04-03 22:01:41', '2015-04-03 22:01:41', '7', '[{\"color\":\"QY米色\",\"material\":6,\"quantity\":178,\"standardyarn\":\"\"}]', '12', '0', '新建', '4', 'resource.fuwei.com/images/sample/1428068026985图片1.png', '6', '绞花包套', 'FWA30016', '25*9cm S/M', '114', '16', 'FWA20010', 'resource.fuwei.com/images/sample/s/1428068026985图片1.png', 'resource.fuwei.com/images/sample/ss/1428068026985图片1.png', '11', '3', null, null, null);
INSERT INTO `tb_coloringorder` VALUES ('14', '10', '2015-04-03 22:02:04', '2015-04-03 22:02:04', '7', '[{\"color\":\"深夹花灰\",\"material\":7,\"quantity\":178,\"standardyarn\":\"\"}]', '26', '0', '新建', '4', 'resource.fuwei.com/images/sample/1428068026985图片1.png', '6', '绞花包套', 'FWA30016', '25*9cm S/M', '114', '16', 'FWA20010', 'resource.fuwei.com/images/sample/s/1428068026985图片1.png', 'resource.fuwei.com/images/sample/ss/1428068026985图片1.png', '11', '3', null, null, null);
INSERT INTO `tb_coloringorder` VALUES ('15', '12', '2015-04-03 23:18:25', '2015-04-03 23:18:25', '7', '[{\"color\":\"QY088-黑色\",\"material\":1,\"quantity\":96,\"standardyarn\":\"\"},{\"color\":\"QY088-暗红色\",\"material\":1,\"quantity\":62,\"standardyarn\":\"\"}]', '16', '0', '新建', '4', 'resource.fuwei.com/images/sample/1428073896025图片1.png', '1', '抽条翻边帽', 'FWA30018', '21H*20W', '63', '18', 'FWA20012', 'resource.fuwei.com/images/sample/s/1428073896025图片1.png', 'resource.fuwei.com/images/sample/ss/1428073896025图片1.png', '11', '3', null, null, null);
INSERT INTO `tb_coloringorder` VALUES ('16', '12', '2015-04-03 23:18:48', '2015-04-03 23:18:48', '7', '[{\"color\":\"深夹花灰\",\"material\":1,\"quantity\":96,\"standardyarn\":\"\"}]', '26', '0', '新建', '4', 'resource.fuwei.com/images/sample/1428073896025图片1.png', '1', '抽条翻边帽', 'FWA30018', '21H*20W', '63', '18', 'FWA20012', 'resource.fuwei.com/images/sample/s/1428073896025图片1.png', 'resource.fuwei.com/images/sample/ss/1428073896025图片1.png', '11', '3', null, null, null);
INSERT INTO `tb_coloringorder` VALUES ('17', '13', '2015-04-03 23:53:30', '2015-04-03 23:53:30', '7', '[{\"color\":\"灰色\",\"material\":8,\"quantity\":177,\"standardyarn\":\"\"}]', '13', '0', '新建', '1', 'resource.fuwei.com/images/sample/1427993082909Adoree loop SMS 8019 carbon solid.JPG', '8', '冰岛毛羽毛纱围脖', 'FWA30010', '33*2*27', '198', '10', 'FWA20013', 'resource.fuwei.com/images/sample/s/1427993082909Adoree loop SMS 8019 carbon solid.png', 'resource.fuwei.com/images/sample/ss/1427993082909Adoree loop SMS 8019 carbon solid.png', '8', '5', null, null, null);
INSERT INTO `tb_coloringorder` VALUES ('18', '13', '2015-04-03 23:55:52', '2015-04-03 23:55:52', '7', '[{\"color\":\"黑色\",\"material\":16,\"quantity\":45,\"standardyarn\":\"\"}]', '28', '0', '新建', '1', 'resource.fuwei.com/images/sample/1427993082909Adoree loop SMS 8019 carbon solid.JPG', '8', '冰岛毛羽毛纱围脖', 'FWA30010', '33*2*27', '198', '10', 'FWA20013', 'resource.fuwei.com/images/sample/s/1427993082909Adoree loop SMS 8019 carbon solid.png', 'resource.fuwei.com/images/sample/ss/1427993082909Adoree loop SMS 8019 carbon solid.png', '8', '5', null, null, null);
INSERT INTO `tb_coloringorder` VALUES ('19', '14', '2015-04-04 00:29:59', '2015-04-04 00:29:59', '7', '[{\"color\":\"褐色\",\"material\":18,\"quantity\":60,\"standardyarn\":\"\"},{\"color\":\"红棕色\",\"material\":18,\"quantity\":110,\"standardyarn\":\"\"},{\"color\":\"旧粉色\",\"material\":18,\"quantity\":110,\"standardyarn\":\"\"}]', '29', '0', '新建', '7', 'resource.fuwei.com/images/sample/14280778246358CD60DF79323473B3DE0139776CD3BEA.png', '13', '仿羊绒成品染色拉毛围脖', 'FWA30021', '40H*75W', '152', '21', 'FWA20014', 'resource.fuwei.com/images/sample/s/14280778246358CD60DF79323473B3DE0139776CD3BEA.png', 'resource.fuwei.com/images/sample/ss/14280778246358CD60DF79323473B3DE0139776CD3BEA.png', '11', null, null, null, null);
INSERT INTO `tb_coloringorder` VALUES ('20', '15', '2015-04-04 01:48:38', '2015-04-04 01:48:38', '7', '[{\"color\":\"本白\",\"material\":9,\"quantity\":10,\"standardyarn\":\"\"}]', '15', '0', '新建', '7', 'resource.fuwei.com/images/sample/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', '17', '马海毛点子纱围脖', 'FWA30020', '43H*75W', '203', '20', 'FWA20015', 'resource.fuwei.com/images/sample/s/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', 'resource.fuwei.com/images/sample/ss/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', '11', null, null, null, null);
INSERT INTO `tb_coloringorder` VALUES ('21', '15', '2015-04-04 01:49:12', '2015-04-04 01:49:12', '7', '[{\"color\":\"点子纱\",\"material\":17,\"quantity\":6,\"standardyarn\":\"\"}]', '16', '0', '新建', '7', 'resource.fuwei.com/images/sample/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', '17', '马海毛点子纱围脖', 'FWA30020', '43H*75W', '203', '20', 'FWA20015', 'resource.fuwei.com/images/sample/s/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', 'resource.fuwei.com/images/sample/ss/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', '11', null, null, null, null);
INSERT INTO `tb_coloringorder` VALUES ('22', '16', '2015-04-04 01:53:37', '2015-04-04 17:04:42', '7', '[{\"color\":\"米色\",\"material\":9,\"quantity\":5,\"standardyarn\":\"\"},{\"color\":\"黑色\",\"material\":9,\"quantity\":10,\"standardyarn\":\"\"}]', '15', '0', '新建', '7', 'resource.fuwei.com/images/sample/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', '9', '马海毛烫钻帽', 'FWA30019', '20W*27H', '0', '19', 'FWA20016', 'resource.fuwei.com/images/sample/s/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', 'resource.fuwei.com/images/sample/ss/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', '11', null, '343', null, null);
INSERT INTO `tb_coloringorder` VALUES ('23', '16', '2015-04-04 17:05:29', '2015-04-04 17:05:43', '6', '[{\"color\":\"21\",\"material\":1,\"quantity\":1,\"standardyarn\":\"\"}]', '3', '0', '新建', '7', 'resource.fuwei.com/images/sample/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', '9', '马海毛烫钻帽', 'FWA30019', '20W*27H', '0', '19', 'FWA20016', 'resource.fuwei.com/images/sample/s/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', 'resource.fuwei.com/images/sample/ss/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', '11', null, '测试贝贝2', null, null);
INSERT INTO `tb_coloringorder` VALUES ('24', null, '2015-04-04 17:07:56', '2015-04-04 17:08:11', '6', '[{\"color\":\"白鹅\",\"material\":2,\"quantity\":44,\"standardyarn\":\"\"}]', '3', '0', '新建', '1', null, null, 'pinming', '221', null, '0', null, null, null, null, '6', '1', 'ffd本书2', null, null);
INSERT INTO `tb_coloringorder` VALUES ('25', null, '2015-04-04 17:29:27', '2015-04-04 17:29:27', '6', '[{\"color\":\"21\",\"material\":1,\"quantity\":1,\"standardyarn\":\"\"}]', '3', '0', '新建', '1', null, null, '23', '12', null, '0', null, null, null, null, '12', '1', 'ffv', '1RS25', null);
INSERT INTO `tb_coloringorder` VALUES ('26', null, '2015-04-04 17:43:23', '2015-04-04 17:43:23', '6', '[{\"color\":\"1\",\"material\":2,\"quantity\":1,\"standardyarn\":\"\"}]', '3', '0', '新建', '2', null, null, '1', '1', null, '0', null, null, null, null, '6', '1', '1', '15RS26', null);
INSERT INTO `tb_coloringorder` VALUES ('27', null, '2015-04-04 18:02:15', '2015-04-04 18:02:15', '6', '[{\"color\":\"1\",\"material\":1,\"quantity\":1,\"standardyarn\":\"\"}]', '3', '0', '新建', '1', null, null, '1', '1', null, '0', null, null, null, null, '6', '1', '', null, null);
INSERT INTO `tb_coloringorder` VALUES ('28', null, '2015-04-04 18:03:04', '2015-04-04 18:03:04', '6', '[{\"color\":\"1\",\"material\":1,\"quantity\":1,\"standardyarn\":\"\"}]', '3', '0', '新建', '1', null, null, '1', '1', null, '0', null, null, null, null, '6', '1', '', null, null);
INSERT INTO `tb_coloringorder` VALUES ('29', null, '2015-04-04 18:04:05', '2015-04-04 18:04:05', '6', '[{\"color\":\"1\",\"material\":1,\"quantity\":1,\"standardyarn\":\"\"}]', '3', '0', '新建', '1', null, null, '1', '1', null, '0', null, null, null, null, '6', '1', '', '15RS0029', null);
INSERT INTO `tb_coloringprocessorder` VALUES ('1', '1', '2015-03-31 21:48:39', '2015-03-31 21:48:39', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('2', '2', '2015-04-02 22:09:03', '2015-04-02 22:09:03', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('3', '3', '2015-04-02 22:32:58', '2015-04-02 22:32:58', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('4', '4', '2015-04-02 22:44:59', '2015-04-02 22:44:59', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('5', '5', '2015-04-03 01:12:31', '2015-04-03 01:12:31', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('6', '6', '2015-04-03 09:52:51', '2015-04-03 09:52:51', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('7', '7', '2015-04-03 15:04:20', '2015-04-03 15:04:20', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('8', '8', '2015-04-03 15:22:38', '2015-04-03 15:22:38', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('9', '9', '2015-04-03 21:39:34', '2015-04-03 21:39:34', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('10', '10', '2015-04-03 22:01:02', '2015-04-03 22:01:02', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('11', '11', '2015-04-03 22:08:13', '2015-04-03 22:08:13', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('12', '12', '2015-04-03 23:16:47', '2015-04-03 23:16:47', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('13', '13', '2015-04-03 23:52:25', '2015-04-03 23:52:25', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('14', '14', '2015-04-04 00:25:22', '2015-04-04 00:25:22', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('15', '15', '2015-04-04 01:47:47', '2015-04-04 01:47:47', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('16', '16', '2015-04-04 01:52:57', '2015-04-04 01:52:57', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('17', '17', '2015-04-04 18:28:46', '2015-04-04 18:28:46', '6', '0', '新建');
INSERT INTO `tb_company` VALUES ('1', '拱墅区湖州街18号', '杭州', null, null, '2015-03-31 21:45:42', '杭州翔天实业有限公司', 'hzxtsyyxgs', '0', '翔天', '2015-03-31 21:45:42', '6');
INSERT INTO `tb_company` VALUES ('2', '上海市长寿路1076号1902室', '上海', null, null, '2015-04-01 13:22:19', '上海逸韵服饰有限公司', 'shyyfsyxgs', '0', '逸韵', '2015-04-01 13:22:19', '9');
INSERT INTO `tb_company` VALUES ('3', '杭州市西湖区文二路391号节能科技园E中楼6楼618室', '杭州', null, null, '2015-04-01 22:40:26', '杭州六昇服饰有限公司', 'hzlsfsyxgs', '0', '六昇', '2015-04-01 22:40:26', '9');
INSERT INTO `tb_company` VALUES ('4', '上海市长寿路1076号飞雕大厦1406室', '上海', null, null, '2015-04-01 22:41:13', '上海棋韵服饰有限公司', 'shqyfsyxgs', '0', '棋韵', '2015-04-01 22:41:13', '9');
INSERT INTO `tb_company` VALUES ('5', '杭州', '杭州', null, null, '2015-04-01 22:43:17', '杭州舜斓贸易有限公司', 'hzslmyyxgs', '0', '舜斓', '2015-04-01 22:43:17', '9');
INSERT INTO `tb_company` VALUES ('6', '香港九龙荔枝角青山道704号和兴工业大厦8楼D室', '香港', null, null, '2015-04-01 22:44:23', '永盛创业有限公司', 'yscyyxgs', '0', '永盛', '2015-04-01 22:44:23', '9');
INSERT INTO `tb_company` VALUES ('7', '杭州', '杭州', null, null, '2015-04-04 00:05:14', '源盛', 'ys', '0', '源盛', '2015-04-04 00:05:14', '9');
INSERT INTO `tb_customer` VALUES ('1', '比利时', '2015-03-31 21:46:05', 'VIS', '2015-03-31 21:46:05', '6');
INSERT INTO `tb_customer` VALUES ('2', '丹麦', '2015-04-02 22:05:58', 'ONLY', '2015-04-02 22:05:58', '9');
INSERT INTO `tb_customer` VALUES ('3', '丹麦', '2015-04-03 01:12:58', 'VERO MODA', '2015-04-03 01:12:58', '6');
INSERT INTO `tb_customer` VALUES ('4', '英国', '2015-04-03 09:51:14', 'ASOS', '2015-04-03 09:51:14', '9');
INSERT INTO `tb_customer` VALUES ('5', '未知', '2015-04-03 23:51:18', 'ICHI', '2015-04-03 23:51:18', '9');
INSERT INTO `tb_factory` VALUES ('1', '江波', '孙家村', '2015-03-31 21:24:01', 'jb', '2015-03-31 21:24:01', '6', '0');
INSERT INTO `tb_factory` VALUES ('2', '本厂', '孙家村', '2015-04-01 13:21:31', 'bc', '2015-04-01 13:21:31', '9', '0');
INSERT INTO `tb_factory` VALUES ('3', '诚信', '横村镇', '2015-04-01 20:24:03', 'cx', '2015-04-01 20:24:03', '9', '2');
INSERT INTO `tb_factory` VALUES ('4', '套口', '不详', '2015-04-01 20:43:18', 'tk', '2015-04-01 20:43:18', '6', '0');
INSERT INTO `tb_factory` VALUES ('5', '挂须', '不详', '2015-04-01 20:43:37', 'gx', '2015-04-01 20:43:37', '6', '0');
INSERT INTO `tb_factory` VALUES ('6', '君英', '横村镇', '2015-04-01 22:35:12', 'jy', '2015-04-01 22:35:12', '9', '0');
INSERT INTO `tb_factory` VALUES ('7', '胡亚萍', '孙家村', '2015-04-01 22:35:34', 'hyp', '2015-04-01 22:35:34', '9', '0');
INSERT INTO `tb_factory` VALUES ('8', '姚樟水', '峨山', '2015-04-01 22:35:48', 'yzs', '2015-04-01 22:35:48', '9', '0');
INSERT INTO `tb_factory` VALUES ('9', '杨柯庭', '横村镇', '2015-04-01 22:36:14', 'ykt', '2015-04-01 22:36:14', '9', '0');
INSERT INTO `tb_factory` VALUES ('10', '杨继剑', '横村镇', '2015-04-01 22:36:23', 'yjj', '2015-04-01 22:36:23', '9', '0');
INSERT INTO `tb_factory` VALUES ('11', '巴柳青', '分水', '2015-04-01 22:36:36', 'blq', '2015-04-01 22:36:36', '9', '0');
INSERT INTO `tb_factory` VALUES ('12', '恒达', '横村镇', '2015-04-01 22:37:28', 'hd', '2015-04-01 22:37:28', '9', '2');
INSERT INTO `tb_factory` VALUES ('13', '金利', '横村镇', '2015-04-01 22:37:41', 'jl', '2015-04-01 22:37:41', '9', '2');
INSERT INTO `tb_factory` VALUES ('14', '云珍', '建德', '2015-04-01 22:37:57', 'yz', '2015-04-01 22:37:57', '9', '2');
INSERT INTO `tb_factory` VALUES ('15', '程金明', '建德', '2015-04-01 22:38:11', 'cjm', '2015-04-01 22:38:11', '9', '2');
INSERT INTO `tb_factory` VALUES ('16', '永欣', '横村镇', '2015-04-01 22:38:22', 'yx', '2015-04-01 22:38:22', '9', '2');
INSERT INTO `tb_factory` VALUES ('17', '永欣', '横村镇', '2015-04-01 22:38:34', 'yx', '2015-04-01 22:38:34', '9', '1');
INSERT INTO `tb_factory` VALUES ('18', '拷边线', '无', '2015-04-01 22:38:57', 'kbx', '2015-04-01 22:38:57', '9', '0');
INSERT INTO `tb_factory` VALUES ('19', '华阳', '旧县', '2015-04-02 22:19:07', 'hy', '2015-04-02 22:19:07', '9', '1');
INSERT INTO `tb_factory` VALUES ('20', '吊球', '无', '2015-04-02 22:36:50', 'dq', '2015-04-02 22:36:50', '9', '0');
INSERT INTO `tb_factory` VALUES ('21', '接指', '无', '2015-04-02 22:49:20', 'jz', '2015-04-02 22:49:20', '9', '0');
INSERT INTO `tb_factory` VALUES ('22', '潘立明', '横村', '2015-04-03 00:49:27', 'plm', '2015-04-03 00:49:27', '9', '0');
INSERT INTO `tb_factory` VALUES ('23', '南源', '桐庐', '2015-04-03 01:16:27', 'ny', '2015-04-03 01:16:27', '6', '1');
INSERT INTO `tb_factory` VALUES ('24', '申亮', '横村', '2015-04-03 01:16:47', 'sl', '2015-04-03 01:16:47', '6', '1');
INSERT INTO `tb_factory` VALUES ('25', '南源', '桐庐', '2015-04-03 14:35:04', 'ny', '2015-04-03 14:35:04', '9', '1');
INSERT INTO `tb_factory` VALUES ('26', '南源', '桐庐', '2015-04-03 14:36:36', 'ny', '2015-04-03 14:36:36', '9', '2');
INSERT INTO `tb_factory` VALUES ('27', '王爱民', '横村', '2015-04-03 22:28:02', 'wam', '2015-04-03 22:28:02', '9', '0');
INSERT INTO `tb_factory` VALUES ('28', '黄圣河', '横村', '2015-04-03 23:54:10', 'hsh', '2015-04-03 23:54:10', '9', '2');
INSERT INTO `tb_factory` VALUES ('29', '高清堂', '建德', '2015-04-04 00:28:00', 'gqt', '2015-04-04 00:28:00', '9', '2');
INSERT INTO `tb_factory` VALUES ('30', '岑国军', '横村镇', '2015-04-04 01:46:21', 'cgj', '2015-04-04 01:46:21', '9', '0');
INSERT INTO `tb_finalstoreorder` VALUES ('1', '1', '2015-03-31 21:48:39', '2015-03-31 21:48:39', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('2', '2', '2015-04-02 22:09:03', '2015-04-02 22:09:03', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('3', '3', '2015-04-02 22:32:58', '2015-04-02 22:32:58', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('4', '4', '2015-04-02 22:44:59', '2015-04-02 22:44:59', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('5', '5', '2015-04-03 01:12:31', '2015-04-03 01:12:31', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('6', '6', '2015-04-03 09:52:51', '2015-04-03 09:52:51', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('7', '7', '2015-04-03 15:04:20', '2015-04-03 15:04:20', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('8', '8', '2015-04-03 15:22:38', '2015-04-03 15:22:38', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('9', '9', '2015-04-03 21:39:34', '2015-04-03 21:39:34', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('10', '10', '2015-04-03 22:01:02', '2015-04-03 22:01:02', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('11', '11', '2015-04-03 22:08:13', '2015-04-03 22:08:13', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('12', '12', '2015-04-03 23:16:47', '2015-04-03 23:16:47', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('13', '13', '2015-04-03 23:52:25', '2015-04-03 23:52:25', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('14', '14', '2015-04-04 00:25:22', '2015-04-04 00:25:22', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('15', '15', '2015-04-04 01:47:47', '2015-04-04 01:47:47', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('16', '16', '2015-04-04 01:52:57', '2015-04-04 01:52:57', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('17', '17', '2015-04-04 18:28:46', '2015-04-04 18:28:46', '6', '0', '新建');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('1', '2', '2015-04-04 15:50:16', '2015-04-04 15:50:16', '6', '[{\"memo\":\"\",\"quantity\":111.45,\"style\":2}]', '19', '0', '新建', '4', 'resource.fuwei.com/images/sample/1427955494579图片1.png', '4', '冰岛毛正反针挂须围巾', 'FWA30003', '190*40+2*20CM F', '285', '3', 'FWA20002', 'resource.fuwei.com/images/sample/s/1427955494579图片1.png', 'resource.fuwei.com/images/sample/ss/1427955494579图片1.png', '11', '2', null, null);
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('2', null, '2015-04-04 18:09:44', '2015-04-04 18:57:31', '6', '[{\"memo\":\"\",\"quantity\":21,\"style\":1}]', '17', '0', '新建', '1', null, null, '23', '2', null, '0', null, null, null, null, '6', null, '15FL0002', '');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('3', '16', '2015-04-04 18:11:34', '2015-04-04 18:11:34', '6', '[{\"memo\":\"\",\"quantity\":1,\"style\":1}]', '17', '0', '新建', '7', 'resource.fuwei.com/images/sample/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', '9', '马海毛烫钻帽', 'FWA30019', '20W*27H', '69', '19', 'FWA20016', 'resource.fuwei.com/images/sample/s/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', 'resource.fuwei.com/images/sample/ss/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', '11', null, '15FL0003', null);
INSERT INTO `tb_gongxu` VALUES ('1', '2015-03-31 21:33:40', '机织', '2015-03-31 21:33:40', '9');
INSERT INTO `tb_gongxu` VALUES ('2', '2015-03-31 21:33:48', '锁口', '2015-03-31 21:33:48', '9');
INSERT INTO `tb_gongxu` VALUES ('3', '2015-03-31 21:33:58', '套口', '2015-03-31 21:33:58', '9');
INSERT INTO `tb_gongxu` VALUES ('4', '2015-03-31 21:34:10', '挂须', '2015-03-31 21:34:10', '9');
INSERT INTO `tb_gongxu` VALUES ('5', '2015-03-31 21:34:18', '整烫', '2015-03-31 21:34:18', '9');
INSERT INTO `tb_gongxu` VALUES ('6', '2015-03-31 21:34:25', '费用+后道', '2015-03-31 21:34:25', '9');
INSERT INTO `tb_gongxu` VALUES ('7', '2015-04-02 11:18:42', '套抽', '2015-04-02 11:18:42', '9');
INSERT INTO `tb_gongxu` VALUES ('8', '2015-04-02 11:18:47', '吊球', '2015-04-02 11:18:47', '9');
INSERT INTO `tb_gongxu` VALUES ('9', '2015-04-02 14:22:28', '衬里', '2015-04-02 14:22:28', '9');
INSERT INTO `tb_gongxu` VALUES ('10', '2015-04-02 14:22:38', '接指', '2015-04-02 14:22:38', '9');
INSERT INTO `tb_gongxu` VALUES ('11', '2015-04-02 14:22:45', '抽顶', '2015-04-02 14:22:45', '9');
INSERT INTO `tb_gongxu` VALUES ('12', '2015-04-03 00:32:43', '拷边', '2015-04-03 00:32:43', '9');
INSERT INTO `tb_gongxu` VALUES ('13', '2015-04-03 00:39:40', '球', '2015-04-03 00:39:40', '9');
INSERT INTO `tb_gongxu` VALUES ('14', '2015-04-04 00:18:06', '拉毛', '2015-04-04 00:18:06', '9');
INSERT INTO `tb_gongxu` VALUES ('15', '2015-04-04 00:20:43', '烫钻', '2015-04-04 00:20:43', '9');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('1', '1', '2015-03-31 21:48:39', '2015-03-31 21:48:39', '7', '[{\"color\":\"黑白色组\",\"colorsample\":\"\",\"material\":1}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('2', '2', '2015-04-02 22:09:03', '2015-04-02 22:09:03', '7', '[{\"color\":\"米色\",\"colorsample\":\"\",\"material\":4},{\"color\":\"藏青\",\"colorsample\":\"\",\"material\":4}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('3', '3', '2015-04-02 22:32:58', '2015-04-02 22:32:58', '7', '[{\"color\":\"米色\",\"colorsample\":\"\",\"material\":4},{\"color\":\"藏青\",\"colorsample\":\"\",\"material\":4}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('4', '4', '2015-04-02 22:44:59', '2015-04-02 22:44:59', '7', '[{\"color\":\"米色\",\"colorsample\":\"\",\"material\":4},{\"color\":\"米色\",\"colorsample\":\"\",\"material\":4},{\"color\":\"藏青\",\"colorsample\":\"\",\"material\":4},{\"color\":\"藏青\",\"colorsample\":\"\",\"material\":4}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('5', '5', '2015-04-03 01:12:31', '2015-04-03 01:12:31', '7', '[{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":9},{\"color\":\"深夹花灰\",\"colorsample\":\"\",\"material\":9}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('6', '6', '2015-04-03 09:52:51', '2015-04-03 09:52:51', '7', '[{\"color\":\"多色\",\"colorsample\":\"\",\"material\":15}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('7', '7', '2015-04-03 15:04:20', '2015-04-03 15:04:20', '7', '[{\"color\":\"深夹花灰\",\"colorsample\":\"\",\"material\":9},{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":9}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('8', '8', '2015-04-03 15:22:38', '2015-04-03 15:22:38', '7', '[{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":9},{\"color\":\"深夹花灰\",\"colorsample\":\"\",\"material\":9}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('9', '9', '2015-04-03 21:39:34', '2015-04-03 21:39:34', '7', '[{\"color\":\"深夹花灰\",\"colorsample\":\"\",\"material\":7},{\"color\":\"白色\",\"colorsample\":\"\",\"material\":6}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('10', '10', '2015-04-03 22:01:02', '2015-04-03 22:01:02', '7', '[{\"color\":\"QY米色\",\"colorsample\":\"\",\"material\":6},{\"color\":\"深夹花灰\",\"colorsample\":\"\",\"material\":7}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('11', '11', '2015-04-03 22:08:13', '2015-04-03 22:08:13', '7', '[{\"color\":\"米色\",\"colorsample\":\"\",\"material\":6},{\"color\":\"深夹花灰\",\"colorsample\":\"\",\"material\":7}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('12', '12', '2015-04-03 23:16:47', '2015-04-03 23:16:47', '7', '[{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":1},{\"color\":\"深夹花灰\",\"colorsample\":\"\",\"material\":1},{\"color\":\"暗红色\",\"colorsample\":\"\",\"material\":1}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('13', '13', '2015-04-03 23:52:25', '2015-04-03 23:52:25', '7', '[{\"color\":\"灰色\",\"colorsample\":\"\",\"material\":8}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('14', '14', '2015-04-04 00:25:22', '2015-04-04 00:25:22', '7', '[{\"color\":\"褐色\",\"colorsample\":\"\",\"material\":13},{\"color\":\"红棕色\",\"colorsample\":\"\",\"material\":13},{\"color\":\"旧粉色\",\"colorsample\":\"\",\"material\":13}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('15', '15', '2015-04-04 01:47:47', '2015-04-04 01:47:47', '7', '[{\"color\":\"白色\",\"colorsample\":\"\",\"material\":17}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('16', '16', '2015-04-04 01:52:57', '2015-04-04 01:52:57', '7', '[{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":9},{\"color\":\"米色\",\"colorsample\":\"\",\"material\":9}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('17', '17', '2015-04-04 18:28:46', '2015-04-04 18:28:46', '6', '[{\"color\":\"白色\",\"colorsample\":\"\",\"material\":1},{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":1}]', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('1', '1', '2015-03-31 21:48:39', '2015-03-31 21:48:39', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('2', '2', '2015-04-02 22:09:03', '2015-04-02 22:09:03', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('3', '3', '2015-04-02 22:32:58', '2015-04-02 22:32:58', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('4', '4', '2015-04-02 22:44:59', '2015-04-02 22:44:59', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('5', '5', '2015-04-03 01:12:31', '2015-04-03 01:12:31', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('6', '6', '2015-04-03 09:52:51', '2015-04-03 09:52:51', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('7', '7', '2015-04-03 15:04:20', '2015-04-03 15:04:20', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('8', '8', '2015-04-03 15:22:38', '2015-04-03 15:22:38', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('9', '9', '2015-04-03 21:39:34', '2015-04-03 21:39:34', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('10', '10', '2015-04-03 22:01:02', '2015-04-03 22:01:02', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('11', '11', '2015-04-03 22:08:13', '2015-04-03 22:08:13', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('12', '12', '2015-04-03 23:16:47', '2015-04-03 23:16:47', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('13', '13', '2015-04-03 23:52:25', '2015-04-03 23:52:25', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('14', '14', '2015-04-04 00:25:22', '2015-04-04 00:25:22', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('15', '15', '2015-04-04 01:47:47', '2015-04-04 01:47:47', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('16', '16', '2015-04-04 01:52:57', '2015-04-04 01:52:57', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('17', '17', '2015-04-04 18:28:46', '2015-04-04 18:28:46', '6', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('1', '1', '2015-03-31 21:48:39', '2015-03-31 21:48:39', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('2', '2', '2015-04-02 22:09:03', '2015-04-02 22:09:03', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('3', '3', '2015-04-02 22:32:58', '2015-04-02 22:32:58', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('4', '4', '2015-04-02 22:44:59', '2015-04-02 22:44:59', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('5', '5', '2015-04-03 01:12:31', '2015-04-03 01:12:31', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('6', '6', '2015-04-03 09:52:51', '2015-04-03 09:52:51', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('7', '7', '2015-04-03 15:04:20', '2015-04-03 15:04:20', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('8', '8', '2015-04-03 15:22:38', '2015-04-03 15:22:38', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('9', '9', '2015-04-03 21:39:34', '2015-04-03 21:39:34', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('10', '10', '2015-04-03 22:01:02', '2015-04-03 22:01:02', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('11', '11', '2015-04-03 22:08:13', '2015-04-03 22:08:13', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('12', '12', '2015-04-03 23:16:47', '2015-04-03 23:16:47', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('13', '13', '2015-04-03 23:52:25', '2015-04-03 23:52:25', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('14', '14', '2015-04-04 00:25:22', '2015-04-04 00:25:22', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('15', '15', '2015-04-04 01:47:47', '2015-04-04 01:47:47', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('16', '16', '2015-04-04 01:52:57', '2015-04-04 01:52:57', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('17', '17', '2015-04-04 18:28:46', '2015-04-04 18:28:46', '6', '0', '新建');
INSERT INTO `tb_material` VALUES ('1', '2015-03-31 21:23:41', '26s晴纶', '2015-03-31 21:23:41', '6');
INSERT INTO `tb_material` VALUES ('2', '2015-04-02 11:14:05', '0.85s冰岛毛', '2015-04-02 11:14:05', '9');
INSERT INTO `tb_material` VALUES ('3', '2015-04-02 11:14:14', '1.3s冰岛毛', '2015-04-02 11:14:14', '9');
INSERT INTO `tb_material` VALUES ('4', '2015-04-02 11:14:41', '1.5s冰岛毛', '2015-04-02 11:14:41', '9');
INSERT INTO `tb_material` VALUES ('5', '2015-04-02 11:14:46', '1.8s冰岛毛', '2015-04-02 11:14:46', '9');
INSERT INTO `tb_material` VALUES ('6', '2015-04-02 11:14:53', '2.5s冰岛毛', '2015-04-02 11:14:53', '9');
INSERT INTO `tb_material` VALUES ('7', '2015-04-02 11:15:57', '2.7s冰岛毛', '2015-04-02 11:15:57', '9');
INSERT INTO `tb_material` VALUES ('8', '2015-04-02 11:16:06', '3.2s冰岛毛', '2015-04-02 11:16:06', '9');
INSERT INTO `tb_material` VALUES ('9', '2015-04-02 11:16:12', '5.5s马海毛', '2015-04-02 11:16:12', '9');
INSERT INTO `tb_material` VALUES ('10', '2015-04-02 11:16:17', '9s马海毛', '2015-04-02 11:16:17', '9');
INSERT INTO `tb_material` VALUES ('11', '2015-04-02 11:16:23', '36s仿羊绒', '2015-04-02 11:16:23', '9');
INSERT INTO `tb_material` VALUES ('12', '2015-04-02 11:16:29', '32s夹花纱', '2015-04-02 11:16:29', '9');
INSERT INTO `tb_material` VALUES ('13', '2015-04-02 11:16:40', '48s仿羊绒', '2015-04-02 11:16:40', '9');
INSERT INTO `tb_material` VALUES ('14', '2015-04-02 11:16:46', '42s夹花纱', '2015-04-02 11:16:46', '9');
INSERT INTO `tb_material` VALUES ('15', '2015-04-03 00:28:45', '人造丝', '2015-04-03 00:28:45', '9');
INSERT INTO `tb_material` VALUES ('16', '2015-04-03 23:55:18', '6s尼龙羽毛纱', '2015-04-03 23:55:18', '9');
INSERT INTO `tb_material` VALUES ('17', '2015-04-04 00:11:35', '5.5s点子纱马海毛', '2015-04-04 00:11:35', '9');
INSERT INTO `tb_material` VALUES ('18', '2015-04-04 00:28:54', '成品染色', '2015-04-04 00:28:54', '9');
INSERT INTO `tb_materialpurchaseorder` VALUES ('1', '2', '2015-04-02 22:21:59', '2015-04-02 22:21:59', '7', '[{\"batch_number\":\"1\",\"material\":4,\"price\":1,\"quantity\":1360,\"scale\":\"1\"},{\"batch_number\":\"1\",\"material\":8,\"price\":1,\"quantity\":3,\"scale\":\"1\"}]', '2015-04-02 00:00:00', '19', '0', '新建', '4', 'resource.fuwei.com/images/sample/1427955494579图片1.png', '4', '冰岛毛正反针挂须围巾', 'FWA30003', '190*40+2*20CM F', '285', '3', 'FWA20002', 'resource.fuwei.com/images/sample/s/1427955494579图片1.png', 'resource.fuwei.com/images/sample/ss/1427955494579图片1.png', '11', '2', null, null);
INSERT INTO `tb_materialpurchaseorder` VALUES ('2', '3', '2015-04-02 22:33:53', '2015-04-02 22:33:53', '7', '[{\"batch_number\":\"1\",\"material\":4,\"price\":1,\"quantity\":381,\"scale\":\"381\"},{\"batch_number\":\"1\",\"material\":8,\"price\":1,\"quantity\":3,\"scale\":\"1\"}]', '2015-04-02 00:00:00', '19', '0', '新建', '4', 'resource.fuwei.com/images/sample/1427955562784图片1.png', '4', '冰岛毛正反针吊球帽', 'FWA30004', '24CMH *20CM', '66', '4', 'FWA20003', 'resource.fuwei.com/images/sample/s/1427955562784图片1.png', 'resource.fuwei.com/images/sample/ss/1427955562784图片1.png', '11', '2', null, null);
INSERT INTO `tb_materialpurchaseorder` VALUES ('3', '4', '2015-04-02 22:46:02', '2015-04-02 22:46:02', '7', '[{\"batch_number\":\"1\",\"material\":4,\"price\":1,\"quantity\":56,\"scale\":\"1\"},{\"batch_number\":\"1\",\"material\":8,\"price\":1,\"quantity\":1,\"scale\":\"1\"}]', '2015-04-02 00:00:00', '19', '0', '新建', '4', 'resource.fuwei.com/images/sample/1427955633832图片1.png', '4', '冰岛正反针包套', 'FWA30005', '24CM L *10CM W ，做为S/M码', '83', '5', 'FWA20004', 'resource.fuwei.com/images/sample/s/1427955633832图片1.png', 'resource.fuwei.com/images/sample/ss/1427955633832图片1.png', '11', '2', null, null);
INSERT INTO `tb_materialpurchaseorder` VALUES ('4', '9', '2015-04-03 21:40:22', '2015-04-03 21:40:22', '7', '[{\"batch_number\":\"1\",\"material\":6,\"price\":1,\"quantity\":525,\"scale\":\"1\"}]', '2015-04-03 00:00:00', '19', '0', '新建', '4', 'resource.fuwei.com/images/sample/1428066399895图片1.png', '6', '冰岛毛绞花毛球帽', 'FWA30014', '21*20CM', '123', '14', 'FWA20009', 'resource.fuwei.com/images/sample/s/1428066399895图片1.png', 'resource.fuwei.com/images/sample/ss/1428066399895图片1.png', '11', '3', null, null);
INSERT INTO `tb_materialpurchaseorder` VALUES ('5', '9', '2015-04-03 21:41:19', '2015-04-03 21:41:19', '7', '[{\"batch_number\":\"1\",\"material\":7,\"price\":1,\"quantity\":525,\"scale\":\"1\"}]', '2015-04-03 00:00:00', '23', '0', '新建', '4', 'resource.fuwei.com/images/sample/1428066399895图片1.png', '6', '冰岛毛绞花毛球帽', 'FWA30014', '21*20CM', '123', '14', 'FWA20009', 'resource.fuwei.com/images/sample/s/1428066399895图片1.png', 'resource.fuwei.com/images/sample/ss/1428066399895图片1.png', '11', '3', null, null);
INSERT INTO `tb_materialpurchaseorder` VALUES ('6', '10', '2015-04-03 22:02:28', '2015-04-03 22:02:28', '7', '[{\"batch_number\":\"1\",\"material\":6,\"price\":1,\"quantity\":178,\"scale\":\"1\"}]', '2015-04-03 00:00:00', '19', '0', '新建', '4', 'resource.fuwei.com/images/sample/1428068026985图片1.png', '6', '绞花包套', 'FWA30016', '25*9cm S/M', '114', '16', 'FWA20010', 'resource.fuwei.com/images/sample/s/1428068026985图片1.png', 'resource.fuwei.com/images/sample/ss/1428068026985图片1.png', '11', '3', null, null);
INSERT INTO `tb_materialpurchaseorder` VALUES ('7', '13', '2015-04-03 23:52:59', '2015-04-03 23:52:59', '7', '[{\"batch_number\":\"1\",\"material\":8,\"price\":1,\"quantity\":177,\"scale\":\"1\"}]', '2015-04-03 00:00:00', '19', '0', '新建', '1', 'resource.fuwei.com/images/sample/1427993082909Adoree loop SMS 8019 carbon solid.JPG', '8', '冰岛毛羽毛纱围脖', 'FWA30010', '33*2*27', '198', '10', 'FWA20013', 'resource.fuwei.com/images/sample/s/1427993082909Adoree loop SMS 8019 carbon solid.png', 'resource.fuwei.com/images/sample/ss/1427993082909Adoree loop SMS 8019 carbon solid.png', '8', '5', null, null);
INSERT INTO `tb_materialpurchaseorder` VALUES ('8', '14', '2015-04-04 00:26:20', '2015-04-04 00:26:20', '7', '[{\"batch_number\":\"1\",\"material\":13,\"price\":1,\"quantity\":50,\"scale\":\"1\"}]', '2015-04-04 00:00:00', '17', '0', '新建', '7', 'resource.fuwei.com/images/sample/14280778246358CD60DF79323473B3DE0139776CD3BEA.png', '13', '仿羊绒成品染色拉毛围脖', 'FWA30021', '40H*75W', '152', '21', 'FWA20014', 'resource.fuwei.com/images/sample/s/14280778246358CD60DF79323473B3DE0139776CD3BEA.png', 'resource.fuwei.com/images/sample/ss/14280778246358CD60DF79323473B3DE0139776CD3BEA.png', '11', null, null, null);
INSERT INTO `tb_materialpurchaseorder` VALUES ('9', null, '2015-04-04 18:10:26', '2015-04-04 18:10:26', '6', '[{\"material\":1,\"memo\":\"\",\"quantity\":1}]', null, '17', '0', '新建', '1', null, null, '1', '1', null, '0', null, null, null, null, '6', '1', '15CG0009', null);
INSERT INTO `tb_materialpurchaseorder` VALUES ('10', '17', '2015-04-04 18:52:20', '2015-04-04 18:52:36', '6', '[{\"material\":1,\"memo\":\"\",\"quantity\":123}]', null, '17', '0', '新建', '1', 'resource.fuwei.com/images/sample/1428138578423图片1.png', '2', '测试', 'FWA30023', '32额滴神', '0', '23', 'FWA20017', 'resource.fuwei.com/images/sample/s/1428138578423图片1.png', 'resource.fuwei.com/images/sample/ss/1428138578423图片1.png', '6', null, '15CG0010', 'EY015-03');
INSERT INTO `tb_message` VALUES ('1', '7', '9', 'order/tablelist?orderId=17&tab=producingorder', '请求划价', '订单 FWA20017 的<strong> 生产单 <strong> <strong>请求划价<strong>，点击打开链接', '2015-04-04 22:30:31', '');
INSERT INTO `tb_message` VALUES ('2', '7', '9', 'order/tablelist?orderId=17&tab=producingorder', '请求划价', '订单 FWA20017 的<strong> 生产单 <strong> <strong>请求划价<strong>，点击打开链接', '2015-04-04 22:31:00', '');
INSERT INTO `tb_message` VALUES ('3', '7', '9', 'order/tablelist?orderId=17&tab=producingorder', '请求划价', '订单 FWA20017 的<strong> 生产单 <strong> <strong>请求划价<strong>，点击打开链接', '2015-04-04 22:48:55', '');
INSERT INTO `tb_message` VALUES ('4', '7', '9', 'order/tablelist?orderId=17&tab=producingorder', '请求划价', '订单 FWA20017 的<strong> 生产单 <strong> <strong>请求划价<strong>，点击打开链接', '2015-04-04 23:02:28', '');
INSERT INTO `tb_message` VALUES ('5', '9', '7', 'order/tablelist?orderId=17&tab=producingorder', '完成划价', '订单 FWA20017 的<strong> 生产单 <strong> <strong>已完成划价<strong>，点击打开链接', '2015-04-04 23:02:37', '');
INSERT INTO `tb_message` VALUES ('6', '7', '9', 'order/tablelist?orderId=17&tab=producingorder', '请求划价', '订单 FWA20017 的<strong> 生产单 <strong> <strong>请求划价<strong>，点击打开链接', '2015-04-04 23:45:41', '');
INSERT INTO `tb_message` VALUES ('7', '7', '9', 'order/tablelist?orderId=17&tab=producingorder', '请求划价', '订单 FWA20017 的<strong> 生产单 <strong> <strong>请求划价<strong>，点击打开链接', '2015-04-04 23:59:28', '');
INSERT INTO `tb_message` VALUES ('8', '9', '7', 'order/tablelist?orderId=17&tab=producingorder', '完成划价', '订单 FWA20017 的<strong> 生产单 <strong> <strong>已完成划价<strong>，点击打开链接', '2015-04-05 00:00:27', '');
INSERT INTO `tb_message` VALUES ('9', '7', '9', 'order/tablelist?orderId=17&tab=producingorder', '请求划价', '订单 FWA20017 的<strong> 生产单 <strong> <strong>请求划价<strong>，点击打开链接', '2015-04-05 00:15:44', '');
INSERT INTO `tb_message` VALUES ('10', '7', '9', 'order/tablelist?orderId=17&tab=producingorder', '请求划价', '订单 FWA20017 的<strong> 生产单 <strong> <strong>请求划价<strong>，点击打开链接', '2015-04-05 00:22:39', '');
INSERT INTO `tb_order` VALUES ('1', '2015-03-31 21:48:39', '2015-03-31 21:48:39', '7', '1', '25830', '1', '待发货', '', '全晴格子披肩(471.0克)', '2015-03-09 00:00:00', '2015-04-20 00:00:00', null, 'FWA20001', '1', null, null, '33.441', '471*1.12*12*32÷ 1000=202.568+15=217.568\r\n8.229\r\n机织:66.000\r\n锁口:18.000\r\n套口:9.600\r\n挂须:20.400\r\n整烫:16.800\r\n费用+后道:18.000\r\n____________________________\r\n148.8+8.229\r\n=157.029*1.17\r\n=183.724+217.568\r\n=401.292÷12\r\n=33.441*1.17\r\n=39.126\r\n', 'resource.fuwei.com/images/sample/1427808371841QQ图片20150331211900.jpg', '1', '全晴格子披肩', 'FWA30001', '126*126 + 10*2', '471', '8', '1', '0', null, 'resource.fuwei.com/images/sample/s/1427808371841QQ图片20150331211900.png', 'resource.fuwei.com/images/sample/ss/1427808371841QQ图片20150331211900.png', '615', '[{\"color\":\"黑白色组\",\"id\":1,\"price\":42,\"quantity\":615,\"size\":\"126*126+10*2\",\"weight\":471,\"yarn\":1}]', '', '1', null);
INSERT INTO `tb_order` VALUES ('2', '2015-04-02 22:09:02', '2015-04-02 22:13:01', '7', '29', '47062.5', '1', '待发货', '', '冰岛毛正反针挂须围巾(285.0克)', '2015-02-27 00:00:00', '2015-07-30 00:00:00', null, 'FWA20002', '4', null, null, '0', '385*1.12*12*31÷ 1000=160.406+12=172.406\r\n6.727\r\n机织:36.000\r\n套口:6.000\r\n挂须:6.600\r\n机织:17.000\r\n____________________________\r\n65.6+6.727\r\n=72.327*1.17\r\n=84.623+172.406\r\n=257.029÷12\r\n=21.419*1.17\r\n=25.06\r\n', 'resource.fuwei.com/images/sample/1427955494579图片1.png', '4', '冰岛毛正反针挂须围巾', 'FWA30003', '190*40+2*20CM F', '285', '11', '3', '0', null, 'resource.fuwei.com/images/sample/s/1427955494579图片1.png', 'resource.fuwei.com/images/sample/ss/1427955494579图片1.png', '3750', '[{\"color\":\"米色\",\"id\":1,\"price\":25.1,\"quantity\":1875,\"size\":\"190*40+2*20cm\",\"weight\":385,\"yarn\":4},{\"color\":\"藏青\",\"id\":2,\"price\":25.1,\"quantity\":1875,\"size\":\"190*40+2*20cm\",\"weight\":385,\"yarn\":4}]', '', '2', null);
INSERT INTO `tb_order` VALUES ('3', '2015-04-02 22:32:58', '2015-04-02 22:32:58', '7', '29', '36320', '1', '待发货', '', '冰岛毛正反针吊球帽(66.0克)', '2015-02-27 00:00:00', '2015-07-30 00:00:00', null, 'FWA20003', '4', null, null, '6.391', '66*1.12*12*31÷ 1000=27.498+9=36.498\r\n1.153\r\n机织:12.000\r\n套抽:6.000\r\n吊球:1.800\r\n整烫:3.000\r\n费用+后道:10.400\r\n____________________________\r\n33.2+1.153\r\n=34.353*1.17\r\n=40.193+36.498\r\n=76.691÷12\r\n=6.391*1.2\r\n=7.669\r\n', 'resource.fuwei.com/images/sample/1427955562784图片1.png', '4', '冰岛毛正反针吊球帽', 'FWA30004', '24CMH *20CM', '66', '11', '4', '0', null, 'resource.fuwei.com/images/sample/s/1427955562784图片1.png', 'resource.fuwei.com/images/sample/ss/1427955562784图片1.png', '4540', '[{\"color\":\"米色\",\"id\":1,\"price\":8,\"quantity\":2270,\"size\":\"24H*20W\",\"weight\":66,\"yarn\":4},{\"color\":\"藏青\",\"id\":2,\"price\":8,\"quantity\":2270,\"size\":\"24H*20W\",\"weight\":66,\"yarn\":4}]', '', '2', null);
INSERT INTO `tb_order` VALUES ('4', '2015-04-02 22:44:59', '2015-04-02 22:44:59', '7', '29', '8580', '1', '待发货', '', '冰岛正反针包套(83.0克)', '2015-02-27 00:00:00', '2015-07-30 00:00:00', null, 'FWA20004', '4', null, null, '9.53', '83*1.1*12*31÷ 1000=33.964+9=42.964\r\n1.424\r\n机织:12.000\r\n套口:4.800\r\n抽顶:4.800\r\n接指:10.000\r\n衬里:15.000\r\n费用+后道:13.000\r\n____________________________\r\n59.6+1.424\r\n=61.024*1.17\r\n=71.398+42.964\r\n=114.362÷12\r\n=9.53*1.2\r\n=11.436\r\n', 'resource.fuwei.com/images/sample/1427955633832图片1.png', '4', '冰岛正反针包套', 'FWA30005', '24CM L *10CM W ，做为S/M码', '83', '11', '5', '0', null, 'resource.fuwei.com/images/sample/s/1427955633832图片1.png', 'resource.fuwei.com/images/sample/ss/1427955633832图片1.png', '780', '[{\"color\":\"米色\",\"id\":1,\"price\":11,\"quantity\":195,\"size\":\"S/M\",\"weight\":83,\"yarn\":4},{\"color\":\"米色\",\"id\":2,\"price\":11,\"quantity\":195,\"size\":\"M/L\",\"weight\":83,\"yarn\":4},{\"color\":\"藏青\",\"id\":3,\"price\":11,\"quantity\":195,\"size\":\"S/M\",\"weight\":83,\"yarn\":4},{\"color\":\"藏青\",\"id\":4,\"price\":11,\"quantity\":195,\"size\":\"M/L\",\"weight\":83,\"yarn\":4}]', '', '2', null);
INSERT INTO `tb_order` VALUES ('5', '2015-04-03 01:12:31', '2015-04-03 01:12:31', '7', '29', '81810', '1', '待发货', '', '马海毛挂须三角巾(247.0克)', '2015-03-16 00:00:00', '2015-06-30 00:00:00', null, 'FWA20005', '4', null, null, '0', '247*1.15*12*42÷ 1000=143.161+12=155.161\r\n4.431\r\n机织:36.000\r\n拷边:9.600\r\n挂须:28.800\r\n整烫:8.400\r\n费用+后道:12.000\r\n____________________________\r\n94.8+4.431\r\n=99.231*1.17\r\n=116.1+155.161\r\n=271.261÷12\r\n=22.605*1.2\r\n=27.126\r\n', 'resource.fuwei.com/images/sample/1427992528634图片1.png', '9', '马海毛挂须三角巾', 'FWA30007', '155*85+15cmf', '247', '11', '7', '0', null, 'resource.fuwei.com/images/sample/s/1427992528634图片1.png', 'resource.fuwei.com/images/sample/ss/1427992528634图片1.png', '3030', '[{\"color\":\"黑色\",\"id\":1,\"price\":27,\"quantity\":1515,\"size\":\"155*85+15cm\",\"weight\":247,\"yarn\":9},{\"color\":\"深夹花灰\",\"id\":2,\"price\":27,\"quantity\":1515,\"size\":\"155*85+15cmf\",\"weight\":247,\"yarn\":9}]', '', '2', null);
INSERT INTO `tb_order` VALUES ('6', '2015-04-03 09:52:51', '2015-04-03 09:52:51', '7', '27', '7200', '1', '待发货', '', '人造丝窄围巾(160.0克)', '2015-01-04 00:00:00', '2015-04-15 00:00:00', null, 'FWA20006', '1', null, null, '13.407', '160*1.15*12*35÷ 1000=77.28+12=89.28\r\n\r\n机织:36.000\r\n拷边:4.800\r\n整烫:9.600\r\n费用+后道:10.800\r\n____________________________\r\n61.2+0\r\n=61.2*1.17\r\n=71.604+89.28\r\n=160.884÷12\r\n=13.407*1.2\r\n=16.088\r\n', 'resource.fuwei.com/images/sample/1427992291553图片1.jpg', '15', '人造丝窄围巾', 'FWA30006', '12*300', '160', '8', '6', '0', null, 'resource.fuwei.com/images/sample/s/1427992291553图片1.png', 'resource.fuwei.com/images/sample/ss/1427992291553图片1.png', '375', '[{\"color\":\"多色\",\"id\":1,\"price\":19.2,\"quantity\":375,\"size\":\"12*300cm\",\"weight\":160,\"yarn\":15}]', '', '4', null);
INSERT INTO `tb_order` VALUES ('7', '2015-04-03 15:04:20', '2015-04-03 15:04:20', '7', '29', '99876', '1', '待发货', '', '马海毛毛球帽(85.0克)', '2015-03-13 00:00:00', '2015-06-30 00:00:00', null, 'FWA20007', '4', null, null, '9.729', '78*1.1*12*42÷ 1000=43.243+9=52.243\r\n1.338\r\n机织:14.400\r\n套抽:6.000\r\n球:18.000\r\n吊球:2.000\r\n整烫:3.000\r\n费用+后道:10.400\r\n____________________________\r\n53.8+1.338\r\n=55.138*1.17\r\n=64.511+52.243\r\n=116.754÷12\r\n=9.729*1.2\r\n=11.675\r\n', 'resource.fuwei.com/images/sample/1427992746746图片1.png', '9', '马海毛毛球帽', 'FWA30008', '22*22', '85', '11', '8', '0', null, 'resource.fuwei.com/images/sample/s/1427992746746图片1.png', 'resource.fuwei.com/images/sample/ss/1427992746746图片1.png', '8610', '[{\"color\":\"深夹花灰\",\"id\":1,\"price\":11.6,\"quantity\":8530,\"size\":\"22H*22W\",\"weight\":85,\"yarn\":9},{\"color\":\"黑色\",\"id\":2,\"price\":11.6,\"quantity\":80,\"size\":\"22H*22W\",\"weight\":85,\"yarn\":9}]', '', '3', null);
INSERT INTO `tb_order` VALUES ('8', '2015-04-03 15:22:38', '2015-04-03 15:22:38', '7', '29', '42240', '1', '待发货', '', '马海毛包套(80.0克)', '2015-03-13 00:00:00', '2015-06-30 00:00:00', null, 'FWA20008', '4', null, null, '10.625', '80*1.1*12*42÷ 1000=44.352+9=53.352\r\n1.373\r\n机织:14.400\r\n套口:4.800\r\n抽顶:4.800\r\n衬里:15.000\r\n接指:10.000\r\n整烫:5.000\r\n费用+后道:8.000\r\n____________________________\r\n62+1.373\r\n=63.373*1.17\r\n=74.146+53.352\r\n=127.498÷12\r\n=10.625*1.2\r\n=12.75\r\n', 'resource.fuwei.com/images/sample/1427992902609图片1.png', '9', '马海毛包套', 'FWA30009', 'S/M', '80', '11', '9', '0', null, 'resource.fuwei.com/images/sample/s/1427992902609图片1.png', 'resource.fuwei.com/images/sample/ss/1427992902609图片1.png', '3200', '[{\"color\":\"黑色\",\"id\":1,\"price\":13.2,\"quantity\":1650,\"size\":\"S/M\",\"weight\":80,\"yarn\":9},{\"color\":\"深夹花灰\",\"id\":2,\"price\":13.2,\"quantity\":1550,\"size\":\"S/M\",\"weight\":80,\"yarn\":9}]', '', '3', null);
INSERT INTO `tb_order` VALUES ('9', '2015-04-03 21:39:34', '2015-04-03 21:39:34', '7', '29', '118551', '1', '待发货', '', '冰岛毛绞花毛球帽(123.0克)', '2015-03-10 00:00:00', '2015-07-20 00:00:00', null, 'FWA20009', '4', null, null, '10.165', '110*1.1*12*31÷ 1000=45.012+9=54.012\r\n1.888\r\n机织:14.400\r\n套抽:6.000\r\n吊球:2.000\r\n球:20.400\r\n整烫:3.000\r\n费用+后道:10.400\r\n____________________________\r\n56.2+1.888\r\n=58.088*1.17\r\n=67.963+54.012\r\n=121.975÷12\r\n=10.165*1.2\r\n=12.198\r\n', 'resource.fuwei.com/images/sample/1428066399895图片1.png', '6', '冰岛毛绞花毛球帽', 'FWA30014', '21*20CM', '123', '11', '14', '0', null, 'resource.fuwei.com/images/sample/s/1428066399895图片1.png', 'resource.fuwei.com/images/sample/ss/1428066399895图片1.png', '9190', '[{\"color\":\"深夹花灰\",\"id\":1,\"price\":13.2,\"quantity\":4595,\"size\":\"21H*20W\",\"weight\":123,\"yarn\":7},{\"color\":\"白色\",\"id\":2,\"price\":12.6,\"quantity\":4595,\"size\":\"21H*20W\",\"weight\":123,\"yarn\":6}]', '', '3', null);
INSERT INTO `tb_order` VALUES ('10', '2015-04-03 22:01:02', '2015-04-03 22:01:02', '7', '29', '45591', '1', '待发货', '', '绞花包套(114.0克)', '2015-03-10 00:00:00', '2015-07-20 00:00:00', null, 'FWA20010', '4', null, null, '10.372', '100*1.1*12*31÷ 1000=40.92+9=49.92\r\n1.716\r\n机织:14.400\r\n套口:4.800\r\n抽顶:4.800\r\n接指:10.000\r\n衬里:15.000\r\n整烫:5.000\r\n费用+后道:8.000\r\n____________________________\r\n62+1.716\r\n=63.716*1.17\r\n=74.548+49.92\r\n=124.468÷12\r\n=10.372*1.2\r\n=12.446\r\n', 'resource.fuwei.com/images/sample/1428068026985图片1.png', '6', '绞花包套', 'FWA30016', '25*9cm S/M', '114', '11', '16', '0', null, 'resource.fuwei.com/images/sample/s/1428068026985图片1.png', 'resource.fuwei.com/images/sample/ss/1428068026985图片1.png', '3340', '[{\"color\":\"QY米色\",\"id\":1,\"price\":13.3,\"quantity\":1670,\"size\":\"S/M 25*9cm\",\"weight\":114,\"yarn\":6},{\"color\":\"深夹花灰\",\"id\":2,\"price\":14,\"quantity\":1670,\"size\":\"25*9cm S/M\",\"weight\":114,\"yarn\":7}]', '', '3', null);
INSERT INTO `tb_order` VALUES ('11', '2015-04-03 22:08:13', '2015-04-03 22:08:13', '7', '29', '133975', '1', '待发货', '', '绞花吊球围巾(338.0克)', '2015-03-10 00:00:00', '2015-07-30 00:00:00', null, 'FWA20011', '4', null, null, '22.444', '310*1.1*12*31÷ 1000=126.852+12=138.852\r\n5.32\r\n机织:38.400\r\n锁口:6.000\r\n球:40.800\r\n吊球:4.000\r\n整烫:5.000\r\n费用+后道:12.000\r\n____________________________\r\n106.2+5.32\r\n=111.52*1.17\r\n=130.478+138.852\r\n=269.33÷12\r\n=22.444*1.17\r\n=26.259\r\n', 'resource.fuwei.com/images/sample/1428067891295图片1.png', '6', '绞花吊球围巾', 'FWA30015', '180*20cm', '338', '11', '15', '0', null, 'resource.fuwei.com/images/sample/s/1428067891295图片1.png', 'resource.fuwei.com/images/sample/ss/1428067891295图片1.png', '4660', '[{\"color\":\"米色\",\"id\":1,\"price\":28,\"quantity\":2330,\"size\":\"180*20cm\",\"weight\":338,\"yarn\":6},{\"color\":\"深夹花灰\",\"id\":2,\"price\":29.5,\"quantity\":2330,\"size\":\"180*20cm\",\"weight\":338,\"yarn\":7}]', '', '3', null);
INSERT INTO `tb_order` VALUES ('12', '2015-04-03 23:16:47', '2015-04-03 23:16:47', '7', '29', '23349.5', '1', '待发货', '', '抽条翻边帽(63.0克)', '2015-03-10 00:00:00', '2015-06-20 00:00:00', null, 'FWA20012', '4', null, null, '5.412', '65*1.2*12*31÷ 1000=29.016+9=38.016\r\n1.217\r\n机织:3.600\r\n拷边:4.800\r\n整烫:3.000\r\n费用+后道:10.400\r\n____________________________\r\n21.8+1.217\r\n=23.017*1.17\r\n=26.93+38.016\r\n=64.946÷12\r\n=5.412*1.2\r\n=6.494\r\n', 'resource.fuwei.com/images/sample/1428073896025图片1.png', '1', '抽条翻边帽', 'FWA30018', '21H*20W', '63', '11', '18', '0', null, 'resource.fuwei.com/images/sample/s/1428073896025图片1.png', 'resource.fuwei.com/images/sample/ss/1428073896025图片1.png', '3100', '[{\"color\":\"黑色\",\"id\":1,\"price\":7.4,\"quantity\":1170,\"size\":\"21H*20W\",\"weight\":63,\"yarn\":1},{\"color\":\"深夹花灰\",\"id\":2,\"price\":7.75,\"quantity\":1170,\"size\":\"21H*20W\",\"weight\":63,\"yarn\":1},{\"color\":\"暗红色\",\"id\":3,\"price\":7.4,\"quantity\":760,\"size\":\"21H*20W\",\"weight\":63,\"yarn\":1}]', '', '3', null);
INSERT INTO `tb_order` VALUES ('13', '2015-04-03 23:52:25', '2015-04-03 23:52:25', '7', '12', '20196', '1', '待发货', '', '冰岛毛羽毛纱围脖(198.0克)', '2015-03-06 00:00:00', '2015-04-20 00:00:00', null, 'FWA20013', '1', null, null, '16.235', '材料1：162*1.1*12*31÷ 1000=66.29\r\n材料2：38*1.15*12*65÷ 1000=34.08\r\n66.29+34.08=100.37+10.8=111.17\r\n2.78+1.31=4.09\r\n机织:30.0\r\n套口:21.6\r\n整烫:5.0\r\n费用+后道:10.8\r\n____________________________\r\n67.4+4.09\r\n=71.49*1.17\r\n=83.64+111.17\r\n=194.82÷12\r\n=16.23*1.2\r\n=19.48\r\n', 'resource.fuwei.com/images/sample/1427993082909Adoree loop SMS 8019 carbon solid.JPG', '8', '冰岛毛羽毛纱围脖', 'FWA30010', '33*2*27', '198', '8', '10', '0', null, 'resource.fuwei.com/images/sample/s/1427993082909Adoree loop SMS 8019 carbon solid.png', 'resource.fuwei.com/images/sample/ss/1427993082909Adoree loop SMS 8019 carbon solid.png', '1020', '[{\"color\":\"灰色\",\"id\":1,\"price\":19.8,\"quantity\":1020,\"size\":\"32*2*27cm\",\"weight\":200,\"yarn\":8}]', '', '5', null);
INSERT INTO `tb_order` VALUES ('14', '2015-04-04 00:25:22', '2015-04-04 00:25:22', '7', '30', '4428', '1', '待发货', '', '仿羊绒成品染色拉毛围脖(152.0克)', '2015-03-26 00:00:00', '2015-05-04 00:00:00', null, 'FWA20014', '7', null, null, '13.513', '152*1.15*12*36÷ 1000=75.514+12=87.514\r\n\r\n机织:14.400\r\n拉毛:27.600\r\n拷边:4.800\r\n整烫:5.000\r\n费用+后道:12.000\r\n____________________________\r\n63.8+0\r\n=63.8*1.17\r\n=74.646+87.514\r\n=162.16÷12\r\n=13.513*1.2\r\n=16.216\r\n', 'resource.fuwei.com/images/sample/14280778246358CD60DF79323473B3DE0139776CD3BEA.png', '13', '仿羊绒成品染色拉毛围脖', 'FWA30021', '40H*75W', '152', '11', '21', '0', null, 'resource.fuwei.com/images/sample/s/14280778246358CD60DF79323473B3DE0139776CD3BEA.png', 'resource.fuwei.com/images/sample/ss/14280778246358CD60DF79323473B3DE0139776CD3BEA.png', '270', '[{\"color\":\"褐色\",\"id\":1,\"price\":16.4,\"quantity\":60,\"size\":\"40H*75W*2\",\"weight\":163,\"yarn\":13},{\"color\":\"红棕色\",\"id\":2,\"price\":16.4,\"quantity\":110,\"size\":\"40H*75W*2cm\",\"weight\":163,\"yarn\":13},{\"color\":\"旧粉色\",\"id\":3,\"price\":16.4,\"quantity\":100,\"size\":\"40H*75W*2\",\"weight\":163,\"yarn\":13}]', '', null, null);
INSERT INTO `tb_order` VALUES ('15', '2015-04-04 01:47:47', '2015-04-04 01:47:47', '7', '30', '960', '1', '待发货', '', '马海毛点子纱围脖(203.0克)', '2015-03-28 00:00:00', '2015-05-04 00:00:00', null, 'FWA20015', '7', null, null, '13.471', '203*1.1*12*38÷ 1000=101.825+12=113.825\r\n3.483\r\n机织:14.400\r\n套口:6.000\r\n整烫:5.000\r\n费用+后道:12.000\r\n____________________________\r\n37.4+3.483\r\n=40.883*1.17\r\n=47.833+113.825\r\n=161.658÷12\r\n=13.471*1.2\r\n=16.165\r\n', 'resource.fuwei.com/images/sample/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', '17', '马海毛点子纱围脖', 'FWA30020', '43H*75W', '203', '11', '20', '0', null, 'resource.fuwei.com/images/sample/s/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', 'resource.fuwei.com/images/sample/ss/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', '60', '[{\"color\":\"白色\",\"id\":1,\"price\":16,\"quantity\":60,\"size\":\"43*75*2cm\",\"weight\":203,\"yarn\":17}]', '', null, null);
INSERT INTO `tb_order` VALUES ('16', '2015-04-04 01:52:57', '2015-04-04 01:52:57', '7', '30', '1700', '1', '待发货', '', '马海毛烫钻帽(69.0克)', '2015-03-26 00:00:00', '2015-05-04 00:00:00', null, 'FWA20016', '7', null, null, '0', '70*1.1*12*34÷ 1000=31.416+9=40.416\r\n1.201\r\n机织:12.000\r\n套抽:6.000\r\n烫钻:24.000\r\n整烫:4.000\r\n费用+后道:10.400\r\n____________________________\r\n56.4+1.201\r\n=57.601*1.17\r\n=67.393+40.416\r\n=107.809÷12\r\n=8.984*1.2\r\n=10.781\r\n', 'resource.fuwei.com/images/sample/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', '9', '马海毛烫钻帽', 'FWA30019', '20W*27H', '69', '11', '19', '0', null, 'resource.fuwei.com/images/sample/s/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', 'resource.fuwei.com/images/sample/ss/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', '170', '[{\"color\":\"黑色\",\"id\":1,\"price\":10,\"quantity\":110,\"size\":\"20w*27h\",\"weight\":70,\"yarn\":9},{\"color\":\"米色\",\"id\":2,\"price\":10,\"quantity\":60,\"size\":\"20W*27H\",\"weight\":70,\"yarn\":9}]', '', null, null);
INSERT INTO `tb_order` VALUES ('17', '2015-04-04 18:28:46', '2015-04-04 18:28:46', '6', '27', '152000', '1', '待发货', '', '测试(122.0克)', '2015-04-04 00:00:00', '2015-06-04 00:00:00', null, 'FWA20017', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/1428138578423图片1.png', '2', '测试', 'FWA30023', '32额滴神', '122', '6', '23', '0', null, 'resource.fuwei.com/images/sample/s/1428138578423图片1.png', 'resource.fuwei.com/images/sample/ss/1428138578423图片1.png', '20000', '[{\"color\":\"白色\",\"id\":1,\"price\":8,\"quantity\":12000,\"size\":\"尺才vbb\",\"weight\":100,\"yarn\":1},{\"color\":\"黑色\",\"id\":2,\"price\":7,\"quantity\":8000,\"size\":\"cm\",\"weight\":100,\"yarn\":1}]', '', null, 'EY015-03');
INSERT INTO `tb_order_handle` VALUES ('1', '1', '创建订单', '1', '待发货', null, '7', '2015-03-31 21:48:39');
INSERT INTO `tb_order_handle` VALUES ('2', '2', '创建订单', '1', '待发货', null, '7', '2015-04-02 22:09:02');
INSERT INTO `tb_order_handle` VALUES ('3', '2', '修改订单', '0', null, null, '7', '2015-04-02 22:13:01');
INSERT INTO `tb_order_handle` VALUES ('4', '3', '创建订单', '1', '待发货', null, '7', '2015-04-02 22:32:58');
INSERT INTO `tb_order_handle` VALUES ('5', '4', '创建订单', '1', '待发货', null, '7', '2015-04-02 22:44:59');
INSERT INTO `tb_order_handle` VALUES ('6', '5', '创建订单', '1', '待发货', null, '7', '2015-04-03 01:12:31');
INSERT INTO `tb_order_handle` VALUES ('7', '6', '创建订单', '1', '待发货', null, '7', '2015-04-03 09:52:51');
INSERT INTO `tb_order_handle` VALUES ('8', '7', '创建订单', '1', '待发货', null, '7', '2015-04-03 15:04:20');
INSERT INTO `tb_order_handle` VALUES ('9', '8', '创建订单', '1', '待发货', null, '7', '2015-04-03 15:22:38');
INSERT INTO `tb_order_handle` VALUES ('10', '9', '创建订单', '1', '待发货', null, '7', '2015-04-03 21:39:34');
INSERT INTO `tb_order_handle` VALUES ('11', '10', '创建订单', '1', '待发货', null, '7', '2015-04-03 22:01:02');
INSERT INTO `tb_order_handle` VALUES ('12', '11', '创建订单', '1', '待发货', null, '7', '2015-04-03 22:08:13');
INSERT INTO `tb_order_handle` VALUES ('13', '12', '创建订单', '1', '待发货', null, '7', '2015-04-03 23:16:47');
INSERT INTO `tb_order_handle` VALUES ('14', '13', '创建订单', '1', '待发货', null, '7', '2015-04-03 23:52:25');
INSERT INTO `tb_order_handle` VALUES ('15', '14', '创建订单', '1', '待发货', null, '7', '2015-04-04 00:25:22');
INSERT INTO `tb_order_handle` VALUES ('16', '15', '创建订单', '1', '待发货', null, '7', '2015-04-04 01:47:47');
INSERT INTO `tb_order_handle` VALUES ('17', '16', '创建订单', '1', '待发货', null, '7', '2015-04-04 01:52:57');
INSERT INTO `tb_order_handle` VALUES ('18', '17', '创建订单', '1', '待发货', null, '6', '2015-04-04 18:28:46');
INSERT INTO `tb_planorder` VALUES ('1', '1', '2015-03-31 21:48:39', '2015-03-31 21:48:39', '7', '[{\"color\":\"黑白色组\",\"id\":1,\"price\":42,\"quantity\":615,\"size\":\"126*126+10*2\",\"weight\":471,\"yarn\":1}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('2', '2', '2015-04-02 22:09:02', '2015-04-02 22:09:02', '7', '[{\"color\":\"米色\",\"id\":1,\"price\":3,\"quantity\":1875,\"size\":\"190*40+2*20cm\",\"weight\":385,\"yarn\":4},{\"color\":\"藏青\",\"id\":2,\"price\":3,\"quantity\":1875,\"size\":\"190*40+2*20cm\",\"weight\":385,\"yarn\":4}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('3', '3', '2015-04-02 22:32:58', '2015-04-02 22:32:58', '7', '[{\"color\":\"米色\",\"id\":1,\"price\":8,\"quantity\":2270,\"size\":\"24H*20W\",\"weight\":66,\"yarn\":4},{\"color\":\"藏青\",\"id\":2,\"price\":8,\"quantity\":2270,\"size\":\"24H*20W\",\"weight\":66,\"yarn\":4}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('4', '4', '2015-04-02 22:44:59', '2015-04-02 22:44:59', '7', '[{\"color\":\"米色\",\"id\":1,\"price\":11,\"quantity\":195,\"size\":\"S/M\",\"weight\":83,\"yarn\":4},{\"color\":\"米色\",\"id\":2,\"price\":11,\"quantity\":195,\"size\":\"M/L\",\"weight\":83,\"yarn\":4},{\"color\":\"藏青\",\"id\":3,\"price\":11,\"quantity\":195,\"size\":\"S/M\",\"weight\":83,\"yarn\":4},{\"color\":\"藏青\",\"id\":4,\"price\":11,\"quantity\":195,\"size\":\"M/L\",\"weight\":83,\"yarn\":4}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('5', '5', '2015-04-03 01:12:31', '2015-04-03 01:12:31', '7', '[{\"color\":\"黑色\",\"id\":1,\"price\":27,\"quantity\":1515,\"size\":\"155*85+15cm\",\"weight\":247,\"yarn\":9},{\"color\":\"深夹花灰\",\"id\":2,\"price\":27,\"quantity\":1515,\"size\":\"155*85+15cmf\",\"weight\":247,\"yarn\":9}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('6', '6', '2015-04-03 09:52:51', '2015-04-03 16:50:53', '7', '[{\"color\":\"多色\",\"id\":1,\"price\":19.2,\"quantity\":375,\"size\":\"12*300cm\",\"weight\":160,\"yarn\":15}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('7', '7', '2015-04-03 15:04:20', '2015-04-03 15:04:20', '7', '[{\"color\":\"深夹花灰\",\"id\":1,\"price\":11.6,\"quantity\":8530,\"size\":\"22H*22W\",\"weight\":85,\"yarn\":9},{\"color\":\"黑色\",\"id\":2,\"price\":11.6,\"quantity\":80,\"size\":\"22H*22W\",\"weight\":85,\"yarn\":9}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('8', '8', '2015-04-03 15:22:38', '2015-04-03 15:22:38', '7', '[{\"color\":\"黑色\",\"id\":1,\"price\":13.2,\"quantity\":1650,\"size\":\"S/M\",\"weight\":80,\"yarn\":9},{\"color\":\"深夹花灰\",\"id\":2,\"price\":13.2,\"quantity\":1550,\"size\":\"S/M\",\"weight\":80,\"yarn\":9}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('9', '9', '2015-04-03 21:39:34', '2015-04-03 21:39:34', '7', '[{\"color\":\"深夹花灰\",\"id\":1,\"price\":13.2,\"quantity\":4595,\"size\":\"21H*20W\",\"weight\":123,\"yarn\":7},{\"color\":\"白色\",\"id\":2,\"price\":12.6,\"quantity\":4595,\"size\":\"21H*20W\",\"weight\":123,\"yarn\":6}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('10', '10', '2015-04-03 22:01:02', '2015-04-03 22:01:02', '7', '[{\"color\":\"QY米色\",\"id\":1,\"price\":13.3,\"quantity\":1670,\"size\":\"S/M 25*9cm\",\"weight\":114,\"yarn\":6},{\"color\":\"深夹花灰\",\"id\":2,\"price\":14,\"quantity\":1670,\"size\":\"25*9cm S/M\",\"weight\":114,\"yarn\":7}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('11', '11', '2015-04-03 22:08:13', '2015-04-03 22:08:13', '7', '[{\"color\":\"米色\",\"id\":1,\"price\":28,\"quantity\":2330,\"size\":\"180*20cm\",\"weight\":338,\"yarn\":6},{\"color\":\"深夹花灰\",\"id\":2,\"price\":29.5,\"quantity\":2330,\"size\":\"180*20cm\",\"weight\":338,\"yarn\":7}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('12', '12', '2015-04-03 23:16:47', '2015-04-03 23:16:47', '7', '[{\"color\":\"黑色\",\"id\":1,\"price\":7.4,\"quantity\":1170,\"size\":\"21H*20W\",\"weight\":63,\"yarn\":1},{\"color\":\"深夹花灰\",\"id\":2,\"price\":7.75,\"quantity\":1170,\"size\":\"21H*20W\",\"weight\":63,\"yarn\":1},{\"color\":\"暗红色\",\"id\":3,\"price\":7.4,\"quantity\":760,\"size\":\"21H*20W\",\"weight\":63,\"yarn\":1}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('13', '13', '2015-04-03 23:52:25', '2015-04-03 23:52:25', '7', '[{\"color\":\"灰色\",\"id\":1,\"price\":19.8,\"quantity\":1020,\"size\":\"32*2*27cm\",\"weight\":200,\"yarn\":8}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('14', '14', '2015-04-04 00:25:22', '2015-04-04 00:25:22', '7', '[{\"color\":\"褐色\",\"id\":1,\"price\":16.4,\"quantity\":60,\"size\":\"40H*75W*2\",\"weight\":163,\"yarn\":13},{\"color\":\"红棕色\",\"id\":2,\"price\":16.4,\"quantity\":110,\"size\":\"40H*75W*2cm\",\"weight\":163,\"yarn\":13},{\"color\":\"旧粉色\",\"id\":3,\"price\":16.4,\"quantity\":100,\"size\":\"40H*75W*2\",\"weight\":163,\"yarn\":13}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('15', '15', '2015-04-04 01:47:47', '2015-04-04 01:47:47', '7', '[{\"color\":\"白色\",\"id\":1,\"price\":16,\"quantity\":60,\"size\":\"43*75*2cm\",\"weight\":203,\"yarn\":17}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('16', '16', '2015-04-04 01:52:57', '2015-04-04 01:52:57', '7', '[{\"color\":\"黑色\",\"id\":1,\"price\":10,\"quantity\":110,\"size\":\"20w*27h\",\"weight\":70,\"yarn\":9},{\"color\":\"米色\",\"id\":2,\"price\":10,\"quantity\":60,\"size\":\"20W*27H\",\"weight\":70,\"yarn\":9}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('17', '17', '2015-04-04 18:28:46', '2015-04-04 18:28:46', '6', '[{\"color\":\"白色\",\"id\":1,\"price\":8,\"quantity\":12000,\"size\":\"尺才vbb\",\"weight\":100,\"yarn\":1},{\"color\":\"黑色\",\"id\":2,\"price\":7,\"quantity\":8000,\"size\":\"cm\",\"weight\":100,\"yarn\":1}]', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('1', '1', '2015-04-01 20:22:48', '2015-04-01 20:22:48', '7', '[{\"color\":\"黑白色组\",\"planOrderDetailId\":1,\"price\":5,\"quantity\":615,\"size\":\"126*126+10*2\",\"weight\":471,\"yarn\":1}]', '[{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":1,\"quantity\":162},{\"color\":\"白色\",\"colorsample\":\"\",\"material\":1,\"quantity\":145}]', '1', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('2', '2', '2015-04-02 22:14:57', '2015-04-02 22:14:57', '7', '[{\"color\":\"米色\",\"planOrderDetailId\":1,\"price\":3,\"quantity\":1875,\"size\":\"190*40+2*20cm\",\"weight\":385,\"yarn\":4},{\"color\":\"藏青\",\"planOrderDetailId\":2,\"price\":3,\"quantity\":1875,\"size\":\"190*40+2*20cm\",\"weight\":385,\"yarn\":4}]', '[{\"color\":\"米色\",\"colorsample\":\"\",\"material\":4,\"quantity\":680},{\"color\":\"藏青\",\"colorsample\":\"\",\"material\":4,\"quantity\":680}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('3', '3', '2015-04-02 22:35:43', '2015-04-02 22:35:43', '7', '[{\"color\":\"米色\",\"planOrderDetailId\":1,\"price\":0.7,\"quantity\":2270,\"size\":\"24H*20W\",\"weight\":66,\"yarn\":4},{\"color\":\"藏青\",\"planOrderDetailId\":2,\"price\":0.7,\"quantity\":2270,\"size\":\"24H*20W\",\"weight\":66,\"yarn\":4}]', '[{\"color\":\"米色\",\"colorsample\":\"\",\"material\":4,\"quantity\":166},{\"color\":\"藏青\",\"colorsample\":\"\",\"material\":4,\"quantity\":166}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('4', '4', '2015-04-02 22:47:36', '2015-04-02 22:47:36', '7', '[{\"color\":\"米色\",\"planOrderDetailId\":1,\"price\":1,\"quantity\":195,\"size\":\"S/M\",\"weight\":83,\"yarn\":4},{\"color\":\"米色\",\"planOrderDetailId\":2,\"price\":1,\"quantity\":195,\"size\":\"M/L\",\"weight\":83,\"yarn\":4},{\"color\":\"藏青\",\"planOrderDetailId\":3,\"price\":1,\"quantity\":195,\"size\":\"S/M\",\"weight\":83,\"yarn\":4},{\"color\":\"藏青\",\"planOrderDetailId\":4,\"price\":1,\"quantity\":195,\"size\":\"M/L\",\"weight\":83,\"yarn\":4}]', '[{\"color\":\"米色\",\"colorsample\":\"\",\"material\":4,\"quantity\":25},{\"color\":\"藏青\",\"colorsample\":\"\",\"material\":4,\"quantity\":25}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('6', '5', '2015-04-03 14:33:55', '2015-04-03 14:33:55', '9', '[{\"color\":\"黑色\",\"planOrderDetailId\":1,\"price\":2.4,\"quantity\":1515,\"size\":\"155*85+15cm\",\"weight\":247,\"yarn\":9},{\"color\":\"深夹花灰\",\"planOrderDetailId\":2,\"price\":2.4,\"quantity\":1515,\"size\":\"155*85+15cmf\",\"weight\":247,\"yarn\":9}]', '[{\"color\":\"QY113-黑色\",\"colorsample\":\"\",\"material\":9,\"quantity\":390},{\"color\":\"深夹花灰\",\"colorsample\":\"\",\"material\":9,\"quantity\":390}]', '6', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('7', '8', '2015-04-03 16:07:15', '2015-04-03 16:07:15', '7', '[{\"color\":\"黑色\",\"planOrderDetailId\":1,\"price\":1,\"quantity\":1650,\"size\":\"S/M\",\"weight\":80,\"yarn\":9},{\"color\":\"深夹花灰\",\"planOrderDetailId\":2,\"price\":1,\"quantity\":1550,\"size\":\"S/M\",\"weight\":80,\"yarn\":9}]', '[{\"color\":\"QY106-黑色\",\"colorsample\":\"\",\"material\":9,\"quantity\":98},{\"color\":\"深夹花灰\",\"colorsample\":\"\",\"material\":9,\"quantity\":92}]', '6', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('8', '7', '2015-04-03 16:12:01', '2015-04-03 16:12:01', '7', '[{\"color\":\"深夹花灰\",\"planOrderDetailId\":1,\"price\":0.8,\"quantity\":8530,\"size\":\"22H*22W\",\"weight\":85,\"yarn\":9},{\"color\":\"黑色\",\"planOrderDetailId\":2,\"price\":0.8,\"quantity\":80,\"size\":\"22H*22W\",\"weight\":85,\"yarn\":9}]', '[{\"color\":\"深夹花灰\",\"colorsample\":\"\",\"material\":9,\"quantity\":617},{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":9,\"quantity\":6}]', '6', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('9', '6', '2015-04-03 20:49:41', '2015-04-03 20:49:41', '9', '[{\"color\":\"多色\",\"planOrderDetailId\":1,\"price\":1.8,\"quantity\":375,\"size\":\"12*300cm\",\"weight\":160,\"yarn\":15}]', '[{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":15,\"quantity\":18},{\"color\":\"藏青\",\"colorsample\":\"\",\"material\":15,\"quantity\":17},{\"color\":\"桔色\",\"colorsample\":\"\",\"material\":15,\"quantity\":6},{\"color\":\"金丝\",\"colorsample\":\"\",\"material\":15,\"quantity\":3.5}]', '9', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('10', '9', '2015-04-03 21:51:45', '2015-04-03 21:51:45', '7', '[{\"color\":\"深夹花灰\",\"planOrderDetailId\":1,\"price\":0.9,\"quantity\":4595,\"size\":\"21H*20W\",\"weight\":123,\"yarn\":7},{\"color\":\"白色\",\"planOrderDetailId\":2,\"price\":0.9,\"quantity\":4595,\"size\":\"21H*20W\",\"weight\":123,\"yarn\":6}]', '[{\"color\":\"QY102米白\",\"colorsample\":\"\",\"material\":6,\"quantity\":522},{\"color\":\"深夹花灰\",\"colorsample\":\"\",\"material\":7,\"quantity\":522}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('11', '10', '2015-04-03 22:03:13', '2015-04-03 22:03:13', '7', '[{\"color\":\"QY米色\",\"planOrderDetailId\":1,\"price\":1,\"quantity\":1670,\"size\":\"S/M 25*9cm\",\"weight\":114,\"yarn\":6},{\"color\":\"深夹花灰\",\"planOrderDetailId\":2,\"price\":1,\"quantity\":1670,\"size\":\"25*9cm S/M\",\"weight\":114,\"yarn\":7}]', '[{\"color\":\"QY米色\",\"colorsample\":\"\",\"material\":6,\"quantity\":164},{\"color\":\"深夹花灰\",\"colorsample\":\"\",\"material\":7,\"quantity\":164}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('12', '11', '2015-04-03 22:15:09', '2015-04-03 22:15:09', '7', '[{\"color\":\"米色\",\"planOrderDetailId\":1,\"price\":2.5,\"quantity\":2330,\"size\":\"180*20cm\",\"weight\":338,\"yarn\":6},{\"color\":\"深夹花灰\",\"planOrderDetailId\":2,\"price\":2.5,\"quantity\":2330,\"size\":\"180*20cm\",\"weight\":338,\"yarn\":7}]', '[{\"color\":\"QY米色\",\"colorsample\":\"\",\"material\":6,\"quantity\":763},{\"color\":\"深夹花灰\",\"colorsample\":\"\",\"material\":7,\"quantity\":763}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('13', '12', '2015-04-03 23:19:43', '2015-04-03 23:19:43', '7', '[{\"color\":\"黑色\",\"planOrderDetailId\":1,\"price\":0.25,\"quantity\":1170,\"size\":\"21H*20W\",\"weight\":63,\"yarn\":1},{\"color\":\"深夹花灰\",\"planOrderDetailId\":2,\"price\":0.25,\"quantity\":1170,\"size\":\"21H*20W\",\"weight\":63,\"yarn\":1},{\"color\":\"暗红色\",\"planOrderDetailId\":3,\"price\":0.25,\"quantity\":760,\"size\":\"21H*20W\",\"weight\":63,\"yarn\":1}]', '[{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":1,\"quantity\":94},{\"color\":\"深夹花灰\",\"colorsample\":\"\",\"material\":1,\"quantity\":94},{\"color\":\"暗红色\",\"colorsample\":\"\",\"material\":1,\"quantity\":60}]', '22', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('14', '13', '2015-04-03 23:57:02', '2015-04-03 23:57:02', '7', '[{\"color\":\"灰色\",\"planOrderDetailId\":1,\"price\":2,\"quantity\":1020,\"size\":\"32*2*27cm\",\"weight\":200,\"yarn\":8}]', '[{\"color\":\"ICHI-灰色\",\"colorsample\":\"\",\"material\":8,\"quantity\":175},{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":16,\"quantity\":45}]', '7', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('15', '14', '2015-04-04 00:26:59', '2015-04-04 00:26:59', '7', '[{\"color\":\"褐色\",\"planOrderDetailId\":1,\"price\":1.2,\"quantity\":60,\"size\":\"40H*75W*2\",\"weight\":163,\"yarn\":13},{\"color\":\"红棕色\",\"planOrderDetailId\":2,\"price\":1.2,\"quantity\":110,\"size\":\"40H*75W*2cm\",\"weight\":163,\"yarn\":13},{\"color\":\"旧粉色\",\"planOrderDetailId\":3,\"price\":1.2,\"quantity\":100,\"size\":\"40H*75W*2\",\"weight\":163,\"yarn\":13}]', '[{\"color\":\"白胚\",\"colorsample\":\"\",\"material\":13,\"quantity\":50}]', '10', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('16', '15', '2015-04-04 01:50:02', '2015-04-04 01:50:02', '7', '[{\"color\":\"白色\",\"planOrderDetailId\":1,\"price\":1,\"quantity\":60,\"size\":\"43*75*2cm\",\"weight\":203,\"yarn\":17}]', '[{\"color\":\"本白\",\"colorsample\":\"\",\"material\":9,\"quantity\":10},{\"color\":\"白色组\",\"colorsample\":\"\",\"material\":17,\"quantity\":6}]', '30', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('17', '16', '2015-04-04 01:54:31', '2015-04-04 01:54:31', '7', '[{\"color\":\"黑色\",\"planOrderDetailId\":1,\"price\":0.8,\"quantity\":110,\"size\":\"20w*27h\",\"weight\":70,\"yarn\":9},{\"color\":\"米色\",\"planOrderDetailId\":2,\"price\":0.8,\"quantity\":60,\"size\":\"20W*27H\",\"weight\":70,\"yarn\":9}]', '[{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":9,\"quantity\":10},{\"color\":\"米色\",\"colorsample\":\"\",\"material\":9,\"quantity\":5}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('18', '16', '2015-04-04 16:39:51', '2015-04-04 16:39:51', '6', '[{\"color\":\"黑色\",\"planOrderDetailId\":1,\"price\":0,\"quantity\":0,\"size\":\"20w*27h\",\"weight\":70,\"yarn\":9},{\"color\":\"米色\",\"planOrderDetailId\":2,\"price\":0,\"quantity\":0,\"size\":\"20W*27H\",\"weight\":70,\"yarn\":9}]', '[{\"color\":\"1ffd\",\"colorsample\":\"\",\"material\":2,\"quantity\":11}]', '4', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('19', '17', '2015-04-04 20:27:40', '2015-04-05 00:00:22', '9', '[{\"color\":\"白色\",\"planOrderDetailId\":1,\"price\":4.5,\"quantity\":123,\"size\":\"尺才vbb\",\"weight\":100,\"yarn\":1},{\"color\":\"黑色\",\"planOrderDetailId\":2,\"price\":5.1,\"quantity\":8000,\"size\":\"cm\",\"weight\":100,\"yarn\":1}]', '[{\"color\":\"gff\",\"colorsample\":\"\",\"material\":1,\"quantity\":1288}]', '1', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('1', '1', '2015-03-31 21:48:39', '2015-03-31 21:48:39', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('2', '2', '2015-04-02 22:09:02', '2015-04-02 22:09:02', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('3', '3', '2015-04-02 22:32:58', '2015-04-02 22:32:58', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('4', '4', '2015-04-02 22:44:59', '2015-04-02 22:44:59', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('5', '5', '2015-04-03 01:12:31', '2015-04-03 01:12:31', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('6', '6', '2015-04-03 09:52:51', '2015-04-03 09:52:51', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('7', '7', '2015-04-03 15:04:20', '2015-04-03 15:04:20', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('8', '8', '2015-04-03 15:22:38', '2015-04-03 15:22:38', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('9', '9', '2015-04-03 21:39:34', '2015-04-03 21:39:34', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('10', '10', '2015-04-03 22:01:02', '2015-04-03 22:01:02', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('11', '11', '2015-04-03 22:08:13', '2015-04-03 22:08:13', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('12', '12', '2015-04-03 23:16:47', '2015-04-03 23:16:47', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('13', '13', '2015-04-03 23:52:25', '2015-04-03 23:52:25', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('14', '14', '2015-04-04 00:25:22', '2015-04-04 00:25:22', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('15', '15', '2015-04-04 01:47:47', '2015-04-04 01:47:47', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('16', '16', '2015-04-04 01:52:57', '2015-04-04 01:52:57', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('17', '17', '2015-04-04 18:28:46', '2015-04-04 18:28:46', '6', '0', '新建');
INSERT INTO `tb_quoteprice` VALUES ('1', '2015-04-05 01:10:51', '', '1', '28', '23', '2015-04-05 01:10:51', '9', '1');
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
INSERT INTO `tb_role_authority` VALUES ('3287', '6', '2', '25');
INSERT INTO `tb_role_authority` VALUES ('3288', '6', '2', '26');
INSERT INTO `tb_role_authority` VALUES ('3289', '6', '2', '28');
INSERT INTO `tb_role_authority` VALUES ('3290', '6', '2', '29');
INSERT INTO `tb_role_authority` VALUES ('3291', '6', '2', '31');
INSERT INTO `tb_role_authority` VALUES ('3292', '6', '2', '51');
INSERT INTO `tb_role_authority` VALUES ('3293', '6', '2', '52');
INSERT INTO `tb_role_authority` VALUES ('3294', '6', '2', '53');
INSERT INTO `tb_role_authority` VALUES ('3295', '6', '2', '54');
INSERT INTO `tb_role_authority` VALUES ('3296', '6', '2', '55');
INSERT INTO `tb_role_authority` VALUES ('3297', '6', '2', '56');
INSERT INTO `tb_role_authority` VALUES ('3298', '6', '2', '57');
INSERT INTO `tb_role_authority` VALUES ('3299', '6', '2', '75');
INSERT INTO `tb_role_authority` VALUES ('3300', '6', '2', '76');
INSERT INTO `tb_role_authority` VALUES ('3301', '6', '2', '77');
INSERT INTO `tb_role_authority` VALUES ('3302', '6', '2', '134');
INSERT INTO `tb_role_authority` VALUES ('3303', '6', '2', '139');
INSERT INTO `tb_role_authority` VALUES ('3304', '6', '2', '78');
INSERT INTO `tb_role_authority` VALUES ('3305', '6', '2', '79');
INSERT INTO `tb_role_authority` VALUES ('3306', '6', '2', '80');
INSERT INTO `tb_role_authority` VALUES ('3307', '6', '2', '81');
INSERT INTO `tb_role_authority` VALUES ('3308', '6', '2', '82');
INSERT INTO `tb_role_authority` VALUES ('3309', '6', '2', '83');
INSERT INTO `tb_role_authority` VALUES ('3310', '6', '2', '84');
INSERT INTO `tb_role_authority` VALUES ('3311', '6', '2', '85');
INSERT INTO `tb_role_authority` VALUES ('3312', '6', '2', '86');
INSERT INTO `tb_role_authority` VALUES ('3313', '6', '2', '88');
INSERT INTO `tb_role_authority` VALUES ('3314', '6', '2', '107');
INSERT INTO `tb_role_authority` VALUES ('3315', '6', '2', '108');
INSERT INTO `tb_role_authority` VALUES ('3316', '6', '2', '109');
INSERT INTO `tb_role_authority` VALUES ('3317', '6', '2', '111');
INSERT INTO `tb_role_authority` VALUES ('3318', '6', '2', '124');
INSERT INTO `tb_role_authority` VALUES ('3319', '6', '2', '112');
INSERT INTO `tb_role_authority` VALUES ('3320', '6', '2', '113');
INSERT INTO `tb_role_authority` VALUES ('3321', '6', '2', '114');
INSERT INTO `tb_role_authority` VALUES ('3322', '6', '2', '116');
INSERT INTO `tb_role_authority` VALUES ('3323', '6', '2', '123');
INSERT INTO `tb_role_authority` VALUES ('3324', '6', '2', '117');
INSERT INTO `tb_role_authority` VALUES ('3325', '6', '2', '118');
INSERT INTO `tb_role_authority` VALUES ('3326', '6', '2', '119');
INSERT INTO `tb_role_authority` VALUES ('3327', '6', '2', '121');
INSERT INTO `tb_role_authority` VALUES ('3328', '6', '2', '122');
INSERT INTO `tb_role_authority` VALUES ('3329', '6', '4', '1');
INSERT INTO `tb_role_authority` VALUES ('3330', '6', '4', '2');
INSERT INTO `tb_role_authority` VALUES ('3331', '6', '4', '3');
INSERT INTO `tb_role_authority` VALUES ('3332', '6', '4', '4');
INSERT INTO `tb_role_authority` VALUES ('3333', '6', '4', '5');
INSERT INTO `tb_role_authority` VALUES ('3334', '6', '4', '6');
INSERT INTO `tb_role_authority` VALUES ('3335', '6', '4', '7');
INSERT INTO `tb_role_authority` VALUES ('3336', '6', '4', '8');
INSERT INTO `tb_role_authority` VALUES ('3337', '6', '4', '9');
INSERT INTO `tb_role_authority` VALUES ('3338', '6', '4', '49');
INSERT INTO `tb_role_authority` VALUES ('3339', '6', '4', '50');
INSERT INTO `tb_role_authority` VALUES ('3340', '6', '4', '10');
INSERT INTO `tb_role_authority` VALUES ('3341', '6', '4', '11');
INSERT INTO `tb_role_authority` VALUES ('3342', '6', '4', '12');
INSERT INTO `tb_role_authority` VALUES ('3343', '6', '4', '13');
INSERT INTO `tb_role_authority` VALUES ('3344', '6', '4', '14');
INSERT INTO `tb_role_authority` VALUES ('3345', '6', '4', '15');
INSERT INTO `tb_role_authority` VALUES ('3346', '6', '4', '16');
INSERT INTO `tb_role_authority` VALUES ('3347', '6', '4', '17');
INSERT INTO `tb_role_authority` VALUES ('3348', '6', '4', '18');
INSERT INTO `tb_role_authority` VALUES ('3349', '6', '4', '19');
INSERT INTO `tb_role_authority` VALUES ('3350', '6', '4', '20');
INSERT INTO `tb_role_authority` VALUES ('3351', '6', '4', '21');
INSERT INTO `tb_role_authority` VALUES ('3352', '6', '4', '22');
INSERT INTO `tb_role_authority` VALUES ('3353', '6', '4', '23');
INSERT INTO `tb_role_authority` VALUES ('3354', '6', '4', '24');
INSERT INTO `tb_role_authority` VALUES ('3355', '6', '4', '65');
INSERT INTO `tb_role_authority` VALUES ('3356', '6', '4', '66');
INSERT INTO `tb_role_authority` VALUES ('3357', '6', '4', '67');
INSERT INTO `tb_role_authority` VALUES ('3358', '6', '4', '68');
INSERT INTO `tb_role_authority` VALUES ('3359', '6', '4', '69');
INSERT INTO `tb_role_authority` VALUES ('3360', '6', '4', '102');
INSERT INTO `tb_role_authority` VALUES ('3361', '6', '4', '103');
INSERT INTO `tb_role_authority` VALUES ('3362', '6', '4', '104');
INSERT INTO `tb_role_authority` VALUES ('3363', '6', '4', '105');
INSERT INTO `tb_role_authority` VALUES ('3364', '6', '4', '106');
INSERT INTO `tb_role_authority` VALUES ('3365', '6', '4', '125');
INSERT INTO `tb_role_authority` VALUES ('3366', '6', '4', '126');
INSERT INTO `tb_role_authority` VALUES ('3367', '6', '4', '127');
INSERT INTO `tb_role_authority` VALUES ('3368', '6', '4', '128');
INSERT INTO `tb_role_authority` VALUES ('3369', '6', '4', '129');
INSERT INTO `tb_role_authority` VALUES ('3370', '6', '4', '130');
INSERT INTO `tb_role_authority` VALUES ('3371', '6', '4', '131');
INSERT INTO `tb_role_authority` VALUES ('3372', '6', '4', '132');
INSERT INTO `tb_role_authority` VALUES ('3373', '6', '4', '133');
INSERT INTO `tb_role_authority` VALUES ('3374', '6', '4', '25');
INSERT INTO `tb_role_authority` VALUES ('3375', '6', '4', '26');
INSERT INTO `tb_role_authority` VALUES ('3376', '6', '4', '27');
INSERT INTO `tb_role_authority` VALUES ('3377', '6', '4', '28');
INSERT INTO `tb_role_authority` VALUES ('3378', '6', '4', '29');
INSERT INTO `tb_role_authority` VALUES ('3379', '6', '4', '30');
INSERT INTO `tb_role_authority` VALUES ('3380', '6', '4', '31');
INSERT INTO `tb_role_authority` VALUES ('3381', '6', '4', '51');
INSERT INTO `tb_role_authority` VALUES ('3382', '6', '4', '32');
INSERT INTO `tb_role_authority` VALUES ('3383', '6', '4', '33');
INSERT INTO `tb_role_authority` VALUES ('3384', '6', '4', '34');
INSERT INTO `tb_role_authority` VALUES ('3385', '6', '4', '35');
INSERT INTO `tb_role_authority` VALUES ('3386', '6', '4', '36');
INSERT INTO `tb_role_authority` VALUES ('3387', '6', '4', '37');
INSERT INTO `tb_role_authority` VALUES ('3388', '6', '4', '38');
INSERT INTO `tb_role_authority` VALUES ('3389', '6', '4', '39');
INSERT INTO `tb_role_authority` VALUES ('3390', '6', '4', '40');
INSERT INTO `tb_role_authority` VALUES ('3391', '6', '4', '41');
INSERT INTO `tb_role_authority` VALUES ('3392', '6', '4', '42');
INSERT INTO `tb_role_authority` VALUES ('3393', '6', '4', '43');
INSERT INTO `tb_role_authority` VALUES ('3394', '6', '4', '48');
INSERT INTO `tb_role_authority` VALUES ('3395', '6', '4', '44');
INSERT INTO `tb_role_authority` VALUES ('3396', '6', '4', '45');
INSERT INTO `tb_role_authority` VALUES ('3397', '6', '4', '46');
INSERT INTO `tb_role_authority` VALUES ('3398', '6', '4', '47');
INSERT INTO `tb_role_authority` VALUES ('3399', '6', '4', '52');
INSERT INTO `tb_role_authority` VALUES ('3400', '6', '4', '53');
INSERT INTO `tb_role_authority` VALUES ('3401', '6', '4', '54');
INSERT INTO `tb_role_authority` VALUES ('3402', '6', '4', '55');
INSERT INTO `tb_role_authority` VALUES ('3403', '6', '4', '56');
INSERT INTO `tb_role_authority` VALUES ('3404', '6', '4', '57');
INSERT INTO `tb_role_authority` VALUES ('3405', '6', '4', '58');
INSERT INTO `tb_role_authority` VALUES ('3406', '6', '4', '59');
INSERT INTO `tb_role_authority` VALUES ('3407', '6', '4', '60');
INSERT INTO `tb_role_authority` VALUES ('3408', '6', '4', '61');
INSERT INTO `tb_role_authority` VALUES ('3409', '6', '4', '62');
INSERT INTO `tb_role_authority` VALUES ('3410', '6', '4', '63');
INSERT INTO `tb_role_authority` VALUES ('3411', '6', '4', '75');
INSERT INTO `tb_role_authority` VALUES ('3412', '6', '4', '76');
INSERT INTO `tb_role_authority` VALUES ('3413', '6', '4', '77');
INSERT INTO `tb_role_authority` VALUES ('3414', '6', '4', '134');
INSERT INTO `tb_role_authority` VALUES ('3415', '6', '4', '138');
INSERT INTO `tb_role_authority` VALUES ('3416', '6', '4', '78');
INSERT INTO `tb_role_authority` VALUES ('3417', '6', '4', '79');
INSERT INTO `tb_role_authority` VALUES ('3418', '6', '4', '80');
INSERT INTO `tb_role_authority` VALUES ('3419', '6', '4', '81');
INSERT INTO `tb_role_authority` VALUES ('3420', '6', '4', '82');
INSERT INTO `tb_role_authority` VALUES ('3421', '6', '4', '83');
INSERT INTO `tb_role_authority` VALUES ('3422', '6', '4', '84');
INSERT INTO `tb_role_authority` VALUES ('3423', '6', '4', '85');
INSERT INTO `tb_role_authority` VALUES ('3424', '6', '4', '86');
INSERT INTO `tb_role_authority` VALUES ('3425', '6', '4', '87');
INSERT INTO `tb_role_authority` VALUES ('3426', '6', '4', '88');
INSERT INTO `tb_role_authority` VALUES ('3427', '6', '4', '107');
INSERT INTO `tb_role_authority` VALUES ('3428', '6', '4', '108');
INSERT INTO `tb_role_authority` VALUES ('3429', '6', '4', '109');
INSERT INTO `tb_role_authority` VALUES ('3430', '6', '4', '110');
INSERT INTO `tb_role_authority` VALUES ('3431', '6', '4', '111');
INSERT INTO `tb_role_authority` VALUES ('3432', '6', '4', '124');
INSERT INTO `tb_role_authority` VALUES ('3433', '6', '4', '112');
INSERT INTO `tb_role_authority` VALUES ('3434', '6', '4', '113');
INSERT INTO `tb_role_authority` VALUES ('3435', '6', '4', '114');
INSERT INTO `tb_role_authority` VALUES ('3436', '6', '4', '115');
INSERT INTO `tb_role_authority` VALUES ('3437', '6', '4', '116');
INSERT INTO `tb_role_authority` VALUES ('3438', '6', '4', '123');
INSERT INTO `tb_role_authority` VALUES ('3439', '6', '4', '117');
INSERT INTO `tb_role_authority` VALUES ('3440', '6', '4', '118');
INSERT INTO `tb_role_authority` VALUES ('3441', '6', '4', '119');
INSERT INTO `tb_role_authority` VALUES ('3442', '6', '4', '120');
INSERT INTO `tb_role_authority` VALUES ('3443', '6', '4', '121');
INSERT INTO `tb_role_authority` VALUES ('3444', '6', '4', '122');
INSERT INTO `tb_role_authority` VALUES ('3445', '6', '4', '94');
INSERT INTO `tb_role_authority` VALUES ('3446', '6', '4', '95');
INSERT INTO `tb_role_authority` VALUES ('3447', '6', '4', '96');
INSERT INTO `tb_role_authority` VALUES ('3448', '6', '4', '97');
INSERT INTO `tb_salesman` VALUES ('1', '2015-03-31 21:46:59', 'stx', '孙童欣', '89919732', '2015-03-31 21:46:59', '1', '6');
INSERT INTO `tb_salesman` VALUES ('2', '2015-04-01 13:22:32', '', 'helen', '18221855178', '2015-04-01 13:22:32', '2', '9');
INSERT INTO `tb_salesman` VALUES ('3', '2015-04-01 22:45:54', 'wj', '王菁', '0571-89918552', '2015-04-01 22:45:54', '1', '9');
INSERT INTO `tb_salesman` VALUES ('4', '2015-04-01 22:46:30', 'qhl', '钱红莲', '0571-89919549', '2015-04-01 22:46:30', '1', '9');
INSERT INTO `tb_salesman` VALUES ('5', '2015-04-01 22:46:50', 'yhy', '姚杭英', '0571-89919550', '2015-04-01 22:46:50', '1', '9');
INSERT INTO `tb_salesman` VALUES ('6', '2015-04-01 22:47:07', 'zcm', '朱春敏', '0571-89919713', '2015-04-01 22:47:07', '1', '9');
INSERT INTO `tb_salesman` VALUES ('7', '2015-04-01 22:47:20', 'wy', '吴燕', '0571-89919714', '2015-04-01 22:47:20', '1', '9');
INSERT INTO `tb_salesman` VALUES ('8', '2015-04-01 22:47:36', 'dxm', '邓晓敏', '0571-89919715', '2015-04-01 22:47:36', '1', '9');
INSERT INTO `tb_salesman` VALUES ('9', '2015-04-01 22:47:47', 'cdl', '陈丹莉', '0571-89919716', '2015-04-01 22:47:47', '1', '9');
INSERT INTO `tb_salesman` VALUES ('10', '2015-04-01 22:48:01', 'syw', '沈逸文', '0571-89919719', '2015-04-01 22:48:01', '1', '9');
INSERT INTO `tb_salesman` VALUES ('11', '2015-04-01 22:48:22', 'yjp', '虞俊萍', '0571-89919718', '2015-04-01 22:48:22', '1', '9');
INSERT INTO `tb_salesman` VALUES ('12', '2015-04-01 22:48:36', 'wyx', '王银雪', '0571-89919720', '2015-04-01 22:48:36', '1', '9');
INSERT INTO `tb_salesman` VALUES ('13', '2015-04-01 22:48:48', 'zxk', '竺徐凯', '0571-89919712', '2015-04-01 22:48:48', '1', '9');
INSERT INTO `tb_salesman` VALUES ('14', '2015-04-01 22:49:01', 'cjj', '曹建军', '0571-89919722', '2015-04-01 22:49:01', '1', '9');
INSERT INTO `tb_salesman` VALUES ('15', '2015-04-01 22:49:13', 'lcy', '刘传勇', '0571-89919723', '2015-04-01 22:49:13', '1', '9');
INSERT INTO `tb_salesman` VALUES ('16', '2015-04-01 22:49:25', 'hl', '黄璐', '0571-89979728', '2015-04-01 22:49:25', '1', '9');
INSERT INTO `tb_salesman` VALUES ('17', '2015-04-01 22:49:35', 'sh', '宋欢', '0571-89919724', '2015-04-01 22:49:35', '1', '9');
INSERT INTO `tb_salesman` VALUES ('18', '2015-04-01 22:49:50', 'cyy', '陈英英', '0571-89919725', '2015-04-01 22:49:50', '1', '9');
INSERT INTO `tb_salesman` VALUES ('19', '2015-04-01 22:50:08', 'zbl', '张波兰', '0571-89919726', '2015-04-01 22:50:08', '1', '9');
INSERT INTO `tb_salesman` VALUES ('20', '2015-04-01 22:50:20', 'zjj', '张晶晶', '0571-89919727', '2015-04-01 22:50:20', '1', '9');
INSERT INTO `tb_salesman` VALUES ('21', '2015-04-01 22:50:31', 'lcl', '楼彩丽', '0571-89919729', '2015-04-01 22:50:31', '1', '9');
INSERT INTO `tb_salesman` VALUES ('22', '2015-04-01 22:51:51', 'wxh', '吴兴华', '0571-89919730', '2015-04-01 22:51:51', '1', '9');
INSERT INTO `tb_salesman` VALUES ('23', '2015-04-01 22:52:04', 'ym', '晏敏', '0571-89919735', '2015-04-01 22:52:04', '1', '9');
INSERT INTO `tb_salesman` VALUES ('24', '2015-04-01 22:52:15', 'ly', '李悠', '0571-89919731', '2015-04-01 22:52:15', '1', '9');
INSERT INTO `tb_salesman` VALUES ('25', '2015-04-01 22:52:35', 'mjf', '马佳斐', '0571-89919733', '2015-04-01 22:52:35', '1', '9');
INSERT INTO `tb_salesman` VALUES ('26', '2015-04-01 22:52:45', 'zxp', '张夏萍', '0571-89919734', '2015-04-01 22:52:45', '1', '9');
INSERT INTO `tb_salesman` VALUES ('27', '2015-04-01 22:53:04', 'yfj', '杨峰俊', '0513-5501638', '2015-04-01 22:53:04', '1', '9');
INSERT INTO `tb_salesman` VALUES ('28', '2015-04-01 22:53:19', 'wyy', '吴荧荧', '0513-5501638', '2015-04-01 22:53:19', '1', '9');
INSERT INTO `tb_salesman` VALUES ('29', '2015-04-02 22:07:27', '', 'yoyo', '18516275879', '2015-04-02 22:07:27', '4', '9');
INSERT INTO `tb_salesman` VALUES ('30', '2015-04-04 00:05:35', 'ys', '源盛', '1', '2015-04-04 00:05:35', '7', '9');
INSERT INTO `tb_sample` VALUES ('1', '33.441', '2015-03-31 21:26:12', '471*1.12*12*32÷ 1000=202.568+15=217.568\r\n8.229\r\n机织:66.000\r\n锁口:18.000\r\n套口:9.600\r\n挂须:20.400\r\n整烫:16.800\r\n费用+后道:18.000\r\n____________________________\r\n148.8+8.229\r\n=157.029*1.17\r\n=183.724+217.568\r\n=401.292÷12\r\n=33.441*1.17\r\n=39.126\r\n', '', 'qqgzpj', 'resource.fuwei.com/images/sample/1427808371841QQ图片20150331211900.jpg', '1', '', '全晴格子披肩', 'FWA30001', '126*126 + 10*2', '2015-03-31 21:26:12', '471', '6', '7', 'resource.fuwei.com/images/sample/s/1427808371841QQ图片20150331211900.png', 'resource.fuwei.com/images/sample/ss/1427808371841QQ图片20150331211900.png', '1');
INSERT INTO `tb_sample` VALUES ('2', '6.013', '2015-04-02 11:18:06', '55*1.1*12*31÷ 1000=22.506+9=31.506\r\n0.944\r\n机织:14.400\r\n套抽:6.000\r\n整烫:3.000\r\n费用+后道:10.400\r\n____________________________\r\n33.8+0.944\r\n=34.744*1.17\r\n=40.65+31.506\r\n=72.156÷12\r\n=6.013*1.2\r\n=7.216\r\n', '', 'bdmjhbnm', 'resource.fuwei.com/images/sample/1427944682391625E01F8D68A189EAAAAEA2A9523E451.png', '3', '', '冰岛毛绞花比尼帽', 'FWA30002', '19*23cm', '2015-04-02 11:18:06', '55', '10', '9', 'resource.fuwei.com/images/sample/s/1427944682391625E01F8D68A189EAAAAEA2A9523E451.png', 'resource.fuwei.com/images/sample/ss/1427944682391625E01F8D68A189EAAAAEA2A9523E451.png', null);
INSERT INTO `tb_sample` VALUES ('3', '21.419', '2015-04-02 14:18:15', '385*1.12*12*31÷ 1000=160.406+12=172.406\r\n6.727\r\n机织:36.000\r\n套口:6.000\r\n挂须:6.600\r\n机织:17.000\r\n____________________________\r\n65.6+6.727\r\n=72.327*1.17\r\n=84.623+172.406\r\n=257.029÷12\r\n=21.419*1.17\r\n=25.06\r\n', '', 'bdmzfzgxwj', 'resource.fuwei.com/images/sample/1427955494579图片1.png', '4', '', '冰岛毛正反针挂须围巾', 'FWA30003', '190*40+2*20CM F', '2015-04-02 14:18:15', '285', '11', '9', 'resource.fuwei.com/images/sample/s/1427955494579图片1.png', 'resource.fuwei.com/images/sample/ss/1427955494579图片1.png', '2');
INSERT INTO `tb_sample` VALUES ('4', '6.391', '2015-04-02 14:19:22', '66*1.12*12*31÷ 1000=27.498+9=36.498\r\n1.153\r\n机织:12.000\r\n套抽:6.000\r\n吊球:1.800\r\n整烫:3.000\r\n费用+后道:10.400\r\n____________________________\r\n33.2+1.153\r\n=34.353*1.17\r\n=40.193+36.498\r\n=76.691÷12\r\n=6.391*1.2\r\n=7.669\r\n', '', 'bdmzfzdqm', 'resource.fuwei.com/images/sample/1427955562784图片1.png', '4', '', '冰岛毛正反针吊球帽', 'FWA30004', '24CMH *20CM', '2015-04-02 14:19:22', '66', '11', '9', 'resource.fuwei.com/images/sample/s/1427955562784图片1.png', 'resource.fuwei.com/images/sample/ss/1427955562784图片1.png', '2');
INSERT INTO `tb_sample` VALUES ('5', '9.53', '2015-04-02 14:20:33', '83*1.1*12*31÷ 1000=33.964+9=42.964\r\n1.424\r\n机织:12.000\r\n套口:4.800\r\n抽顶:4.800\r\n接指:10.000\r\n衬里:15.000\r\n费用+后道:13.000\r\n____________________________\r\n59.6+1.424\r\n=61.024*1.17\r\n=71.398+42.964\r\n=114.362÷12\r\n=9.53*1.2\r\n=11.436\r\n', '', 'bdzfzbt', 'resource.fuwei.com/images/sample/1427955633832图片1.png', '4', '', '冰岛正反针包套', 'FWA30005', '24CM L *10CM W ，做为S/M码', '2015-04-02 14:20:33', '83', '11', '9', 'resource.fuwei.com/images/sample/s/1427955633832图片1.png', 'resource.fuwei.com/images/sample/ss/1427955633832图片1.png', '2');
INSERT INTO `tb_sample` VALUES ('6', '13.407', '2015-04-03 00:31:31', '160*1.15*12*35÷ 1000=77.28+12=89.28\r\n\r\n机织:36.000\r\n拷边:4.800\r\n整烫:9.600\r\n费用+后道:10.800\r\n____________________________\r\n61.2+0\r\n=61.2*1.17\r\n=71.604+89.28\r\n=160.884÷12\r\n=13.407*1.2\r\n=16.088\r\n', '', 'rzszwj', 'resource.fuwei.com/images/sample/1427992291553图片1.jpg', '15', '', '人造丝窄围巾', 'FWA30006', '12*300', '2015-04-03 00:31:31', '160', '8', '7', 'resource.fuwei.com/images/sample/s/1427992291553图片1.png', 'resource.fuwei.com/images/sample/ss/1427992291553图片1.png', '9');
INSERT INTO `tb_sample` VALUES ('7', '0', '2015-04-03 00:35:28', '247*1.15*12*42÷ 1000=143.161+12=155.161\r\n4.431\r\n机织:36.000\r\n拷边:9.600\r\n挂须:28.800\r\n整烫:8.400\r\n费用+后道:12.000\r\n____________________________\r\n94.8+4.431\r\n=99.231*1.17\r\n=116.1+155.161\r\n=271.261÷12\r\n=22.605*1.2\r\n=27.126\r\n', '', 'mhmgxsjj', 'resource.fuwei.com/images/sample/1427992528634图片1.png', '9', '', '马海毛挂须三角巾', 'FWA30007', '155*85+15cmf', '2015-04-03 01:10:16', '247', '11', '9', 'resource.fuwei.com/images/sample/s/1427992528634图片1.png', 'resource.fuwei.com/images/sample/ss/1427992528634图片1.png', '2');
INSERT INTO `tb_sample` VALUES ('8', '9.729', '2015-04-03 00:39:07', '78*1.1*12*42÷ 1000=43.243+9=52.243\r\n1.338\r\n机织:14.400\r\n套抽:6.000\r\n球:18.000\r\n吊球:2.000\r\n整烫:3.000\r\n费用+后道:10.400\r\n____________________________\r\n53.8+1.338\r\n=55.138*1.17\r\n=64.511+52.243\r\n=116.754÷12\r\n=9.729*1.2\r\n=11.675\r\n', '', 'mhmmqm', 'resource.fuwei.com/images/sample/1427992746746图片1.png', '9', '', '马海毛毛球帽', 'FWA30008', '22*22', '2015-04-03 00:39:07', '85', '11', '9', 'resource.fuwei.com/images/sample/s/1427992746746图片1.png', 'resource.fuwei.com/images/sample/ss/1427992746746图片1.png', '2');
INSERT INTO `tb_sample` VALUES ('9', '10.625', '2015-04-03 00:41:42', '80*1.1*12*42÷ 1000=44.352+9=53.352\r\n1.373\r\n机织:14.400\r\n套口:4.800\r\n抽顶:4.800\r\n衬里:15.000\r\n接指:10.000\r\n整烫:5.000\r\n费用+后道:8.000\r\n____________________________\r\n62+1.373\r\n=63.373*1.17\r\n=74.146+53.352\r\n=127.498÷12\r\n=10.625*1.2\r\n=12.75\r\n', '', 'mhmbt', 'resource.fuwei.com/images/sample/1427992902609图片1.png', '9', '', '马海毛包套', 'FWA30009', 'S/M', '2015-04-03 00:41:42', '80', '11', '9', 'resource.fuwei.com/images/sample/s/1427992902609图片1.png', 'resource.fuwei.com/images/sample/ss/1427992902609图片1.png', '2');
INSERT INTO `tb_sample` VALUES ('10', '16.235', '2015-04-03 00:44:47', '材料1：162*1.1*12*31÷ 1000=66.29\r\n材料2：38*1.15*12*65÷ 1000=34.08\r\n66.29+34.08=100.37+10.8=111.17\r\n2.78+1.31=4.09\r\n机织:30.0\r\n套口:21.6\r\n整烫:5.0\r\n费用+后道:10.8\r\n____________________________\r\n67.4+4.09\r\n=71.49*1.17\r\n=83.64+111.17\r\n=194.82÷12\r\n=16.23*1.2\r\n=19.48\r\n', '', 'bdmymswb', 'resource.fuwei.com/images/sample/1427993082909Adoree loop SMS 8019 carbon solid.JPG', '8', '', '冰岛毛羽毛纱围脖', 'FWA30010', '33*2*27', '2015-04-03 00:44:56', '198', '8', '9', 'resource.fuwei.com/images/sample/s/1427993082909Adoree loop SMS 8019 carbon solid.png', 'resource.fuwei.com/images/sample/ss/1427993082909Adoree loop SMS 8019 carbon solid.png', '7');
INSERT INTO `tb_sample` VALUES ('11', '5.487', '2015-04-03 00:50:22', '73*1.1*12*31÷ 1000=29.872+9=38.872\r\n1.253\r\n机织:3.600\r\n拷边:4.800\r\n整烫:3.000\r\n费用+后道:10.400\r\n____________________________\r\n21.8+1.253\r\n=23.053*1.17\r\n=26.972+38.872\r\n=65.844÷12\r\n=5.487*1.2\r\n=6.584\r\n', '', 'ctfbm', 'resource.fuwei.com/images/sample/1427993422681图片1.png', '1', '', '抽条翻边帽', 'FWA30011', '21H*20W', '2015-04-03 00:50:22', '63', '11', '9', 'resource.fuwei.com/images/sample/s/1427993422681图片1.png', 'resource.fuwei.com/images/sample/ss/1427993422681图片1.png', '22');
INSERT INTO `tb_sample` VALUES ('12', '5.957', '2015-04-03 00:59:53', '63*1.1*12*34.5÷ 1000=28.69+9=37.69\r\n1.081\r\n机织:9.600\r\n拷边:4.800\r\n整烫:3.000\r\n费用+后道:10.400\r\n____________________________\r\n27.8+1.081\r\n=28.881*1.17\r\n=33.791+37.69\r\n=71.481÷12\r\n=5.957*1.2\r\n=7.148\r\n', '', 'qqjbm', 'resource.fuwei.com/images/sample/1427993993473hat.jpg', '1', '', '全晴卷边帽', 'FWA30012', '23*27', '2015-04-03 00:59:53', '57', '11', '9', 'resource.fuwei.com/images/sample/s/1427993993473hat.png', 'resource.fuwei.com/images/sample/ss/1427993993473hat.png', '2');
INSERT INTO `tb_sample` VALUES ('13', '9.44', '2015-04-03 01:01:41', '135*1.1*12*34.5÷ 1000=61.479+12=73.479\r\n2.317\r\n机织:12.000\r\n拷边:4.800\r\n整烫:4.500\r\n费用+后道:10.400\r\n____________________________\r\n31.7+2.317\r\n=34.017*1.17\r\n=39.8+73.479\r\n=113.279÷12\r\n=9.44*1.17\r\n=11.045\r\n', '', 'qqwb', 'resource.fuwei.com/images/sample/1427994100960loop.jpg', '1', '', '全晴围脖', 'FWA30013', '45*90*2', '2015-04-03 01:01:41', '135', '11', '9', 'resource.fuwei.com/images/sample/s/1427994100960loop.png', 'resource.fuwei.com/images/sample/ss/1427994100960loop.png', '9');
INSERT INTO `tb_sample` VALUES ('14', '10.165', '2015-04-03 21:06:40', '110*1.1*12*31÷ 1000=45.012+9=54.012\r\n1.888\r\n机织:14.400\r\n套抽:6.000\r\n吊球:2.000\r\n球:20.400\r\n整烫:3.000\r\n费用+后道:10.400\r\n____________________________\r\n56.2+1.888\r\n=58.088*1.17\r\n=67.963+54.012\r\n=121.975÷12\r\n=10.165*1.2\r\n=12.198\r\n', '', 'bdmjhmqm', 'resource.fuwei.com/images/sample/1428066399895图片1.png', '6', '', '冰岛毛绞花毛球帽', 'FWA30014', '21*20CM', '2015-04-03 21:06:40', '123', '11', '9', 'resource.fuwei.com/images/sample/s/1428066399895图片1.png', 'resource.fuwei.com/images/sample/ss/1428066399895图片1.png', '2');
INSERT INTO `tb_sample` VALUES ('15', '22.444', '2015-04-03 21:31:31', '310*1.1*12*31÷ 1000=126.852+12=138.852\r\n5.32\r\n机织:38.400\r\n锁口:6.000\r\n球:40.800\r\n吊球:4.000\r\n整烫:5.000\r\n费用+后道:12.000\r\n____________________________\r\n106.2+5.32\r\n=111.52*1.17\r\n=130.478+138.852\r\n=269.33÷12\r\n=22.444*1.17\r\n=26.259\r\n', '', 'jhdqwj', 'resource.fuwei.com/images/sample/1428067891295图片1.png', '6', '', '绞花吊球围巾', 'FWA30015', '180*20cm', '2015-04-03 21:31:31', '338', '11', '9', 'resource.fuwei.com/images/sample/s/1428067891295图片1.png', 'resource.fuwei.com/images/sample/ss/1428067891295图片1.png', '2');
INSERT INTO `tb_sample` VALUES ('16', '10.372', '2015-04-03 21:33:47', '100*1.1*12*31÷ 1000=40.92+9=49.92\r\n1.716\r\n机织:14.400\r\n套口:4.800\r\n抽顶:4.800\r\n接指:10.000\r\n衬里:15.000\r\n整烫:5.000\r\n费用+后道:8.000\r\n____________________________\r\n62+1.716\r\n=63.716*1.17\r\n=74.548+49.92\r\n=124.468÷12\r\n=10.372*1.2\r\n=12.446\r\n', '', 'jhbt', 'resource.fuwei.com/images/sample/1428068026985图片1.png', '6', '', '绞花包套', 'FWA30016', '25*9cm S/M', '2015-04-03 21:33:47', '114', '11', '9', 'resource.fuwei.com/images/sample/s/1428068026985图片1.png', 'resource.fuwei.com/images/sample/ss/1428068026985图片1.png', '2');
INSERT INTO `tb_sample` VALUES ('17', '10.526', '2015-04-03 22:29:24', '142*1.1*12*34÷ 1000=63.73+10.8=74.53\r\n2.062\r\n机织:12.000\r\n套口:14.400\r\n整烫:5.000\r\n费用+后道:10.800\r\n____________________________\r\n42.2+2.062\r\n=44.262*1.17\r\n=51.787+74.53\r\n=126.317÷12\r\n=10.526*1.2\r\n=12.631\r\n', '', 'mhmlsctwb', 'resource.fuwei.com/images/sample/1428071364212图片1.png', '9', '', '马海毛亮丝抽条围脖', 'FWA30017', '75*2*30cm', '2015-04-03 22:29:24', '142', '11', '7', 'resource.fuwei.com/images/sample/s/1428071364212图片1.png', 'resource.fuwei.com/images/sample/ss/1428071364212图片1.png', '27');
INSERT INTO `tb_sample` VALUES ('18', '5.412', '2015-04-03 23:11:36', '65*1.2*12*31÷ 1000=29.016+9=38.016\r\n1.217\r\n机织:3.600\r\n拷边:4.800\r\n整烫:3.000\r\n费用+后道:10.400\r\n____________________________\r\n21.8+1.217\r\n=23.017*1.17\r\n=26.93+38.016\r\n=64.946÷12\r\n=5.412*1.2\r\n=6.494\r\n', '', 'ctfbm', 'resource.fuwei.com/images/sample/1428073896025图片1.png', '1', '', '抽条翻边帽', 'FWA30018', '21H*20W', '2015-04-03 23:11:36', '63', '11', '9', 'resource.fuwei.com/images/sample/s/1428073896025图片1.png', 'resource.fuwei.com/images/sample/ss/1428073896025图片1.png', '22');
INSERT INTO `tb_sample` VALUES ('19', '0', '2015-04-04 00:09:12', '70*1.1*12*34÷ 1000=31.416+9=40.416\r\n1.201\r\n机织:12.000\r\n套抽:6.000\r\n烫钻:24.000\r\n整烫:4.000\r\n费用+后道:10.400\r\n____________________________\r\n56.4+1.201\r\n=57.601*1.17\r\n=67.393+40.416\r\n=107.809÷12\r\n=8.984*1.2\r\n=10.781\r\n', '', 'mhmtzm', 'resource.fuwei.com/images/sample/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', '9', '', '马海毛烫钻帽', 'FWA30019', '20W*27H', '2015-04-04 01:51:09', '69', '11', '7', 'resource.fuwei.com/images/sample/s/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', 'resource.fuwei.com/images/sample/ss/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', '2');
INSERT INTO `tb_sample` VALUES ('20', '13.471', '2015-04-04 00:14:08', '203*1.1*12*38÷ 1000=101.825+12=113.825\r\n3.483\r\n机织:14.400\r\n套口:6.000\r\n整烫:5.000\r\n费用+后道:12.000\r\n____________________________\r\n37.4+3.483\r\n=40.883*1.17\r\n=47.833+113.825\r\n=161.658÷12\r\n=13.471*1.2\r\n=16.165\r\n', '', 'mhmdzswb', 'resource.fuwei.com/images/sample/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', '17', '', '马海毛点子纱围脖', 'FWA30020', '43H*75W', '2015-04-04 00:14:08', '203', '11', '7', 'resource.fuwei.com/images/sample/s/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', 'resource.fuwei.com/images/sample/ss/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', '9');
INSERT INTO `tb_sample` VALUES ('21', '13.513', '2015-04-04 00:17:08', '152*1.15*12*36÷ 1000=75.514+12=87.514\r\n\r\n机织:14.400\r\n拉毛:27.600\r\n拷边:4.800\r\n整烫:5.000\r\n费用+后道:12.000\r\n____________________________\r\n63.8+0\r\n=63.8*1.17\r\n=74.646+87.514\r\n=162.16÷12\r\n=13.513*1.2\r\n=16.216\r\n', '', 'fyrcprslmwb', 'resource.fuwei.com/images/sample/14280778246358CD60DF79323473B3DE0139776CD3BEA.png', '13', '', '仿羊绒成品染色拉毛围脖', 'FWA30021', '40H*75W', '2015-04-04 00:17:08', '152', '6', '7', 'resource.fuwei.com/images/sample/s/14280778246358CD60DF79323473B3DE0139776CD3BEA.png', 'resource.fuwei.com/images/sample/ss/14280778246358CD60DF79323473B3DE0139776CD3BEA.png', '10');
INSERT INTO `tb_sample` VALUES ('22', '12.556', '2015-04-04 01:25:44', '材料1：170*1.12*12*33÷ 1000=75.39\r\n材料2：30*1.12*12*40÷ 1000=16.12\r\n75.39+16.12=91.52+12=103.52\r\n2.97+0.52=3.49\r\n机织:12\r\n锁口:4.8\r\n挂须:4.2\r\n整烫:5\r\n费用+后道:10.8\r\n____________________________\r\n36.8+3.49\r\n=40.29*1.17\r\n=47.14+103.52\r\n=150.67÷12\r\n=12.55*1.17\r\n=14.69\r\n', '', 'mhmddsgxwj', 'resource.fuwei.com/images/sample/1428081944406OB954525.png', '9', '', '马海毛豆豆纱挂须围巾', 'FWA30022', '20.5*223.5+20.5*2F', '2015-04-04 01:25:44', '213', '11', '6', 'resource.fuwei.com/images/sample/s/1428081944406OB954525.png', 'resource.fuwei.com/images/sample/ss/1428081944406OB954525.png', '9');
INSERT INTO `tb_sample` VALUES ('23', '0', '2015-04-04 17:09:38', null, '', 'cs', 'resource.fuwei.com/images/sample/1428138578423图片1.png', '2', '', '测试', 'FWA30023', '32额滴神', '2015-04-04 17:09:38', '122', '6', '6', 'resource.fuwei.com/images/sample/s/1428138578423图片1.png', 'resource.fuwei.com/images/sample/ss/1428138578423图片1.png', null);
INSERT INTO `tb_shoprecordorder` VALUES ('1', '1', '2015-03-31 21:48:39', '2015-03-31 21:48:39', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('2', '2', '2015-04-02 22:09:03', '2015-04-02 22:09:03', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('3', '3', '2015-04-02 22:32:58', '2015-04-02 22:32:58', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('4', '4', '2015-04-02 22:44:59', '2015-04-02 22:44:59', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('5', '5', '2015-04-03 01:12:31', '2015-04-03 01:12:31', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('6', '6', '2015-04-03 09:52:51', '2015-04-03 09:52:51', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('7', '7', '2015-04-03 15:04:20', '2015-04-03 15:04:20', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('8', '8', '2015-04-03 15:22:38', '2015-04-03 15:22:38', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('9', '9', '2015-04-03 21:39:34', '2015-04-03 21:39:34', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('10', '10', '2015-04-03 22:01:02', '2015-04-03 22:01:02', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('11', '11', '2015-04-03 22:08:13', '2015-04-03 22:08:13', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('12', '12', '2015-04-03 23:16:47', '2015-04-03 23:16:47', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('13', '13', '2015-04-03 23:52:25', '2015-04-03 23:52:25', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('14', '14', '2015-04-04 00:25:22', '2015-04-04 00:25:22', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('15', '15', '2015-04-04 01:47:47', '2015-04-04 01:47:47', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('16', '16', '2015-04-04 01:52:57', '2015-04-04 01:52:57', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('17', '17', '2015-04-04 18:28:46', '2015-04-04 18:28:46', '6', '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('1', '1', '2015-04-01 20:52:06', '2015-04-01 20:52:06', '7', '[{\"color\":\"白色\",\"factoryId\":1,\"material\":1,\"quantity\":145,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":1,\"material\":1,\"quantity\":162,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":4,\"material\":1,\"quantity\":2,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":5,\"material\":1,\"quantity\":15,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('2', '2', '2015-04-02 22:23:51', '2015-04-02 22:28:03', '7', '[{\"color\":\"米色\",\"factoryId\":2,\"material\":4,\"quantity\":680,\"yarn\":\"\"},{\"color\":\"米色\",\"factoryId\":5,\"material\":4,\"quantity\":93,\"yarn\":\"\"},{\"color\":\"米色\",\"factoryId\":4,\"material\":8,\"quantity\":2,\"yarn\":\"\"},{\"color\":\"藏青\",\"factoryId\":2,\"material\":4,\"quantity\":680,\"yarn\":\"\"},{\"color\":\"藏青\",\"factoryId\":5,\"material\":4,\"quantity\":93,\"yarn\":\"\"},{\"color\":\"藏青\",\"factoryId\":4,\"material\":8,\"quantity\":2,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('3', '3', '2015-04-02 22:38:27', '2015-04-02 22:39:01', '7', '[{\"color\":\"QY034-米色\",\"factoryId\":2,\"material\":4,\"quantity\":166,\"yarn\":\"\"},{\"color\":\"QY034-藏青\",\"factoryId\":2,\"material\":4,\"quantity\":166,\"yarn\":\"\"},{\"color\":\"QY034-米色\",\"factoryId\":20,\"material\":4,\"quantity\":24,\"yarn\":\"\"},{\"color\":\"QY034-藏青\",\"factoryId\":20,\"material\":4,\"quantity\":24,\"yarn\":\"\"},{\"color\":\"QY034-米色\",\"factoryId\":4,\"material\":8,\"quantity\":1,\"yarn\":\"\"},{\"color\":\"QY034-藏青\",\"factoryId\":4,\"material\":8,\"quantity\":1,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('4', '4', '2015-04-02 22:48:51', '2015-04-02 22:49:58', '7', '[{\"color\":\"米色\",\"factoryId\":2,\"material\":4,\"quantity\":25,\"yarn\":\"\"},{\"color\":\"米色\",\"factoryId\":4,\"material\":8,\"quantity\":1,\"yarn\":\"\"},{\"color\":\"藏青\",\"factoryId\":2,\"material\":4,\"quantity\":25,\"yarn\":\"\"},{\"color\":\"藏青\",\"factoryId\":4,\"material\":8,\"quantity\":1,\"yarn\":\"\"},{\"color\":\"米色\",\"factoryId\":21,\"material\":4,\"quantity\":3,\"yarn\":\"\"},{\"color\":\"藏青\",\"factoryId\":21,\"material\":4,\"quantity\":3,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('5', '5', '2015-04-03 01:21:01', '2015-04-03 01:21:01', '7', '[{\"color\":\"QY113-黑色\",\"factoryId\":2,\"material\":9,\"quantity\":390,\"yarn\":\"\"},{\"color\":\"QY113-黑色\",\"factoryId\":5,\"material\":9,\"quantity\":29,\"yarn\":\"\"},{\"color\":\"QY113-黑色\",\"factoryId\":18,\"material\":1,\"quantity\":8,\"yarn\":\"\"},{\"color\":\"深夹花灰\",\"factoryId\":2,\"material\":9,\"quantity\":390,\"yarn\":\"\"},{\"color\":\"深夹花灰\",\"factoryId\":5,\"material\":9,\"quantity\":29,\"yarn\":\"\"},{\"color\":\"深夹花灰\",\"factoryId\":18,\"material\":9,\"quantity\":8,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('6', '8', '2015-04-03 16:09:35', '2015-04-03 16:09:35', '7', '[{\"color\":\"黑色\",\"factoryId\":6,\"material\":9,\"quantity\":98,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":21,\"material\":9,\"quantity\":9,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":4,\"material\":9,\"quantity\":2,\"yarn\":\"\"},{\"color\":\"深夹花灰\",\"factoryId\":6,\"material\":9,\"quantity\":92,\"yarn\":\"\"},{\"color\":\"深夹花灰\",\"factoryId\":21,\"material\":9,\"quantity\":9,\"yarn\":\"\"},{\"color\":\"深夹花灰\",\"factoryId\":4,\"material\":9,\"quantity\":2,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('7', '7', '2015-04-03 16:13:58', '2015-04-03 16:13:58', '7', '[{\"color\":\"黑色\",\"factoryId\":6,\"material\":9,\"quantity\":6,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":6,\"material\":9,\"quantity\":1,\"yarn\":\"\"},{\"color\":\"深夹花灰\",\"factoryId\":6,\"material\":9,\"quantity\":617,\"yarn\":\"\"},{\"color\":\"深夹花灰\",\"factoryId\":6,\"material\":9,\"quantity\":5,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('8', '9', '2015-04-03 21:53:09', '2015-04-03 21:53:09', '7', '[{\"color\":\"QY102米白\",\"factoryId\":2,\"material\":6,\"quantity\":522,\"yarn\":\"\"},{\"color\":\"QY102米白\",\"factoryId\":4,\"material\":6,\"quantity\":3,\"yarn\":\"\"},{\"color\":\"深夹花灰\",\"factoryId\":2,\"material\":7,\"quantity\":522,\"yarn\":\"\"},{\"color\":\"深夹花灰\",\"factoryId\":4,\"material\":7,\"quantity\":3,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('9', '10', '2015-04-03 22:04:25', '2015-04-03 22:04:25', '7', '[{\"color\":\"QY米色\",\"factoryId\":2,\"material\":6,\"quantity\":164,\"yarn\":\"\"},{\"color\":\"QY米色\",\"factoryId\":21,\"material\":6,\"quantity\":12,\"yarn\":\"\"},{\"color\":\"QY米色\",\"factoryId\":4,\"material\":6,\"quantity\":2,\"yarn\":\"\"},{\"color\":\"深夹花灰\",\"factoryId\":2,\"material\":7,\"quantity\":164,\"yarn\":\"\"},{\"color\":\"深夹花灰\",\"factoryId\":21,\"material\":7,\"quantity\":12,\"yarn\":\"\"},{\"color\":\"深夹花灰\",\"factoryId\":4,\"material\":7,\"quantity\":2,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('10', '11', '2015-04-03 22:15:39', '2015-04-03 22:15:39', '7', '[{\"color\":\"QY米色\",\"factoryId\":2,\"material\":6,\"quantity\":763,\"yarn\":\"\"},{\"color\":\"深夹花灰\",\"factoryId\":2,\"material\":7,\"quantity\":763,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('11', '12', '2015-04-03 23:22:45', '2015-04-03 23:22:45', '7', '[{\"color\":\"QY088-黑色\",\"factoryId\":22,\"material\":1,\"quantity\":94,\"yarn\":\"\"},{\"color\":\"深夹花灰\",\"factoryId\":22,\"material\":1,\"quantity\":94,\"yarn\":\"\"},{\"color\":\"QY088-暗红色\",\"factoryId\":22,\"material\":1,\"quantity\":60,\"yarn\":\"\"},{\"color\":\"QY088-黑色\",\"factoryId\":18,\"material\":1,\"quantity\":2,\"yarn\":\"\"},{\"color\":\"深夹花灰\",\"factoryId\":18,\"material\":1,\"quantity\":2,\"yarn\":\"\"},{\"color\":\"QY088-暗红色\",\"factoryId\":18,\"material\":1,\"quantity\":2,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('12', '13', '2015-04-03 23:57:43', '2015-04-03 23:57:43', '7', '[{\"color\":\"ICHI灰色\",\"factoryId\":7,\"material\":8,\"quantity\":175,\"yarn\":\"\"},{\"color\":\"灰色\",\"factoryId\":4,\"material\":8,\"quantity\":2,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":7,\"material\":16,\"quantity\":45,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('13', '15', '2015-04-04 01:50:41', '2015-04-04 01:50:41', '7', '[{\"color\":\"白色\",\"factoryId\":30,\"material\":9,\"quantity\":10,\"yarn\":\"\"},{\"color\":\"白色组\",\"factoryId\":30,\"material\":17,\"quantity\":6,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('14', '16', '2015-04-04 01:54:01', '2015-04-04 01:54:01', '7', '[{\"color\":\"米色\",\"factoryId\":2,\"material\":9,\"quantity\":5,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":2,\"material\":9,\"quantity\":10,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_user` VALUES ('6', null, null, null, '', '', '系统内建帐号', 'fuwei_hp', null, null, null, 'system', '1', '');
INSERT INTO `tb_user` VALUES ('7', '2015-03-31 21:05:17', 'cfz@fuwei.net.cn', 'czf', '', '', '陈珍芳', '123456', '', '13326134466', '2015-04-01 22:33:14', 'czf', '2', '');
INSERT INTO `tb_user` VALUES ('8', '2015-03-31 21:22:18', '', 'rx', '', '', '任晓', '123456', '', '', '2015-03-31 21:22:18', 'rx', '3', '');
INSERT INTO `tb_user` VALUES ('9', '2015-03-31 21:27:30', 'hp@fuwei.net.cn', 'hp', '', '', '胡盼', '123456', '', '15068821361', '2015-03-31 21:27:30', 'hp', '4', '');
INSERT INTO `tb_user` VALUES ('10', '2015-04-02 11:10:37', 'hzq@fuwei.net.cn', 'hzq', '', '', '胡祖群', '123456', '', '13666663553', '2015-04-02 11:10:37', 'hzq', '3', '');
INSERT INTO `tb_user` VALUES ('11', '2015-04-02 14:09:39', 'wyp@fuwei.net.cn', 'wyp', '', '', '王宇平', '123456', '', '18857158975', '2015-04-02 14:09:39', 'wyp', '3', '');
INSERT INTO `tb_user` VALUES ('12', '2015-04-02 14:10:23', 'zmx@fuwei.net.cn', 'zmx', '', '', '张明霞', '123456', '', '15268805988', '2015-04-02 14:10:23', 'zmx', '3', '');
