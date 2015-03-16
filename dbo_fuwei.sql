/*
MySQL Data Transfer
Source Host: localhost
Source Database: dbo_fuwei
Target Host: localhost
Target Database: dbo_fuwei
Date: 2015/3/17 1:27:51
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  KEY `created_user` (`created_user`),
  CONSTRAINT `tb_carfixrecordorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`),
  CONSTRAINT `tb_carfixrecordorder_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  CONSTRAINT `tb_checkrecordorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

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
  `material` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `productNumber` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `weight` double NOT NULL,
  `sampleId` int(11) NOT NULL,
  `kehu` varchar(64) DEFAULT NULL,
  `orderNumber` varchar(64) DEFAULT NULL,
  `img_s` varchar(255) DEFAULT NULL,
  `img_ss` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  KEY `created_user` (`created_user`),
  KEY `factoryId` (`factoryId`),
  KEY `tb_coloringorder_ibfk_4` (`sampleId`),
  KEY `tb_coloringorder_ibfk_5` (`companyId`),
  CONSTRAINT `tb_coloringorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`),
  CONSTRAINT `tb_coloringorder_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_coloringorder_ibfk_3` FOREIGN KEY (`factoryId`) REFERENCES `tb_factory` (`id`),
  CONSTRAINT `tb_coloringorder_ibfk_4` FOREIGN KEY (`sampleId`) REFERENCES `tb_sample` (`id`),
  CONSTRAINT `tb_coloringorder_ibfk_5` FOREIGN KEY (`companyId`) REFERENCES `tb_company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_user` (`created_user`),
  CONSTRAINT `tb_factory_ibfk_1` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

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
  `material` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `productNumber` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `weight` double NOT NULL,
  `sampleId` int(11) NOT NULL,
  `kehu` varchar(64) DEFAULT NULL,
  `orderNumber` varchar(64) DEFAULT NULL,
  `img_s` varchar(255) DEFAULT NULL,
  `img_ss` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  KEY `created_user` (`created_user`),
  KEY `factoryId` (`factoryId`),
  KEY `tb_fuliaopurchaseorder_ibfk_4` (`sampleId`),
  KEY `tb_fuliaopurchaseorder_ibfk_5` (`companyId`),
  CONSTRAINT `tb_fuliaopurchaseorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`),
  CONSTRAINT `tb_fuliaopurchaseorder_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_fuliaopurchaseorder_ibfk_3` FOREIGN KEY (`factoryId`) REFERENCES `tb_factory` (`id`),
  CONSTRAINT `tb_fuliaopurchaseorder_ibfk_4` FOREIGN KEY (`sampleId`) REFERENCES `tb_sample` (`id`),
  CONSTRAINT `tb_fuliaopurchaseorder_ibfk_5` FOREIGN KEY (`companyId`) REFERENCES `tb_company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  KEY `created_user` (`created_user`),
  CONSTRAINT `tb_halfcheckrecordorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`),
  CONSTRAINT `tb_halfcheckrecordorder_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  KEY `created_user` (`created_user`),
  CONSTRAINT `tb_ironingrecordorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`),
  CONSTRAINT `tb_ironingrecordorder_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

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
  `material` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `productNumber` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `weight` double NOT NULL,
  `sampleId` int(11) NOT NULL,
  `kehu` varchar(64) DEFAULT NULL,
  `orderNumber` varchar(64) DEFAULT NULL,
  `img_s` varchar(255) DEFAULT NULL,
  `img_ss` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  KEY `created_user` (`created_user`),
  KEY `factoryId` (`factoryId`),
  KEY `sampleId` (`sampleId`),
  KEY `companyId` (`companyId`),
  CONSTRAINT `tb_materialpurchaseorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`),
  CONSTRAINT `tb_materialpurchaseorder_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_materialpurchaseorder_ibfk_3` FOREIGN KEY (`factoryId`) REFERENCES `tb_factory` (`id`),
  CONSTRAINT `tb_materialpurchaseorder_ibfk_4` FOREIGN KEY (`sampleId`) REFERENCES `tb_sample` (`id`),
  CONSTRAINT `tb_materialpurchaseorder_ibfk_5` FOREIGN KEY (`companyId`) REFERENCES `tb_company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

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
  `kehu` varchar(64) DEFAULT NULL,
  `detail_json` text,
  `in_use` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK34232225` (`salesmanId`),
  KEY `FK93908CC387AC0` (`created_user`),
  KEY `companyId` (`companyId`),
  KEY `stepId` (`stepId`),
  KEY `charge_user` (`charge_user`),
  KEY `sampleId` (`sampleId`),
  CONSTRAINT `FK34232225` FOREIGN KEY (`salesmanId`) REFERENCES `tb_salesman` (`id`),
  CONSTRAINT `FK93908CC387AC0` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_order_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `tb_company` (`id`),
  CONSTRAINT `tb_order_ibfk_2` FOREIGN KEY (`stepId`) REFERENCES `tb_order_produce_status` (`id`),
  CONSTRAINT `tb_order_ibfk_4` FOREIGN KEY (`charge_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_order_ibfk_5` FOREIGN KEY (`sampleId`) REFERENCES `tb_sample` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  KEY `created_user` (`created_user`),
  CONSTRAINT `tb_planorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`),
  CONSTRAINT `tb_planorder_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  KEY `created_user` (`created_user`),
  KEY `factoryId` (`factoryId`),
  CONSTRAINT `tb_producingorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`),
  CONSTRAINT `tb_producingorder_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_producingorder_ibfk_4` FOREIGN KEY (`factoryId`) REFERENCES `tb_factory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=2258 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

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
INSERT INTO `tb_authority` VALUES ('70', null, '生产系统', 'notification');
INSERT INTO `tb_authority` VALUES ('71', '70', '生产单列表', 'notification/index');
INSERT INTO `tb_authority` VALUES ('72', '70', '添加生产单', 'notification/add');
INSERT INTO `tb_authority` VALUES ('73', '70', '编辑生产单', 'notification/edit');
INSERT INTO `tb_authority` VALUES ('74', '70', '删除生产单', 'notification/delete');
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
INSERT INTO `tb_authority` VALUES ('93', '88', '打样', 'materialsys/sample');
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
INSERT INTO `tb_carfixrecordorder` VALUES ('1', '8', '2014-11-27 17:05:12', '2014-11-27 17:05:12', '1');
INSERT INTO `tb_carfixrecordorder` VALUES ('2', '11', '2015-03-04 18:56:20', '2015-03-04 18:56:20', '1');
INSERT INTO `tb_carfixrecordorder` VALUES ('3', '12', '2015-03-05 13:42:57', '2015-03-05 13:42:57', '1');
INSERT INTO `tb_carfixrecordorder` VALUES ('4', '13', '2015-03-05 16:22:28', '2015-03-05 16:22:28', '1');
INSERT INTO `tb_carfixrecordorder` VALUES ('5', '14', '2015-03-10 17:32:29', '2015-03-10 17:32:29', '1');
INSERT INTO `tb_checkrecordorder` VALUES ('1', '8', '2015-01-09 13:52:30', '2015-01-09 13:52:30', '1');
INSERT INTO `tb_checkrecordorder` VALUES ('2', '11', '2015-03-04 18:56:20', '2015-03-04 18:56:20', '1');
INSERT INTO `tb_checkrecordorder` VALUES ('3', '12', '2015-03-05 13:42:57', '2015-03-05 13:42:57', '1');
INSERT INTO `tb_checkrecordorder` VALUES ('4', '13', '2015-03-05 16:22:27', '2015-03-05 16:22:27', '1');
INSERT INTO `tb_checkrecordorder` VALUES ('5', '14', '2015-03-10 17:32:29', '2015-03-10 17:32:29', '1');
INSERT INTO `tb_company` VALUES ('1', '公司地址', '杭州市', null, null, '2014-07-10 19:46:36', '公司', 'gs', '0', '公司', '2014-07-10 19:46:36', '1');
INSERT INTO `tb_company` VALUES ('2', '西湖区文一西路243号', '杭州市', null, null, '2014-07-13 20:22:16', '测试公司', 'csgs', '0', '公司3', '2015-03-05 18:05:42', '1');
INSERT INTO `tb_factory` VALUES ('1', '加工工厂', '杭州市桐庐县通过村', '2014-08-02 14:34:05', 'jggc', '2014-08-02 14:34:05', '1', '0');
INSERT INTO `tb_factory` VALUES ('2', '恩恩2', '发放给哥哥哈哈', '2014-08-02 14:34:23', 'ee', '2014-08-02 14:34:27', '1', '0');
INSERT INTO `tb_factory` VALUES ('3', '本厂机织', '桐庐富伟针织厂', '2015-01-09 15:18:25', 'bcjz', '2015-01-09 15:18:25', '1', '0');
INSERT INTO `tb_factory` VALUES ('4', '桐庐采购单位', '桐庐县', '2015-03-16 15:33:10', 'tlcgdw', '2015-03-16 15:33:10', '1', '1');
INSERT INTO `tb_factory` VALUES ('5', '染色单位', '桐庐县染色路', '2015-03-16 15:33:29', 'rsdw', '2015-03-16 15:33:29', '1', '2');
INSERT INTO `tb_gongxu` VALUES ('1', '2014-07-07 17:18:04', '测试工序', '2014-07-12 22:34:52', '1');
INSERT INTO `tb_gongxu` VALUES ('2', '2014-07-07 17:22:01', '测试工序2', '2014-07-12 22:35:07', '1');
INSERT INTO `tb_gongxu` VALUES ('3', '2014-07-07 19:53:12', '测试工序3', '2014-07-12 22:35:16', '1');
INSERT INTO `tb_gongxu` VALUES ('4', '2014-07-08 21:01:53', '测试', '2014-07-08 21:01:53', '1');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('1', '8', '2014-11-27 15:15:53', '2014-11-27 16:36:55', '1', '[{\"color\":\"#000fff\",\"colorsample\":\"按标准样\",\"material\":\"呢绒\"}]');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('2', '11', '2015-03-04 18:56:19', '2015-03-04 20:24:14', '1', '[{\"color\":\"KM米色\",\"colorsample\":\"\",\"material\":\"2.5s冰岛毛\"}]');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('3', '12', '2015-03-05 13:42:57', '2015-03-05 13:42:57', '1', '[{\"color\":\"#000\",\"colorsample\":\"\",\"material\":\"冰岛毛\"}]');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('4', '13', '2015-03-05 16:22:27', '2015-03-05 16:22:27', '1', '[{\"color\":\"#000\",\"colorsample\":\"\",\"material\":\"dhaxam\"}]');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('5', '14', '2015-03-10 17:32:28', '2015-03-10 17:32:28', '1', '[{\"color\":\"米色\",\"colorsample\":\"\",\"material\":\"2.5s冰岛毛\"}]');
INSERT INTO `tb_headbankorder` VALUES ('1', '8', '2014-11-12 17:18:21', '2015-01-08 12:56:57', '1');
INSERT INTO `tb_headbankorder` VALUES ('2', '11', '2015-03-04 18:56:20', '2015-03-04 18:56:20', '1');
INSERT INTO `tb_headbankorder` VALUES ('3', '12', '2015-03-05 13:42:57', '2015-03-05 13:42:57', '1');
INSERT INTO `tb_headbankorder` VALUES ('4', '13', '2015-03-05 16:22:28', '2015-03-05 16:22:28', '1');
INSERT INTO `tb_headbankorder` VALUES ('5', '14', '2015-03-10 17:32:29', '2015-03-10 17:32:29', '1');
INSERT INTO `tb_ironingrecordorder` VALUES ('1', '8', '2014-11-27 17:05:26', '2014-11-27 17:05:26', '1');
INSERT INTO `tb_ironingrecordorder` VALUES ('2', '11', '2015-03-04 18:56:20', '2015-03-04 18:56:20', '1');
INSERT INTO `tb_ironingrecordorder` VALUES ('3', '12', '2015-03-05 13:42:57', '2015-03-05 13:42:57', '1');
INSERT INTO `tb_ironingrecordorder` VALUES ('4', '13', '2015-03-05 16:22:28', '2015-03-05 16:22:28', '1');
INSERT INTO `tb_ironingrecordorder` VALUES ('5', '14', '2015-03-10 17:32:29', '2015-03-10 17:32:29', '1');
INSERT INTO `tb_material` VALUES ('1', '2015-03-05 17:42:17', '晴纶', '2015-03-05 17:42:17', '1');
INSERT INTO `tb_material` VALUES ('6', '2015-03-05 17:44:13', '羊毛', '2015-03-05 17:44:13', '1');
INSERT INTO `tb_material` VALUES ('8', '2015-03-05 17:44:40', '冰岛毛', '2015-03-05 17:44:40', '1');
INSERT INTO `tb_material` VALUES ('9', '2015-03-05 17:45:50', '方法', '2015-03-05 17:45:50', '1');
INSERT INTO `tb_materialpurchaseorder` VALUES ('2', null, '2015-03-15 21:10:04', '2015-03-16 17:54:39', '1', '[{\"batch_number\":\"111\",\"material\":\"冰岛毛\",\"price\":23.5,\"quantity\":712,\"scale\":\"1.3\"}]', '2015-03-15 00:00:00', '1', null, null, '1', 'resource.fuwei.com/images/sample/140595351558420140716_230658.jpg', '材料', '测试', 'FWA30002', '尺寸', '0', '2', 'kehuj', null, null, null);
INSERT INTO `tb_materialpurchaseorder` VALUES ('3', '14', '2015-03-15 22:16:31', '2015-03-15 22:16:32', '1', '[{\"batch_number\":\"\",\"material\":\"冰岛毛\",\"price\":23.5,\"quantity\":725,\"scale\":\"1.3/1.1\"}]', '2015-03-15 00:00:00', '1', null, null, '1', 'resource.fuwei.com/images/sample/140670891273420140729125945848.jpg', '哈密瓜', '哈密瓜', 'FWA30007', '未知', '100', '7', null, null, null, null);
INSERT INTO `tb_materialpurchaseorder` VALUES ('4', '14', '2015-03-15 22:18:11', '2015-03-15 22:18:12', '1', '[{\"batch_number\":\"3\",\"material\":\"冰岛毛\",\"price\":1,\"quantity\":22,\"scale\":\"1234\"}]', '2015-03-15 00:00:00', '1', null, null, '1', 'resource.fuwei.com/images/sample/140670891273420140729125945848.jpg', '哈密瓜', '哈密瓜', 'FWA30007', '未知', '100', '7', '', null, null, null);
INSERT INTO `tb_order` VALUES ('8', '2014-11-10 15:44:58', '2015-01-09 15:48:40', '1', '1', '30000', '4', '已取消', '哈密瓜很甜', '哈密瓜(100.0克)', '2014-11-10 00:00:00', '2014-12-10 00:00:00', null, 'FWA20008', '1', null, null, '0', '100*1.4*12*30÷ 1000=50.4+4=54.4\r\n\r\n测试工序:6.000\r\n____________________________\r\n6+0\r\n=6*1.7\r\n=10.2+54.4\r\n=64.6÷12\r\n=5.383*1.4\r\n=7.536\r\n', 'resource.fuwei.com/images/sample/140670891273420140729125945848.jpg', null, '哈密瓜', '哈密瓜', 'FWA30007', '未知', '100', '3', '7', '30', null, 'resource.fuwei.com/images/sample/s/140670891273420140729125945848.png', 'resource.fuwei.com/images/sample/ss/140670891273420140729125945848.png', '1000', 'KM', null, '');
INSERT INTO `tb_order` VALUES ('9', '2015-01-09 15:26:25', '2015-01-09 15:26:25', '1', '4', '50000', '4', '已取消', '', '测试样品(55.0克)', '2015-01-09 00:00:00', '2015-01-30 00:00:00', null, 'FWA20009', '2', null, null, '0', '55*1.1*12*10÷ 1000=7.26+10=17.26\r\n0.944\r\n测试工序:6.000\r\n测试工序2:8.000\r\n____________________________\r\n14+0.944\r\n=14.944*1.3\r\n=19.427+17.26\r\n=36.687÷12\r\n=3.057*1.3\r\n=3.974\r\n', 'resource.fuwei.com/images/sample/1406002140620QQ图片20140717133813.jpg', null, '材料', '测试样品', 'FWA30003', '尺寸', '55', '1', '3', '50', null, 'resource.fuwei.com/images/sample/s/1406002140620QQ图片20140717133813.png', 'resource.fuwei.com/images/sample/ss/1406002140620QQ图片20140717133813.png', '1000', '', null, '');
INSERT INTO `tb_order` VALUES ('10', '2015-02-27 17:19:34', '2015-02-28 11:42:40', '1', '1', '0', '2', '已发货', '2015-2-27备注', '哈密瓜(100.0克)', '2015-02-27 00:00:00', '2015-05-27 00:00:00', '2015-03-04 20:44:29', 'FWA20010', '1', null, null, '0', '100*1.4*12*30÷ 1000=50.4+4=54.4\r\n\r\n测试工序:6.000\r\n____________________________\r\n6+0\r\n=6*1.7\r\n=10.2+54.4\r\n=64.6÷12\r\n=5.383*1.4\r\n=7.536\r\n', 'resource.fuwei.com/images/sample/140670891273420140729125945848.jpg', null, '哈密瓜', '哈密瓜', 'FWA30007', '未知', '100', '1', '7', '0', null, 'resource.fuwei.com/images/sample/s/140670891273420140729125945848.png', 'resource.fuwei.com/images/sample/ss/140670891273420140729125945848.png', '1200', '', '[{\"color\":\"#fff\",\"quantity\":1200,\"size\":\"100cm\",\"weight\":122,\"yarn\":\"sgaf\"}]', '');
INSERT INTO `tb_order` VALUES ('11', '2015-03-04 18:56:18', '2015-03-04 18:56:32', '1', '1', '5000', '1', '待发货', '', '测试(100.0克)', '2015-03-04 00:00:00', '2015-07-04 00:00:00', null, 'FWA20011', '1', null, null, '0', '100*1.1*12*10÷ 1000=13.2+10=23.2\r\n1.716\r\n测试工序:6.000\r\n____________________________\r\n6+1.716\r\n=7.716*1\r\n=7.716+23.2\r\n=30.916÷12\r\n=2.576*1.3\r\n=3.349\r\n', 'resource.fuwei.com/images/sample/140595351558420140716_230658.jpg', null, '材料', '测试', 'FWA30002', '尺寸', '100', '1', '2', '0', null, 'resource.fuwei.com/images/sample/s/140595351558420140716_230658.png', 'resource.fuwei.com/images/sample/ss/140595351558420140716_230658.png', '4998', '', '[{\"color\":\"KM米色\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"price\":0.9,\"quantity\":4998,\"size\":\"帽身20.5+帽口22cm宽度 帽高21+翻边5.5cm\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"weight\":108,\"yarn\":\"2.5s冰岛毛\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\"}]', '');
INSERT INTO `tb_order` VALUES ('12', '2015-03-05 13:42:56', '2015-03-05 13:42:56', '1', '4', '800', '3', '交易已完成', '哈密瓜很甜', '哈密瓜(100.0克)', '2015-03-05 00:00:00', '2015-05-05 00:00:00', '2015-03-05 13:43:33', 'FWA20012', '2', null, null, '5.383', '100*1.4*12*30÷ 1000=50.4+4=54.4\r\n\r\n测试工序:6.000\r\n____________________________\r\n6+0\r\n=6*1.7\r\n=10.2+54.4\r\n=64.6÷12\r\n=5.383*1.4\r\n=7.536\r\n', 'resource.fuwei.com/images/sample/140670891273420140729125945848.jpg', null, '哈密瓜', '哈密瓜', 'FWA30007', '未知', '100', '1', '7', '0', null, 'resource.fuwei.com/images/sample/s/140670891273420140729125945848.png', 'resource.fuwei.com/images/sample/ss/140670891273420140729125945848.png', '1000', '', '[{\"color\":\"#000\",\"price\":0.8,\"quantity\":1000,\"size\":\"100cm\",\"weight\":100,\"yarn\":\"冰岛毛\"}]', '');
INSERT INTO `tb_order` VALUES ('13', '2015-03-05 16:22:27', '2015-03-10 16:04:03', '1', '4', '338.1', '1', '待发货', '哈密瓜很甜', '哈密瓜(100.0克)', '2015-03-05 00:00:00', '2015-05-05 00:00:00', null, 'FWA20013', '2', null, null, '0', '100*1.4*12*30÷ 1000=50.4+4=54.4\r\n\r\n测试工序:6.000\r\n____________________________\r\n6+0\r\n=6*1.7\r\n=10.2+54.4\r\n=64.6÷12\r\n=5.383*1.4\r\n=7.536\r\n', 'resource.fuwei.com/images/sample/140670891273420140729125945848.jpg', null, '哈密瓜', '哈密瓜', 'FWA30007', '未知', '100', '1', '7', '0', null, 'resource.fuwei.com/images/sample/s/140670891273420140729125945848.png', 'resource.fuwei.com/images/sample/ss/140670891273420140729125945848.png', '345', '', '[{\"color\":\"#000\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"price\":0.98,\"quantity\":345,\"size\":\"198cm\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"weight\":109,\"yarn\":\"dhaxam\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\"}]', '');
INSERT INTO `tb_order` VALUES ('14', '2015-03-10 17:32:28', '2015-03-10 17:32:28', '1', '1', '4498.2', '1', '待发货', '哈密瓜很甜', '哈密瓜(100.0克)', '2015-03-10 00:00:00', '2015-06-10 00:00:00', null, 'FWA20014', '1', null, null, '5.383', '100*1.4*12*30÷ 1000=50.4+4=54.4\r\n\r\n测试工序:6.000\r\n____________________________\r\n6+0\r\n=6*1.7\r\n=10.2+54.4\r\n=64.6÷12\r\n=5.383*1.4\r\n=7.536\r\n', 'resource.fuwei.com/images/sample/140670891273420140729125945848.jpg', null, '哈密瓜', '哈密瓜', 'FWA30007', '未知', '100', '1', '7', '0', null, 'resource.fuwei.com/images/sample/s/140670891273420140729125945848.png', 'resource.fuwei.com/images/sample/ss/140670891273420140729125945848.png', '4998', '', '[{\"color\":\"米色\",\"id\":1,\"price\":0.9,\"quantity\":4998,\"size\":\"帽身20.5+帽口22cm宽度 帽高21+翻边5.5cm\",\"weight\":108,\"yarn\":\"2.5s冰岛毛\"}]', '');
INSERT INTO `tb_order_handle` VALUES ('1', '8', '创建订单', '1', '打确认样', null, '1', '2014-11-10 15:44:58');
INSERT INTO `tb_order_handle` VALUES ('2', '9', '创建订单', '1', '待发货', null, '1', '2015-01-09 15:26:25');
INSERT INTO `tb_order_handle` VALUES ('3', '8', '修改订单', '0', null, null, '1', '2015-01-09 15:28:35');
INSERT INTO `tb_order_handle` VALUES ('4', '8', '修改订单', '0', null, null, '1', '2015-01-09 15:32:22');
INSERT INTO `tb_order_handle` VALUES ('5', '8', '修改订单', '0', null, null, '1', '2015-01-09 15:38:21');
INSERT INTO `tb_order_handle` VALUES ('6', '8', '修改订单', '0', null, null, '1', '2015-01-09 15:38:47');
INSERT INTO `tb_order_handle` VALUES ('7', '8', '修改订单', '0', null, null, '1', '2015-01-09 15:39:30');
INSERT INTO `tb_order_handle` VALUES ('8', '8', '修改订单', '0', null, null, '1', '2015-01-09 15:41:21');
INSERT INTO `tb_order_handle` VALUES ('9', '8', '修改订单', '0', null, null, '1', '2015-01-09 15:45:48');
INSERT INTO `tb_order_handle` VALUES ('10', '8', '修改订单', '0', null, null, '1', '2015-01-09 15:47:45');
INSERT INTO `tb_order_handle` VALUES ('11', '8', '修改订单', '0', null, null, '1', '2015-01-09 15:47:53');
INSERT INTO `tb_order_handle` VALUES ('12', '8', '修改订单', '0', null, null, '1', '2015-01-09 15:48:40');
INSERT INTO `tb_order_handle` VALUES ('13', '10', '创建订单', '1', '待发货', null, '1', '2015-02-27 17:19:34');
INSERT INTO `tb_order_handle` VALUES ('14', '10', '修改订单', '0', null, null, '1', '2015-02-28 11:42:40');
INSERT INTO `tb_order_handle` VALUES ('15', '11', '创建订单', '1', '待发货', null, '1', '2015-03-04 18:56:18');
INSERT INTO `tb_order_handle` VALUES ('16', '11', '修改订单', '0', null, null, '1', '2015-03-04 18:56:32');
INSERT INTO `tb_order_handle` VALUES ('17', '10', '执行订单步骤', '2', '已发货', null, '1', '2015-03-04 20:44:29');
INSERT INTO `tb_order_handle` VALUES ('18', '8', '取消订单', '4', '已取消', null, '1', '2015-03-04 21:28:24');
INSERT INTO `tb_order_handle` VALUES ('19', '9', '取消订单', '4', '已取消', null, '1', '2015-03-04 21:30:20');
INSERT INTO `tb_order_handle` VALUES ('20', '12', '创建订单', '1', '待发货', null, '1', '2015-03-05 13:42:56');
INSERT INTO `tb_order_handle` VALUES ('21', '12', '执行订单步骤', '2', '已发货', null, '1', '2015-03-05 13:43:33');
INSERT INTO `tb_order_handle` VALUES ('22', '12', '执行订单步骤', '3', '交易已完成', null, '1', '2015-03-05 13:43:45');
INSERT INTO `tb_order_handle` VALUES ('23', '13', '创建订单', '1', '待发货', null, '1', '2015-03-05 16:22:27');
INSERT INTO `tb_order_handle` VALUES ('24', '13', '修改订单', '0', null, null, '1', '2015-03-10 16:04:03');
INSERT INTO `tb_order_handle` VALUES ('25', '14', '创建订单', '1', '待发货', null, '1', '2015-03-10 17:32:28');
INSERT INTO `tb_planorder` VALUES ('1', '8', '2014-11-26 15:10:19', '2014-11-26 15:31:44', '1', '[{\"color\":\"yanse\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"quantity\":1000,\"size\":\"正方形\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"weight\":109,\"yarn\":\"纱线\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\"}]');
INSERT INTO `tb_planorder` VALUES ('2', '10', '2015-02-28 17:12:15', '2015-02-28 17:12:31', '1', '[{\"color\":\"#fff\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"quantity\":1300,\"size\":\"100cm\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"weight\":122,\"yarn\":\"sgaf\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\"}]');
INSERT INTO `tb_planorder` VALUES ('3', '11', '2015-03-04 18:56:19', '2015-03-04 20:23:53', '1', '[{\"color\":\"KM米色\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"quantity\":5030,\"size\":\"帽身20.5+帽口22cm宽度 帽高21+翻边5.5cm\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"weight\":108,\"yarn\":\"2.5s冰岛毛\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\"}]');
INSERT INTO `tb_planorder` VALUES ('4', '12', '2015-03-05 13:42:57', '2015-03-05 13:42:57', '1', '[{\"color\":\"#000\",\"quantity\":1000,\"size\":\"100cm\",\"weight\":100,\"yarn\":\"冰岛毛\"}]');
INSERT INTO `tb_planorder` VALUES ('5', '13', '2015-03-05 16:22:27', '2015-03-05 16:22:27', '1', '[{\"color\":\"#000\",\"quantity\":1234,\"size\":\"198cm\",\"weight\":109,\"yarn\":\"dhaxam\"}]');
INSERT INTO `tb_planorder` VALUES ('6', '14', '2015-03-10 17:32:28', '2015-03-10 17:32:28', '1', '[{\"color\":\"米色\",\"id\":1,\"price\":0.9,\"quantity\":4998,\"size\":\"帽身20.5+帽口22cm宽度 帽高21+翻边5.5cm\",\"weight\":108,\"yarn\":\"2.5s冰岛毛\"}]');
INSERT INTO `tb_producingorder` VALUES ('1', '8', '2014-11-26 13:26:17', '2014-11-26 13:32:56', '1', '[{\"color\":\"颜色\",\"price\":5,\"quantity\":1,\"size\":\"size\",\"weight\":1,\"yarn\":\"1\"}]', '[{\"color\":\"color\",\"colorsample\":\"标准2\",\"material\":\"材料\",\"quantity\":3}]', null);
INSERT INTO `tb_producingorder` VALUES ('2', '14', '2015-03-12 17:04:04', '2015-03-12 17:43:47', '1', '[{\"color\":\"米色\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"planOrderDetailId\":1,\"price\":0.9,\"quantity\":3000,\"size\":\"帽身20.5+帽口22cm宽度 帽高21+翻边5.5cm\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"weight\":108,\"yarn\":\"2.5s冰岛毛\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\"}]', '[{\"color\":\"KM米色\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"colorsample\":\"0\",\"material\":\"2.5s冰岛毛\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"quantity\":333}]', '2');
INSERT INTO `tb_producingorder` VALUES ('3', '14', '2015-03-12 17:43:05', '2015-03-12 17:48:00', '1', '[{\"color\":\"米色\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"planOrderDetailId\":1,\"price\":0.9,\"quantity\":1980,\"size\":\"帽身20.5+帽口22cm宽度 帽高21+翻边5.5cm\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"weight\":108,\"yarn\":\"2.5s冰岛毛\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\"}]', '[{\"color\":\"KM米色\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"colorsample\":\"0\",\"material\":\"2.5s冰岛毛\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"quantity\":150}]', '3');
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
INSERT INTO `tb_role` VALUES ('3', '2015-03-05 14:33:10', '仓库', 'storeman', '2015-03-05 14:33:04', '1');
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
INSERT INTO `tb_role_authority` VALUES ('2146', '1', '1', '1');
INSERT INTO `tb_role_authority` VALUES ('2147', '1', '1', '2');
INSERT INTO `tb_role_authority` VALUES ('2148', '1', '1', '3');
INSERT INTO `tb_role_authority` VALUES ('2149', '1', '1', '4');
INSERT INTO `tb_role_authority` VALUES ('2150', '1', '1', '5');
INSERT INTO `tb_role_authority` VALUES ('2151', '1', '1', '6');
INSERT INTO `tb_role_authority` VALUES ('2152', '1', '1', '7');
INSERT INTO `tb_role_authority` VALUES ('2153', '1', '1', '8');
INSERT INTO `tb_role_authority` VALUES ('2154', '1', '1', '9');
INSERT INTO `tb_role_authority` VALUES ('2155', '1', '1', '49');
INSERT INTO `tb_role_authority` VALUES ('2156', '1', '1', '50');
INSERT INTO `tb_role_authority` VALUES ('2157', '1', '1', '10');
INSERT INTO `tb_role_authority` VALUES ('2158', '1', '1', '11');
INSERT INTO `tb_role_authority` VALUES ('2159', '1', '1', '12');
INSERT INTO `tb_role_authority` VALUES ('2160', '1', '1', '13');
INSERT INTO `tb_role_authority` VALUES ('2161', '1', '1', '14');
INSERT INTO `tb_role_authority` VALUES ('2162', '1', '1', '15');
INSERT INTO `tb_role_authority` VALUES ('2163', '1', '1', '16');
INSERT INTO `tb_role_authority` VALUES ('2164', '1', '1', '17');
INSERT INTO `tb_role_authority` VALUES ('2165', '1', '1', '18');
INSERT INTO `tb_role_authority` VALUES ('2166', '1', '1', '19');
INSERT INTO `tb_role_authority` VALUES ('2167', '1', '1', '20');
INSERT INTO `tb_role_authority` VALUES ('2168', '1', '1', '21');
INSERT INTO `tb_role_authority` VALUES ('2169', '1', '1', '22');
INSERT INTO `tb_role_authority` VALUES ('2170', '1', '1', '23');
INSERT INTO `tb_role_authority` VALUES ('2171', '1', '1', '24');
INSERT INTO `tb_role_authority` VALUES ('2172', '1', '1', '65');
INSERT INTO `tb_role_authority` VALUES ('2173', '1', '1', '66');
INSERT INTO `tb_role_authority` VALUES ('2174', '1', '1', '67');
INSERT INTO `tb_role_authority` VALUES ('2175', '1', '1', '68');
INSERT INTO `tb_role_authority` VALUES ('2176', '1', '1', '69');
INSERT INTO `tb_role_authority` VALUES ('2177', '1', '1', '102');
INSERT INTO `tb_role_authority` VALUES ('2178', '1', '1', '103');
INSERT INTO `tb_role_authority` VALUES ('2179', '1', '1', '104');
INSERT INTO `tb_role_authority` VALUES ('2180', '1', '1', '105');
INSERT INTO `tb_role_authority` VALUES ('2181', '1', '1', '106');
INSERT INTO `tb_role_authority` VALUES ('2182', '1', '1', '25');
INSERT INTO `tb_role_authority` VALUES ('2183', '1', '1', '26');
INSERT INTO `tb_role_authority` VALUES ('2184', '1', '1', '27');
INSERT INTO `tb_role_authority` VALUES ('2185', '1', '1', '28');
INSERT INTO `tb_role_authority` VALUES ('2186', '1', '1', '29');
INSERT INTO `tb_role_authority` VALUES ('2187', '1', '1', '30');
INSERT INTO `tb_role_authority` VALUES ('2188', '1', '1', '31');
INSERT INTO `tb_role_authority` VALUES ('2189', '1', '1', '51');
INSERT INTO `tb_role_authority` VALUES ('2190', '1', '1', '32');
INSERT INTO `tb_role_authority` VALUES ('2191', '1', '1', '33');
INSERT INTO `tb_role_authority` VALUES ('2192', '1', '1', '34');
INSERT INTO `tb_role_authority` VALUES ('2193', '1', '1', '35');
INSERT INTO `tb_role_authority` VALUES ('2194', '1', '1', '36');
INSERT INTO `tb_role_authority` VALUES ('2195', '1', '1', '37');
INSERT INTO `tb_role_authority` VALUES ('2196', '1', '1', '38');
INSERT INTO `tb_role_authority` VALUES ('2197', '1', '1', '39');
INSERT INTO `tb_role_authority` VALUES ('2198', '1', '1', '40');
INSERT INTO `tb_role_authority` VALUES ('2199', '1', '1', '41');
INSERT INTO `tb_role_authority` VALUES ('2200', '1', '1', '42');
INSERT INTO `tb_role_authority` VALUES ('2201', '1', '1', '43');
INSERT INTO `tb_role_authority` VALUES ('2202', '1', '1', '48');
INSERT INTO `tb_role_authority` VALUES ('2203', '1', '1', '44');
INSERT INTO `tb_role_authority` VALUES ('2204', '1', '1', '45');
INSERT INTO `tb_role_authority` VALUES ('2205', '1', '1', '46');
INSERT INTO `tb_role_authority` VALUES ('2206', '1', '1', '47');
INSERT INTO `tb_role_authority` VALUES ('2207', '1', '1', '52');
INSERT INTO `tb_role_authority` VALUES ('2208', '1', '1', '53');
INSERT INTO `tb_role_authority` VALUES ('2209', '1', '1', '54');
INSERT INTO `tb_role_authority` VALUES ('2210', '1', '1', '55');
INSERT INTO `tb_role_authority` VALUES ('2211', '1', '1', '56');
INSERT INTO `tb_role_authority` VALUES ('2212', '1', '1', '57');
INSERT INTO `tb_role_authority` VALUES ('2213', '1', '1', '58');
INSERT INTO `tb_role_authority` VALUES ('2214', '1', '1', '59');
INSERT INTO `tb_role_authority` VALUES ('2215', '1', '1', '60');
INSERT INTO `tb_role_authority` VALUES ('2216', '1', '1', '61');
INSERT INTO `tb_role_authority` VALUES ('2217', '1', '1', '62');
INSERT INTO `tb_role_authority` VALUES ('2218', '1', '1', '63');
INSERT INTO `tb_role_authority` VALUES ('2219', '1', '1', '75');
INSERT INTO `tb_role_authority` VALUES ('2220', '1', '1', '76');
INSERT INTO `tb_role_authority` VALUES ('2221', '1', '1', '77');
INSERT INTO `tb_role_authority` VALUES ('2222', '1', '1', '78');
INSERT INTO `tb_role_authority` VALUES ('2223', '1', '1', '79');
INSERT INTO `tb_role_authority` VALUES ('2224', '1', '1', '80');
INSERT INTO `tb_role_authority` VALUES ('2225', '1', '1', '81');
INSERT INTO `tb_role_authority` VALUES ('2226', '1', '1', '82');
INSERT INTO `tb_role_authority` VALUES ('2227', '1', '1', '83');
INSERT INTO `tb_role_authority` VALUES ('2228', '1', '1', '84');
INSERT INTO `tb_role_authority` VALUES ('2229', '1', '1', '85');
INSERT INTO `tb_role_authority` VALUES ('2230', '1', '1', '86');
INSERT INTO `tb_role_authority` VALUES ('2231', '1', '1', '87');
INSERT INTO `tb_role_authority` VALUES ('2232', '1', '1', '70');
INSERT INTO `tb_role_authority` VALUES ('2233', '1', '1', '71');
INSERT INTO `tb_role_authority` VALUES ('2234', '1', '1', '72');
INSERT INTO `tb_role_authority` VALUES ('2235', '1', '1', '73');
INSERT INTO `tb_role_authority` VALUES ('2236', '1', '1', '74');
INSERT INTO `tb_role_authority` VALUES ('2237', '1', '1', '88');
INSERT INTO `tb_role_authority` VALUES ('2238', '1', '1', '93');
INSERT INTO `tb_role_authority` VALUES ('2239', '1', '1', '107');
INSERT INTO `tb_role_authority` VALUES ('2240', '1', '1', '108');
INSERT INTO `tb_role_authority` VALUES ('2241', '1', '1', '109');
INSERT INTO `tb_role_authority` VALUES ('2242', '1', '1', '110');
INSERT INTO `tb_role_authority` VALUES ('2243', '1', '1', '111');
INSERT INTO `tb_role_authority` VALUES ('2244', '1', '1', '112');
INSERT INTO `tb_role_authority` VALUES ('2245', '1', '1', '113');
INSERT INTO `tb_role_authority` VALUES ('2246', '1', '1', '114');
INSERT INTO `tb_role_authority` VALUES ('2247', '1', '1', '115');
INSERT INTO `tb_role_authority` VALUES ('2248', '1', '1', '116');
INSERT INTO `tb_role_authority` VALUES ('2249', '1', '1', '117');
INSERT INTO `tb_role_authority` VALUES ('2250', '1', '1', '118');
INSERT INTO `tb_role_authority` VALUES ('2251', '1', '1', '119');
INSERT INTO `tb_role_authority` VALUES ('2252', '1', '1', '120');
INSERT INTO `tb_role_authority` VALUES ('2253', '1', '1', '121');
INSERT INTO `tb_role_authority` VALUES ('2254', '1', '1', '94');
INSERT INTO `tb_role_authority` VALUES ('2255', '1', '1', '95');
INSERT INTO `tb_role_authority` VALUES ('2256', '1', '1', '96');
INSERT INTO `tb_role_authority` VALUES ('2257', '1', '1', '97');
INSERT INTO `tb_salesman` VALUES ('1', '2014-07-10 19:46:49', 'ywy', '业务员', '212455', '2014-07-10 19:46:49', '1', '1');
INSERT INTO `tb_salesman` VALUES ('4', '2014-07-25 16:22:37', 'csywy', '测试业务员1', '134555552', '2015-03-05 18:06:02', '2', '1');
INSERT INTO `tb_salesman` VALUES ('5', '2015-03-05 18:06:17', 'cs', '测试', '122', '2015-03-05 18:06:17', '1', '1');
INSERT INTO `tb_sample` VALUES ('2', '2.576', '2014-07-21 22:38:38', '100*1.1*12*10÷ 1000=13.2+10=23.2\r\n1.716\r\n测试工序:6.000\r\n____________________________\r\n6+1.716\r\n=7.716*1\r\n=7.716+23.2\r\n=30.916÷12\r\n=2.576*1.3\r\n=3.349\r\n', '', 'cs', 'resource.fuwei.com/images/sample/140595351558420140716_230658.jpg', '机织', '材料', '', '测试', 'FWA30002', '尺寸', '2014-07-21 22:53:03', '100', '2', '1', 'resource.fuwei.com/images/sample/s/140595351558420140716_230658.png', 'resource.fuwei.com/images/sample/ss/140595351558420140716_230658.png');
INSERT INTO `tb_sample` VALUES ('3', '0', '2014-07-22 12:09:01', '55*1.1*12*10÷ 1000=7.26+10=17.26\r\n0.944\r\n测试工序:6.000\r\n测试工序2:8.000\r\n____________________________\r\n14+0.944\r\n=14.944*1.3\r\n=19.427+17.26\r\n=36.687÷12\r\n=3.057*1.3\r\n=3.974\r\n', '', 'csyp', 'resource.fuwei.com/images/sample/1406002140620QQ图片20140717133813.jpg', '机织', '材料', '', '测试样品', 'FWA30003', '尺寸', '2014-07-29 11:35:00', '55', '1', '1', 'resource.fuwei.com/images/sample/s/1406002140620QQ图片20140717133813.png', 'resource.fuwei.com/images/sample/ss/1406002140620QQ图片20140717133813.png');
INSERT INTO `tb_sample` VALUES ('4', '0', '2014-07-24 14:20:16', null, '', 'csyp', 'resource.fuwei.com/images/sample/1406182815485QQ图片20140717133813.jpg', '机织', '材料', '', '测试样品', 'FWA30004', '尺寸', '2014-07-24 14:20:16', '20', '1', '1', 'resource.fuwei.com/images/sample/s/1406182815485QQ图片20140717133813.png', 'resource.fuwei.com/images/sample/ss/1406182815485QQ图片20140717133813.png');
INSERT INTO `tb_sample` VALUES ('5', '0', '2014-07-24 16:38:10', null, '', '', 'resource.fuwei.com/images/sample/1406191089923QQ图片20140521150608.jpg', 'fd', 'ccc', '', 'cc', 'FWA30005', 'vc', '2014-07-24 16:38:10', '54', '2', '3', 'resource.fuwei.com/images/sample/s/1406191089923QQ图片20140521150608.png', 'resource.fuwei.com/images/sample/ss/1406191089923QQ图片20140521150608.png');
INSERT INTO `tb_sample` VALUES ('6', '0', '2014-07-25 16:06:53', null, '', '', 'resource.fuwei.com/images/sample/1406275612479QQ图片20140521150608.jpg', 'bf', 'ff', '', 'hh', 'FWA30006', 'gfb', '2014-07-25 16:06:53', '5', '2', '1', 'resource.fuwei.com/images/sample/s/1406275612479QQ图片20140521150608.png', 'resource.fuwei.com/images/sample/ss/1406275612479QQ图片20140521150608.png');
INSERT INTO `tb_sample` VALUES ('7', '5.383', '2014-07-30 16:28:34', '100*1.4*12*30÷ 1000=50.4+4=54.4\r\n\r\n测试工序:6.000\r\n____________________________\r\n6+0\r\n=6*1.7\r\n=10.2+54.4\r\n=64.6÷12\r\n=5.383*1.4\r\n=7.536\r\n', '', 'hmg', 'resource.fuwei.com/images/sample/140670891273420140729125945848.jpg', '未知', '哈密瓜', '哈密瓜很甜', '哈密瓜', 'FWA30007', '未知', '2014-07-30 16:28:34', '100', '1', '1', 'resource.fuwei.com/images/sample/s/140670891273420140729125945848.png', 'resource.fuwei.com/images/sample/ss/140670891273420140729125945848.png');
INSERT INTO `tb_storeorder` VALUES ('1', '8', '2014-11-26 17:04:26', '2014-11-26 17:21:24', '1', '[{\"color\":\"sehao\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"material\":\"cailiao\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\",\"quantity\":2000,\"yarn\":\"sha\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\"}]', '[{\"color\":\"sehao\",\"date\":\"2014/11/04\",\"in_out\":1,\"material\":\"cailiao\",\"quantity\":1200,\"sign\":\"\"}]');
INSERT INTO `tb_storeorder` VALUES ('2', '9', '2015-02-27 17:31:34', '2015-02-27 17:31:34', '1', '[{\"color\":\"#fff\",\"material\":\"cailiao\",\"quantity\":1000,\"yarn\":\"yangsha\"}]', null);
INSERT INTO `tb_user` VALUES ('1', null, '6@qq.com', 'yf', '', '', '余芬', '1', '123', '143333', '2014-07-21 11:46:25', 'yf', '1', '');
INSERT INTO `tb_user` VALUES ('2', '2014-07-10 20:07:03', '345@qq.com', 'yf', '', '', '余芬2', '123456', '12335', '124577', '2014-07-10 20:07:03', 'yufen', '1', '');
INSERT INTO `tb_user` VALUES ('3', '2014-07-24 14:52:24', '638724u2@qq.com', 'hp', '', '', '胡盼', '123456', '638724u2', '1504332', '2014-07-24 14:52:24', 'hp', '2', '');
INSERT INTO `tb_user` VALUES ('4', '2015-03-05 18:20:31', '', 'cklw', '', '', '仓库老王', '123456', '', '15068821111', '2015-03-05 18:20:31', 'wang', '3', '');
