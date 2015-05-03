/*
MySQL Data Transfer
Source Host: 121.42.150.52
Source Database: dbo_fuwei
Target Host: 121.42.150.52
Target Database: dbo_fuwei
Date: 2015/5/3 14:21:37
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
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

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
  `charge_employee` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  KEY `created_user` (`created_user`),
  KEY `factoryId` (`factoryId`),
  KEY `tb_coloringorder_ibfk_4` (`sampleId`),
  KEY `tb_coloringorder_ibfk_5` (`companyId`),
  KEY `tb_coloringorder_ibfk_6` (`charge_user`),
  KEY `customerId` (`customerId`),
  KEY `materialId` (`materialId`),
  KEY `charge_employee` (`charge_employee`),
  CONSTRAINT `tb_coloringorder_ibfk_9` FOREIGN KEY (`charge_employee`) REFERENCES `tb_employee` (`id`),
  CONSTRAINT `tb_coloringorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`),
  CONSTRAINT `tb_coloringorder_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_coloringorder_ibfk_3` FOREIGN KEY (`factoryId`) REFERENCES `tb_factory` (`id`),
  CONSTRAINT `tb_coloringorder_ibfk_4` FOREIGN KEY (`sampleId`) REFERENCES `tb_sample` (`id`),
  CONSTRAINT `tb_coloringorder_ibfk_5` FOREIGN KEY (`companyId`) REFERENCES `tb_company` (`id`),
  CONSTRAINT `tb_coloringorder_ibfk_6` FOREIGN KEY (`charge_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_coloringorder_ibfk_7` FOREIGN KEY (`customerId`) REFERENCES `tb_customer` (`id`),
  CONSTRAINT `tb_coloringorder_ibfk_8` FOREIGN KEY (`materialId`) REFERENCES `tb_material` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_department
-- ----------------------------
DROP TABLE IF EXISTS `tb_department`;
CREATE TABLE `tb_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_user` (`created_user`),
  CONSTRAINT `tb_department_ibfk_1` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_employee
-- ----------------------------
DROP TABLE IF EXISTS `tb_employee`;
CREATE TABLE `tb_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `help_code` varchar(255) DEFAULT NULL,
  `inUse` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sex` varchar(32) DEFAULT NULL,
  `number` varchar(64) DEFAULT NULL,
  `enter_at` datetime DEFAULT NULL,
  `id_card` varchar(64) DEFAULT NULL,
  `departmentId` int(11) DEFAULT NULL,
  `job` varchar(64) DEFAULT NULL,
  `address_home` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `agreement_at` datetime DEFAULT NULL,
  `agreement_end` datetime DEFAULT NULL,
  `employee_type` varchar(32) DEFAULT NULL,
  `leave_at` datetime DEFAULT NULL,
  `year_salary` double DEFAULT NULL,
  `hour_salary` double DEFAULT NULL,
  `nation` varchar(32) DEFAULT NULL,
  `education` varchar(32) DEFAULT NULL,
  `married` bit(1) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_no` varchar(255) DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `is_charge_employee` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `departmentId` (`departmentId`),
  KEY `created_user` (`created_user`),
  CONSTRAINT `tb_employee_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `tb_department` (`id`),
  CONSTRAINT `tb_employee_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

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
  `charge_employee` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  KEY `created_user` (`created_user`),
  KEY `factoryId` (`factoryId`),
  KEY `tb_fuliaopurchaseorder_ibfk_4` (`sampleId`),
  KEY `tb_fuliaopurchaseorder_ibfk_5` (`companyId`),
  KEY `tb_fuliaopurchaseorder_ibfk_6` (`charge_user`),
  KEY `tb_fuliaopurchaseorder_ibfk_8` (`materialId`),
  KEY `tb_fuliaopurchaseorder_ibfk_7` (`customerId`),
  KEY `charge_employee` (`charge_employee`),
  CONSTRAINT `tb_fuliaopurchaseorder_ibfk_9` FOREIGN KEY (`charge_employee`) REFERENCES `tb_employee` (`id`),
  CONSTRAINT `tb_fuliaopurchaseorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`),
  CONSTRAINT `tb_fuliaopurchaseorder_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_fuliaopurchaseorder_ibfk_3` FOREIGN KEY (`factoryId`) REFERENCES `tb_factory` (`id`),
  CONSTRAINT `tb_fuliaopurchaseorder_ibfk_4` FOREIGN KEY (`sampleId`) REFERENCES `tb_sample` (`id`),
  CONSTRAINT `tb_fuliaopurchaseorder_ibfk_5` FOREIGN KEY (`companyId`) REFERENCES `tb_company` (`id`),
  CONSTRAINT `tb_fuliaopurchaseorder_ibfk_6` FOREIGN KEY (`charge_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_fuliaopurchaseorder_ibfk_7` FOREIGN KEY (`customerId`) REFERENCES `tb_customer` (`id`),
  CONSTRAINT `tb_fuliaopurchaseorder_ibfk_8` FOREIGN KEY (`materialId`) REFERENCES `tb_material` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

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
  `charge_employee` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  KEY `created_user` (`created_user`),
  KEY `factoryId` (`factoryId`),
  KEY `sampleId` (`sampleId`),
  KEY `companyId` (`companyId`),
  KEY `tb_materialpurchaseorder_ibfk_6` (`charge_user`),
  KEY `tb_materialpurchaseorder_ibfk_8` (`materialId`),
  KEY `tb_materialpurchaseorder_ibfk_7` (`customerId`),
  KEY `charge_employee` (`charge_employee`),
  CONSTRAINT `tb_materialpurchaseorder_ibfk_9` FOREIGN KEY (`charge_employee`) REFERENCES `tb_employee` (`id`),
  CONSTRAINT `tb_materialpurchaseorder_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `tb_order` (`id`),
  CONSTRAINT `tb_materialpurchaseorder_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_materialpurchaseorder_ibfk_3` FOREIGN KEY (`factoryId`) REFERENCES `tb_factory` (`id`),
  CONSTRAINT `tb_materialpurchaseorder_ibfk_4` FOREIGN KEY (`sampleId`) REFERENCES `tb_sample` (`id`),
  CONSTRAINT `tb_materialpurchaseorder_ibfk_5` FOREIGN KEY (`companyId`) REFERENCES `tb_company` (`id`),
  CONSTRAINT `tb_materialpurchaseorder_ibfk_6` FOREIGN KEY (`charge_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_materialpurchaseorder_ibfk_7` FOREIGN KEY (`customerId`) REFERENCES `tb_customer` (`id`),
  CONSTRAINT `tb_materialpurchaseorder_ibfk_8` FOREIGN KEY (`materialId`) REFERENCES `tb_material` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

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
  `charge_employee` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK34232225` (`salesmanId`),
  KEY `FK93908CC387AC0` (`created_user`),
  KEY `companyId` (`companyId`),
  KEY `stepId` (`stepId`),
  KEY `charge_user` (`charge_user`),
  KEY `sampleId` (`sampleId`),
  KEY `customerId` (`customerId`),
  KEY `materialId` (`materialId`),
  KEY `charge_employee` (`charge_employee`),
  CONSTRAINT `tb_order_ibfk_8` FOREIGN KEY (`charge_employee`) REFERENCES `tb_employee` (`id`),
  CONSTRAINT `FK34232225` FOREIGN KEY (`salesmanId`) REFERENCES `tb_salesman` (`id`),
  CONSTRAINT `FK93908CC387AC0` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_order_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `tb_company` (`id`),
  CONSTRAINT `tb_order_ibfk_2` FOREIGN KEY (`stepId`) REFERENCES `tb_order_produce_status` (`id`),
  CONSTRAINT `tb_order_ibfk_4` FOREIGN KEY (`charge_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_order_ibfk_5` FOREIGN KEY (`sampleId`) REFERENCES `tb_sample` (`id`),
  CONSTRAINT `tb_order_ibfk_6` FOREIGN KEY (`customerId`) REFERENCES `tb_customer` (`id`),
  CONSTRAINT `tb_order_ibfk_7` FOREIGN KEY (`materialId`) REFERENCES `tb_material` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=4149 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

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
  `charge_employee` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5E6CEC9B87AC0D3A` (`created_user`),
  KEY `FK5E6CEC9B4D2DE8EE` (`charge_user`),
  KEY `factoryId` (`factoryId`),
  KEY `materialId` (`materialId`),
  KEY `charge_employee` (`charge_employee`),
  CONSTRAINT `tb_sample_ibfk_3` FOREIGN KEY (`charge_employee`) REFERENCES `tb_employee` (`id`),
  CONSTRAINT `FK5E6CEC9B4D2DE8EE` FOREIGN KEY (`charge_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `FK5E6CEC9B87AC0D3A` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `tb_sample_ibfk_1` FOREIGN KEY (`factoryId`) REFERENCES `tb_factory` (`id`),
  CONSTRAINT `tb_sample_ibfk_2` FOREIGN KEY (`materialId`) REFERENCES `tb_material` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

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
INSERT INTO `tb_authority` VALUES ('96', '94', '原材料采购报表', 'report/material_purchase');
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
INSERT INTO `tb_authority` VALUES ('140', '25', '报价工具', 'sample/util/price');
INSERT INTO `tb_authority` VALUES ('141', null, '其他工具', 'util');
INSERT INTO `tb_authority` VALUES ('142', '141', '装箱工具', 'util/box');
INSERT INTO `tb_authority` VALUES ('143', '52', '待发货', 'order/undelivery');
INSERT INTO `tb_authority` VALUES ('148', '4', '部门管理', 'department');
INSERT INTO `tb_authority` VALUES ('149', '148', '添加部门', 'department/add');
INSERT INTO `tb_authority` VALUES ('150', '148', '编辑部门', 'department/edit');
INSERT INTO `tb_authority` VALUES ('151', '148', '删除部门', 'department/delete');
INSERT INTO `tb_authority` VALUES ('152', '148', '部门列表', 'department/index');
INSERT INTO `tb_authority` VALUES ('153', '4', '员工管理', 'employee');
INSERT INTO `tb_authority` VALUES ('154', '153', '添加员工', 'employee/add');
INSERT INTO `tb_authority` VALUES ('155', '153', '编辑员工', 'employee/edit');
INSERT INTO `tb_authority` VALUES ('156', '153', '删除员工', 'employee/delete');
INSERT INTO `tb_authority` VALUES ('157', '153', '员工列表', 'employee/index');
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
INSERT INTO `tb_carfixrecordorder` VALUES ('17', '17', '2015-04-04 14:45:56', '2015-04-04 14:45:56', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('18', '18', '2015-04-04 17:06:39', '2015-04-04 17:06:39', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('19', '19', '2015-04-04 17:24:04', '2015-04-04 17:24:04', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('20', '20', '2015-04-06 12:30:59', '2015-04-06 12:30:59', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('21', '21', '2015-04-06 14:26:11', '2015-04-06 14:26:11', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('22', '22', '2015-04-07 17:20:08', '2015-04-07 17:20:08', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('23', '23', '2015-04-08 07:59:02', '2015-04-08 07:59:02', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('24', '24', '2015-04-08 08:05:51', '2015-04-08 08:05:51', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('25', '25', '2015-04-08 09:20:30', '2015-04-08 09:20:30', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('26', '26', '2015-04-08 09:30:20', '2015-04-08 09:30:20', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('27', '27', '2015-04-08 10:05:42', '2015-04-08 10:05:42', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('28', '28', '2015-04-08 15:00:58', '2015-04-08 15:00:58', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('29', '29', '2015-04-08 15:55:25', '2015-04-08 15:55:25', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('30', '30', '2015-04-10 11:03:32', '2015-04-10 11:03:32', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('31', '31', '2015-04-10 17:08:23', '2015-04-10 17:08:23', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('32', '32', '2015-04-10 17:41:20', '2015-04-10 17:41:20', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('33', '33', '2015-04-10 17:57:18', '2015-04-10 17:57:18', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('34', '34', '2015-04-15 14:29:32', '2015-04-15 14:29:32', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('35', '35', '2015-04-15 15:17:14', '2015-04-15 15:17:14', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('36', '36', '2015-04-15 15:51:10', '2015-04-15 15:51:10', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('37', '37', '2015-04-15 16:33:31', '2015-04-15 16:33:31', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('38', '38', '2015-04-15 16:47:51', '2015-04-15 16:47:51', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('39', '39', '2015-04-15 16:52:54', '2015-04-15 16:52:54', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('40', '40', '2015-04-15 17:02:09', '2015-04-15 17:02:09', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('41', '41', '2015-04-15 17:14:55', '2015-04-15 17:14:55', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('42', '42', '2015-04-16 17:34:03', '2015-04-16 17:34:03', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('43', '43', '2015-04-17 15:32:22', '2015-04-17 15:32:22', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('44', '44', '2015-04-17 16:07:07', '2015-04-17 16:07:07', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('45', '45', '2015-04-17 16:21:44', '2015-04-17 16:21:44', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('46', '46', '2015-04-17 16:45:35', '2015-04-17 16:45:35', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('47', '47', '2015-04-17 17:50:43', '2015-04-17 17:50:43', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('48', '48', '2015-04-17 18:13:55', '2015-04-17 18:13:55', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('49', '49', '2015-04-17 18:39:08', '2015-04-17 18:39:08', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('50', '50', '2015-04-18 15:13:43', '2015-04-18 15:13:43', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('51', '51', '2015-04-18 15:23:22', '2015-04-18 15:23:22', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('52', '52', '2015-04-18 15:34:38', '2015-04-18 15:34:38', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('53', '53', '2015-04-18 15:51:54', '2015-04-18 15:51:54', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('54', '54', '2015-04-18 16:17:42', '2015-04-18 16:17:42', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('55', '55', '2015-04-18 17:23:44', '2015-04-18 17:23:44', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('56', '56', '2015-04-18 17:38:20', '2015-04-18 17:38:20', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('57', '57', '2015-04-18 17:57:46', '2015-04-18 17:57:46', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('58', '58', '2015-04-18 18:04:08', '2015-04-18 18:04:08', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('59', '59', '2015-04-18 18:14:36', '2015-04-18 18:14:36', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('60', '60', '2015-04-19 10:01:24', '2015-04-19 10:01:24', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('61', '61', '2015-04-19 13:01:52', '2015-04-19 13:01:52', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('62', '62', '2015-04-19 13:27:05', '2015-04-19 13:27:05', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('63', '63', '2015-04-19 13:47:19', '2015-04-19 13:47:19', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('64', '64', '2015-04-19 14:16:02', '2015-04-19 14:16:02', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('65', '65', '2015-04-19 14:30:18', '2015-04-19 14:30:18', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('66', '66', '2015-04-19 15:05:26', '2015-04-19 15:05:26', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('67', '67', '2015-04-19 15:17:28', '2015-04-19 15:17:28', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('68', '68', '2015-04-19 15:46:38', '2015-04-19 15:46:38', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('69', '69', '2015-04-19 16:03:09', '2015-04-19 16:03:09', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('70', '70', '2015-04-19 16:24:33', '2015-04-19 16:24:33', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('71', '71', '2015-04-19 16:33:55', '2015-04-19 16:33:55', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('72', '72', '2015-04-19 17:22:17', '2015-04-19 17:22:17', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('73', '73', '2015-04-19 17:29:36', '2015-04-19 17:29:36', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('74', '74', '2015-04-20 14:45:04', '2015-04-20 14:45:04', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('75', '75', '2015-04-20 14:51:33', '2015-04-20 14:51:33', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('76', '76', '2015-04-20 15:07:14', '2015-04-20 15:07:14', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('77', '77', '2015-04-20 15:17:28', '2015-04-20 15:17:28', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('78', '78', '2015-04-20 15:29:00', '2015-04-20 15:29:00', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('79', '79', '2015-04-23 14:31:06', '2015-04-23 14:31:06', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('80', '80', '2015-04-23 14:42:14', '2015-04-23 14:42:14', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('81', '81', '2015-04-24 12:46:27', '2015-04-24 12:46:27', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('82', '82', '2015-04-24 12:52:28', '2015-04-24 12:52:28', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('83', '83', '2015-04-24 13:02:43', '2015-04-24 13:02:43', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('84', '84', '2015-04-24 13:13:59', '2015-04-24 13:13:59', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('85', '85', '2015-04-24 13:34:42', '2015-04-24 13:34:42', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('86', '86', '2015-04-25 09:25:59', '2015-04-25 09:25:59', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('87', '87', '2015-04-27 08:07:57', '2015-04-27 08:07:57', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('88', '88', '2015-04-27 08:24:57', '2015-04-27 08:24:57', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('89', '89', '2015-04-27 08:45:32', '2015-04-27 08:45:32', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('90', '90', '2015-04-30 13:32:44', '2015-04-30 13:32:44', '7', '0', '新建');
INSERT INTO `tb_carfixrecordorder` VALUES ('91', '91', '2015-05-02 16:28:24', '2015-05-02 16:28:24', '7', '0', '新建');
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
INSERT INTO `tb_checkrecordorder` VALUES ('17', '17', '2015-04-04 14:45:56', '2015-04-04 14:45:56', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('18', '18', '2015-04-04 17:06:39', '2015-04-04 17:06:39', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('19', '19', '2015-04-04 17:24:04', '2015-04-04 17:24:04', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('20', '20', '2015-04-06 12:30:59', '2015-04-06 12:30:59', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('21', '21', '2015-04-06 14:26:11', '2015-04-06 14:26:11', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('22', '22', '2015-04-07 17:20:08', '2015-04-07 17:20:08', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('23', '23', '2015-04-08 07:59:02', '2015-04-08 07:59:02', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('24', '24', '2015-04-08 08:05:51', '2015-04-08 08:05:51', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('25', '25', '2015-04-08 09:20:30', '2015-04-08 09:20:30', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('26', '26', '2015-04-08 09:30:20', '2015-04-08 09:30:20', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('27', '27', '2015-04-08 10:05:42', '2015-04-08 10:05:42', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('28', '28', '2015-04-08 15:00:58', '2015-04-08 15:00:58', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('29', '29', '2015-04-08 15:55:25', '2015-04-08 15:55:25', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('30', '30', '2015-04-10 11:03:32', '2015-04-10 11:03:32', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('31', '31', '2015-04-10 17:08:23', '2015-04-10 17:08:23', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('32', '32', '2015-04-10 17:41:20', '2015-04-10 17:41:20', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('33', '33', '2015-04-10 17:57:18', '2015-04-10 17:57:18', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('34', '34', '2015-04-15 14:29:32', '2015-04-15 14:29:32', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('35', '35', '2015-04-15 15:17:14', '2015-04-15 15:17:14', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('36', '36', '2015-04-15 15:51:10', '2015-04-15 15:51:10', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('37', '37', '2015-04-15 16:33:31', '2015-04-15 16:33:31', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('38', '38', '2015-04-15 16:47:51', '2015-04-15 16:47:51', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('39', '39', '2015-04-15 16:52:54', '2015-04-15 16:52:54', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('40', '40', '2015-04-15 17:02:09', '2015-04-15 17:02:09', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('41', '41', '2015-04-15 17:14:55', '2015-04-15 17:14:55', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('42', '42', '2015-04-16 17:34:03', '2015-04-16 17:34:03', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('43', '43', '2015-04-17 15:32:22', '2015-04-17 15:32:22', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('44', '44', '2015-04-17 16:07:07', '2015-04-17 16:07:07', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('45', '45', '2015-04-17 16:21:44', '2015-04-17 16:21:44', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('46', '46', '2015-04-17 16:45:35', '2015-04-17 16:45:35', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('47', '47', '2015-04-17 17:50:43', '2015-04-17 17:50:43', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('48', '48', '2015-04-17 18:13:55', '2015-04-17 18:13:55', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('49', '49', '2015-04-17 18:39:08', '2015-04-17 18:39:08', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('50', '50', '2015-04-18 15:13:43', '2015-04-18 15:13:43', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('51', '51', '2015-04-18 15:23:22', '2015-04-18 15:23:22', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('52', '52', '2015-04-18 15:34:38', '2015-04-18 15:34:38', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('53', '53', '2015-04-18 15:51:54', '2015-04-18 15:51:54', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('54', '54', '2015-04-18 16:17:42', '2015-04-18 16:17:42', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('55', '55', '2015-04-18 17:23:44', '2015-04-18 17:23:44', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('56', '56', '2015-04-18 17:38:20', '2015-04-18 17:38:20', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('57', '57', '2015-04-18 17:57:46', '2015-04-18 17:57:46', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('58', '58', '2015-04-18 18:04:08', '2015-04-18 18:04:08', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('59', '59', '2015-04-18 18:14:36', '2015-04-18 18:14:36', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('60', '60', '2015-04-19 10:01:24', '2015-04-19 10:01:24', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('61', '61', '2015-04-19 13:01:52', '2015-04-19 13:01:52', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('62', '62', '2015-04-19 13:27:05', '2015-04-19 13:27:05', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('63', '63', '2015-04-19 13:47:19', '2015-04-19 13:47:19', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('64', '64', '2015-04-19 14:16:02', '2015-04-19 14:16:02', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('65', '65', '2015-04-19 14:30:18', '2015-04-19 14:30:18', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('66', '66', '2015-04-19 15:05:26', '2015-04-19 15:05:26', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('67', '67', '2015-04-19 15:17:28', '2015-04-19 15:17:28', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('68', '68', '2015-04-19 15:46:38', '2015-04-19 15:46:38', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('69', '69', '2015-04-19 16:03:09', '2015-04-19 16:03:09', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('70', '70', '2015-04-19 16:24:33', '2015-04-19 16:24:33', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('71', '71', '2015-04-19 16:33:55', '2015-04-19 16:33:55', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('72', '72', '2015-04-19 17:22:16', '2015-04-19 17:22:16', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('73', '73', '2015-04-19 17:29:36', '2015-04-19 17:29:36', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('74', '74', '2015-04-20 14:45:04', '2015-04-20 14:45:04', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('75', '75', '2015-04-20 14:51:33', '2015-04-20 14:51:33', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('76', '76', '2015-04-20 15:07:14', '2015-04-20 15:07:14', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('77', '77', '2015-04-20 15:17:28', '2015-04-20 15:17:28', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('78', '78', '2015-04-20 15:29:00', '2015-04-20 15:29:00', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('79', '79', '2015-04-23 14:31:06', '2015-04-23 14:31:06', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('80', '80', '2015-04-23 14:42:14', '2015-04-23 14:42:14', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('81', '81', '2015-04-24 12:46:27', '2015-04-24 12:46:27', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('82', '82', '2015-04-24 12:52:28', '2015-04-24 12:52:28', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('83', '83', '2015-04-24 13:02:43', '2015-04-24 13:02:43', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('84', '84', '2015-04-24 13:13:59', '2015-04-24 13:13:59', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('85', '85', '2015-04-24 13:34:42', '2015-04-24 13:34:42', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('86', '86', '2015-04-25 09:25:59', '2015-04-25 09:25:59', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('87', '87', '2015-04-27 08:07:56', '2015-04-27 08:07:56', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('88', '88', '2015-04-27 08:24:57', '2015-04-27 08:24:57', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('89', '89', '2015-04-27 08:45:32', '2015-04-27 08:45:32', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('90', '90', '2015-04-30 13:32:44', '2015-04-30 13:32:44', '7', '0', '新建');
INSERT INTO `tb_checkrecordorder` VALUES ('91', '91', '2015-05-02 16:28:24', '2015-05-02 16:28:24', '7', '0', '新建');
INSERT INTO `tb_coloringorder` VALUES ('1', '1', '2015-04-01 20:25:35', '2015-04-01 20:25:35', '7', '[{\"color\":\"白色\",\"material\":1,\"quantity\":145,\"standardyarn\":\"\"},{\"color\":\"黑色\",\"material\":1,\"quantity\":40,\"standardyarn\":\"\"}]', '3', '0', '新建', '1', 'resource.fuwei.com/images/sample/1427808371841QQ图片20150331211900.jpg', '1', '全晴格子披肩', 'FWA30001', '126*126 + 10*2', '471', '1', 'FWA20001', 'resource.fuwei.com/images/sample/s/1427808371841QQ图片20150331211900.png', 'resource.fuwei.com/images/sample/ss/1427808371841QQ图片20150331211900.png', '8', '1', null, '15RS0001', 'FWA30001', '2');
INSERT INTO `tb_coloringorder` VALUES ('2', '2', '2015-04-02 22:17:59', '2015-04-02 22:26:37', '7', '[{\"color\":\"QY035-米色\",\"material\":4,\"quantity\":773,\"standardyarn\":\"\"},{\"color\":\"QY035-藏青\",\"material\":4,\"quantity\":773,\"standardyarn\":\"\"},{\"color\":\"QY035-米色\",\"material\":8,\"quantity\":1.5,\"standardyarn\":\"\"},{\"color\":\"QY035-藏青\",\"material\":8,\"quantity\":1.5,\"standardyarn\":\"\"}]', '12', '0', '新建', '4', 'resource.fuwei.com/images/sample/1427955494579图片1.png', '4', '冰岛毛正反针挂须围巾', 'FWA30003', '190*40+2*20CM F', '0', '3', 'FWA20002', 'resource.fuwei.com/images/sample/s/1427955494579图片1.png', 'resource.fuwei.com/images/sample/ss/1427955494579图片1.png', '11', '2', null, '15RS0002', 'FWA30003', '3');
INSERT INTO `tb_coloringorder` VALUES ('3', '3', '2015-04-02 22:34:50', '2015-04-02 22:40:14', '7', '[{\"color\":\"QY034-米色\",\"material\":4,\"quantity\":190.5,\"standardyarn\":\"\"},{\"color\":\"QY034-藏青\",\"material\":4,\"quantity\":190.5,\"standardyarn\":\"\"},{\"color\":\"QY034-米色\",\"material\":8,\"quantity\":1.5,\"standardyarn\":\"\"},{\"color\":\"QY034-藏青\",\"material\":8,\"quantity\":1.5,\"standardyarn\":\"\"}]', '12', '0', '新建', '4', 'resource.fuwei.com/images/sample/1427955562784图片1.png', '4', '冰岛毛正反针吊球帽', 'FWA30004', '24CMH *20CM', '0', '4', 'FWA20003', 'resource.fuwei.com/images/sample/s/1427955562784图片1.png', 'resource.fuwei.com/images/sample/ss/1427955562784图片1.png', '11', '2', null, '15RS0003', 'FWA30004', '3');
INSERT INTO `tb_coloringorder` VALUES ('4', '4', '2015-04-02 22:47:03', '2015-04-02 22:47:03', '7', '[{\"color\":\"QY036-米色\",\"material\":4,\"quantity\":28,\"standardyarn\":\"\"},{\"color\":\"QY036-米色\",\"material\":8,\"quantity\":1,\"standardyarn\":\"\"},{\"color\":\"QY036-藏青\",\"material\":8,\"quantity\":28,\"standardyarn\":\"\"},{\"color\":\"QY036-藏青\",\"material\":8,\"quantity\":1,\"standardyarn\":\"\"}]', '12', '0', '新建', '4', 'resource.fuwei.com/images/sample/1427955633832图片1.png', '4', '冰岛正反针包套', 'FWA30005', '24CM L *10CM W ，做为S/M码', '83', '5', 'FWA20004', 'resource.fuwei.com/images/sample/s/1427955633832图片1.png', 'resource.fuwei.com/images/sample/ss/1427955633832图片1.png', '11', '2', null, '15RS0004', 'FWA30005', '3');
INSERT INTO `tb_coloringorder` VALUES ('5', '5', '2015-04-03 01:18:39', '2015-04-03 01:18:39', '7', '[{\"color\":\"QY113-黑色\",\"material\":9,\"quantity\":419,\"standardyarn\":\"\"},{\"color\":\"QY113-黑色\",\"material\":1,\"quantity\":8,\"standardyarn\":\"\"}]', '15', '0', '新建', '4', 'resource.fuwei.com/images/sample/1427992528634图片1.png', '9', '马海毛挂须三角巾', 'FWA30007', '155*85+15cmf', '247', '7', 'FWA20005', 'resource.fuwei.com/images/sample/s/1427992528634图片1.png', 'resource.fuwei.com/images/sample/ss/1427992528634图片1.png', '11', '2', null, '15RS0005', 'FWA30007', '3');
INSERT INTO `tb_coloringorder` VALUES ('6', '5', '2015-04-03 14:37:33', '2015-04-03 14:37:33', '7', '[{\"color\":\"深夹花灰\",\"material\":9,\"quantity\":419,\"standardyarn\":\"\"},{\"color\":\"深夹花灰\",\"material\":1,\"quantity\":8,\"standardyarn\":\"\"}]', '26', '0', '新建', '4', 'resource.fuwei.com/images/sample/1427992528634图片1.png', '9', '马海毛挂须三角巾', 'FWA30007', '155*85+15cmf', '247', '7', 'FWA20005', 'resource.fuwei.com/images/sample/s/1427992528634图片1.png', 'resource.fuwei.com/images/sample/ss/1427992528634图片1.png', '11', '2', null, '15RS0006', 'FWA30007', '3');
INSERT INTO `tb_coloringorder` VALUES ('7', '7', '2015-04-03 15:12:53', '2015-04-03 15:12:53', '7', '[{\"color\":\"深夹花灰\",\"material\":9,\"quantity\":622,\"standardyarn\":\"\"}]', '26', '0', '新建', '4', 'resource.fuwei.com/images/sample/1427992746746图片1.png', '9', '马海毛毛球帽', 'FWA30008', '22*22', '85', '8', 'FWA20007', 'resource.fuwei.com/images/sample/s/1427992746746图片1.png', 'resource.fuwei.com/images/sample/ss/1427992746746图片1.png', '11', '3', null, '15RS0007', 'FWA30008', '3');
INSERT INTO `tb_coloringorder` VALUES ('8', '7', '2015-04-03 15:13:12', '2015-04-03 15:13:12', '7', '[{\"color\":\"黑色\",\"material\":9,\"quantity\":6,\"standardyarn\":\"\"}]', '15', '0', '新建', '4', 'resource.fuwei.com/images/sample/1427992746746图片1.png', '9', '马海毛毛球帽', 'FWA30008', '22*22', '85', '8', 'FWA20007', 'resource.fuwei.com/images/sample/s/1427992746746图片1.png', 'resource.fuwei.com/images/sample/ss/1427992746746图片1.png', '11', '3', null, '15RS0008', 'FWA30008', '3');
INSERT INTO `tb_coloringorder` VALUES ('9', '8', '2015-04-03 15:23:50', '2015-04-03 15:23:50', '7', '[{\"color\":\"深夹花灰\",\"material\":9,\"quantity\":102,\"standardyarn\":\"\"}]', '26', '0', '新建', '4', 'resource.fuwei.com/images/sample/1427992902609图片1.png', '9', '马海毛包套', 'FWA30009', 'S/M', '80', '9', 'FWA20008', 'resource.fuwei.com/images/sample/s/1427992902609图片1.png', 'resource.fuwei.com/images/sample/ss/1427992902609图片1.png', '11', '3', null, '15RS0009', 'FWA30009', '3');
INSERT INTO `tb_coloringorder` VALUES ('10', '8', '2015-04-03 15:24:25', '2015-04-03 15:24:25', '7', '[{\"color\":\"黑色\",\"material\":9,\"quantity\":109,\"standardyarn\":\"\"}]', '15', '0', '新建', '4', 'resource.fuwei.com/images/sample/1427992902609图片1.png', '9', '马海毛包套', 'FWA30009', 'S/M', '80', '9', 'FWA20008', 'resource.fuwei.com/images/sample/s/1427992902609图片1.png', 'resource.fuwei.com/images/sample/ss/1427992902609图片1.png', '11', '3', null, '15RS0010', 'FWA30009', '3');
INSERT INTO `tb_coloringorder` VALUES ('11', '9', '2015-04-03 21:50:18', '2015-04-03 21:50:18', '7', '[{\"color\":\"QY102-米白\",\"material\":6,\"quantity\":525,\"standardyarn\":\"\"}]', '12', '0', '新建', '4', 'resource.fuwei.com/images/sample/1428066399895图片1.png', '6', '冰岛毛绞花毛球帽', 'FWA30014', '21*20CM', '123', '14', 'FWA20009', 'resource.fuwei.com/images/sample/s/1428066399895图片1.png', 'resource.fuwei.com/images/sample/ss/1428066399895图片1.png', '11', '3', null, '15RS0011', 'FWA30014', '3');
INSERT INTO `tb_coloringorder` VALUES ('12', '9', '2015-04-03 21:50:44', '2015-04-03 21:50:44', '7', '[{\"color\":\"深夹花灰\",\"material\":7,\"quantity\":525,\"standardyarn\":\"\"}]', '26', '0', '新建', '4', 'resource.fuwei.com/images/sample/1428066399895图片1.png', '6', '冰岛毛绞花毛球帽', 'FWA30014', '21*20CM', '123', '14', 'FWA20009', 'resource.fuwei.com/images/sample/s/1428066399895图片1.png', 'resource.fuwei.com/images/sample/ss/1428066399895图片1.png', '11', '3', null, '15RS0012', 'FWA30014', '3');
INSERT INTO `tb_coloringorder` VALUES ('13', '10', '2015-04-03 22:01:41', '2015-04-03 22:01:41', '7', '[{\"color\":\"QY米色\",\"material\":6,\"quantity\":178,\"standardyarn\":\"\"}]', '12', '0', '新建', '4', 'resource.fuwei.com/images/sample/1428068026985图片1.png', '6', '绞花包套', 'FWA30016', '25*9cm S/M', '114', '16', 'FWA20010', 'resource.fuwei.com/images/sample/s/1428068026985图片1.png', 'resource.fuwei.com/images/sample/ss/1428068026985图片1.png', '11', '3', null, '15RS0013', 'FWA30016', '3');
INSERT INTO `tb_coloringorder` VALUES ('14', '10', '2015-04-03 22:02:04', '2015-04-03 22:02:04', '7', '[{\"color\":\"深夹花灰\",\"material\":7,\"quantity\":178,\"standardyarn\":\"\"}]', '26', '0', '新建', '4', 'resource.fuwei.com/images/sample/1428068026985图片1.png', '6', '绞花包套', 'FWA30016', '25*9cm S/M', '114', '16', 'FWA20010', 'resource.fuwei.com/images/sample/s/1428068026985图片1.png', 'resource.fuwei.com/images/sample/ss/1428068026985图片1.png', '11', '3', null, '15RS0014', 'FWA30016', '3');
INSERT INTO `tb_coloringorder` VALUES ('15', '12', '2015-04-03 23:18:25', '2015-04-07 10:58:57', '7', '[{\"color\":\"QY088-暗红色\",\"material\":1,\"quantity\":62,\"standardyarn\":\"\"}]', '12', '0', '新建', '4', 'resource.fuwei.com/images/sample/1428073896025图片1.png', '1', '抽条翻边帽', 'FWA30018', '21H*20W', '0', '18', 'FWA20012', 'resource.fuwei.com/images/sample/s/1428073896025图片1.png', 'resource.fuwei.com/images/sample/ss/1428073896025图片1.png', '11', '3', '', '15RS0015', 'FWA30018', '3');
INSERT INTO `tb_coloringorder` VALUES ('16', '12', '2015-04-03 23:18:48', '2015-04-03 23:18:48', '7', '[{\"color\":\"深夹花灰\",\"material\":1,\"quantity\":96,\"standardyarn\":\"\"}]', '26', '0', '新建', '4', 'resource.fuwei.com/images/sample/1428073896025图片1.png', '1', '抽条翻边帽', 'FWA30018', '21H*20W', '63', '18', 'FWA20012', 'resource.fuwei.com/images/sample/s/1428073896025图片1.png', 'resource.fuwei.com/images/sample/ss/1428073896025图片1.png', '11', '3', null, '15RS0016', 'FWA30018', '3');
INSERT INTO `tb_coloringorder` VALUES ('17', '13', '2015-04-03 23:53:30', '2015-04-03 23:53:30', '7', '[{\"color\":\"灰色\",\"material\":8,\"quantity\":177,\"standardyarn\":\"\"}]', '13', '0', '新建', '1', 'resource.fuwei.com/images/sample/1427993082909Adoree loop SMS 8019 carbon solid.JPG', '8', '冰岛毛羽毛纱围脖', 'FWA30010', '33*2*27', '198', '10', 'FWA20013', 'resource.fuwei.com/images/sample/s/1427993082909Adoree loop SMS 8019 carbon solid.png', 'resource.fuwei.com/images/sample/ss/1427993082909Adoree loop SMS 8019 carbon solid.png', '8', '5', null, '15RS0017', 'FWA30010', '2');
INSERT INTO `tb_coloringorder` VALUES ('18', '13', '2015-04-03 23:55:52', '2015-04-03 23:55:52', '7', '[{\"color\":\"黑色\",\"material\":16,\"quantity\":45,\"standardyarn\":\"\"}]', '28', '0', '新建', '1', 'resource.fuwei.com/images/sample/1427993082909Adoree loop SMS 8019 carbon solid.JPG', '8', '冰岛毛羽毛纱围脖', 'FWA30010', '33*2*27', '198', '10', 'FWA20013', 'resource.fuwei.com/images/sample/s/1427993082909Adoree loop SMS 8019 carbon solid.png', 'resource.fuwei.com/images/sample/ss/1427993082909Adoree loop SMS 8019 carbon solid.png', '8', '5', null, '15RS0018', 'FWA30010', '2');
INSERT INTO `tb_coloringorder` VALUES ('19', '14', '2015-04-04 00:29:59', '2015-04-04 00:29:59', '7', '[{\"color\":\"褐色\",\"material\":18,\"quantity\":60,\"standardyarn\":\"\"},{\"color\":\"红棕色\",\"material\":18,\"quantity\":110,\"standardyarn\":\"\"},{\"color\":\"旧粉色\",\"material\":18,\"quantity\":110,\"standardyarn\":\"\"}]', '29', '0', '新建', '7', 'resource.fuwei.com/images/sample/14280778246358CD60DF79323473B3DE0139776CD3BEA.png', '13', '仿羊绒成品染色拉毛围脖', 'FWA30021', '40H*75W', '152', '21', 'FWA20014', 'resource.fuwei.com/images/sample/s/14280778246358CD60DF79323473B3DE0139776CD3BEA.png', 'resource.fuwei.com/images/sample/ss/14280778246358CD60DF79323473B3DE0139776CD3BEA.png', '11', null, null, '15RS0019', 'FWA30021', '3');
INSERT INTO `tb_coloringorder` VALUES ('20', '15', '2015-04-04 01:48:38', '2015-04-04 01:48:38', '7', '[{\"color\":\"本白\",\"material\":9,\"quantity\":10,\"standardyarn\":\"\"}]', '15', '0', '新建', '7', 'resource.fuwei.com/images/sample/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', '17', '马海毛点子纱围脖', 'FWA30020', '43H*75W', '203', '20', 'FWA20015', 'resource.fuwei.com/images/sample/s/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', 'resource.fuwei.com/images/sample/ss/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', '11', null, null, '15RS0020', 'FWA30020', '3');
INSERT INTO `tb_coloringorder` VALUES ('21', '15', '2015-04-04 01:49:12', '2015-04-04 01:49:12', '7', '[{\"color\":\"点子纱\",\"material\":17,\"quantity\":6,\"standardyarn\":\"\"}]', '16', '0', '新建', '7', 'resource.fuwei.com/images/sample/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', '17', '马海毛点子纱围脖', 'FWA30020', '43H*75W', '203', '20', 'FWA20015', 'resource.fuwei.com/images/sample/s/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', 'resource.fuwei.com/images/sample/ss/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', '11', null, null, '15RS0021', 'FWA30020', '3');
INSERT INTO `tb_coloringorder` VALUES ('22', '16', '2015-04-04 01:53:37', '2015-04-04 01:53:37', '7', '[{\"color\":\"米色\",\"material\":9,\"quantity\":5,\"standardyarn\":\"\"},{\"color\":\"黑色\",\"material\":9,\"quantity\":10,\"standardyarn\":\"\"}]', '15', '0', '新建', '7', 'resource.fuwei.com/images/sample/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', '9', '马海毛烫钻帽', 'FWA30019', '20W*27H', '69', '19', 'FWA20016', 'resource.fuwei.com/images/sample/s/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', 'resource.fuwei.com/images/sample/ss/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', '11', null, null, '15RS0022', 'FWA30019', '3');
INSERT INTO `tb_coloringorder` VALUES ('23', '17', '2015-04-04 14:47:21', '2015-04-04 14:47:21', '7', '[{\"color\":\"QY114-灰色\",\"material\":9,\"quantity\":111,\"standardyarn\":\"\"},{\"color\":\"QY114-粉色\",\"material\":9,\"quantity\":68,\"standardyarn\":\"\"},{\"color\":\"QY114-酒红\",\"material\":9,\"quantity\":111,\"standardyarn\":\"\"},{\"color\":\"QY114-深驼\",\"material\":9,\"quantity\":68,\"standardyarn\":\"\"}]', '15', '0', '新建', '4', 'resource.fuwei.com/images/sample/1428129724477图片1.png', '9', '马海毛抽条加亮丝围脖', 'FWA30023', '70*2*40cm', '115', '23', 'FWA20017', 'resource.fuwei.com/images/sample/s/1428129724477图片1.png', 'resource.fuwei.com/images/sample/ss/1428129724477图片1.png', '11', '3', null, '15RS0023', 'FWA30023', '3');
INSERT INTO `tb_coloringorder` VALUES ('24', '20', '2015-04-06 12:34:57', '2015-04-06 12:34:57', '7', '[{\"color\":\"hr 32黑色\",\"material\":9,\"quantity\":10,\"standardyarn\":\"\"},{\"color\":\"hr32  米色\",\"material\":9,\"quantity\":5,\"standardyarn\":\"\"}]', '15', '0', '新建', '7', 'resource.fuwei.com/images/sample/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', '9', '马海毛烫钻帽', 'FWA30019', '20W*27H', '69', '19', 'FWA20020', 'resource.fuwei.com/images/sample/s/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', 'resource.fuwei.com/images/sample/ss/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', '11', null, '', '15RS0024', ' hr32', '3');
INSERT INTO `tb_coloringorder` VALUES ('25', '21', '2015-04-06 14:29:04', '2015-04-06 14:29:04', '7', '[{\"color\":\"本白色\",\"material\":9,\"quantity\":10,\"standardyarn\":\"\"}]', '15', '0', '新建', '7', 'resource.fuwei.com/images/sample/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', '17', '马海毛点子纱围脖', 'FWA30020', '43H*75W', '203', '20', 'FWA20021', 'resource.fuwei.com/images/sample/s/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', 'resource.fuwei.com/images/sample/ss/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', '11', null, '', '15RS0025', 'hr140919l', '3');
INSERT INTO `tb_coloringorder` VALUES ('26', null, '2015-04-07 07:55:31', '2015-04-07 07:55:31', '7', '[{\"color\":\"粉色15-1611 tpx\",\"material\":1,\"quantity\":0,\"standardyarn\":\"\"},{\"color\":\"本白11-0103tpx\",\"material\":1,\"quantity\":0,\"standardyarn\":\"\"},{\"color\":\"灰色15-4101tpx\",\"material\":1,\"quantity\":0,\"standardyarn\":\"\"}]', '13', '0', '新建', '1', null, null, '围', null, null, '0', null, null, null, null, '8', null, '', '15RS0026', '1237', '2');
INSERT INTO `tb_coloringorder` VALUES ('27', null, '2015-04-07 08:07:21', '2015-04-11 15:25:50', '7', '[{\"color\":\"米色\",\"material\":16,\"quantity\":3,\"standardyarn\":\"\"},{\"color\":\"黑色\",\"material\":16,\"quantity\":3,\"standardyarn\":\"\"},{\"color\":\"深粉\",\"material\":16,\"quantity\":3,\"standardyarn\":\"\"}]', '28', '0', '新建', '4', null, null, '全尼龙节子纱', null, null, '0', null, null, null, null, '11', '1', '', '15RS0027', '123', '3');
INSERT INTO `tb_coloringorder` VALUES ('28', null, '2015-04-07 08:26:35', '2015-04-07 08:26:35', '7', '[{\"color\":\"粉色\",\"material\":3,\"quantity\":0,\"standardyarn\":\"\"}]', '14', '0', '新建', '1', null, null, '帽子', null, null, '0', null, null, null, null, '10', null, 'ab色卡', '15RS0028', 'kl122-11', '1');
INSERT INTO `tb_coloringorder` VALUES ('29', null, '2015-04-07 08:56:19', '2015-04-07 08:56:19', '7', '[{\"color\":\"45#卡其色\",\"material\":9,\"quantity\":55,\"standardyarn\":\"\"},{\"color\":\"89#暗紫色\",\"material\":9,\"quantity\":55,\"standardyarn\":\"\"},{\"color\":\"90#黑色\",\"material\":9,\"quantity\":55,\"standardyarn\":\"\"}]', '15', '0', '新建', '7', null, null, '马海毛亮丝围脖', null, null, '0', null, null, null, null, '11', null, '', '15RS0029', '76346', '3');
INSERT INTO `tb_coloringorder` VALUES ('30', null, '2015-04-07 11:11:56', '2015-04-07 11:11:56', '7', '[{\"color\":\"深灰夹花\",\"material\":7,\"quantity\":1470,\"standardyarn\":\"\"}]', '26', '0', '新建', '4', null, null, '绞花三件套', null, null, '0', null, null, null, null, '11', '3', '', '15RS0030', 'QY15-102\\103\\104', '3');
INSERT INTO `tb_coloringorder` VALUES ('31', null, '2015-04-07 12:51:43', '2015-04-07 12:51:43', '7', '[{\"color\":\"黑色\",\"material\":20,\"quantity\":112,\"standardyarn\":\"\"},{\"color\":\"海军蓝\",\"material\":20,\"quantity\":95,\"standardyarn\":\"\"},{\"color\":\"银色\",\"material\":20,\"quantity\":95,\"standardyarn\":\"\"}]', '13', '0', '新建', '1', null, null, '金属管状纱三件套', null, null, '0', null, null, null, null, '8', null, '', '15RS0031', 'M49771D', '2');
INSERT INTO `tb_coloringorder` VALUES ('32', null, '2015-04-07 14:28:59', '2015-04-07 14:28:59', '7', '[{\"color\":\"OB米白色\",\"material\":9,\"quantity\":278,\"standardyarn\":\"\"},{\"color\":\"OB黑色\",\"material\":9,\"quantity\":515,\"standardyarn\":\"\"},{\"color\":\"OB紫色\",\"material\":9,\"quantity\":198,\"standardyarn\":\"\"},{\"color\":\"OB  黄色\",\"material\":9,\"quantity\":197,\"standardyarn\":\"\"}]', '15', '0', '新建', '2', null, null, '马海毛混色围巾', null, null, '0', null, null, null, null, '11', null, '', '15RS0032', 'OB954525', '3');
INSERT INTO `tb_coloringorder` VALUES ('33', null, '2015-04-07 15:19:42', '2015-04-07 16:53:25', '7', '[{\"color\":\"OB白色\",\"material\":21,\"quantity\":105,\"standardyarn\":\"\"},{\"color\":\"OB黑色\",\"material\":21,\"quantity\":180,\"standardyarn\":\"\"},{\"color\":\"OB深灰\",\"material\":21,\"quantity\":75,\"standardyarn\":\"\"}]', '28', '0', '新建', '2', null, null, '马海毛混色围巾', null, null, '0', null, null, null, null, '11', null, '', '15RS0033', 'OB954525', '3');
INSERT INTO `tb_coloringorder` VALUES ('34', null, '2015-04-07 15:25:49', '2015-04-07 16:52:15', '7', '[{\"color\":\"白+黑心\",\"material\":22,\"quantity\":331,\"standardyarn\":\"\"},{\"color\":\"OB深灰+黑心\",\"material\":22,\"quantity\":567,\"standardyarn\":\"\"}]', '15', '0', '新建', '2', null, null, '马海毛混纱围巾', null, null, '0', null, null, null, null, '11', null, '', '15RS0034', 'OB954525', '3');
INSERT INTO `tb_coloringorder` VALUES ('35', null, '2015-04-07 16:42:39', '2015-04-07 16:42:39', '7', '[{\"color\":\"中灰夹花\",\"material\":3,\"quantity\":2,\"standardyarn\":\"\"},{\"color\":\"中灰夹花\",\"material\":4,\"quantity\":3,\"standardyarn\":\"\"},{\"color\":\"中灰夹花\",\"material\":7,\"quantity\":5,\"standardyarn\":\"\"}]', '26', '0', '新建', '3', null, null, '绞花五件套', null, null, '0', null, null, null, null, '12', '3', '', '15RS0035', 'VD', '4');
INSERT INTO `tb_coloringorder` VALUES ('36', null, '2015-04-07 16:46:36', '2015-04-07 16:46:36', '7', '[{\"color\":\"714夹花纱\",\"material\":12,\"quantity\":3,\"standardyarn\":\"\"}]', '26', '0', '新建', '1', null, null, '半指加盖手套', null, null, '0', null, null, null, null, '9', null, '', '15RS0036', 'GU', '2');
INSERT INTO `tb_coloringorder` VALUES ('37', null, '2015-04-08 13:41:43', '2015-04-08 13:41:43', '7', '[{\"color\":\"灰色18-0503\",\"material\":1,\"quantity\":0,\"standardyarn\":\"EF色卡\"}]', '12', '0', '新建', '6', null, null, '圆机帽', null, null, '0', null, null, null, null, '10', '6', '', '15RS0037', 'JC/15/00016', '1');
INSERT INTO `tb_coloringorder` VALUES ('38', null, '2015-04-08 15:27:48', '2015-04-08 15:27:48', '7', '[{\"color\":\"714#\",\"material\":5,\"quantity\":5,\"standardyarn\":\"\"}]', '26', '0', '新建', '1', null, null, '绞花罗文披肩', null, null, '0', null, null, null, null, '8', null, '', '15RS0038', 'R16S', '2');
INSERT INTO `tb_coloringorder` VALUES ('39', null, '2015-04-08 17:53:04', '2015-04-08 17:53:04', '7', '[{\"color\":\"QY114黑色\",\"material\":9,\"quantity\":95,\"standardyarn\":\"\"},{\"color\":\"QY114桔红\",\"material\":9,\"quantity\":85,\"standardyarn\":\"\"},{\"color\":\"QY114酒红\",\"material\":9,\"quantity\":68,\"standardyarn\":\"\"},{\"color\":\"QY114绿色\",\"material\":9,\"quantity\":117,\"standardyarn\":\"\"},{\"color\":\"QY114米白\",\"material\":9,\"quantity\":10,\"standardyarn\":\"\"}]', '15', '0', '新建', '3', null, null, '马海毛珠片纱围脖', null, null, '0', null, null, null, null, '11', '3', '', '15RS0039', 'QY15-114', '3');
INSERT INTO `tb_coloringorder` VALUES ('40', null, '2015-04-08 18:14:10', '2015-04-08 18:14:10', '7', '[{\"color\":\"LU471米色\",\"material\":6,\"quantity\":190,\"standardyarn\":\"\"}]', '12', '0', '新建', '3', null, null, '童款带子纱翻边帽', null, null, '0', null, null, null, null, '12', null, '', '15RS0040', 'LU471', '4');
INSERT INTO `tb_coloringorder` VALUES ('41', null, '2015-04-08 18:18:03', '2015-04-08 18:18:03', '7', '[{\"color\":\"LU471深灰夹花\",\"material\":7,\"quantity\":276,\"standardyarn\":\"\"}]', '26', '0', '新建', '3', null, null, '童款带子纱翻边帽', null, null, '0', null, null, null, null, '12', null, '', '15RS0041', 'LU471', '4');
INSERT INTO `tb_coloringorder` VALUES ('42', null, '2015-04-08 18:28:13', '2015-04-08 18:28:13', '7', '[{\"color\":\"QY157黑色\",\"material\":6,\"quantity\":50,\"standardyarn\":\"\"},{\"color\":\"QY157本白色\",\"material\":6,\"quantity\":60,\"standardyarn\":\"\"}]', '13', '0', '新建', '4', null, null, '冰岛毛带子纱围脖', null, null, '0', null, null, null, null, '11', '3', '', '15RS0042', 'QY15-157', '3');
INSERT INTO `tb_coloringorder` VALUES ('43', null, '2015-04-09 10:32:31', '2015-04-09 10:32:31', '7', '[{\"color\":\"棕色19一1320t1px\",\"material\":3,\"quantity\":0,\"standardyarn\":\"AB色卡\"}]', '14', '0', '新建', '1', null, null, '头带', null, null, '0', null, null, null, null, '8', null, '', '15RS0043', 'FW122-7', '2');
INSERT INTO `tb_coloringorder` VALUES ('44', null, '2015-04-09 12:31:06', '2015-04-09 12:31:06', '7', '[{\"color\":\"15NY黑色\",\"material\":10,\"quantity\":135,\"standardyarn\":\"\"},{\"color\":\"15NY褐色\",\"material\":10,\"quantity\":77,\"standardyarn\":\"\"},{\"color\":\"15NY白色\",\"material\":10,\"quantity\":42,\"standardyarn\":\"\"},{\"color\":\"15NY棕色\",\"material\":10,\"quantity\":30,\"standardyarn\":\"\"},{\"color\":\"15NY灰色\",\"material\":10,\"quantity\":475,\"standardyarn\":\"\"}]', '16', '0', '新建', '1', null, null, '夹亮丝三件套', null, null, '0', null, null, null, null, '8', null, '色纱筒纱', '15RS0044', '15NY-FW06/07/08', '2');
INSERT INTO `tb_coloringorder` VALUES ('45', null, '2015-04-09 18:01:16', '2015-04-09 18:01:16', '7', '[{\"color\":\"QY15黑色\",\"material\":6,\"quantity\":50,\"standardyarn\":\"\"},{\"color\":\"QY15本白色\",\"material\":6,\"quantity\":60,\"standardyarn\":\"\"}]', '13', '0', '新建', '4', null, null, '冰岛毛带子纱围脖', null, null, '0', null, null, null, null, '11', '3', '', '15RS0045', 'QY15-157', '3');
INSERT INTO `tb_coloringorder` VALUES ('46', null, '2015-04-09 18:11:08', '2015-04-09 18:11:23', '7', '[{\"color\":\"LU471米色\",\"material\":6,\"quantity\":190,\"standardyarn\":\"\"},{\"color\":\"LU471米色\",\"material\":6,\"quantity\":190,\"standardyarn\":\"\"}]', '13', '0', '新建', '3', null, null, '童款带子纱翻边帽', null, null, '0', null, null, null, null, '12', null, '', '15RS0046', 'LU471', '4');
INSERT INTO `tb_coloringorder` VALUES ('47', null, '2015-04-09 18:17:39', '2015-04-09 18:17:39', '7', '[{\"color\":\"QY15白灰\",\"material\":19,\"quantity\":56,\"standardyarn\":\"\"},{\"color\":\"UL471白红\",\"material\":19,\"quantity\":47,\"standardyarn\":\"\"}]', '16', '0', '新建', '4', null, null, '冰岛毛带子纱围脖', null, null, '0', null, null, null, null, '11', '3', '', '15RS0047', 'QY15-157', '3');
INSERT INTO `tb_coloringorder` VALUES ('48', null, '2015-04-10 08:35:43', '2015-04-10 08:35:43', '7', '[{\"color\":\"藏青\",\"material\":10,\"quantity\":3,\"standardyarn\":\"\"},{\"color\":\"暗蓝\",\"material\":10,\"quantity\":3,\"standardyarn\":\"\"},{\"color\":\"紫藏青\",\"material\":10,\"quantity\":3,\"standardyarn\":\"\"},{\"color\":\"中粉\",\"material\":10,\"quantity\":3,\"standardyarn\":\"\"},{\"color\":\"浅粉\",\"material\":10,\"quantity\":3,\"standardyarn\":\"\"},{\"color\":\"米色\",\"material\":10,\"quantity\":3,\"standardyarn\":\"\"}]', '16', '0', '新建', '1', null, null, '羽毛纱马海毛围脖', null, null, '0', null, null, null, null, '10', null, '', '15RS0048', 'STNO-6830GS', '1');
INSERT INTO `tb_coloringorder` VALUES ('49', null, '2015-04-10 08:38:47', '2015-04-10 08:38:47', '7', '[{\"color\":\"驼色\",\"material\":10,\"quantity\":3,\"standardyarn\":\"\"}]', '16', '0', '新建', '1', null, null, '羽毛纱马海毛围脖', null, null, '0', null, null, null, null, '10', null, '', '15RS0049', 'STNO-6830GS', '1');
INSERT INTO `tb_coloringorder` VALUES ('50', null, '2015-04-10 09:58:49', '2015-04-10 09:59:34', '7', '[{\"color\":\"QY15本白\",\"material\":3,\"quantity\":615,\"standardyarn\":\"\"},{\"color\":\"QY15黑色\",\"material\":3,\"quantity\":5,\"standardyarn\":\"\"}]', '13', '0', '新建', '4', null, null, '绞花喟子围脖', null, null, '0', null, null, null, null, '11', '3', '请多加柔软剂', '15RS0050', 'QY15-100/101/165', '3');
INSERT INTO `tb_coloringorder` VALUES ('51', null, '2015-04-10 10:02:38', '2015-04-10 10:02:38', '7', '[{\"color\":\"QY15深灰夹花K974\",\"material\":3,\"quantity\":611,\"standardyarn\":\"\"}]', '26', '0', '新建', '4', null, null, '绞花帽子围脖', null, null, '0', null, null, null, null, '11', '3', '请多加柔软剂', '15RS0051', 'QY15-100/101/165', '3');
INSERT INTO `tb_coloringorder` VALUES ('52', null, '2015-04-10 10:16:49', '2015-04-10 10:16:49', '7', '[{\"color\":\"皮紫\",\"material\":11,\"quantity\":0,\"standardyarn\":\"\"},{\"color\":\"橡皮红\",\"material\":11,\"quantity\":0,\"standardyarn\":\"\"},{\"color\":\"黑色\",\"material\":11,\"quantity\":0,\"standardyarn\":\"\"},{\"color\":\"暗红\",\"material\":11,\"quantity\":0,\"standardyarn\":\"\"},{\"color\":\"棕色\",\"material\":11,\"quantity\":0,\"standardyarn\":\"\"},{\"color\":\"酒红\",\"material\":11,\"quantity\":0,\"standardyarn\":\"\"}]', '12', '0', '新建', '1', null, null, '经编披肩', null, null, '0', null, null, null, null, '10', null, 'AB色卡', '15RS0052', 'MISSY/PONCHO', '1');
INSERT INTO `tb_coloringorder` VALUES ('53', null, '2015-04-10 10:19:31', '2015-04-10 10:19:31', '7', '[{\"color\":\"驼色\",\"material\":11,\"quantity\":0,\"standardyarn\":\"\"},{\"color\":\"深紫\",\"material\":11,\"quantity\":0,\"standardyarn\":\"\"}]', '12', '0', '新建', '1', null, null, '经编披肩', null, null, '0', null, null, null, null, '10', null, 'AB色卡', '15RS0053', 'MISSY/PONCHO', '1');
INSERT INTO `tb_coloringorder` VALUES ('54', null, '2015-04-10 16:20:06', '2015-04-10 16:20:06', '7', '[{\"color\":\"28X土黄色\",\"material\":1,\"quantity\":5,\"standardyarn\":\"\"}]', '12', '0', '新建', '3', null, null, '基本款反针围脖', null, null, '0', null, null, null, null, '12', null, '', '15RS0054', 'LX194', '4');
INSERT INTO `tb_coloringorder` VALUES ('55', null, '2015-04-11 17:27:24', '2015-04-11 17:27:24', '7', '[{\"color\":\"AM黑、色\",\"material\":4,\"quantity\":1382,\"standardyarn\":\"\"},{\"color\":\"AM奶白\",\"material\":4,\"quantity\":1382,\"standardyarn\":\"\"},{\"color\":\"AM丈青\",\"material\":4,\"quantity\":1062,\"standardyarn\":\"\"},{\"color\":\"AM:酉红\",\"material\":4,\"quantity\":1192,\"standardyarn\":\"\"}]', '14', '0', '新建', '1', null, null, ' 绞花三件套', null, null, '0', null, null, null, null, '8', null, '', '15RS0055', '15AM-FW001', '2');
INSERT INTO `tb_coloringorder` VALUES ('56', null, '2015-04-11 17:31:17', '2015-04-11 17:31:17', '7', '[{\"color\":\"714#\",\"material\":4,\"quantity\":505,\"standardyarn\":\"\"},{\"color\":\"714#\",\"material\":7,\"quantity\":4,\"standardyarn\":\"\"}]', '26', '0', '新建', '1', null, null, '绞花三件套', null, null, '0', null, null, null, null, '8', null, '', '15RS0056', '15AM-FW001', '2');
INSERT INTO `tb_coloringorder` VALUES ('57', null, '2015-04-11 17:42:33', '2015-04-11 17:42:33', '7', '[{\"color\":\"Cap\",\"material\":1,\"quantity\":220,\"standardyarn\":\"\"}]', '13', '0', '新建', '3', null, null, '针织双层比尼帽', null, null, '0', null, null, null, null, '12', null, '', '15RS0057', '15PDFW0001', '4');
INSERT INTO `tb_coloringorder` VALUES ('58', null, '2015-04-11 17:50:36', '2015-04-11 17:50:36', '7', '[{\"color\":\"VMB米色\",\"material\":9,\"quantity\":10,\"standardyarn\":\"\"},{\"color\":\"VMB蓝色\",\"material\":9,\"quantity\":10,\"standardyarn\":\"\"}]', '15', '0', '新建', '3', null, null, '马悔毛亮丝围巾帽子', null, null, '0', null, null, null, null, '12', null, '', '15RS0058', 'EBVMB', '4');
INSERT INTO `tb_coloringorder` VALUES ('59', null, '2015-04-12 09:08:05', '2015-04-12 09:08:05', '7', '[{\"color\":\"SL白色\",\"material\":6,\"quantity\":10,\"standardyarn\":\"\"}]', '15', '0', '新建', '5', null, null, '菱形绞花毛球幅', null, null, '0', null, null, null, null, '11', null, '', '15RS0059', '145647', '3');
INSERT INTO `tb_coloringorder` VALUES ('60', null, '2015-04-12 10:10:50', '2015-04-12 10:10:50', '7', '[{\"color\":\"17-1044tpx\",\"material\":3,\"quantity\":0,\"standardyarn\":\"AB色卡\"}]', '13', '0', '新建', '3', null, null, '挂须围巾', null, null, '0', null, null, null, null, '12', null, '', '15RS0060', '561', '4');
INSERT INTO `tb_coloringorder` VALUES ('61', null, '2015-04-12 10:14:16', '2015-04-12 10:14:16', '7', '[{\"color\":\"本白\",\"material\":16,\"quantity\":3,\"standardyarn\":\"\"}]', '28', '0', '新建', '1', null, null, '点点羽毛纱帽子', null, null, '0', null, null, null, null, '9', null, '', '15RS0061', 'STO', '2');
INSERT INTO `tb_coloringorder` VALUES ('62', null, '2015-04-12 10:17:06', '2015-04-12 10:17:06', '7', '[{\"color\":\"白兰驼组\",\"material\":21,\"quantity\":3,\"standardyarn\":\"\"},{\"color\":\"红色组\",\"material\":21,\"quantity\":3,\"standardyarn\":\"\"}]', '28', '0', '新建', '1', null, null, '点点羽毛纱帽子', null, null, '0', null, null, null, null, '8', null, '', '15RS0062', 'STO', '2');
INSERT INTO `tb_coloringorder` VALUES ('63', null, '2015-04-12 10:22:05', '2015-04-12 10:22:05', '7', '[{\"color\":\"STO米色\",\"material\":4,\"quantity\":5,\"standardyarn\":\"\"},{\"color\":\"STO灰色\",\"material\":4,\"quantity\":5,\"standardyarn\":\"\"}]', '12', '0', '新建', '1', null, null, '点、点羽毛纱帽子', null, null, '0', null, null, null, null, '8', null, '', '15RS0063', 'STO', '2');
INSERT INTO `tb_coloringorder` VALUES ('64', null, '2015-04-12 15:15:33', '2015-04-12 15:15:33', '7', '[{\"color\":\"712\",\"material\":9,\"quantity\":65,\"standardyarn\":\"\"}]', '26', '0', '新建', '5', null, null, '马海毛毛球贝雷帽', null, null, '0', null, null, null, null, '11', null, '', '15RS0064', '74030', '3');
INSERT INTO `tb_coloringorder` VALUES ('65', null, '2015-04-13 16:56:27', '2015-04-13 16:56:27', '7', '[{\"color\":\"743米色\",\"material\":10,\"quantity\":24,\"standardyarn\":\"\"},{\"color\":\"205蓝色\",\"material\":10,\"quantity\":23,\"standardyarn\":\"\"},{\"color\":\"M27黑色\",\"material\":10,\"quantity\":23,\"standardyarn\":\"\"}]', '16', '0', '新建', '3', null, null, '马海毛亮丝围巾', null, null, '0', null, null, null, null, '12', null, '', '15RS0065', '151BFW0001', '4');
INSERT INTO `tb_coloringorder` VALUES ('66', null, '2015-04-13 17:04:08', '2015-04-13 17:04:08', '7', '[{\"color\":\"QY15白灰\",\"material\":19,\"quantity\":56,\"standardyarn\":\"\"}]', '14', '0', '新建', '4', null, null, '冰岛毛带子纱围脖', null, null, '0', null, null, null, null, '11', '3', '', '15RS0066', 'QY15-157', '3');
INSERT INTO `tb_coloringorder` VALUES ('67', null, '2015-04-13 17:40:21', '2015-04-13 17:40:21', '7', '[{\"color\":\"IS浅铁锈红\",\"material\":6,\"quantity\":5,\"standardyarn\":\"\"},{\"color\":\"IS深铁锈红\",\"material\":6,\"quantity\":5,\"standardyarn\":\"\"},{\"color\":\"IS深粉\",\"material\":5,\"quantity\":5,\"standardyarn\":\"\"},{\"color\":\"IS浅粉\",\"material\":6,\"quantity\":5,\"standardyarn\":\"\"},{\"color\":\"IS黑色\",\"material\":6,\"quantity\":10,\"standardyarn\":\"\"},{\"color\":\"IS深丈青\",\"material\":6,\"quantity\":5,\"standardyarn\":\"\"}]', '15', '0', '新建', '1', null, null, '绞花两配套', null, null, '0', null, null, null, null, '8', '1', '', '15RS0067', '0', '2');
INSERT INTO `tb_coloringorder` VALUES ('68', null, '2015-04-13 17:43:52', '2015-04-13 17:43:52', '7', '[{\"color\":\"IS浅丈青\",\"material\":6,\"quantity\":5,\"standardyarn\":\"\"},{\"color\":\"IS浅绿\",\"material\":6,\"quantity\":5,\"standardyarn\":\"\"},{\"color\":\"IS深绿\",\"material\":6,\"quantity\":5,\"standardyarn\":\"\"}]', '15', '0', '新建', '1', null, null, '绞花两配套', null, null, '0', null, null, null, null, '8', '1', '', '15RS0068', '0', '2');
INSERT INTO `tb_coloringorder` VALUES ('69', null, '2015-04-13 17:48:09', '2015-04-13 17:48:09', '7', '[{\"color\":\"GST11-0602tcx\",\"material\":5,\"quantity\":5,\"standardyarn\":\"\"},{\"color\":\"GST15-1116tcx\",\"material\":1,\"quantity\":3,\"standardyarn\":\"\"}]', '13', '0', '新建', '3', null, null, '冰岛毛晴纶绞花围脖', null, null, '0', null, null, null, null, '12', null, '', '15RS0069', 'GST', '4');
INSERT INTO `tb_coloringorder` VALUES ('70', null, '2015-04-13 18:13:50', '2015-04-13 18:13:50', '7', '[{\"color\":\"99BKJ象牙白\",\"material\":6,\"quantity\":227,\"standardyarn\":\"\"},{\"color\":\"99BKJ酒红色\",\"material\":6,\"quantity\":3,\"standardyarn\":\"\"},{\"color\":\"99BKJ烟灰色\",\"material\":6,\"quantity\":3,\"standardyarn\":\"\"},{\"color\":\"99BKJ玫红色\",\"material\":6,\"quantity\":3,\"standardyarn\":\"\"}]', '13', '0', '新建', '1', null, null, '针织单色帽子', null, null, '0', null, null, null, null, '8', null, '', '15RS0070', '99MKJ503', '2');
INSERT INTO `tb_coloringorder` VALUES ('71', null, '2015-04-13 18:19:43', '2015-04-13 18:19:43', '7', '[{\"color\":\"SLI黑色\",\"material\":6,\"quantity\":515,\"standardyarn\":\"\"},{\"color\":\"SLI米白\",\"material\":6,\"quantity\":105,\"standardyarn\":\"\"},{\"color\":\"SLI暗红\",\"material\":6,\"quantity\":1220,\"standardyarn\":\"\"}]', '13', '0', '新建', '5', null, null, '绞花毛球帽', null, null, '0', null, null, null, null, '11', null, '', '15RS0071', 'SLI', '3');
INSERT INTO `tb_coloringorder` VALUES ('72', null, '2015-04-13 18:46:01', '2015-04-13 18:46:01', '7', '[{\"color\":\"99BKJ\",\"material\":7,\"quantity\":3,\"standardyarn\":\"\"}]', '26', '0', '新建', '1', null, null, '针织单色帽子', null, null, '0', null, null, null, null, '8', null, '', '15RS0072', '99MKJ503', '2');
INSERT INTO `tb_coloringorder` VALUES ('73', null, '2015-04-13 18:54:16', '2015-04-13 18:54:16', '7', '[{\"color\":\"15DP驼色\",\"material\":6,\"quantity\":145,\"standardyarn\":\"\"}]', '12', '0', '新建', '1', null, null, '绞花加毛条围脖', null, null, '0', null, null, null, null, '8', null, '', '15RS0073', '15DPFW01', '2');
INSERT INTO `tb_coloringorder` VALUES ('74', null, '2015-04-14 13:11:02', '2015-04-14 13:11:02', '7', '[{\"color\":\"714\",\"material\":7,\"quantity\":5,\"standardyarn\":\"\"}]', '26', '0', '新建', '3', null, null, '绞花套装', null, null, '0', null, null, null, null, '12', null, '', '15RS0074', '15HVFW0001', '4');
INSERT INTO `tb_coloringorder` VALUES ('75', null, '2015-04-14 13:29:08', '2015-04-14 13:29:08', '7', '[{\"color\":\"036米驼色\",\"material\":4,\"quantity\":992,\"standardyarn\":\"\"},{\"color\":\"036丈青\",\"material\":4,\"quantity\":992,\"standardyarn\":\"\"},{\"color\":\"036米驼色\",\"material\":8,\"quantity\":4,\"standardyarn\":\"\"},{\"color\":\"036丈青\",\"material\":8,\"quantity\":4,\"standardyarn\":\"\"}]', '12', '0', '新建', '4', null, null, '冰岛毛正反针三配套', null, null, '0', null, null, null, null, '11', '2', '', '15RS0075', '15102866', '3');
INSERT INTO `tb_coloringorder` VALUES ('76', null, '2015-04-14 14:37:35', '2015-04-14 14:54:20', '7', '[{\"color\":\"W120-黑色\",\"material\":1,\"quantity\":125,\"standardyarn\":\"确认A色\"},{\"color\":\"W120-棕色(深咖啡)\",\"material\":1,\"quantity\":30,\"standardyarn\":\"确认B色\"},{\"color\":\"W120-灰色\",\"material\":1,\"quantity\":82,\"standardyarn\":\"待定\"}]', '12', '0', '新建', '6', null, null, '圆机帽', null, null, '0', null, null, null, null, '10', null, '', '15RS0076', 'W1201267', '1');
INSERT INTO `tb_coloringorder` VALUES ('77', null, '2015-04-14 14:37:41', '2015-04-14 14:37:41', '7', '[{\"color\":\"NEXT-棕色\",\"material\":11,\"quantity\":246,\"standardyarn\":\"\"},{\"color\":\"NEXT-丈青\",\"material\":11,\"quantity\":23,\"standardyarn\":\"\"},{\"color\":\"NEXT-红色\",\"material\":11,\"quantity\":46,\"standardyarn\":\"\"},{\"color\":\"NEXT-黑色\",\"material\":11,\"quantity\":247,\"standardyarn\":\"\"},{\"color\":\"NEXT-蓝色\",\"material\":11,\"quantity\":500,\"standardyarn\":\"\"}]', '12', '0', '新建', '1', null, null, 'AB线翻边帽', null, null, '0', null, null, null, null, '8', null, '', '15RS0077', '15NEXT-FW01', '2');
INSERT INTO `tb_coloringorder` VALUES ('78', null, '2015-04-14 15:09:27', '2015-04-14 15:09:27', '7', '[{\"color\":\"NEXT-浅灰夹花(712A)\",\"material\":12,\"quantity\":500,\"standardyarn\":\"\"}]', '26', '0', '新建', '1', null, null, 'AB纱翻边帽', null, null, '0', null, null, null, null, '8', null, '', '15RS0078', '15NEXT-FW01', '2');
INSERT INTO `tb_coloringorder` VALUES ('79', null, '2015-04-14 16:30:55', '2015-04-14 16:30:55', '7', '[{\"color\":\"PCS55暗绿色段染组\",\"material\":9,\"quantity\":23,\"standardyarn\":\"\"}]', '14', '0', '新建', '3', null, null, '冰岛毛段染纱围巾', null, null, '0', null, null, null, null, '11', null, '', '15RS0079', '17087055', '3');
INSERT INTO `tb_coloringorder` VALUES ('80', null, '2015-04-14 16:51:14', '2015-04-14 16:51:14', '7', '[{\"color\":\"PG-黑色\",\"material\":1,\"quantity\":355,\"standardyarn\":\"\"}]', '3', '0', '新建', '1', null, null, '格子披肩', null, null, '0', null, null, null, null, '11', null, '', '15RS0080', '15GIIIFW008', '3');
INSERT INTO `tb_coloringorder` VALUES ('81', null, '2015-04-14 17:00:37', '2015-04-15 13:57:46', '7', '[{\"color\":\"15GIII-棕色\",\"material\":9,\"quantity\":415,\"standardyarn\":\"\"}]', '15', '0', '新建', '1', null, null, '针织单色围巾', null, null, '0', null, null, null, null, '8', null, '', '15RS0081', '15GIIIFW033', '2');
INSERT INTO `tb_coloringorder` VALUES ('82', null, '2015-04-15 07:39:02', '2015-04-15 07:39:02', '7', '[{\"color\":\"浅灰色\",\"material\":1,\"quantity\":20,\"standardyarn\":\"\"},{\"color\":\"中灰\",\"material\":1,\"quantity\":10,\"standardyarn\":\"\"}]', '3', '0', '新建', '2', null, null, '烫金披肩', null, null, '0', null, null, null, null, '11', null, '', '15RS0082', 'EY15-050', '3');
INSERT INTO `tb_coloringorder` VALUES ('83', null, '2015-04-15 13:38:51', '2015-04-15 13:58:40', '7', '[{\"color\":\"01X米色\",\"material\":1,\"quantity\":2890,\"standardyarn\":\"\"},{\"color\":\"84X咖啡色\",\"material\":1,\"quantity\":2455,\"standardyarn\":\"\"},{\"color\":\"28x土黄\",\"material\":1,\"quantity\":1542,\"standardyarn\":\"\"}]', '15', '0', '新建', '3', null, null, '基本款比尼帽', null, null, '0', null, null, null, null, '12', null, '', '15RS0083', 'LX221', '4');
INSERT INTO `tb_coloringorder` VALUES ('84', null, '2015-04-15 13:44:06', '2015-04-15 13:44:06', '7', '[{\"color\":\"90X浅-灰夹花-712#\",\"material\":1,\"quantity\":3190,\"standardyarn\":\"\"}]', '26', '0', '新建', '3', null, null, '基本款比尼帽', null, null, '0', null, null, null, null, '12', null, '', '15RS0084', 'LX221', '4');
INSERT INTO `tb_coloringorder` VALUES ('85', null, '2015-04-15 13:46:09', '2015-04-15 13:46:09', '7', '[{\"color\":\"09x浅灰夹花-712#\",\"material\":5,\"quantity\":765,\"standardyarn\":\"\"}]', '26', '0', '新建', '3', null, null, '冰岛毛反针围脖', null, null, '0', null, null, null, null, '12', null, '', '15RS0085', 'LW375', '4');
INSERT INTO `tb_coloringorder` VALUES ('86', null, '2015-04-15 13:50:26', '2015-04-15 13:50:26', '7', '[{\"color\":\"03X浅粉\",\"material\":5,\"quantity\":743,\"standardyarn\":\"\"},{\"color\":\"59X丈青\",\"material\":5,\"quantity\":743,\"standardyarn\":\"\"},{\"color\":\"69X蓝色\",\"material\":5,\"quantity\":711,\"standardyarn\":\"\"}]', '13', '0', '新建', '3', null, null, '冰岛毛反针围脖', null, null, '0', null, null, null, null, '12', null, '', '15RS0086', 'LW375', '4');
INSERT INTO `tb_coloringorder` VALUES ('87', null, '2015-04-15 13:57:10', '2015-04-15 13:57:10', '7', '[{\"color\":\"33X红色\",\"material\":1,\"quantity\":273,\"standardyarn\":\"\"},{\"color\":\"42X亮粉\",\"material\":1,\"quantity\":300,\"standardyarn\":\"\"},{\"color\":\"59x丈青\",\"material\":1,\"quantity\":275,\"standardyarn\":\"\"},{\"color\":\"99x黑色\",\"material\":1,\"quantity\":300,\"standardyarn\":\"\"}]', '15', '0', '新建', '3', null, null, '基本款卷边围脖', null, null, '0', null, null, null, null, '12', null, '', '15RS0087', 'MB029', '4');
INSERT INTO `tb_coloringorder` VALUES ('88', null, '2015-04-15 15:47:19', '2015-04-15 15:47:19', '7', '[{\"color\":\"灰色\",\"material\":10,\"quantity\":395,\"standardyarn\":\"\"},{\"color\":\"粉红\",\"material\":10,\"quantity\":395,\"standardyarn\":\"\"},{\"color\":\"丈青\",\"material\":10,\"quantity\":5,\"standardyarn\":\"\"}]', '16', '0', '新建', '1', null, null, '机织加毛皮条围脖', null, null, '0', null, null, null, null, '8', null, '', '15RS0088', '11165162', '2');
INSERT INTO `tb_coloringorder` VALUES ('89', null, '2015-04-15 16:23:18', '2015-04-15 16:23:18', '7', '[{\"color\":\"15-1304tcx\",\"material\":1,\"quantity\":0,\"standardyarn\":\"AB色卡\"}]', '3', '0', '新建', '1', null, null, '针织舒棉绒围脖', null, null, '0', null, null, null, null, '8', null, '', '15RS0089', '0', '2');
INSERT INTO `tb_coloringorder` VALUES ('90', null, '2015-04-15 16:25:49', '2015-04-15 16:25:49', '7', '[{\"color\":\"QY15黑色\",\"material\":3,\"quantity\":8,\"standardyarn\":\"\"}]', '13', '0', '新建', '4', null, null, '绞花帽子围脖', null, null, '0', null, null, null, null, '11', '3', '', '15RS0090', 'QY15-100/101/165', '3');
INSERT INTO `tb_coloringorder` VALUES ('91', null, '2015-04-16 12:12:32', '2015-04-16 12:12:32', '7', '[{\"color\":\"NTS粉色\",\"material\":3,\"quantity\":20,\"standardyarn\":\"\"}]', '12', '0', '新建', '3', null, null, '冰岛毛烫金围脖', null, null, '0', null, null, null, null, '12', null, '杨柯庭大货补纱', '15RS0091', 'G9073', '4');
INSERT INTO `tb_coloringorder` VALUES ('92', null, '2015-04-16 12:16:03', '2015-04-16 12:16:03', '7', '[{\"color\":\"粉红\",\"material\":6,\"quantity\":5,\"standardyarn\":\"\"}]', '12', '0', '新建', '2', null, null, '扭一下围脖两配套', null, null, '0', null, null, null, null, '11', null, '', '15RS0092', 'Lisa', '3');
INSERT INTO `tb_coloringorder` VALUES ('93', null, '2015-04-16 12:51:41', '2015-04-16 12:51:41', '7', '[{\"color\":\"G8-黑色\",\"material\":9,\"quantity\":270,\"standardyarn\":\"\"},{\"color\":\"G8-米色\",\"material\":9,\"quantity\":60,\"standardyarn\":\"\"},{\"color\":\"G8-红绿段!杂\",\"material\":9,\"quantity\":105,\"standardyarn\":\"\"},{\"color\":\"G8-黑色\",\"material\":3,\"quantity\":157,\"standardyarn\":\"\"}]', '14', '0', '新建', '3', null, null, '女款针织帽子围巾', null, null, '0', null, null, null, null, '11', null, '', '15RS0093', 'G8088H/G8088S', '3');
INSERT INTO `tb_coloringorder` VALUES ('94', null, '2015-04-16 12:59:56', '2015-04-16 12:59:56', '7', '[{\"color\":\"G5-桔色\",\"material\":6,\"quantity\":55,\"standardyarn\":\"\"},{\"color\":\"G5-黑色\",\"material\":6,\"quantity\":370,\"standardyarn\":\"\"},{\"color\":\"G5-米色\",\"material\":6,\"quantity\":195,\"standardyarn\":\"\"},{\"color\":\"G8-本白\",\"material\":26,\"quantity\":107,\"standardyarn\":\"\"}]', '14', '0', '新建', '3', null, null, '女款多色加档围巾', null, null, '0', null, null, null, null, '11', null, '', '15RS0094', 'G5166', '3');
INSERT INTO `tb_coloringorder` VALUES ('95', null, '2015-04-16 13:03:44', '2015-04-16 13:03:44', '7', '[{\"color\":\"PCS55米白\",\"material\":2,\"quantity\":3,\"standardyarn\":\"手工龙金丽大货补纱\"}]', '13', '0', '新建', '3', null, null, '冰岛毛段!杂纱围巾', null, null, '0', null, null, null, null, '11', null, '', '15RS0095', '17067055', '3');
INSERT INTO `tb_coloringorder` VALUES ('96', null, '2015-04-16 13:09:07', '2015-04-16 13:09:07', '7', '[{\"color\":\"K974\",\"material\":9,\"quantity\":210,\"standardyarn\":\"\"}]', '26', '0', '新建', '1', null, null, '提花披肩', null, null, '0', null, null, null, null, '8', null, '', '15RS0096', 'M14214D', '2');
INSERT INTO `tb_coloringorder` VALUES ('97', null, '2015-04-16 13:22:03', '2015-04-16 13:22:03', '7', '[{\"color\":\"MD黑色\",\"material\":9,\"quantity\":210,\"standardyarn\":\"\"},{\"color\":\"MD中灰\",\"material\":9,\"quantity\":105,\"standardyarn\":\"\"},{\"color\":\"MD灰白\",\"material\":9,\"quantity\":105,\"standardyarn\":\"\"}]', '15', '0', '新建', '1', null, null, '提花披肩', null, null, '0', null, null, null, null, '8', null, '', '15RS0097', 'M14214D', '2');
INSERT INTO `tb_coloringorder` VALUES ('98', null, '2015-04-16 14:38:49', '2015-04-16 14:38:49', '7', '[{\"color\":\"深灰色\",\"material\":1,\"quantity\":5,\"standardyarn\":\"\"}]', '3', '0', '新建', '2', null, null, '烫金披肩', null, null, '0', null, null, null, null, '11', null, '', '15RS0098', 'EY15-050', '3');
INSERT INTO `tb_coloringorder` VALUES ('99', null, '2015-04-16 14:41:52', '2015-04-16 14:41:52', '7', '[{\"color\":\"深灰色\",\"material\":1,\"quantity\":5,\"standardyarn\":\"\"}]', '3', '0', '新建', '2', null, null, '烫金披肩', null, null, '0', null, null, null, null, '11', null, '巴柳育大货补纱', '15RS0099', 'EY15-050', '3');
INSERT INTO `tb_coloringorder` VALUES ('100', null, '2015-04-16 15:41:13', '2015-04-16 15:41:13', '7', '[{\"color\":\"G8-黑色彩点纱\",\"material\":9,\"quantity\":205,\"standardyarn\":\"\"}]', '16', '0', '新建', '3', null, null, '女款针织帽子围巾', null, null, '0', null, null, null, null, '11', null, '', '15RS0100', 'G8088H/G8008S', '3');
INSERT INTO `tb_coloringorder` VALUES ('101', null, '2015-04-16 16:16:41', '2015-04-16 16:16:41', '7', '[{\"color\":\"白+黑心\",\"material\":9,\"quantity\":5,\"standardyarn\":\"\"}]', '13', '0', '新建', '2', null, null, '马海毛混纱围巾', null, null, '0', null, null, null, null, '11', null, '', '15RS0101', 'OB954525', '3');
INSERT INTO `tb_coloringorder` VALUES ('102', null, '2015-04-17 13:55:30', '2015-04-17 13:55:30', '7', '[{\"color\":\"712A\",\"material\":5,\"quantity\":3,\"standardyarn\":\"\"}]', '26', '0', '新建', '3', null, null, ':烫钻帽子', null, null, '0', null, null, null, null, '12', null, '', '15RS0102', '15269', '4');
INSERT INTO `tb_coloringorder` VALUES ('103', null, '2015-04-17 14:05:19', '2015-04-17 14:05:19', '7', '[{\"color\":\"712\",\"material\":4,\"quantity\":3,\"standardyarn\":\"\"}]', '26', '0', '新建', '1', null, null, '夹档围脖', null, null, '0', null, null, null, null, '8', null, '', '15RS0103', '99BKJ514', '2');
INSERT INTO `tb_coloringorder` VALUES ('104', null, '2015-04-17 14:08:34', '2015-04-17 14:08:34', '7', '[{\"color\":\"BKJ黑色\",\"material\":4,\"quantity\":3,\"standardyarn\":\"\"},{\"color\":\"BKJ白色\",\"material\":4,\"quantity\":3,\"standardyarn\":\"\"},{\"color\":\"BKJ梅红\",\"material\":4,\"quantity\":3,\"standardyarn\":\"\"}]', '12', '0', '新建', '1', null, null, '夹档围脖', null, null, '0', null, null, null, null, '8', null, '', '15RS0104', '99BKJ514', '2');
INSERT INTO `tb_coloringorder` VALUES ('105', null, '2015-04-17 14:20:30', '2015-04-17 14:20:30', '7', '[{\"color\":\"白灰组\",\"material\":21,\"quantity\":3,\"standardyarn\":\"\"}]', '28', '0', '新建', '3', null, null, '冰岛毛豆豆纱帽子', null, null, '0', null, null, null, null, '12', null, '', '15RS0105', '15243', '4');
INSERT INTO `tb_coloringorder` VALUES ('106', null, '2015-04-17 14:24:22', '2015-04-17 14:25:16', '7', '[{\"color\":\"EY深灰\",\"material\":3,\"quantity\":310,\"standardyarn\":\"\"}]', '13', '0', '新建', '2', null, null, '印五角星围脖', null, null, '0', null, null, null, null, '11', null, '30/70毛晴冰岛毛', '15RS0106', 'EY15-43', '3');
INSERT INTO `tb_coloringorder` VALUES ('107', null, '2015-04-17 14:43:12', '2015-04-17 14:43:12', '7', '[{\"color\":\"深灰色\",\"material\":12,\"quantity\":5,\"standardyarn\":\"\"},{\"color\":\"本白\",\"material\":12,\"quantity\":3,\"standardyarn\":\"\"}]', '13', '0', '新建', '3', null, null, '披肩', null, null, '0', null, null, null, null, '11', null, '32支膨体30/70毛晴', '15RS0107', '0', '3');
INSERT INTO `tb_coloringorder` VALUES ('108', null, '2015-04-17 14:55:56', '2015-04-17 14:55:56', '7', '[{\"color\":\"LS-紫红\",\"material\":1,\"quantity\":176,\"standardyarn\":\"\"},{\"color\":\"LS-黑色\",\"material\":1,\"quantity\":215,\"standardyarn\":\"\"}]', '3', '0', '新建', '1', null, null, '女士单球帽', null, null, '0', null, null, null, null, '8', null, '', '15RS0108', 'HI-TEC', '2');
INSERT INTO `tb_coloringorder` VALUES ('109', null, '2015-04-18 11:24:00', '2015-04-18 11:24:00', '7', '[{\"color\":\"IS花青\",\"material\":6,\"quantity\":5,\"standardyarn\":\"\"},{\"color\":\"IS烟草黄\",\"material\":6,\"quantity\":5,\"standardyarn\":\"\"}]', '15', '0', '新建', '1', null, null, '绞花两件套', null, null, '0', null, null, null, null, '8', '1', '', '15RS0109', '0', '2');
INSERT INTO `tb_coloringorder` VALUES ('110', null, '2015-04-18 11:27:00', '2015-04-18 11:27:00', '7', '[{\"color\":\"米色\",\"material\":2,\"quantity\":5,\"standardyarn\":\"\"}]', '13', '0', '新建', '1', null, null, '大肚纱帽子', null, null, '0', null, null, null, null, '8', null, '', '15RS0110', '0', '2');
INSERT INTO `tb_coloringorder` VALUES ('111', null, '2015-04-18 12:34:40', '2015-04-18 12:34:40', '7', '[{\"color\":\"米色\",\"material\":6,\"quantity\":3,\"standardyarn\":\"\"}]', '12', '0', '新建', '1', null, null, '点子纱帽子手套', null, null, '0', null, null, null, null, '10', null, '', '15RS0111', 'FW1118-048', '1');
INSERT INTO `tb_coloringorder` VALUES ('112', null, '2015-04-18 12:42:29', '2015-04-18 12:42:29', '7', '[{\"color\":\"QY15黑色\",\"material\":6,\"quantity\":217,\"standardyarn\":\"\"},{\"color\":\"QY15本白色\",\"material\":6,\"quantity\":260,\"standardyarn\":\"\"}]', '13', '0', '新建', '4', null, null, '冰岛毛带子纱围脖', null, null, '0', null, null, null, null, '11', '3', '', '15RS0112', 'QY15-157', '3');
INSERT INTO `tb_coloringorder` VALUES ('113', null, '2015-04-18 12:52:34', '2015-04-18 12:52:34', '7', '[{\"color\":\"紫色\",\"material\":6,\"quantity\":5,\"standardyarn\":\"\"}]', '13', '0', '新建', '1', null, null, '冰岛毛正反针三配套', null, null, '0', null, null, null, null, '8', null, '', '15RS0113', '5028', '2');
INSERT INTO `tb_coloringorder` VALUES ('114', null, '2015-04-19 09:31:31', '2015-04-19 11:14:49', '7', '[{\"color\":\"红色\",\"material\":4,\"quantity\":315,\"standardyarn\":\"\"},{\"color\":\"粉色\",\"material\":4,\"quantity\":315,\"standardyarn\":\"\"},{\"color\":\"米色\",\"material\":4,\"quantity\":377,\"standardyarn\":\"\"},{\"color\":\"红色\",\"material\":1,\"quantity\":2,\"standardyarn\":\"\"},{\"color\":\"米色\",\"material\":1,\"quantity\":3,\"standardyarn\":\"\"},{\"color\":\"粉色\",\"material\":1,\"quantity\":2,\"standardyarn\":\"\"}]', '13', '0', '新建', '1', null, null, '冰岛毛正反针围脖', null, null, '0', null, null, null, null, '10', null, '', '15RS0114', '90084501', '1');
INSERT INTO `tb_coloringorder` VALUES ('115', null, '2015-04-19 10:34:57', '2015-04-19 10:34:57', '7', '[{\"color\":\"9008-白色\",\"material\":6,\"quantity\":410,\"standardyarn\":\"\"},{\"color\":\"9008-黑色\",\"material\":6,\"quantity\":300,\"standardyarn\":\"\"}]', '12', '0', '新建', '1', null, null, '冰岛毛亮丝两件套', null, null, '0', null, null, null, null, '10', null, '', '15RS0115', '90084601', '1');
INSERT INTO `tb_coloringorder` VALUES ('116', null, '2015-04-19 16:59:43', '2015-04-19 16:59:43', '7', '[{\"color\":\"红色段染\",\"material\":9,\"quantity\":3,\"standardyarn\":\"\"}]', '14', '0', '新建', '1', null, null, '冰岛毛段染马海毛三件套', null, null, '0', null, null, null, null, '10', null, '', '15RS0116', '0', '1');
INSERT INTO `tb_coloringorder` VALUES ('117', null, '2015-04-20 12:21:18', '2015-04-20 12:21:18', '7', '[{\"color\":\"15NY黑色\",\"material\":10,\"quantity\":500,\"standardyarn\":\"\"},{\"color\":\"15NY褐色\",\"material\":10,\"quantity\":48,\"standardyarn\":\"\"},{\"color\":\"15NY白色\",\"material\":10,\"quantity\":275,\"standardyarn\":\"\"},{\"color\":\"15NY棕色\",\"material\":10,\"quantity\":230,\"standardyarn\":\"\"},{\"color\":\"15NY灰色\",\"material\":10,\"quantity\":66,\"standardyarn\":\"\"}]', '16', '0', '新建', '1', null, null, '夹亮丝三件套', null, null, '0', null, null, null, null, '8', null, '', '15RS0117', '15NY-FW10/11/12', '2');
INSERT INTO `tb_coloringorder` VALUES ('118', null, '2015-04-20 14:40:39', '2015-04-20 14:40:39', '7', '[{\"color\":\"13-4108tpx\",\"material\":33,\"quantity\":3,\"standardyarn\":\"\"}]', '3', '0', '新建', '3', null, null, '素色比尼帽', null, null, '0', null, null, null, null, '12', null, '', '15RS0118', 'AHAL00SE', '4');
INSERT INTO `tb_coloringorder` VALUES ('119', null, '2015-04-21 10:51:36', '2015-04-21 10:51:36', '7', '[{\"color\":\"072粉色\",\"material\":1,\"quantity\":88,\"standardyarn\":\"\"}]', '3', '0', '新建', '2', null, null, '围脖毛子两件套', null, null, '0', null, null, null, null, '11', null, '', '15RS0119', 'EY15-072', '3');
INSERT INTO `tb_coloringorder` VALUES ('120', null, '2015-04-21 10:53:16', '2015-04-21 10:53:16', '7', '[{\"color\":\"712#\",\"material\":1,\"quantity\":88,\"standardyarn\":\"\"}]', '26', '0', '新建', '2', null, null, '围脖帽子两件套', null, null, '0', null, null, null, null, '11', null, '', '15RS0120', 'EY15-072', '3');
INSERT INTO `tb_coloringorder` VALUES ('121', null, '2015-04-21 11:55:48', '2015-04-21 11:55:48', '7', '[{\"color\":\"72黑色\",\"material\":8,\"quantity\":50,\"standardyarn\":\"\"},{\"color\":\"72本白\",\"material\":8,\"quantity\":47,\"standardyarn\":\"\"}]', '15', '0', '新建', '1', null, null, '马海毛珠片纱毛子', null, null, '0', null, null, null, null, '10', null, '', '15RS0121', '72505', '1');
INSERT INTO `tb_coloringorder` VALUES ('122', null, '2015-04-21 11:58:42', '2015-04-21 11:58:42', '7', '[{\"color\":\"16-0840tcx\",\"material\":1,\"quantity\":3,\"standardyarn\":\"\"}]', '3', '0', '新建', '3', null, null, '五指手套', null, null, '0', null, null, null, null, '12', null, '', '15RS0122', 'CPP-MDBI', '4');
INSERT INTO `tb_coloringorder` VALUES ('123', null, '2015-04-21 12:54:21', '2015-04-21 12:54:21', '7', '[{\"color\":\"黑色\",\"material\":18,\"quantity\":1850,\"standardyarn\":\"\"},{\"color\":\"暗紫\",\"material\":18,\"quantity\":1600,\"standardyarn\":\"\"},{\"color\":\"棕色\",\"material\":18,\"quantity\":1551,\"standardyarn\":\"\"}]', '29', '0', '新建', '4', null, null, '成品染色拉毛围脖', null, null, '0', null, null, null, null, '11', null, '', '15RS0123', 'QY15-118', '3');
INSERT INTO `tb_coloringorder` VALUES ('124', null, '2015-04-22 08:38:02', '2015-04-22 08:38:02', '7', '[{\"color\":\"奶白\",\"material\":13,\"quantity\":3,\"standardyarn\":\"\"},{\"color\":\"黑色\",\"material\":13,\"quantity\":3,\"standardyarn\":\"\"}]', '12', '0', '新建', '1', null, null, 'l亮丝围脖', null, null, '0', null, null, null, null, '8', null, '', '15RS0124', 'D 5-1', '2');
INSERT INTO `tb_coloringorder` VALUES ('125', null, '2015-04-22 10:09:39', '2015-04-22 15:40:17', '7', '[{\"color\":\"4601藏青\",\"material\":1,\"quantity\":125,\"standardyarn\":\"\"},{\"color\":\"4601红色\",\"material\":1,\"quantity\":95,\"standardyarn\":\"\"}]', '3', '0', '新建', '1', null, null, 'l亮丝晴纶两件套', null, null, '0', null, null, null, null, '10', null, '', '15RS0125', '90084601', '1');
INSERT INTO `tb_coloringorder` VALUES ('126', null, '2015-04-22 10:37:38', '2015-04-22 15:48:59', '7', '[{\"color\":\"081黑色\",\"material\":1,\"quantity\":85,\"standardyarn\":\"\"},{\"color\":\"081棕色\",\"material\":1,\"quantity\":165,\"standardyarn\":\"\"}]', '3', '0', '新建', '2', null, null, '烫金披肩', null, null, '0', null, null, null, null, '11', null, '', '15RS0126', 'EY15-081', '3');
INSERT INTO `tb_coloringorder` VALUES ('127', null, '2015-04-22 15:46:19', '2015-04-24 08:54:35', '7', '[{\"color\":\"藏青\",\"material\":2,\"quantity\":3,\"standardyarn\":\"\"},{\"color\":\"藏青\",\"material\":4,\"quantity\":3,\"standardyarn\":\"\"}]', '13', '0', '新建', '6', null, null, '段染套装', null, null, '0', null, null, null, null, '10', null, '', '15RS0127', '0', '1');
INSERT INTO `tb_coloringorder` VALUES ('128', null, '2015-04-22 16:02:02', '2015-04-22 16:02:02', '7', '[{\"color\":\"暗绿段染\",\"material\":9,\"quantity\":5,\"standardyarn\":\"\"}]', '14', '0', '新建', '3', null, null, '冰岛毛段染纱围巾', null, null, '0', null, null, null, null, '11', null, '', '15RS0128', '17067055', '3');
INSERT INTO `tb_coloringorder` VALUES ('129', null, '2015-04-22 17:25:40', '2015-04-22 17:25:40', '7', '[{\"color\":\"黑色\",\"material\":20,\"quantity\":390,\"standardyarn\":\"\"},{\"color\":\"银色\",\"material\":20,\"quantity\":385,\"standardyarn\":\"\"},{\"color\":\"海军蓝\",\"material\":20,\"quantity\":65,\"standardyarn\":\"\"}]', '13', '0', '新建', '1', null, null, '金属管状纱四件套', null, null, '0', null, null, null, null, '8', null, '', '15RS0129', '15NY-FW14/13/03', '2');
INSERT INTO `tb_coloringorder` VALUES ('130', null, '2015-04-22 17:37:07', '2015-04-22 17:37:07', '7', '[{\"color\":\"米白\",\"material\":6,\"quantity\":0,\"standardyarn\":\"AB色卡\"}]', '12', '0', '新建', '1', null, null, '帽子', null, null, '0', null, null, null, null, '10', null, '', '15RS0130', 'S-FW1501007', '1');
INSERT INTO `tb_coloringorder` VALUES ('131', null, '2015-04-23 11:21:14', '2015-04-23 13:45:00', '7', '[{\"color\":\"59X藏青\",\"material\":1,\"quantity\":5,\"standardyarn\":\"19-3920tcx\"},{\"color\":\"67X湖蓝\",\"material\":1,\"quantity\":5,\"standardyarn\":\"19-4241tcx\"},{\"color\":\"71X橄榄黄\",\"material\":1,\"quantity\":5,\"standardyarn\":\"16-0840tcx\"},{\"color\":\"33X红色\",\"material\":1,\"quantity\":8,\"standardyarn\":\"19-1656tcx\"},{\"color\":\"80X米色\",\"material\":1,\"quantity\":5,\"standardyarn\":\"\"}]', '15', '0', '新建', '3', null, null, ' 基本款围脖', null, null, '0', null, null, null, null, '12', null, '', '15RS0131', 'LPP-MD237/MD241 ', '4');
INSERT INTO `tb_coloringorder` VALUES ('132', null, '2015-04-23 13:40:45', '2015-04-23 13:40:45', '7', '[{\"color\":\"C008藏青19-3920\",\"material\":1,\"quantity\":130,\"standardyarn\":\"\"},{\"color\":\"C008卡其15-1304\",\"material\":1,\"quantity\":150,\"standardyarn\":\"\"}]', '3', '0', '新建', '1', null, null, ' 针织加舒棉绒围脖', null, null, '0', null, null, null, null, '8', null, '', '15RS0132', 'TDYC008', '2');
INSERT INTO `tb_coloringorder` VALUES ('133', null, '2015-04-23 14:15:25', '2015-04-23 14:15:25', '7', '[{\"color\":\"712\",\"material\":7,\"quantity\":3,\"standardyarn\":\"\"}]', '26', '0', '新建', '2', null, null, '围脖帽子两件套', null, null, '0', null, null, null, null, '11', null, '', '15RS0133', '0', '3');
INSERT INTO `tb_coloringorder` VALUES ('134', null, '2015-04-24 08:38:30', '2015-04-24 08:38:30', '7', '[{\"color\":\"714#\",\"material\":10,\"quantity\":145,\"standardyarn\":\"\"}]', '26', '0', '新建', '3', null, null, '马海毛五角星围脖', null, null, '0', null, null, null, null, '12', null, '', '15RS0134', 'GIRLS', '4');
INSERT INTO `tb_coloringorder` VALUES ('135', null, '2015-04-24 08:46:47', '2015-04-24 08:46:47', '7', '[{\"color\":\"112浅灰\",\"material\":8,\"quantity\":325,\"standardyarn\":\"\"},{\"color\":\"704驼色\",\"material\":8,\"quantity\":185,\"standardyarn\":\"\"},{\"color\":\"704棕色\",\"material\":8,\"quantity\":181,\"standardyarn\":\"\"},{\"color\":\"802黑色\",\"material\":8,\"quantity\":388,\"standardyarn\":\"\"}]', '12', '0', '新建', '3', null, null, '冰岛毛抽条围脖', null, null, '0', null, null, null, null, '12', null, '', '15RS0135', 'F6070', '4');
INSERT INTO `tb_coloringorder` VALUES ('136', null, '2015-04-24 08:49:11', '2015-04-24 08:49:11', '7', '[{\"color\":\"112灰色段染\",\"material\":8,\"quantity\":321,\"standardyarn\":\"\"}]', '14', '0', '新建', '3', null, null, '冰岛毛抽条围脖', null, null, '0', null, null, null, null, '12', null, '', '15RS0136', 'F6070', '4');
INSERT INTO `tb_coloringorder` VALUES ('137', null, '2015-04-25 12:10:04', '2015-04-25 12:10:04', '7', '[{\"color\":\"藏青\",\"material\":4,\"quantity\":0,\"standardyarn\":\"AB色卡\"},{\"color\":\"米色\",\"material\":4,\"quantity\":0,\"standardyarn\":\"AB色卡\"},{\"color\":\"红色\",\"material\":4,\"quantity\":0,\"standardyarn\":\"AB色卡\"},{\"color\":\"烟灰\",\"material\":6,\"quantity\":0,\"standardyarn\":\"AB色卡\"}]', '13', '0', '新建', '1', null, null, ' 绞花球球帽', null, null, '0', null, null, null, null, '8', null, '', '15RS0137', '11ACAG-004-W115/99MKJ503', '2');
INSERT INTO `tb_coloringorder` VALUES ('138', null, '2015-04-26 08:13:03', '2015-04-26 08:13:03', '7', '[{\"color\":\"白胚\",\"material\":3,\"quantity\":15,\"standardyarn\":\"\"}]', '26', '0', '新建', '1', null, null, ' 围巾帽子两件套', null, null, '0', null, null, null, null, '10', null, '', '15RS0138', 'SN15-FW9302/03', '1');
INSERT INTO `tb_coloringorder` VALUES ('139', null, '2015-04-26 09:16:46', '2015-04-26 09:16:46', '7', '[{\"color\":\"SN15-米色\",\"material\":3,\"quantity\":5,\"standardyarn\":\"\"},{\"color\":\"SN15-卡其\",\"material\":3,\"quantity\":5,\"standardyarn\":\"\"},{\"color\":\"SN15-绿色\",\"material\":3,\"quantity\":5,\"standardyarn\":\"\"}]', '12', '0', '新建', '1', null, null, '围巾帽子两件套', null, null, '0', null, null, null, null, '10', null, '', '15RS0139', 'SN15-FW9302/03', '1');
INSERT INTO `tb_coloringorder` VALUES ('140', null, '2015-04-26 10:04:51', '2015-04-26 10:04:51', '7', '[{\"color\":\"KL绿色\",\"material\":9,\"quantity\":3,\"standardyarn\":\"\"},{\"color\":\"KL粉色\",\"material\":9,\"quantity\":3,\"standardyarn\":\"\"}]', '15', '0', '新建', '1', null, null, '马海毛钻石帽子', null, null, '0', null, null, null, null, '10', null, '', '15RS0140', 'SN15-KL24648', '1');
INSERT INTO `tb_coloringorder` VALUES ('141', null, '2015-04-26 14:06:57', '2015-04-26 14:06:57', '7', '[{\"color\":\"PON皮紫\",\"material\":11,\"quantity\":50,\"standardyarn\":\"\"},{\"color\":\"PON橡皮红\",\"material\":11,\"quantity\":50,\"standardyarn\":\"\"},{\"color\":\"PON黑色\",\"material\":11,\"quantity\":50,\"standardyarn\":\"\"},{\"color\":\"PON暗红\",\"material\":11,\"quantity\":50,\"standardyarn\":\"\"},{\"color\":\"PON棕色\",\"material\":11,\"quantity\":50,\"standardyarn\":\"\"},{\"color\":\"PON酒红\",\"material\":11,\"quantity\":50,\"standardyarn\":\"\"}]', '12', '0', '新建', '1', null, null, '全晴经编披肩', null, null, '0', null, null, null, null, '10', null, '', '15RS0141', 'NLSSY/PONCHO', '1');
INSERT INTO `tb_coloringorder` VALUES ('142', null, '2015-04-26 14:09:20', '2015-04-26 14:09:20', '7', '[{\"color\":\"PON驼色\",\"material\":11,\"quantity\":50,\"standardyarn\":\"\"},{\"color\":\"PON深紫\",\"material\":11,\"quantity\":50,\"standardyarn\":\"\"}]', '12', '0', '新建', '1', null, null, '全晴经编披肩', null, null, '0', null, null, null, null, '10', null, '', '15RS0142', 'NLSSY/PONCHO', '1');
INSERT INTO `tb_coloringorder` VALUES ('143', null, '2015-04-27 10:25:58', '2015-04-27 10:25:58', '7', '[{\"color\":\"712\",\"material\":7,\"quantity\":3,\"standardyarn\":\"\"}]', '26', '0', '新建', '3', null, null, '吊球围巾', null, null, '0', null, null, null, null, '12', null, '', '15RS0143', '0', '4');
INSERT INTO `tb_coloringorder` VALUES ('144', null, '2015-04-27 10:28:49', '2015-04-27 10:28:49', '7', '[{\"color\":\"夹花棕\",\"material\":1,\"quantity\":115,\"standardyarn\":\"\"}]', '26', '0', '新建', '1', null, null, '亮丝晴纶两件套', null, null, '0', null, null, null, null, '10', null, '', '15RS0144', '90084601', '1');
INSERT INTO `tb_coloringorder` VALUES ('145', null, '2015-04-27 12:09:12', '2015-04-27 12:09:12', '7', '[{\"color\":\"G8黑色彩点纱\",\"material\":9,\"quantity\":5,\"standardyarn\":\"\"}]', '13', '0', '新建', '3', null, null, '女款针织帽子围巾', null, null, '0', null, null, null, null, '11', null, '', '15RS0145', 'G8008S', '3');
INSERT INTO `tb_coloringorder` VALUES ('146', null, '2015-04-28 09:45:58', '2015-04-28 09:45:58', '7', '[{\"color\":\"K974\",\"material\":1,\"quantity\":355,\"standardyarn\":\"\"}]', '26', '0', '新建', '1', null, null, '男款提花围巾', null, null, '0', null, null, null, null, '10', null, '', '15RS0146', 'H3661 ', '1');
INSERT INTO `tb_coloringorder` VALUES ('147', null, '2015-04-28 09:49:20', '2015-04-28 09:49:20', '7', '[{\"color\":\"H36黑色\",\"material\":1,\"quantity\":360,\"standardyarn\":\"\"}]', '12', '0', '新建', '1', null, null, '男款提花围巾', null, null, '0', null, null, null, null, '10', null, '', '15RS0147', 'H3661', '1');
INSERT INTO `tb_coloringorder` VALUES ('148', null, '2015-04-28 10:08:59', '2015-04-28 10:08:59', '7', '[{\"color\":\"D7118B-红色\",\"material\":3,\"quantity\":0,\"standardyarn\":\"17-1644tpx\"},{\"color\":\"G9180H-粉色\",\"material\":3,\"quantity\":0,\"standardyarn\":\"17-1718tpx\"},{\"color\":\"5423-黑色\",\"material\":1,\"quantity\":0,\"standardyarn\":\"特黑\"}]', '13', '0', '新建', '3', null, null, '帽子', null, null, '0', null, null, null, null, '12', null, '请打AB色卡', '15RS0148', 'ZB', '4');
INSERT INTO `tb_coloringorder` VALUES ('149', null, '2015-04-28 11:02:34', '2015-04-28 11:12:49', '7', '[{\"color\":\"FANI白色\",\"material\":1,\"quantity\":125,\"standardyarn\":\"\"},{\"color\":\"FANI灰色\",\"material\":1,\"quantity\":125,\"standardyarn\":\"\"},{\"color\":\"FANI粉色\",\"material\":1,\"quantity\":245,\"standardyarn\":\"\"}]', '13', '0', '新建', '1', null, null, '女童三件套', null, null, '0', null, null, null, null, '8', null, '', '15RS0149', 'FANIASQUE', '2');
INSERT INTO `tb_coloringorder` VALUES ('150', null, '2015-04-28 11:05:20', '2015-04-28 11:05:20', '7', '[{\"color\":\"712A\",\"material\":3,\"quantity\":2,\"standardyarn\":\"\"}]', '26', '0', '新建', '3', null, null, '烫钻两件套', null, null, '0', null, null, null, null, '12', null, '', '15RS0150', '0', '4');
INSERT INTO `tb_coloringorder` VALUES ('151', null, '2015-04-28 11:20:06', '2015-04-28 11:20:06', '7', '[{\"color\":\"K974\",\"material\":8,\"quantity\":130,\"standardyarn\":\"\"}]', '26', '0', '新建', '1', null, null, '素色RIB球球帽', null, null, '0', null, null, null, null, '8', null, '', '15RS0151', '11ACAG-006-AU16', '2');
INSERT INTO `tb_coloringorder` VALUES ('152', null, '2015-04-28 12:22:01', '2015-04-28 12:22:01', '7', '[{\"color\":\"AU16蓝色\",\"material\":9,\"quantity\":130,\"standardyarn\":\"\"}]', '15', '0', '新建', '1', null, null, '素色RIB球球帽', null, null, '0', null, null, null, null, '8', null, '', '15RS0152', '11ACAG-006-AU16', '2');
INSERT INTO `tb_coloringorder` VALUES ('153', null, '2015-04-28 13:10:55', '2015-04-28 13:10:55', '7', '[{\"color\":\"EY062-紫色组\",\"material\":20,\"quantity\":15,\"standardyarn\":\"\"},{\"color\":\"EY15-062黑色组\",\"material\":20,\"quantity\":28,\"standardyarn\":\"\"}]', '13', '0', '新建', '2', null, null, '马海毛带子纱头带', null, null, '0', null, null, null, null, '11', null, '', '15RS0153', 'EY15-062', '3');
INSERT INTO `tb_coloringorder` VALUES ('154', null, '2015-04-28 13:18:28', '2015-04-28 13:18:28', '7', '[{\"color\":\"99BKJ黑色\",\"material\":3,\"quantity\":3,\"standardyarn\":\"\"},{\"color\":\"99BKJ玫红色\",\"material\":3,\"quantity\":3,\"standardyarn\":\"\"},{\"color\":\"99BKJ象牙白\",\"material\":3,\"quantity\":3,\"standardyarn\":\"\"}]', '12', '0', '新建', '1', null, null, '针织多色围脖', null, null, '0', null, null, null, null, '8', null, '', '15RS0154', '99BKJ514', '2');
INSERT INTO `tb_coloringorder` VALUES ('155', null, '2015-04-28 16:52:17', '2015-04-28 16:52:17', '7', '[{\"color\":\"WI15藏青\",\"material\":4,\"quantity\":5,\"standardyarn\":\"\"},{\"color\":\"WI15米色\",\"material\":4,\"quantity\":5,\"standardyarn\":\"\"},{\"color\":\"WI15红色\",\"material\":4,\"quantity\":5,\"standardyarn\":\"\"}]', '13', '0', '新建', '1', null, null, '绞花球球帽', null, null, '0', null, null, null, null, '8', null, '', '15RS0155', '11ACAG-004-WI15', '2');
INSERT INTO `tb_coloringorder` VALUES ('156', null, '2015-04-28 16:58:21', '2015-04-28 16:58:21', '7', '[{\"color\":\"712\",\"material\":4,\"quantity\":2,\"standardyarn\":\"\"}]', '26', '0', '新建', '1', null, null, ' 绞花球球帽', null, null, '0', null, null, null, null, '8', null, '', '15RS0156', '11ACAG-004-WI15', '2');
INSERT INTO `tb_coloringorder` VALUES ('157', null, '2015-04-29 16:54:21', '2015-04-29 16:54:21', '7', '[{\"color\":\"奶白\",\"material\":11,\"quantity\":5,\"standardyarn\":\"\"}]', '12', '0', '新建', '1', null, null, '亮丝围脖', null, null, '0', null, null, null, null, '8', null, '', '15RS0157', 'D5-1', '2');
INSERT INTO `tb_coloringorder` VALUES ('158', null, '2015-04-30 08:10:42', '2015-04-30 08:11:24', '7', '[{\"color\":\"15H白色\",\"material\":6,\"quantity\":305,\"standardyarn\":\"\"},{\"color\":\"15H粉色\",\"material\":6,\"quantity\":210,\"standardyarn\":\"\"},{\"color\":\"15H藏青\",\"material\":6,\"quantity\":360,\"standardyarn\":\"\"},{\"color\":\"15H黑色\",\"material\":6,\"quantity\":480,\"standardyarn\":\"\"}]', '12', '0', '新建', '3', null, null, '冰岛毛五件套', null, null, '0', null, null, null, null, '12', null, '', '15RS0158', 'BADU', '4');
INSERT INTO `tb_coloringorder` VALUES ('159', null, '2015-04-30 08:14:52', '2015-04-30 08:14:52', '7', '[{\"color\":\"15H白色\",\"material\":4,\"quantity\":116,\"standardyarn\":\"\"},{\"color\":\"15H粉色\",\"material\":4,\"quantity\":78,\"standardyarn\":\"\"},{\"color\":\"15H藏青\",\"material\":4,\"quantity\":153,\"standardyarn\":\"\"},{\"color\":\"15H黑色\",\"material\":4,\"quantity\":153,\"standardyarn\":\"\"}]', '12', '0', '新建', '3', null, null, '冰岛毛五件套', null, null, '0', null, null, null, null, '12', null, '', '15RS0159', 'BADU', '4');
INSERT INTO `tb_coloringorder` VALUES ('160', null, '2015-04-30 08:17:59', '2015-04-30 08:17:59', '7', '[{\"color\":\"15H白色\",\"material\":3,\"quantity\":31,\"standardyarn\":\"\"},{\"color\":\"15H粉色\",\"material\":3,\"quantity\":16,\"standardyarn\":\"\"},{\"color\":\"15H藏青\",\"material\":3,\"quantity\":31,\"standardyarn\":\"\"},{\"color\":\"15H黑色\",\"material\":3,\"quantity\":39,\"standardyarn\":\"\"}]', '12', '0', '新建', '3', null, null, '冰岛毛五件套', null, null, '0', null, null, null, null, '12', null, '', '15RS0160', 'BADU', '4');
INSERT INTO `tb_coloringorder` VALUES ('161', null, '2015-04-30 08:23:32', '2015-04-30 08:23:32', '7', '[{\"color\":\"714\",\"material\":7,\"quantity\":380,\"standardyarn\":\"\"},{\"color\":\"714\",\"material\":4,\"quantity\":120,\"standardyarn\":\"\"},{\"color\":\"714\",\"material\":3,\"quantity\":31,\"standardyarn\":\"\"}]', '26', '0', '新建', '3', null, null, '冰岛毛五件套', null, null, '0', null, null, null, null, '12', null, '', '15RS0161', 'BADU', '4');
INSERT INTO `tb_coloringorder` VALUES ('162', null, '2015-04-30 13:12:33', '2015-04-30 13:12:33', '7', '[{\"color\":\"粉色\",\"material\":10,\"quantity\":5,\"standardyarn\":\"\"}]', '16', '0', '新建', '1', null, null, '机织加毛皮条围脖', null, null, '0', null, null, null, null, '8', null, '', '15RS0162', '11165162', '2');
INSERT INTO `tb_coloringorder` VALUES ('163', null, '2015-04-30 13:50:16', '2015-04-30 13:50:16', '7', '[{\"color\":\"G9428米色\",\"material\":6,\"quantity\":270,\"standardyarn\":\"\"}]', '13', '0', '新建', '3', null, null, '冰岛毛带子纱帽子围脖', null, null, '0', null, null, null, null, '12', null, '', '15RS0163', 'G9428T/G9428H', '4');
INSERT INTO `tb_coloringorder` VALUES ('164', null, '2015-04-30 14:38:20', '2015-04-30 14:38:20', '7', '[{\"color\":\"CABL米色\",\"material\":6,\"quantity\":20,\"standardyarn\":\"\"}]', '12', '0', '新建', '1', null, null, ' 冰岛毛绞花比尼帽', null, null, '0', null, null, null, null, '10', null, '', '15RS0164', 'CABLEMELBON', '1');
INSERT INTO `tb_coloringorder` VALUES ('165', null, '2015-05-02 16:10:23', '2015-05-02 16:10:23', '7', '[{\"color\":\"粉色16-2124tpx\",\"material\":6,\"quantity\":3,\"standardyarn\":\"\"}]', '12', '0', '新建', '1', null, null, '围巾', null, null, '0', null, null, null, null, '8', null, '', '15RS0165', '0', '2');
INSERT INTO `tb_coloringorder` VALUES ('166', null, '2015-05-02 17:22:40', '2015-05-03 10:49:31', '7', '[{\"color\":\"MD白色\",\"material\":9,\"quantity\":93,\"standardyarn\":\"\"},{\"color\":\"MD浅棕\",\"material\":9,\"quantity\":93,\"standardyarn\":\"\"}]', '15', '0', '新建', '1', null, null, '提花披肩', null, null, '0', null, null, null, null, '8', null, '', '15RS0166', 'M14214D', '2');
INSERT INTO `tb_coloringorder` VALUES ('167', null, '2015-05-03 10:52:42', '2015-05-03 10:52:42', '7', '[{\"color\":\"712\",\"material\":8,\"quantity\":3,\"standardyarn\":\"\"},{\"color\":\"714\",\"material\":34,\"quantity\":2,\"standardyarn\":\"\"}]', '26', '0', '新建', '3', null, null, '帽子', null, null, '0', null, null, null, null, null, null, '', '15RS0167', 'F6070/G9180H ', '4');
INSERT INTO `tb_coloringorder` VALUES ('168', null, '2015-05-03 11:05:45', '2015-05-03 11:05:45', '7', '[{\"color\":\"K974\",\"material\":1,\"quantity\":5,\"standardyarn\":\"\"}]', '26', '0', '新建', '4', null, null, '朵帽', null, null, '0', null, null, null, null, null, null, '杨科庭大货补纱', '15RS0168', 'QY15-089 ', '3');
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
INSERT INTO `tb_coloringprocessorder` VALUES ('17', '17', '2015-04-04 14:45:56', '2015-04-04 14:45:56', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('18', '18', '2015-04-04 17:06:39', '2015-04-04 17:06:39', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('19', '19', '2015-04-04 17:24:04', '2015-04-04 17:24:04', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('20', '20', '2015-04-06 12:30:59', '2015-04-06 12:30:59', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('21', '21', '2015-04-06 14:26:11', '2015-04-06 14:26:11', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('22', '22', '2015-04-07 17:20:08', '2015-04-07 17:20:08', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('23', '23', '2015-04-08 07:59:02', '2015-04-08 07:59:02', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('24', '24', '2015-04-08 08:05:51', '2015-04-08 08:05:51', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('25', '25', '2015-04-08 09:20:30', '2015-04-08 09:20:30', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('26', '26', '2015-04-08 09:30:20', '2015-04-08 09:30:20', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('27', '27', '2015-04-08 10:05:42', '2015-04-08 10:05:42', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('28', '28', '2015-04-08 15:00:58', '2015-04-08 15:00:58', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('29', '29', '2015-04-08 15:55:25', '2015-04-08 15:55:25', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('30', '30', '2015-04-10 11:03:32', '2015-04-10 11:03:32', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('31', '31', '2015-04-10 17:08:23', '2015-04-10 17:08:23', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('32', '32', '2015-04-10 17:41:20', '2015-04-10 17:41:20', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('33', '33', '2015-04-10 17:57:18', '2015-04-10 17:57:18', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('34', '34', '2015-04-15 14:29:32', '2015-04-15 14:29:32', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('35', '35', '2015-04-15 15:17:14', '2015-04-15 15:17:14', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('36', '36', '2015-04-15 15:51:10', '2015-04-15 15:51:10', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('37', '37', '2015-04-15 16:33:31', '2015-04-15 16:33:31', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('38', '38', '2015-04-15 16:47:51', '2015-04-15 16:47:51', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('39', '39', '2015-04-15 16:52:54', '2015-04-15 16:52:54', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('40', '40', '2015-04-15 17:02:09', '2015-04-15 17:02:09', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('41', '41', '2015-04-15 17:14:55', '2015-04-15 17:14:55', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('42', '42', '2015-04-16 17:34:03', '2015-04-16 17:34:03', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('43', '43', '2015-04-17 15:32:22', '2015-04-17 15:32:22', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('44', '44', '2015-04-17 16:07:07', '2015-04-17 16:07:07', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('45', '45', '2015-04-17 16:21:44', '2015-04-17 16:21:44', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('46', '46', '2015-04-17 16:45:35', '2015-04-17 16:45:35', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('47', '47', '2015-04-17 17:50:43', '2015-04-17 17:50:43', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('48', '48', '2015-04-17 18:13:55', '2015-04-17 18:13:55', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('49', '49', '2015-04-17 18:39:08', '2015-04-17 18:39:08', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('50', '50', '2015-04-18 15:13:43', '2015-04-18 15:13:43', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('51', '51', '2015-04-18 15:23:22', '2015-04-18 15:23:22', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('52', '52', '2015-04-18 15:34:38', '2015-04-18 15:34:38', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('53', '53', '2015-04-18 15:51:54', '2015-04-18 15:51:54', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('54', '54', '2015-04-18 16:17:42', '2015-04-18 16:17:42', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('55', '55', '2015-04-18 17:23:44', '2015-04-18 17:23:44', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('56', '56', '2015-04-18 17:38:20', '2015-04-18 17:38:20', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('57', '57', '2015-04-18 17:57:46', '2015-04-18 17:57:46', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('58', '58', '2015-04-18 18:04:08', '2015-04-18 18:04:08', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('59', '59', '2015-04-18 18:14:36', '2015-04-18 18:14:36', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('60', '60', '2015-04-19 10:01:24', '2015-04-19 10:01:24', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('61', '61', '2015-04-19 13:01:52', '2015-04-19 13:01:52', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('62', '62', '2015-04-19 13:27:05', '2015-04-19 13:27:05', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('63', '63', '2015-04-19 13:47:19', '2015-04-19 13:47:19', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('64', '64', '2015-04-19 14:16:02', '2015-04-19 14:16:02', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('65', '65', '2015-04-19 14:30:18', '2015-04-19 14:30:18', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('66', '66', '2015-04-19 15:05:26', '2015-04-19 15:05:26', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('67', '67', '2015-04-19 15:17:28', '2015-04-19 15:17:28', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('68', '68', '2015-04-19 15:46:38', '2015-04-19 15:46:38', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('69', '69', '2015-04-19 16:03:09', '2015-04-19 16:03:09', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('70', '70', '2015-04-19 16:24:33', '2015-04-19 16:24:33', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('71', '71', '2015-04-19 16:33:55', '2015-04-19 16:33:55', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('72', '72', '2015-04-19 17:22:17', '2015-04-19 17:22:17', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('73', '73', '2015-04-19 17:29:36', '2015-04-19 17:29:36', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('74', '74', '2015-04-20 14:45:04', '2015-04-20 14:45:04', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('75', '75', '2015-04-20 14:51:33', '2015-04-20 14:51:33', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('76', '76', '2015-04-20 15:07:14', '2015-04-20 15:07:14', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('77', '77', '2015-04-20 15:17:28', '2015-04-20 15:17:28', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('78', '78', '2015-04-20 15:29:00', '2015-04-20 15:29:00', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('79', '79', '2015-04-23 14:31:06', '2015-04-23 14:31:06', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('80', '80', '2015-04-23 14:42:14', '2015-04-23 14:42:14', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('81', '81', '2015-04-24 12:46:27', '2015-04-24 12:46:27', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('82', '82', '2015-04-24 12:52:28', '2015-04-24 12:52:28', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('83', '83', '2015-04-24 13:02:43', '2015-04-24 13:02:43', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('84', '84', '2015-04-24 13:13:59', '2015-04-24 13:13:59', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('85', '85', '2015-04-24 13:34:42', '2015-04-24 13:34:42', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('86', '86', '2015-04-25 09:25:59', '2015-04-25 09:25:59', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('87', '87', '2015-04-27 08:07:57', '2015-04-27 08:07:57', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('88', '88', '2015-04-27 08:24:57', '2015-04-27 08:24:57', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('89', '89', '2015-04-27 08:45:32', '2015-04-27 08:45:32', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('90', '90', '2015-04-30 13:32:44', '2015-04-30 13:32:44', '7', '0', '新建');
INSERT INTO `tb_coloringprocessorder` VALUES ('91', '91', '2015-05-02 16:28:24', '2015-05-02 16:28:24', '7', '0', '新建');
INSERT INTO `tb_company` VALUES ('1', '拱墅区湖州街18号', '杭州', null, null, '2015-03-31 21:45:42', '杭州翔天实业有限公司', 'hzxtsyyxgs', '0', '翔天', '2015-03-31 21:45:42', '6');
INSERT INTO `tb_company` VALUES ('2', '上海市长寿路1076号1902室', '上海', null, null, '2015-04-01 13:22:19', '上海逸韵服饰有限公司', 'shyyfsyxgs', '0', '逸韵', '2015-04-01 13:22:19', '9');
INSERT INTO `tb_company` VALUES ('3', '杭州市西湖区文二路391号节能科技园E中楼6楼618室', '杭州', null, null, '2015-04-01 22:40:26', '杭州六昇服饰有限公司', 'hzlsfsyxgs', '0', '六昇', '2015-04-01 22:40:26', '9');
INSERT INTO `tb_company` VALUES ('4', '上海市长寿路1076号飞雕大厦1406室', '上海', null, null, '2015-04-01 22:41:13', '上海棋韵服饰有限公司', 'shqyfsyxgs', '0', '棋韵', '2015-04-01 22:41:13', '9');
INSERT INTO `tb_company` VALUES ('5', '杭州', '杭州', null, null, '2015-04-01 22:43:17', '杭州舜斓贸易有限公司', 'hzslmyyxgs', '0', '舜斓', '2015-04-01 22:43:17', '9');
INSERT INTO `tb_company` VALUES ('6', '香港九龙荔枝角青山道704号和兴工业大厦8楼D室', '香港', null, null, '2015-04-01 22:44:23', '永盛创业有限公司', 'yscyyxgs', '0', '永盛', '2015-04-01 22:44:23', '9');
INSERT INTO `tb_company` VALUES ('7', '杭州', '杭州', null, null, '2015-04-04 00:05:14', '源盛', 'ys', '0', '源盛', '2015-04-04 00:05:14', '9');
INSERT INTO `tb_company` VALUES ('8', '绍兴', '绍兴', null, null, '2015-04-29 09:28:57', '绍兴卡玫拉服饰', 'sxkmlfs', '0', '卡玫拉', '2015-04-29 09:28:57', '9');
INSERT INTO `tb_customer` VALUES ('1', '比利时', '2015-03-31 21:46:05', 'VIS', '2015-03-31 21:46:05', '6');
INSERT INTO `tb_customer` VALUES ('2', '丹麦', '2015-04-02 22:05:58', 'ONLY', '2015-04-02 22:05:58', '9');
INSERT INTO `tb_customer` VALUES ('3', '丹麦', '2015-04-03 01:12:58', 'VERO MODA', '2015-04-03 01:12:58', '6');
INSERT INTO `tb_customer` VALUES ('4', '英国', '2015-04-03 09:51:14', 'ASOS', '2015-04-03 09:51:14', '9');
INSERT INTO `tb_customer` VALUES ('5', '未知', '2015-04-03 23:51:18', 'ICHI', '2015-04-03 23:51:18', '9');
INSERT INTO `tb_customer` VALUES ('6', '欧洲', '2015-04-04 17:03:01', 'JC PENNY', '2015-04-04 17:03:01', '9');
INSERT INTO `tb_department` VALUES ('1', '2015-05-02 19:29:56', '业务部', '2015-05-02 19:29:56', '9');
INSERT INTO `tb_department` VALUES ('2', '2015-05-02 19:30:03', '生产部', '2015-05-02 19:30:03', '9');
INSERT INTO `tb_employee` VALUES ('1', '2015-05-02 19:32:16', '', 'hzq', null, '胡祖群', '', '13666663553', '2015-05-02 19:32:16', '女', 'FW1061', '2015-02-27 00:00:00', '330122198004243525', '1', '跟单', '', '', '2015-04-01 00:00:00', '2017-03-31 00:00:00', '合同工', null, null, null, '', '', '', '', '', '9', '1980-04-24 00:00:00', '');
INSERT INTO `tb_employee` VALUES ('2', '2015-05-02 19:33:35', '', 'rx', null, '任晓', '', '18958138796', '2015-05-02 19:33:35', '女', 'FW1062', '2015-02-27 00:00:00', '513025197502052866', '1', '跟单', '', '', '2015-04-01 00:00:00', '2017-03-31 00:00:00', '合同工', null, null, null, '', '', '', '', '', '9', '1975-02-05 00:00:00', '');
INSERT INTO `tb_employee` VALUES ('3', '2015-05-02 19:35:28', '', 'wyp', null, '王宇平', '', '18857158975', '2015-05-02 19:35:28', '男', 'FW1003', '2011-09-01 00:00:00', '330122198410300919', '1', '跟单', '', '', '2015-04-01 00:00:00', '2017-03-31 00:00:00', '合同工', null, null, null, '', '', '', '', '', '9', '1984-10-30 00:00:00', '');
INSERT INTO `tb_employee` VALUES ('4', '2015-05-02 19:36:44', '', 'zmx', null, '张明霞', '', '15268805988', '2015-05-02 19:44:05', '男', 'FW1034', '2014-01-02 00:00:00', '330122198507110927', '1', '跟单', '', '', '2015-04-01 00:00:00', '2017-03-31 00:00:00', '合同工', null, null, null, '', '', '', '', '', '9', '1985-07-11 00:00:00', '');
INSERT INTO `tb_employee` VALUES ('5', '2015-05-02 19:38:23', '', 'czf', null, '陈珍芳', '', '13326134466', '2015-05-02 19:38:23', '女', 'FW1059', '2015-02-27 00:00:00', '330122198004050029', '2', '生产主任', '', '', '2015-04-01 00:00:00', '2017-03-31 00:00:00', '合同工', null, null, null, '', '', '', '', '', '9', '1980-04-05 00:00:00', '');
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
INSERT INTO `tb_factory` VALUES ('31', '沈全伟', '桐庐', '2015-04-04 15:40:28', 'sqw', '2015-04-04 15:40:28', '9', '1');
INSERT INTO `tb_factory` VALUES ('32', '吴柏富', '分水', '2015-04-07 12:26:28', 'wbf', '2015-04-07 12:26:28', '9', '0');
INSERT INTO `tb_factory` VALUES ('33', '徐城林', '横村', '2015-04-07 12:30:49', 'xcl', '2015-04-07 12:30:49', '9', '0');
INSERT INTO `tb_factory` VALUES ('34', '金熙', '横村', '2015-04-07 13:05:52', 'jx', '2015-04-07 13:05:52', '9', '1');
INSERT INTO `tb_factory` VALUES ('35', '江荣妹', '深奥', '2015-04-08 11:19:17', 'jrm', '2015-04-08 11:19:17', '9', '0');
INSERT INTO `tb_factory` VALUES ('36', '王芳', '绍兴', '2015-04-10 16:09:17', 'wf', '2015-04-10 16:09:17', '9', '1');
INSERT INTO `tb_factory` VALUES ('37', '张忠华', '不详', '2015-04-14 21:37:52', 'zzh', '2015-04-14 21:37:52', '9', '0');
INSERT INTO `tb_factory` VALUES ('38', '文良毛皮', '横村', '2015-04-16 11:32:01', 'wlmp', '2015-04-16 11:32:01', '9', '1');
INSERT INTO `tb_factory` VALUES ('39', '手工', '不详', '2015-04-16 16:11:25', 'sg', '2015-04-16 16:11:25', '9', '0');
INSERT INTO `tb_factory` VALUES ('40', '金波', '方埠', '2015-04-29 09:25:12', 'jb', '2015-04-29 09:25:12', '9', '0');
INSERT INTO `tb_factory` VALUES ('41', '林松', '不详', '2015-04-30 13:38:09', 'ls', '2015-04-30 13:38:09', '9', '0');
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
INSERT INTO `tb_finalstoreorder` VALUES ('17', '17', '2015-04-04 14:45:56', '2015-04-04 14:45:56', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('18', '18', '2015-04-04 17:06:39', '2015-04-04 17:06:39', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('19', '19', '2015-04-04 17:24:04', '2015-04-04 17:24:04', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('20', '20', '2015-04-06 12:30:59', '2015-04-06 12:30:59', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('21', '21', '2015-04-06 14:26:11', '2015-04-06 14:26:11', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('22', '22', '2015-04-07 17:20:08', '2015-04-07 17:20:08', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('23', '23', '2015-04-08 07:59:02', '2015-04-08 07:59:02', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('24', '24', '2015-04-08 08:05:51', '2015-04-08 08:05:51', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('25', '25', '2015-04-08 09:20:30', '2015-04-08 09:20:30', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('26', '26', '2015-04-08 09:30:20', '2015-04-08 09:30:20', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('27', '27', '2015-04-08 10:05:42', '2015-04-08 10:05:42', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('28', '28', '2015-04-08 15:00:58', '2015-04-08 15:00:58', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('29', '29', '2015-04-08 15:55:25', '2015-04-08 15:55:25', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('30', '30', '2015-04-10 11:03:32', '2015-04-10 11:03:32', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('31', '31', '2015-04-10 17:08:23', '2015-04-10 17:08:23', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('32', '32', '2015-04-10 17:41:20', '2015-04-10 17:41:20', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('33', '33', '2015-04-10 17:57:18', '2015-04-10 17:57:18', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('34', '34', '2015-04-15 14:29:32', '2015-04-15 14:29:32', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('35', '35', '2015-04-15 15:17:14', '2015-04-15 15:17:14', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('36', '36', '2015-04-15 15:51:10', '2015-04-15 15:51:10', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('37', '37', '2015-04-15 16:33:31', '2015-04-15 16:33:31', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('38', '38', '2015-04-15 16:47:51', '2015-04-15 16:47:51', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('39', '39', '2015-04-15 16:52:54', '2015-04-15 16:52:54', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('40', '40', '2015-04-15 17:02:09', '2015-04-15 17:02:09', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('41', '41', '2015-04-15 17:14:55', '2015-04-15 17:14:55', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('42', '42', '2015-04-16 17:34:03', '2015-04-16 17:34:03', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('43', '43', '2015-04-17 15:32:22', '2015-04-17 15:32:22', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('44', '44', '2015-04-17 16:07:07', '2015-04-17 16:07:07', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('45', '45', '2015-04-17 16:21:44', '2015-04-17 16:21:44', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('46', '46', '2015-04-17 16:45:35', '2015-04-17 16:45:35', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('47', '47', '2015-04-17 17:50:43', '2015-04-17 17:50:43', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('48', '48', '2015-04-17 18:13:55', '2015-04-17 18:13:55', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('49', '49', '2015-04-17 18:39:08', '2015-04-17 18:39:08', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('50', '50', '2015-04-18 15:13:43', '2015-04-18 15:13:43', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('51', '51', '2015-04-18 15:23:22', '2015-04-18 15:23:22', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('52', '52', '2015-04-18 15:34:38', '2015-04-18 15:34:38', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('53', '53', '2015-04-18 15:51:54', '2015-04-18 15:51:54', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('54', '54', '2015-04-18 16:17:42', '2015-04-18 16:17:42', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('55', '55', '2015-04-18 17:23:44', '2015-04-18 17:23:44', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('56', '56', '2015-04-18 17:38:20', '2015-04-18 17:38:20', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('57', '57', '2015-04-18 17:57:46', '2015-04-18 17:57:46', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('58', '58', '2015-04-18 18:04:08', '2015-04-18 18:04:08', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('59', '59', '2015-04-18 18:14:36', '2015-04-18 18:14:36', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('60', '60', '2015-04-19 10:01:24', '2015-04-19 10:01:24', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('61', '61', '2015-04-19 13:01:53', '2015-04-19 13:01:53', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('62', '62', '2015-04-19 13:27:05', '2015-04-19 13:27:05', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('63', '63', '2015-04-19 13:47:19', '2015-04-19 13:47:19', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('64', '64', '2015-04-19 14:16:02', '2015-04-19 14:16:02', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('65', '65', '2015-04-19 14:30:18', '2015-04-19 14:30:18', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('66', '66', '2015-04-19 15:05:26', '2015-04-19 15:05:26', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('67', '67', '2015-04-19 15:17:28', '2015-04-19 15:17:28', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('68', '68', '2015-04-19 15:46:38', '2015-04-19 15:46:38', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('69', '69', '2015-04-19 16:03:09', '2015-04-19 16:03:09', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('70', '70', '2015-04-19 16:24:33', '2015-04-19 16:24:33', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('71', '71', '2015-04-19 16:33:55', '2015-04-19 16:33:55', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('72', '72', '2015-04-19 17:22:17', '2015-04-19 17:22:17', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('73', '73', '2015-04-19 17:29:36', '2015-04-19 17:29:36', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('74', '74', '2015-04-20 14:45:04', '2015-04-20 14:45:04', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('75', '75', '2015-04-20 14:51:33', '2015-04-20 14:51:33', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('76', '76', '2015-04-20 15:07:14', '2015-04-20 15:07:14', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('77', '77', '2015-04-20 15:17:28', '2015-04-20 15:17:28', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('78', '78', '2015-04-20 15:29:00', '2015-04-20 15:29:00', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('79', '79', '2015-04-23 14:31:06', '2015-04-23 14:31:06', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('80', '80', '2015-04-23 14:42:14', '2015-04-23 14:42:14', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('81', '81', '2015-04-24 12:46:27', '2015-04-24 12:46:27', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('82', '82', '2015-04-24 12:52:28', '2015-04-24 12:52:28', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('83', '83', '2015-04-24 13:02:43', '2015-04-24 13:02:43', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('84', '84', '2015-04-24 13:13:59', '2015-04-24 13:13:59', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('85', '85', '2015-04-24 13:34:42', '2015-04-24 13:34:42', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('86', '86', '2015-04-25 09:25:59', '2015-04-25 09:25:59', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('87', '87', '2015-04-27 08:07:57', '2015-04-27 08:07:57', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('88', '88', '2015-04-27 08:24:57', '2015-04-27 08:24:57', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('89', '89', '2015-04-27 08:45:32', '2015-04-27 08:45:32', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('90', '90', '2015-04-30 13:32:44', '2015-04-30 13:32:44', '7', '0', '新建');
INSERT INTO `tb_finalstoreorder` VALUES ('91', '91', '2015-05-02 16:28:24', '2015-05-02 16:28:24', '7', '0', '新建');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('1', null, '2015-04-07 09:00:59', '2015-04-07 09:00:59', '7', '[{\"memo\":\"\",\"quantity\":3,\"style\":19},{\"memo\":\"\",\"quantity\":5,\"style\":19}]', '31', '0', '新建', '7', null, null, '马海毛亮丝围脖', null, null, '0', null, null, null, null, '11', null, '15FL0001', '76346', '3');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('2', null, '2015-04-09 18:28:23', '2015-04-09 18:28:23', '7', '[{\"memo\":\"黑色\",\"quantity\":93,\"style\":19},{\"memo\":\"桔红\",\"quantity\":84,\"style\":19},{\"memo\":\"酒红\",\"quantity\":67,\"style\":19},{\"memo\":\"绿色待定\",\"quantity\":116,\"style\":19},{\"memo\":\"米白色\",\"quantity\":10,\"style\":18}]', '25', '0', '新建', '4', null, null, '马海毛珠片纱围脖', null, null, '0', null, null, null, null, '11', '3', '15FL0002', 'QY15-114', '3');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('3', null, '2015-04-10 13:26:14', '2015-04-10 13:26:14', '7', '[{\"memo\":\"MH151\",\"quantity\":33,\"style\":19},{\"memo\":\"MH72\",\"quantity\":33,\"style\":19},{\"memo\":\"MH106\",\"quantity\":26,\"style\":19},{\"memo\":\"粉色\",\"quantity\":163,\"style\":19},{\"memo\":\"MH02\",\"quantity\":158,\"style\":19},{\"memo\":\"MH07\",\"quantity\":12,\"style\":19}]', '31', '0', '新建', '1', null, null, '夹亮丝三件套', null, null, '0', null, null, null, null, '8', null, '15FL0003', '15NY-FW08', '2');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('4', null, '2015-04-10 13:29:19', '2015-04-10 13:29:19', '7', '[{\"memo\":\"MH58\",\"quantity\":9,\"style\":19}]', '31', '0', '新建', '1', null, null, '夹亮丝三件套', null, null, '0', null, null, null, null, '8', null, '15FL0004', '15NY-FW08', '2');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('5', null, '2015-04-10 16:30:22', '2015-04-10 16:30:22', '7', '[{\"memo\":\"本白-门幅净160公分\",\"quantity\":666,\"style\":23},{\"memo\":\"黑色-门幅净160\",\"quantity\":10,\"style\":23}]', '36', '0', '新建', '4', null, null, '冰岛毛绞花巾冒子围脖', null, null, '0', null, null, null, null, '11', '3', '15FL0005', 'QY15-100/101/165', '3');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('6', null, '2015-04-11 17:55:12', '2015-04-11 17:55:12', '7', '[{\"memo\":\"米色\",\"quantity\":26,\"style\":19},{\"memo\":\"蓝色\",\"quantity\":25,\"style\":19},{\"memo\":\"黑色\",\"quantity\":21,\"style\":19}]', '31', '0', '新建', '3', null, null, '马海毛亮丝围巾帽子', null, null, '0', null, null, null, null, '12', null, '15FL0006', 'EBVMB', '4');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('7', null, '2015-04-14 14:59:03', '2015-04-14 14:59:03', '7', '[{\"memo\":\"同上次大货批号\",\"quantity\":1100,\"style\":11}]', '17', '0', '新建', '1', null, null, 'AB线翻边帽', null, null, '0', null, null, null, null, '8', null, '15FL0007', '15NEXT-FW01', '2');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('8', null, '2015-04-16 11:00:50', '2015-04-16 11:00:50', '7', '[{\"memo\":\"米色\",\"quantity\":5,\"style\":19},{\"memo\":\"中灰\",\"quantity\":2,\"style\":19},{\"memo\":\"深灰\",\"quantity\":3,\"style\":19}]', '31', '0', '新建', '4', null, null, '帽子/手套', null, null, '0', null, null, null, null, '11', null, '15FL0008', 'SLI', '3');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('9', null, '2015-04-16 14:14:18', '2015-04-16 14:14:18', '7', '[{\"memo\":\"S码\",\"quantity\":443,\"style\":15},{\"memo\":\"L码\",\"quantity\":443,\"style\":14}]', '38', '0', '新建', '4', null, null, '毛皮头带', null, null, '0', null, null, null, null, '11', null, '15FL0009', 'QY15-090', '3');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('10', null, '2015-04-16 14:27:19', '2015-04-16 14:27:19', '7', '[{\"memo\":\"羽纱布\",\"quantity\":37,\"style\":28}]', '36', '0', '新建', '4', null, null, '毛皮围脖', null, null, '0', null, null, null, null, '11', null, '15FL0010', 'QY15-090', '3');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('11', null, '2015-04-16 14:36:15', '2015-04-16 14:36:15', '7', '[{\"memo\":\"黑,色-君英厂大货补纱\",\"quantity\":17,\"style\":19}]', '31', '0', '新建', '1', null, null, '马海毛珠片纱三配套', null, null, '0', null, null, null, null, '10', null, '15FL0011', '725050-10', '1');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('12', null, '2015-04-16 14:49:50', '2015-04-16 14:49:50', '7', '[{\"memo\":\"黑色\",\"quantity\":4436,\"style\":27},{\"memo\":\"米白色\",\"quantity\":884,\"style\":27},{\"memo\":\"暗红色\",\"quantity\":10526,\"style\":27}]', '38', '0', '新建', '5', null, null, '菱形毛球帽子', null, null, '0', null, null, null, null, '11', null, '15FL0012', 'SLI-0196', '3');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('13', null, '2015-04-16 14:55:11', '2015-04-16 14:55:11', '7', '[{\"memo\":\"浅灰\",\"quantity\":890,\"style\":27}]', '38', '0', '新建', '5', null, null, '马海毛毛球贝雷帽', null, null, '0', null, null, null, null, '11', null, '15FL0013', 'SLI-0194', '3');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('14', null, '2015-04-16 15:04:41', '2015-04-23 14:17:44', '7', '[{\"memo\":\"\",\"quantity\":0,\"style\":30}]', '38', '0', '新建', '1', null, null, '绞花加毛条围脖', null, null, '0', null, null, null, null, '8', null, '15FL0014', '15DPFW01', '2');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('15', null, '2015-04-16 15:09:16', '2015-04-16 15:09:16', '7', '[{\"memo\":\"米色\",\"quantity\":9300,\"style\":27},{\"memo\":\"深灰\",\"quantity\":9300,\"style\":27}]', '38', '0', '新建', '4', null, null, '绞花吊球帽子围巾', null, null, '0', null, null, null, null, '11', null, '15FL0015', 'FWA30015', '3');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('16', null, '2015-04-19 10:40:08', '2015-04-19 12:16:03', '7', '[{\"memo\":\"银丝\",\"quantity\":11,\"style\":19},{\"memo\":\"金丝\",\"quantity\":8,\"style\":19}]', '31', '0', '新建', '1', null, null, '冰岛毛亮丝两件套', null, null, '0', null, null, null, null, '10', null, '15FL0016', '90084601', '1');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('17', null, '2015-04-19 12:10:01', '2015-04-19 12:10:01', '7', '[{\"memo\":\"黑色羽纱布\",\"quantity\":25,\"style\":28}]', '36', '0', '新建', '4', null, null, '毛皮头带', null, null, '0', null, null, null, null, '11', null, '15FL0017', 'QY15-090', '3');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('18', null, '2015-04-20 12:47:35', '2015-04-20 12:47:35', '7', '[{\"memo\":\"151#\",\"quantity\":115,\"style\":19},{\"memo\":\"72#\",\"quantity\":115,\"style\":19},{\"memo\":\"106#\",\"quantity\":65,\"style\":19},{\"memo\":\"58#\",\"quantity\":52,\"style\":19},{\"memo\":\"粉色\",\"quantity\":27,\"style\":19},{\"memo\":\"01#\",\"quantity\":70,\"style\":19}]', '31', '0', '新建', '1', null, null, ' 夹亮丝三件套', null, null, '0', null, null, null, null, '8', null, '15FL0018', '15NY-FW10/11/12', '2');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('19', null, '2015-04-20 12:49:09', '2015-04-20 12:49:09', '7', '[{\"memo\":\"07#\",\"quantity\":55,\"style\":19}]', '31', '0', '新建', '1', null, null, '夹亮丝三件套', null, null, '0', null, null, null, null, '8', null, '15FL0019', '15NY-FW10/11/12', '2');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('20', null, '2015-04-21 10:49:04', '2015-04-21 10:49:04', '7', '[{\"memo\":\"粉色\",\"quantity\":510,\"style\":27},{\"memo\":\"黑色\",\"quantity\":1512,\"style\":27},{\"memo\":\"本白\",\"quantity\":810,\"style\":27}]', '38', '0', '新建', '1', null, null, '马海毛珠片纱比尼帽', null, null, '0', null, null, null, null, '10', null, '15FL0020', '72505', '1');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('21', null, '2015-04-21 11:53:02', '2015-04-21 11:53:02', '7', '[{\"memo\":\"粉色\",\"quantity\":10,\"style\":29},{\"memo\":\"黑色\",\"quantity\":30,\"style\":29},{\"memo\":\"本白\",\"quantity\":16,\"style\":29}]', '31', '0', '新建', '1', null, null, '马海毛珠片纱比尼帽', null, null, '0', null, null, null, null, '10', null, '15FL0021', '72505', '1');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('22', null, '2015-04-21 12:03:42', '2015-04-21 12:03:42', '7', '[{\"memo\":\"驼色\",\"quantity\":5615,\"style\":27}]', '38', '0', '新建', '4', null, null, '绞花毛子', null, null, '0', null, null, null, null, '11', null, '15FL0022', 'QY15-101', '3');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('23', null, '2015-04-22 10:32:59', '2015-04-22 10:32:59', '7', '[{\"memo\":\"MH-57\",\"quantity\":77,\"style\":19}]', '31', '0', '新建', '1', null, null, '亮丝晴纶两件套', null, null, '0', null, null, null, null, '10', null, '15FL0023', '90084601', '1');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('24', null, '2015-04-23 13:55:11', '2015-04-23 13:55:11', '7', '[{\"memo\":\"颜色品质同原样\",\"quantity\":80,\"style\":28}]', '36', '0', '新建', '4', null, null, '毛皮领子', null, null, '0', null, null, null, null, '11', null, '15FL0024', 'QY15-091', '3');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('25', null, '2015-04-23 13:59:37', '2015-04-23 13:59:37', '7', '[{\"memo\":\"藏青\",\"quantity\":143,\"style\":23},{\"memo\":\"白色\",\"quantity\":163,\"style\":23}]', '36', '0', '新建', '1', null, null, ' 针织舒棉绒围脖', null, null, '0', null, null, null, null, '8', null, '15FL0025', 'TDYC008', '2');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('26', null, '2015-04-27 07:54:50', '2015-04-27 07:54:50', '7', '[{\"memo\":\"大星星（4860）+小星星（4860）\",\"quantity\":9720,\"style\":28}]', '38', '0', '新建', '3', null, null, '马海毛五角星围脖', null, null, '0', null, null, null, null, '12', null, '15FL0026', 'GIRLS', '4');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('27', null, '2015-04-27 07:59:09', '2015-04-27 07:59:09', '7', '[{\"memo\":\"黑色\",\"quantity\":142,\"style\":23},{\"memo\":\"灰色\",\"quantity\":110,\"style\":23},{\"memo\":\"藏青\",\"quantity\":70,\"style\":23}]', '38', '0', '新建', '1', null, null, '绞花三件套', null, null, '0', null, null, null, null, '8', null, '15FL0027', '15AM-FW001', '2');
INSERT INTO `tb_fuliaopurchaseorder` VALUES ('28', null, '2015-04-30 15:01:20', '2015-04-30 15:01:20', '7', '[{\"memo\":\"H-05\",\"quantity\":30,\"style\":19}]', '31', '0', '新建', '1', null, null, ' 女童三件套', null, null, '0', null, null, null, null, '8', null, '15FL0028', 'FANIASQUE', '2');
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
INSERT INTO `tb_gongxu` VALUES ('16', '2015-04-23 10:58:40', '整烫+费用+后道', '2015-04-23 10:58:40', '9');
INSERT INTO `tb_gongxu` VALUES ('17', '2015-04-23 14:00:42', '做工', '2015-04-23 14:00:42', '9');
INSERT INTO `tb_gongxu` VALUES ('18', '2015-04-24 15:02:58', '裁剪', '2015-04-24 15:02:58', '9');
INSERT INTO `tb_gongxu` VALUES ('19', '2015-04-27 17:00:09', '平车', '2015-04-27 17:00:09', '9');
INSERT INTO `tb_gongxu` VALUES ('20', '2015-05-02 17:19:56', '手工', '2015-05-02 17:19:56', '9');
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
INSERT INTO `tb_halfcheckrecordorder` VALUES ('17', '17', '2015-04-04 14:45:56', '2015-04-04 14:45:56', '7', '[{\"color\":\"QY114-灰色\",\"colorsample\":\"\",\"material\":9},{\"color\":\"QY114-粉色\",\"colorsample\":\"\",\"material\":9},{\"color\":\"QY114-酒红\",\"colorsample\":\"\",\"material\":9},{\"color\":\"QY114-深驼\",\"colorsample\":\"\",\"material\":9}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('18', '18', '2015-04-04 17:06:39', '2015-04-04 17:06:39', '7', '[{\"color\":\"黑色组\",\"colorsample\":\"\",\"material\":9},{\"color\":\"黄色组\",\"colorsample\":\"\",\"material\":9},{\"color\":\"紫色组\",\"colorsample\":\"\",\"material\":9},{\"color\":\"白色\",\"colorsample\":\"\",\"material\":9}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('19', '19', '2015-04-04 17:24:04', '2015-04-04 17:24:04', '7', '[{\"color\":\"卡其色组\",\"colorsample\":\"\",\"material\":9},{\"color\":\"暗紫色\",\"colorsample\":\"\",\"material\":9},{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":9}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('20', '20', '2015-04-06 12:30:59', '2015-04-06 12:30:59', '7', '[{\"color\":\"米色\",\"colorsample\":\"\",\"material\":9},{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":9}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('21', '21', '2015-04-06 14:26:11', '2015-04-06 14:26:11', '7', '[{\"color\":\"本白色\",\"colorsample\":\"\",\"material\":9}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('22', '22', '2015-04-07 17:20:08', '2015-04-07 17:20:08', '7', '[{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":1},{\"color\":\"深灰夹花\",\"colorsample\":\"\",\"material\":1},{\"color\":\"猪血红\",\"colorsample\":\"\",\"material\":1}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('23', '23', '2015-04-08 07:59:02', '2015-04-08 07:59:02', '7', '[{\"color\":\"714#\",\"colorsample\":\"\",\"material\":1},{\"color\":\"718#\",\"colorsample\":\"\",\"material\":1}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('24', '24', '2015-04-08 08:05:51', '2015-04-08 08:05:51', '7', '[{\"color\":\"714#\",\"colorsample\":\"\",\"material\":1},{\"color\":\"718#\",\"colorsample\":\"\",\"material\":1}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('25', '25', '2015-04-08 09:20:30', '2015-04-08 09:20:30', '7', '[{\"color\":\"粉色\",\"colorsample\":\"\",\"material\":1}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('26', '26', '2015-04-08 09:30:20', '2015-04-08 09:30:20', '7', '[{\"color\":\"粉色\",\"colorsample\":\"\",\"material\":1},{\"color\":\"718#\",\"colorsample\":\"\",\"material\":1},{\"color\":\"712#\",\"colorsample\":\"\",\"material\":1}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('27', '27', '2015-04-08 10:05:42', '2015-04-08 10:05:42', '7', '[{\"color\":\"粉色\",\"colorsample\":\"\",\"material\":1},{\"color\":\"718#\",\"colorsample\":\"\",\"material\":1},{\"color\":\"712#\",\"colorsample\":\"\",\"material\":1}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('28', '28', '2015-04-08 15:00:58', '2015-04-08 15:00:58', '7', '[{\"color\":\"黄色组\",\"colorsample\":\"\",\"material\":9},{\"color\":\"白色组\",\"colorsample\":\"\",\"material\":9},{\"color\":\"黑色组\",\"colorsample\":\"\",\"material\":9},{\"color\":\"紫色组\",\"colorsample\":\"\",\"material\":9}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('29', '29', '2015-04-08 15:55:25', '2015-04-08 15:55:25', '7', '[{\"color\":\"K974\",\"colorsample\":\"\",\"material\":7},{\"color\":\"QY102米色\",\"colorsample\":\"\",\"material\":6}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('30', '30', '2015-04-10 11:03:32', '2015-04-10 11:03:32', '7', '[{\"color\":\"OB米白组\",\"colorsample\":\"\",\"material\":9},{\"color\":\"0B黑色组\",\"colorsample\":\"\",\"material\":9},{\"color\":\"OB黄色组\",\"colorsample\":\"\",\"material\":9},{\"color\":\"OB紫色\",\"colorsample\":\"\",\"material\":9}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('31', '31', '2015-04-10 17:08:23', '2015-04-10 17:08:23', '7', '[{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":20},{\"color\":\"海军蓝\",\"colorsample\":\"\",\"material\":20},{\"color\":\"银色\",\"colorsample\":\"\",\"material\":20}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('32', '32', '2015-04-10 17:41:20', '2015-04-10 17:41:20', '7', '[{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":20},{\"color\":\"海军蓝\",\"colorsample\":\"\",\"material\":20},{\"color\":\"银色\",\"colorsample\":\"\",\"material\":20}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('33', '33', '2015-04-10 17:57:18', '2015-04-10 17:57:18', '7', '[{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":20},{\"color\":\"诲军蓝\",\"colorsample\":\"\",\"material\":20},{\"color\":\"银色\",\"colorsample\":\"\",\"material\":20}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('34', '34', '2015-04-15 14:29:32', '2015-04-15 14:29:32', '7', '[{\"color\":\"AM黑色\",\"colorsample\":\"\",\"material\":4},{\"color\":\"AM奶白\",\"colorsample\":\"\",\"material\":4},{\"color\":\"AM丈青\",\"colorsample\":\"\",\"material\":4},{\"color\":\"AM酒红\",\"colorsample\":\"\",\"material\":4},{\"color\":\"714#\",\"colorsample\":\"\",\"material\":4}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('35', '35', '2015-04-15 15:17:14', '2015-04-15 15:17:14', '7', '[{\"color\":\"QY15本白\",\"colorsample\":\"\",\"material\":3},{\"color\":\"QY15黑色\",\"colorsample\":\"\",\"material\":3},{\"color\":\"QY15深灰夹花K974\",\"colorsample\":\"\",\"material\":3}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('36', '36', '2015-04-15 15:51:10', '2015-04-15 15:51:10', '7', '[{\"color\":\"黑色组\",\"colorsample\":\"\",\"material\":9},{\"color\":\"黄色组\",\"colorsample\":\"\",\"material\":9},{\"color\":\"紫色组\",\"colorsample\":\"\",\"material\":9},{\"color\":\"米白组\",\"colorsample\":\"\",\"material\":9}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('37', '37', '2015-04-15 16:33:31', '2015-04-15 16:33:31', '7', '[{\"color\":\"QY15本白\",\"colorsample\":\"\",\"material\":3},{\"color\":\"QY15深灰夹花\",\"colorsample\":\"\",\"material\":3},{\"color\":\"QY15黑色\",\"colorsample\":\"\",\"material\":3}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('38', '38', '2015-04-15 16:47:51', '2015-04-15 16:47:51', '7', '[{\"color\":\"AM黑色\",\"colorsample\":\"\",\"material\":4},{\"color\":\"AM奶白\",\"colorsample\":\"\",\"material\":4},{\"color\":\"AM丈青\",\"colorsample\":\"\",\"material\":4},{\"color\":\"AM酒红\",\"colorsample\":\"\",\"material\":4}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('39', '39', '2015-04-15 16:52:54', '2015-04-15 16:52:54', '7', '[{\"color\":\"LU471米色S\",\"colorsample\":\"\",\"material\":6},{\"color\":\"LU471米色M\",\"colorsample\":\"\",\"material\":6},{\"color\":\"LU471深灰夹花S\",\"colorsample\":\"\",\"material\":7},{\"color\":\"LU471深灰夹花M\",\"colorsample\":\"\",\"material\":7}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('40', '40', '2015-04-15 17:02:09', '2015-04-15 17:02:09', '7', '[{\"color\":\"45#卡其色+铜丝\",\"colorsample\":\"\",\"material\":9},{\"color\":\"89#暗紫色+银丝\",\"colorsample\":\"\",\"material\":9},{\"color\":\"90#黑色+银丝\",\"colorsample\":\"\",\"material\":9}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('41', '41', '2015-04-15 17:14:55', '2015-04-15 17:14:55', '7', '[{\"color\":\"AM黑色\",\"colorsample\":\"\",\"material\":4},{\"color\":\"AM奶白\",\"colorsample\":\"\",\"material\":4},{\"color\":\"AM夹花灰714\",\"colorsample\":\"\",\"material\":4},{\"color\":\"AM丈青\",\"colorsample\":\"\",\"material\":4},{\"color\":\"AM酒红\",\"colorsample\":\"\",\"material\":4}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('42', '42', '2015-04-16 17:34:03', '2015-04-16 17:34:03', '7', '[{\"color\":\"15NY黑色\",\"colorsample\":\"\",\"material\":10},{\"color\":\"15NY褐色\",\"colorsample\":\"\",\"material\":10}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('43', '43', '2015-04-17 15:32:22', '2015-04-17 15:32:22', '7', '[{\"color\":\"15NY黑色\",\"colorsample\":\"\",\"material\":10},{\"color\":\"15NY褐色\",\"colorsample\":\"\",\"material\":10},{\"color\":\"黑色组151/72\",\"colorsample\":\"\",\"material\":19},{\"color\":\"褐色组106/粉色\",\"colorsample\":\"\",\"material\":19}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('44', '44', '2015-04-17 16:07:07', '2015-04-17 16:07:07', '7', '[{\"color\":\"15NY黑色\",\"colorsample\":\"\",\"material\":10},{\"color\":\"15NY褐色\",\"colorsample\":\"\",\"material\":10},{\"color\":\"15NY白色\",\"colorsample\":\"\",\"material\":10},{\"color\":\"151\",\"colorsample\":\"\",\"material\":19},{\"color\":\"72\",\"colorsample\":\"\",\"material\":19},{\"color\":\"106\",\"colorsample\":\"\",\"material\":19},{\"color\":\"粉色\",\"colorsample\":\"\",\"material\":19},{\"color\":\"2\",\"colorsample\":\"\",\"material\":19},{\"color\":\"7\",\"colorsample\":\"\",\"material\":19}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('45', '45', '2015-04-17 16:21:44', '2015-04-17 16:21:44', '7', '[{\"color\":\"15N黑色\",\"colorsample\":\"\",\"material\":10},{\"color\":\"15NY褐色\",\"colorsample\":\"\",\"material\":10},{\"color\":\"15NY白色\",\"colorsample\":\"\",\"material\":10}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('46', '46', '2015-04-17 16:45:35', '2015-04-17 16:45:35', '7', '[{\"color\":\"15NY黑色\",\"colorsample\":\"\",\"material\":10},{\"color\":\"15NY棕色\",\"colorsample\":\"\",\"material\":10},{\"color\":\"15NY白色\",\"colorsample\":\"\",\"material\":10},{\"color\":\"15NY褐色\",\"colorsample\":\"\",\"material\":10},{\"color\":\"15NY灰色\",\"colorsample\":\"\",\"material\":10}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('47', '47', '2015-04-17 17:50:43', '2015-04-17 17:50:43', '7', '[{\"color\":\"QY114黑色\",\"colorsample\":\"\",\"material\":9},{\"color\":\"QY114桔色\",\"colorsample\":\"\",\"material\":9},{\"color\":\"QY114酒红色\",\"colorsample\":\"\",\"material\":9},{\"color\":\"QY114绿色\",\"colorsample\":\"\",\"material\":9},{\"color\":\"QY114米色\",\"colorsample\":\"\",\"material\":9}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('48', '48', '2015-04-17 18:13:55', '2015-04-17 18:13:55', '7', '[{\"color\":\"QY15黑色\",\"colorsample\":\"\",\"material\":6},{\"color\":\"QY15-本白色\",\"colorsample\":\"\",\"material\":6}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('49', '49', '2015-04-17 18:39:08', '2015-04-17 18:39:08', '7', '[{\"color\":\"15DP驼色\",\"colorsample\":\"\",\"material\":6}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('50', '50', '2015-04-18 15:13:43', '2015-04-18 15:13:43', '7', '[{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":30},{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":30}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('51', '51', '2015-04-18 15:23:22', '2015-04-18 15:23:22', '7', '[{\"color\":\"黑/白\",\"colorsample\":\"\",\"material\":1}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('52', '52', '2015-04-18 15:34:38', '2015-04-18 15:34:38', '7', '[{\"color\":\"灰色\",\"colorsample\":\"\",\"material\":10},{\"color\":\"粉色\",\"colorsample\":\"\",\"material\":10},{\"color\":\"藏青\",\"colorsample\":\"\",\"material\":10}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('53', '53', '2015-04-18 15:51:54', '2015-04-18 15:51:54', '7', '[{\"color\":\"VMB米色\",\"colorsample\":\"\",\"material\":9},{\"color\":\"VMB蓝色\",\"colorsample\":\"\",\"material\":9}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('54', '54', '2015-04-18 16:17:42', '2015-04-18 16:17:42', '7', '[{\"color\":\"743米色\",\"colorsample\":\"\",\"material\":10},{\"color\":\"205蓝色\",\"colorsample\":\"\",\"material\":10},{\"color\":\"M27黑色\",\"colorsample\":\"\",\"material\":10}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('55', '55', '2015-04-18 17:23:44', '2015-04-18 17:23:44', '7', '[{\"color\":\"QY15黑色\",\"colorsample\":\"\",\"material\":6},{\"color\":\"QY15本白色\",\"colorsample\":\"\",\"material\":6}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('56', '56', '2015-04-18 17:38:20', '2015-04-18 17:38:20', '7', '[{\"color\":\"Cap黑色\",\"colorsample\":\"\",\"material\":1}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('57', '57', '2015-04-18 17:57:46', '2015-04-18 17:57:46', '7', '[{\"color\":\"15GIII-  棕色\",\"colorsample\":\"\",\"material\":9}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('58', '58', '2015-04-18 18:04:08', '2015-04-18 18:04:08', '7', '[{\"color\":\"W120-黑色\",\"colorsample\":\"\",\"material\":1},{\"color\":\"W120-棕色\",\"colorsample\":\"\",\"material\":1},{\"color\":\"W120-灰色\",\"colorsample\":\"\",\"material\":1}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('59', '59', '2015-04-18 18:14:36', '2015-04-18 18:14:36', '7', '[{\"color\":\"自然色\",\"colorsample\":\"\",\"material\":9}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('60', '60', '2015-04-19 10:01:24', '2015-04-19 10:01:24', '7', '[{\"color\":\"粉色\",\"colorsample\":\"\",\"material\":1},{\"color\":\"军蓝\",\"colorsample\":\"\",\"material\":1},{\"color\":\"深灰\",\"colorsample\":\"\",\"material\":1}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('61', '61', '2015-04-19 13:01:53', '2015-04-19 13:01:53', '7', '[{\"color\":\"03X浅粉\",\"colorsample\":\"\",\"material\":5},{\"color\":\"712\",\"colorsample\":\"\",\"material\":5},{\"color\":\"59X藏青\",\"colorsample\":\"\",\"material\":5},{\"color\":\"69X蓝色\",\"colorsample\":\"\",\"material\":5}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('62', '62', '2015-04-19 13:27:05', '2015-04-19 13:27:05', '7', '[{\"color\":\"33X红色\",\"colorsample\":\"\",\"material\":1},{\"color\":\"42X 亮粉\",\"colorsample\":\"\",\"material\":1},{\"color\":\"59X藏青\",\"colorsample\":\"\",\"material\":1},{\"color\":\"99X黑色\",\"colorsample\":\"\",\"material\":1},{\"color\":\"90X712\",\"colorsample\":\"\",\"material\":1}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('63', '63', '2015-04-19 13:47:19', '2015-04-19 13:47:19', '7', '[{\"color\":\"01X米色\",\"colorsample\":\"\",\"material\":1},{\"color\":\"09X712\",\"colorsample\":\"\",\"material\":1}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('64', '64', '2015-04-19 14:16:02', '2015-04-19 14:16:02', '7', '[{\"color\":\"01X米色\",\"colorsample\":\"\",\"material\":1},{\"color\":\"84X咖啡色\",\"colorsample\":\"\",\"material\":1},{\"color\":\"09X712\",\"colorsample\":\"\",\"material\":1}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('65', '65', '2015-04-19 14:30:18', '2015-04-19 14:30:18', '7', '[{\"color\":\"01X   米色\",\"colorsample\":\"\",\"material\":1},{\"color\":\"84X咖啡色\",\"colorsample\":\"\",\"material\":1},{\"color\":\"28X土黄\",\"colorsample\":\"\",\"material\":1},{\"color\":\"09X712\",\"colorsample\":\"\",\"material\":1}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('66', '66', '2015-04-19 15:05:26', '2015-04-19 15:05:26', '7', '[{\"color\":\"LS-紫色\",\"colorsample\":\"\",\"material\":1},{\"color\":\"LS-黑色\",\"colorsample\":\"\",\"material\":1}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('67', '67', '2015-04-19 15:17:28', '2015-04-19 15:17:28', '7', '[{\"color\":\"EY深灰\",\"colorsample\":\"\",\"material\":3}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('68', '68', '2015-04-19 15:46:38', '2015-04-19 15:46:38', '7', '[{\"color\":\"灰色组\",\"colorsample\":\"\",\"material\":11},{\"color\":\"灰色组\",\"colorsample\":\"\",\"material\":11},{\"color\":\"灰色组\",\"colorsample\":\"\",\"material\":11},{\"color\":\"灰色组\",\"colorsample\":\"\",\"material\":11},{\"color\":\"灰色组\",\"colorsample\":\"\",\"material\":11},{\"color\":\"蓝色组\",\"colorsample\":\"\",\"material\":11},{\"color\":\"蓝色组\",\"colorsample\":\"\",\"material\":11},{\"color\":\"蓝色组\",\"colorsample\":\"\",\"material\":11},{\"color\":\"蓝色组\",\"colorsample\":\"\",\"material\":11},{\"color\":\"蓝色组\",\"colorsample\":\"\",\"material\":11}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('69', '69', '2015-04-19 16:03:09', '2015-04-19 16:03:09', '7', '[{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":9}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('70', '70', '2015-04-19 16:24:33', '2015-04-19 16:24:33', '7', '[{\"color\":\"G8黑色\",\"colorsample\":\"\",\"material\":9}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('71', '71', '2015-04-19 16:33:55', '2015-04-19 16:33:55', '7', '[{\"color\":\"多色\",\"colorsample\":\"\",\"material\":9}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('72', '72', '2015-04-19 17:22:17', '2015-04-19 17:22:17', '7', '[{\"color\":\"SLI黑色\",\"colorsample\":\"\",\"material\":6},{\"color\":\"SLI米白\",\"colorsample\":\"\",\"material\":6},{\"color\":\"SLI暗红\",\"colorsample\":\"\",\"material\":6}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('73', '73', '2015-04-19 17:29:36', '2015-04-19 17:29:36', '7', '[{\"color\":\"712\",\"colorsample\":\"\",\"material\":9}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('74', '74', '2015-04-20 14:45:04', '2015-04-20 14:45:04', '7', '[{\"color\":\"712#\",\"colorsample\":\"\",\"material\":5}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('75', '75', '2015-04-20 14:51:33', '2015-04-20 14:51:33', '7', '[{\"color\":\"712\",\"colorsample\":\"\",\"material\":5}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('76', '76', '2015-04-20 15:07:14', '2015-04-20 15:07:14', '7', '[{\"color\":\"9008-白色\",\"colorsample\":\"\",\"material\":6},{\"color\":\"9008-黑色\",\"colorsample\":\"\",\"material\":6}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('77', '77', '2015-04-20 15:17:28', '2015-04-20 15:17:28', '7', '[{\"color\":\"9008黑色\",\"colorsample\":\"\",\"material\":6},{\"color\":\"9008白色\",\"colorsample\":\"\",\"material\":6}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('78', '78', '2015-04-20 15:29:00', '2015-04-20 15:29:00', '7', '[{\"color\":\"红色\",\"colorsample\":\"\",\"material\":31},{\"color\":\"粉色\",\"colorsample\":\"\",\"material\":31},{\"color\":\"米色\",\"colorsample\":\"\",\"material\":31}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('79', '79', '2015-04-23 14:31:06', '2015-04-23 14:31:06', '7', '[{\"color\":\"4601-藏青\",\"colorsample\":\"\",\"material\":1},{\"color\":\"4601-夹花棕\",\"colorsample\":\"\",\"material\":1},{\"color\":\"4601-红色\",\"colorsample\":\"\",\"material\":1}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('80', '80', '2015-04-23 14:42:14', '2015-04-23 14:42:14', '7', '[{\"color\":\"4601藏青\",\"colorsample\":\"\",\"material\":1},{\"color\":\"4601夹花棕\",\"colorsample\":\"\",\"material\":1},{\"color\":\"4601红色\",\"colorsample\":\"\",\"material\":1}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('81', '81', '2015-04-24 12:46:27', '2015-04-24 12:46:27', '7', '[{\"color\":\"072粉色\",\"colorsample\":\"\",\"material\":1},{\"color\":\"712\",\"colorsample\":\"\",\"material\":1}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('82', '82', '2015-04-24 12:52:28', '2015-04-24 12:52:28', '7', '[{\"color\":\"072粉色\",\"colorsample\":\"\",\"material\":1},{\"color\":\"712\",\"colorsample\":\"\",\"material\":1}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('83', '83', '2015-04-24 13:02:43', '2015-04-24 13:02:43', '7', '[{\"color\":\"黑灰组\",\"colorsample\":\"\",\"material\":1}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('84', '84', '2015-04-24 13:13:59', '2015-04-24 13:13:59', '7', '[{\"color\":\"灰色组\",\"colorsample\":\"\",\"material\":1},{\"color\":\"黑色组\",\"colorsample\":\"\",\"material\":1}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('85', '85', '2015-04-24 13:34:42', '2015-04-24 13:34:42', '7', '[{\"color\":\"灰色\",\"colorsample\":\"\",\"material\":30}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('86', '86', '2015-04-25 09:25:59', '2015-04-25 09:25:59', '7', '[{\"color\":\"c008藏青\",\"colorsample\":\"\",\"material\":1},{\"color\":\"c008卡其\",\"colorsample\":\"\",\"material\":1}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('87', '87', '2015-04-27 08:07:57', '2015-04-27 08:07:57', '7', '[{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":10},{\"color\":\"褐色\",\"colorsample\":\"\",\"material\":10},{\"color\":\"灰色\",\"colorsample\":\"\",\"material\":10},{\"color\":\"白色\",\"colorsample\":\"\",\"material\":10}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('88', '88', '2015-04-27 08:24:57', '2015-04-27 08:24:57', '7', '[{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":10},{\"color\":\"棕色\",\"colorsample\":\"\",\"material\":10},{\"color\":\"白色\",\"colorsample\":\"\",\"material\":10},{\"color\":\"灰色\",\"colorsample\":\"\",\"material\":10}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('89', '89', '2015-04-27 08:45:32', '2015-04-27 08:45:32', '7', '[{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":10},{\"color\":\"棕色\",\"colorsample\":\"\",\"material\":10},{\"color\":\"白色\",\"colorsample\":\"\",\"material\":10},{\"color\":\"褐色\",\"colorsample\":\"\",\"material\":10},{\"color\":\"灰色\",\"colorsample\":\"\",\"material\":10}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('90', '90', '2015-04-30 13:32:44', '2015-04-30 13:32:44', '7', '[{\"color\":\"714\",\"colorsample\":\"\",\"material\":10}]', '0', '新建');
INSERT INTO `tb_halfcheckrecordorder` VALUES ('91', '91', '2015-05-02 16:28:24', '2015-05-02 16:28:24', '7', '[{\"color\":\"粉色\",\"colorsample\":\"\",\"material\":9},{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":9},{\"color\":\"本白\",\"colorsample\":\"\",\"material\":9}]', '0', '新建');
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
INSERT INTO `tb_headbankorder` VALUES ('17', '17', '2015-04-04 14:45:56', '2015-04-04 14:45:56', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('18', '18', '2015-04-04 17:06:39', '2015-04-04 17:06:39', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('19', '19', '2015-04-04 17:24:04', '2015-04-04 17:24:04', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('20', '20', '2015-04-06 12:30:59', '2015-04-06 12:30:59', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('21', '21', '2015-04-06 14:26:11', '2015-04-06 14:26:11', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('22', '22', '2015-04-07 17:20:08', '2015-04-07 17:20:08', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('23', '23', '2015-04-08 07:59:02', '2015-04-08 07:59:02', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('24', '24', '2015-04-08 08:05:51', '2015-04-08 08:05:51', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('25', '25', '2015-04-08 09:20:30', '2015-04-08 09:20:30', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('26', '26', '2015-04-08 09:30:20', '2015-04-08 09:30:20', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('27', '27', '2015-04-08 10:05:42', '2015-04-08 10:05:42', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('28', '28', '2015-04-08 15:00:58', '2015-04-08 15:00:58', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('29', '29', '2015-04-08 15:55:25', '2015-04-08 15:55:25', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('30', '30', '2015-04-10 11:03:32', '2015-04-10 11:03:32', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('31', '31', '2015-04-10 17:08:23', '2015-04-10 17:08:23', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('32', '32', '2015-04-10 17:41:20', '2015-04-10 17:41:20', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('33', '33', '2015-04-10 17:57:18', '2015-04-10 17:57:18', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('34', '34', '2015-04-15 14:29:32', '2015-04-15 14:29:32', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('35', '35', '2015-04-15 15:17:14', '2015-04-15 15:17:14', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('36', '36', '2015-04-15 15:51:10', '2015-04-15 15:51:10', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('37', '37', '2015-04-15 16:33:31', '2015-04-15 16:33:31', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('38', '38', '2015-04-15 16:47:51', '2015-04-15 16:47:51', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('39', '39', '2015-04-15 16:52:54', '2015-04-15 16:52:54', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('40', '40', '2015-04-15 17:02:09', '2015-04-15 17:02:09', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('41', '41', '2015-04-15 17:14:55', '2015-04-15 17:14:55', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('42', '42', '2015-04-16 17:34:03', '2015-04-16 17:34:03', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('43', '43', '2015-04-17 15:32:22', '2015-04-17 15:32:22', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('44', '44', '2015-04-17 16:07:07', '2015-04-17 16:07:07', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('45', '45', '2015-04-17 16:21:44', '2015-04-17 16:21:44', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('46', '46', '2015-04-17 16:45:35', '2015-04-17 16:45:35', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('47', '47', '2015-04-17 17:50:43', '2015-04-17 17:50:43', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('48', '48', '2015-04-17 18:13:55', '2015-04-17 18:13:55', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('49', '49', '2015-04-17 18:39:08', '2015-04-17 18:39:08', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('50', '50', '2015-04-18 15:13:43', '2015-04-18 15:13:43', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('51', '51', '2015-04-18 15:23:22', '2015-04-18 15:23:22', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('52', '52', '2015-04-18 15:34:38', '2015-04-18 15:34:38', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('53', '53', '2015-04-18 15:51:54', '2015-04-18 15:51:54', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('54', '54', '2015-04-18 16:17:42', '2015-04-18 16:17:42', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('55', '55', '2015-04-18 17:23:44', '2015-04-18 17:23:44', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('56', '56', '2015-04-18 17:38:20', '2015-04-18 17:38:20', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('57', '57', '2015-04-18 17:57:46', '2015-04-18 17:57:46', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('58', '58', '2015-04-18 18:04:08', '2015-04-18 18:04:08', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('59', '59', '2015-04-18 18:14:36', '2015-04-18 18:14:36', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('60', '60', '2015-04-19 10:01:24', '2015-04-19 10:01:24', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('61', '61', '2015-04-19 13:01:52', '2015-04-19 13:01:52', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('62', '62', '2015-04-19 13:27:05', '2015-04-19 13:27:05', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('63', '63', '2015-04-19 13:47:19', '2015-04-19 13:47:19', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('64', '64', '2015-04-19 14:16:02', '2015-04-19 14:16:02', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('65', '65', '2015-04-19 14:30:18', '2015-04-19 14:30:18', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('66', '66', '2015-04-19 15:05:26', '2015-04-19 15:05:26', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('67', '67', '2015-04-19 15:17:28', '2015-04-19 15:17:28', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('68', '68', '2015-04-19 15:46:38', '2015-04-19 15:46:38', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('69', '69', '2015-04-19 16:03:09', '2015-04-19 16:03:09', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('70', '70', '2015-04-19 16:24:33', '2015-04-19 16:24:33', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('71', '71', '2015-04-19 16:33:55', '2015-04-19 16:33:55', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('72', '72', '2015-04-19 17:22:17', '2015-04-19 17:22:17', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('73', '73', '2015-04-19 17:29:36', '2015-04-19 17:29:36', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('74', '74', '2015-04-20 14:45:04', '2015-04-20 14:45:04', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('75', '75', '2015-04-20 14:51:33', '2015-04-20 14:51:33', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('76', '76', '2015-04-20 15:07:14', '2015-04-20 15:07:14', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('77', '77', '2015-04-20 15:17:28', '2015-04-20 15:17:28', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('78', '78', '2015-04-20 15:29:00', '2015-04-20 15:29:00', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('79', '79', '2015-04-23 14:31:06', '2015-04-23 14:31:06', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('80', '80', '2015-04-23 14:42:14', '2015-04-23 14:42:14', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('81', '81', '2015-04-24 12:46:27', '2015-04-24 12:46:27', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('82', '82', '2015-04-24 12:52:28', '2015-04-24 12:52:28', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('83', '83', '2015-04-24 13:02:43', '2015-04-24 13:02:43', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('84', '84', '2015-04-24 13:13:59', '2015-04-24 13:13:59', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('85', '85', '2015-04-24 13:34:42', '2015-04-24 13:34:42', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('86', '86', '2015-04-25 09:25:59', '2015-04-25 09:25:59', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('87', '87', '2015-04-27 08:07:57', '2015-04-27 08:07:57', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('88', '88', '2015-04-27 08:24:57', '2015-04-27 08:24:57', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('89', '89', '2015-04-27 08:45:32', '2015-04-27 08:45:32', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('90', '90', '2015-04-30 13:32:44', '2015-04-30 13:32:44', '7', '0', '新建');
INSERT INTO `tb_headbankorder` VALUES ('91', '91', '2015-05-02 16:28:24', '2015-05-02 16:28:24', '7', '0', '新建');
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
INSERT INTO `tb_ironingrecordorder` VALUES ('17', '17', '2015-04-04 14:45:56', '2015-04-04 14:45:56', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('18', '18', '2015-04-04 17:06:39', '2015-04-04 17:06:39', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('19', '19', '2015-04-04 17:24:04', '2015-04-04 17:24:04', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('20', '20', '2015-04-06 12:30:59', '2015-04-06 12:30:59', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('21', '21', '2015-04-06 14:26:11', '2015-04-06 14:26:11', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('22', '22', '2015-04-07 17:20:08', '2015-04-07 17:20:08', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('23', '23', '2015-04-08 07:59:02', '2015-04-08 07:59:02', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('24', '24', '2015-04-08 08:05:51', '2015-04-08 08:05:51', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('25', '25', '2015-04-08 09:20:30', '2015-04-08 09:20:30', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('26', '26', '2015-04-08 09:30:20', '2015-04-08 09:30:20', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('27', '27', '2015-04-08 10:05:42', '2015-04-08 10:05:42', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('28', '28', '2015-04-08 15:00:58', '2015-04-08 15:00:58', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('29', '29', '2015-04-08 15:55:25', '2015-04-08 15:55:25', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('30', '30', '2015-04-10 11:03:32', '2015-04-10 11:03:32', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('31', '31', '2015-04-10 17:08:23', '2015-04-10 17:08:23', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('32', '32', '2015-04-10 17:41:20', '2015-04-10 17:41:20', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('33', '33', '2015-04-10 17:57:18', '2015-04-10 17:57:18', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('34', '34', '2015-04-15 14:29:32', '2015-04-15 14:29:32', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('35', '35', '2015-04-15 15:17:14', '2015-04-15 15:17:14', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('36', '36', '2015-04-15 15:51:10', '2015-04-15 15:51:10', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('37', '37', '2015-04-15 16:33:31', '2015-04-15 16:33:31', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('38', '38', '2015-04-15 16:47:51', '2015-04-15 16:47:51', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('39', '39', '2015-04-15 16:52:54', '2015-04-15 16:52:54', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('40', '40', '2015-04-15 17:02:09', '2015-04-15 17:02:09', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('41', '41', '2015-04-15 17:14:55', '2015-04-15 17:14:55', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('42', '42', '2015-04-16 17:34:03', '2015-04-16 17:34:03', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('43', '43', '2015-04-17 15:32:22', '2015-04-17 15:32:22', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('44', '44', '2015-04-17 16:07:07', '2015-04-17 16:07:07', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('45', '45', '2015-04-17 16:21:44', '2015-04-17 16:21:44', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('46', '46', '2015-04-17 16:45:35', '2015-04-17 16:45:35', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('47', '47', '2015-04-17 17:50:43', '2015-04-17 17:50:43', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('48', '48', '2015-04-17 18:13:55', '2015-04-17 18:13:55', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('49', '49', '2015-04-17 18:39:08', '2015-04-17 18:39:08', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('50', '50', '2015-04-18 15:13:43', '2015-04-18 15:13:43', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('51', '51', '2015-04-18 15:23:22', '2015-04-18 15:23:22', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('52', '52', '2015-04-18 15:34:38', '2015-04-18 15:34:38', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('53', '53', '2015-04-18 15:51:54', '2015-04-18 15:51:54', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('54', '54', '2015-04-18 16:17:42', '2015-04-18 16:17:42', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('55', '55', '2015-04-18 17:23:44', '2015-04-18 17:23:44', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('56', '56', '2015-04-18 17:38:20', '2015-04-18 17:38:20', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('57', '57', '2015-04-18 17:57:46', '2015-04-18 17:57:46', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('58', '58', '2015-04-18 18:04:08', '2015-04-18 18:04:08', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('59', '59', '2015-04-18 18:14:36', '2015-04-18 18:14:36', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('60', '60', '2015-04-19 10:01:24', '2015-04-19 10:01:24', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('61', '61', '2015-04-19 13:01:53', '2015-04-19 13:01:53', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('62', '62', '2015-04-19 13:27:05', '2015-04-19 13:27:05', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('63', '63', '2015-04-19 13:47:19', '2015-04-19 13:47:19', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('64', '64', '2015-04-19 14:16:02', '2015-04-19 14:16:02', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('65', '65', '2015-04-19 14:30:18', '2015-04-19 14:30:18', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('66', '66', '2015-04-19 15:05:26', '2015-04-19 15:05:26', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('67', '67', '2015-04-19 15:17:28', '2015-04-19 15:17:28', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('68', '68', '2015-04-19 15:46:38', '2015-04-19 15:46:38', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('69', '69', '2015-04-19 16:03:09', '2015-04-19 16:03:09', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('70', '70', '2015-04-19 16:24:33', '2015-04-19 16:24:33', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('71', '71', '2015-04-19 16:33:55', '2015-04-19 16:33:55', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('72', '72', '2015-04-19 17:22:17', '2015-04-19 17:22:17', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('73', '73', '2015-04-19 17:29:36', '2015-04-19 17:29:36', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('74', '74', '2015-04-20 14:45:04', '2015-04-20 14:45:04', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('75', '75', '2015-04-20 14:51:33', '2015-04-20 14:51:33', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('76', '76', '2015-04-20 15:07:14', '2015-04-20 15:07:14', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('77', '77', '2015-04-20 15:17:28', '2015-04-20 15:17:28', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('78', '78', '2015-04-20 15:29:00', '2015-04-20 15:29:00', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('79', '79', '2015-04-23 14:31:06', '2015-04-23 14:31:06', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('80', '80', '2015-04-23 14:42:14', '2015-04-23 14:42:14', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('81', '81', '2015-04-24 12:46:27', '2015-04-24 12:46:27', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('82', '82', '2015-04-24 12:52:28', '2015-04-24 12:52:28', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('83', '83', '2015-04-24 13:02:43', '2015-04-24 13:02:43', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('84', '84', '2015-04-24 13:13:59', '2015-04-24 13:13:59', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('85', '85', '2015-04-24 13:34:42', '2015-04-24 13:34:42', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('86', '86', '2015-04-25 09:25:59', '2015-04-25 09:25:59', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('87', '87', '2015-04-27 08:07:57', '2015-04-27 08:07:57', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('88', '88', '2015-04-27 08:24:57', '2015-04-27 08:24:57', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('89', '89', '2015-04-27 08:45:32', '2015-04-27 08:45:32', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('90', '90', '2015-04-30 13:32:44', '2015-04-30 13:32:44', '7', '0', '新建');
INSERT INTO `tb_ironingrecordorder` VALUES ('91', '91', '2015-05-02 16:28:24', '2015-05-02 16:28:24', '7', '0', '新建');
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
INSERT INTO `tb_material` VALUES ('19', '2015-04-04 16:10:43', '亮丝', '2015-04-04 16:10:43', '9');
INSERT INTO `tb_material` VALUES ('20', '2015-04-07 12:22:52', '4.5s带子纱', '2015-04-07 12:22:52', '9');
INSERT INTO `tb_material` VALUES ('21', '2015-04-07 15:14:07', '豆豆纱', '2015-04-07 15:14:07', '9');
INSERT INTO `tb_material` VALUES ('22', '2015-04-07 16:48:09', '5.5s黑心马海毛', '2015-04-07 16:48:09', '9');
INSERT INTO `tb_material` VALUES ('23', '2015-04-10 16:08:23', '舒棉绒', '2015-04-10 16:08:23', '9');
INSERT INTO `tb_material` VALUES ('24', '2015-04-10 16:08:29', '摇粒绒', '2015-04-10 16:08:29', '9');
INSERT INTO `tb_material` VALUES ('25', '2015-04-16 11:32:11', '橡筋', '2015-04-16 11:32:11', '9');
INSERT INTO `tb_material` VALUES ('26', '2015-04-16 11:32:16', '大肚纱', '2015-04-16 11:32:16', '9');
INSERT INTO `tb_material` VALUES ('27', '2015-04-16 14:18:45', '毛皮（球）', '2015-04-16 14:21:47', '9');
INSERT INTO `tb_material` VALUES ('28', '2015-04-16 14:24:26', '布料', '2015-04-16 14:24:26', '9');
INSERT INTO `tb_material` VALUES ('29', '2015-04-16 14:41:22', '珠片纱', '2015-04-16 14:41:22', '9');
INSERT INTO `tb_material` VALUES ('30', '2015-04-17 19:14:06', '毛皮', '2015-04-17 19:14:06', '9');
INSERT INTO `tb_material` VALUES ('31', '2015-04-18 20:42:10', '1.15s冰岛毛', '2015-04-18 20:42:10', '9');
INSERT INTO `tb_material` VALUES ('32', '2015-04-18 20:48:05', '33.5s晴纶', '2015-04-18 20:48:05', '9');
INSERT INTO `tb_material` VALUES ('33', '2015-04-20 14:21:08', '28s仿羊绒', '2015-04-20 14:21:08', '9');
INSERT INTO `tb_material` VALUES ('34', '2015-04-29 09:36:16', '1.35s冰岛毛', '2015-04-29 09:36:16', '9');
INSERT INTO `tb_materialpurchaseorder` VALUES ('1', '2', '2015-04-02 22:21:59', '2015-04-02 22:21:59', '7', '[{\"batch_number\":\"1\",\"material\":4,\"price\":1,\"quantity\":1360,\"scale\":\"1\"},{\"batch_number\":\"1\",\"material\":8,\"price\":1,\"quantity\":3,\"scale\":\"1\"}]', '2015-04-02 00:00:00', '19', '0', '新建', '4', 'resource.fuwei.com/images/sample/1427955494579图片1.png', '4', '冰岛毛正反针挂须围巾', 'FWA30003', '190*40+2*20CM F', '285', '3', 'FWA20002', 'resource.fuwei.com/images/sample/s/1427955494579图片1.png', 'resource.fuwei.com/images/sample/ss/1427955494579图片1.png', '11', '2', '15CG0001', 'FWA30003', '3');
INSERT INTO `tb_materialpurchaseorder` VALUES ('2', '3', '2015-04-02 22:33:53', '2015-04-02 22:33:53', '7', '[{\"batch_number\":\"1\",\"material\":4,\"price\":1,\"quantity\":381,\"scale\":\"381\"},{\"batch_number\":\"1\",\"material\":8,\"price\":1,\"quantity\":3,\"scale\":\"1\"}]', '2015-04-02 00:00:00', '19', '0', '新建', '4', 'resource.fuwei.com/images/sample/1427955562784图片1.png', '4', '冰岛毛正反针吊球帽', 'FWA30004', '24CMH *20CM', '66', '4', 'FWA20003', 'resource.fuwei.com/images/sample/s/1427955562784图片1.png', 'resource.fuwei.com/images/sample/ss/1427955562784图片1.png', '11', '2', '15CG0002', 'FWA30004', '3');
INSERT INTO `tb_materialpurchaseorder` VALUES ('3', '4', '2015-04-02 22:46:02', '2015-04-02 22:46:02', '7', '[{\"batch_number\":\"1\",\"material\":4,\"price\":1,\"quantity\":56,\"scale\":\"1\"},{\"batch_number\":\"1\",\"material\":8,\"price\":1,\"quantity\":1,\"scale\":\"1\"}]', '2015-04-02 00:00:00', '19', '0', '新建', '4', 'resource.fuwei.com/images/sample/1427955633832图片1.png', '4', '冰岛正反针包套', 'FWA30005', '24CM L *10CM W ，做为S/M码', '83', '5', 'FWA20004', 'resource.fuwei.com/images/sample/s/1427955633832图片1.png', 'resource.fuwei.com/images/sample/ss/1427955633832图片1.png', '11', '2', '15CG0003', 'FWA30005', '3');
INSERT INTO `tb_materialpurchaseorder` VALUES ('4', '9', '2015-04-03 21:40:22', '2015-04-03 21:40:22', '7', '[{\"batch_number\":\"1\",\"material\":6,\"price\":1,\"quantity\":525,\"scale\":\"1\"}]', '2015-04-03 00:00:00', '19', '0', '新建', '4', 'resource.fuwei.com/images/sample/1428066399895图片1.png', '6', '冰岛毛绞花毛球帽', 'FWA30014', '21*20CM', '123', '14', 'FWA20009', 'resource.fuwei.com/images/sample/s/1428066399895图片1.png', 'resource.fuwei.com/images/sample/ss/1428066399895图片1.png', '11', '3', '15CG0004', 'FWA30014', '3');
INSERT INTO `tb_materialpurchaseorder` VALUES ('5', '9', '2015-04-03 21:41:19', '2015-04-03 21:41:19', '7', '[{\"batch_number\":\"1\",\"material\":7,\"price\":1,\"quantity\":525,\"scale\":\"1\"}]', '2015-04-03 00:00:00', '23', '0', '新建', '4', 'resource.fuwei.com/images/sample/1428066399895图片1.png', '6', '冰岛毛绞花毛球帽', 'FWA30014', '21*20CM', '123', '14', 'FWA20009', 'resource.fuwei.com/images/sample/s/1428066399895图片1.png', 'resource.fuwei.com/images/sample/ss/1428066399895图片1.png', '11', '3', '15CG0005', 'FWA30014', '3');
INSERT INTO `tb_materialpurchaseorder` VALUES ('6', '10', '2015-04-03 22:02:28', '2015-04-03 22:02:28', '7', '[{\"batch_number\":\"1\",\"material\":6,\"price\":1,\"quantity\":178,\"scale\":\"1\"}]', '2015-04-03 00:00:00', '19', '0', '新建', '4', 'resource.fuwei.com/images/sample/1428068026985图片1.png', '6', '绞花包套', 'FWA30016', '25*9cm S/M', '114', '16', 'FWA20010', 'resource.fuwei.com/images/sample/s/1428068026985图片1.png', 'resource.fuwei.com/images/sample/ss/1428068026985图片1.png', '11', '3', '15CG0006', 'FWA30016', '3');
INSERT INTO `tb_materialpurchaseorder` VALUES ('7', '13', '2015-04-03 23:52:59', '2015-04-03 23:52:59', '7', '[{\"batch_number\":\"1\",\"material\":8,\"price\":1,\"quantity\":177,\"scale\":\"1\"}]', '2015-04-03 00:00:00', '19', '0', '新建', '1', 'resource.fuwei.com/images/sample/1427993082909Adoree loop SMS 8019 carbon solid.JPG', '8', '冰岛毛羽毛纱围脖', 'FWA30010', '33*2*27', '198', '10', 'FWA20013', 'resource.fuwei.com/images/sample/s/1427993082909Adoree loop SMS 8019 carbon solid.png', 'resource.fuwei.com/images/sample/ss/1427993082909Adoree loop SMS 8019 carbon solid.png', '8', '5', '15CG0007', 'FWA30010', '2');
INSERT INTO `tb_materialpurchaseorder` VALUES ('8', '14', '2015-04-04 00:26:20', '2015-04-04 00:26:20', '7', '[{\"batch_number\":\"1\",\"material\":13,\"price\":1,\"quantity\":50,\"scale\":\"1\"}]', '2015-04-04 00:00:00', '17', '0', '新建', '7', 'resource.fuwei.com/images/sample/14280778246358CD60DF79323473B3DE0139776CD3BEA.png', '13', '仿羊绒成品染色拉毛围脖', 'FWA30021', '40H*75W', '152', '21', 'FWA20014', 'resource.fuwei.com/images/sample/s/14280778246358CD60DF79323473B3DE0139776CD3BEA.png', 'resource.fuwei.com/images/sample/ss/14280778246358CD60DF79323473B3DE0139776CD3BEA.png', '11', null, '15CG0008', 'FWA30021', '3');
INSERT INTO `tb_materialpurchaseorder` VALUES ('9', '17', '2015-04-04 16:11:35', '2015-04-04 16:11:35', '7', '[{\"material\":19,\"memo\":\"铜丝\",\"quantity\":16}]', null, '31', '0', '新建', '4', 'resource.fuwei.com/images/sample/1428129724477图片1.png', '9', '马海毛抽条加亮丝围脖', 'FWA30023', '70*2*40cm', '115', '23', 'FWA20017', 'resource.fuwei.com/images/sample/s/1428129724477图片1.png', 'resource.fuwei.com/images/sample/ss/1428129724477图片1.png', '11', '3', '15CG0009', 'FWA30023', '3');
INSERT INTO `tb_materialpurchaseorder` VALUES ('10', null, '2015-04-07 13:14:23', '2015-04-07 13:14:23', '7', '[{\"material\":20,\"memo\":\"\",\"quantity\":302}]', null, '34', '0', '新建', '1', null, null, '金属管状纱三件套', null, null, '0', null, null, null, null, '8', null, '15CG0010', 'M49771D', '2');
INSERT INTO `tb_materialpurchaseorder` VALUES ('11', null, '2015-04-07 15:28:47', '2015-04-07 15:28:47', '7', '[{\"material\":9,\"memo\":\"\",\"quantity\":898}]', null, '17', '0', '新建', '2', null, null, '马海毛混色围巾', null, null, '0', null, null, null, null, '11', null, '15CG0011', 'OB954525', '3');
INSERT INTO `tb_materialpurchaseorder` VALUES ('12', null, '2015-04-09 10:38:54', '2015-04-09 10:38:54', '7', '[{\"material\":6,\"memo\":\"送金利\",\"quantity\":500}]', null, '19', '0', '新建', '4', null, null, '冰岛毛带子纱围脖/童款帽子', null, null, '0', null, null, null, null, '11', '3', '15CG0012', 'QY15-157', '3');
INSERT INTO `tb_materialpurchaseorder` VALUES ('13', null, '2015-04-09 10:42:18', '2015-04-09 10:42:18', '7', '[{\"material\":22,\"memo\":\"送程金明厂\",\"quantity\":900}]', null, '24', '0', '新建', '2', null, null, '马海毛混色围巾', null, null, '0', null, null, null, null, '11', null, '15CG0013', 'OB954525', '3');
INSERT INTO `tb_materialpurchaseorder` VALUES ('14', null, '2015-04-10 10:05:29', '2015-04-10 10:05:29', '7', '[{\"material\":3,\"memo\":\"送金利\",\"quantity\":620}]', null, '19', '0', '新建', '3', null, null, '绞花帽子围脖', null, null, '0', null, null, null, null, '11', '3', '15CG0014', 'QY15-100/101/165', '3');
INSERT INTO `tb_materialpurchaseorder` VALUES ('15', null, '2015-04-11 17:37:12', '2015-04-11 17:37:12', '7', '[{\"material\":4,\"memo\":\"\",\"quantity\":5018},{\"material\":6,\"memo\":\"\",\"quantity\":40}]', null, '19', '0', '新建', '1', null, null, '绞花三件套', null, null, '0', null, null, null, null, '8', null, '15CG0015', '15AM-FW001', '2');
INSERT INTO `tb_materialpurchaseorder` VALUES ('16', null, '2015-04-13 17:00:27', '2015-04-13 17:00:27', '7', '[{\"material\":1,\"memo\":\"白胚送金利\",\"quantity\":1000}]', null, '17', '0', '新建', '3', null, null, '针织双层比尼帽', null, null, '0', null, null, null, null, '12', null, '15CG0016', 'Cap', '4');
INSERT INTO `tb_materialpurchaseorder` VALUES ('17', null, '2015-04-13 17:09:56', '2015-04-13 17:09:56', '7', '[{\"material\":19,\"memo\":\"QY15白灰*品质按原样\",\"quantity\":56}]', null, '24', '0', '新建', '4', null, null, '冰岛毛带子纱围脖', null, null, '0', null, null, null, null, '11', '3', '15CG0017', 'QY15-157', '3');
INSERT INTO `tb_materialpurchaseorder` VALUES ('18', null, '2015-04-13 18:28:44', '2015-04-13 18:28:44', '7', '[{\"material\":6,\"memo\":\"入库金利\",\"quantity\":3630}]', null, '19', '0', '新建', '5', null, null, '绞花毛球帽', null, null, '0', null, null, null, null, '11', null, '15CG0018', 'SLI', '3');
INSERT INTO `tb_materialpurchaseorder` VALUES ('19', null, '2015-04-13 18:38:47', '2015-04-13 18:38:47', '7', '[{\"material\":19,\"memo\":\"\",\"quantity\":3}]', null, '17', '0', '新建', '1', null, null, '帽子', null, null, '0', null, null, null, null, '8', null, '15CG0019', 'GS5N', '2');
INSERT INTO `tb_materialpurchaseorder` VALUES ('20', null, '2015-04-13 18:56:02', '2015-04-13 18:56:02', '7', '[{\"material\":6,\"memo\":\"\",\"quantity\":145}]', null, '19', '0', '新建', '1', null, null, '绞花毛条围脖', null, null, '0', null, null, null, null, '8', null, '15CG0020', '15DPFW01', '2');
INSERT INTO `tb_materialpurchaseorder` VALUES ('21', null, '2015-04-14 13:16:38', '2015-04-14 13:16:38', '7', '[{\"material\":6,\"memo\":\"入库程金明\",\"quantity\":500}]', null, '19', '0', '新建', '1', null, null, '绞花两配套', null, null, '0', null, null, null, null, '8', '1', '15CG0021', '0', '2');
INSERT INTO `tb_materialpurchaseorder` VALUES ('22', null, '2015-04-14 13:24:45', '2015-04-14 13:24:45', '7', '[{\"material\":4,\"memo\":\"入库恒达\",\"quantity\":2000}]', null, '19', '0', '新建', '4', null, null, '冰岛毛正反针三配套', null, null, '0', null, null, null, null, '11', '2', '15CG0022', '15102866', '3');
INSERT INTO `tb_materialpurchaseorder` VALUES ('23', null, '2015-04-15 15:51:50', '2015-04-15 15:51:50', '7', '[{\"material\":1,\"memo\":\"\",\"quantity\":1000}]', null, '17', '0', '新建', '6', null, null, '圆机帽', null, null, '0', null, null, null, null, '10', null, '15CG0023', 'W1201267', '1');
INSERT INTO `tb_materialpurchaseorder` VALUES ('24', null, '2015-04-15 16:03:49', '2015-04-15 16:03:49', '7', '[{\"material\":1,\"memo\":\"\",\"quantity\":8035}]', null, '17', '0', '新建', '3', null, null, '基本款帽子围脖', null, null, '0', null, null, null, null, '12', null, '15CG0024', 'LX221/MB029', '4');
INSERT INTO `tb_materialpurchaseorder` VALUES ('25', null, '2015-04-15 16:17:18', '2015-04-15 16:17:18', '7', '[{\"material\":5,\"memo\":\"\",\"quantity\":2200}]', null, '19', '0', '新建', '1', null, null, '冰岛毛反针围脖', null, null, '0', null, null, null, null, '12', null, '15CG0025', 'LW375', '4');
INSERT INTO `tb_materialpurchaseorder` VALUES ('26', null, '2015-04-16 11:13:25', '2015-04-16 11:13:25', '7', '[{\"material\":2,\"memo\":\"白胚-品质支数按原样\",\"quantity\":107}]', null, '17', '0', '新建', '3', null, null, '女款针织帽子围巾', null, null, '0', null, null, null, null, '11', null, '15CG0026', 'G8008S/G8088H', '3');
INSERT INTO `tb_materialpurchaseorder` VALUES ('27', null, '2015-04-16 14:32:00', '2015-04-16 14:32:00', '7', '[{\"material\":24,\"memo\":\"黑色\",\"quantity\":590},{\"material\":24,\"memo\":\"白色\",\"quantity\":232}]', null, '36', '0', '新建', '4', null, null, '包套', null, null, '0', null, null, null, null, '11', null, '15CG0027', 'FWA30009/05/016', '3');
INSERT INTO `tb_materialpurchaseorder` VALUES ('28', null, '2015-04-17 14:10:21', '2015-04-17 14:10:21', '7', '[{\"material\":4,\"memo\":\"入库垣达\",\"quantity\":9}]', null, '19', '0', '新建', '1', null, null, '夹档围脖', null, null, '0', null, null, null, null, '8', null, '15CG0028', '99BKJ514', '2');
INSERT INTO `tb_materialpurchaseorder` VALUES ('29', null, '2015-04-17 14:12:50', '2015-04-17 14:12:50', '7', '[{\"material\":1,\"memo\":\"筒纱白胚\",\"quantity\":3}]', null, '17', '0', '新建', '3', null, null, '吊:杂两件套', null, null, '0', null, null, null, null, '12', null, '15CG0029', '0', '4');
INSERT INTO `tb_materialpurchaseorder` VALUES ('30', null, '2015-04-17 14:26:50', '2015-04-18 20:12:32', '7', '[{\"material\":3,\"memo\":\"30/70毛晴冰岛毛  数量不够取消 用南源纱线\",\"quantity\":310}]', null, '19', '0', '新建', '2', null, null, '印五角星围脖', null, null, '0', null, null, null, null, '11', null, '15CG0030', 'EY15-43', '3');
INSERT INTO `tb_materialpurchaseorder` VALUES ('31', null, '2015-04-17 14:29:26', '2015-04-17 14:29:26', '7', '[{\"material\":3,\"memo\":\"入库云珍\",\"quantity\":157}]', null, '19', '0', '新建', '3', null, null, '女款针织帽子', null, null, '0', null, null, null, null, '11', null, '15CG0031', 'G8088H', '3');
INSERT INTO `tb_materialpurchaseorder` VALUES ('32', null, '2015-04-17 14:44:29', '2015-04-17 14:44:29', '7', '[{\"material\":12,\"memo\":\"32支膨体30/70毛晴\",\"quantity\":8}]', null, '19', '0', '新建', '3', null, null, '披肩', null, null, '0', null, null, null, null, '11', null, '15CG0032', '0', '3');
INSERT INTO `tb_materialpurchaseorder` VALUES ('33', null, '2015-04-18 12:45:49', '2015-04-18 12:45:49', '7', '[{\"material\":6,\"memo\":\"送金利\",\"quantity\":500}]', null, '19', '0', '新建', '4', null, null, '冰岛毛带子纱围脖', null, null, '0', null, null, null, null, '11', '3', '15CG0033', 'QY15-157', '3');
INSERT INTO `tb_materialpurchaseorder` VALUES ('34', null, '2015-04-18 12:59:54', '2015-04-18 22:10:07', '7', '[{\"material\":3,\"memo\":\"送金利 37毛晴\",\"quantity\":310}]', null, '25', '0', '新建', '2', null, null, '印五角星围脖', null, null, '0', null, null, null, null, '11', null, '15CG0034', 'EY15-43', '3');
INSERT INTO `tb_materialpurchaseorder` VALUES ('35', null, '2015-04-19 09:43:45', '2015-04-19 09:43:45', '7', '[{\"factoryId\":13,\"material\":4,\"memo\":\"\",\"quantity\":1007}]', null, '19', '0', '新建', '1', null, null, '冰岛毛正反针围脖', null, null, '0', null, null, null, null, '10', null, '15CG0035', '90084501', '1');
INSERT INTO `tb_materialpurchaseorder` VALUES ('36', null, '2015-04-19 10:38:00', '2015-04-19 10:38:00', '7', '[{\"factoryId\":12,\"material\":6,\"memo\":\"\",\"quantity\":710}]', null, '19', '0', '新建', '1', null, null, '冰岛毛亮丝两件套', null, null, '0', null, null, null, null, '10', null, '15CG0036', '90084601', '1');
INSERT INTO `tb_materialpurchaseorder` VALUES ('37', null, '2015-04-20 17:13:59', '2015-04-20 17:13:59', '7', '[{\"factoryId\":16,\"material\":13,\"memo\":\"白胚筒纱\",\"quantity\":10}]', null, '17', '0', '新建', '1', null, null, '成品染色经遍披肩两件套', null, null, '0', null, null, null, null, '10', null, '15CG0037', 'ICY-PONCHO', '1');
INSERT INTO `tb_materialpurchaseorder` VALUES ('38', null, '2015-04-22 08:40:00', '2015-04-22 08:40:00', '7', '[{\"factoryId\":12,\"material\":13,\"memo\":\"大货批号\",\"quantity\":6}]', null, '17', '0', '新建', '1', null, null, '亮丝围脖', null, null, '0', null, null, null, null, '8', null, '15CG0038', 'D5-1', '2');
INSERT INTO `tb_materialpurchaseorder` VALUES ('39', null, '2015-04-22 10:18:00', '2015-04-22 10:18:00', '7', '[{\"factoryId\":29,\"material\":13,\"memo\":\"白胚筒纱（同上次大货批号）\",\"quantity\":37}]', null, '17', '0', '新建', '7', null, null, '成品染色拉毛围脖', null, null, '0', null, null, null, null, '11', null, '15CG0039', 'HR140913L', '3');
INSERT INTO `tb_materialpurchaseorder` VALUES ('40', null, '2015-04-22 15:39:40', '2015-04-22 15:39:40', '7', '[{\"material\":24,\"memo\":\"粉色\",\"quantity\":620}]', null, '36', '0', '新建', '1', null, null, '马海毛珠片纱三配套', null, null, '0', null, null, null, null, '10', null, '15CG0040', '143612', '1');
INSERT INTO `tb_materialpurchaseorder` VALUES ('41', null, '2015-04-22 17:29:48', '2015-04-22 17:29:48', '7', '[{\"factoryId\":13,\"material\":20,\"memo\":\"\",\"quantity\":840}]', null, '34', '0', '新建', '1', null, null, '金属管状纱四件套', null, null, '0', null, null, null, null, '8', null, '15CG0041', '15NY-14/13/03', '2');
INSERT INTO `tb_materialpurchaseorder` VALUES ('42', null, '2015-04-23 09:19:54', '2015-04-23 09:19:54', '7', '[{\"factoryId\":13,\"material\":2,\"memo\":\"\",\"quantity\":3}]', null, '19', '0', '新建', '6', null, null, ' 段染套装', null, null, '0', null, null, null, null, '10', null, '15CG0042', '0', '1');
INSERT INTO `tb_materialpurchaseorder` VALUES ('43', null, '2015-04-26 14:12:51', '2015-04-26 14:12:51', '7', '[{\"factoryId\":12,\"material\":11,\"memo\":\"\",\"quantity\":1400}]', null, '17', '0', '新建', '1', null, null, '全晴经编披肩', null, null, '0', null, null, null, null, '10', null, '15CG0043', 'NLSSY/PONCHO', '1');
INSERT INTO `tb_materialpurchaseorder` VALUES ('44', null, '2015-04-28 13:13:39', '2015-04-28 13:13:39', '7', '[{\"factoryId\":13,\"material\":20,\"memo\":\"\",\"quantity\":43}]', null, '34', '0', '新建', '2', null, null, '马海毛带子纱头带', null, null, '0', null, null, null, null, '11', null, '15CG0044', 'EY15-062', '3');
INSERT INTO `tb_materialpurchaseorder` VALUES ('45', null, '2015-04-28 13:20:08', '2015-04-28 13:20:08', '7', '[{\"factoryId\":12,\"material\":3,\"memo\":\"\",\"quantity\":9}]', null, '19', '0', '新建', '1', null, null, '  针织多色围脖', null, null, '0', null, null, null, null, '8', null, '15CG0045', '99BKJ 514', '2');
INSERT INTO `tb_materialpurchaseorder` VALUES ('46', null, '2015-04-30 13:21:48', '2015-04-30 13:21:48', '7', '[{\"factoryId\":16,\"material\":13,\"memo\":\"\",\"quantity\":125}]', null, '17', '0', '新建', '4', null, null, '经编拉毛围巾', null, null, '0', null, null, null, null, '11', null, '15CG0046', '0', '3');
INSERT INTO `tb_materialpurchaseorder` VALUES ('47', null, '2015-04-30 13:54:51', '2015-04-30 13:54:51', '7', '[{\"factoryId\":13,\"material\":6,\"memo\":\"\",\"quantity\":1000}]', null, '17', '0', '新建', '3', null, null, '冰岛毛带子纱毛子围脖', null, null, '0', null, null, null, null, '12', null, '15CG0047', 'G9428T/G9428H', '4');
INSERT INTO `tb_materialpurchaseorder` VALUES ('48', null, '2015-04-30 14:03:08', '2015-04-30 14:03:08', '7', '[{\"factoryId\":12,\"material\":4,\"memo\":\"\",\"quantity\":500},{\"factoryId\":12,\"material\":6,\"memo\":\"\",\"quantity\":1355}]', null, '19', '0', '新建', '3', null, null, '冰岛毛五件套', null, null, '0', null, null, null, null, '12', null, '15CG0048', 'BADU', '4');
INSERT INTO `tb_materialpurchaseorder` VALUES ('49', null, '2015-04-30 14:21:36', '2015-04-30 14:21:36', '7', '[{\"factoryId\":3,\"material\":20,\"memo\":\"\",\"quantity\":70}]', null, '24', '0', '新建', '3', null, null, '冰岛毛带子纱帽子围脖', null, null, '0', null, null, null, null, '12', null, '15CG0049', 'G9428T/G9428H', '4');
INSERT INTO `tb_message` VALUES ('1', '7', '9', 'order/tablelist?orderId=21&tab=producingorder', '请求划价', '订单 FWA20021 的<strong> 生产单 <strong> <strong>请求划价<strong>，点击打开链接', '2015-04-06 14:27:09', '');
INSERT INTO `tb_message` VALUES ('2', '7', '9', 'order/tablelist?orderId=21&tab=producingorder', '请求划价', '订单 FWA20021 的<strong> 生产单 <strong> <strong>请求划价<strong>，点击打开链接', '2015-04-07 11:23:16', '');
INSERT INTO `tb_message` VALUES ('3', '9', '7', 'order/tablelist?orderId=21&tab=producingorder', '完成划价', '订单 FWA20021 的<strong> 生产单 <strong> <strong>已完成划价<strong>，点击打开链接', '2015-04-07 12:28:33', '');
INSERT INTO `tb_message` VALUES ('4', '7', '9', 'order/tablelist?orderId=22&tab=producingorder', '请求划价', '订单 FWA20022 的<strong> 生产单 <strong> <strong>请求划价<strong>，点击打开链接', '2015-04-07 17:21:21', '');
INSERT INTO `tb_message` VALUES ('5', '7', '9', 'order/tablelist?orderId=23&tab=producingorder', '请求划价', '订单 FWA20023 的<strong> 生产单 <strong> <strong>请求划价<strong>，点击打开链接', '2015-04-08 07:59:24', '');
INSERT INTO `tb_message` VALUES ('6', '7', '9', 'order/tablelist?orderId=24&tab=producingorder', '请求划价', '订单 FWA20024 的<strong> 生产单 <strong> <strong>请求划价<strong>，点击打开链接', '2015-04-08 08:06:08', '');
INSERT INTO `tb_message` VALUES ('7', '7', '9', 'order/tablelist?orderId=24&tab=producingorder', '请求划价', '订单 FWA20024 的<strong> 生产单 <strong> <strong>请求划价<strong>，点击打开链接', '2015-04-08 08:52:13', '');
INSERT INTO `tb_message` VALUES ('8', '7', '9', 'order/tablelist?orderId=24&tab=producingorder', '请求划价', '订单 FWA20024 的<strong> 生产单 <strong> <strong>请求划价<strong>，点击打开链接', '2015-04-08 08:53:55', '');
INSERT INTO `tb_message` VALUES ('9', '7', '9', 'order/tablelist?orderId=23&tab=producingorder', '请求划价', '订单 FWA20023 的<strong> 生产单 <strong> <strong>请求划价<strong>，点击打开链接', '2015-04-08 08:56:44', '');
INSERT INTO `tb_message` VALUES ('10', '7', '9', 'order/tablelist?orderId=25&tab=producingorder', '请求划价', '订单 FWA20025 的<strong> 生产单 <strong> <strong>请求划价<strong>，点击打开链接', '2015-04-08 09:20:39', '');
INSERT INTO `tb_message` VALUES ('11', '7', '9', 'order/tablelist?orderId=26&tab=producingorder', '请求划价', '订单 FWA20026 的<strong> 生产单 <strong> <strong>请求划价<strong>，点击打开链接', '2015-04-08 09:30:36', '');
INSERT INTO `tb_message` VALUES ('12', '7', '9', 'order/tablelist?orderId=27&tab=producingorder', '请求划价', '订单 FWA20027 的<strong> 生产单 <strong> <strong>请求划价<strong>，点击打开链接', '2015-04-08 10:05:51', '');
INSERT INTO `tb_message` VALUES ('13', '7', '9', 'order/tablelist?orderId=18&tab=producingorder', '请求划价', '订单 FWA20018 的<strong> 生产单 <strong> <strong>请求划价<strong>，点击打开链接', '2015-04-08 13:12:56', '');
INSERT INTO `tb_message` VALUES ('14', '7', '9', 'order/tablelist?orderId=28&tab=producingorder', '请求划价', '订单 FWA20028 的<strong> 生产单 <strong> <strong>请求划价<strong>，点击打开链接', '2015-04-08 15:01:36', '');
INSERT INTO `tb_message` VALUES ('15', '7', '9', 'order/tablelist?orderId=29&tab=producingorder', '请求划价', '订单 FWA20029 的<strong> 生产单 <strong> <strong>请求划价<strong>，点击打开链接', '2015-04-08 15:55:36', '');
INSERT INTO `tb_message` VALUES ('16', '9', '7', 'order/tablelist?orderId=29&tab=producingorder', '完成划价', '订单 FWA20029 的<strong> 生产单 <strong> <strong>已完成划价<strong>，点击打开链接', '2015-04-08 16:14:25', '');
INSERT INTO `tb_message` VALUES ('17', '9', '7', 'order/tablelist?orderId=28&tab=producingorder', '完成划价', '订单 FWA20028 的<strong> 生产单 <strong> <strong>已完成划价<strong>，点击打开链接', '2015-04-08 16:14:39', '');
INSERT INTO `tb_message` VALUES ('18', '9', '7', 'order/tablelist?orderId=26&tab=producingorder', '完成划价', '订单 FWA20026 的<strong> 生产单 <strong> <strong>已完成划价<strong>，点击打开链接', '2015-04-08 16:14:59', '');
INSERT INTO `tb_message` VALUES ('19', '9', '7', 'order/tablelist?orderId=23&tab=producingorder', '完成划价', '订单 FWA20023 的<strong> 生产单 <strong> <strong>已完成划价<strong>，点击打开链接', '2015-04-08 16:15:20', '');
INSERT INTO `tb_message` VALUES ('20', '9', '7', 'order/tablelist?orderId=24&tab=producingorder', '完成划价', '订单 FWA20024 的<strong> 生产单 <strong> <strong>已完成划价<strong>，点击打开链接', '2015-04-08 16:15:33', '');
INSERT INTO `tb_message` VALUES ('21', '9', '7', 'order/tablelist?orderId=24&tab=producingorder', '完成划价', '订单 FWA20024 的<strong> 生产单 <strong> <strong>已完成划价<strong>，点击打开链接', '2015-04-08 16:15:39', '');
INSERT INTO `tb_message` VALUES ('22', '9', '7', 'order/tablelist?orderId=24&tab=producingorder', '完成划价', '订单 FWA20024 的<strong> 生产单 <strong> <strong>已完成划价<strong>，点击打开链接', '2015-04-08 16:15:52', '');
INSERT INTO `tb_message` VALUES ('23', '9', '7', 'order/tablelist?orderId=24&tab=producingorder', '完成划价', '订单 FWA20024 的<strong> 生产单 <strong> <strong>已完成划价<strong>，点击打开链接', '2015-04-08 16:16:06', '');
INSERT INTO `tb_message` VALUES ('24', '9', '7', 'order/tablelist?orderId=23&tab=producingorder', '完成划价', '订单 FWA20023 的<strong> 生产单 <strong> <strong>已完成划价<strong>，点击打开链接', '2015-04-08 16:16:25', '');
INSERT INTO `tb_message` VALUES ('25', '9', '7', 'order/tablelist?orderId=23&tab=producingorder', '完成划价', '订单 FWA20023 的<strong> 生产单 <strong> <strong>已完成划价<strong>，点击打开链接', '2015-04-08 16:16:31', '');
INSERT INTO `tb_message` VALUES ('26', '7', '9', 'order/tablelist?orderId=31&tab=producingorder', '请求划价', '订单 FWA20031 的<strong> 生产单 <strong> <strong>请求划价<strong>，点击打开链接', '2015-04-10 17:08:37', '');
INSERT INTO `tb_message` VALUES ('27', '7', '9', 'order/tablelist?orderId=32&tab=producingorder', '请求划价', '订单 FWA20032 的<strong> 生产单 <strong> <strong>请求划价<strong>，点击打开链接', '2015-04-10 17:41:34', '');
INSERT INTO `tb_message` VALUES ('28', '7', '9', 'order/tablelist?orderId=32&tab=producingorder', '请求划价', '订单 FWA20032 的<strong> 生产单 <strong> <strong>请求划价<strong>，点击打开链接', '2015-04-10 17:44:49', '');
INSERT INTO `tb_message` VALUES ('29', '7', '9', 'order/tablelist?orderId=33&tab=producingorder', '请求划价', '订单 FWA20033 的<strong> 生产单 <strong> <strong>请求划价<strong>，点击打开链接', '2015-04-10 17:57:27', '');
INSERT INTO `tb_message` VALUES ('30', '9', '7', 'order/tablelist?orderId=32&tab=producingorder', '完成划价', '订单 FWA20032 的<strong> 生产单 <strong> <strong>已完成划价<strong>，点击打开链接', '2015-04-13 19:06:46', '');
INSERT INTO `tb_message` VALUES ('31', '9', '7', 'order/tablelist?orderId=32&tab=producingorder', '完成划价', '订单 FWA20032 的<strong> 生产单 <strong> <strong>已完成划价<strong>，点击打开链接', '2015-04-13 19:07:59', '');
INSERT INTO `tb_message` VALUES ('32', '9', '7', 'order/tablelist?orderId=31&tab=producingorder', '完成划价', '订单 FWA20031 的<strong> 生产单 <strong> <strong>已完成划价<strong>，点击打开链接', '2015-04-13 19:08:48', '');
INSERT INTO `tb_message` VALUES ('33', '9', '7', 'order/tablelist?orderId=31&tab=producingorder', '完成划价', '订单 FWA20031 的<strong> 生产单 <strong> <strong>已完成划价<strong>，点击打开链接', '2015-04-13 19:09:21', '');
INSERT INTO `tb_message` VALUES ('34', '9', '7', 'order/tablelist?orderId=31&tab=producingorder', '完成划价', '订单 FWA20031 的<strong> 生产单 <strong> <strong>已完成划价<strong>，点击打开链接', '2015-04-13 19:10:08', '');
INSERT INTO `tb_order` VALUES ('1', '2015-03-31 21:48:39', '2015-03-31 21:48:39', '7', '1', '25830', '1', '待发货', '', '全晴格子披肩(471.0克)', '2015-03-09 00:00:00', '2015-04-20 00:00:00', null, 'FWA20001', '1', null, null, '33.441', '471*1.12*12*32÷ 1000=202.568+15=217.568\r\n8.229\r\n机织:66.000\r\n锁口:18.000\r\n套口:9.600\r\n挂须:20.400\r\n整烫:16.800\r\n费用+后道:18.000\r\n____________________________\r\n148.8+8.229\r\n=157.029*1.17\r\n=183.724+217.568\r\n=401.292÷12\r\n=33.441*1.17\r\n=39.126\r\n', 'resource.fuwei.com/images/sample/1427808371841QQ图片20150331211900.jpg', '1', '全晴格子披肩', 'FWA30001', '126*126 + 10*2', '471', '8', '1', '0', null, 'resource.fuwei.com/images/sample/s/1427808371841QQ图片20150331211900.png', 'resource.fuwei.com/images/sample/ss/1427808371841QQ图片20150331211900.png', '615', '[{\"color\":\"黑白色组\",\"id\":1,\"price\":42,\"quantity\":615,\"size\":\"126*126+10*2\",\"weight\":471,\"produce_weight\":471,\"yarn\":1}]', '', '1', 'FWA30001', '2');
INSERT INTO `tb_order` VALUES ('2', '2015-04-02 22:09:02', '2015-04-02 22:13:01', '7', '29', '47062.5', '1', '待发货', '', '冰岛毛正反针挂须围巾(285.0克)', '2015-02-27 00:00:00', '2015-07-30 00:00:00', null, 'FWA20002', '4', null, null, '0', '385*1.12*12*31÷ 1000=160.406+12=172.406\r\n6.727\r\n机织:36.000\r\n套口:6.000\r\n挂须:6.600\r\n机织:17.000\r\n____________________________\r\n65.6+6.727\r\n=72.327*1.17\r\n=84.623+172.406\r\n=257.029÷12\r\n=21.419*1.17\r\n=25.06\r\n', 'resource.fuwei.com/images/sample/1427955494579图片1.png', '4', '冰岛毛正反针挂须围巾', 'FWA30003', '190*40+2*20CM F', '285', '11', '3', '0', null, 'resource.fuwei.com/images/sample/s/1427955494579图片1.png', 'resource.fuwei.com/images/sample/ss/1427955494579图片1.png', '3750', '[{\"color\":\"米色\",\"id\":1,\"price\":25.1,\"quantity\":1875,\"size\":\"190*40+2*20cm\",\"weight\":385,\"produce_weight\":385,\"yarn\":4},{\"color\":\"藏青\",\"id\":2,\"price\":25.1,\"quantity\":1875,\"size\":\"190*40+2*20cm\",\"weight\":385,\"produce_weight\":385,\"yarn\":4}]', '', '2', 'FWA30003', '3');
INSERT INTO `tb_order` VALUES ('3', '2015-04-02 22:32:58', '2015-04-02 22:32:58', '7', '29', '36320', '1', '待发货', '', '冰岛毛正反针吊球帽(66.0克)', '2015-02-27 00:00:00', '2015-07-30 00:00:00', null, 'FWA20003', '4', null, null, '6.391', '66*1.12*12*31÷ 1000=27.498+9=36.498\r\n1.153\r\n机织:12.000\r\n套抽:6.000\r\n吊球:1.800\r\n整烫:3.000\r\n费用+后道:10.400\r\n____________________________\r\n33.2+1.153\r\n=34.353*1.17\r\n=40.193+36.498\r\n=76.691÷12\r\n=6.391*1.2\r\n=7.669\r\n', 'resource.fuwei.com/images/sample/1427955562784图片1.png', '4', '冰岛毛正反针吊球帽', 'FWA30004', '24CMH *20CM', '66', '11', '4', '0', null, 'resource.fuwei.com/images/sample/s/1427955562784图片1.png', 'resource.fuwei.com/images/sample/ss/1427955562784图片1.png', '4540', '[{\"color\":\"米色\",\"id\":1,\"price\":8,\"quantity\":2270,\"size\":\"24H*20W\",\"weight\":66,\"produce_weight\":66,\"yarn\":4},{\"color\":\"藏青\",\"id\":2,\"price\":8,\"quantity\":2270,\"size\":\"24H*20W\",\"weight\":66,\"produce_weight\":66,\"yarn\":4}]', '', '2', 'FWA30004', '3');
INSERT INTO `tb_order` VALUES ('4', '2015-04-02 22:44:59', '2015-04-02 22:44:59', '7', '29', '8580', '1', '待发货', '', '冰岛正反针包套(83.0克)', '2015-02-27 00:00:00', '2015-07-30 00:00:00', null, 'FWA20004', '4', null, null, '9.53', '83*1.1*12*31÷ 1000=33.964+9=42.964\r\n1.424\r\n机织:12.000\r\n套口:4.800\r\n抽顶:4.800\r\n接指:10.000\r\n衬里:15.000\r\n费用+后道:13.000\r\n____________________________\r\n59.6+1.424\r\n=61.024*1.17\r\n=71.398+42.964\r\n=114.362÷12\r\n=9.53*1.2\r\n=11.436\r\n', 'resource.fuwei.com/images/sample/1427955633832图片1.png', '4', '冰岛正反针包套', 'FWA30005', '24CM L *10CM W ，做为S/M码', '83', '11', '5', '0', null, 'resource.fuwei.com/images/sample/s/1427955633832图片1.png', 'resource.fuwei.com/images/sample/ss/1427955633832图片1.png', '780', '[{\"color\":\"米色\",\"id\":1,\"price\":11,\"quantity\":195,\"size\":\"S/M\",\"weight\":83,\"produce_weight\":83,\"yarn\":4},{\"color\":\"米色\",\"id\":2,\"price\":11,\"quantity\":195,\"size\":\"M/L\",\"weight\":83,\"produce_weight\":83,\"yarn\":4},{\"color\":\"藏青\",\"id\":3,\"price\":11,\"quantity\":195,\"size\":\"S/M\",\"weight\":83,\"produce_weight\":83,\"yarn\":4},{\"color\":\"藏青\",\"id\":4,\"price\":11,\"quantity\":195,\"size\":\"M/L\",\"weight\":83,\"produce_weight\":83,\"yarn\":4}]', '', '2', 'FWA30005', '3');
INSERT INTO `tb_order` VALUES ('5', '2015-04-03 01:12:31', '2015-04-03 01:12:31', '7', '29', '81810', '1', '待发货', '', '马海毛挂须三角巾(247.0克)', '2015-03-16 00:00:00', '2015-06-30 00:00:00', null, 'FWA20005', '4', null, null, '0', '247*1.15*12*42÷ 1000=143.161+12=155.161\r\n4.431\r\n机织:36.000\r\n拷边:9.600\r\n挂须:28.800\r\n整烫:8.400\r\n费用+后道:12.000\r\n____________________________\r\n94.8+4.431\r\n=99.231*1.17\r\n=116.1+155.161\r\n=271.261÷12\r\n=22.605*1.2\r\n=27.126\r\n', 'resource.fuwei.com/images/sample/1427992528634图片1.png', '9', '马海毛挂须三角巾', 'FWA30007', '155*85+15cmf', '247', '11', '7', '0', null, 'resource.fuwei.com/images/sample/s/1427992528634图片1.png', 'resource.fuwei.com/images/sample/ss/1427992528634图片1.png', '3030', '[{\"color\":\"黑色\",\"id\":1,\"price\":27,\"quantity\":1515,\"size\":\"155*85+15cm\",\"weight\":247,\"produce_weight\":247,\"yarn\":9},{\"color\":\"深夹花灰\",\"id\":2,\"price\":27,\"quantity\":1515,\"size\":\"155*85+15cmf\",\"weight\":247,\"produce_weight\":247,\"yarn\":9}]', '', '2', 'FWA30007', '3');
INSERT INTO `tb_order` VALUES ('6', '2015-04-03 09:52:51', '2015-04-03 09:52:51', '7', '27', '7200', '1', '待发货', '', '人造丝窄围巾(160.0克)', '2015-01-04 00:00:00', '2015-04-15 00:00:00', null, 'FWA20006', '1', null, null, '13.407', '160*1.15*12*35÷ 1000=77.28+12=89.28\r\n\r\n机织:36.000\r\n拷边:4.800\r\n整烫:9.600\r\n费用+后道:10.800\r\n____________________________\r\n61.2+0\r\n=61.2*1.17\r\n=71.604+89.28\r\n=160.884÷12\r\n=13.407*1.2\r\n=16.088\r\n', 'resource.fuwei.com/images/sample/1427992291553图片1.jpg', '15', '人造丝窄围巾', 'FWA30006', '12*300', '160', '8', '6', '0', null, 'resource.fuwei.com/images/sample/s/1427992291553图片1.png', 'resource.fuwei.com/images/sample/ss/1427992291553图片1.png', '375', '[{\"color\":\"多色\",\"id\":1,\"price\":19.2,\"quantity\":375,\"size\":\"12*300cm\",\"weight\":160,\"produce_weight\":160,\"yarn\":15}]', '', '4', 'FWA30006', '2');
INSERT INTO `tb_order` VALUES ('7', '2015-04-03 15:04:20', '2015-04-03 15:04:20', '7', '29', '99876', '1', '待发货', '', '马海毛毛球帽(85.0克)', '2015-03-13 00:00:00', '2015-06-30 00:00:00', null, 'FWA20007', '4', null, null, '9.729', '78*1.1*12*42÷ 1000=43.243+9=52.243\r\n1.338\r\n机织:14.400\r\n套抽:6.000\r\n球:18.000\r\n吊球:2.000\r\n整烫:3.000\r\n费用+后道:10.400\r\n____________________________\r\n53.8+1.338\r\n=55.138*1.17\r\n=64.511+52.243\r\n=116.754÷12\r\n=9.729*1.2\r\n=11.675\r\n', 'resource.fuwei.com/images/sample/1427992746746图片1.png', '9', '马海毛毛球帽', 'FWA30008', '22*22', '85', '11', '8', '0', null, 'resource.fuwei.com/images/sample/s/1427992746746图片1.png', 'resource.fuwei.com/images/sample/ss/1427992746746图片1.png', '8610', '[{\"color\":\"深夹花灰\",\"id\":1,\"price\":11.6,\"quantity\":8530,\"size\":\"22H*22W\",\"weight\":85,\"produce_weight\":85,\"yarn\":9},{\"color\":\"黑色\",\"id\":2,\"price\":11.6,\"quantity\":80,\"size\":\"22H*22W\",\"weight\":85,\"produce_weight\":85,\"yarn\":9}]', '', '3', 'FWA30008', '3');
INSERT INTO `tb_order` VALUES ('8', '2015-04-03 15:22:38', '2015-04-03 15:22:38', '7', '29', '42240', '1', '待发货', '', '马海毛包套(80.0克)', '2015-03-13 00:00:00', '2015-06-30 00:00:00', null, 'FWA20008', '4', null, null, '10.625', '80*1.1*12*42÷ 1000=44.352+9=53.352\r\n1.373\r\n机织:14.400\r\n套口:4.800\r\n抽顶:4.800\r\n衬里:15.000\r\n接指:10.000\r\n整烫:5.000\r\n费用+后道:8.000\r\n____________________________\r\n62+1.373\r\n=63.373*1.17\r\n=74.146+53.352\r\n=127.498÷12\r\n=10.625*1.2\r\n=12.75\r\n', 'resource.fuwei.com/images/sample/1427992902609图片1.png', '9', '马海毛包套', 'FWA30009', 'S/M', '80', '11', '9', '0', null, 'resource.fuwei.com/images/sample/s/1427992902609图片1.png', 'resource.fuwei.com/images/sample/ss/1427992902609图片1.png', '3200', '[{\"color\":\"黑色\",\"id\":1,\"price\":13.2,\"quantity\":1650,\"size\":\"S/M\",\"weight\":80,\"produce_weight\":80,\"yarn\":9},{\"color\":\"深夹花灰\",\"id\":2,\"price\":13.2,\"quantity\":1550,\"size\":\"S/M\",\"weight\":80,\"produce_weight\":80,\"yarn\":9}]', '', '3', 'FWA30009', '3');
INSERT INTO `tb_order` VALUES ('9', '2015-04-03 21:39:34', '2015-04-03 21:39:34', '7', '29', '118551', '1', '待发货', '', '冰岛毛绞花毛球帽(123.0克)', '2015-03-10 00:00:00', '2015-07-20 00:00:00', null, 'FWA20009', '4', null, null, '10.165', '110*1.1*12*31÷ 1000=45.012+9=54.012\r\n1.888\r\n机织:14.400\r\n套抽:6.000\r\n吊球:2.000\r\n球:20.400\r\n整烫:3.000\r\n费用+后道:10.400\r\n____________________________\r\n56.2+1.888\r\n=58.088*1.17\r\n=67.963+54.012\r\n=121.975÷12\r\n=10.165*1.2\r\n=12.198\r\n', 'resource.fuwei.com/images/sample/1428066399895图片1.png', '6', '冰岛毛绞花毛球帽', 'FWA30014', '21*20CM', '123', '11', '14', '0', null, 'resource.fuwei.com/images/sample/s/1428066399895图片1.png', 'resource.fuwei.com/images/sample/ss/1428066399895图片1.png', '9190', '[{\"color\":\"深夹花灰\",\"id\":1,\"price\":13.2,\"quantity\":4595,\"size\":\"21H*20W\",\"weight\":123,\"produce_weight\":123,\"yarn\":7},{\"color\":\"白色\",\"id\":2,\"price\":12.6,\"quantity\":4595,\"size\":\"21H*20W\",\"weight\":123,\"produce_weight\":123,\"yarn\":6}]', '', '3', 'FWA30014', '3');
INSERT INTO `tb_order` VALUES ('10', '2015-04-03 22:01:02', '2015-04-03 22:01:02', '7', '29', '45591', '1', '待发货', '', '绞花包套(114.0克)', '2015-03-10 00:00:00', '2015-07-20 00:00:00', null, 'FWA20010', '4', null, null, '10.372', '100*1.1*12*31÷ 1000=40.92+9=49.92\r\n1.716\r\n机织:14.400\r\n套口:4.800\r\n抽顶:4.800\r\n接指:10.000\r\n衬里:15.000\r\n整烫:5.000\r\n费用+后道:8.000\r\n____________________________\r\n62+1.716\r\n=63.716*1.17\r\n=74.548+49.92\r\n=124.468÷12\r\n=10.372*1.2\r\n=12.446\r\n', 'resource.fuwei.com/images/sample/1428068026985图片1.png', '6', '绞花包套', 'FWA30016', '25*9cm S/M', '114', '11', '16', '0', null, 'resource.fuwei.com/images/sample/s/1428068026985图片1.png', 'resource.fuwei.com/images/sample/ss/1428068026985图片1.png', '3340', '[{\"color\":\"QY米色\",\"id\":1,\"price\":13.3,\"quantity\":1670,\"size\":\"S/M 25*9cm\",\"weight\":114,\"produce_weight\":114,\"yarn\":6},{\"color\":\"深夹花灰\",\"id\":2,\"price\":14,\"quantity\":1670,\"size\":\"25*9cm S/M\",\"weight\":114,\"produce_weight\":114,\"yarn\":7}]', '', '3', 'FWA30016', '3');
INSERT INTO `tb_order` VALUES ('11', '2015-04-03 22:08:13', '2015-04-03 22:08:13', '7', '29', '133975', '1', '待发货', '', '绞花吊球围巾(338.0克)', '2015-03-10 00:00:00', '2015-07-30 00:00:00', null, 'FWA20011', '4', null, null, '22.444', '310*1.1*12*31÷ 1000=126.852+12=138.852\r\n5.32\r\n机织:38.400\r\n锁口:6.000\r\n球:40.800\r\n吊球:4.000\r\n整烫:5.000\r\n费用+后道:12.000\r\n____________________________\r\n106.2+5.32\r\n=111.52*1.17\r\n=130.478+138.852\r\n=269.33÷12\r\n=22.444*1.17\r\n=26.259\r\n', 'resource.fuwei.com/images/sample/1428067891295图片1.png', '6', '绞花吊球围巾', 'FWA30015', '180*20cm', '338', '11', '15', '0', null, 'resource.fuwei.com/images/sample/s/1428067891295图片1.png', 'resource.fuwei.com/images/sample/ss/1428067891295图片1.png', '4660', '[{\"color\":\"米色\",\"id\":1,\"price\":28,\"quantity\":2330,\"size\":\"180*20cm\",\"weight\":338,\"produce_weight\":338,\"yarn\":6},{\"color\":\"深夹花灰\",\"id\":2,\"price\":29.5,\"quantity\":2330,\"size\":\"180*20cm\",\"weight\":338,\"produce_weight\":338,\"yarn\":7}]', '', '3', 'FWA30015', '3');
INSERT INTO `tb_order` VALUES ('12', '2015-04-03 23:16:47', '2015-04-03 23:16:47', '7', '29', '23349.5', '1', '待发货', '', '抽条翻边帽(63.0克)', '2015-03-10 00:00:00', '2015-06-20 00:00:00', null, 'FWA20012', '4', null, null, '5.412', '65*1.2*12*31÷ 1000=29.016+9=38.016\r\n1.217\r\n机织:3.600\r\n拷边:4.800\r\n整烫:3.000\r\n费用+后道:10.400\r\n____________________________\r\n21.8+1.217\r\n=23.017*1.17\r\n=26.93+38.016\r\n=64.946÷12\r\n=5.412*1.2\r\n=6.494\r\n', 'resource.fuwei.com/images/sample/1428073896025图片1.png', '1', '抽条翻边帽', 'FWA30018', '21H*20W', '63', '11', '18', '0', null, 'resource.fuwei.com/images/sample/s/1428073896025图片1.png', 'resource.fuwei.com/images/sample/ss/1428073896025图片1.png', '3100', '[{\"color\":\"黑色\",\"id\":1,\"price\":7.4,\"quantity\":1170,\"size\":\"21H*20W\",\"weight\":63,\"produce_weight\":63,\"yarn\":1},{\"color\":\"深夹花灰\",\"id\":2,\"price\":7.75,\"quantity\":1170,\"size\":\"21H*20W\",\"weight\":63,\"produce_weight\":63,\"yarn\":1},{\"color\":\"暗红色\",\"id\":3,\"price\":7.4,\"quantity\":760,\"size\":\"21H*20W\",\"weight\":63,\"produce_weight\":63,\"yarn\":1}]', '', '3', 'FWA30018', '3');
INSERT INTO `tb_order` VALUES ('13', '2015-04-03 23:52:25', '2015-04-03 23:52:25', '7', '12', '20196', '1', '待发货', '', '冰岛毛羽毛纱围脖(198.0克)', '2015-03-06 00:00:00', '2015-04-20 00:00:00', null, 'FWA20013', '1', null, null, '16.235', '材料1：162*1.1*12*31÷ 1000=66.29\r\n材料2：38*1.15*12*65÷ 1000=34.08\r\n66.29+34.08=100.37+10.8=111.17\r\n2.78+1.31=4.09\r\n机织:30.0\r\n套口:21.6\r\n整烫:5.0\r\n费用+后道:10.8\r\n____________________________\r\n67.4+4.09\r\n=71.49*1.17\r\n=83.64+111.17\r\n=194.82÷12\r\n=16.23*1.2\r\n=19.48\r\n', 'resource.fuwei.com/images/sample/1427993082909Adoree loop SMS 8019 carbon solid.JPG', '8', '冰岛毛羽毛纱围脖', 'FWA30010', '33*2*27', '198', '8', '10', '0', null, 'resource.fuwei.com/images/sample/s/1427993082909Adoree loop SMS 8019 carbon solid.png', 'resource.fuwei.com/images/sample/ss/1427993082909Adoree loop SMS 8019 carbon solid.png', '1020', '[{\"color\":\"灰色\",\"id\":1,\"price\":19.8,\"quantity\":1020,\"size\":\"32*2*27cm\",\"weight\":200,\"produce_weight\":200,\"yarn\":8}]', '', '5', 'FWA30010', '2');
INSERT INTO `tb_order` VALUES ('14', '2015-04-04 00:25:22', '2015-04-04 00:25:22', '7', '30', '4428', '1', '待发货', '', '仿羊绒成品染色拉毛围脖(152.0克)', '2015-03-26 00:00:00', '2015-05-04 00:00:00', null, 'FWA20014', '7', null, null, '13.513', '152*1.15*12*36÷ 1000=75.514+12=87.514\r\n\r\n机织:14.400\r\n拉毛:27.600\r\n拷边:4.800\r\n整烫:5.000\r\n费用+后道:12.000\r\n____________________________\r\n63.8+0\r\n=63.8*1.17\r\n=74.646+87.514\r\n=162.16÷12\r\n=13.513*1.2\r\n=16.216\r\n', 'resource.fuwei.com/images/sample/14280778246358CD60DF79323473B3DE0139776CD3BEA.png', '13', '仿羊绒成品染色拉毛围脖', 'FWA30021', '40H*75W', '152', '11', '21', '0', null, 'resource.fuwei.com/images/sample/s/14280778246358CD60DF79323473B3DE0139776CD3BEA.png', 'resource.fuwei.com/images/sample/ss/14280778246358CD60DF79323473B3DE0139776CD3BEA.png', '270', '[{\"color\":\"褐色\",\"id\":1,\"price\":16.4,\"quantity\":60,\"size\":\"40H*75W*2\",\"weight\":163,\"produce_weight\":163,\"yarn\":13},{\"color\":\"红棕色\",\"id\":2,\"price\":16.4,\"quantity\":110,\"size\":\"40H*75W*2cm\",\"weight\":163,\"produce_weight\":163,\"yarn\":13},{\"color\":\"旧粉色\",\"id\":3,\"price\":16.4,\"quantity\":100,\"size\":\"40H*75W*2\",\"weight\":163,\"produce_weight\":163,\"yarn\":13}]', '', null, 'FWA30021', '3');
INSERT INTO `tb_order` VALUES ('15', '2015-04-04 01:47:47', '2015-04-04 01:47:47', '7', '30', '960', '1', '待发货', '', '马海毛点子纱围脖(203.0克)', '2015-03-28 00:00:00', '2015-05-04 00:00:00', null, 'FWA20015', '7', null, null, '13.471', '203*1.1*12*38÷ 1000=101.825+12=113.825\r\n3.483\r\n机织:14.400\r\n套口:6.000\r\n整烫:5.000\r\n费用+后道:12.000\r\n____________________________\r\n37.4+3.483\r\n=40.883*1.17\r\n=47.833+113.825\r\n=161.658÷12\r\n=13.471*1.2\r\n=16.165\r\n', 'resource.fuwei.com/images/sample/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', '17', '马海毛点子纱围脖', 'FWA30020', '43H*75W', '203', '11', '20', '0', null, 'resource.fuwei.com/images/sample/s/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', 'resource.fuwei.com/images/sample/ss/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', '60', '[{\"color\":\"白色\",\"id\":1,\"price\":16,\"quantity\":60,\"size\":\"43*75*2cm\",\"weight\":203,\"produce_weight\":203,\"yarn\":17}]', '', null, 'FWA30020', '3');
INSERT INTO `tb_order` VALUES ('16', '2015-04-04 01:52:57', '2015-04-04 01:52:57', '7', '30', '1700', '1', '待发货', '', '马海毛烫钻帽(69.0克)', '2015-03-26 00:00:00', '2015-05-04 00:00:00', null, 'FWA20016', '7', null, null, '0', '70*1.1*12*34÷ 1000=31.416+9=40.416\r\n1.201\r\n机织:12.000\r\n套抽:6.000\r\n烫钻:24.000\r\n整烫:4.000\r\n费用+后道:10.400\r\n____________________________\r\n56.4+1.201\r\n=57.601*1.17\r\n=67.393+40.416\r\n=107.809÷12\r\n=8.984*1.2\r\n=10.781\r\n', 'resource.fuwei.com/images/sample/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', '9', '马海毛烫钻帽', 'FWA30019', '20W*27H', '69', '11', '19', '0', null, 'resource.fuwei.com/images/sample/s/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', 'resource.fuwei.com/images/sample/ss/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', '170', '[{\"color\":\"黑色\",\"id\":1,\"price\":10,\"quantity\":110,\"size\":\"20w*27h\",\"weight\":70,\"produce_weight\":70,\"yarn\":9},{\"color\":\"米色\",\"id\":2,\"price\":10,\"quantity\":60,\"size\":\"20W*27H\",\"weight\":70,\"produce_weight\":70,\"yarn\":9}]', '', null, 'FWA30019', '3');
INSERT INTO `tb_order` VALUES ('17', '2015-04-04 14:45:55', '2015-04-04 14:45:55', '7', '29', '32400', '1', '待发货', '', '马海毛抽条加亮丝围脖(115.0克)', '2015-03-16 00:00:00', '2015-05-30 00:00:00', null, 'FWA20017', '4', null, null, '8.906', '115*1.1*12*34÷ 1000=51.612+12=63.612\r\n1.973\r\n机织:12.000\r\n套口:6.000\r\n整烫:5.000\r\n费用+后道:12.000\r\n____________________________\r\n35+1.973\r\n=36.973*1.17\r\n=43.258+63.612\r\n=106.87÷12\r\n=8.906*1.2\r\n=10.687\r\n', 'resource.fuwei.com/images/sample/1428129724477图片1.png', '9', '马海毛抽条加亮丝围脖', 'FWA30023', '70*2*40cm', '115', '11', '23', '0', null, 'resource.fuwei.com/images/sample/s/1428129724477图片1.png', 'resource.fuwei.com/images/sample/ss/1428129724477图片1.png', '3000', '[{\"color\":\"QY114-灰色\",\"id\":1,\"price\":10.8,\"quantity\":930,\"size\":\"70*2*40cm\",\"weight\":115,\"produce_weight\":115,\"yarn\":9},{\"color\":\"QY114-粉色\",\"id\":2,\"price\":10.8,\"quantity\":570,\"size\":\"70*2*40cm\",\"weight\":115,\"produce_weight\":115,\"yarn\":9},{\"color\":\"QY114-酒红\",\"id\":3,\"price\":10.8,\"quantity\":930,\"size\":\"70*2*40cm\",\"weight\":115,\"produce_weight\":115,\"yarn\":9},{\"color\":\"QY114-深驼\",\"id\":4,\"price\":10.8,\"quantity\":570,\"size\":\"70*2*40cm\",\"weight\":115,\"produce_weight\":115,\"yarn\":9}]', '', '3', 'FWA30023', '3');
INSERT INTO `tb_order` VALUES ('18', '2015-04-04 17:06:38', '2015-04-04 17:06:38', '7', '31', '160056', '1', '待发货', '', '马海毛豆豆纱挂须围巾(213.0克)', '2015-03-31 00:00:00', '2015-05-20 00:00:00', null, 'FWA20018', '2', null, null, '12.556', '材料1：170*1.12*12*33÷ 1000=75.39\r\n材料2：30*1.12*12*40÷ 1000=16.12\r\n75.39+16.12=91.52+12=103.52\r\n2.97+0.52=3.49\r\n机织:12\r\n锁口:4.8\r\n挂须:4.2\r\n整烫:5\r\n费用+后道:10.8\r\n____________________________\r\n36.8+3.49\r\n=40.29*1.17\r\n=47.14+103.52\r\n=150.67÷12\r\n=12.55*1.17\r\n=14.69\r\n', 'resource.fuwei.com/images/sample/1428081944406OB954525.png', '9', '马海毛豆豆纱挂须围巾', 'FWA30022', '20.5*223.5+20.5*2F', '213', '11', '22', '0', null, 'resource.fuwei.com/images/sample/s/1428081944406OB954525.png', 'resource.fuwei.com/images/sample/ss/1428081944406OB954525.png', '11115', '[{\"color\":\"黑色组\",\"id\":1,\"price\":14.4,\"quantity\":3264,\"size\":\"20.5cm*223.5+20.5*2F\",\"weight\":200,\"produce_weight\":200,\"yarn\":9},{\"color\":\"黄色组\",\"id\":2,\"price\":14.4,\"quantity\":2291,\"size\":\"20.5cm*223.5+20.5*2F\",\"weight\":200,\"produce_weight\":200,\"yarn\":9},{\"color\":\"紫色组\",\"id\":3,\"price\":14.4,\"quantity\":2306,\"size\":\"20.5cm*223.5+20.5*2F\",\"weight\":200,\"produce_weight\":200,\"yarn\":9},{\"color\":\"白色\",\"id\":4,\"price\":14.4,\"quantity\":3254,\"size\":\"20.5cm*223.5+20.5*2F\",\"weight\":200,\"produce_weight\":200,\"yarn\":9}]', '', '6', 'FWA30022', '3');
INSERT INTO `tb_order` VALUES ('19', '2015-04-04 17:24:04', '2015-04-04 17:24:04', '7', '30', '17430', '1', '待发货', '', '马海毛亮丝鱼鳞针双层围脖(130.0克)', '2015-03-30 00:00:00', '2015-06-02 00:00:00', null, 'FWA20019', '7', null, null, '0', null, 'resource.fuwei.com/images/sample/1428139307621A9370C19E298269217FD32E3D398A04C.png', '9', '马海毛亮丝鱼鳞针双层围脖', 'FWA30024', '35W*55H', '130', '11', '24', '0', null, 'resource.fuwei.com/images/sample/s/1428139307621A9370C19E298269217FD32E3D398A04C.png', 'resource.fuwei.com/images/sample/ss/1428139307621A9370C19E298269217FD32E3D398A04C.png', '1245', '[{\"color\":\"卡其色组\",\"id\":1,\"price\":14,\"quantity\":415,\"size\":\"35W*55H\",\"weight\":130,\"produce_weight\":130,\"yarn\":9},{\"color\":\"暗紫色\",\"id\":2,\"price\":14,\"quantity\":415,\"size\":\"35W*55H\",\"weight\":130,\"produce_weight\":130,\"yarn\":9},{\"color\":\"黑色\",\"id\":3,\"price\":14,\"quantity\":415,\"size\":\"35W*55H\",\"weight\":130,\"produce_weight\":130,\"yarn\":9}]', '', null, 'FWA30024', '3');
INSERT INTO `tb_order` VALUES ('20', '2015-04-06 12:30:59', '2015-04-06 12:30:59', '7', '30', '170', '1', '待发货', '', '马海毛烫钻帽(69.0克)', '2015-03-26 00:00:00', '2015-05-04 00:00:00', null, 'FWA20020', '7', null, null, '0', '70*1.1*12*34÷ 1000=31.416+9=40.416\r\n1.201\r\n机织:12.000\r\n套抽:6.000\r\n烫钻:24.000\r\n整烫:4.000\r\n费用+后道:10.400\r\n____________________________\r\n56.4+1.201\r\n=57.601*1.17\r\n=67.393+40.416\r\n=107.809÷12\r\n=8.984*1.2\r\n=10.781\r\n', 'resource.fuwei.com/images/sample/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', '9', '马海毛烫钻帽', 'FWA30019', '20W*27H', '69', '11', '19', '0', null, 'resource.fuwei.com/images/sample/s/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', 'resource.fuwei.com/images/sample/ss/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', '170', '[{\"color\":\"米色\",\"id\":1,\"price\":1,\"quantity\":60,\"size\":\"20寛*27长\",\"weight\":70,\"produce_weight\":70,\"yarn\":9},{\"color\":\"黑色\",\"id\":2,\"price\":1,\"quantity\":110,\"size\":\"20寛*27长\",\"weight\":70,\"produce_weight\":70,\"yarn\":9}]', '', null, ' hr32', '3');
INSERT INTO `tb_order` VALUES ('21', '2015-04-06 14:26:11', '2015-04-06 14:26:11', '7', '30', '48', '1', '待发货', '', '马海毛点子纱围脖(203.0克)', '2015-03-26 00:00:00', '2015-06-04 00:00:00', null, 'FWA20021', '7', null, null, '13.471', '203*1.1*12*38÷ 1000=101.825+12=113.825\r\n3.483\r\n机织:14.400\r\n套口:6.000\r\n整烫:5.000\r\n费用+后道:12.000\r\n____________________________\r\n37.4+3.483\r\n=40.883*1.17\r\n=47.833+113.825\r\n=161.658÷12\r\n=13.471*1.2\r\n=16.165\r\n', 'resource.fuwei.com/images/sample/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', '17', '马海毛点子纱围脖', 'FWA30020', '43H*75W', '203', '11', '20', '0', null, 'resource.fuwei.com/images/sample/s/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', 'resource.fuwei.com/images/sample/ss/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', '60', '[{\"color\":\"本白色\",\"id\":1,\"price\":0.8,\"quantity\":60,\"size\":\"43高*75寛\",\"weight\":203,\"produce_weight\":203,\"yarn\":9}]', '', null, 'hr140919l', '3');
INSERT INTO `tb_order` VALUES ('22', '2015-04-07 17:20:08', '2015-04-07 17:20:08', '7', '29', '0', '1', '待发货', '', '抽条翻边帽(63.0克)', '2015-03-10 00:00:00', '2015-06-20 00:00:00', null, 'FWA20022', '4', null, null, '5.412', '65*1.2*12*31÷ 1000=29.016+9=38.016\r\n1.217\r\n机织:3.600\r\n拷边:4.800\r\n整烫:3.000\r\n费用+后道:10.400\r\n____________________________\r\n21.8+1.217\r\n=23.017*1.17\r\n=26.93+38.016\r\n=64.946÷12\r\n=5.412*1.2\r\n=6.494\r\n', 'resource.fuwei.com/images/sample/1428073896025图片1.png', '1', '抽条翻边帽', 'FWA30018', '21H*20W', '63', '11', '18', '0', null, 'resource.fuwei.com/images/sample/s/1428073896025图片1.png', 'resource.fuwei.com/images/sample/ss/1428073896025图片1.png', '3086', '[{\"color\":\"黑色\",\"id\":1,\"price\":0,\"quantity\":1165,\"size\":\"21高i*20寛\",\"weight\":75,\"produce_weight\":75,\"yarn\":1},{\"color\":\"深灰夹花\",\"id\":2,\"price\":0,\"quantity\":1165,\"size\":\"21高*20寛\",\"weight\":75,\"produce_weight\":75,\"yarn\":1},{\"color\":\"猪血红\",\"id\":3,\"price\":0,\"quantity\":756,\"size\":\"21高*20寛\",\"weight\":75,\"produce_weight\":75,\"yarn\":1}]', '', '3', '10133423', '3');
INSERT INTO `tb_order` VALUES ('23', '2015-04-08 07:59:02', '2015-04-08 09:40:53', '7', '2', '0', '1', '待发货', '', '全晴帽子(56.0克)', '2015-03-11 00:00:00', '2015-04-30 00:00:00', null, 'FWA20023', '2', null, null, '0', null, 'resource.fuwei.com/images/sample/14284501869294EF3FDA3E66B3F52981D6221B3A4DDB9.png', '1', '全晴帽子', 'FWA30032', '22*26+2.5cm', '56', '11', '32', '0', null, 'resource.fuwei.com/images/sample/s/14284501869294EF3FDA3E66B3F52981D6221B3A4DDB9.png', 'resource.fuwei.com/images/sample/ss/14284501869294EF3FDA3E66B3F52981D6221B3A4DDB9.png', '3468', '[{\"color\":\"714#\",\"id\":1,\"price\":0,\"quantity\":1734,\"size\":\"22寛*26高+2.5罗文\",\"weight\":56,\"produce_weight\":56,\"yarn\":1},{\"color\":\"718#\",\"id\":2,\"price\":0,\"quantity\":1734,\"size\":\"22寛*26高+2.5罗文\",\"weight\":56,\"produce_weight\":56,\"yarn\":1}]', '', '4', '12ACAG', '3');
INSERT INTO `tb_order` VALUES ('24', '2015-04-08 08:05:51', '2015-04-08 08:05:51', '7', '2', '0', '1', '待发货', '', '晴纶纱围巾(110.0克)', '2015-03-11 00:00:00', '2015-04-30 00:00:00', null, 'FWA20024', '2', null, null, '0', null, 'resource.fuwei.com/images/sample/14284500148474A245F5021573282698A5022354CF3C1.png', '1', '晴纶纱围巾', 'FWA30031', '45*180+3.5cm', '110', '11', '31', '0', null, 'resource.fuwei.com/images/sample/s/14284500148474A245F5021573282698A5022354CF3C1.png', 'resource.fuwei.com/images/sample/ss/14284500148474A245F5021573282698A5022354CF3C1.png', '3468', '[{\"color\":\"714#\",\"id\":1,\"price\":0,\"quantity\":1734,\"size\":\"45寛*180长+3.5罗文\",\"weight\":110,\"produce_weight\":110,\"yarn\":1},{\"color\":\"718#\",\"id\":2,\"price\":0,\"quantity\":1734,\"size\":\"45寛*180长+3.5罗文\",\"weight\":110,\"produce_weight\":110,\"yarn\":1}]', '', '4', '12ASAG', '3');
INSERT INTO `tb_order` VALUES ('25', '2015-04-08 09:20:30', '2015-04-08 09:23:26', '7', '2', '0', '1', '待发货', '', '晴纶纱卷边帽子(57.0克)', '2015-03-11 00:00:00', '2015-04-30 00:00:00', null, 'FWA20025', '2', null, null, '0', null, 'resource.fuwei.com/images/sample/14284499016891D02B4EE9A9C98349C5D78BF9C243A52.png', '1', '晴纶纱卷边帽子', 'FWA30030', '23*27', '57', '11', '30', '0', null, 'resource.fuwei.com/images/sample/s/14284499016891D02B4EE9A9C98349C5D78BF9C243A52.png', 'resource.fuwei.com/images/sample/ss/14284499016891D02B4EE9A9C98349C5D78BF9C243A52.png', '2082', '[{\"color\":\"粉色\",\"id\":1,\"price\":0,\"quantity\":2082,\"size\":\"23寛*27高\",\"weight\":57,\"produce_weight\":57,\"yarn\":1}]', '', '4', '11ACAC', '3');
INSERT INTO `tb_order` VALUES ('26', '2015-04-08 09:30:20', '2015-04-08 09:30:20', '7', '2', '0', '1', '待发货', '', '晴纶纱卷边帽子(57.0克)', '2015-03-11 00:00:00', '2015-04-30 00:00:00', null, 'FWA20026', '2', null, null, '0', null, 'resource.fuwei.com/images/sample/14284499016891D02B4EE9A9C98349C5D78BF9C243A52.png', '1', '晴纶纱卷边帽子', 'FWA30030', '23*27', '57', '11', '30', '0', null, 'resource.fuwei.com/images/sample/s/14284499016891D02B4EE9A9C98349C5D78BF9C243A52.png', 'resource.fuwei.com/images/sample/ss/14284499016891D02B4EE9A9C98349C5D78BF9C243A52.png', '6246', '[{\"color\":\"粉色\",\"id\":1,\"price\":0,\"quantity\":2082,\"size\":\"23寛*27高\",\"weight\":57,\"produce_weight\":57,\"yarn\":1},{\"color\":\"718#\",\"id\":2,\"price\":0,\"quantity\":2082,\"size\":\"23寛*27高\",\"weight\":57,\"produce_weight\":57,\"yarn\":1},{\"color\":\"712#\",\"id\":3,\"price\":0,\"quantity\":2082,\"size\":\"23寛*27高\",\"weight\":57,\"produce_weight\":57,\"yarn\":1}]', '', '4', '11ACAC', '3');
INSERT INTO `tb_order` VALUES ('27', '2015-04-08 10:05:42', '2015-04-08 10:05:42', '7', '2', '0', '1', '待发货', '', '晴纶纱围脖(135.0克)', '2015-03-11 00:00:00', '2015-04-30 00:00:00', null, 'FWA20027', '2', null, null, '0', null, 'resource.fuwei.com/images/sample/14284497284672DFCC0FB9B3CD67CD5E328A84A7089F3.png', '1', '晴纶纱围脖', 'FWA30029', '45*90*2cm', '135', '11', '29', '0', null, 'resource.fuwei.com/images/sample/s/14284497284672DFCC0FB9B3CD67CD5E328A84A7089F3.png', 'resource.fuwei.com/images/sample/ss/14284497284672DFCC0FB9B3CD67CD5E328A84A7089F3.png', '6246', '[{\"color\":\"粉色\",\"id\":1,\"price\":0,\"quantity\":2082,\"size\":\"45寛*90x2长\",\"weight\":135,\"produce_weight\":135,\"yarn\":1},{\"color\":\"718#\",\"id\":2,\"price\":0,\"quantity\":2082,\"size\":\"45寛*90x2长\",\"weight\":135,\"produce_weight\":135,\"yarn\":1},{\"color\":\"712#\",\"id\":3,\"price\":0,\"quantity\":2082,\"size\":\"45寛*90x2长\",\"weight\":135,\"produce_weight\":135,\"yarn\":1}]', '', '4', '11AKAG', '3');
INSERT INTO `tb_order` VALUES ('28', '2015-04-08 15:00:58', '2015-04-08 15:00:58', '7', '31', '23040', '1', '待发货', '', '马海毛带子纱手工头带(54.0克)', '2015-03-25 00:00:00', '2015-05-20 00:00:00', null, 'FWA20028', '2', null, null, '0', null, 'resource.fuwei.com/images/sample/1428463219417QQ截图20150408111200.jpg', '9', '马海毛带子纱手工头带', 'FWA30033', '9*23cm', '54', '11', '33', '0', null, 'resource.fuwei.com/images/sample/s/1428463219417QQ截图20150408111200.png', 'resource.fuwei.com/images/sample/ss/1428463219417QQ截图20150408111200.png', '7680', '[{\"color\":\"黄色组\",\"id\":1,\"price\":3,\"quantity\":1379,\"size\":\"9寛*23长\",\"weight\":54,\"produce_weight\":54,\"yarn\":9},{\"color\":\"白色组\",\"id\":2,\"price\":3,\"quantity\":2482,\"size\":\"9寛*23长\",\"weight\":54,\"produce_weight\":54,\"yarn\":9},{\"color\":\"黑色组\",\"id\":3,\"price\":3,\"quantity\":2505,\"size\":\"9寛*23长\",\"weight\":54,\"produce_weight\":54,\"yarn\":9},{\"color\":\"紫色组\",\"id\":4,\"price\":3,\"quantity\":1314,\"size\":\"9寛*23长\",\"weight\":54,\"produce_weight\":54,\"yarn\":9}]', '', '2', 'OB154508', '3');
INSERT INTO `tb_order` VALUES ('29', '2015-04-08 15:55:25', '2015-04-08 15:55:25', '7', '29', '0', '1', '待发货', '', '冰岛毛绞花毛球帽(123.0克)', '2015-03-10 00:00:00', '2015-07-20 00:00:00', null, 'FWA20029', '4', null, null, '10.165', '110*1.1*12*31÷ 1000=45.012+9=54.012\r\n1.888\r\n机织:14.400\r\n套抽:6.000\r\n吊球:2.000\r\n球:20.400\r\n整烫:3.000\r\n费用+后道:10.400\r\n____________________________\r\n56.2+1.888\r\n=58.088*1.17\r\n=67.963+54.012\r\n=121.975÷12\r\n=10.165*1.2\r\n=12.198\r\n', 'resource.fuwei.com/images/sample/1428066399895图片1.png', '6', '冰岛毛绞花毛球帽', 'FWA30014', '21*20CM', '123', '11', '14', '0', null, 'resource.fuwei.com/images/sample/s/1428066399895图片1.png', 'resource.fuwei.com/images/sample/ss/1428066399895图片1.png', '9280', '[{\"color\":\"K974\",\"id\":1,\"price\":0,\"quantity\":4640,\"size\":\"21高*20寛\",\"weight\":123,\"produce_weight\":123,\"yarn\":7},{\"color\":\"QY102米色\",\"id\":2,\"price\":0,\"quantity\":4640,\"size\":\"21高*20寛\",\"weight\":123,\"produce_weight\":123,\"yarn\":6}]', '', '3', '10131588', '3');
INSERT INTO `tb_order` VALUES ('30', '2015-04-10 11:03:32', '2015-04-10 11:03:32', '7', '31', '0', '1', '待发货', '', '马海毛豆豆纱挂须围巾(213.0克)', '2015-03-31 00:00:00', '2015-05-20 00:00:00', null, 'FWA20030', '2', null, null, '12.556', '材料1：170*1.12*12*33÷ 1000=75.39\r\n材料2：30*1.12*12*40÷ 1000=16.12\r\n75.39+16.12=91.52+12=103.52\r\n2.97+0.52=3.49\r\n机织:12\r\n锁口:4.8\r\n挂须:4.2\r\n整烫:5\r\n费用+后道:10.8\r\n____________________________\r\n36.8+3.49\r\n=40.29*1.17\r\n=47.14+103.52\r\n=150.67÷12\r\n=12.55*1.17\r\n=14.69\r\n', 'resource.fuwei.com/images/sample/1428081944406OB954525.png', '9', '马海毛豆豆纱挂须围巾', 'FWA30022', '20.5*223.5+20.5*2F', '213', '11', '22', '0', null, 'resource.fuwei.com/images/sample/s/1428081944406OB954525.png', 'resource.fuwei.com/images/sample/ss/1428081944406OB954525.png', '11103', '[{\"color\":\"OB米白组\",\"id\":1,\"price\":0,\"quantity\":3251,\"size\":\"20宽*220长十须20公分\",\"weight\":200,\"produce_weight\":200,\"yarn\":9},{\"color\":\"0B黑色组\",\"id\":2,\"price\":0,\"quantity\":3261,\"size\":\"20宽*220长十须20公分\",\"weight\":200,\"produce_weight\":200,\"yarn\":9},{\"color\":\"OB黄色组\",\"id\":3,\"price\":0,\"quantity\":2288,\"size\":\"20宽*220长十须20公分\",\"weight\":200,\"produce_weight\":200,\"yarn\":9},{\"color\":\"OB紫色\",\"id\":4,\"price\":0,\"quantity\":2303,\"size\":\"20宽*220长十须20公分\",\"weight\":200,\"produce_weight\":200,\"yarn\":9}]', '', null, 'OB954525', '3');
INSERT INTO `tb_order` VALUES ('31', '2015-04-10 17:08:23', '2015-04-10 17:08:23', '7', '18', '0', '1', '待发货', '', '带子纱空转围脖(260.0克)', '2015-03-16 00:00:00', '2015-07-01 00:00:00', null, 'FWA20031', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/1428380635592IMG_1656.JPG', '20', '带子纱空转围脖', 'FWA30025', '29*2*60cm', '260', '8', '25', '0', null, 'resource.fuwei.com/images/sample/s/1428380635592IMG_1656.png', 'resource.fuwei.com/images/sample/ss/1428380635592IMG_1656.png', '608', '[{\"color\":\"黑色\",\"id\":1,\"price\":0,\"quantity\":222,\"size\":\"58*58\",\"weight\":275,\"produce_weight\":275,\"yarn\":20},{\"color\":\"海军蓝\",\"id\":2,\"price\":0,\"quantity\":193,\"size\":\"58*58\",\"weight\":275,\"produce_weight\":275,\"yarn\":20},{\"color\":\"银色\",\"id\":3,\"price\":0,\"quantity\":193,\"size\":\"58*58\",\"weight\":275,\"produce_weight\":275,\"yarn\":20}]', '', '3', '15NY-FW01', '2');
INSERT INTO `tb_order` VALUES ('32', '2015-04-10 17:41:20', '2015-04-10 17:41:20', '7', '18', '0', '1', '待发货', '', '带子纱帽子(75.0克)', '2015-03-16 00:00:00', '2015-06-01 00:00:00', null, 'FWA20032', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/1428380887144IMG_2018.JPG', '20', '带子纱帽子', 'FWA30027', '25.5*23cm', '75', '8', '27', '0', null, 'resource.fuwei.com/images/sample/s/1428380887144IMG_2018.png', 'resource.fuwei.com/images/sample/ss/1428380887144IMG_2018.png', '960', '[{\"color\":\"黑色\",\"id\":1,\"price\":0,\"quantity\":370,\"size\":\"25高*23宽\",\"weight\":75,\"produce_weight\":75,\"yarn\":20},{\"color\":\"海军蓝\",\"id\":2,\"price\":0,\"quantity\":295,\"size\":\"25高*23宽\",\"weight\":75,\"produce_weight\":75,\"yarn\":20},{\"color\":\"银色\",\"id\":3,\"price\":0,\"quantity\":295,\"size\":\"25高*23宽\",\"weight\":75,\"produce_weight\":75,\"yarn\":20}]', '', '3', '15NY-FW03', '2');
INSERT INTO `tb_order` VALUES ('33', '2015-04-10 17:57:18', '2015-04-13 16:10:43', '7', '18', '0', '1', '待发货', '', '带子纱半指手套(30.0克)', '2015-03-16 00:00:00', '2015-06-01 00:00:00', null, 'FWA20033', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/1428380822862IMG_2168.JPG', '20', '带子纱半指手套', 'FWA30026', '9*20.5cm', '30', '8', '26', '0', null, 'resource.fuwei.com/images/sample/s/1428380822862IMG_2168.png', 'resource.fuwei.com/images/sample/ss/1428380822862IMG_2168.png', '800', '[{\"color\":\"黑色\",\"id\":1,\"price\":0,\"produce_weight\":36,\"quantity\":300,\"size\":\"20长*9宽\",\"weight\":36,\"yarn\":20},{\"color\":\"诲军蓝\",\"id\":2,\"price\":0,\"produce_weight\":36,\"quantity\":250,\"size\":\"20长*9宽\",\"weight\":36,\"yarn\":20},{\"color\":\"银色\",\"id\":3,\"price\":0,\"produce_weight\":36,\"quantity\":250,\"size\":\"20长*9宽\",\"weight\":36,\"yarn\":20}]', '', null, '15NY-FW02', '2');
INSERT INTO `tb_order` VALUES ('34', '2015-04-15 14:29:31', '2015-04-15 14:29:31', '7', '27', '0', '1', '待发货', '', '绞花吊球帽(107.0克)', '2015-03-10 00:00:00', '2015-05-20 00:00:00', null, 'FWA20034', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/142865072095818528H 酒红色.jpg', '4', '绞花吊球帽', 'FWA30040', '20.5*20.5+7.5cm', '107', '8', '40', '0', null, 'resource.fuwei.com/images/sample/s/142865072095818528H 酒红色.png', 'resource.fuwei.com/images/sample/ss/142865072095818528H 酒红色.png', '14000', '[{\"color\":\"AM黑色\",\"id\":1,\"price\":0,\"produce_weight\":87,\"quantity\":3200,\"size\":\"20*20+7.5翻边\",\"weight\":107,\"yarn\":4},{\"color\":\"AM奶白\",\"id\":2,\"price\":0,\"produce_weight\":87,\"quantity\":3200,\"size\":\"20*20+7.5翻边\",\"weight\":107,\"yarn\":4},{\"color\":\"AM丈青\",\"id\":3,\"price\":0,\"produce_weight\":87,\"quantity\":2200,\"size\":\"20*20+7.5翻边\",\"weight\":107,\"yarn\":4},{\"color\":\"AM酒红\",\"id\":4,\"price\":0,\"produce_weight\":87,\"quantity\":2200,\"size\":\"20*20+7.5翻边\",\"weight\":107,\"yarn\":4},{\"color\":\"714#\",\"id\":5,\"price\":0,\"produce_weight\":87,\"quantity\":3200,\"size\":\"20*20+7.5翻边\",\"weight\":107,\"yarn\":4}]', '', null, '15AM-FW001', '2');
INSERT INTO `tb_order` VALUES ('35', '2015-04-15 15:17:14', '2015-04-15 15:22:00', '7', '29', '0', '1', '待发货', '', '冰岛毛舒棉绒绞花围脖(205.0克)', '2015-03-10 00:00:00', '2015-07-20 00:00:00', null, 'FWA20035', '4', null, null, '0', null, 'resource.fuwei.com/images/sample/1429018571965图片1.png', '3', '冰岛毛舒棉绒绞花围脖', 'FWA30043', '30*2*35cm', '205', '11', '43', '0', null, 'resource.fuwei.com/images/sample/s/1429018571965图片1.png', 'resource.fuwei.com/images/sample/ss/1429018571965图片1.png', '5992', '[{\"color\":\"QY15本白\",\"id\":1,\"price\":0,\"produce_weight\":126,\"quantity\":2996,\"size\":\"（30*2）*35cm\",\"weight\":205,\"yarn\":3},{\"color\":\"QY15黑色\",\"id\":2,\"price\":0,\"produce_weight\":126,\"quantity\":48,\"size\":\"（30*2）*35cm\",\"weight\":205,\"yarn\":3},{\"color\":\"QY15深灰夹花K974\",\"id\":3,\"price\":0,\"produce_weight\":126,\"quantity\":2948,\"size\":\"（30*2）*35\",\"weight\":205,\"yarn\":3}]', '', null, 'QY15-100/101/165', '3');
INSERT INTO `tb_order` VALUES ('36', '2015-04-15 15:51:10', '2015-04-15 15:51:10', '7', '31', '159192', '1', '待发货', '', '马海毛豆豆纱挂须围巾(213.0克)', '2015-03-31 00:00:00', '2015-05-20 00:00:00', null, 'FWA20036', '2', null, null, '12.556', '材料1：170*1.12*12*33÷ 1000=75.39\r\n材料2：30*1.12*12*40÷ 1000=16.12\r\n75.39+16.12=91.52+12=103.52\r\n2.97+0.52=3.49\r\n机织:12\r\n锁口:4.8\r\n挂须:4.2\r\n整烫:5\r\n费用+后道:10.8\r\n____________________________\r\n36.8+3.49\r\n=40.29*1.17\r\n=47.14+103.52\r\n=150.67÷12\r\n=12.55*1.17\r\n=14.69\r\n', 'resource.fuwei.com/images/sample/1428081944406OB954525.png', '9', '马海毛豆豆纱挂须围巾', 'FWA30022', '20.5*223.5+20.5*2F', '213', '11', '22', '0', null, 'resource.fuwei.com/images/sample/s/1428081944406OB954525.png', 'resource.fuwei.com/images/sample/ss/1428081944406OB954525.png', '11055', '[{\"color\":\"黑色组\",\"id\":1,\"price\":14.4,\"produce_weight\":182,\"quantity\":3249,\"size\":\"20*220h+须20cm\",\"weight\":200,\"yarn\":9},{\"color\":\"黄色组\",\"id\":2,\"price\":14.4,\"produce_weight\":182,\"quantity\":2276,\"size\":\"20*220h+须20cm\",\"weight\":200,\"yarn\":9},{\"color\":\"紫色组\",\"id\":3,\"price\":14.4,\"produce_weight\":182,\"quantity\":2291,\"size\":\"20*220h+须20cm\",\"weight\":200,\"yarn\":9},{\"color\":\"米白组\",\"id\":4,\"price\":14.4,\"produce_weight\":182,\"quantity\":3239,\"size\":\"20*220h+须20cm\",\"weight\":200,\"yarn\":9}]', '', null, '0B954525', '3');
INSERT INTO `tb_order` VALUES ('37', '2015-04-15 16:33:31', '2015-04-15 16:33:31', '7', '29', '80136.8', '1', '待发货', '', '冰岛毛舒棉绒吊球帽(121.0克)', '2015-03-10 00:00:00', '2015-07-20 00:00:00', null, 'FWA20037', '4', null, null, '0', null, 'resource.fuwei.com/images/sample/1428650372343图片2.png', '3', '冰岛毛舒棉绒吊球帽', 'FWA30038', '23H*22W', '121', '11', '38', '0', null, 'resource.fuwei.com/images/sample/s/1428650372343图片2.png', 'resource.fuwei.com/images/sample/ss/1428650372343图片2.png', '5632', '[{\"color\":\"QY15本白\",\"id\":1,\"price\":14,\"produce_weight\":69,\"quantity\":2768,\"size\":\"23cm H * 22cm W\",\"weight\":121,\"yarn\":3},{\"color\":\"QY15深灰夹花\",\"id\":2,\"price\":14.45,\"produce_weight\":69,\"quantity\":2816,\"size\":\"23cm H * 22cm W\",\"weight\":121,\"yarn\":3},{\"color\":\"QY15黑色\",\"id\":3,\"price\":14.45,\"produce_weight\":69,\"quantity\":48,\"size\":\"23cm H * 22cm W\",\"weight\":121,\"yarn\":3}]', '', null, 'FWA30038', '3');
INSERT INTO `tb_order` VALUES ('38', '2015-04-15 16:47:51', '2015-04-15 16:47:51', '7', '28', '0', '1', '待发货', '', '冰岛毛绞花围巾(320.0克)', '2015-03-10 00:00:00', '2015-05-20 00:00:00', null, 'FWA20038', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/142865082420918528S 酒红色.jpg', '4', '冰岛毛绞花围巾', 'FWA30041', '33*167.5cm+15cm须', '320', '8', '41', '0', null, 'resource.fuwei.com/images/sample/s/142865082420918528S 酒红色.png', 'resource.fuwei.com/images/sample/ss/142865082420918528S 酒红色.png', '10000', '[{\"color\":\"AM黑色\",\"id\":1,\"price\":0,\"produce_weight\":285,\"quantity\":2600,\"size\":\"168*33+须15\",\"weight\":305,\"yarn\":4},{\"color\":\"AM奶白\",\"id\":2,\"price\":0,\"produce_weight\":285,\"quantity\":2600,\"size\":\"168*33+须15\",\"weight\":305,\"yarn\":4},{\"color\":\"AM丈青\",\"id\":3,\"price\":0,\"produce_weight\":285,\"quantity\":2200,\"size\":\"168*33+须15\",\"weight\":305,\"yarn\":4},{\"color\":\"AM酒红\",\"id\":4,\"price\":0,\"produce_weight\":285,\"quantity\":2600,\"size\":\"168*33+须15\",\"weight\":305,\"yarn\":4}]', '', null, '15AM-FW001', '2');
INSERT INTO `tb_order` VALUES ('39', '2015-04-15 16:52:54', '2015-04-15 16:52:54', '7', '32', '26827.2', '1', '待发货', '', '童款带子纱帽子(107.0克)', '2015-03-24 00:00:00', '2015-06-13 00:00:00', null, 'FWA20039', '3', null, null, '0', null, 'resource.fuwei.com/images/sample/1428649979257CatchAD63(04-10-15-11-08).jpg', '6', '童款带子纱帽子', 'FWA30035', 'M:20W*20.5H+5翻边/S:19H*19W+5翻边', '107', '12', '35', '0', null, 'resource.fuwei.com/images/sample/s/1428649979257CatchAD63(04-10-15-11-08).png', 'resource.fuwei.com/images/sample/ss/1428649979257CatchAD63(04-10-15-11-08).png', '2484', '[{\"color\":\"LU471米色S\",\"id\":1,\"price\":10.8,\"produce_weight\":93,\"quantity\":972,\"size\":\"19H * 19W + 5+ BALL\",\"weight\":107,\"yarn\":6},{\"color\":\"LU471米色M\",\"id\":2,\"price\":10.8,\"produce_weight\":99,\"quantity\":972,\"size\":\"20.5H * 20W + 5+BALL\",\"weight\":107,\"yarn\":6},{\"color\":\"LU471深灰夹花S\",\"id\":3,\"price\":10.8,\"produce_weight\":93,\"quantity\":216,\"size\":\"19H * 19W+5+BALL\",\"weight\":107,\"yarn\":7},{\"color\":\"LU471深灰夹花M\",\"id\":4,\"price\":10.8,\"produce_weight\":99,\"quantity\":324,\"size\":\"20.5H*20W+5+BALL\",\"weight\":107,\"yarn\":7}]', '', null, 'LU471', '4');
INSERT INTO `tb_order` VALUES ('40', '2015-04-15 17:02:09', '2015-04-15 17:02:09', '7', '30', '0', '1', '待发货', '', '马海毛亮丝鱼鳞针双层围脖(130.0克)', '2015-03-30 00:00:00', '2015-06-02 00:00:00', null, 'FWA20040', '7', null, null, '0', null, 'resource.fuwei.com/images/sample/1428139307621A9370C19E298269217FD32E3D398A04C.png', '9', '马海毛亮丝鱼鳞针双层围脖', 'FWA30024', '35W*55H', '130', '11', '24', '0', null, 'resource.fuwei.com/images/sample/s/1428139307621A9370C19E298269217FD32E3D398A04C.png', 'resource.fuwei.com/images/sample/ss/1428139307621A9370C19E298269217FD32E3D398A04C.png', '1200', '[{\"color\":\"45#卡其色+铜丝\",\"id\":1,\"price\":0,\"produce_weight\":125,\"quantity\":400,\"size\":\"34*50H\",\"weight\":130,\"yarn\":9},{\"color\":\"89#暗紫色+银丝\",\"id\":2,\"price\":0,\"produce_weight\":125,\"quantity\":400,\"size\":\"34*50H\",\"weight\":130,\"yarn\":9},{\"color\":\"90#黑色+银丝\",\"id\":3,\"price\":0,\"produce_weight\":125,\"quantity\":400,\"size\":\"34*50H\",\"weight\":130,\"yarn\":9}]', '', null, '76346', '3');
INSERT INTO `tb_order` VALUES ('41', '2015-04-15 17:14:55', '2015-04-15 17:14:55', '7', '27', '0', '1', '待发货', '', '冰岛毛绞花头带(47.0克)', '2015-03-10 00:00:00', '2015-05-20 00:00:00', null, 'FWA20041', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/142865055303418527HB 酒红色.jpg', '4', '冰岛毛绞花头带', 'FWA30039', '10*25.5cm', '47', '8', '39', '0', null, 'resource.fuwei.com/images/sample/s/142865055303418527HB 酒红色.png', 'resource.fuwei.com/images/sample/ss/142865055303418527HB 酒红色.png', '16000', '[{\"color\":\"AM黑色\",\"id\":1,\"price\":0,\"produce_weight\":39,\"quantity\":4200,\"size\":\"25长*10宽\",\"weight\":46,\"yarn\":4},{\"color\":\"AM奶白\",\"id\":2,\"price\":0,\"produce_weight\":39,\"quantity\":4200,\"size\":\"25长*10宽\",\"weight\":46,\"yarn\":4},{\"color\":\"AM夹花灰714\",\"id\":3,\"price\":0,\"produce_weight\":39,\"quantity\":3200,\"size\":\"25长*10宽\",\"weight\":46,\"yarn\":4},{\"color\":\"AM丈青\",\"id\":4,\"price\":0,\"produce_weight\":39,\"quantity\":2200,\"size\":\"25长*10宽\",\"weight\":46,\"yarn\":4},{\"color\":\"AM酒红\",\"id\":5,\"price\":0,\"produce_weight\":39,\"quantity\":2200,\"size\":\"25长*10宽\",\"weight\":46,\"yarn\":4}]', '', null, '15AM-FW001', '2');
INSERT INTO `tb_order` VALUES ('42', '2015-04-16 17:34:03', '2015-04-16 17:34:03', '7', '21', '0', '4', '已取消', '', '马海毛亮丝手套(50.0克)', '2015-03-05 00:00:00', '2015-06-01 00:00:00', null, 'FWA20042', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/1428650265434图片2.jpg', '10', '马海毛亮丝手套', 'FWA30037', '23*9cm', '50', '8', '37', '0', null, 'resource.fuwei.com/images/sample/s/1428650265434图片2.png', 'resource.fuwei.com/images/sample/ss/1428650265434图片2.png', '742', '[{\"color\":\"15NY黑色\",\"id\":1,\"price\":0,\"produce_weight\":46,\"quantity\":427,\"size\":\"23*9宽\",\"weight\":50,\"yarn\":10},{\"color\":\"15NY褐色\",\"id\":2,\"price\":0,\"produce_weight\":46,\"quantity\":315,\"size\":\"23*9\",\"weight\":50,\"yarn\":10}]', '', null, '15NY-FW07', '2');
INSERT INTO `tb_order` VALUES ('43', '2015-04-17 15:32:22', '2015-04-17 15:32:22', '7', '24', '0', '1', '待发货', '', '马海毛亮丝手套(50.0克)', '2015-03-05 00:00:00', '2015-06-01 00:00:00', null, 'FWA20043', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/1428650265434图片2.jpg', '10', '马海毛亮丝手套', 'FWA30037', '23*9cm', '50', '8', '37', '0', null, 'resource.fuwei.com/images/sample/s/1428650265434图片2.png', 'resource.fuwei.com/images/sample/ss/1428650265434图片2.png', '1484', '[{\"color\":\"15NY黑色\",\"id\":1,\"price\":0,\"produce_weight\":46,\"quantity\":427,\"size\":\"23*9\",\"weight\":50,\"yarn\":10},{\"color\":\"15NY褐色\",\"id\":2,\"price\":0,\"produce_weight\":46,\"quantity\":315,\"size\":\"23*9\",\"weight\":50,\"yarn\":10},{\"color\":\"黑色组151/72\",\"id\":3,\"price\":0,\"produce_weight\":46,\"quantity\":427,\"size\":\"23*9\",\"weight\":50,\"yarn\":19},{\"color\":\"褐色组106/粉色\",\"id\":4,\"price\":0,\"produce_weight\":46,\"quantity\":315,\"size\":\"23*9\",\"weight\":50,\"yarn\":19}]', '', null, '15NY-FW07', '2');
INSERT INTO `tb_order` VALUES ('44', '2015-04-17 16:07:07', '2015-04-17 16:13:16', '7', '18', '0', '4', '已取消', '', '马海毛亮丝帽子(70.0克)', '2015-03-05 00:00:00', '2015-06-01 00:00:00', null, 'FWA20044', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/1428650207511图片2.jpg', '10', '马海毛亮丝帽子', 'FWA30036', '28*21.6cm', '70', '8', '36', '0', null, 'resource.fuwei.com/images/sample/s/1428650207511图片2.png', 'resource.fuwei.com/images/sample/ss/1428650207511图片2.png', '3105', '[{\"color\":\"15NY黑色\",\"id\":1,\"price\":0,\"produce_weight\":70,\"quantity\":547,\"size\":\"28高*21.5宽\",\"weight\":70,\"yarn\":10},{\"color\":\"15NY褐色\",\"id\":2,\"price\":0,\"produce_weight\":70,\"quantity\":443,\"size\":\"28高*21.5宽\",\"weight\":70,\"yarn\":10},{\"color\":\"15NY白色\",\"id\":3,\"price\":0,\"produce_weight\":70,\"quantity\":45,\"size\":\"28高*21.5宽\",\"weight\":70,\"yarn\":10},{\"color\":\"151\",\"id\":4,\"price\":0,\"produce_weight\":70,\"quantity\":547,\"size\":\"28高*21.5宽\",\"weight\":70,\"yarn\":19},{\"color\":\"72\",\"id\":5,\"price\":0,\"produce_weight\":70,\"quantity\":547,\"size\":\"28*21.5\",\"weight\":70,\"yarn\":19},{\"color\":\"106\",\"id\":6,\"price\":0,\"produce_weight\":70,\"quantity\":443,\"size\":\"28*21.5\",\"weight\":70,\"yarn\":19},{\"color\":\"粉色\",\"id\":7,\"price\":0,\"produce_weight\":70,\"quantity\":443,\"size\":\"28*21.5\",\"weight\":70,\"yarn\":19},{\"color\":\"2\",\"id\":8,\"price\":0,\"produce_weight\":70,\"quantity\":45,\"size\":\"28*21.5\",\"weight\":70,\"yarn\":19},{\"color\":\"7\",\"id\":9,\"price\":0,\"produce_weight\":70,\"quantity\":45,\"size\":\"28*21.5\",\"weight\":70,\"yarn\":19}]', '', null, '15NY-FW08', '2');
INSERT INTO `tb_order` VALUES ('45', '2015-04-17 16:21:43', '2015-04-17 16:21:43', '7', '6', '0', '1', '待发货', '', '马海毛亮丝帽子(70.0克)', '2015-03-05 00:00:00', '2015-06-01 00:00:00', null, 'FWA20045', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/1428650207511图片2.jpg', '10', '马海毛亮丝帽子', 'FWA30036', '28*21.6cm', '70', '8', '36', '0', null, 'resource.fuwei.com/images/sample/s/1428650207511图片2.png', 'resource.fuwei.com/images/sample/ss/1428650207511图片2.png', '1035', '[{\"color\":\"15N黑色\",\"id\":1,\"price\":0,\"produce_weight\":70,\"quantity\":547,\"size\":\"28高**21.5宽\",\"weight\":70,\"yarn\":10},{\"color\":\"15NY褐色\",\"id\":2,\"price\":0,\"produce_weight\":70,\"quantity\":443,\"size\":\"28*21.5\",\"weight\":70,\"yarn\":10},{\"color\":\"15NY白色\",\"id\":3,\"price\":0,\"produce_weight\":70,\"quantity\":45,\"size\":\"28*21.5\",\"weight\":70,\"yarn\":10}]', '', '5', '15NY-FW08', '2');
INSERT INTO `tb_order` VALUES ('46', '2015-04-17 16:45:35', '2015-04-17 16:45:35', '7', '6', '0', '1', '待发货', '', '马海毛正反针围脖(155.0克)', '2015-03-26 00:00:00', '2015-05-15 00:00:00', null, 'FWA20046', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/1428381118194图片1.jpg', '10', '马海毛正反针围脖', 'FWA30028', '35.5*127cm', '155', '8', '28', '0', null, 'resource.fuwei.com/images/sample/s/1428381118194图片1.png', 'resource.fuwei.com/images/sample/ss/1428381118194图片1.png', '6209', '[{\"color\":\"15NY黑色\",\"id\":1,\"price\":0,\"produce_weight\":154,\"quantity\":763,\"size\":\"63..5x2*35.5\",\"weight\":155,\"yarn\":10},{\"color\":\"15NY棕色\",\"id\":2,\"price\":0,\"produce_weight\":154,\"quantity\":268,\"size\":\"63.5x2*35.5\",\"weight\":155,\"yarn\":10},{\"color\":\"15NY白色\",\"id\":3,\"price\":0,\"produce_weight\":154,\"quantity\":332,\"size\":\"63.5x2*35.5\",\"weight\":155,\"yarn\":10},{\"color\":\"15NY褐色\",\"id\":4,\"price\":0,\"produce_weight\":154,\"quantity\":316,\"size\":\"63.5x2*35.5\",\"weight\":155,\"yarn\":10},{\"color\":\"15NY灰色\",\"id\":5,\"price\":0,\"produce_weight\":154,\"quantity\":4530,\"size\":\"63.5x2*35.5\",\"weight\":155,\"yarn\":10}]', '', '5', '15NY-FW06', '2');
INSERT INTO `tb_order` VALUES ('47', '2015-04-17 17:50:42', '2015-04-17 17:50:42', '7', '29', '0', '1', '待发货', '', '马海毛亮丝抽条围脖(142.0克)', '2015-03-16 00:00:00', '2015-06-30 00:00:00', null, 'FWA20047', '4', null, null, '10.526', '142*1.1*12*34÷ 1000=63.73+10.8=74.53\r\n2.062\r\n机织:12.000\r\n套口:14.400\r\n整烫:5.000\r\n费用+后道:10.800\r\n____________________________\r\n42.2+2.062\r\n=44.262*1.17\r\n=51.787+74.53\r\n=126.317÷12\r\n=10.526*1.2\r\n=12.631\r\n', 'resource.fuwei.com/images/sample/1428071364212图片1.png', '9', '马海毛亮丝抽条围脖', 'FWA30017', '75*2*30cm', '142', '11', '17', '0', null, 'resource.fuwei.com/images/sample/s/1428071364212图片1.png', 'resource.fuwei.com/images/sample/ss/1428071364212图片1.png', '4704', '[{\"color\":\"QY114黑色\",\"id\":1,\"price\":0,\"produce_weight\":142,\"quantity\":1185,\"size\":\"75x2*30\",\"weight\":142,\"yarn\":9},{\"color\":\"QY114桔色\",\"id\":2,\"price\":0,\"produce_weight\":142,\"quantity\":1068,\"size\":\"75x2*30\",\"weight\":142,\"yarn\":9},{\"color\":\"QY114酒红色\",\"id\":3,\"price\":0,\"produce_weight\":142,\"quantity\":849,\"size\":\"75x2*30\",\"weight\":142,\"yarn\":9},{\"color\":\"QY114绿色\",\"id\":4,\"price\":0,\"produce_weight\":142,\"quantity\":1485,\"size\":\"75x2*30\",\"weight\":142,\"yarn\":9},{\"color\":\"QY114米色\",\"id\":5,\"price\":0,\"produce_weight\":142,\"quantity\":117,\"size\":\"75x2*30\",\"weight\":142,\"yarn\":9}]', '', '3', 'QY15-114', '3');
INSERT INTO `tb_order` VALUES ('48', '2015-04-17 18:13:54', '2015-04-17 18:13:54', '7', '29', '0', '1', '待发货', '', '冰岛毛+带子纱围脖(240.0克)', '2015-03-27 00:00:00', '2015-06-21 00:00:00', null, 'FWA20048', '4', null, null, '0', null, 'resource.fuwei.com/images/sample/1429019375839图片4.png', '6', '冰岛毛+带子纱围脖', 'FWA30050', '40*2*55cm', '240', '11', '50', '0', null, 'resource.fuwei.com/images/sample/s/1429019375839图片4.png', 'resource.fuwei.com/images/sample/ss/1429019375839图片4.png', '2288', '[{\"color\":\"QY15黑色\",\"id\":1,\"price\":0,\"produce_weight\":240,\"quantity\":1044,\"size\":\"40x2*55\",\"weight\":240,\"yarn\":6},{\"color\":\"QY15-本白色\",\"id\":2,\"price\":0,\"produce_weight\":240,\"quantity\":1244,\"size\":\"40x2*55\",\"weight\":240,\"yarn\":6}]', '', '3', 'QY15-157', '3');
INSERT INTO `tb_order` VALUES ('49', '2015-04-17 18:39:08', '2015-04-17 18:39:08', '7', '27', '0', '1', '待发货', '', '冰岛毛大绞花穿毛皮围脖(333.0克)', '2015-03-31 00:00:00', '2015-05-30 00:00:00', null, 'FWA20049', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/1429019463185图片5.jpg', '6', '冰岛毛大绞花穿毛皮围脖', 'FWA30051', '42*150', '333', '8', '51', '0', null, 'resource.fuwei.com/images/sample/s/1429019463185图片5.png', 'resource.fuwei.com/images/sample/ss/1429019463185图片5.png', '450', '[{\"color\":\"15DP驼色\",\"id\":1,\"price\":0,\"produce_weight\":333,\"quantity\":450,\"size\":\"75x2*42\",\"weight\":380,\"yarn\":6}]', '', null, '15DPFW01', '2');
INSERT INTO `tb_order` VALUES ('50', '2015-04-18 15:13:42', '2015-04-18 15:13:42', '7', '29', '0', '1', '待发货', '', '毛皮头带(70.0克)', '2015-03-10 00:00:00', '2015-06-06 00:00:00', null, 'FWA20050', '4', null, null, '0', null, 'resource.fuwei.com/images/sample/1429269335915图片2.png', '30', '毛皮头带', 'FWA30059', '30*8CM', '70', '11', '59', '0', null, 'resource.fuwei.com/images/sample/s/1429269335915图片2.png', 'resource.fuwei.com/images/sample/ss/1429269335915图片2.png', '866', '[{\"color\":\"黑色\",\"id\":1,\"price\":0,\"produce_weight\":70,\"quantity\":433,\"size\":\"M/L-30x2*8\",\"weight\":70,\"yarn\":30},{\"color\":\"黑色\",\"id\":2,\"price\":0,\"produce_weight\":57,\"quantity\":433,\"size\":\"SM-28x2*6.5\",\"weight\":57,\"yarn\":30}]', '', '2', 'QY15-090', '3');
INSERT INTO `tb_order` VALUES ('51', '2015-04-18 15:23:22', '2015-04-18 15:23:22', '7', '16', '0', '1', '待发货', '', '晴纶格子提花披肩(476.0克)', '2015-04-06 00:00:00', '2015-05-30 00:00:00', null, 'FWA20051', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/1429019180883Sino0732.jpg', '1', '晴纶格子提花披肩', 'FWA30048', '0', '476', '8', '48', '0', null, 'resource.fuwei.com/images/sample/s/1429019180883Sino0732.png', 'resource.fuwei.com/images/sample/ss/1429019180883Sino0732.png', '1200', '[{\"color\":\"黑/白\",\"id\":1,\"price\":0,\"produce_weight\":452,\"quantity\":1200,\"size\":\"130*130+须10\",\"weight\":475,\"yarn\":1}]', '', '6', '99MCJ476', '2');
INSERT INTO `tb_order` VALUES ('52', '2015-04-18 15:34:38', '2015-04-18 15:34:38', '7', '27', '0', '1', '待发货', '', '马海毛毛皮侧边围脖(200.0克)', '2015-04-01 00:00:00', '2015-05-30 00:00:00', null, 'FWA20052', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/1429268852563QQ截图20150417190508.jpg', '10', '马海毛毛皮侧边围脖', 'FWA30058', '70*180cm', '200', '8', '58', '0', null, 'resource.fuwei.com/images/sample/s/1429268852563QQ截图20150417190508.png', 'resource.fuwei.com/images/sample/ss/1429268852563QQ截图20150417190508.png', '7500', '[{\"color\":\"灰色\",\"id\":1,\"price\":0,\"produce_weight\":170,\"quantity\":2150,\"size\":\"90x2*70\",\"weight\":200,\"yarn\":10},{\"color\":\"粉色\",\"id\":2,\"price\":0,\"produce_weight\":170,\"quantity\":2150,\"size\":\"90x2*70\",\"weight\":200,\"yarn\":10},{\"color\":\"藏青\",\"id\":3,\"price\":0,\"produce_weight\":170,\"quantity\":3200,\"size\":\"90x2*70\",\"weight\":200,\"yarn\":10}]', '', null, '11165162', '2');
INSERT INTO `tb_order` VALUES ('53', '2015-04-18 15:51:54', '2015-04-18 15:51:54', '7', '32', '0', '1', '待发货', '', '马海毛亮丝比尼帽(50.0克)', '2015-04-08 00:00:00', '2015-05-30 00:00:00', null, 'FWA20053', '3', null, null, '0', null, 'resource.fuwei.com/images/sample/1429019636188图片7.jpg', '10', '马海毛亮丝比尼帽', 'FWA30053', '22*24高', '50', '12', '53', '0', null, 'resource.fuwei.com/images/sample/s/1429019636188图片7.png', 'resource.fuwei.com/images/sample/ss/1429019636188图片7.png', '380', '[{\"color\":\"VMB米色\",\"id\":1,\"price\":0,\"produce_weight\":50,\"quantity\":190,\"size\":\"22*24\",\"weight\":50,\"yarn\":9},{\"color\":\"VMB蓝色\",\"id\":2,\"price\":0,\"produce_weight\":50,\"quantity\":190,\"size\":\"22*24\",\"weight\":50,\"yarn\":9}]', '', null, 'EBVMB', '4');
INSERT INTO `tb_order` VALUES ('54', '2015-04-18 16:17:42', '2015-04-18 16:17:42', '7', '32', '0', '1', '待发货', '', '马海毛亮丝围巾(165.0克)', '2015-04-08 00:00:00', '2015-05-30 00:00:00', null, 'FWA20054', '3', null, null, '0', null, 'resource.fuwei.com/images/sample/1429019587172图片6.jpg', '10', '马海毛亮丝围巾', 'FWA30052', '30*180cm', '165', '12', '52', '0', null, 'resource.fuwei.com/images/sample/s/1429019587172图片6.png', 'resource.fuwei.com/images/sample/ss/1429019587172图片6.png', '700', '[{\"color\":\"743米色\",\"id\":1,\"price\":0,\"produce_weight\":165,\"quantity\":240,\"size\":\"180*30\",\"weight\":165,\"yarn\":10},{\"color\":\"205蓝色\",\"id\":2,\"price\":0,\"produce_weight\":165,\"quantity\":230,\"size\":\"180*30\",\"weight\":165,\"yarn\":10},{\"color\":\"M27黑色\",\"id\":3,\"price\":0,\"produce_weight\":165,\"quantity\":230,\"size\":\"180*30\",\"weight\":165,\"yarn\":10}]', '', null, '151BFW0001', '4');
INSERT INTO `tb_order` VALUES ('55', '2015-04-18 17:23:44', '2015-04-18 17:23:44', '7', '29', '0', '1', '待发货', '', '冰岛毛带子纱帽子(73.0克)', '2015-03-27 00:00:00', '2015-06-20 00:00:00', null, 'FWA20055', '4', null, null, '0', null, 'resource.fuwei.com/images/sample/1429269635263图片3.png', '6', '冰岛毛带子纱帽子', 'FWA30062', '23*20cm', '73', '11', '62', '0', null, 'resource.fuwei.com/images/sample/s/1429269635263图片3.png', 'resource.fuwei.com/images/sample/ss/1429269635263图片3.png', '1976', '[{\"color\":\"QY15黑色\",\"id\":1,\"price\":0,\"produce_weight\":73,\"quantity\":888,\"size\":\"23高*20寛+边6.5\",\"weight\":73,\"yarn\":6},{\"color\":\"QY15本白色\",\"id\":2,\"price\":0,\"produce_weight\":73,\"quantity\":1088,\"size\":\"23高*20寛+边6.5\",\"weight\":73,\"yarn\":6}]', '', '3', 'QY15-157', '3');
INSERT INTO `tb_order` VALUES ('56', '2015-04-18 17:38:20', '2015-04-18 17:38:20', '7', '32', '0', '1', '待发货', '', '针织双层比尼帽(123.0克)', '2015-04-08 00:00:00', '2015-06-08 00:00:00', null, 'FWA20056', '3', null, null, '0', null, 'resource.fuwei.com/images/sample/1429019778644TURUR.JPG', '1', '针织双层比尼帽', 'FWA30054', '24*30', '123', '12', '54', '0', null, 'resource.fuwei.com/images/sample/s/1429019778644TURUR.png', 'resource.fuwei.com/images/sample/ss/1429019778644TURUR.png', '1622', '[{\"color\":\"Cap黑色\",\"id\":1,\"price\":0,\"produce_weight\":123,\"quantity\":1622,\"size\":\"24寛*30高\",\"weight\":123,\"yarn\":1}]', '', null, '15PDFW0001', '4');
INSERT INTO `tb_order` VALUES ('57', '2015-04-18 17:57:46', '2015-04-18 17:57:46', '7', '16', '0', '1', '待发货', '', '马海毛挂须围巾(191.0克)', '2015-04-13 00:00:00', '2015-06-27 00:00:00', null, 'FWA20057', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/1429018908518图片1.jpg', '9', '马海毛挂须围巾', 'FWA30046', '25*165+2*15cm', '191', '8', '46', '0', null, 'resource.fuwei.com/images/sample/s/1429018908518图片1.png', 'resource.fuwei.com/images/sample/ss/1429018908518图片1.png', '2000', '[{\"color\":\"15GIII-  棕色\",\"id\":1,\"price\":0,\"produce_weight\":171,\"quantity\":2000,\"size\":\"165*25+须15\",\"weight\":191,\"yarn\":9}]', '', null, '15GIIIFW033', '2');
INSERT INTO `tb_order` VALUES ('58', '2015-04-18 18:04:08', '2015-04-18 18:04:08', '7', '33', '0', '1', '待发货', '', '晴纶纱四角帽(52.0克)', '2015-03-14 00:00:00', '2015-06-14 00:00:00', null, 'FWA20058', '6', null, null, '0', null, 'resource.fuwei.com/images/sample/1429019303572QQ截图20150414214621.jpg', '1', '晴纶纱四角帽', 'FWA30049', '21高*20帽口宽', '52', '10', '49', '0', null, 'resource.fuwei.com/images/sample/s/1429019303572QQ截图20150414214621.png', 'resource.fuwei.com/images/sample/ss/1429019303572QQ截图20150414214621.png', '3438', '[{\"color\":\"W120-黑色\",\"id\":1,\"price\":0,\"produce_weight\":62,\"quantity\":1833,\"size\":\"20寛*21高\",\"weight\":52,\"yarn\":1},{\"color\":\"W120-棕色\",\"id\":2,\"price\":0,\"produce_weight\":62,\"quantity\":420,\"size\":\"20寛*21高\",\"weight\":52,\"yarn\":1},{\"color\":\"W120-灰色\",\"id\":3,\"price\":0,\"produce_weight\":62,\"quantity\":1185,\"size\":\"20寛*21高\",\"weight\":52,\"yarn\":1}]', '', null, 'W1201267', '1');
INSERT INTO `tb_order` VALUES ('59', '2015-04-18 18:14:36', '2015-04-18 18:14:36', '7', '9', '0', '1', '待发货', '', '提花披肩(508.0克)', '2015-03-16 00:00:00', '2015-06-15 00:00:00', null, 'FWA20059', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/1429269420682图片2.jpg', '9', '提花披肩', 'FWA30060', '披肩尺寸', '508', '8', '60', '0', null, 'resource.fuwei.com/images/sample/s/1429269420682图片2.png', 'resource.fuwei.com/images/sample/ss/1429269420682图片2.png', '1060', '[{\"color\":\"自然色\",\"id\":1,\"price\":0,\"produce_weight\":458,\"quantity\":1060,\"size\":\"0\",\"weight\":508,\"yarn\":9}]', '', null, 'M14214D', '2');
INSERT INTO `tb_order` VALUES ('60', '2015-04-19 10:01:23', '2015-04-19 10:01:23', '7', '33', '0', '1', '待发货', '', '绣花四角帽(110.0克)', '2015-04-18 00:00:00', '2015-05-18 00:00:00', null, 'FWA20060', '6', null, null, '0', null, 'resource.fuwei.com/images/sample/1429361328863QQ截图20150418204646.jpg', '32', '绣花四角帽', 'FWA30074', '21.5宽*26高+10翻边', '110', '10', '74', '0', null, 'resource.fuwei.com/images/sample/s/1429361328863QQ截图20150418204646.png', 'resource.fuwei.com/images/sample/ss/1429361328863QQ截图20150418204646.png', '2500', '[{\"color\":\"粉色\",\"id\":1,\"price\":0,\"produce_weight\":113,\"quantity\":200,\"size\":\"21.5寛*26高+边10\",\"weight\":110,\"yarn\":1},{\"color\":\"军蓝\",\"id\":2,\"price\":0,\"produce_weight\":113,\"quantity\":1500,\"size\":\"21.5寛*26高+边10\",\"weight\":110,\"yarn\":1},{\"color\":\"深灰\",\"id\":3,\"price\":0,\"produce_weight\":113,\"quantity\":800,\"size\":\"21.5寛*26高+边10\",\"weight\":110,\"yarn\":1}]', '', null, 'JC/15/00031', '1');
INSERT INTO `tb_order` VALUES ('61', '2015-04-19 13:01:52', '2015-04-19 13:01:52', '7', '46', '0', '1', '待发货', '', '冰岛毛正反针围脖(328.0克)', '2015-04-08 00:00:00', '2015-06-27 00:00:00', null, 'FWA20061', '3', null, null, '0', null, 'resource.fuwei.com/images/sample/1429277989657QQ截图20150417213833.jpg', '5', '冰岛毛正反针围脖', 'FWA30068', '65W*2*37H', '328', '12', '68', '0', null, 'resource.fuwei.com/images/sample/s/1429277989657QQ截图20150417213833.png', 'resource.fuwei.com/images/sample/ss/1429277989657QQ截图20150417213833.png', '8370', '[{\"color\":\"03X浅粉\",\"id\":1,\"price\":0,\"produce_weight\":326,\"quantity\":2100,\"size\":\"65x2*37\",\"weight\":328,\"yarn\":5},{\"color\":\"712\",\"id\":2,\"price\":0,\"produce_weight\":326,\"quantity\":2160,\"size\":\"65x2*37\",\"weight\":328,\"yarn\":5},{\"color\":\"59X藏青\",\"id\":3,\"price\":0,\"produce_weight\":326,\"quantity\":2100,\"size\":\"65x2*37\",\"weight\":328,\"yarn\":5},{\"color\":\"69X蓝色\",\"id\":4,\"price\":0,\"produce_weight\":326,\"quantity\":2010,\"size\":\"65x2*37\",\"weight\":328,\"yarn\":5}]', '', null, 'LW375', '4');
INSERT INTO `tb_order` VALUES ('62', '2015-04-19 13:27:05', '2015-04-19 13:27:05', '7', '46', '0', '1', '待发货', '', '基本款卷边围脖(210.0克)', '2015-03-26 00:00:00', '2015-06-13 00:00:00', null, 'FWA20062', '3', null, null, '0', null, 'resource.fuwei.com/images/sample/1429277931969Catch2C4E(03-27-(04-17-21-34-43).jpg', '1', '基本款卷边围脖', 'FWA30067', '33W*2*50H', '210', '12', '67', '0', null, 'resource.fuwei.com/images/sample/s/1429277931969Catch2C4E(03-27-(04-17-21-34-43).png', 'resource.fuwei.com/images/sample/ss/1429277931969Catch2C4E(03-27-(04-17-21-34-43).png', '10740', '[{\"color\":\"33X红色\",\"id\":1,\"price\":0,\"produce_weight\":125,\"quantity\":2040,\"size\":\"30x2*45\",\"weight\":125,\"yarn\":1},{\"color\":\"42X 亮粉\",\"id\":2,\"price\":0,\"produce_weight\":125,\"quantity\":2220,\"size\":\"30x2*45\",\"weight\":125,\"yarn\":1},{\"color\":\"59X藏青\",\"id\":3,\"price\":0,\"produce_weight\":125,\"quantity\":2040,\"size\":\"30x2*45\",\"weight\":125,\"yarn\":1},{\"color\":\"99X黑色\",\"id\":4,\"price\":0,\"produce_weight\":125,\"quantity\":2220,\"size\":\"30x2*45\",\"weight\":125,\"yarn\":1},{\"color\":\"90X712\",\"id\":5,\"price\":0,\"produce_weight\":125,\"quantity\":2220,\"size\":\"30x2*45\",\"weight\":125,\"yarn\":1}]', '', null, 'BM029', '4');
INSERT INTO `tb_order` VALUES ('63', '2015-04-19 13:47:19', '2015-04-19 13:48:49', '7', '46', '0', '4', '已取消', '', '基本款帽子(65.0克)', '2015-04-11 00:00:00', '2015-06-01 00:00:00', null, 'FWA20063', '3', null, null, '0', null, 'resource.fuwei.com/images/sample/1429277835310CatchAB38(04-03-(04-17-21-35-55).jpg', '1', '基本款帽子', 'FWA30066', '27H*20W', '65', '12', '66', '0', null, 'resource.fuwei.com/images/sample/s/1429277835310CatchAB38(04-03-(04-17-21-35-55).png', 'resource.fuwei.com/images/sample/ss/1429277835310CatchAB38(04-03-(04-17-21-35-55).png', '14608', '[{\"color\":\"01X米色\",\"id\":1,\"price\":0,\"produce_weight\":65,\"quantity\":7304,\"size\":\"27高*20寛\",\"weight\":65,\"yarn\":1},{\"color\":\"09X712\",\"id\":2,\"price\":0,\"produce_weight\":65,\"quantity\":7304,\"size\":\"27高*20寛\",\"weight\":65,\"yarn\":1}]', '', null, 'LX221', '4');
INSERT INTO `tb_order` VALUES ('64', '2015-04-19 14:16:02', '2015-04-19 14:16:02', '7', '46', '0', '1', '待发货', '', '基本款帽子(65.0克)', '2015-04-11 00:00:00', '2015-06-01 00:00:00', null, 'FWA20064', '3', null, null, '0', null, 'resource.fuwei.com/images/sample/1429277835310CatchAB38(04-03-(04-17-21-35-55).jpg', '1', '基本款帽子', 'FWA30066', '27H*20W', '65', '12', '66', '0', null, 'resource.fuwei.com/images/sample/s/1429277835310CatchAB38(04-03-(04-17-21-35-55).png', 'resource.fuwei.com/images/sample/ss/1429277835310CatchAB38(04-03-(04-17-21-35-55).png', '20738', '[{\"color\":\"01X米色\",\"id\":1,\"price\":0,\"produce_weight\":55,\"quantity\":7304,\"size\":\"27高*20寛\",\"weight\":56,\"yarn\":1},{\"color\":\"84X咖啡色\",\"id\":2,\"price\":0,\"produce_weight\":55,\"quantity\":6130,\"size\":\"27高*20寛\",\"weight\":56,\"yarn\":1},{\"color\":\"09X712\",\"id\":3,\"price\":0,\"produce_weight\":55,\"quantity\":7304,\"size\":\"27*20\",\"weight\":56,\"yarn\":1}]', '', null, 'LX221', '4');
INSERT INTO `tb_order` VALUES ('65', '2015-04-19 14:30:18', '2015-04-19 14:30:18', '7', '46', '0', '1', '待发货', '', '基本款卷边围脖(125.0克)', '2015-04-11 00:00:00', '2015-07-01 00:00:00', null, 'FWA20065', '3', null, null, '0', null, 'resource.fuwei.com/images/sample/1429277776981Catch2C4E(03-27-(04-17-21-34-43).jpg', '1', '基本款卷边围脖', 'FWA30065', '30W*2*45H', '125', '12', '65', '0', null, 'resource.fuwei.com/images/sample/s/1429277776981Catch2C4E(03-27-(04-17-21-34-43).png', 'resource.fuwei.com/images/sample/ss/1429277776981Catch2C4E(03-27-(04-17-21-34-43).png', '36960', '[{\"color\":\"01X   米色\",\"id\":1,\"price\":0,\"produce_weight\":210,\"quantity\":10560,\"size\":\"33x2*50\",\"weight\":210,\"yarn\":1},{\"color\":\"84X咖啡色\",\"id\":2,\"price\":0,\"produce_weight\":210,\"quantity\":9000,\"size\":\"33x2*50\",\"weight\":210,\"yarn\":1},{\"color\":\"28X土黄\",\"id\":3,\"price\":0,\"produce_weight\":210,\"quantity\":6840,\"size\":\"33x2*50\",\"weight\":210,\"yarn\":1},{\"color\":\"09X712\",\"id\":4,\"price\":0,\"produce_weight\":210,\"quantity\":10560,\"size\":\"33x2*50\",\"weight\":210,\"yarn\":1}]', '', null, 'LX194', '4');
INSERT INTO `tb_order` VALUES ('66', '2015-04-19 15:05:26', '2015-04-19 15:05:26', '7', '25', '0', '1', '待发货', '', '晴纶纱绞花线球帽(92.0克)', '2015-03-20 00:00:00', '2015-06-30 00:00:00', null, 'FWA20066', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/1429271014381图片4.jpg', '1', '晴纶纱绞花线球帽', 'FWA30064', '23高*21宽中', '92', '8', '64', '0', null, 'resource.fuwei.com/images/sample/s/1429271014381图片4.png', 'resource.fuwei.com/images/sample/ss/1429271014381图片4.png', '4900', '[{\"color\":\"LS-紫色\",\"id\":1,\"price\":0,\"produce_weight\":64,\"quantity\":2200,\"size\":\"23高*22寛+边6\",\"weight\":91,\"yarn\":1},{\"color\":\"LS-黑色\",\"id\":2,\"price\":0,\"produce_weight\":64,\"quantity\":2700,\"size\":\"23高*22寛+边6\",\"weight\":91,\"yarn\":1}]', '', null, 'HI-TEC', '2');
INSERT INTO `tb_order` VALUES ('67', '2015-04-19 15:17:28', '2015-04-19 15:17:28', '7', '31', '0', '1', '待发货', '', '37毛晴印五角星围脖(195.0克)', '2015-03-06 00:00:00', '2015-06-15 00:00:00', null, 'FWA20067', '2', null, null, '0', null, 'resource.fuwei.com/images/sample/1429269734358图片4.png', '3', '37毛晴印五角星围脖', 'FWA30063', '34宽*37长', '195', '11', '63', '0', null, 'resource.fuwei.com/images/sample/s/1429269734358图片4.png', 'resource.fuwei.com/images/sample/ss/1429269734358图片4.png', '1431', '[{\"color\":\"EY深灰\",\"id\":1,\"price\":0,\"produce_weight\":195,\"quantity\":1431,\"size\":\"34寛*37长\",\"weight\":195,\"yarn\":3}]', '', null, 'EY15-43', '3');
INSERT INTO `tb_order` VALUES ('68', '2015-04-19 15:46:38', '2015-04-19 15:46:38', '7', '21', '0', '1', '待发货', '', 'AB线混色四角帽(100.0克)', '2015-04-09 00:00:00', '2015-05-25 00:00:00', null, 'FWA20068', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/1429269560246图片3.png', '11', 'AB线混色四角帽', 'FWA30061', '童款5个尺码', '100', '8', '61', '0', null, 'resource.fuwei.com/images/sample/s/1429269560246图片3.png', 'resource.fuwei.com/images/sample/ss/1429269560246图片3.png', '8926', '[{\"color\":\"灰色组\",\"id\":1,\"price\":0,\"produce_weight\":103,\"quantity\":537,\"size\":\"3-4\",\"weight\":89,\"yarn\":11},{\"color\":\"灰色组\",\"id\":2,\"price\":0,\"produce_weight\":119,\"quantity\":881,\"size\":\"5-6\",\"weight\":97,\"yarn\":11},{\"color\":\"灰色组\",\"id\":3,\"price\":0,\"produce_weight\":124,\"quantity\":1876,\"size\":\"7-10\",\"weight\":110,\"yarn\":11},{\"color\":\"灰色组\",\"id\":4,\"price\":0,\"produce_weight\":138,\"quantity\":1005,\"size\":\"11-13\",\"weight\":124,\"yarn\":11},{\"color\":\"灰色组\",\"id\":5,\"price\":0,\"produce_weight\":148,\"quantity\":426,\"size\":\"14-16\",\"weight\":134,\"yarn\":11},{\"color\":\"蓝色组\",\"id\":6,\"price\":0,\"produce_weight\":110,\"quantity\":501,\"size\":\"3-4\",\"weight\":96,\"yarn\":11},{\"color\":\"蓝色组\",\"id\":7,\"price\":0,\"produce_weight\":126,\"quantity\":763,\"size\":\"5-6\",\"weight\":112,\"yarn\":11},{\"color\":\"蓝色组\",\"id\":8,\"price\":0,\"produce_weight\":138,\"quantity\":1652,\"size\":\"7-10\",\"weight\":124,\"yarn\":11},{\"color\":\"蓝色组\",\"id\":9,\"price\":0,\"produce_weight\":149,\"quantity\":1033,\"size\":\"11-13\",\"weight\":135,\"yarn\":11},{\"color\":\"蓝色组\",\"id\":10,\"price\":0,\"produce_weight\":160,\"quantity\":252,\"size\":\"14-16\",\"weight\":146,\"yarn\":11}]', '', null, 'FWA30061', '2');
INSERT INTO `tb_order` VALUES ('69', '2015-04-19 16:03:09', '2015-04-19 16:03:09', '7', '37', '0', '1', '待发货', '', '马海毛大肚纱挂须围巾(228.0克)', '2015-04-02 00:00:00', '2015-07-25 00:00:00', null, 'FWA20069', '3', null, null, '0', null, 'resource.fuwei.com/images/sample/1429268606560QQ截图20150417190145.jpg', '9', '马海毛大肚纱挂须围巾', 'FWA30055', '180*25+20*2cm', '228', '11', '55', '0', null, 'resource.fuwei.com/images/sample/s/1429268606560QQ截图20150417190145.png', 'resource.fuwei.com/images/sample/ss/1429268606560QQ截图20150417190145.png', '2095', '[{\"color\":\"黑色\",\"id\":1,\"price\":0,\"produce_weight\":192,\"quantity\":2095,\"size\":\"180*25+20须\",\"weight\":228,\"yarn\":9}]', '', null, 'G8008S', '3');
INSERT INTO `tb_order` VALUES ('70', '2015-04-19 16:24:33', '2015-04-19 16:24:33', '7', '37', '0', '1', '待发货', '', '马海毛大肚纱帽子(72.0克)', '2015-04-02 00:00:00', '2015-07-25 00:00:00', null, 'FWA20070', '3', null, null, '0', null, 'resource.fuwei.com/images/sample/1429268663295QQ截图20150417190319.jpg', '9', '马海毛大肚纱帽子', 'FWA30056', '22W*21H+11CM球', '72', '11', '56', '0', null, 'resource.fuwei.com/images/sample/s/1429268663295QQ截图20150417190319.png', 'resource.fuwei.com/images/sample/ss/1429268663295QQ截图20150417190319.png', '2095', '[{\"color\":\"G8黑色\",\"id\":1,\"price\":0,\"produce_weight\":42,\"quantity\":2095,\"size\":\"21高*22寛+球11公分\",\"weight\":72,\"yarn\":9}]', '', null, 'G8088H', '3');
INSERT INTO `tb_order` VALUES ('71', '2015-04-19 16:33:55', '2015-04-19 16:33:55', '7', '37', '0', '1', '待发货', '', '马海毛冰岛毛挂须围巾(210.0克)', '2015-04-02 00:00:00', '2015-07-25 00:00:00', null, 'FWA20071', '3', null, null, '0', null, 'resource.fuwei.com/images/sample/1429268721077图片1.jpg', '6', '马海毛冰岛毛挂须围巾', 'FWA30057', '180*25+20*2cm', '210', '6', '57', '0', null, 'resource.fuwei.com/images/sample/s/1429268721077图片1.png', 'resource.fuwei.com/images/sample/ss/1429268721077图片1.png', '3600', '[{\"color\":\"多色\",\"id\":1,\"price\":0,\"produce_weight\":220,\"quantity\":3600,\"size\":\"180*25+须20\",\"weight\":210,\"yarn\":9}]', '', null, 'G5166', '3');
INSERT INTO `tb_order` VALUES ('72', '2015-04-19 17:22:16', '2015-04-19 17:22:16', '7', '47', '0', '1', '待发货', '', '冰岛毛菱形绞花毛球帽(126.0克)', '2015-04-03 00:00:00', '2015-06-10 00:00:00', null, 'FWA20072', '5', null, null, '0', null, 'resource.fuwei.com/images/sample/1429018848017QQ截图20150414213921.jpg', '6', '冰岛毛菱形绞花毛球帽', 'FWA30045', '20H*21W+9球+5翻边', '126', '11', '45', '0', null, 'resource.fuwei.com/images/sample/s/1429018848017QQ截图20150414213921.png', 'resource.fuwei.com/images/sample/ss/1429018848017QQ截图20150414213921.png', '15784', '[{\"color\":\"SLI黑色\",\"id\":1,\"price\":0,\"produce_weight\":108,\"quantity\":4416,\"size\":\"20*20+边\",\"weight\":126,\"yarn\":6},{\"color\":\"SLI米白\",\"id\":2,\"price\":0,\"produce_weight\":108,\"quantity\":872,\"size\":\"20*20+边\",\"weight\":126,\"yarn\":6},{\"color\":\"SLI暗红\",\"id\":3,\"price\":0,\"produce_weight\":108,\"quantity\":10496,\"size\":\"20*20+边\",\"weight\":126,\"yarn\":6}]', '', null, 'SLI-0196', '3');
INSERT INTO `tb_order` VALUES ('73', '2015-04-19 17:29:35', '2015-04-19 17:29:35', '7', '47', '0', '1', '待发货', '', '马海毛绞花毛球帽(80.0克)', '2015-04-03 00:00:00', '2015-06-10 00:00:00', null, 'FWA20073', '5', null, null, '0', null, 'resource.fuwei.com/images/sample/142901871084274030-RR-04-264beret with fake fur pompom 74030 264 30 600 001.jpg', '9', '马海毛绞花毛球帽', 'FWA30044', 'D:25', '80', '11', '44', '0', null, 'resource.fuwei.com/images/sample/s/142901871084274030-RR-04-264beret with fake fur pompom 74030 264 30 600 001.png', 'resource.fuwei.com/images/sample/ss/142901871084274030-RR-04-264beret with fake fur pompom 74030 264 30 600 001.png', '872', '[{\"color\":\"712\",\"id\":1,\"price\":0,\"produce_weight\":65,\"quantity\":872,\"size\":\"26\",\"weight\":80,\"yarn\":9}]', '', null, 'SLI-0194', '3');
INSERT INTO `tb_order` VALUES ('74', '2015-04-20 14:45:04', '2015-04-20 14:45:04', '7', '46', '0', '1', '待发货', '', '冰岛毛桂花针围脖(220.0克)', '2015-01-16 00:00:00', '2015-05-10 00:00:00', null, 'FWA20074', '3', null, null, '0', null, 'resource.fuwei.com/images/sample/1429510448046图片1.jpg', '5', '冰岛毛桂花针围脖', 'FWA30077', '69*2*37cm', '220', '12', '77', '0', null, 'resource.fuwei.com/images/sample/s/1429510448046图片1.png', 'resource.fuwei.com/images/sample/ss/1429510448046图片1.png', '1030', '[{\"color\":\"712#\",\"id\":1,\"price\":0,\"produce_weight\":220,\"quantity\":1030,\"size\":\"69x2*37\",\"weight\":220,\"yarn\":5}]', '', null, 'G9074T', '4');
INSERT INTO `tb_order` VALUES ('75', '2015-04-20 14:51:33', '2015-04-20 14:51:33', '7', '46', '0', '1', '待发货', '', '冰岛毛桂花针比尼帽(59.0克)', '2015-01-16 00:00:00', '2015-05-10 00:00:00', null, 'FWA20075', '3', null, null, '0', null, 'resource.fuwei.com/images/sample/1429510395701图片1.jpg', '5', '冰岛毛桂花针比尼帽', 'FWA30076', '25宽*26高', '59', '12', '76', '0', null, 'resource.fuwei.com/images/sample/s/1429510395701图片1.png', 'resource.fuwei.com/images/sample/ss/1429510395701图片1.png', '1030', '[{\"color\":\"712\",\"id\":1,\"price\":0,\"produce_weight\":58,\"quantity\":1030,\"size\":\"26高*25寛\",\"weight\":58,\"yarn\":5}]', '', null, 'G9074H', '4');
INSERT INTO `tb_order` VALUES ('76', '2015-04-20 15:07:14', '2015-04-20 15:07:14', '7', '5', '0', '1', '待发货', '', '冰岛毛+亮丝围脖(265.0克)', '2015-04-16 00:00:00', '2015-07-20 00:00:00', null, 'FWA20076', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/1429361118687QQ截图20150418204401.jpg', '6', '冰岛毛+亮丝围脖', 'FWA30071', '40*40cm', '265', '6', '71', '0', null, 'resource.fuwei.com/images/sample/s/1429361118687QQ截图20150418204401.png', 'resource.fuwei.com/images/sample/ss/1429361118687QQ截图20150418204401.png', '1902', '[{\"color\":\"9008-白色\",\"id\":1,\"price\":0,\"produce_weight\":275,\"quantity\":1101,\"size\":\"40*40\",\"weight\":265,\"yarn\":6},{\"color\":\"9008-黑色\",\"id\":2,\"price\":0,\"produce_weight\":275,\"quantity\":801,\"size\":\"40*40\",\"weight\":265,\"yarn\":6}]', '', null, '90084601', '1');
INSERT INTO `tb_order` VALUES ('77', '2015-04-20 15:17:28', '2015-04-20 15:17:28', '7', '5', '0', '1', '待发货', '', '冰岛毛+亮丝吊球帽(73.0克)', '2015-04-16 00:00:00', '2015-07-20 00:00:00', null, 'FWA20077', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/1429361058061QQ截图20150418204258.jpg', '6', '冰岛毛+亮丝吊球帽', 'FWA30070', '22高21宽+8球', '73', '10', '70', '0', null, 'resource.fuwei.com/images/sample/s/1429361058061QQ截图20150418204258.png', 'resource.fuwei.com/images/sample/ss/1429361058061QQ截图20150418204258.png', '1902', '[{\"color\":\"9008黑色\",\"id\":1,\"price\":0,\"produce_weight\":60,\"quantity\":801,\"size\":\"22*21+球8公分\",\"weight\":73,\"yarn\":6},{\"color\":\"9008白色\",\"id\":2,\"price\":0,\"produce_weight\":60,\"quantity\":1101,\"size\":\"22*21+球6公分\",\"weight\":73,\"yarn\":6}]', '', null, '90084601', '1');
INSERT INTO `tb_order` VALUES ('78', '2015-04-20 15:29:00', '2015-04-20 15:29:00', '7', '5', '0', '1', '待发货', '', '冰岛毛正反针扭围脖(290.0克)', '2015-04-16 00:00:00', '2015-06-05 00:00:00', null, 'FWA20078', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/1429360970715图片1.jpg', '31', '冰岛毛正反针扭围脖', 'FWA30069', '40*30cm', '290', '10', '69', '0', null, 'resource.fuwei.com/images/sample/s/1429360970715图片1.png', 'resource.fuwei.com/images/sample/ss/1429360970715图片1.png', '3204', '[{\"color\":\"红色\",\"id\":1,\"price\":0,\"produce_weight\":290,\"quantity\":1002,\"size\":\"39*28\",\"weight\":290,\"yarn\":31},{\"color\":\"粉色\",\"id\":2,\"price\":0,\"produce_weight\":290,\"quantity\":1002,\"size\":\"39*28\",\"weight\":290,\"yarn\":31},{\"color\":\"米色\",\"id\":3,\"price\":0,\"produce_weight\":290,\"quantity\":1200,\"size\":\"39*28\",\"weight\":290,\"yarn\":31}]', '', null, '90084501', '1');
INSERT INTO `tb_order` VALUES ('79', '2015-04-23 14:31:05', '2015-04-23 14:31:05', '7', '5', '0', '1', '待发货', '', '晴纶亮丝帽子(45.0克)', '2015-04-16 00:00:00', '2015-07-20 00:00:00', null, 'FWA20079', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/1429361215032图片1.jpg', '1', '晴纶亮丝帽子', 'FWA30073', 'D:26', '45', '10', '73', '0', null, 'resource.fuwei.com/images/sample/s/1429361215032图片1.png', 'resource.fuwei.com/images/sample/ss/1429361215032图片1.png', '2103', '[{\"color\":\"4601-藏青\",\"id\":1,\"price\":0,\"produce_weight\":45,\"quantity\":801,\"size\":\"26\",\"weight\":45,\"yarn\":1},{\"color\":\"4601-夹花棕\",\"id\":2,\"price\":0,\"produce_weight\":45,\"quantity\":702,\"size\":\"26\",\"weight\":45,\"yarn\":1},{\"color\":\"4601-红色\",\"id\":3,\"price\":0,\"produce_weight\":45,\"quantity\":600,\"size\":\"26\",\"weight\":45,\"yarn\":1}]', '', null, '90084601', '1');
INSERT INTO `tb_order` VALUES ('80', '2015-04-23 14:42:14', '2015-04-23 14:42:14', '7', '5', '0', '1', '待发货', '', '晴纶亮丝围巾(130.0克)', '2015-04-16 00:00:00', '2015-07-20 00:00:00', null, 'FWA20080', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/1429361166391图片1.jpg', '1', '晴纶亮丝围巾', 'FWA30072', '176*50cm', '130', '10', '72', '0', null, 'resource.fuwei.com/images/sample/s/1429361166391图片1.png', 'resource.fuwei.com/images/sample/ss/1429361166391图片1.png', '2103', '[{\"color\":\"4601藏青\",\"id\":1,\"price\":0,\"produce_weight\":130,\"quantity\":801,\"size\":\"176*50\",\"weight\":130,\"yarn\":1},{\"color\":\"4601夹花棕\",\"id\":2,\"price\":0,\"produce_weight\":130,\"quantity\":702,\"size\":\"176*50\",\"weight\":130,\"yarn\":1},{\"color\":\"4601红色\",\"id\":3,\"price\":0,\"produce_weight\":130,\"quantity\":600,\"size\":\"176*50\",\"weight\":130,\"yarn\":1}]', '', null, '90084601', '1');
INSERT INTO `tb_order` VALUES ('81', '2015-04-24 12:46:27', '2015-04-24 12:46:27', '7', '31', '0', '1', '待发货', '', '全晴围脖(80.0克)', '2015-04-02 00:00:00', '2015-04-20 00:00:00', null, 'FWA20081', '2', null, null, '0', null, 'resource.fuwei.com/images/sample/1429772959897QQ截图20150423150800.jpg', '1', '全晴围脖', 'FWA30084', '60*40*2cm', '80', '11', '84', '0', null, 'resource.fuwei.com/images/sample/s/1429772959897QQ截图20150423150800.png', 'resource.fuwei.com/images/sample/ss/1429772959897QQ截图20150423150800.png', '1120', '[{\"color\":\"072粉色\",\"id\":1,\"price\":0,\"produce_weight\":80,\"quantity\":560,\"size\":\"40x2*60\",\"weight\":80,\"yarn\":1},{\"color\":\"712\",\"id\":2,\"price\":0,\"produce_weight\":80,\"quantity\":560,\"size\":\"40x2*60\",\"weight\":80,\"yarn\":1}]', '', null, 'EY15-072', '3');
INSERT INTO `tb_order` VALUES ('82', '2015-04-24 12:52:28', '2015-04-24 12:52:28', '7', '31', '0', '1', '待发货', '', '全晴罗纹帽(61.0克)', '2015-04-02 00:00:00', '2015-05-20 00:00:00', null, 'FWA20082', '2', null, null, '0', null, 'resource.fuwei.com/images/sample/1429772904364QQ截图20150423150655.jpg', '1', '全晴罗纹帽', 'FWA30083', '21*28cm', '61', '11', '83', '0', null, 'resource.fuwei.com/images/sample/s/1429772904364QQ截图20150423150655.png', 'resource.fuwei.com/images/sample/ss/1429772904364QQ截图20150423150655.png', '1120', '[{\"color\":\"072粉色\",\"id\":1,\"price\":0,\"produce_weight\":61,\"quantity\":560,\"size\":\"21寛*28高\",\"weight\":54,\"yarn\":1},{\"color\":\"712\",\"id\":2,\"price\":0,\"produce_weight\":61,\"quantity\":560,\"size\":\"21寛*28高\",\"weight\":54,\"yarn\":1}]', '', null, 'EY15-072', '3');
INSERT INTO `tb_order` VALUES ('83', '2015-04-24 13:02:43', '2015-04-24 13:02:43', '7', '31', '0', '1', '待发货', '', '烫金披肩(350.0克)', '2015-04-07 00:00:00', '2015-05-25 00:00:00', null, 'FWA20083', '2', null, null, '0', null, 'resource.fuwei.com/images/sample/1429772818065图片1.jpg', '1', '烫金披肩', 'FWA30082', '披肩尺寸', '350', '11', '82', '0', null, 'resource.fuwei.com/images/sample/s/1429772818065图片1.png', 'resource.fuwei.com/images/sample/ss/1429772818065图片1.png', '639', '[{\"color\":\"黑灰组\",\"id\":1,\"price\":0,\"produce_weight\":350,\"quantity\":639,\"size\":\"114*127\",\"weight\":350,\"yarn\":1}]', '', null, 'EY15-081', '3');
INSERT INTO `tb_order` VALUES ('84', '2015-04-24 13:13:59', '2015-04-24 13:13:59', '7', '31', '0', '1', '待发货', '', '烫金披肩(350.0克)', '2015-03-14 00:00:00', '2015-05-05 00:00:00', null, 'FWA20084', '2', null, null, '0', null, 'resource.fuwei.com/images/sample/1429772818065图片1.jpg', '1', '烫金披肩', 'FWA30082', '披肩尺寸', '350', '11', '82', '0', null, 'resource.fuwei.com/images/sample/s/1429772818065图片1.png', 'resource.fuwei.com/images/sample/ss/1429772818065图片1.png', '5200', '[{\"color\":\"灰色组\",\"id\":1,\"price\":0,\"produce_weight\":350,\"quantity\":4400,\"size\":\"114*127\",\"weight\":350,\"yarn\":1},{\"color\":\"黑色组\",\"id\":2,\"price\":0,\"produce_weight\":350,\"quantity\":800,\"size\":\"114*127\",\"weight\":350,\"yarn\":1}]', '', null, 'EY15-050', '3');
INSERT INTO `tb_order` VALUES ('85', '2015-04-24 13:34:42', '2015-04-24 13:34:42', '7', '29', '0', '1', '待发货', '', '毛皮领(75.0克)', '2015-03-10 00:00:00', '2015-07-07 00:00:00', null, 'FWA20085', '4', null, null, '0', null, 'resource.fuwei.com/images/sample/1429772105828图片1.png', '27', '毛皮领', 'FWA30078', '65*18', '75', '11', '78', '0', null, 'resource.fuwei.com/images/sample/s/1429772105828图片1.png', 'resource.fuwei.com/images/sample/ss/1429772105828图片1.png', '1059', '[{\"color\":\"灰色\",\"id\":1,\"price\":0,\"produce_weight\":75,\"quantity\":1059,\"size\":\"66*15.5\",\"weight\":75,\"yarn\":30}]', '', null, 'QY15-091', '3');
INSERT INTO `tb_order` VALUES ('86', '2015-04-25 09:25:59', '2015-04-25 09:25:59', '7', '18', '0', '1', '待发货', '', '针织加舒棉绒围脖(235.0克)', '2015-03-17 00:00:00', '2015-05-17 00:00:00', null, 'FWA20086', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/1429772410711TDYC008.JPG', '1', '针织加舒棉绒围脖', 'FWA30080', '40*40cm', '235', '8', '80', '0', null, 'resource.fuwei.com/images/sample/s/1429772410711TDYC008.png', 'resource.fuwei.com/images/sample/ss/1429772410711TDYC008.png', '1550', '[{\"color\":\"c008藏青\",\"id\":1,\"price\":0,\"produce_weight\":165,\"quantity\":720,\"size\":\"40*40\",\"weight\":235,\"yarn\":1},{\"color\":\"c008卡其\",\"id\":2,\"price\":0,\"produce_weight\":165,\"quantity\":830,\"size\":\"40*40\",\"weight\":235,\"yarn\":1}]', '', null, 'TDYC008 ', '2');
INSERT INTO `tb_order` VALUES ('87', '2015-04-27 08:07:56', '2015-04-27 08:07:56', '7', '18', '1040', '1', '待发货', '', '马海毛亮丝手套(50.0克)', '2015-04-16 00:00:00', '2015-06-15 00:00:00', null, 'FWA20087', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/1428650265434图片2.jpg', '10', '马海毛亮丝手套', 'FWA30037', '23*9cm', '50', '8', '37', '0', null, 'resource.fuwei.com/images/sample/s/1428650265434图片2.png', 'resource.fuwei.com/images/sample/ss/1428650265434图片2.png', '1040', '[{\"color\":\"黑色\",\"id\":1,\"price\":1,\"produce_weight\":46,\"quantity\":420,\"size\":\"23*9\",\"weight\":50,\"yarn\":10},{\"color\":\"褐色\",\"id\":2,\"price\":1,\"produce_weight\":46,\"quantity\":150,\"size\":\"23*9\",\"weight\":50,\"yarn\":10},{\"color\":\"灰色\",\"id\":3,\"price\":1,\"produce_weight\":46,\"quantity\":270,\"size\":\"23*9\",\"weight\":50,\"yarn\":10},{\"color\":\"白色\",\"id\":4,\"price\":1,\"produce_weight\":46,\"quantity\":200,\"size\":\"23*9\",\"weight\":50,\"yarn\":10}]', '', null, 'M86500', '2');
INSERT INTO `tb_order` VALUES ('88', '2015-04-27 08:24:57', '2015-04-27 08:24:57', '7', '18', '4429.6', '1', '待发货', '', '马海毛亮丝帽子(70.0克)', '2015-04-16 00:00:00', '2015-06-10 00:00:00', null, 'FWA20088', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/1428650207511图片2.jpg', '10', '马海毛亮丝帽子', 'FWA30036', '28*21.6cm', '70', '8', '36', '0', null, 'resource.fuwei.com/images/sample/s/1428650207511图片2.png', 'resource.fuwei.com/images/sample/ss/1428650207511图片2.png', '6328', '[{\"color\":\"黑色\",\"id\":1,\"price\":0.7,\"produce_weight\":70,\"quantity\":2654,\"size\":\"28*21.5寛\",\"weight\":70,\"yarn\":10},{\"color\":\"棕色\",\"id\":2,\"price\":0.7,\"produce_weight\":70,\"quantity\":1318,\"size\":\"28*21.5寛\",\"weight\":70,\"yarn\":10},{\"color\":\"白色\",\"id\":3,\"price\":0.7,\"produce_weight\":70,\"quantity\":2066,\"size\":\"28*21.5寛\",\"weight\":70,\"yarn\":10},{\"color\":\"灰色\",\"id\":4,\"price\":0.7,\"produce_weight\":70,\"quantity\":290,\"size\":\"28*21.5寛\",\"weight\":70,\"yarn\":10}]', '', null, 'M21500', '2');
INSERT INTO `tb_order` VALUES ('89', '2015-04-27 08:45:32', '2015-04-27 08:45:32', '7', '18', '0', '1', '待发货', '', '马海毛正反针围脖(155.0克)', '2015-04-16 00:00:00', '2015-06-15 00:00:00', null, 'FWA20089', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/1428381118194图片1.jpg', '10', '马海毛正反针围脖', 'FWA30028', '35.5*127cm', '155', '8', '28', '0', null, 'resource.fuwei.com/images/sample/s/1428381118194图片1.png', 'resource.fuwei.com/images/sample/ss/1428381118194图片1.png', '6508', '[{\"color\":\"黑色\",\"id\":1,\"price\":0,\"produce_weight\":155,\"quantity\":3093,\"size\":\"63.5x2*35.5\",\"weight\":155,\"yarn\":10},{\"color\":\"棕色\",\"id\":2,\"price\":0,\"produce_weight\":155,\"quantity\":1430,\"size\":\"63.5x2*35.5\",\"weight\":155,\"yarn\":10},{\"color\":\"白色\",\"id\":3,\"price\":0,\"produce_weight\":155,\"quantity\":1329,\"size\":\"63.5x2*35.5\",\"weight\":155,\"yarn\":10},{\"color\":\"褐色\",\"id\":4,\"price\":0,\"produce_weight\":155,\"quantity\":350,\"size\":\"63.5x2*35.5\",\"weight\":155,\"yarn\":10},{\"color\":\"灰色\",\"id\":5,\"price\":0,\"produce_weight\":155,\"quantity\":306,\"size\":\"63.5x2*35.5\",\"weight\":155,\"yarn\":10}]', '', null, 'M49500', '2');
INSERT INTO `tb_order` VALUES ('90', '2015-04-30 13:32:44', '2015-04-30 13:39:41', '7', '36', '0', '1', '待发货', '', '马海毛五角星围脖(120.0克)', '2015-04-15 00:00:00', '2015-07-07 00:00:00', null, 'FWA20090', '3', null, null, '0', null, 'resource.fuwei.com/images/sample/1430271663000GIRLS ANNI TUBE SCARF.JPG', '10', '马海毛五角星围脖', 'FWA30091', '56*85*2cm', '120', '12', '91', '0', null, 'resource.fuwei.com/images/sample/s/1430271663000GIRLS ANNI TUBE SCARF.png', 'resource.fuwei.com/images/sample/ss/1430271663000GIRLS ANNI TUBE SCARF.png', '1200', '[{\"color\":\"714\",\"id\":1,\"price\":0,\"produce_weight\":110,\"quantity\":1200,\"size\":\"85x2*56\",\"weight\":120,\"yarn\":10}]', '', null, 'GIRLS', '4');
INSERT INTO `tb_order` VALUES ('91', '2015-05-02 16:28:24', '2015-05-02 16:28:24', '7', '3', '0', '1', '待发货', '', '马海毛珠片纱吊球帽(80.0克)', '2014-12-29 00:00:00', '2015-04-17 00:00:00', null, 'FWA20091', '1', null, null, '0', null, 'resource.fuwei.com/images/sample/1430554256869图片1.jpg', '9', '马海毛珠片纱吊球帽', 'FWA30109', '23*23cm', '80', '10', '109', '0', null, 'resource.fuwei.com/images/sample/s/1430554256869图片1.png', 'resource.fuwei.com/images/sample/ss/1430554256869图片1.png', '2800', '[{\"color\":\"粉色\",\"id\":1,\"price\":0,\"produce_weight\":80,\"quantity\":500,\"size\":\"23*23\",\"weight\":89,\"yarn\":9},{\"color\":\"黑色\",\"id\":2,\"price\":0,\"produce_weight\":80,\"quantity\":1500,\"size\":\"23*23\",\"weight\":89,\"yarn\":9},{\"color\":\"本白\",\"id\":3,\"price\":0,\"produce_weight\":80,\"quantity\":800,\"size\":\"23*23\",\"weight\":89,\"yarn\":9}]', '', null, '72505', '1');
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
INSERT INTO `tb_order_handle` VALUES ('18', '17', '创建订单', '1', '待发货', null, '7', '2015-04-04 14:45:55');
INSERT INTO `tb_order_handle` VALUES ('19', '18', '创建订单', '1', '待发货', null, '7', '2015-04-04 17:06:38');
INSERT INTO `tb_order_handle` VALUES ('20', '19', '创建订单', '1', '待发货', null, '7', '2015-04-04 17:24:04');
INSERT INTO `tb_order_handle` VALUES ('21', '20', '创建订单', '1', '待发货', null, '7', '2015-04-06 12:30:59');
INSERT INTO `tb_order_handle` VALUES ('22', '21', '创建订单', '1', '待发货', null, '7', '2015-04-06 14:26:11');
INSERT INTO `tb_order_handle` VALUES ('23', '22', '创建订单', '1', '待发货', null, '7', '2015-04-07 17:20:08');
INSERT INTO `tb_order_handle` VALUES ('24', '23', '创建订单', '1', '待发货', null, '7', '2015-04-08 07:59:02');
INSERT INTO `tb_order_handle` VALUES ('25', '24', '创建订单', '1', '待发货', null, '7', '2015-04-08 08:05:51');
INSERT INTO `tb_order_handle` VALUES ('26', '25', '创建订单', '1', '待发货', null, '7', '2015-04-08 09:20:30');
INSERT INTO `tb_order_handle` VALUES ('27', '25', '修改订单', '0', null, null, '7', '2015-04-08 09:23:26');
INSERT INTO `tb_order_handle` VALUES ('28', '26', '创建订单', '1', '待发货', null, '7', '2015-04-08 09:30:20');
INSERT INTO `tb_order_handle` VALUES ('29', '23', '修改订单', '0', null, null, '7', '2015-04-08 09:40:53');
INSERT INTO `tb_order_handle` VALUES ('30', '27', '创建订单', '1', '待发货', null, '7', '2015-04-08 10:05:42');
INSERT INTO `tb_order_handle` VALUES ('31', '28', '创建订单', '1', '待发货', null, '7', '2015-04-08 15:00:58');
INSERT INTO `tb_order_handle` VALUES ('32', '29', '创建订单', '1', '待发货', null, '7', '2015-04-08 15:55:25');
INSERT INTO `tb_order_handle` VALUES ('33', '30', '创建订单', '1', '待发货', null, '7', '2015-04-10 11:03:32');
INSERT INTO `tb_order_handle` VALUES ('34', '31', '创建订单', '1', '待发货', null, '7', '2015-04-10 17:08:23');
INSERT INTO `tb_order_handle` VALUES ('35', '32', '创建订单', '1', '待发货', null, '7', '2015-04-10 17:41:20');
INSERT INTO `tb_order_handle` VALUES ('36', '33', '创建订单', '1', '待发货', null, '7', '2015-04-10 17:57:18');
INSERT INTO `tb_order_handle` VALUES ('37', '33', '修改订单', '0', null, null, '6', '2015-04-13 16:10:43');
INSERT INTO `tb_order_handle` VALUES ('38', '34', '创建订单', '1', '待发货', null, '7', '2015-04-15 14:29:31');
INSERT INTO `tb_order_handle` VALUES ('39', '35', '创建订单', '1', '待发货', null, '7', '2015-04-15 15:17:14');
INSERT INTO `tb_order_handle` VALUES ('40', '35', '修改订单', '0', null, null, '7', '2015-04-15 15:22:00');
INSERT INTO `tb_order_handle` VALUES ('41', '36', '创建订单', '1', '待发货', null, '7', '2015-04-15 15:51:10');
INSERT INTO `tb_order_handle` VALUES ('42', '37', '创建订单', '1', '待发货', null, '7', '2015-04-15 16:33:31');
INSERT INTO `tb_order_handle` VALUES ('43', '38', '创建订单', '1', '待发货', null, '7', '2015-04-15 16:47:51');
INSERT INTO `tb_order_handle` VALUES ('44', '39', '创建订单', '1', '待发货', null, '7', '2015-04-15 16:52:54');
INSERT INTO `tb_order_handle` VALUES ('45', '40', '创建订单', '1', '待发货', null, '7', '2015-04-15 17:02:09');
INSERT INTO `tb_order_handle` VALUES ('46', '41', '创建订单', '1', '待发货', null, '7', '2015-04-15 17:14:55');
INSERT INTO `tb_order_handle` VALUES ('47', '42', '创建订单', '1', '待发货', null, '7', '2015-04-16 17:34:03');
INSERT INTO `tb_order_handle` VALUES ('48', '43', '创建订单', '1', '待发货', null, '7', '2015-04-17 15:32:22');
INSERT INTO `tb_order_handle` VALUES ('49', '44', '创建订单', '1', '待发货', null, '7', '2015-04-17 16:07:07');
INSERT INTO `tb_order_handle` VALUES ('50', '44', '修改订单', '0', null, null, '7', '2015-04-17 16:10:04');
INSERT INTO `tb_order_handle` VALUES ('51', '44', '修改订单', '0', null, null, '7', '2015-04-17 16:13:16');
INSERT INTO `tb_order_handle` VALUES ('52', '45', '创建订单', '1', '待发货', null, '7', '2015-04-17 16:21:43');
INSERT INTO `tb_order_handle` VALUES ('53', '46', '创建订单', '1', '待发货', null, '7', '2015-04-17 16:45:35');
INSERT INTO `tb_order_handle` VALUES ('54', '47', '创建订单', '1', '待发货', null, '7', '2015-04-17 17:50:42');
INSERT INTO `tb_order_handle` VALUES ('55', '48', '创建订单', '1', '待发货', null, '7', '2015-04-17 18:13:54');
INSERT INTO `tb_order_handle` VALUES ('56', '49', '创建订单', '1', '待发货', null, '7', '2015-04-17 18:39:08');
INSERT INTO `tb_order_handle` VALUES ('57', '50', '创建订单', '1', '待发货', null, '7', '2015-04-18 15:13:42');
INSERT INTO `tb_order_handle` VALUES ('58', '51', '创建订单', '1', '待发货', null, '7', '2015-04-18 15:23:22');
INSERT INTO `tb_order_handle` VALUES ('59', '52', '创建订单', '1', '待发货', null, '7', '2015-04-18 15:34:38');
INSERT INTO `tb_order_handle` VALUES ('60', '53', '创建订单', '1', '待发货', null, '7', '2015-04-18 15:51:54');
INSERT INTO `tb_order_handle` VALUES ('61', '54', '创建订单', '1', '待发货', null, '7', '2015-04-18 16:17:42');
INSERT INTO `tb_order_handle` VALUES ('62', '55', '创建订单', '1', '待发货', null, '7', '2015-04-18 17:23:44');
INSERT INTO `tb_order_handle` VALUES ('63', '56', '创建订单', '1', '待发货', null, '7', '2015-04-18 17:38:20');
INSERT INTO `tb_order_handle` VALUES ('64', '57', '创建订单', '1', '待发货', null, '7', '2015-04-18 17:57:46');
INSERT INTO `tb_order_handle` VALUES ('65', '58', '创建订单', '1', '待发货', null, '7', '2015-04-18 18:04:08');
INSERT INTO `tb_order_handle` VALUES ('66', '59', '创建订单', '1', '待发货', null, '7', '2015-04-18 18:14:36');
INSERT INTO `tb_order_handle` VALUES ('67', '60', '创建订单', '1', '待发货', null, '7', '2015-04-19 10:01:23');
INSERT INTO `tb_order_handle` VALUES ('68', '61', '创建订单', '1', '待发货', null, '7', '2015-04-19 13:01:52');
INSERT INTO `tb_order_handle` VALUES ('69', '62', '创建订单', '1', '待发货', null, '7', '2015-04-19 13:27:05');
INSERT INTO `tb_order_handle` VALUES ('70', '63', '创建订单', '1', '待发货', null, '7', '2015-04-19 13:47:19');
INSERT INTO `tb_order_handle` VALUES ('71', '63', '修改订单', '0', null, null, '7', '2015-04-19 13:48:49');
INSERT INTO `tb_order_handle` VALUES ('72', '63', '取消订单', '4', '已取消', null, '9', '2015-04-19 14:09:58');
INSERT INTO `tb_order_handle` VALUES ('73', '64', '创建订单', '1', '待发货', null, '7', '2015-04-19 14:16:02');
INSERT INTO `tb_order_handle` VALUES ('74', '65', '创建订单', '1', '待发货', null, '7', '2015-04-19 14:30:18');
INSERT INTO `tb_order_handle` VALUES ('75', '66', '创建订单', '1', '待发货', null, '7', '2015-04-19 15:05:26');
INSERT INTO `tb_order_handle` VALUES ('76', '67', '创建订单', '1', '待发货', null, '7', '2015-04-19 15:17:28');
INSERT INTO `tb_order_handle` VALUES ('77', '68', '创建订单', '1', '待发货', null, '7', '2015-04-19 15:46:38');
INSERT INTO `tb_order_handle` VALUES ('78', '69', '创建订单', '1', '待发货', null, '7', '2015-04-19 16:03:09');
INSERT INTO `tb_order_handle` VALUES ('79', '70', '创建订单', '1', '待发货', null, '7', '2015-04-19 16:24:33');
INSERT INTO `tb_order_handle` VALUES ('80', '71', '创建订单', '1', '待发货', null, '7', '2015-04-19 16:33:55');
INSERT INTO `tb_order_handle` VALUES ('81', '72', '创建订单', '1', '待发货', null, '7', '2015-04-19 17:22:16');
INSERT INTO `tb_order_handle` VALUES ('82', '73', '创建订单', '1', '待发货', null, '7', '2015-04-19 17:29:35');
INSERT INTO `tb_order_handle` VALUES ('83', '74', '创建订单', '1', '待发货', null, '7', '2015-04-20 14:45:04');
INSERT INTO `tb_order_handle` VALUES ('84', '75', '创建订单', '1', '待发货', null, '7', '2015-04-20 14:51:33');
INSERT INTO `tb_order_handle` VALUES ('85', '76', '创建订单', '1', '待发货', null, '7', '2015-04-20 15:07:14');
INSERT INTO `tb_order_handle` VALUES ('86', '77', '创建订单', '1', '待发货', null, '7', '2015-04-20 15:17:28');
INSERT INTO `tb_order_handle` VALUES ('87', '78', '创建订单', '1', '待发货', null, '7', '2015-04-20 15:29:00');
INSERT INTO `tb_order_handle` VALUES ('88', '79', '创建订单', '1', '待发货', null, '7', '2015-04-23 14:31:05');
INSERT INTO `tb_order_handle` VALUES ('89', '80', '创建订单', '1', '待发货', null, '7', '2015-04-23 14:42:14');
INSERT INTO `tb_order_handle` VALUES ('90', '81', '创建订单', '1', '待发货', null, '7', '2015-04-24 12:46:27');
INSERT INTO `tb_order_handle` VALUES ('91', '82', '创建订单', '1', '待发货', null, '7', '2015-04-24 12:52:28');
INSERT INTO `tb_order_handle` VALUES ('92', '83', '创建订单', '1', '待发货', null, '7', '2015-04-24 13:02:43');
INSERT INTO `tb_order_handle` VALUES ('93', '84', '创建订单', '1', '待发货', null, '7', '2015-04-24 13:13:59');
INSERT INTO `tb_order_handle` VALUES ('94', '85', '创建订单', '1', '待发货', null, '7', '2015-04-24 13:34:42');
INSERT INTO `tb_order_handle` VALUES ('95', '86', '创建订单', '1', '待发货', null, '7', '2015-04-25 09:25:59');
INSERT INTO `tb_order_handle` VALUES ('96', '87', '创建订单', '1', '待发货', null, '7', '2015-04-27 08:07:56');
INSERT INTO `tb_order_handle` VALUES ('97', '88', '创建订单', '1', '待发货', null, '7', '2015-04-27 08:24:57');
INSERT INTO `tb_order_handle` VALUES ('98', '89', '创建订单', '1', '待发货', null, '7', '2015-04-27 08:45:32');
INSERT INTO `tb_order_handle` VALUES ('99', '90', '创建订单', '1', '待发货', null, '7', '2015-04-30 13:32:44');
INSERT INTO `tb_order_handle` VALUES ('100', '90', '修改订单', '0', null, null, '7', '2015-04-30 13:39:41');
INSERT INTO `tb_order_handle` VALUES ('101', '91', '创建订单', '1', '待发货', null, '7', '2015-05-02 16:28:24');
INSERT INTO `tb_order_handle` VALUES ('102', '44', '取消订单', '4', '已取消', null, '9', '2015-05-03 11:08:52');
INSERT INTO `tb_order_handle` VALUES ('103', '42', '取消订单', '4', '已取消', null, '9', '2015-05-03 11:10:00');
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
INSERT INTO `tb_planorder` VALUES ('17', '17', '2015-04-04 14:45:56', '2015-04-04 14:45:56', '7', '[{\"color\":\"QY114-灰色\",\"id\":1,\"price\":10.8,\"quantity\":930,\"size\":\"70*2*40cm\",\"weight\":115,\"yarn\":9},{\"color\":\"QY114-粉色\",\"id\":2,\"price\":10.8,\"quantity\":570,\"size\":\"70*2*40cm\",\"weight\":115,\"yarn\":9},{\"color\":\"QY114-酒红\",\"id\":3,\"price\":10.8,\"quantity\":930,\"size\":\"70*2*40cm\",\"weight\":115,\"yarn\":9},{\"color\":\"QY114-深驼\",\"id\":4,\"price\":10.8,\"quantity\":570,\"size\":\"70*2*40cm\",\"weight\":115,\"yarn\":9}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('18', '18', '2015-04-04 17:06:39', '2015-04-04 17:06:39', '7', '[{\"color\":\"黑色组\",\"id\":1,\"price\":14.4,\"quantity\":3264,\"size\":\"20.5cm*223.5+20.5*2F\",\"weight\":200,\"yarn\":9},{\"color\":\"黄色组\",\"id\":2,\"price\":14.4,\"quantity\":2291,\"size\":\"20.5cm*223.5+20.5*2F\",\"weight\":200,\"yarn\":9},{\"color\":\"紫色组\",\"id\":3,\"price\":14.4,\"quantity\":2306,\"size\":\"20.5cm*223.5+20.5*2F\",\"weight\":200,\"yarn\":9},{\"color\":\"白色\",\"id\":4,\"price\":14.4,\"quantity\":3254,\"size\":\"20.5cm*223.5+20.5*2F\",\"weight\":200,\"yarn\":9}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('19', '19', '2015-04-04 17:24:04', '2015-04-04 17:24:04', '7', '[{\"color\":\"卡其色组\",\"id\":1,\"price\":14,\"quantity\":415,\"size\":\"35W*55H\",\"weight\":130,\"yarn\":9},{\"color\":\"暗紫色\",\"id\":2,\"price\":14,\"quantity\":415,\"size\":\"35W*55H\",\"weight\":130,\"yarn\":9},{\"color\":\"黑色\",\"id\":3,\"price\":14,\"quantity\":415,\"size\":\"35W*55H\",\"weight\":130,\"yarn\":9}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('20', '20', '2015-04-06 12:30:59', '2015-04-06 12:30:59', '7', '[{\"color\":\"米色\",\"id\":1,\"price\":1,\"quantity\":60,\"size\":\"20寛*27长\",\"weight\":70,\"yarn\":9},{\"color\":\"黑色\",\"id\":2,\"price\":1,\"quantity\":110,\"size\":\"20寛*27长\",\"weight\":70,\"yarn\":9}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('21', '21', '2015-04-06 14:26:11', '2015-04-06 14:26:11', '7', '[{\"color\":\"本白色\",\"id\":1,\"price\":0.8,\"quantity\":60,\"size\":\"43高*75寛\",\"weight\":203,\"yarn\":9}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('22', '22', '2015-04-07 17:20:08', '2015-04-07 17:20:08', '7', '[{\"color\":\"黑色\",\"id\":1,\"price\":0,\"quantity\":1165,\"size\":\"21高i*20寛\",\"weight\":75,\"yarn\":1},{\"color\":\"深灰夹花\",\"id\":2,\"price\":0,\"quantity\":1165,\"size\":\"21高*20寛\",\"weight\":75,\"yarn\":1},{\"color\":\"猪血红\",\"id\":3,\"price\":0,\"quantity\":756,\"size\":\"21高*20寛\",\"weight\":75,\"yarn\":1}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('23', '23', '2015-04-08 07:59:02', '2015-04-08 07:59:02', '7', '[{\"color\":\"714#\",\"id\":1,\"price\":0,\"quantity\":1734,\"size\":\"22寛*26高+2.5罗文\",\"weight\":56,\"yarn\":1},{\"color\":\"718#\",\"id\":2,\"price\":0,\"quantity\":1734,\"size\":\"22寛*26高+2.5罗文\",\"weight\":56,\"yarn\":1}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('24', '24', '2015-04-08 08:05:51', '2015-04-08 08:05:51', '7', '[{\"color\":\"714#\",\"id\":1,\"price\":0,\"quantity\":1734,\"size\":\"45寛*180长+3.5罗文\",\"weight\":110,\"yarn\":1},{\"color\":\"718#\",\"id\":2,\"price\":0,\"quantity\":1734,\"size\":\"45寛*180长+3.5罗文\",\"weight\":110,\"yarn\":1}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('25', '25', '2015-04-08 09:20:30', '2015-04-08 09:20:30', '7', '[{\"color\":\"粉色\",\"id\":1,\"price\":0,\"quantity\":2082,\"size\":\"23寛*27高\",\"weight\":57,\"yarn\":1}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('26', '26', '2015-04-08 09:30:20', '2015-04-08 09:30:20', '7', '[{\"color\":\"粉色\",\"id\":1,\"price\":0,\"quantity\":2082,\"size\":\"23寛*27高\",\"weight\":57,\"yarn\":1},{\"color\":\"718#\",\"id\":2,\"price\":0,\"quantity\":2082,\"size\":\"23寛*27高\",\"weight\":57,\"yarn\":1},{\"color\":\"712#\",\"id\":3,\"price\":0,\"quantity\":2082,\"size\":\"23寛*27高\",\"weight\":57,\"yarn\":1}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('27', '27', '2015-04-08 10:05:42', '2015-04-08 10:05:42', '7', '[{\"color\":\"粉色\",\"id\":1,\"price\":0,\"quantity\":2082,\"size\":\"45寛*90x2长\",\"weight\":135,\"yarn\":1},{\"color\":\"718#\",\"id\":2,\"price\":0,\"quantity\":2082,\"size\":\"45寛*90x2长\",\"weight\":135,\"yarn\":1},{\"color\":\"712#\",\"id\":3,\"price\":0,\"quantity\":2082,\"size\":\"45寛*90x2长\",\"weight\":135,\"yarn\":1}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('28', '28', '2015-04-08 15:00:58', '2015-04-08 15:00:58', '7', '[{\"color\":\"黄色组\",\"id\":1,\"price\":3,\"quantity\":1379,\"size\":\"9寛*23长\",\"weight\":54,\"yarn\":9},{\"color\":\"白色组\",\"id\":2,\"price\":3,\"quantity\":2482,\"size\":\"9寛*23长\",\"weight\":54,\"yarn\":9},{\"color\":\"黑色组\",\"id\":3,\"price\":3,\"quantity\":2505,\"size\":\"9寛*23长\",\"weight\":54,\"yarn\":9},{\"color\":\"紫色组\",\"id\":4,\"price\":3,\"quantity\":1314,\"size\":\"9寛*23长\",\"weight\":54,\"yarn\":9}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('29', '29', '2015-04-08 15:55:25', '2015-04-08 15:55:25', '7', '[{\"color\":\"K974\",\"id\":1,\"price\":0,\"quantity\":4640,\"size\":\"21高*20寛\",\"weight\":123,\"yarn\":7},{\"color\":\"QY102米色\",\"id\":2,\"price\":0,\"quantity\":4640,\"size\":\"21高*20寛\",\"weight\":123,\"yarn\":6}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('30', '30', '2015-04-10 11:03:32', '2015-04-10 11:03:32', '7', '[{\"color\":\"OB米白组\",\"id\":1,\"price\":0,\"quantity\":3251,\"size\":\"20宽*220长十须20公分\",\"weight\":200,\"yarn\":9},{\"color\":\"0B黑色组\",\"id\":2,\"price\":0,\"quantity\":3261,\"size\":\"20宽*220长十须20公分\",\"weight\":200,\"yarn\":9},{\"color\":\"OB黄色组\",\"id\":3,\"price\":0,\"quantity\":2288,\"size\":\"20宽*220长十须20公分\",\"weight\":200,\"yarn\":9},{\"color\":\"OB紫色\",\"id\":4,\"price\":0,\"quantity\":2303,\"size\":\"20宽*220长十须20公分\",\"weight\":200,\"yarn\":9}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('31', '31', '2015-04-10 17:08:23', '2015-04-10 17:08:23', '7', '[{\"color\":\"黑色\",\"id\":1,\"price\":0,\"quantity\":222,\"size\":\"58*58\",\"weight\":275,\"yarn\":20},{\"color\":\"海军蓝\",\"id\":2,\"price\":0,\"quantity\":193,\"size\":\"58*58\",\"weight\":275,\"yarn\":20},{\"color\":\"银色\",\"id\":3,\"price\":0,\"quantity\":193,\"size\":\"58*58\",\"weight\":275,\"yarn\":20}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('32', '32', '2015-04-10 17:41:20', '2015-04-10 17:41:20', '7', '[{\"color\":\"黑色\",\"id\":1,\"price\":0,\"quantity\":370,\"size\":\"25高*23宽\",\"weight\":75,\"yarn\":20},{\"color\":\"海军蓝\",\"id\":2,\"price\":0,\"quantity\":295,\"size\":\"25高*23宽\",\"weight\":75,\"yarn\":20},{\"color\":\"银色\",\"id\":3,\"price\":0,\"quantity\":295,\"size\":\"25高*23宽\",\"weight\":75,\"yarn\":20}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('33', '33', '2015-04-10 17:57:18', '2015-04-10 17:57:18', '7', '[{\"color\":\"黑色\",\"id\":1,\"price\":0,\"quantity\":300,\"size\":\"20长*9宽\",\"weight\":36,\"yarn\":20},{\"color\":\"诲军蓝\",\"id\":2,\"price\":0,\"quantity\":250,\"size\":\"20长*9宽\",\"weight\":36,\"yarn\":20},{\"color\":\"银色\",\"id\":3,\"price\":0,\"quantity\":250,\"size\":\"20长*9宽\",\"weight\":36,\"yarn\":20}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('34', '34', '2015-04-15 14:29:32', '2015-04-15 15:09:11', '7', '[{\"color\":\"AM黑色\",\"id\":1,\"price\":0,\"produce_weight\":87,\"quantity\":3200,\"size\":\"20*20+7.5翻边\",\"weight\":107,\"yarn\":4},{\"color\":\"AM奶白\",\"id\":2,\"price\":0,\"produce_weight\":87,\"quantity\":3200,\"size\":\"20*20+7.5翻边\",\"weight\":107,\"yarn\":4},{\"color\":\"AM丈青\",\"id\":3,\"price\":0,\"produce_weight\":87,\"quantity\":2200,\"size\":\"20*20+7.5翻边\",\"weight\":107,\"yarn\":4},{\"color\":\"AM酒红\",\"id\":4,\"price\":0,\"produce_weight\":87,\"quantity\":2200,\"size\":\"20*20+7.5翻边\",\"weight\":107,\"yarn\":4},{\"color\":\"714#\",\"id\":5,\"price\":0,\"produce_weight\":87,\"quantity\":3200,\"size\":\"20*20+7.5翻边\",\"weight\":107,\"yarn\":4}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('35', '35', '2015-04-15 15:17:14', '2015-04-15 15:17:14', '7', '[{\"color\":\"QY15本白\",\"id\":1,\"price\":0,\"produce_weight\":126,\"quantity\":2996,\"size\":\"（30*2）*35cm\",\"weight\":205,\"yarn\":3},{\"color\":\"QY15黑色\",\"id\":2,\"price\":0,\"produce_weight\":126,\"quantity\":48,\"size\":\"（30*2）*35cm\",\"weight\":205,\"yarn\":3},{\"color\":\"QY15深灰夹花K974\",\"id\":3,\"price\":0,\"produce_weight\":126,\"quantity\":2948,\"size\":\"（30*2）*35\",\"weight\":205,\"yarn\":3}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('36', '36', '2015-04-15 15:51:10', '2015-04-15 15:51:10', '7', '[{\"color\":\"黑色组\",\"id\":1,\"price\":14.4,\"produce_weight\":182,\"quantity\":3249,\"size\":\"20*220h+须20cm\",\"weight\":200,\"yarn\":9},{\"color\":\"黄色组\",\"id\":2,\"price\":14.4,\"produce_weight\":182,\"quantity\":2276,\"size\":\"20*220h+须20cm\",\"weight\":200,\"yarn\":9},{\"color\":\"紫色组\",\"id\":3,\"price\":14.4,\"produce_weight\":182,\"quantity\":2291,\"size\":\"20*220h+须20cm\",\"weight\":200,\"yarn\":9},{\"color\":\"米白组\",\"id\":4,\"price\":14.4,\"produce_weight\":182,\"quantity\":3239,\"size\":\"20*220h+须20cm\",\"weight\":200,\"yarn\":9}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('37', '37', '2015-04-15 16:33:31', '2015-04-15 16:33:31', '7', '[{\"color\":\"QY15本白\",\"id\":1,\"price\":14,\"produce_weight\":69,\"quantity\":2768,\"size\":\"23cm H * 22cm W\",\"weight\":121,\"yarn\":3},{\"color\":\"QY15深灰夹花\",\"id\":2,\"price\":14.45,\"produce_weight\":69,\"quantity\":2816,\"size\":\"23cm H * 22cm W\",\"weight\":121,\"yarn\":3},{\"color\":\"QY15黑色\",\"id\":3,\"price\":14.45,\"produce_weight\":69,\"quantity\":48,\"size\":\"23cm H * 22cm W\",\"weight\":121,\"yarn\":3}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('38', '38', '2015-04-15 16:47:51', '2015-04-15 16:47:51', '7', '[{\"color\":\"AM黑色\",\"id\":1,\"price\":0,\"produce_weight\":285,\"quantity\":2600,\"size\":\"168*33+须15\",\"weight\":305,\"yarn\":4},{\"color\":\"AM奶白\",\"id\":2,\"price\":0,\"produce_weight\":285,\"quantity\":2600,\"size\":\"168*33+须15\",\"weight\":305,\"yarn\":4},{\"color\":\"AM丈青\",\"id\":3,\"price\":0,\"produce_weight\":285,\"quantity\":2200,\"size\":\"168*33+须15\",\"weight\":305,\"yarn\":4},{\"color\":\"AM酒红\",\"id\":4,\"price\":0,\"produce_weight\":285,\"quantity\":2600,\"size\":\"168*33+须15\",\"weight\":305,\"yarn\":4}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('39', '39', '2015-04-15 16:52:54', '2015-04-15 16:52:54', '7', '[{\"color\":\"LU471米色S\",\"id\":1,\"price\":10.8,\"produce_weight\":93,\"quantity\":972,\"size\":\"19H * 19W + 5+ BALL\",\"weight\":107,\"yarn\":6},{\"color\":\"LU471米色M\",\"id\":2,\"price\":10.8,\"produce_weight\":99,\"quantity\":972,\"size\":\"20.5H * 20W + 5+BALL\",\"weight\":107,\"yarn\":6},{\"color\":\"LU471深灰夹花S\",\"id\":3,\"price\":10.8,\"produce_weight\":93,\"quantity\":216,\"size\":\"19H * 19W+5+BALL\",\"weight\":107,\"yarn\":7},{\"color\":\"LU471深灰夹花M\",\"id\":4,\"price\":10.8,\"produce_weight\":99,\"quantity\":324,\"size\":\"20.5H*20W+5+BALL\",\"weight\":107,\"yarn\":7}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('40', '40', '2015-04-15 17:02:09', '2015-04-15 17:02:09', '7', '[{\"color\":\"45#卡其色+铜丝\",\"id\":1,\"price\":0,\"produce_weight\":125,\"quantity\":400,\"size\":\"34*50H\",\"weight\":130,\"yarn\":9},{\"color\":\"89#暗紫色+银丝\",\"id\":2,\"price\":0,\"produce_weight\":125,\"quantity\":400,\"size\":\"34*50H\",\"weight\":130,\"yarn\":9},{\"color\":\"90#黑色+银丝\",\"id\":3,\"price\":0,\"produce_weight\":125,\"quantity\":400,\"size\":\"34*50H\",\"weight\":130,\"yarn\":9}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('41', '41', '2015-04-15 17:14:55', '2015-04-15 17:14:55', '7', '[{\"color\":\"AM黑色\",\"id\":1,\"price\":0,\"produce_weight\":39,\"quantity\":4200,\"size\":\"25长*10宽\",\"weight\":46,\"yarn\":4},{\"color\":\"AM奶白\",\"id\":2,\"price\":0,\"produce_weight\":39,\"quantity\":4200,\"size\":\"25长*10宽\",\"weight\":46,\"yarn\":4},{\"color\":\"AM夹花灰714\",\"id\":3,\"price\":0,\"produce_weight\":39,\"quantity\":3200,\"size\":\"25长*10宽\",\"weight\":46,\"yarn\":4},{\"color\":\"AM丈青\",\"id\":4,\"price\":0,\"produce_weight\":39,\"quantity\":2200,\"size\":\"25长*10宽\",\"weight\":46,\"yarn\":4},{\"color\":\"AM酒红\",\"id\":5,\"price\":0,\"produce_weight\":39,\"quantity\":2200,\"size\":\"25长*10宽\",\"weight\":46,\"yarn\":4}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('42', '42', '2015-04-16 17:34:03', '2015-04-16 17:34:03', '7', '[{\"color\":\"15NY黑色\",\"id\":1,\"price\":0,\"produce_weight\":46,\"quantity\":427,\"size\":\"23*9宽\",\"weight\":50,\"yarn\":10},{\"color\":\"15NY褐色\",\"id\":2,\"price\":0,\"produce_weight\":46,\"quantity\":315,\"size\":\"23*9\",\"weight\":50,\"yarn\":10}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('43', '43', '2015-04-17 15:32:22', '2015-04-17 15:32:22', '7', '[{\"color\":\"15NY黑色\",\"id\":1,\"price\":0,\"produce_weight\":46,\"quantity\":427,\"size\":\"23*9\",\"weight\":50,\"yarn\":10},{\"color\":\"15NY褐色\",\"id\":2,\"price\":0,\"produce_weight\":46,\"quantity\":315,\"size\":\"23*9\",\"weight\":50,\"yarn\":10},{\"color\":\"黑色组151/72\",\"id\":3,\"price\":0,\"produce_weight\":46,\"quantity\":427,\"size\":\"23*9\",\"weight\":50,\"yarn\":19},{\"color\":\"褐色组106/粉色\",\"id\":4,\"price\":0,\"produce_weight\":46,\"quantity\":315,\"size\":\"23*9\",\"weight\":50,\"yarn\":19}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('44', '44', '2015-04-17 16:07:07', '2015-04-17 16:07:07', '7', '[{\"color\":\"15NY黑色\",\"id\":1,\"price\":0,\"produce_weight\":70,\"quantity\":547,\"size\":\"28高*21.5宽\",\"weight\":70,\"yarn\":10},{\"color\":\"15NY褐色\",\"id\":2,\"price\":0,\"produce_weight\":70,\"quantity\":443,\"size\":\"28高*21.5宽\",\"weight\":70,\"yarn\":10},{\"color\":\"15NY白色\",\"id\":3,\"price\":0,\"produce_weight\":70,\"quantity\":45,\"size\":\"28高*21.5宽\",\"weight\":70,\"yarn\":10},{\"color\":\"151\",\"id\":4,\"price\":0,\"produce_weight\":70,\"quantity\":547,\"size\":\"28高*21.5宽\",\"weight\":70,\"yarn\":19},{\"color\":\"72\",\"id\":5,\"price\":0,\"produce_weight\":70,\"quantity\":547,\"size\":\"28*21.5\",\"weight\":70,\"yarn\":19},{\"color\":\"106\",\"id\":6,\"price\":0,\"produce_weight\":70,\"quantity\":443,\"size\":\"28*21.5\",\"weight\":70,\"yarn\":19},{\"color\":\"粉色\",\"id\":7,\"price\":0,\"produce_weight\":70,\"quantity\":443,\"size\":\"28*21.5\",\"weight\":70,\"yarn\":19},{\"color\":\"2\",\"id\":8,\"price\":0,\"produce_weight\":70,\"quantity\":45,\"size\":\"28*21.5\",\"weight\":70,\"yarn\":19},{\"color\":\"7\",\"id\":9,\"price\":0,\"produce_weight\":70,\"quantity\":45,\"size\":\"28*21.5\",\"weight\":70,\"yarn\":19}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('45', '45', '2015-04-17 16:21:43', '2015-04-17 16:21:43', '7', '[{\"color\":\"15N黑色\",\"id\":1,\"price\":0,\"produce_weight\":70,\"quantity\":547,\"size\":\"28高**21.5宽\",\"weight\":70,\"yarn\":10},{\"color\":\"15NY褐色\",\"id\":2,\"price\":0,\"produce_weight\":70,\"quantity\":443,\"size\":\"28*21.5\",\"weight\":70,\"yarn\":10},{\"color\":\"15NY白色\",\"id\":3,\"price\":0,\"produce_weight\":70,\"quantity\":45,\"size\":\"28*21.5\",\"weight\":70,\"yarn\":10}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('46', '46', '2015-04-17 16:45:35', '2015-04-17 16:45:35', '7', '[{\"color\":\"15NY黑色\",\"id\":1,\"price\":0,\"produce_weight\":154,\"quantity\":763,\"size\":\"63..5x2*35.5\",\"weight\":155,\"yarn\":10},{\"color\":\"15NY棕色\",\"id\":2,\"price\":0,\"produce_weight\":154,\"quantity\":268,\"size\":\"63.5x2*35.5\",\"weight\":155,\"yarn\":10},{\"color\":\"15NY白色\",\"id\":3,\"price\":0,\"produce_weight\":154,\"quantity\":332,\"size\":\"63.5x2*35.5\",\"weight\":155,\"yarn\":10},{\"color\":\"15NY褐色\",\"id\":4,\"price\":0,\"produce_weight\":154,\"quantity\":316,\"size\":\"63.5x2*35.5\",\"weight\":155,\"yarn\":10},{\"color\":\"15NY灰色\",\"id\":5,\"price\":0,\"produce_weight\":154,\"quantity\":4530,\"size\":\"63.5x2*35.5\",\"weight\":155,\"yarn\":10}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('47', '47', '2015-04-17 17:50:43', '2015-04-17 17:50:43', '7', '[{\"color\":\"QY114黑色\",\"id\":1,\"price\":0,\"produce_weight\":142,\"quantity\":1185,\"size\":\"75x2*30\",\"weight\":142,\"yarn\":9},{\"color\":\"QY114桔色\",\"id\":2,\"price\":0,\"produce_weight\":142,\"quantity\":1068,\"size\":\"75x2*30\",\"weight\":142,\"yarn\":9},{\"color\":\"QY114酒红色\",\"id\":3,\"price\":0,\"produce_weight\":142,\"quantity\":849,\"size\":\"75x2*30\",\"weight\":142,\"yarn\":9},{\"color\":\"QY114绿色\",\"id\":4,\"price\":0,\"produce_weight\":142,\"quantity\":1485,\"size\":\"75x2*30\",\"weight\":142,\"yarn\":9},{\"color\":\"QY114米色\",\"id\":5,\"price\":0,\"produce_weight\":142,\"quantity\":117,\"size\":\"75x2*30\",\"weight\":142,\"yarn\":9}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('48', '48', '2015-04-17 18:13:55', '2015-04-17 18:13:55', '7', '[{\"color\":\"QY15黑色\",\"id\":1,\"price\":0,\"produce_weight\":240,\"quantity\":1044,\"size\":\"40x2*55\",\"weight\":240,\"yarn\":6},{\"color\":\"QY15-本白色\",\"id\":2,\"price\":0,\"produce_weight\":240,\"quantity\":1244,\"size\":\"40x2*55\",\"weight\":240,\"yarn\":6}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('49', '49', '2015-04-17 18:39:08', '2015-04-17 18:39:08', '7', '[{\"color\":\"15DP驼色\",\"id\":1,\"price\":0,\"produce_weight\":333,\"quantity\":450,\"size\":\"75x2*42\",\"weight\":380,\"yarn\":6}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('50', '50', '2015-04-18 15:13:43', '2015-04-18 15:13:43', '7', '[{\"color\":\"黑色\",\"id\":1,\"price\":0,\"produce_weight\":70,\"quantity\":433,\"size\":\"M/L-30x2*8\",\"weight\":70,\"yarn\":30},{\"color\":\"黑色\",\"id\":2,\"price\":0,\"produce_weight\":57,\"quantity\":433,\"size\":\"SM-28x2*6.5\",\"weight\":57,\"yarn\":30}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('51', '51', '2015-04-18 15:23:22', '2015-04-18 15:23:22', '7', '[{\"color\":\"黑/白\",\"id\":1,\"price\":0,\"produce_weight\":452,\"quantity\":1200,\"size\":\"130*130+须10\",\"weight\":475,\"yarn\":1}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('52', '52', '2015-04-18 15:34:38', '2015-04-18 15:34:38', '7', '[{\"color\":\"灰色\",\"id\":1,\"price\":0,\"produce_weight\":170,\"quantity\":2150,\"size\":\"90x2*70\",\"weight\":200,\"yarn\":10},{\"color\":\"粉色\",\"id\":2,\"price\":0,\"produce_weight\":170,\"quantity\":2150,\"size\":\"90x2*70\",\"weight\":200,\"yarn\":10},{\"color\":\"藏青\",\"id\":3,\"price\":0,\"produce_weight\":170,\"quantity\":3200,\"size\":\"90x2*70\",\"weight\":200,\"yarn\":10}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('53', '53', '2015-04-18 15:51:54', '2015-04-18 15:51:54', '7', '[{\"color\":\"VMB米色\",\"id\":1,\"price\":0,\"produce_weight\":50,\"quantity\":190,\"size\":\"22*24\",\"weight\":50,\"yarn\":9},{\"color\":\"VMB蓝色\",\"id\":2,\"price\":0,\"produce_weight\":50,\"quantity\":190,\"size\":\"22*24\",\"weight\":50,\"yarn\":9}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('54', '54', '2015-04-18 16:17:42', '2015-04-18 16:17:42', '7', '[{\"color\":\"743米色\",\"id\":1,\"price\":0,\"produce_weight\":165,\"quantity\":240,\"size\":\"180*30\",\"weight\":165,\"yarn\":10},{\"color\":\"205蓝色\",\"id\":2,\"price\":0,\"produce_weight\":165,\"quantity\":230,\"size\":\"180*30\",\"weight\":165,\"yarn\":10},{\"color\":\"M27黑色\",\"id\":3,\"price\":0,\"produce_weight\":165,\"quantity\":230,\"size\":\"180*30\",\"weight\":165,\"yarn\":10}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('55', '55', '2015-04-18 17:23:44', '2015-04-18 17:23:44', '7', '[{\"color\":\"QY15黑色\",\"id\":1,\"price\":0,\"produce_weight\":73,\"quantity\":888,\"size\":\"23高*20寛+边6.5\",\"weight\":73,\"yarn\":6},{\"color\":\"QY15本白色\",\"id\":2,\"price\":0,\"produce_weight\":73,\"quantity\":1088,\"size\":\"23高*20寛+边6.5\",\"weight\":73,\"yarn\":6}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('56', '56', '2015-04-18 17:38:20', '2015-04-18 17:38:20', '7', '[{\"color\":\"Cap黑色\",\"id\":1,\"price\":0,\"produce_weight\":123,\"quantity\":1622,\"size\":\"24寛*30高\",\"weight\":123,\"yarn\":1}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('57', '57', '2015-04-18 17:57:46', '2015-04-18 17:57:46', '7', '[{\"color\":\"15GIII-  棕色\",\"id\":1,\"price\":0,\"produce_weight\":171,\"quantity\":2000,\"size\":\"165*25+须15\",\"weight\":191,\"yarn\":9}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('58', '58', '2015-04-18 18:04:08', '2015-04-18 18:04:08', '7', '[{\"color\":\"W120-黑色\",\"id\":1,\"price\":0,\"produce_weight\":62,\"quantity\":1833,\"size\":\"20寛*21高\",\"weight\":52,\"yarn\":1},{\"color\":\"W120-棕色\",\"id\":2,\"price\":0,\"produce_weight\":62,\"quantity\":420,\"size\":\"20寛*21高\",\"weight\":52,\"yarn\":1},{\"color\":\"W120-灰色\",\"id\":3,\"price\":0,\"produce_weight\":62,\"quantity\":1185,\"size\":\"20寛*21高\",\"weight\":52,\"yarn\":1}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('59', '59', '2015-04-18 18:14:36', '2015-04-18 18:14:36', '7', '[{\"color\":\"自然色\",\"id\":1,\"price\":0,\"produce_weight\":458,\"quantity\":1060,\"size\":\"0\",\"weight\":508,\"yarn\":9}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('60', '60', '2015-04-19 10:01:24', '2015-04-19 10:01:24', '7', '[{\"color\":\"粉色\",\"id\":1,\"price\":0,\"produce_weight\":113,\"quantity\":200,\"size\":\"21.5寛*26高+边10\",\"weight\":110,\"yarn\":1},{\"color\":\"军蓝\",\"id\":2,\"price\":0,\"produce_weight\":113,\"quantity\":1500,\"size\":\"21.5寛*26高+边10\",\"weight\":110,\"yarn\":1},{\"color\":\"深灰\",\"id\":3,\"price\":0,\"produce_weight\":113,\"quantity\":800,\"size\":\"21.5寛*26高+边10\",\"weight\":110,\"yarn\":1}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('61', '61', '2015-04-19 13:01:52', '2015-04-19 13:01:52', '7', '[{\"color\":\"03X浅粉\",\"id\":1,\"price\":0,\"produce_weight\":326,\"quantity\":2100,\"size\":\"65x2*37\",\"weight\":328,\"yarn\":5},{\"color\":\"712\",\"id\":2,\"price\":0,\"produce_weight\":326,\"quantity\":2160,\"size\":\"65x2*37\",\"weight\":328,\"yarn\":5},{\"color\":\"59X藏青\",\"id\":3,\"price\":0,\"produce_weight\":326,\"quantity\":2100,\"size\":\"65x2*37\",\"weight\":328,\"yarn\":5},{\"color\":\"69X蓝色\",\"id\":4,\"price\":0,\"produce_weight\":326,\"quantity\":2010,\"size\":\"65x2*37\",\"weight\":328,\"yarn\":5}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('62', '62', '2015-04-19 13:27:05', '2015-04-19 13:27:05', '7', '[{\"color\":\"33X红色\",\"id\":1,\"price\":0,\"produce_weight\":125,\"quantity\":2040,\"size\":\"30x2*45\",\"weight\":125,\"yarn\":1},{\"color\":\"42X 亮粉\",\"id\":2,\"price\":0,\"produce_weight\":125,\"quantity\":2220,\"size\":\"30x2*45\",\"weight\":125,\"yarn\":1},{\"color\":\"59X藏青\",\"id\":3,\"price\":0,\"produce_weight\":125,\"quantity\":2040,\"size\":\"30x2*45\",\"weight\":125,\"yarn\":1},{\"color\":\"99X黑色\",\"id\":4,\"price\":0,\"produce_weight\":125,\"quantity\":2220,\"size\":\"30x2*45\",\"weight\":125,\"yarn\":1},{\"color\":\"90X712\",\"id\":5,\"price\":0,\"produce_weight\":125,\"quantity\":2220,\"size\":\"30x2*45\",\"weight\":125,\"yarn\":1}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('63', '63', '2015-04-19 13:47:19', '2015-04-19 13:47:19', '7', '[{\"color\":\"01X米色\",\"id\":1,\"price\":0,\"produce_weight\":65,\"quantity\":7304,\"size\":\"27高*20寛\",\"weight\":65,\"yarn\":1},{\"color\":\"09X712\",\"id\":2,\"price\":0,\"produce_weight\":65,\"quantity\":7304,\"size\":\"27高*20寛\",\"weight\":65,\"yarn\":1}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('64', '64', '2015-04-19 14:16:02', '2015-04-19 14:16:02', '7', '[{\"color\":\"01X米色\",\"id\":1,\"price\":0,\"produce_weight\":55,\"quantity\":7304,\"size\":\"27高*20寛\",\"weight\":56,\"yarn\":1},{\"color\":\"84X咖啡色\",\"id\":2,\"price\":0,\"produce_weight\":55,\"quantity\":6130,\"size\":\"27高*20寛\",\"weight\":56,\"yarn\":1},{\"color\":\"09X712\",\"id\":3,\"price\":0,\"produce_weight\":55,\"quantity\":7304,\"size\":\"27*20\",\"weight\":56,\"yarn\":1}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('65', '65', '2015-04-19 14:30:18', '2015-04-19 14:30:18', '7', '[{\"color\":\"01X   米色\",\"id\":1,\"price\":0,\"produce_weight\":210,\"quantity\":10560,\"size\":\"33x2*50\",\"weight\":210,\"yarn\":1},{\"color\":\"84X咖啡色\",\"id\":2,\"price\":0,\"produce_weight\":210,\"quantity\":9000,\"size\":\"33x2*50\",\"weight\":210,\"yarn\":1},{\"color\":\"28X土黄\",\"id\":3,\"price\":0,\"produce_weight\":210,\"quantity\":6840,\"size\":\"33x2*50\",\"weight\":210,\"yarn\":1},{\"color\":\"09X712\",\"id\":4,\"price\":0,\"produce_weight\":210,\"quantity\":10560,\"size\":\"33x2*50\",\"weight\":210,\"yarn\":1}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('66', '66', '2015-04-19 15:05:26', '2015-04-19 15:05:26', '7', '[{\"color\":\"LS-紫色\",\"id\":1,\"price\":0,\"produce_weight\":64,\"quantity\":2200,\"size\":\"23高*22寛+边6\",\"weight\":91,\"yarn\":1},{\"color\":\"LS-黑色\",\"id\":2,\"price\":0,\"produce_weight\":64,\"quantity\":2700,\"size\":\"23高*22寛+边6\",\"weight\":91,\"yarn\":1}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('67', '67', '2015-04-19 15:17:28', '2015-04-19 15:17:28', '7', '[{\"color\":\"EY深灰\",\"id\":1,\"price\":0,\"produce_weight\":195,\"quantity\":1431,\"size\":\"34寛*37长\",\"weight\":195,\"yarn\":3}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('68', '68', '2015-04-19 15:46:38', '2015-04-19 15:46:38', '7', '[{\"color\":\"灰色组\",\"id\":1,\"price\":0,\"produce_weight\":103,\"quantity\":537,\"size\":\"3-4\",\"weight\":89,\"yarn\":11},{\"color\":\"灰色组\",\"id\":2,\"price\":0,\"produce_weight\":119,\"quantity\":881,\"size\":\"5-6\",\"weight\":97,\"yarn\":11},{\"color\":\"灰色组\",\"id\":3,\"price\":0,\"produce_weight\":124,\"quantity\":1876,\"size\":\"7-10\",\"weight\":110,\"yarn\":11},{\"color\":\"灰色组\",\"id\":4,\"price\":0,\"produce_weight\":138,\"quantity\":1005,\"size\":\"11-13\",\"weight\":124,\"yarn\":11},{\"color\":\"灰色组\",\"id\":5,\"price\":0,\"produce_weight\":148,\"quantity\":426,\"size\":\"14-16\",\"weight\":134,\"yarn\":11},{\"color\":\"蓝色组\",\"id\":6,\"price\":0,\"produce_weight\":110,\"quantity\":501,\"size\":\"3-4\",\"weight\":96,\"yarn\":11},{\"color\":\"蓝色组\",\"id\":7,\"price\":0,\"produce_weight\":126,\"quantity\":763,\"size\":\"5-6\",\"weight\":112,\"yarn\":11},{\"color\":\"蓝色组\",\"id\":8,\"price\":0,\"produce_weight\":138,\"quantity\":1652,\"size\":\"7-10\",\"weight\":124,\"yarn\":11},{\"color\":\"蓝色组\",\"id\":9,\"price\":0,\"produce_weight\":149,\"quantity\":1033,\"size\":\"11-13\",\"weight\":135,\"yarn\":11},{\"color\":\"蓝色组\",\"id\":10,\"price\":0,\"produce_weight\":160,\"quantity\":252,\"size\":\"14-16\",\"weight\":146,\"yarn\":11}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('69', '69', '2015-04-19 16:03:09', '2015-04-19 16:03:09', '7', '[{\"color\":\"黑色\",\"id\":1,\"price\":0,\"produce_weight\":192,\"quantity\":2095,\"size\":\"180*25+20须\",\"weight\":228,\"yarn\":9}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('70', '70', '2015-04-19 16:24:33', '2015-04-19 16:24:33', '7', '[{\"color\":\"G8黑色\",\"id\":1,\"price\":0,\"produce_weight\":42,\"quantity\":2095,\"size\":\"21高*22寛+球11公分\",\"weight\":72,\"yarn\":9}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('71', '71', '2015-04-19 16:33:55', '2015-04-19 16:33:55', '7', '[{\"color\":\"多色\",\"id\":1,\"price\":0,\"produce_weight\":220,\"quantity\":3600,\"size\":\"180*25+须20\",\"weight\":210,\"yarn\":9}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('72', '72', '2015-04-19 17:22:16', '2015-04-19 17:22:16', '7', '[{\"color\":\"SLI黑色\",\"id\":1,\"price\":0,\"produce_weight\":108,\"quantity\":4416,\"size\":\"20*20+边\",\"weight\":126,\"yarn\":6},{\"color\":\"SLI米白\",\"id\":2,\"price\":0,\"produce_weight\":108,\"quantity\":872,\"size\":\"20*20+边\",\"weight\":126,\"yarn\":6},{\"color\":\"SLI暗红\",\"id\":3,\"price\":0,\"produce_weight\":108,\"quantity\":10496,\"size\":\"20*20+边\",\"weight\":126,\"yarn\":6}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('73', '73', '2015-04-19 17:29:36', '2015-04-19 17:29:36', '7', '[{\"color\":\"712\",\"id\":1,\"price\":0,\"produce_weight\":65,\"quantity\":872,\"size\":\"26\",\"weight\":80,\"yarn\":9}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('74', '74', '2015-04-20 14:45:04', '2015-04-20 14:45:04', '7', '[{\"color\":\"712#\",\"id\":1,\"price\":0,\"produce_weight\":220,\"quantity\":1030,\"size\":\"69x2*37\",\"weight\":220,\"yarn\":5}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('75', '75', '2015-04-20 14:51:33', '2015-04-20 14:51:33', '7', '[{\"color\":\"712\",\"id\":1,\"price\":0,\"produce_weight\":58,\"quantity\":1030,\"size\":\"26高*25寛\",\"weight\":58,\"yarn\":5}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('76', '76', '2015-04-20 15:07:14', '2015-04-20 15:07:14', '7', '[{\"color\":\"9008-白色\",\"id\":1,\"price\":0,\"produce_weight\":275,\"quantity\":1101,\"size\":\"40*40\",\"weight\":265,\"yarn\":6},{\"color\":\"9008-黑色\",\"id\":2,\"price\":0,\"produce_weight\":275,\"quantity\":801,\"size\":\"40*40\",\"weight\":265,\"yarn\":6}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('77', '77', '2015-04-20 15:17:28', '2015-04-20 15:17:28', '7', '[{\"color\":\"9008黑色\",\"id\":1,\"price\":0,\"produce_weight\":60,\"quantity\":801,\"size\":\"22*21+球8公分\",\"weight\":73,\"yarn\":6},{\"color\":\"9008白色\",\"id\":2,\"price\":0,\"produce_weight\":60,\"quantity\":1101,\"size\":\"22*21+球6公分\",\"weight\":73,\"yarn\":6}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('78', '78', '2015-04-20 15:29:00', '2015-04-20 15:29:00', '7', '[{\"color\":\"红色\",\"id\":1,\"price\":0,\"produce_weight\":290,\"quantity\":1002,\"size\":\"39*28\",\"weight\":290,\"yarn\":31},{\"color\":\"粉色\",\"id\":2,\"price\":0,\"produce_weight\":290,\"quantity\":1002,\"size\":\"39*28\",\"weight\":290,\"yarn\":31},{\"color\":\"米色\",\"id\":3,\"price\":0,\"produce_weight\":290,\"quantity\":1200,\"size\":\"39*28\",\"weight\":290,\"yarn\":31}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('79', '79', '2015-04-23 14:31:06', '2015-04-23 14:31:06', '7', '[{\"color\":\"4601-藏青\",\"id\":1,\"price\":0,\"produce_weight\":45,\"quantity\":801,\"size\":\"26\",\"weight\":45,\"yarn\":1},{\"color\":\"4601-夹花棕\",\"id\":2,\"price\":0,\"produce_weight\":45,\"quantity\":702,\"size\":\"26\",\"weight\":45,\"yarn\":1},{\"color\":\"4601-红色\",\"id\":3,\"price\":0,\"produce_weight\":45,\"quantity\":600,\"size\":\"26\",\"weight\":45,\"yarn\":1}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('80', '80', '2015-04-23 14:42:14', '2015-04-23 14:42:14', '7', '[{\"color\":\"4601藏青\",\"id\":1,\"price\":0,\"produce_weight\":130,\"quantity\":801,\"size\":\"176*50\",\"weight\":130,\"yarn\":1},{\"color\":\"4601夹花棕\",\"id\":2,\"price\":0,\"produce_weight\":130,\"quantity\":702,\"size\":\"176*50\",\"weight\":130,\"yarn\":1},{\"color\":\"4601红色\",\"id\":3,\"price\":0,\"produce_weight\":130,\"quantity\":600,\"size\":\"176*50\",\"weight\":130,\"yarn\":1}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('81', '81', '2015-04-24 12:46:27', '2015-04-24 12:46:27', '7', '[{\"color\":\"072粉色\",\"id\":1,\"price\":0,\"produce_weight\":80,\"quantity\":560,\"size\":\"40x2*60\",\"weight\":80,\"yarn\":1},{\"color\":\"712\",\"id\":2,\"price\":0,\"produce_weight\":80,\"quantity\":560,\"size\":\"40x2*60\",\"weight\":80,\"yarn\":1}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('82', '82', '2015-04-24 12:52:28', '2015-04-24 12:52:28', '7', '[{\"color\":\"072粉色\",\"id\":1,\"price\":0,\"produce_weight\":61,\"quantity\":560,\"size\":\"21寛*28高\",\"weight\":54,\"yarn\":1},{\"color\":\"712\",\"id\":2,\"price\":0,\"produce_weight\":61,\"quantity\":560,\"size\":\"21寛*28高\",\"weight\":54,\"yarn\":1}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('83', '83', '2015-04-24 13:02:43', '2015-04-24 13:02:43', '7', '[{\"color\":\"黑灰组\",\"id\":1,\"price\":0,\"produce_weight\":350,\"quantity\":639,\"size\":\"114*127\",\"weight\":350,\"yarn\":1}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('84', '84', '2015-04-24 13:13:59', '2015-04-24 13:13:59', '7', '[{\"color\":\"灰色组\",\"id\":1,\"price\":0,\"produce_weight\":350,\"quantity\":4400,\"size\":\"114*127\",\"weight\":350,\"yarn\":1},{\"color\":\"黑色组\",\"id\":2,\"price\":0,\"produce_weight\":350,\"quantity\":800,\"size\":\"114*127\",\"weight\":350,\"yarn\":1}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('85', '85', '2015-04-24 13:34:42', '2015-04-24 13:34:42', '7', '[{\"color\":\"灰色\",\"id\":1,\"price\":0,\"produce_weight\":75,\"quantity\":1059,\"size\":\"66*15.5\",\"weight\":75,\"yarn\":30}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('86', '86', '2015-04-25 09:25:59', '2015-04-25 09:25:59', '7', '[{\"color\":\"c008藏青\",\"id\":1,\"price\":0,\"produce_weight\":165,\"quantity\":720,\"size\":\"40*40\",\"weight\":235,\"yarn\":1},{\"color\":\"c008卡其\",\"id\":2,\"price\":0,\"produce_weight\":165,\"quantity\":830,\"size\":\"40*40\",\"weight\":235,\"yarn\":1}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('87', '87', '2015-04-27 08:07:56', '2015-04-27 08:07:56', '7', '[{\"color\":\"黑色\",\"id\":1,\"price\":1,\"produce_weight\":46,\"quantity\":420,\"size\":\"23*9\",\"weight\":50,\"yarn\":10},{\"color\":\"褐色\",\"id\":2,\"price\":1,\"produce_weight\":46,\"quantity\":150,\"size\":\"23*9\",\"weight\":50,\"yarn\":10},{\"color\":\"灰色\",\"id\":3,\"price\":1,\"produce_weight\":46,\"quantity\":270,\"size\":\"23*9\",\"weight\":50,\"yarn\":10},{\"color\":\"白色\",\"id\":4,\"price\":1,\"produce_weight\":46,\"quantity\":200,\"size\":\"23*9\",\"weight\":50,\"yarn\":10}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('88', '88', '2015-04-27 08:24:57', '2015-04-27 08:24:57', '7', '[{\"color\":\"黑色\",\"id\":1,\"price\":0.7,\"produce_weight\":70,\"quantity\":2654,\"size\":\"28*21.5寛\",\"weight\":70,\"yarn\":10},{\"color\":\"棕色\",\"id\":2,\"price\":0.7,\"produce_weight\":70,\"quantity\":1318,\"size\":\"28*21.5寛\",\"weight\":70,\"yarn\":10},{\"color\":\"白色\",\"id\":3,\"price\":0.7,\"produce_weight\":70,\"quantity\":2066,\"size\":\"28*21.5寛\",\"weight\":70,\"yarn\":10},{\"color\":\"灰色\",\"id\":4,\"price\":0.7,\"produce_weight\":70,\"quantity\":290,\"size\":\"28*21.5寛\",\"weight\":70,\"yarn\":10}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('89', '89', '2015-04-27 08:45:32', '2015-04-27 08:45:32', '7', '[{\"color\":\"黑色\",\"id\":1,\"price\":0,\"produce_weight\":155,\"quantity\":3093,\"size\":\"63.5x2*35.5\",\"weight\":155,\"yarn\":10},{\"color\":\"棕色\",\"id\":2,\"price\":0,\"produce_weight\":155,\"quantity\":1430,\"size\":\"63.5x2*35.5\",\"weight\":155,\"yarn\":10},{\"color\":\"白色\",\"id\":3,\"price\":0,\"produce_weight\":155,\"quantity\":1329,\"size\":\"63.5x2*35.5\",\"weight\":155,\"yarn\":10},{\"color\":\"褐色\",\"id\":4,\"price\":0,\"produce_weight\":155,\"quantity\":350,\"size\":\"63.5x2*35.5\",\"weight\":155,\"yarn\":10},{\"color\":\"灰色\",\"id\":5,\"price\":0,\"produce_weight\":155,\"quantity\":306,\"size\":\"63.5x2*35.5\",\"weight\":155,\"yarn\":10}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('90', '90', '2015-04-30 13:32:44', '2015-04-30 13:32:44', '7', '[{\"color\":\"714\",\"id\":1,\"price\":0,\"produce_weight\":110,\"quantity\":1200,\"size\":\"85x2*56\",\"weight\":120,\"yarn\":10}]', '0', '新建');
INSERT INTO `tb_planorder` VALUES ('91', '91', '2015-05-02 16:28:24', '2015-05-02 16:28:24', '7', '[{\"color\":\"粉色\",\"id\":1,\"price\":0,\"produce_weight\":80,\"quantity\":500,\"size\":\"23*23\",\"weight\":89,\"yarn\":9},{\"color\":\"黑色\",\"id\":2,\"price\":0,\"produce_weight\":80,\"quantity\":1500,\"size\":\"23*23\",\"weight\":89,\"yarn\":9},{\"color\":\"本白\",\"id\":3,\"price\":0,\"produce_weight\":80,\"quantity\":800,\"size\":\"23*23\",\"weight\":89,\"yarn\":9}]', '0', '新建');
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
INSERT INTO `tb_producingorder` VALUES ('18', '17', '2015-04-04 15:35:34', '2015-04-04 15:35:34', '7', '[{\"color\":\"QY114-灰色\",\"planOrderDetailId\":1,\"price\":0.7,\"quantity\":930,\"size\":\"70*2*40cm\",\"weight\":115,\"yarn\":9},{\"color\":\"QY114-粉色\",\"planOrderDetailId\":2,\"price\":0.7,\"quantity\":570,\"size\":\"70*2*40cm\",\"weight\":115,\"yarn\":9},{\"color\":\"QY114-酒红\",\"planOrderDetailId\":3,\"price\":0.7,\"quantity\":930,\"size\":\"70*2*40cm\",\"weight\":115,\"yarn\":9},{\"color\":\"QY114-深驼\",\"planOrderDetailId\":4,\"price\":0.7,\"quantity\":570,\"size\":\"70*2*40cm\",\"weight\":115,\"yarn\":9}]', '[{\"color\":\"QY114-灰色\",\"colorsample\":\"\",\"material\":9,\"quantity\":110},{\"color\":\"QY114-粉色\",\"colorsample\":\"\",\"material\":9,\"quantity\":67},{\"color\":\"QY114-酒红\",\"colorsample\":\"\",\"material\":9,\"quantity\":110},{\"color\":\"QY114-深驼\",\"colorsample\":\"\",\"material\":9,\"quantity\":67}]', '27', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('19', '20', '2015-04-06 12:39:25', '2015-04-06 12:39:25', '7', '[{\"color\":\"米色\",\"planOrderDetailId\":1,\"price\":0,\"quantity\":60,\"size\":\"20寛*27长\",\"weight\":70,\"yarn\":9},{\"color\":\"黑色\",\"planOrderDetailId\":2,\"price\":0,\"quantity\":110,\"size\":\"20寛*27长\",\"weight\":70,\"yarn\":9}]', '[{\"color\":\"hr32米色\",\"colorsample\":\"\",\"material\":9,\"quantity\":4.5},{\"color\":\"hr32黑色\",\"colorsample\":\"\",\"material\":9,\"quantity\":9.5}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('20', '21', '2015-04-07 11:56:15', '2015-04-07 16:27:04', '7', '[{\"color\":\"本白色\",\"planOrderDetailId\":1,\"price\":1,\"quantity\":60,\"size\":\"43高*75寛\",\"weight\":203,\"yarn\":9}]', '[{\"color\":\"HR140919L本白色\",\"colorsample\":\"\",\"material\":9,\"quantity\":9.5},{\"color\":\"彩色点子纱本白色\",\"colorsample\":\"\",\"material\":9,\"quantity\":6},{\"color\":\"HR140919L 本白色套口线\",\"colorsample\":\"\",\"material\":9,\"quantity\":0.5}]', '9', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('21', '24', '2015-04-08 08:55:28', '2015-04-08 08:55:45', '7', '[{\"color\":\"714#\",\"planOrderDetailId\":1,\"price\":0,\"quantity\":1734,\"size\":\"45寛*180长+3.5罗文\",\"weight\":110,\"yarn\":1},{\"color\":\"718#\",\"planOrderDetailId\":2,\"price\":0,\"quantity\":1734,\"size\":\"45寛*180长+3.5罗文\",\"weight\":110,\"yarn\":1}]', '[{\"color\":\"714#\",\"colorsample\":\"\",\"material\":1,\"quantity\":206},{\"color\":\"718#\",\"colorsample\":\"\",\"material\":1,\"quantity\":206}]', '7', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('22', '23', '2015-04-08 08:57:55', '2015-04-08 08:57:55', '7', '[{\"color\":\"714#\",\"planOrderDetailId\":1,\"price\":0,\"quantity\":1734,\"size\":\"22寛*26高+2.5罗文\",\"weight\":56,\"yarn\":1},{\"color\":\"718#\",\"planOrderDetailId\":2,\"price\":0,\"quantity\":1734,\"size\":\"22寛*26高+2.5罗文\",\"weight\":56,\"yarn\":1}]', '[{\"color\":\"714#\",\"colorsample\":\"\",\"material\":1,\"quantity\":105},{\"color\":\"718#\",\"colorsample\":\"\",\"material\":1,\"quantity\":105}]', '7', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('23', '26', '2015-04-08 09:34:17', '2015-04-08 09:34:17', '7', '[{\"color\":\"粉色\",\"planOrderDetailId\":1,\"price\":0,\"quantity\":2082,\"size\":\"23寛*27高\",\"weight\":57,\"yarn\":1},{\"color\":\"718#\",\"planOrderDetailId\":2,\"price\":0,\"quantity\":2082,\"size\":\"23寛*27高\",\"weight\":57,\"yarn\":1},{\"color\":\"712#\",\"planOrderDetailId\":3,\"price\":0,\"quantity\":2082,\"size\":\"23寛*27高\",\"weight\":57,\"yarn\":1}]', '[{\"color\":\"粉色\",\"colorsample\":\"\",\"material\":1,\"quantity\":128},{\"color\":\"粉色\",\"colorsample\":\"\",\"material\":1,\"quantity\":128},{\"color\":\"718#\",\"colorsample\":\"\",\"material\":1,\"quantity\":128},{\"color\":\"712#\",\"colorsample\":\"\",\"material\":1,\"quantity\":128}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('24', '27', '2015-04-08 10:41:11', '2015-04-30 20:55:58', '7', '[{\"color\":\"粉色\",\"planOrderDetailId\":1,\"price\":1,\"produce_weight\":0,\"quantity\":2082,\"size\":\"45寛*90x2长\",\"weight\":135,\"yarn\":1},{\"color\":\"718#\",\"planOrderDetailId\":2,\"price\":1,\"produce_weight\":0,\"quantity\":2082,\"size\":\"45寛*90x2长\",\"weight\":135,\"yarn\":1},{\"color\":\"712#\",\"planOrderDetailId\":3,\"price\":1,\"produce_weight\":0,\"quantity\":2082,\"size\":\"45寛*90x2长\",\"weight\":135,\"yarn\":1}]', '[{\"color\":\"粉色\",\"colorsample\":\"\",\"material\":1,\"quantity\":302},{\"color\":\"718#\",\"colorsample\":\"\",\"material\":1,\"quantity\":302},{\"color\":\"712#\",\"colorsample\":\"\",\"material\":1,\"quantity\":302}]', '30', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('25', '28', '2015-04-08 15:14:31', '2015-04-08 15:14:31', '7', '[{\"color\":\"黄色组\",\"planOrderDetailId\":1,\"price\":0,\"quantity\":1379,\"size\":\"9寛*23长\",\"weight\":54,\"yarn\":9},{\"color\":\"白色组\",\"planOrderDetailId\":2,\"price\":0,\"quantity\":2482,\"size\":\"9寛*23长\",\"weight\":54,\"yarn\":9},{\"color\":\"黑色组\",\"planOrderDetailId\":3,\"price\":0,\"quantity\":2505,\"size\":\"9寛*23长\",\"weight\":54,\"yarn\":9},{\"color\":\"紫色组\",\"planOrderDetailId\":4,\"price\":0,\"quantity\":1314,\"size\":\"9寛*23长\",\"weight\":54,\"yarn\":9}]', '[{\"color\":\"EY062黄色\",\"colorsample\":\"\",\"material\":9,\"quantity\":73},{\"color\":\"EY062米白\",\"colorsample\":\"\",\"material\":9,\"quantity\":132},{\"color\":\"EY062黑色\",\"colorsample\":\"\",\"material\":9,\"quantity\":0},{\"color\":\"EY062紫色\",\"colorsample\":\"\",\"material\":9,\"quantity\":0},{\"color\":\"EY062黄色\",\"colorsample\":\"\",\"material\":20,\"quantity\":19},{\"color\":\"EY062米白\",\"colorsample\":\"\",\"material\":20,\"quantity\":33},{\"color\":\"EY062黑色\",\"colorsample\":\"\",\"material\":20,\"quantity\":0},{\"color\":\"EY062紫色\",\"colorsample\":\"\",\"material\":20,\"quantity\":0}]', '35', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('26', '29', '2015-04-08 15:57:23', '2015-04-08 15:57:23', '7', '[{\"color\":\"K974\",\"planOrderDetailId\":1,\"price\":0,\"quantity\":4640,\"size\":\"21高*20寛\",\"weight\":123,\"yarn\":7},{\"color\":\"QY102米色\",\"planOrderDetailId\":2,\"price\":0,\"quantity\":4640,\"size\":\"21高*20寛\",\"weight\":123,\"yarn\":6}]', '[{\"color\":\"K974\",\"colorsample\":\"\",\"material\":7,\"quantity\":523},{\"color\":\"QY102米色\",\"colorsample\":\"\",\"material\":6,\"quantity\":523}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('27', '31', '2015-04-10 17:11:15', '2015-04-13 19:10:13', '7', '[{\"color\":\"黑色\",\"planOrderDetailId\":1,\"price\":0.7,\"produce_weight\":0,\"quantity\":222,\"size\":\"58*58\",\"weight\":275,\"yarn\":20},{\"color\":\"海军蓝\",\"planOrderDetailId\":2,\"price\":0.7,\"produce_weight\":0,\"quantity\":193,\"size\":\"58*58\",\"weight\":275,\"yarn\":20},{\"color\":\"银色\",\"planOrderDetailId\":3,\"price\":0.7,\"produce_weight\":0,\"quantity\":193,\"size\":\"58*58\",\"weight\":275,\"yarn\":20}]', '[{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":20,\"quantity\":68},{\"color\":\"海军蓝\",\"colorsample\":\"\",\"material\":20,\"quantity\":59},{\"color\":\"银色\",\"colorsample\":\"\",\"material\":20,\"quantity\":59}]', '11', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('28', '32', '2015-04-10 17:43:56', '2015-04-13 19:10:28', '7', '[{\"color\":\"黑色\",\"planOrderDetailId\":1,\"price\":0.7,\"produce_weight\":0,\"quantity\":370,\"size\":\"25高*23宽\",\"weight\":75,\"yarn\":20},{\"color\":\"海军蓝\",\"planOrderDetailId\":2,\"price\":0.7,\"produce_weight\":0,\"quantity\":295,\"size\":\"25高*23宽\",\"weight\":75,\"yarn\":20},{\"color\":\"银色\",\"planOrderDetailId\":3,\"price\":0.7,\"produce_weight\":0,\"quantity\":295,\"size\":\"25高*23宽\",\"weight\":75,\"yarn\":20}]', '[{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":20,\"quantity\":31},{\"color\":\"海军蓝\",\"colorsample\":\"\",\"material\":20,\"quantity\":25},{\"color\":\"银色\",\"colorsample\":\"\",\"material\":20,\"quantity\":25}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('29', '33', '2015-04-10 18:02:37', '2015-04-10 18:02:37', '7', '[{\"color\":\"黑色\",\"planOrderDetailId\":1,\"price\":0,\"quantity\":300,\"size\":\"20长*9宽\",\"weight\":36,\"yarn\":20},{\"color\":\"诲军蓝\",\"planOrderDetailId\":2,\"price\":0,\"quantity\":250,\"size\":\"20长*9宽\",\"weight\":36,\"yarn\":20},{\"color\":\"银色\",\"planOrderDetailId\":3,\"price\":0,\"quantity\":250,\"size\":\"20长*9宽\",\"weight\":36,\"yarn\":20}]', '[{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":20,\"quantity\":11},{\"color\":\"海军蓝\",\"colorsample\":\"\",\"material\":20,\"quantity\":9},{\"color\":\"银色\",\"colorsample\":\"\",\"material\":20,\"quantity\":9},{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":1,\"quantity\":2},{\"color\":\"海军蓝\",\"colorsample\":\"\",\"material\":1,\"quantity\":1.5},{\"color\":\"银色\",\"colorsample\":\"\",\"material\":1,\"quantity\":1.5}]', '21', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('30', '34', '2015-04-15 14:44:28', '2015-04-17 17:50:48', '7', '[{\"color\":\"AM黑色\",\"planOrderDetailId\":1,\"price\":0.9,\"produce_weight\":87,\"quantity\":3200,\"size\":\"20*20+7.5翻边\",\"weight\":107,\"yarn\":4},{\"color\":\"AM奶白\",\"planOrderDetailId\":2,\"price\":0.9,\"produce_weight\":87,\"quantity\":3200,\"size\":\"20*20+7.5翻边\",\"weight\":107,\"yarn\":4},{\"color\":\"AM丈青\",\"planOrderDetailId\":3,\"price\":0.9,\"produce_weight\":87,\"quantity\":2200,\"size\":\"20*20+7.5翻边\",\"weight\":107,\"yarn\":4},{\"color\":\"AM酒红\",\"planOrderDetailId\":4,\"price\":0.9,\"produce_weight\":87,\"quantity\":2200,\"size\":\"20*20+7.5翻边\",\"weight\":107,\"yarn\":4},{\"color\":\"714#\",\"planOrderDetailId\":5,\"price\":0.9,\"produce_weight\":87,\"quantity\":3200,\"size\":\"20*20+7.5翻边\",\"weight\":107,\"yarn\":4}]', '[{\"color\":\"AM黑色\",\"colorsample\":\"\",\"material\":4,\"quantity\":300},{\"color\":\"AM奶白\",\"colorsample\":\"\",\"material\":4,\"quantity\":300},{\"color\":\"AM丈青\",\"colorsample\":\"\",\"material\":4,\"quantity\":207},{\"color\":\"AM酒红\",\"colorsample\":\"\",\"material\":4,\"quantity\":207},{\"color\":\"714#\",\"colorsample\":\"\",\"material\":4,\"quantity\":300}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('31', '35', '2015-04-15 15:24:12', '2015-04-17 17:50:12', '7', '[{\"color\":\"QY15本白\",\"planOrderDetailId\":1,\"price\":1.8,\"produce_weight\":126,\"quantity\":2996,\"size\":\"（30*2）*35cm\",\"weight\":205,\"yarn\":3},{\"color\":\"QY15黑色\",\"planOrderDetailId\":2,\"price\":1.8,\"produce_weight\":126,\"quantity\":48,\"size\":\"（30*2）*35cm\",\"weight\":205,\"yarn\":3},{\"color\":\"QY15深灰夹花K974\",\"planOrderDetailId\":3,\"price\":1.8,\"produce_weight\":126,\"quantity\":2948,\"size\":\"（30*2）*35\",\"weight\":205,\"yarn\":3}]', '[{\"color\":\"QY15本白\",\"colorsample\":\"\",\"material\":3,\"quantity\":407},{\"color\":\"QY15深灰夹花K974\",\"colorsample\":\"\",\"material\":3,\"quantity\":401},{\"color\":\"QY15黑色\",\"colorsample\":\"\",\"material\":3,\"quantity\":8}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('32', '36', '2015-04-15 16:03:07', '2015-04-17 17:48:51', '7', '[{\"color\":\"黑色组\",\"planOrderDetailId\":1,\"price\":0.7,\"produce_weight\":182,\"quantity\":3249,\"size\":\"20*220h+须20cm\",\"weight\":200,\"yarn\":9},{\"color\":\"黄色组\",\"planOrderDetailId\":2,\"price\":0.7,\"produce_weight\":182,\"quantity\":2276,\"size\":\"20*220h+须20cm\",\"weight\":200,\"yarn\":9},{\"color\":\"紫色组\",\"planOrderDetailId\":3,\"price\":0.7,\"produce_weight\":182,\"quantity\":2291,\"size\":\"20*220h+须20cm\",\"weight\":200,\"yarn\":9},{\"color\":\"米白组\",\"planOrderDetailId\":4,\"price\":0.7,\"produce_weight\":182,\"quantity\":3239,\"size\":\"20*220h+须20cm\",\"weight\":200,\"yarn\":9}]', '[{\"color\":\"0B米白色\",\"colorsample\":\"\",\"material\":9,\"quantity\":258},{\"color\":\"0B黑色\",\"colorsample\":\"\",\"material\":9,\"quantity\":480},{\"color\":\"0B紫色\",\"colorsample\":\"\",\"material\":9,\"quantity\":183},{\"color\":\"0B黄色\",\"colorsample\":\"\",\"material\":9,\"quantity\":182},{\"color\":\"0B白色\",\"colorsample\":\"\",\"material\":21,\"quantity\":80},{\"color\":\"0B黑色\",\"colorsample\":\"\",\"material\":21,\"quantity\":136},{\"color\":\"0B深灰\",\"colorsample\":\"\",\"material\":21,\"quantity\":56},{\"color\":\"白+黑心\",\"colorsample\":\"\",\"material\":22,\"quantity\":258},{\"color\":\"0B深灰+黑心\",\"colorsample\":\"\",\"material\":22,\"quantity\":531}]', '9', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('33', '37', '2015-04-15 16:35:31', '2015-04-17 17:49:54', '7', '[{\"color\":\"QY15本白\",\"planOrderDetailId\":1,\"price\":0.9,\"produce_weight\":69,\"quantity\":2768,\"size\":\"23cm H * 22cm W\",\"weight\":121,\"yarn\":3},{\"color\":\"QY15深灰夹花\",\"planOrderDetailId\":2,\"price\":0.9,\"produce_weight\":69,\"quantity\":2816,\"size\":\"23cm H * 22cm W\",\"weight\":121,\"yarn\":3},{\"color\":\"QY15黑色\",\"planOrderDetailId\":3,\"price\":0.9,\"produce_weight\":69,\"quantity\":48,\"size\":\"23cm H * 22cm W\",\"weight\":121,\"yarn\":3}]', '[{\"color\":\"QY15白色\",\"colorsample\":\"\",\"material\":3,\"quantity\":208},{\"color\":\"QY15黑色\",\"colorsample\":\"\",\"material\":3,\"quantity\":5},{\"color\":\"QY15深灰夹花K974\",\"colorsample\":\"\",\"material\":3,\"quantity\":210}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('34', '38', '2015-04-15 16:53:03', '2015-04-18 20:53:51', '7', '[{\"color\":\"AM黑色\",\"planOrderDetailId\":1,\"price\":2.8,\"produce_weight\":285,\"quantity\":2600,\"size\":\"168*33+须15\",\"weight\":305,\"yarn\":4},{\"color\":\"AM奶白\",\"planOrderDetailId\":2,\"price\":2.8,\"produce_weight\":285,\"quantity\":2600,\"size\":\"168*33+须15\",\"weight\":305,\"yarn\":4},{\"color\":\"AM丈青\",\"planOrderDetailId\":3,\"price\":2.8,\"produce_weight\":285,\"quantity\":2200,\"size\":\"168*33+须15\",\"weight\":305,\"yarn\":4},{\"color\":\"AM酒红\",\"planOrderDetailId\":4,\"price\":2.8,\"produce_weight\":285,\"quantity\":2600,\"size\":\"168*33+须15\",\"weight\":305,\"yarn\":4}]', '[{\"color\":\"AM黑色\",\"colorsample\":\"\",\"material\":4,\"quantity\":798},{\"color\":\"AM奶白\",\"colorsample\":\"\",\"material\":4,\"quantity\":798},{\"color\":\"AM丈青\",\"colorsample\":\"\",\"material\":4,\"quantity\":676},{\"color\":\"AM酒红\",\"colorsample\":\"\",\"material\":4,\"quantity\":798}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('35', '39', '2015-04-15 16:54:05', '2015-04-17 17:49:32', '7', '[{\"color\":\"LU471米色S\",\"planOrderDetailId\":1,\"price\":1.1,\"produce_weight\":93,\"quantity\":972,\"size\":\"19H * 19W + 5+ BALL\",\"weight\":107,\"yarn\":6},{\"color\":\"LU471米色M\",\"planOrderDetailId\":2,\"price\":1.1,\"produce_weight\":99,\"quantity\":972,\"size\":\"20.5H * 20W + 5+BALL\",\"weight\":107,\"yarn\":6},{\"color\":\"LU471深灰夹花S\",\"planOrderDetailId\":3,\"price\":1.1,\"produce_weight\":93,\"quantity\":216,\"size\":\"19H * 19W+5+BALL\",\"weight\":107,\"yarn\":7},{\"color\":\"LU471深灰夹花M\",\"planOrderDetailId\":4,\"price\":1.1,\"produce_weight\":99,\"quantity\":324,\"size\":\"20.5H*20W+5+BALL\",\"weight\":107,\"yarn\":7}]', '[{\"color\":\"LU471米色\",\"colorsample\":\"\",\"material\":6,\"quantity\":190},{\"color\":\"LU471深灰夹花\",\"colorsample\":\"\",\"material\":7,\"quantity\":276}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('37', '40', '2015-04-15 17:04:39', '2015-04-17 17:49:16', '7', '[{\"color\":\"45#卡其色+铜丝\",\"planOrderDetailId\":1,\"price\":0.8,\"produce_weight\":125,\"quantity\":400,\"size\":\"34*50H\",\"weight\":130,\"yarn\":9},{\"color\":\"89#暗紫色+银丝\",\"planOrderDetailId\":2,\"price\":0.8,\"produce_weight\":125,\"quantity\":400,\"size\":\"34*50H\",\"weight\":130,\"yarn\":9},{\"color\":\"90#黑色+银丝\",\"planOrderDetailId\":3,\"price\":0.8,\"produce_weight\":125,\"quantity\":400,\"size\":\"34*50H\",\"weight\":130,\"yarn\":9}]', '[{\"color\":\"45#卡其色\",\"colorsample\":\"\",\"material\":9,\"quantity\":55},{\"color\":\"89#暗紫色\",\"colorsample\":\"\",\"material\":9,\"quantity\":55},{\"color\":\"90#黑色\",\"colorsample\":\"\",\"material\":9,\"quantity\":55},{\"color\":\"铜丝\",\"colorsample\":\"\",\"material\":19,\"quantity\":3},{\"color\":\"银丝\",\"colorsample\":\"\",\"material\":19,\"quantity\":5}]', '30', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('38', '41', '2015-04-15 17:18:18', '2015-04-17 17:48:17', '7', '[{\"color\":\"AM黑色\",\"planOrderDetailId\":1,\"price\":0.5,\"produce_weight\":39,\"quantity\":4200,\"size\":\"25长*10宽\",\"weight\":46,\"yarn\":4},{\"color\":\"AM奶白\",\"planOrderDetailId\":2,\"price\":0.5,\"produce_weight\":39,\"quantity\":4200,\"size\":\"25长*10宽\",\"weight\":46,\"yarn\":4},{\"color\":\"AM夹花灰714\",\"planOrderDetailId\":3,\"price\":0.5,\"produce_weight\":39,\"quantity\":3200,\"size\":\"25长*10宽\",\"weight\":46,\"yarn\":4},{\"color\":\"AM丈青\",\"planOrderDetailId\":4,\"price\":0.5,\"produce_weight\":39,\"quantity\":2200,\"size\":\"25长*10宽\",\"weight\":46,\"yarn\":4},{\"color\":\"AM酒红\",\"planOrderDetailId\":5,\"price\":0.5,\"produce_weight\":39,\"quantity\":2200,\"size\":\"25长*10宽\",\"weight\":46,\"yarn\":4}]', '[{\"color\":\"AN黑色\",\"colorsample\":\"\",\"material\":4,\"quantity\":159},{\"color\":\"AN奶白\",\"colorsample\":\"\",\"material\":4,\"quantity\":159},{\"color\":\"AN夹花灰\",\"colorsample\":\"\",\"material\":4,\"quantity\":135},{\"color\":\"AN丈青\",\"colorsample\":\"\",\"material\":4,\"quantity\":83},{\"color\":\"AN酒红\",\"colorsample\":\"\",\"material\":4,\"quantity\":83}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('39', '43', '2015-04-17 15:40:55', '2015-04-17 17:55:06', '7', '[{\"color\":\"15NY黑色\",\"planOrderDetailId\":1,\"price\":1,\"produce_weight\":46,\"quantity\":427,\"size\":\"23*9\",\"weight\":50,\"yarn\":10},{\"color\":\"15NY褐色\",\"planOrderDetailId\":2,\"price\":1,\"produce_weight\":46,\"quantity\":315,\"size\":\"23*9\",\"weight\":50,\"yarn\":10},{\"color\":\"黑色组151/72\",\"planOrderDetailId\":3,\"price\":1,\"produce_weight\":46,\"quantity\":427,\"size\":\"23*9\",\"weight\":50,\"yarn\":19},{\"color\":\"褐色组106/粉色\",\"planOrderDetailId\":4,\"price\":1,\"produce_weight\":46,\"quantity\":315,\"size\":\"23*9\",\"weight\":50,\"yarn\":19}]', '[{\"color\":\"15NY黑色\",\"colorsample\":\"\",\"material\":10,\"quantity\":18},{\"color\":\"15NY褐色\",\"colorsample\":\"\",\"material\":10,\"quantity\":13},{\"color\":\"151\",\"colorsample\":\"\",\"material\":19,\"quantity\":3},{\"color\":\"72\",\"colorsample\":\"\",\"material\":19,\"quantity\":3},{\"color\":\"106\",\"colorsample\":\"\",\"material\":19,\"quantity\":2},{\"color\":\"粉色\",\"colorsample\":\"\",\"material\":19,\"quantity\":2}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('40', '45', '2015-04-17 16:28:32', '2015-04-17 17:54:50', '7', '[{\"color\":\"15N黑色\",\"planOrderDetailId\":1,\"price\":0.7,\"produce_weight\":70,\"quantity\":547,\"size\":\"28高**21.5宽\",\"weight\":70,\"yarn\":10},{\"color\":\"15NY褐色\",\"planOrderDetailId\":2,\"price\":0.7,\"produce_weight\":70,\"quantity\":443,\"size\":\"28*21.5\",\"weight\":70,\"yarn\":10},{\"color\":\"15NY白色\",\"planOrderDetailId\":3,\"price\":0.7,\"produce_weight\":70,\"quantity\":45,\"size\":\"28*21.5\",\"weight\":70,\"yarn\":10}]', '[{\"color\":\"15NY黑色\",\"colorsample\":\"\",\"material\":10,\"quantity\":33},{\"color\":\"15NY褐色\",\"colorsample\":\"\",\"material\":10,\"quantity\":27},{\"color\":\"15NY白色\",\"colorsample\":\"\",\"material\":10,\"quantity\":5},{\"color\":\"151\",\"colorsample\":\"\",\"material\":19,\"quantity\":5},{\"color\":\"72\",\"colorsample\":\"\",\"material\":19,\"quantity\":5},{\"color\":\"106\",\"colorsample\":\"\",\"material\":19,\"quantity\":4},{\"color\":\"粉色\",\"colorsample\":\"\",\"material\":19,\"quantity\":4},{\"color\":\"2\",\"colorsample\":\"\",\"material\":19,\"quantity\":1},{\"color\":\"7\",\"colorsample\":\"\",\"material\":19,\"quantity\":1}]', '33', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('41', '46', '2015-04-17 17:30:13', '2015-04-17 17:54:13', '7', '[{\"color\":\"15NY黑色\",\"planOrderDetailId\":1,\"price\":2,\"produce_weight\":154,\"quantity\":763,\"size\":\"63..5x2*35.5\",\"weight\":155,\"yarn\":10},{\"color\":\"15NY棕色\",\"planOrderDetailId\":2,\"price\":2,\"produce_weight\":154,\"quantity\":268,\"size\":\"63.5x2*35.5\",\"weight\":155,\"yarn\":10},{\"color\":\"15NY白色\",\"planOrderDetailId\":3,\"price\":2,\"produce_weight\":154,\"quantity\":332,\"size\":\"63.5x2*35.5\",\"weight\":155,\"yarn\":10},{\"color\":\"15NY褐色\",\"planOrderDetailId\":4,\"price\":2,\"produce_weight\":154,\"quantity\":316,\"size\":\"63.5x2*35.5\",\"weight\":155,\"yarn\":10},{\"color\":\"15NY灰色\",\"planOrderDetailId\":5,\"price\":2,\"produce_weight\":154,\"quantity\":4530,\"size\":\"63.5x2*35.5\",\"weight\":155,\"yarn\":10}]', '[{\"color\":\"15NY黑色\",\"colorsample\":\"\",\"material\":10,\"quantity\":80},{\"color\":\"15NY棕色\",\"colorsample\":\"\",\"material\":10,\"quantity\":29},{\"color\":\"15NY白色\",\"colorsample\":\"\",\"material\":10,\"quantity\":36},{\"color\":\"15NY褐色\",\"colorsample\":\"\",\"material\":10,\"quantity\":34},{\"color\":\"15NY灰色\",\"colorsample\":\"\",\"material\":10,\"quantity\":468},{\"color\":\"151\",\"colorsample\":\"\",\"material\":19,\"quantity\":25},{\"color\":\"72\",\"colorsample\":\"\",\"material\":19,\"quantity\":25},{\"color\":\"106\",\"colorsample\":\"\",\"material\":19,\"quantity\":20},{\"color\":\"58\",\"colorsample\":\"\",\"material\":19,\"quantity\":11},{\"color\":\"2\",\"colorsample\":\"\",\"material\":19,\"quantity\":157},{\"color\":\"7\",\"colorsample\":\"\",\"material\":19,\"quantity\":11},{\"color\":\"粉色\",\"colorsample\":\"\",\"material\":19,\"quantity\":157}]', '33', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('42', '47', '2015-04-17 17:57:07', '2015-04-17 18:43:23', '7', '[{\"color\":\"QY114黑色\",\"planOrderDetailId\":1,\"price\":0.7,\"produce_weight\":142,\"quantity\":1185,\"size\":\"75x2*30\",\"weight\":142,\"yarn\":9},{\"color\":\"QY114桔色\",\"planOrderDetailId\":2,\"price\":0.7,\"produce_weight\":142,\"quantity\":1068,\"size\":\"75x2*30\",\"weight\":142,\"yarn\":9},{\"color\":\"QY114酒红色\",\"planOrderDetailId\":3,\"price\":0.7,\"produce_weight\":142,\"quantity\":849,\"size\":\"75x2*30\",\"weight\":142,\"yarn\":9},{\"color\":\"QY114绿色\",\"planOrderDetailId\":4,\"price\":0.7,\"produce_weight\":142,\"quantity\":1485,\"size\":\"75x2*30\",\"weight\":142,\"yarn\":9},{\"color\":\"QY114米色\",\"planOrderDetailId\":5,\"price\":0.7,\"produce_weight\":142,\"quantity\":117,\"size\":\"75x2*30\",\"weight\":142,\"yarn\":9}]', '[{\"color\":\"QY114黑色\",\"colorsample\":\"\",\"material\":9,\"quantity\":93},{\"color\":\"QY114桔红色\",\"colorsample\":\"\",\"material\":9,\"quantity\":84},{\"color\":\"QY114酒红色\",\"colorsample\":\"\",\"material\":9,\"quantity\":67},{\"color\":\"QY114绿色\",\"colorsample\":\"\",\"material\":9,\"quantity\":116},{\"color\":\"QY114米白色\",\"colorsample\":\"\",\"material\":9,\"quantity\":10},{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":29,\"quantity\":93},{\"color\":\"桔红色\",\"colorsample\":\"\",\"material\":29,\"quantity\":84},{\"color\":\"绿色\",\"colorsample\":\"\",\"material\":29,\"quantity\":116},{\"color\":\"酒红色\",\"colorsample\":\"\",\"material\":29,\"quantity\":67},{\"color\":\"米白色\",\"colorsample\":\"\",\"material\":29,\"quantity\":10}]', '30', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('43', '48', '2015-04-17 18:18:53', '2015-04-17 18:45:17', '7', '[{\"color\":\"QY15黑色\",\"planOrderDetailId\":1,\"price\":0.7,\"produce_weight\":240,\"quantity\":1044,\"size\":\"40x2*55\",\"weight\":240,\"yarn\":6},{\"color\":\"QY15-本白色\",\"planOrderDetailId\":2,\"price\":0.7,\"produce_weight\":240,\"quantity\":1244,\"size\":\"40x2*55\",\"weight\":240,\"yarn\":6}]', '[{\"color\":\"QY15黑色\",\"colorsample\":\"\",\"material\":6,\"quantity\":217},{\"color\":\"QY15本白色\",\"colorsample\":\"\",\"material\":6,\"quantity\":260},{\"color\":\"QY15白灰\",\"colorsample\":\"\",\"material\":20,\"quantity\":123}]', '27', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('44', '49', '2015-04-17 18:40:52', '2015-04-17 18:42:31', '7', '[{\"color\":\"15DP驼色\",\"planOrderDetailId\":1,\"price\":5,\"produce_weight\":333,\"quantity\":450,\"size\":\"75x2*42\",\"weight\":380,\"yarn\":6}]', '[{\"color\":\"15DP驼色\",\"colorsample\":\"\",\"material\":6,\"quantity\":145}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('45', '50', '2015-04-18 15:15:48', '2015-04-18 15:15:48', '7', '[{\"color\":\"黑色\",\"planOrderDetailId\":1,\"price\":0,\"produce_weight\":70,\"quantity\":433,\"size\":\"M/L-30x2*8\",\"weight\":70,\"yarn\":30},{\"color\":\"黑色\",\"planOrderDetailId\":2,\"price\":0,\"produce_weight\":57,\"quantity\":433,\"size\":\"SM-28x2*6.5\",\"weight\":57,\"yarn\":30}]', '[{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":30,\"quantity\":886},{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":28,\"quantity\":886}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('46', '51', '2015-04-18 15:25:37', '2015-04-18 18:32:15', '7', '[{\"color\":\"黑/白\",\"planOrderDetailId\":1,\"price\":5,\"produce_weight\":452,\"quantity\":1200,\"size\":\"130*130+须10\",\"weight\":475,\"yarn\":1}]', '[{\"color\":\"PG-黑色\",\"colorsample\":\"\",\"material\":1,\"quantity\":355},{\"color\":\"PG-白色\",\"colorsample\":\"\",\"material\":1,\"quantity\":270}]', '1', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('47', '52', '2015-04-18 15:36:17', '2015-04-18 15:36:17', '7', '[{\"color\":\"灰色\",\"planOrderDetailId\":1,\"price\":0,\"produce_weight\":170,\"quantity\":2150,\"size\":\"90x2*70\",\"weight\":200,\"yarn\":10},{\"color\":\"粉色\",\"planOrderDetailId\":2,\"price\":0,\"produce_weight\":170,\"quantity\":2150,\"size\":\"90x2*70\",\"weight\":200,\"yarn\":10},{\"color\":\"藏青\",\"planOrderDetailId\":3,\"price\":0,\"produce_weight\":170,\"quantity\":3200,\"size\":\"90x2*70\",\"weight\":200,\"yarn\":10}]', '[{\"color\":\"灰色\",\"colorsample\":\"\",\"material\":10,\"quantity\":395},{\"color\":\"粉色\",\"colorsample\":\"\",\"material\":10,\"quantity\":395},{\"color\":\"藏青\",\"colorsample\":\"\",\"material\":10,\"quantity\":585}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('48', '53', '2015-04-18 15:55:20', '2015-04-18 18:33:49', '7', '[{\"color\":\"VMB米色\",\"planOrderDetailId\":1,\"price\":0.8,\"produce_weight\":50,\"quantity\":190,\"size\":\"22*24\",\"weight\":50,\"yarn\":9},{\"color\":\"VMB蓝色\",\"planOrderDetailId\":2,\"price\":0.8,\"produce_weight\":50,\"quantity\":190,\"size\":\"22*24\",\"weight\":50,\"yarn\":9}]', '[{\"color\":\"VMB米色\",\"colorsample\":\"\",\"material\":9,\"quantity\":8},{\"color\":\"VMB蓝色\",\"colorsample\":\"\",\"material\":9,\"quantity\":8},{\"color\":\"米色\",\"colorsample\":\"\",\"material\":29,\"quantity\":4},{\"color\":\"蓝色\",\"colorsample\":\"\",\"material\":29,\"quantity\":4}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('49', '54', '2015-04-18 16:20:14', '2015-04-18 18:34:25', '7', '[{\"color\":\"743米色\",\"planOrderDetailId\":1,\"price\":1,\"produce_weight\":165,\"quantity\":240,\"size\":\"180*30\",\"weight\":165,\"yarn\":10},{\"color\":\"205蓝色\",\"planOrderDetailId\":2,\"price\":1,\"produce_weight\":165,\"quantity\":230,\"size\":\"180*30\",\"weight\":165,\"yarn\":10},{\"color\":\"M27黑色\",\"planOrderDetailId\":3,\"price\":1,\"produce_weight\":165,\"quantity\":230,\"size\":\"180*30\",\"weight\":165,\"yarn\":10}]', '[{\"color\":\"743米色\",\"colorsample\":\"\",\"material\":10,\"quantity\":24},{\"color\":\"205蓝色\",\"colorsample\":\"\",\"material\":10,\"quantity\":23},{\"color\":\"M27黑色\",\"colorsample\":\"\",\"material\":10,\"quantity\":23},{\"color\":\"米色\",\"colorsample\":\"\",\"material\":29,\"quantity\":22},{\"color\":\"蓝色\",\"colorsample\":\"\",\"material\":28,\"quantity\":21},{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":29,\"quantity\":21}]', '9', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('50', '55', '2015-04-18 17:30:25', '2015-04-18 18:35:08', '7', '[{\"color\":\"QY15黑色\",\"planOrderDetailId\":1,\"price\":0.8,\"produce_weight\":73,\"quantity\":888,\"size\":\"23高*20寛+边6.5\",\"weight\":73,\"yarn\":6},{\"color\":\"QY15本白色\",\"planOrderDetailId\":2,\"price\":0.8,\"produce_weight\":73,\"quantity\":1088,\"size\":\"23高*20寛+边6.5\",\"weight\":73,\"yarn\":6}]', '[{\"color\":\"QY15黑色\",\"colorsample\":\"\",\"material\":6,\"quantity\":48},{\"color\":\"QY15本白色\",\"colorsample\":\"\",\"material\":6,\"quantity\":58},{\"color\":\"QY15白灰\",\"colorsample\":\"\",\"material\":20,\"quantity\":56}]', '7', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('51', '56', '2015-04-18 17:39:01', '2015-04-18 18:36:02', '7', '[{\"color\":\"Cap黑色\",\"planOrderDetailId\":1,\"price\":1.2,\"produce_weight\":123,\"quantity\":1622,\"size\":\"24寛*30高\",\"weight\":123,\"yarn\":1}]', '[{\"color\":\"Cap黑色\",\"colorsample\":\"\",\"material\":1,\"quantity\":220}]', '6', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('52', '57', '2015-04-18 17:58:54', '2015-04-18 18:36:24', '7', '[{\"color\":\"15GIII-  棕色\",\"planOrderDetailId\":1,\"price\":0.7,\"produce_weight\":171,\"quantity\":2000,\"size\":\"165*25+须15\",\"weight\":191,\"yarn\":9}]', '[{\"color\":\"15GIII-棕色\",\"colorsample\":\"\",\"material\":9,\"quantity\":370}]', '9', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('53', '58', '2015-04-18 18:05:56', '2015-04-18 20:09:06', '7', '[{\"color\":\"W120-黑色\",\"planOrderDetailId\":1,\"price\":0.25,\"produce_weight\":62,\"quantity\":1833,\"size\":\"20寛*21高\",\"weight\":52,\"yarn\":1},{\"color\":\"W120-棕色\",\"planOrderDetailId\":2,\"price\":0.25,\"produce_weight\":62,\"quantity\":420,\"size\":\"20寛*21高\",\"weight\":52,\"yarn\":1},{\"color\":\"W120-灰色\",\"planOrderDetailId\":3,\"price\":0.25,\"produce_weight\":62,\"quantity\":1185,\"size\":\"20寛*21高\",\"weight\":52,\"yarn\":1}]', '[{\"color\":\"W120-黑色\",\"colorsample\":\"\",\"material\":1,\"quantity\":123},{\"color\":\"W120灰色\",\"colorsample\":\"\",\"material\":1,\"quantity\":80},{\"color\":\"W120棕色\",\"colorsample\":\"\",\"material\":1,\"quantity\":28}]', '22', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('54', '59', '2015-04-18 18:17:38', '2015-04-18 20:10:33', '7', '[{\"color\":\"自然色\",\"planOrderDetailId\":1,\"price\":10.5,\"produce_weight\":458,\"quantity\":1060,\"size\":\"0\",\"weight\":508,\"yarn\":9}]', '[{\"color\":\"K974\",\"colorsample\":\"\",\"material\":9,\"quantity\":210},{\"color\":\"MD黑色\",\"colorsample\":\"\",\"material\":9,\"quantity\":210},{\"color\":\"MD中灰\",\"colorsample\":\"\",\"material\":9,\"quantity\":105},{\"color\":\"MD灰白\",\"colorsample\":\"\",\"material\":9,\"quantity\":105}]', '6', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('55', '60', '2015-04-19 10:10:58', '2015-04-20 09:24:41', '7', '[{\"color\":\"粉色\",\"planOrderDetailId\":1,\"price\":0.25,\"produce_weight\":113,\"quantity\":200,\"size\":\"21.5寛*26高+边10\",\"weight\":110,\"yarn\":1},{\"color\":\"军蓝\",\"planOrderDetailId\":2,\"price\":0.25,\"produce_weight\":113,\"quantity\":1500,\"size\":\"21.5寛*26高+边10\",\"weight\":110,\"yarn\":1},{\"color\":\"深灰\",\"planOrderDetailId\":3,\"price\":0.25,\"produce_weight\":113,\"quantity\":800,\"size\":\"21.5寛*26高+边10\",\"weight\":110,\"yarn\":1}]', '[{\"color\":\"粉色\",\"colorsample\":\"\",\"material\":1,\"quantity\":25},{\"color\":\"深灰\",\"colorsample\":\"\",\"material\":1,\"quantity\":95},{\"color\":\"军蓝\",\"colorsample\":\"\",\"material\":1,\"quantity\":175}]', '22', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('56', '61', '2015-04-19 13:06:24', '2015-04-20 09:24:24', '7', '[{\"color\":\"03X浅粉\",\"planOrderDetailId\":1,\"price\":1.8,\"produce_weight\":326,\"quantity\":2100,\"size\":\"65x2*37\",\"weight\":328,\"yarn\":5},{\"color\":\"712\",\"planOrderDetailId\":2,\"price\":1.8,\"produce_weight\":326,\"quantity\":2160,\"size\":\"65x2*37\",\"weight\":328,\"yarn\":5},{\"color\":\"59X藏青\",\"planOrderDetailId\":3,\"price\":1.8,\"produce_weight\":326,\"quantity\":2100,\"size\":\"65x2*37\",\"weight\":328,\"yarn\":5},{\"color\":\"69X蓝色\",\"planOrderDetailId\":4,\"price\":1.8,\"produce_weight\":326,\"quantity\":2010,\"size\":\"65x2*37\",\"weight\":328,\"yarn\":5}]', '[{\"color\":\"03X浅粉\",\"colorsample\":\"\",\"material\":5,\"quantity\":740},{\"color\":\"90X712\",\"colorsample\":\"\",\"material\":5,\"quantity\":760},{\"color\":\"59X藏青\",\"colorsample\":\"\",\"material\":5,\"quantity\":740},{\"color\":\"69X蓝色\",\"colorsample\":\"\",\"material\":5,\"quantity\":708}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('57', '62', '2015-04-19 13:31:00', '2015-04-20 09:39:00', '7', '[{\"color\":\"33X红色\",\"planOrderDetailId\":1,\"price\":0.4,\"produce_weight\":125,\"quantity\":2040,\"size\":\"30x2*45\",\"weight\":125,\"yarn\":1},{\"color\":\"42X 亮粉\",\"planOrderDetailId\":2,\"price\":0.4,\"produce_weight\":125,\"quantity\":2220,\"size\":\"30x2*45\",\"weight\":125,\"yarn\":1},{\"color\":\"59X藏青\",\"planOrderDetailId\":3,\"price\":0.4,\"produce_weight\":125,\"quantity\":2040,\"size\":\"30x2*45\",\"weight\":125,\"yarn\":1},{\"color\":\"99X黑色\",\"planOrderDetailId\":4,\"price\":0.4,\"produce_weight\":125,\"quantity\":2220,\"size\":\"30x2*45\",\"weight\":125,\"yarn\":1},{\"color\":\"90X712\",\"planOrderDetailId\":5,\"price\":0.4,\"produce_weight\":125,\"quantity\":2220,\"size\":\"30x2*45\",\"weight\":125,\"yarn\":1}]', '[{\"color\":\"33X红色\",\"colorsample\":\"\",\"material\":1,\"quantity\":273},{\"color\":\"42X亮粉\",\"colorsample\":\"\",\"material\":1,\"quantity\":299},{\"color\":\"59X藏青\",\"colorsample\":\"\",\"material\":1,\"quantity\":275},{\"color\":\"99X黑色\",\"colorsample\":\"\",\"material\":1,\"quantity\":300},{\"color\":\"90X712\",\"colorsample\":\"\",\"material\":1,\"quantity\":299}]', '9', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('59', '64', '2015-04-19 14:17:27', '2015-04-20 09:24:57', '7', '[{\"color\":\"01X米色\",\"planOrderDetailId\":1,\"price\":0.5,\"produce_weight\":55,\"quantity\":7304,\"size\":\"27高*20寛\",\"weight\":56,\"yarn\":1},{\"color\":\"84X咖啡色\",\"planOrderDetailId\":2,\"price\":0.5,\"produce_weight\":55,\"quantity\":6130,\"size\":\"27高*20寛\",\"weight\":56,\"yarn\":1},{\"color\":\"09X712\",\"planOrderDetailId\":3,\"price\":0.5,\"produce_weight\":55,\"quantity\":7304,\"size\":\"27*20\",\"weight\":56,\"yarn\":1}]', '[{\"color\":\"01X米色\",\"colorsample\":\"\",\"material\":1,\"quantity\":506},{\"color\":\"84X咖啡色\",\"colorsample\":\"\",\"material\":1,\"quantity\":425},{\"color\":\"09X712\",\"colorsample\":\"\",\"material\":1,\"quantity\":506}]', '33', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('60', '65', '2015-04-19 14:37:11', '2015-04-20 09:23:03', '7', '[{\"color\":\"01X   米色\",\"planOrderDetailId\":1,\"price\":0.6,\"produce_weight\":210,\"quantity\":10560,\"size\":\"33x2*50\",\"weight\":210,\"yarn\":1},{\"color\":\"84X咖啡色\",\"planOrderDetailId\":2,\"price\":0.6,\"produce_weight\":210,\"quantity\":9000,\"size\":\"33x2*50\",\"weight\":210,\"yarn\":1},{\"color\":\"28X土黄\",\"planOrderDetailId\":3,\"price\":0.6,\"produce_weight\":210,\"quantity\":6840,\"size\":\"33x2*50\",\"weight\":210,\"yarn\":1},{\"color\":\"09X712\",\"planOrderDetailId\":4,\"price\":0.6,\"produce_weight\":210,\"quantity\":10560,\"size\":\"33x2*50\",\"weight\":210,\"yarn\":1}]', '[{\"color\":\"09X712\",\"colorsample\":\"\",\"material\":1,\"quantity\":2380}]', '9', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('61', '65', '2015-04-19 14:45:41', '2015-04-20 09:50:08', '7', '[{\"color\":\"01X   米色\",\"planOrderDetailId\":1,\"price\":0,\"produce_weight\":210,\"quantity\":10560,\"size\":\"33x2*50\",\"weight\":210,\"yarn\":1},{\"color\":\"84X咖啡色\",\"planOrderDetailId\":2,\"price\":0,\"produce_weight\":210,\"quantity\":9000,\"size\":\"33x2*50\",\"weight\":210,\"yarn\":1},{\"color\":\"28X土黄\",\"planOrderDetailId\":3,\"price\":0,\"produce_weight\":210,\"quantity\":6840,\"size\":\"33x2*50\",\"weight\":210,\"yarn\":1},{\"color\":\"09X712\",\"planOrderDetailId\":4,\"price\":0,\"produce_weight\":210,\"quantity\":10560,\"size\":\"33x2*50\",\"weight\":210,\"yarn\":1}]', '[{\"color\":\"84X咖啡色\",\"colorsample\":\"\",\"material\":1,\"quantity\":2027}]', '11', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('62', '65', '2015-04-19 14:48:39', '2015-04-20 09:50:51', '7', '[{\"color\":\"01X   米色\",\"planOrderDetailId\":1,\"price\":0,\"produce_weight\":210,\"quantity\":10560,\"size\":\"33x2*50\",\"weight\":210,\"yarn\":1},{\"color\":\"84X咖啡色\",\"planOrderDetailId\":2,\"price\":0,\"produce_weight\":210,\"quantity\":9000,\"size\":\"33x2*50\",\"weight\":210,\"yarn\":1},{\"color\":\"28X土黄\",\"planOrderDetailId\":3,\"price\":0,\"produce_weight\":210,\"quantity\":6840,\"size\":\"33x2*50\",\"weight\":210,\"yarn\":1},{\"color\":\"09X712\",\"planOrderDetailId\":4,\"price\":0,\"produce_weight\":210,\"quantity\":10560,\"size\":\"33x2*50\",\"weight\":210,\"yarn\":1}]', '[{\"color\":\"28X  土黄\",\"colorsample\":\"\",\"material\":1,\"quantity\":1542}]', '27', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('63', '65', '2015-04-19 14:49:35', '2015-04-20 09:51:28', '7', '[{\"color\":\"01X   米色\",\"planOrderDetailId\":1,\"price\":0,\"produce_weight\":210,\"quantity\":10560,\"size\":\"33x2*50\",\"weight\":210,\"yarn\":1},{\"color\":\"84X咖啡色\",\"planOrderDetailId\":2,\"price\":0,\"produce_weight\":210,\"quantity\":9000,\"size\":\"33x2*50\",\"weight\":210,\"yarn\":1},{\"color\":\"28X土黄\",\"planOrderDetailId\":3,\"price\":0,\"produce_weight\":210,\"quantity\":6840,\"size\":\"33x2*50\",\"weight\":210,\"yarn\":1},{\"color\":\"09X712\",\"planOrderDetailId\":4,\"price\":0,\"produce_weight\":210,\"quantity\":10560,\"size\":\"33x2*50\",\"weight\":210,\"yarn\":1}]', '[{\"color\":\"01X米色\",\"colorsample\":\"\",\"material\":1,\"quantity\":2380}]', '30', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('64', '66', '2015-04-19 15:07:13', '2015-04-19 17:17:31', '7', '[{\"color\":\"LS-紫色\",\"planOrderDetailId\":1,\"price\":1.2,\"produce_weight\":64,\"quantity\":2200,\"size\":\"23高*22寛+边6\",\"weight\":91,\"yarn\":1},{\"color\":\"LS-黑色\",\"planOrderDetailId\":2,\"price\":1.2,\"produce_weight\":64,\"quantity\":2700,\"size\":\"23高*22寛+边6\",\"weight\":91,\"yarn\":1}]', '[{\"color\":\"LS-紫色\",\"colorsample\":\"\",\"material\":1,\"quantity\":152},{\"color\":\"LS-黑色\",\"colorsample\":\"\",\"material\":1,\"quantity\":186}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('65', '67', '2015-04-19 15:18:18', '2015-04-19 17:17:56', '7', '[{\"color\":\"EY深灰\",\"planOrderDetailId\":1,\"price\":0.8,\"produce_weight\":195,\"quantity\":1431,\"size\":\"34寛*37长\",\"weight\":195,\"yarn\":3}]', '[{\"color\":\"EY深灰\",\"colorsample\":\"\",\"material\":3,\"quantity\":310}]', '9', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('66', '68', '2015-04-19 15:53:28', '2015-04-20 09:23:46', '7', '[{\"color\":\"灰色组\",\"planOrderDetailId\":1,\"price\":0.3,\"produce_weight\":103,\"quantity\":537,\"size\":\"3-4\",\"weight\":89,\"yarn\":11},{\"color\":\"灰色组\",\"planOrderDetailId\":2,\"price\":0.3,\"produce_weight\":119,\"quantity\":881,\"size\":\"5-6\",\"weight\":97,\"yarn\":11},{\"color\":\"灰色组\",\"planOrderDetailId\":3,\"price\":0.3,\"produce_weight\":124,\"quantity\":1876,\"size\":\"7-10\",\"weight\":110,\"yarn\":11},{\"color\":\"灰色组\",\"planOrderDetailId\":4,\"price\":0.3,\"produce_weight\":138,\"quantity\":1005,\"size\":\"11-13\",\"weight\":124,\"yarn\":11},{\"color\":\"灰色组\",\"planOrderDetailId\":5,\"price\":0.3,\"produce_weight\":148,\"quantity\":426,\"size\":\"14-16\",\"weight\":134,\"yarn\":11},{\"color\":\"蓝色组\",\"planOrderDetailId\":6,\"price\":0.3,\"produce_weight\":110,\"quantity\":501,\"size\":\"3-4\",\"weight\":96,\"yarn\":11},{\"color\":\"蓝色组\",\"planOrderDetailId\":7,\"price\":0.3,\"produce_weight\":126,\"quantity\":763,\"size\":\"5-6\",\"weight\":112,\"yarn\":11},{\"color\":\"蓝色组\",\"planOrderDetailId\":8,\"price\":0.3,\"produce_weight\":138,\"quantity\":1652,\"size\":\"7-10\",\"weight\":124,\"yarn\":11},{\"color\":\"蓝色组\",\"planOrderDetailId\":9,\"price\":0.3,\"produce_weight\":149,\"quantity\":1033,\"size\":\"11-13\",\"weight\":135,\"yarn\":11},{\"color\":\"蓝色组\",\"planOrderDetailId\":10,\"price\":0.3,\"produce_weight\":160,\"quantity\":252,\"size\":\"14-16\",\"weight\":146,\"yarn\":11}]', '[{\"color\":\"NEXT-棕色\",\"colorsample\":\"\",\"material\":11,\"quantity\":218},{\"color\":\"712A\",\"colorsample\":\"\",\"material\":12,\"quantity\":436},{\"color\":\"NEXT-蓝色\",\"colorsample\":\"\",\"material\":11,\"quantity\":420},{\"color\":\"NEXT-黑色\",\"colorsample\":\"\",\"material\":11,\"quantity\":210}]', '9', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('67', '69', '2015-04-19 16:11:26', '2015-04-19 17:17:15', '7', '[{\"color\":\"黑色\",\"planOrderDetailId\":1,\"price\":3,\"produce_weight\":192,\"quantity\":2095,\"size\":\"180*25+20须\",\"weight\":228,\"yarn\":9}]', '[{\"color\":\"G8黑色\",\"colorsample\":\"\",\"material\":9,\"quantity\":113},{\"color\":\"G8黑色彩点\",\"colorsample\":\"\",\"material\":17,\"quantity\":231},{\"color\":\"G8本白\",\"colorsample\":\"\",\"material\":26,\"quantity\":91}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('68', '70', '2015-04-19 16:26:31', '2015-04-19 17:10:46', '7', '[{\"color\":\"G8黑色\",\"planOrderDetailId\":1,\"price\":0.8,\"produce_weight\":42,\"quantity\":2095,\"size\":\"21高*22寛+球11公分\",\"weight\":72,\"yarn\":9}]', '[{\"color\":\"G8黑色\",\"colorsample\":\"\",\"material\":9,\"quantity\":28},{\"color\":\"G8黑色\",\"colorsample\":\"\",\"material\":17,\"quantity\":52},{\"color\":\"G8本白\",\"colorsample\":\"\",\"material\":26,\"quantity\":16}]', '6', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('69', '71', '2015-04-19 16:42:02', '2015-04-20 09:20:57', '7', '[{\"color\":\"多色\",\"planOrderDetailId\":1,\"price\":2.5,\"produce_weight\":220,\"quantity\":3600,\"size\":\"180*25+须20\",\"weight\":210,\"yarn\":9}]', '[{\"color\":\"G8黑色\",\"colorsample\":\"\",\"material\":9,\"quantity\":97},{\"color\":\"G8红绿段染\",\"colorsample\":\"\",\"material\":9,\"quantity\":105},{\"color\":\"G8米色\",\"colorsample\":\"\",\"material\":9,\"quantity\":59},{\"color\":\"G5桔色\",\"colorsample\":\"\",\"material\":6,\"quantity\":55},{\"color\":\"G5黑色\",\"colorsample\":\"\",\"material\":6,\"quantity\":299},{\"color\":\"G5米色\",\"colorsample\":\"\",\"material\":6,\"quantity\":194}]', '7', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('70', '72', '2015-04-19 17:23:38', '2015-04-20 09:23:22', '7', '[{\"color\":\"SLI黑色\",\"planOrderDetailId\":1,\"price\":1,\"produce_weight\":108,\"quantity\":4416,\"size\":\"20*20+边\",\"weight\":126,\"yarn\":6},{\"color\":\"SLI米白\",\"planOrderDetailId\":2,\"price\":1,\"produce_weight\":108,\"quantity\":872,\"size\":\"20*20+边\",\"weight\":126,\"yarn\":6},{\"color\":\"SLI暗红\",\"planOrderDetailId\":3,\"price\":1,\"produce_weight\":108,\"quantity\":10496,\"size\":\"20*20+边\",\"weight\":126,\"yarn\":6}]', '[{\"color\":\"SLI黑色\",\"colorsample\":\"\",\"material\":6,\"quantity\":515},{\"color\":\"SLI米白\",\"colorsample\":\"\",\"material\":6,\"quantity\":105},{\"color\":\"SLI暗红\",\"colorsample\":\"\",\"material\":6,\"quantity\":1217}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('71', '73', '2015-04-19 17:30:20', '2015-04-20 09:18:14', '7', '[{\"color\":\"712\",\"planOrderDetailId\":1,\"price\":1.2,\"produce_weight\":65,\"quantity\":872,\"size\":\"26\",\"weight\":80,\"yarn\":9}]', '[{\"color\":\"712\",\"colorsample\":\"\",\"material\":9,\"quantity\":65}]', '37', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('72', '74', '2015-04-20 14:46:55', '2015-04-20 16:50:22', '7', '[{\"color\":\"712#\",\"planOrderDetailId\":1,\"price\":3,\"produce_weight\":220,\"quantity\":1030,\"size\":\"69x2*37\",\"weight\":220,\"yarn\":5}]', '[{\"color\":\"712\",\"colorsample\":\"\",\"material\":5,\"quantity\":245}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('73', '75', '2015-04-20 14:52:54', '2015-04-20 16:50:34', '7', '[{\"color\":\"712\",\"planOrderDetailId\":1,\"price\":1,\"produce_weight\":58,\"quantity\":1030,\"size\":\"26高*25寛\",\"weight\":58,\"yarn\":5}]', '[{\"color\":\"712\",\"colorsample\":\"\",\"material\":5,\"quantity\":66}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('74', '76', '2015-04-20 15:09:50', '2015-04-20 16:50:10', '7', '[{\"color\":\"9008-白色\",\"planOrderDetailId\":1,\"price\":0.6,\"produce_weight\":275,\"quantity\":1101,\"size\":\"40*40\",\"weight\":265,\"yarn\":6},{\"color\":\"9008-黑色\",\"planOrderDetailId\":2,\"price\":0.6,\"produce_weight\":275,\"quantity\":801,\"size\":\"40*40\",\"weight\":265,\"yarn\":6}]', '[{\"color\":\"9008-黑色\",\"colorsample\":\"\",\"material\":6,\"quantity\":235},{\"color\":\"9008-白色\",\"colorsample\":\"\",\"material\":6,\"quantity\":322},{\"color\":\"金丝\",\"colorsample\":\"\",\"material\":19,\"quantity\":5},{\"color\":\"银丝\",\"colorsample\":\"\",\"material\":19,\"quantity\":6.5}]', '9', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('75', '77', '2015-04-20 15:19:47', '2015-04-20 16:49:55', '7', '[{\"color\":\"9008黑色\",\"planOrderDetailId\":1,\"price\":0.7,\"produce_weight\":60,\"quantity\":801,\"size\":\"22*21+球8公分\",\"weight\":73,\"yarn\":6},{\"color\":\"9008白色\",\"planOrderDetailId\":2,\"price\":0.7,\"produce_weight\":60,\"quantity\":1101,\"size\":\"22*21+球6公分\",\"weight\":73,\"yarn\":6}]', '[{\"color\":\"9008黑色\",\"colorsample\":\"\",\"material\":6,\"quantity\":51},{\"color\":\"9008白色\",\"colorsample\":\"\",\"material\":6,\"quantity\":70},{\"color\":\"金丝\",\"colorsample\":\"\",\"material\":19,\"quantity\":2},{\"color\":\"银丝\",\"colorsample\":\"\",\"material\":19,\"quantity\":2.5}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('76', '78', '2015-04-20 15:30:45', '2015-04-20 16:49:42', '7', '[{\"color\":\"红色\",\"planOrderDetailId\":1,\"price\":2.8,\"produce_weight\":290,\"quantity\":1002,\"size\":\"39*28\",\"weight\":290,\"yarn\":31},{\"color\":\"粉色\",\"planOrderDetailId\":2,\"price\":2.8,\"produce_weight\":290,\"quantity\":1002,\"size\":\"39*28\",\"weight\":290,\"yarn\":31},{\"color\":\"米色\",\"planOrderDetailId\":3,\"price\":2.8,\"produce_weight\":290,\"quantity\":1200,\"size\":\"39*28\",\"weight\":290,\"yarn\":31}]', '[{\"color\":\"红色\",\"colorsample\":\"\",\"material\":31,\"quantity\":315},{\"color\":\"粉色\",\"colorsample\":\"\",\"material\":31,\"quantity\":315},{\"color\":\"米色\",\"colorsample\":\"\",\"material\":31,\"quantity\":377}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('77', '79', '2015-04-23 14:34:04', '2015-04-23 15:12:39', '7', '[{\"color\":\"4601-藏青\",\"planOrderDetailId\":1,\"price\":0.6,\"produce_weight\":45,\"quantity\":801,\"size\":\"26\",\"weight\":45,\"yarn\":1},{\"color\":\"4601-夹花棕\",\"planOrderDetailId\":2,\"price\":0.6,\"produce_weight\":45,\"quantity\":702,\"size\":\"26\",\"weight\":45,\"yarn\":1},{\"color\":\"4601-红色\",\"planOrderDetailId\":3,\"price\":0.6,\"produce_weight\":45,\"quantity\":600,\"size\":\"26\",\"weight\":45,\"yarn\":1}]', '[{\"color\":\"4601-藏青\",\"colorsample\":\"\",\"material\":1,\"quantity\":37},{\"color\":\"4601夹花棕\",\"colorsample\":\"\",\"material\":1,\"quantity\":33},{\"color\":\"4601红色\",\"colorsample\":\"\",\"material\":1,\"quantity\":28},{\"color\":\"MH-57\",\"colorsample\":\"\",\"material\":19,\"quantity\":8}]', '1', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('78', '80', '2015-04-23 14:44:33', '2015-04-23 15:11:59', '7', '[{\"color\":\"4601藏青\",\"planOrderDetailId\":1,\"price\":2.5,\"produce_weight\":130,\"quantity\":801,\"size\":\"176*50\",\"weight\":130,\"yarn\":1},{\"color\":\"4601夹花棕\",\"planOrderDetailId\":2,\"price\":2.5,\"produce_weight\":130,\"quantity\":702,\"size\":\"176*50\",\"weight\":130,\"yarn\":1},{\"color\":\"4601红色\",\"planOrderDetailId\":3,\"price\":2.5,\"produce_weight\":130,\"quantity\":600,\"size\":\"176*50\",\"weight\":130,\"yarn\":1}]', '[{\"color\":\"6401藏青\",\"colorsample\":\"\",\"material\":1,\"quantity\":88},{\"color\":\"4601夹花棕\",\"colorsample\":\"\",\"material\":1,\"quantity\":78},{\"color\":\"4601红色\",\"colorsample\":\"\",\"material\":1,\"quantity\":67},{\"color\":\"MH-57\",\"colorsample\":\"\",\"material\":19,\"quantity\":69}]', '1', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('79', '81', '2015-04-24 12:47:21', '2015-04-24 12:47:21', '7', '[{\"color\":\"072粉色\",\"planOrderDetailId\":1,\"price\":0,\"produce_weight\":80,\"quantity\":560,\"size\":\"40x2*60\",\"weight\":80,\"yarn\":1},{\"color\":\"712\",\"planOrderDetailId\":2,\"price\":0,\"produce_weight\":80,\"quantity\":560,\"size\":\"40x2*60\",\"weight\":80,\"yarn\":1}]', '[{\"color\":\"072粉色\",\"colorsample\":\"\",\"material\":1,\"quantity\":50},{\"color\":\"712\",\"colorsample\":\"\",\"material\":1,\"quantity\":50}]', '30', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('80', '82', '2015-04-24 12:53:11', '2015-04-30 20:38:02', '7', '[{\"color\":\"072粉色\",\"planOrderDetailId\":1,\"price\":0.6,\"produce_weight\":61,\"quantity\":560,\"size\":\"21寛*28高\",\"weight\":54,\"yarn\":1},{\"color\":\"712\",\"planOrderDetailId\":2,\"price\":0.6,\"produce_weight\":61,\"quantity\":560,\"size\":\"21寛*28高\",\"weight\":54,\"yarn\":1}]', '[{\"color\":\"072粉色\",\"colorsample\":\"\",\"material\":1,\"quantity\":38},{\"color\":\"712\",\"colorsample\":\"\",\"material\":1,\"quantity\":38}]', '1', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('81', '83', '2015-04-24 13:04:24', '2015-04-25 12:01:41', '7', '[{\"color\":\"黑灰组\",\"planOrderDetailId\":1,\"price\":1.2,\"produce_weight\":350,\"quantity\":639,\"size\":\"114*127\",\"weight\":350,\"yarn\":1}]', '[{\"color\":\"081黑色\",\"colorsample\":\"\",\"material\":1,\"quantity\":82},{\"color\":\"081棕色\",\"colorsample\":\"\",\"material\":1,\"quantity\":164}]', '11', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('82', '84', '2015-04-24 13:17:26', '2015-05-03 11:15:59', '7', '[{\"color\":\"灰色组\",\"planOrderDetailId\":1,\"price\":1.2,\"produce_weight\":350,\"quantity\":4400,\"size\":\"114*127\",\"weight\":350,\"yarn\":1},{\"color\":\"黑色组\",\"planOrderDetailId\":2,\"price\":1.2,\"produce_weight\":350,\"quantity\":800,\"size\":\"114*127\",\"weight\":350,\"yarn\":1}]', '[{\"color\":\"浅灰\",\"colorsample\":\"\",\"material\":1,\"quantity\":1105},{\"color\":\"中灰\",\"colorsample\":\"\",\"material\":1,\"quantity\":555},{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":1,\"quantity\":103},{\"color\":\"深灰\",\"colorsample\":\"\",\"material\":1,\"quantity\":206}]', '9', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('83', '85', '2015-04-24 13:37:19', '2015-04-24 13:37:19', '7', '[{\"color\":\"灰色\",\"planOrderDetailId\":1,\"price\":0,\"produce_weight\":75,\"quantity\":1059,\"size\":\"66*15.5\",\"weight\":75,\"yarn\":30}]', '[{\"color\":\"灰色\",\"colorsample\":\"\",\"material\":30,\"quantity\":0},{\"color\":\"灰色\",\"colorsample\":\"\",\"material\":28,\"quantity\":80}]', '2', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('84', '86', '2015-04-25 09:27:41', '2015-04-30 21:44:51', '7', '[{\"color\":\"c008藏青\",\"planOrderDetailId\":1,\"price\":3.5,\"produce_weight\":165,\"quantity\":720,\"size\":\"40*40\",\"weight\":235,\"yarn\":1},{\"color\":\"c008卡其\",\"planOrderDetailId\":2,\"price\":3.5,\"produce_weight\":165,\"quantity\":830,\"size\":\"40*40\",\"weight\":235,\"yarn\":1}]', '[{\"color\":\"c008藏青\",\"colorsample\":\"\",\"material\":1,\"quantity\":130},{\"color\":\"c008卡其\",\"colorsample\":\"\",\"material\":1,\"quantity\":150}]', '1', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('85', '87', '2015-04-27 08:13:15', '2015-05-03 11:10:13', '7', '[{\"color\":\"黑色\",\"planOrderDetailId\":1,\"price\":1,\"produce_weight\":46,\"quantity\":420,\"size\":\"23*9\",\"weight\":50,\"yarn\":10},{\"color\":\"褐色\",\"planOrderDetailId\":2,\"price\":1,\"produce_weight\":46,\"quantity\":150,\"size\":\"23*9\",\"weight\":50,\"yarn\":10},{\"color\":\"灰色\",\"planOrderDetailId\":3,\"price\":1,\"produce_weight\":46,\"quantity\":270,\"size\":\"23*9\",\"weight\":50,\"yarn\":10},{\"color\":\"白色\",\"planOrderDetailId\":4,\"price\":1,\"produce_weight\":46,\"quantity\":200,\"size\":\"23*9\",\"weight\":50,\"yarn\":10}]', '[{\"color\":\"15NY黑色\",\"colorsample\":\"\",\"material\":10,\"quantity\":17},{\"color\":\"15NY褐色\",\"colorsample\":\"\",\"material\":10,\"quantity\":7},{\"color\":\"15NY灰色\",\"colorsample\":\"\",\"material\":10,\"quantity\":11},{\"color\":\"15NY白色\",\"colorsample\":\"\",\"material\":10,\"quantity\":9},{\"color\":\"151\",\"colorsample\":\"\",\"material\":19,\"quantity\":3},{\"color\":\"72\",\"colorsample\":\"\",\"material\":19,\"quantity\":3},{\"color\":\"106\",\"colorsample\":\"\",\"material\":19,\"quantity\":1},{\"color\":\"粉色\",\"colorsample\":\"\",\"material\":19,\"quantity\":3},{\"color\":\"1\",\"colorsample\":\"\",\"material\":19,\"quantity\":3.5},{\"color\":\"7\",\"colorsample\":\"\",\"material\":19,\"quantity\":1.5}]', '33', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('86', '88', '2015-04-27 08:30:18', '2015-05-03 11:09:15', '7', '[{\"color\":\"黑色\",\"planOrderDetailId\":1,\"price\":0.7,\"produce_weight\":70,\"quantity\":2654,\"size\":\"28*21.5寛\",\"weight\":70,\"yarn\":10},{\"color\":\"棕色\",\"planOrderDetailId\":2,\"price\":0.7,\"produce_weight\":70,\"quantity\":1318,\"size\":\"28*21.5寛\",\"weight\":70,\"yarn\":10},{\"color\":\"白色\",\"planOrderDetailId\":3,\"price\":0.7,\"produce_weight\":70,\"quantity\":2066,\"size\":\"28*21.5寛\",\"weight\":70,\"yarn\":10},{\"color\":\"灰色\",\"planOrderDetailId\":4,\"price\":0.7,\"produce_weight\":70,\"quantity\":290,\"size\":\"28*21.5寛\",\"weight\":70,\"yarn\":10}]', '[{\"color\":\"15NY黑色\",\"colorsample\":\"\",\"material\":10,\"quantity\":155},{\"color\":\"15NY棕色\",\"colorsample\":\"\",\"material\":10,\"quantity\":77},{\"color\":\"15NY白色\",\"colorsample\":\"\",\"material\":10,\"quantity\":121},{\"color\":\"15NY灰色\",\"colorsample\":\"\",\"material\":9,\"quantity\":18},{\"color\":\"151\",\"colorsample\":\"\",\"material\":19,\"quantity\":12},{\"color\":\"72\",\"colorsample\":\"\",\"material\":19,\"quantity\":12},{\"color\":\"106\",\"colorsample\":\"\",\"material\":19,\"quantity\":6},{\"color\":\"58\",\"colorsample\":\"\",\"material\":19,\"quantity\":6},{\"color\":\"1\",\"colorsample\":\"\",\"material\":19,\"quantity\":12},{\"color\":\"7\",\"colorsample\":\"\",\"material\":19,\"quantity\":10},{\"color\":\"粉色\",\"colorsample\":\"\",\"material\":19,\"quantity\":2}]', '37', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('87', '89', '2015-04-27 08:50:47', '2015-05-03 11:07:44', '7', '[{\"color\":\"黑色\",\"planOrderDetailId\":1,\"price\":2,\"produce_weight\":155,\"quantity\":3093,\"size\":\"63.5x2*35.5\",\"weight\":155,\"yarn\":10},{\"color\":\"棕色\",\"planOrderDetailId\":2,\"price\":2,\"produce_weight\":155,\"quantity\":1430,\"size\":\"63.5x2*35.5\",\"weight\":155,\"yarn\":10},{\"color\":\"白色\",\"planOrderDetailId\":3,\"price\":2,\"produce_weight\":155,\"quantity\":1329,\"size\":\"63.5x2*35.5\",\"weight\":155,\"yarn\":10},{\"color\":\"褐色\",\"planOrderDetailId\":4,\"price\":2,\"produce_weight\":155,\"quantity\":350,\"size\":\"63.5x2*35.5\",\"weight\":155,\"yarn\":10},{\"color\":\"灰色\",\"planOrderDetailId\":5,\"price\":2,\"produce_weight\":155,\"quantity\":306,\"size\":\"63.5x2*35.5\",\"weight\":155,\"yarn\":10}]', '[{\"color\":\"15NY黑色\",\"colorsample\":\"\",\"material\":10,\"quantity\":320},{\"color\":\"15NY棕色\",\"colorsample\":\"\",\"material\":10,\"quantity\":149},{\"color\":\"15NY白色\",\"colorsample\":\"\",\"material\":10,\"quantity\":138},{\"color\":\"15NY褐色\",\"colorsample\":\"\",\"material\":10,\"quantity\":37},{\"color\":\"15NY灰色\",\"colorsample\":\"\",\"material\":10,\"quantity\":33},{\"color\":\"151\",\"colorsample\":\"\",\"material\":19,\"quantity\":99.5},{\"color\":\"72\",\"colorsample\":\"\",\"material\":19,\"quantity\":99.5},{\"color\":\"106\",\"colorsample\":\"\",\"material\":19,\"quantity\":58},{\"color\":\"58\",\"colorsample\":\"\",\"material\":19,\"quantity\":46},{\"color\":\"1\",\"colorsample\":\"\",\"material\":19,\"quantity\":53},{\"color\":\"7\",\"colorsample\":\"\",\"material\":19,\"quantity\":43},{\"color\":\"粉色\",\"colorsample\":\"\",\"material\":19,\"quantity\":22}]', '33', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('88', '90', '2015-04-30 13:40:49', '2015-04-30 20:34:22', '7', '[{\"color\":\"714\",\"planOrderDetailId\":1,\"price\":1,\"produce_weight\":110,\"quantity\":1200,\"size\":\"85x2*56\",\"weight\":120,\"yarn\":10}]', '[{\"color\":\"714\",\"colorsample\":\"\",\"material\":10,\"quantity\":143}]', '41', '0', '新建');
INSERT INTO `tb_producingorder` VALUES ('89', '91', '2015-05-02 16:32:38', '2015-05-03 11:06:48', '7', '[{\"color\":\"粉色\",\"planOrderDetailId\":1,\"price\":0.8,\"produce_weight\":80,\"quantity\":500,\"size\":\"23*23\",\"weight\":89,\"yarn\":9},{\"color\":\"黑色\",\"planOrderDetailId\":2,\"price\":0.8,\"produce_weight\":80,\"quantity\":1500,\"size\":\"23*23\",\"weight\":89,\"yarn\":9},{\"color\":\"本白\",\"planOrderDetailId\":3,\"price\":0.8,\"produce_weight\":80,\"quantity\":800,\"size\":\"23*23\",\"weight\":89,\"yarn\":9}]', '[{\"color\":\"粉色\",\"colorsample\":\"\",\"material\":9,\"quantity\":44},{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":9,\"quantity\":130},{\"color\":\"本白\",\"colorsample\":\"\",\"material\":9,\"quantity\":70},{\"color\":\"粉色\",\"colorsample\":\"\",\"material\":29,\"quantity\":10},{\"color\":\"黑色\",\"colorsample\":\"\",\"material\":29,\"quantity\":28},{\"color\":\"白色\",\"colorsample\":\"\",\"material\":29,\"quantity\":15}]', '2', '0', '新建');
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
INSERT INTO `tb_productionscheduleorder` VALUES ('17', '17', '2015-04-04 14:45:56', '2015-04-04 14:45:56', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('18', '18', '2015-04-04 17:06:39', '2015-04-04 17:06:39', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('19', '19', '2015-04-04 17:24:04', '2015-04-04 17:24:04', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('20', '20', '2015-04-06 12:30:59', '2015-04-06 12:30:59', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('21', '21', '2015-04-06 14:26:11', '2015-04-06 14:26:11', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('22', '22', '2015-04-07 17:20:08', '2015-04-07 17:20:08', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('23', '23', '2015-04-08 07:59:02', '2015-04-08 07:59:02', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('24', '24', '2015-04-08 08:05:51', '2015-04-08 08:05:51', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('25', '25', '2015-04-08 09:20:30', '2015-04-08 09:20:30', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('26', '26', '2015-04-08 09:30:20', '2015-04-08 09:30:20', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('27', '27', '2015-04-08 10:05:42', '2015-04-08 10:05:42', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('28', '28', '2015-04-08 15:00:58', '2015-04-08 15:00:58', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('29', '29', '2015-04-08 15:55:25', '2015-04-08 15:55:25', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('30', '30', '2015-04-10 11:03:32', '2015-04-10 11:03:32', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('31', '31', '2015-04-10 17:08:23', '2015-04-10 17:08:23', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('32', '32', '2015-04-10 17:41:20', '2015-04-10 17:41:20', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('33', '33', '2015-04-10 17:57:18', '2015-04-10 17:57:18', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('34', '34', '2015-04-15 14:29:32', '2015-04-15 14:29:32', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('35', '35', '2015-04-15 15:17:14', '2015-04-15 15:17:14', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('36', '36', '2015-04-15 15:51:10', '2015-04-15 15:51:10', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('37', '37', '2015-04-15 16:33:31', '2015-04-15 16:33:31', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('38', '38', '2015-04-15 16:47:51', '2015-04-15 16:47:51', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('39', '39', '2015-04-15 16:52:54', '2015-04-15 16:52:54', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('40', '40', '2015-04-15 17:02:09', '2015-04-15 17:02:09', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('41', '41', '2015-04-15 17:14:55', '2015-04-15 17:14:55', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('42', '42', '2015-04-16 17:34:03', '2015-04-16 17:34:03', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('43', '43', '2015-04-17 15:32:22', '2015-04-17 15:32:22', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('44', '44', '2015-04-17 16:07:07', '2015-04-17 16:07:07', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('45', '45', '2015-04-17 16:21:44', '2015-04-17 16:21:44', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('46', '46', '2015-04-17 16:45:35', '2015-04-17 16:45:35', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('47', '47', '2015-04-17 17:50:43', '2015-04-17 17:50:43', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('48', '48', '2015-04-17 18:13:55', '2015-04-17 18:13:55', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('49', '49', '2015-04-17 18:39:08', '2015-04-17 18:39:08', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('50', '50', '2015-04-18 15:13:43', '2015-04-18 15:13:43', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('51', '51', '2015-04-18 15:23:22', '2015-04-18 15:23:22', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('52', '52', '2015-04-18 15:34:38', '2015-04-18 15:34:38', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('53', '53', '2015-04-18 15:51:54', '2015-04-18 15:51:54', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('54', '54', '2015-04-18 16:17:42', '2015-04-18 16:17:42', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('55', '55', '2015-04-18 17:23:44', '2015-04-18 17:23:44', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('56', '56', '2015-04-18 17:38:20', '2015-04-18 17:38:20', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('57', '57', '2015-04-18 17:57:46', '2015-04-18 17:57:46', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('58', '58', '2015-04-18 18:04:08', '2015-04-18 18:04:08', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('59', '59', '2015-04-18 18:14:36', '2015-04-18 18:14:36', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('60', '60', '2015-04-19 10:01:24', '2015-04-19 10:01:24', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('61', '61', '2015-04-19 13:01:52', '2015-04-19 13:01:52', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('62', '62', '2015-04-19 13:27:05', '2015-04-19 13:27:05', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('63', '63', '2015-04-19 13:47:19', '2015-04-19 13:47:19', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('64', '64', '2015-04-19 14:16:02', '2015-04-19 14:16:02', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('65', '65', '2015-04-19 14:30:18', '2015-04-19 14:30:18', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('66', '66', '2015-04-19 15:05:26', '2015-04-19 15:05:26', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('67', '67', '2015-04-19 15:17:28', '2015-04-19 15:17:28', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('68', '68', '2015-04-19 15:46:38', '2015-04-19 15:46:38', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('69', '69', '2015-04-19 16:03:09', '2015-04-19 16:03:09', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('70', '70', '2015-04-19 16:24:33', '2015-04-19 16:24:33', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('71', '71', '2015-04-19 16:33:55', '2015-04-19 16:33:55', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('72', '72', '2015-04-19 17:22:17', '2015-04-19 17:22:17', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('73', '73', '2015-04-19 17:29:36', '2015-04-19 17:29:36', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('74', '74', '2015-04-20 14:45:04', '2015-04-20 14:45:04', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('75', '75', '2015-04-20 14:51:33', '2015-04-20 14:51:33', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('76', '76', '2015-04-20 15:07:14', '2015-04-20 15:07:14', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('77', '77', '2015-04-20 15:17:28', '2015-04-20 15:17:28', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('78', '78', '2015-04-20 15:29:00', '2015-04-20 15:29:00', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('79', '79', '2015-04-23 14:31:06', '2015-04-23 14:31:06', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('80', '80', '2015-04-23 14:42:14', '2015-04-23 14:42:14', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('81', '81', '2015-04-24 12:46:27', '2015-04-24 12:46:27', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('82', '82', '2015-04-24 12:52:28', '2015-04-24 12:52:28', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('83', '83', '2015-04-24 13:02:43', '2015-04-24 13:02:43', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('84', '84', '2015-04-24 13:13:59', '2015-04-24 13:13:59', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('85', '85', '2015-04-24 13:34:42', '2015-04-24 13:34:42', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('86', '86', '2015-04-25 09:25:59', '2015-04-25 09:25:59', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('87', '87', '2015-04-27 08:07:57', '2015-04-27 08:07:57', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('88', '88', '2015-04-27 08:24:57', '2015-04-27 08:24:57', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('89', '89', '2015-04-27 08:45:32', '2015-04-27 08:45:32', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('90', '90', '2015-04-30 13:32:44', '2015-04-30 13:32:44', '7', '0', '新建');
INSERT INTO `tb_productionscheduleorder` VALUES ('91', '91', '2015-05-02 16:28:24', '2015-05-02 16:28:24', '7', '0', '新建');
INSERT INTO `tb_role` VALUES ('1', '2014-07-07 17:15:33', '系统管理员', 'admin', '2014-07-07 17:15:43', null, '');
INSERT INTO `tb_role` VALUES ('2', '2015-03-31 20:54:39', '生产主管', '生产主管', '2015-03-31 20:54:39', '6', '');
INSERT INTO `tb_role` VALUES ('3', '2015-03-31 21:19:40', '业务员', 'salesman', '2015-03-31 21:19:40', '6', '');
INSERT INTO `tb_role` VALUES ('4', '2015-03-31 21:27:08', '总经理', 'BOSS', '2015-03-31 21:27:08', '6', '');
INSERT INTO `tb_role_authority` VALUES ('3326', '6', '2', '25');
INSERT INTO `tb_role_authority` VALUES ('3327', '6', '2', '26');
INSERT INTO `tb_role_authority` VALUES ('3328', '6', '2', '28');
INSERT INTO `tb_role_authority` VALUES ('3329', '6', '2', '29');
INSERT INTO `tb_role_authority` VALUES ('3330', '6', '2', '52');
INSERT INTO `tb_role_authority` VALUES ('3331', '6', '2', '53');
INSERT INTO `tb_role_authority` VALUES ('3332', '6', '2', '54');
INSERT INTO `tb_role_authority` VALUES ('3333', '6', '2', '55');
INSERT INTO `tb_role_authority` VALUES ('3334', '6', '2', '56');
INSERT INTO `tb_role_authority` VALUES ('3335', '6', '2', '57');
INSERT INTO `tb_role_authority` VALUES ('3336', '6', '2', '75');
INSERT INTO `tb_role_authority` VALUES ('3337', '6', '2', '76');
INSERT INTO `tb_role_authority` VALUES ('3338', '6', '2', '77');
INSERT INTO `tb_role_authority` VALUES ('3339', '6', '2', '134');
INSERT INTO `tb_role_authority` VALUES ('3340', '6', '2', '139');
INSERT INTO `tb_role_authority` VALUES ('3341', '6', '2', '78');
INSERT INTO `tb_role_authority` VALUES ('3342', '6', '2', '79');
INSERT INTO `tb_role_authority` VALUES ('3343', '6', '2', '80');
INSERT INTO `tb_role_authority` VALUES ('3344', '6', '2', '81');
INSERT INTO `tb_role_authority` VALUES ('3345', '6', '2', '82');
INSERT INTO `tb_role_authority` VALUES ('3346', '6', '2', '83');
INSERT INTO `tb_role_authority` VALUES ('3347', '6', '2', '84');
INSERT INTO `tb_role_authority` VALUES ('3348', '6', '2', '85');
INSERT INTO `tb_role_authority` VALUES ('3349', '6', '2', '86');
INSERT INTO `tb_role_authority` VALUES ('3350', '6', '2', '88');
INSERT INTO `tb_role_authority` VALUES ('3351', '6', '2', '107');
INSERT INTO `tb_role_authority` VALUES ('3352', '6', '2', '108');
INSERT INTO `tb_role_authority` VALUES ('3353', '6', '2', '109');
INSERT INTO `tb_role_authority` VALUES ('3354', '6', '2', '111');
INSERT INTO `tb_role_authority` VALUES ('3355', '6', '2', '124');
INSERT INTO `tb_role_authority` VALUES ('3356', '6', '2', '112');
INSERT INTO `tb_role_authority` VALUES ('3357', '6', '2', '113');
INSERT INTO `tb_role_authority` VALUES ('3358', '6', '2', '114');
INSERT INTO `tb_role_authority` VALUES ('3359', '6', '2', '116');
INSERT INTO `tb_role_authority` VALUES ('3360', '6', '2', '123');
INSERT INTO `tb_role_authority` VALUES ('3361', '6', '2', '117');
INSERT INTO `tb_role_authority` VALUES ('3362', '6', '2', '118');
INSERT INTO `tb_role_authority` VALUES ('3363', '6', '2', '119');
INSERT INTO `tb_role_authority` VALUES ('3364', '6', '2', '121');
INSERT INTO `tb_role_authority` VALUES ('3365', '6', '2', '122');
INSERT INTO `tb_role_authority` VALUES ('3877', '9', '3', '25');
INSERT INTO `tb_role_authority` VALUES ('3878', '9', '3', '26');
INSERT INTO `tb_role_authority` VALUES ('3879', '9', '3', '28');
INSERT INTO `tb_role_authority` VALUES ('3880', '9', '3', '52');
INSERT INTO `tb_role_authority` VALUES ('3881', '9', '3', '53');
INSERT INTO `tb_role_authority` VALUES ('3882', '9', '3', '54');
INSERT INTO `tb_role_authority` VALUES ('3883', '9', '3', '143');
INSERT INTO `tb_role_authority` VALUES ('3884', '9', '1', '1');
INSERT INTO `tb_role_authority` VALUES ('3885', '9', '1', '2');
INSERT INTO `tb_role_authority` VALUES ('3886', '9', '1', '3');
INSERT INTO `tb_role_authority` VALUES ('3887', '9', '1', '4');
INSERT INTO `tb_role_authority` VALUES ('3888', '9', '1', '5');
INSERT INTO `tb_role_authority` VALUES ('3889', '9', '1', '6');
INSERT INTO `tb_role_authority` VALUES ('3890', '9', '1', '7');
INSERT INTO `tb_role_authority` VALUES ('3891', '9', '1', '8');
INSERT INTO `tb_role_authority` VALUES ('3892', '9', '1', '9');
INSERT INTO `tb_role_authority` VALUES ('3893', '9', '1', '49');
INSERT INTO `tb_role_authority` VALUES ('3894', '9', '1', '50');
INSERT INTO `tb_role_authority` VALUES ('3895', '9', '1', '10');
INSERT INTO `tb_role_authority` VALUES ('3896', '9', '1', '11');
INSERT INTO `tb_role_authority` VALUES ('3897', '9', '1', '12');
INSERT INTO `tb_role_authority` VALUES ('3898', '9', '1', '13');
INSERT INTO `tb_role_authority` VALUES ('3899', '9', '1', '14');
INSERT INTO `tb_role_authority` VALUES ('3900', '9', '1', '15');
INSERT INTO `tb_role_authority` VALUES ('3901', '9', '1', '16');
INSERT INTO `tb_role_authority` VALUES ('3902', '9', '1', '17');
INSERT INTO `tb_role_authority` VALUES ('3903', '9', '1', '18');
INSERT INTO `tb_role_authority` VALUES ('3904', '9', '1', '19');
INSERT INTO `tb_role_authority` VALUES ('3905', '9', '1', '20');
INSERT INTO `tb_role_authority` VALUES ('3906', '9', '1', '21');
INSERT INTO `tb_role_authority` VALUES ('3907', '9', '1', '22');
INSERT INTO `tb_role_authority` VALUES ('3908', '9', '1', '23');
INSERT INTO `tb_role_authority` VALUES ('3909', '9', '1', '24');
INSERT INTO `tb_role_authority` VALUES ('3910', '9', '1', '65');
INSERT INTO `tb_role_authority` VALUES ('3911', '9', '1', '66');
INSERT INTO `tb_role_authority` VALUES ('3912', '9', '1', '67');
INSERT INTO `tb_role_authority` VALUES ('3913', '9', '1', '68');
INSERT INTO `tb_role_authority` VALUES ('3914', '9', '1', '69');
INSERT INTO `tb_role_authority` VALUES ('3915', '9', '1', '102');
INSERT INTO `tb_role_authority` VALUES ('3916', '9', '1', '103');
INSERT INTO `tb_role_authority` VALUES ('3917', '9', '1', '104');
INSERT INTO `tb_role_authority` VALUES ('3918', '9', '1', '105');
INSERT INTO `tb_role_authority` VALUES ('3919', '9', '1', '106');
INSERT INTO `tb_role_authority` VALUES ('3920', '9', '1', '125');
INSERT INTO `tb_role_authority` VALUES ('3921', '9', '1', '126');
INSERT INTO `tb_role_authority` VALUES ('3922', '9', '1', '127');
INSERT INTO `tb_role_authority` VALUES ('3923', '9', '1', '128');
INSERT INTO `tb_role_authority` VALUES ('3924', '9', '1', '129');
INSERT INTO `tb_role_authority` VALUES ('3925', '9', '1', '130');
INSERT INTO `tb_role_authority` VALUES ('3926', '9', '1', '131');
INSERT INTO `tb_role_authority` VALUES ('3927', '9', '1', '132');
INSERT INTO `tb_role_authority` VALUES ('3928', '9', '1', '133');
INSERT INTO `tb_role_authority` VALUES ('3929', '9', '1', '148');
INSERT INTO `tb_role_authority` VALUES ('3930', '9', '1', '149');
INSERT INTO `tb_role_authority` VALUES ('3931', '9', '1', '150');
INSERT INTO `tb_role_authority` VALUES ('3932', '9', '1', '151');
INSERT INTO `tb_role_authority` VALUES ('3933', '9', '1', '152');
INSERT INTO `tb_role_authority` VALUES ('3934', '9', '1', '153');
INSERT INTO `tb_role_authority` VALUES ('3935', '9', '1', '154');
INSERT INTO `tb_role_authority` VALUES ('3936', '9', '1', '155');
INSERT INTO `tb_role_authority` VALUES ('3937', '9', '1', '156');
INSERT INTO `tb_role_authority` VALUES ('3938', '9', '1', '157');
INSERT INTO `tb_role_authority` VALUES ('3939', '9', '1', '25');
INSERT INTO `tb_role_authority` VALUES ('3940', '9', '1', '26');
INSERT INTO `tb_role_authority` VALUES ('3941', '9', '1', '27');
INSERT INTO `tb_role_authority` VALUES ('3942', '9', '1', '28');
INSERT INTO `tb_role_authority` VALUES ('3943', '9', '1', '29');
INSERT INTO `tb_role_authority` VALUES ('3944', '9', '1', '30');
INSERT INTO `tb_role_authority` VALUES ('3945', '9', '1', '31');
INSERT INTO `tb_role_authority` VALUES ('3946', '9', '1', '51');
INSERT INTO `tb_role_authority` VALUES ('3947', '9', '1', '32');
INSERT INTO `tb_role_authority` VALUES ('3948', '9', '1', '33');
INSERT INTO `tb_role_authority` VALUES ('3949', '9', '1', '34');
INSERT INTO `tb_role_authority` VALUES ('3950', '9', '1', '35');
INSERT INTO `tb_role_authority` VALUES ('3951', '9', '1', '36');
INSERT INTO `tb_role_authority` VALUES ('3952', '9', '1', '37');
INSERT INTO `tb_role_authority` VALUES ('3953', '9', '1', '38');
INSERT INTO `tb_role_authority` VALUES ('3954', '9', '1', '39');
INSERT INTO `tb_role_authority` VALUES ('3955', '9', '1', '40');
INSERT INTO `tb_role_authority` VALUES ('3956', '9', '1', '41');
INSERT INTO `tb_role_authority` VALUES ('3957', '9', '1', '42');
INSERT INTO `tb_role_authority` VALUES ('3958', '9', '1', '43');
INSERT INTO `tb_role_authority` VALUES ('3959', '9', '1', '48');
INSERT INTO `tb_role_authority` VALUES ('3960', '9', '1', '44');
INSERT INTO `tb_role_authority` VALUES ('3961', '9', '1', '45');
INSERT INTO `tb_role_authority` VALUES ('3962', '9', '1', '46');
INSERT INTO `tb_role_authority` VALUES ('3963', '9', '1', '47');
INSERT INTO `tb_role_authority` VALUES ('3964', '9', '1', '52');
INSERT INTO `tb_role_authority` VALUES ('3965', '9', '1', '53');
INSERT INTO `tb_role_authority` VALUES ('3966', '9', '1', '54');
INSERT INTO `tb_role_authority` VALUES ('3967', '9', '1', '55');
INSERT INTO `tb_role_authority` VALUES ('3968', '9', '1', '56');
INSERT INTO `tb_role_authority` VALUES ('3969', '9', '1', '57');
INSERT INTO `tb_role_authority` VALUES ('3970', '9', '1', '58');
INSERT INTO `tb_role_authority` VALUES ('3971', '9', '1', '59');
INSERT INTO `tb_role_authority` VALUES ('3972', '9', '1', '60');
INSERT INTO `tb_role_authority` VALUES ('3973', '9', '1', '61');
INSERT INTO `tb_role_authority` VALUES ('3974', '9', '1', '62');
INSERT INTO `tb_role_authority` VALUES ('3975', '9', '1', '63');
INSERT INTO `tb_role_authority` VALUES ('3976', '9', '1', '75');
INSERT INTO `tb_role_authority` VALUES ('3977', '9', '1', '76');
INSERT INTO `tb_role_authority` VALUES ('3978', '9', '1', '77');
INSERT INTO `tb_role_authority` VALUES ('3979', '9', '1', '134');
INSERT INTO `tb_role_authority` VALUES ('3980', '9', '1', '78');
INSERT INTO `tb_role_authority` VALUES ('3981', '9', '1', '79');
INSERT INTO `tb_role_authority` VALUES ('3982', '9', '1', '80');
INSERT INTO `tb_role_authority` VALUES ('3983', '9', '1', '81');
INSERT INTO `tb_role_authority` VALUES ('3984', '9', '1', '82');
INSERT INTO `tb_role_authority` VALUES ('3985', '9', '1', '83');
INSERT INTO `tb_role_authority` VALUES ('3986', '9', '1', '84');
INSERT INTO `tb_role_authority` VALUES ('3987', '9', '1', '85');
INSERT INTO `tb_role_authority` VALUES ('3988', '9', '1', '86');
INSERT INTO `tb_role_authority` VALUES ('3989', '9', '1', '87');
INSERT INTO `tb_role_authority` VALUES ('3990', '9', '1', '88');
INSERT INTO `tb_role_authority` VALUES ('3991', '9', '1', '107');
INSERT INTO `tb_role_authority` VALUES ('3992', '9', '1', '108');
INSERT INTO `tb_role_authority` VALUES ('3993', '9', '1', '109');
INSERT INTO `tb_role_authority` VALUES ('3994', '9', '1', '110');
INSERT INTO `tb_role_authority` VALUES ('3995', '9', '1', '111');
INSERT INTO `tb_role_authority` VALUES ('3996', '9', '1', '124');
INSERT INTO `tb_role_authority` VALUES ('3997', '9', '1', '112');
INSERT INTO `tb_role_authority` VALUES ('3998', '9', '1', '113');
INSERT INTO `tb_role_authority` VALUES ('3999', '9', '1', '114');
INSERT INTO `tb_role_authority` VALUES ('4000', '9', '1', '115');
INSERT INTO `tb_role_authority` VALUES ('4001', '9', '1', '116');
INSERT INTO `tb_role_authority` VALUES ('4002', '9', '1', '123');
INSERT INTO `tb_role_authority` VALUES ('4003', '9', '1', '117');
INSERT INTO `tb_role_authority` VALUES ('4004', '9', '1', '118');
INSERT INTO `tb_role_authority` VALUES ('4005', '9', '1', '119');
INSERT INTO `tb_role_authority` VALUES ('4006', '9', '1', '120');
INSERT INTO `tb_role_authority` VALUES ('4007', '9', '1', '121');
INSERT INTO `tb_role_authority` VALUES ('4008', '9', '1', '122');
INSERT INTO `tb_role_authority` VALUES ('4009', '9', '1', '94');
INSERT INTO `tb_role_authority` VALUES ('4010', '9', '1', '95');
INSERT INTO `tb_role_authority` VALUES ('4011', '9', '1', '96');
INSERT INTO `tb_role_authority` VALUES ('4012', '9', '1', '97');
INSERT INTO `tb_role_authority` VALUES ('4013', '9', '4', '1');
INSERT INTO `tb_role_authority` VALUES ('4014', '9', '4', '2');
INSERT INTO `tb_role_authority` VALUES ('4015', '9', '4', '3');
INSERT INTO `tb_role_authority` VALUES ('4016', '9', '4', '4');
INSERT INTO `tb_role_authority` VALUES ('4017', '9', '4', '5');
INSERT INTO `tb_role_authority` VALUES ('4018', '9', '4', '6');
INSERT INTO `tb_role_authority` VALUES ('4019', '9', '4', '7');
INSERT INTO `tb_role_authority` VALUES ('4020', '9', '4', '8');
INSERT INTO `tb_role_authority` VALUES ('4021', '9', '4', '9');
INSERT INTO `tb_role_authority` VALUES ('4022', '9', '4', '49');
INSERT INTO `tb_role_authority` VALUES ('4023', '9', '4', '50');
INSERT INTO `tb_role_authority` VALUES ('4024', '9', '4', '10');
INSERT INTO `tb_role_authority` VALUES ('4025', '9', '4', '11');
INSERT INTO `tb_role_authority` VALUES ('4026', '9', '4', '12');
INSERT INTO `tb_role_authority` VALUES ('4027', '9', '4', '13');
INSERT INTO `tb_role_authority` VALUES ('4028', '9', '4', '14');
INSERT INTO `tb_role_authority` VALUES ('4029', '9', '4', '15');
INSERT INTO `tb_role_authority` VALUES ('4030', '9', '4', '16');
INSERT INTO `tb_role_authority` VALUES ('4031', '9', '4', '17');
INSERT INTO `tb_role_authority` VALUES ('4032', '9', '4', '18');
INSERT INTO `tb_role_authority` VALUES ('4033', '9', '4', '19');
INSERT INTO `tb_role_authority` VALUES ('4034', '9', '4', '20');
INSERT INTO `tb_role_authority` VALUES ('4035', '9', '4', '21');
INSERT INTO `tb_role_authority` VALUES ('4036', '9', '4', '22');
INSERT INTO `tb_role_authority` VALUES ('4037', '9', '4', '23');
INSERT INTO `tb_role_authority` VALUES ('4038', '9', '4', '24');
INSERT INTO `tb_role_authority` VALUES ('4039', '9', '4', '65');
INSERT INTO `tb_role_authority` VALUES ('4040', '9', '4', '66');
INSERT INTO `tb_role_authority` VALUES ('4041', '9', '4', '67');
INSERT INTO `tb_role_authority` VALUES ('4042', '9', '4', '68');
INSERT INTO `tb_role_authority` VALUES ('4043', '9', '4', '69');
INSERT INTO `tb_role_authority` VALUES ('4044', '9', '4', '102');
INSERT INTO `tb_role_authority` VALUES ('4045', '9', '4', '103');
INSERT INTO `tb_role_authority` VALUES ('4046', '9', '4', '104');
INSERT INTO `tb_role_authority` VALUES ('4047', '9', '4', '105');
INSERT INTO `tb_role_authority` VALUES ('4048', '9', '4', '106');
INSERT INTO `tb_role_authority` VALUES ('4049', '9', '4', '125');
INSERT INTO `tb_role_authority` VALUES ('4050', '9', '4', '126');
INSERT INTO `tb_role_authority` VALUES ('4051', '9', '4', '127');
INSERT INTO `tb_role_authority` VALUES ('4052', '9', '4', '128');
INSERT INTO `tb_role_authority` VALUES ('4053', '9', '4', '129');
INSERT INTO `tb_role_authority` VALUES ('4054', '9', '4', '130');
INSERT INTO `tb_role_authority` VALUES ('4055', '9', '4', '131');
INSERT INTO `tb_role_authority` VALUES ('4056', '9', '4', '132');
INSERT INTO `tb_role_authority` VALUES ('4057', '9', '4', '133');
INSERT INTO `tb_role_authority` VALUES ('4058', '9', '4', '148');
INSERT INTO `tb_role_authority` VALUES ('4059', '9', '4', '149');
INSERT INTO `tb_role_authority` VALUES ('4060', '9', '4', '150');
INSERT INTO `tb_role_authority` VALUES ('4061', '9', '4', '151');
INSERT INTO `tb_role_authority` VALUES ('4062', '9', '4', '152');
INSERT INTO `tb_role_authority` VALUES ('4063', '9', '4', '153');
INSERT INTO `tb_role_authority` VALUES ('4064', '9', '4', '154');
INSERT INTO `tb_role_authority` VALUES ('4065', '9', '4', '155');
INSERT INTO `tb_role_authority` VALUES ('4066', '9', '4', '156');
INSERT INTO `tb_role_authority` VALUES ('4067', '9', '4', '157');
INSERT INTO `tb_role_authority` VALUES ('4068', '9', '4', '25');
INSERT INTO `tb_role_authority` VALUES ('4069', '9', '4', '26');
INSERT INTO `tb_role_authority` VALUES ('4070', '9', '4', '27');
INSERT INTO `tb_role_authority` VALUES ('4071', '9', '4', '28');
INSERT INTO `tb_role_authority` VALUES ('4072', '9', '4', '29');
INSERT INTO `tb_role_authority` VALUES ('4073', '9', '4', '30');
INSERT INTO `tb_role_authority` VALUES ('4074', '9', '4', '31');
INSERT INTO `tb_role_authority` VALUES ('4075', '9', '4', '51');
INSERT INTO `tb_role_authority` VALUES ('4076', '9', '4', '32');
INSERT INTO `tb_role_authority` VALUES ('4077', '9', '4', '33');
INSERT INTO `tb_role_authority` VALUES ('4078', '9', '4', '34');
INSERT INTO `tb_role_authority` VALUES ('4079', '9', '4', '35');
INSERT INTO `tb_role_authority` VALUES ('4080', '9', '4', '36');
INSERT INTO `tb_role_authority` VALUES ('4081', '9', '4', '37');
INSERT INTO `tb_role_authority` VALUES ('4082', '9', '4', '38');
INSERT INTO `tb_role_authority` VALUES ('4083', '9', '4', '39');
INSERT INTO `tb_role_authority` VALUES ('4084', '9', '4', '40');
INSERT INTO `tb_role_authority` VALUES ('4085', '9', '4', '41');
INSERT INTO `tb_role_authority` VALUES ('4086', '9', '4', '42');
INSERT INTO `tb_role_authority` VALUES ('4087', '9', '4', '43');
INSERT INTO `tb_role_authority` VALUES ('4088', '9', '4', '48');
INSERT INTO `tb_role_authority` VALUES ('4089', '9', '4', '44');
INSERT INTO `tb_role_authority` VALUES ('4090', '9', '4', '45');
INSERT INTO `tb_role_authority` VALUES ('4091', '9', '4', '46');
INSERT INTO `tb_role_authority` VALUES ('4092', '9', '4', '47');
INSERT INTO `tb_role_authority` VALUES ('4093', '9', '4', '140');
INSERT INTO `tb_role_authority` VALUES ('4094', '9', '4', '52');
INSERT INTO `tb_role_authority` VALUES ('4095', '9', '4', '53');
INSERT INTO `tb_role_authority` VALUES ('4096', '9', '4', '136');
INSERT INTO `tb_role_authority` VALUES ('4097', '9', '4', '54');
INSERT INTO `tb_role_authority` VALUES ('4098', '9', '4', '55');
INSERT INTO `tb_role_authority` VALUES ('4099', '9', '4', '56');
INSERT INTO `tb_role_authority` VALUES ('4100', '9', '4', '57');
INSERT INTO `tb_role_authority` VALUES ('4101', '9', '4', '58');
INSERT INTO `tb_role_authority` VALUES ('4102', '9', '4', '59');
INSERT INTO `tb_role_authority` VALUES ('4103', '9', '4', '60');
INSERT INTO `tb_role_authority` VALUES ('4104', '9', '4', '61');
INSERT INTO `tb_role_authority` VALUES ('4105', '9', '4', '62');
INSERT INTO `tb_role_authority` VALUES ('4106', '9', '4', '63');
INSERT INTO `tb_role_authority` VALUES ('4107', '9', '4', '75');
INSERT INTO `tb_role_authority` VALUES ('4108', '9', '4', '76');
INSERT INTO `tb_role_authority` VALUES ('4109', '9', '4', '77');
INSERT INTO `tb_role_authority` VALUES ('4110', '9', '4', '134');
INSERT INTO `tb_role_authority` VALUES ('4111', '9', '4', '137');
INSERT INTO `tb_role_authority` VALUES ('4112', '9', '4', '138');
INSERT INTO `tb_role_authority` VALUES ('4113', '9', '4', '78');
INSERT INTO `tb_role_authority` VALUES ('4114', '9', '4', '79');
INSERT INTO `tb_role_authority` VALUES ('4115', '9', '4', '80');
INSERT INTO `tb_role_authority` VALUES ('4116', '9', '4', '81');
INSERT INTO `tb_role_authority` VALUES ('4117', '9', '4', '82');
INSERT INTO `tb_role_authority` VALUES ('4118', '9', '4', '83');
INSERT INTO `tb_role_authority` VALUES ('4119', '9', '4', '84');
INSERT INTO `tb_role_authority` VALUES ('4120', '9', '4', '85');
INSERT INTO `tb_role_authority` VALUES ('4121', '9', '4', '86');
INSERT INTO `tb_role_authority` VALUES ('4122', '9', '4', '87');
INSERT INTO `tb_role_authority` VALUES ('4123', '9', '4', '143');
INSERT INTO `tb_role_authority` VALUES ('4124', '9', '4', '88');
INSERT INTO `tb_role_authority` VALUES ('4125', '9', '4', '107');
INSERT INTO `tb_role_authority` VALUES ('4126', '9', '4', '108');
INSERT INTO `tb_role_authority` VALUES ('4127', '9', '4', '109');
INSERT INTO `tb_role_authority` VALUES ('4128', '9', '4', '110');
INSERT INTO `tb_role_authority` VALUES ('4129', '9', '4', '111');
INSERT INTO `tb_role_authority` VALUES ('4130', '9', '4', '124');
INSERT INTO `tb_role_authority` VALUES ('4131', '9', '4', '112');
INSERT INTO `tb_role_authority` VALUES ('4132', '9', '4', '113');
INSERT INTO `tb_role_authority` VALUES ('4133', '9', '4', '114');
INSERT INTO `tb_role_authority` VALUES ('4134', '9', '4', '115');
INSERT INTO `tb_role_authority` VALUES ('4135', '9', '4', '116');
INSERT INTO `tb_role_authority` VALUES ('4136', '9', '4', '123');
INSERT INTO `tb_role_authority` VALUES ('4137', '9', '4', '117');
INSERT INTO `tb_role_authority` VALUES ('4138', '9', '4', '118');
INSERT INTO `tb_role_authority` VALUES ('4139', '9', '4', '119');
INSERT INTO `tb_role_authority` VALUES ('4140', '9', '4', '120');
INSERT INTO `tb_role_authority` VALUES ('4141', '9', '4', '121');
INSERT INTO `tb_role_authority` VALUES ('4142', '9', '4', '122');
INSERT INTO `tb_role_authority` VALUES ('4143', '9', '4', '94');
INSERT INTO `tb_role_authority` VALUES ('4144', '9', '4', '95');
INSERT INTO `tb_role_authority` VALUES ('4145', '9', '4', '96');
INSERT INTO `tb_role_authority` VALUES ('4146', '9', '4', '97');
INSERT INTO `tb_role_authority` VALUES ('4147', '9', '4', '141');
INSERT INTO `tb_role_authority` VALUES ('4148', '9', '4', '142');
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
INSERT INTO `tb_salesman` VALUES ('31', '2015-04-04 17:02:21', '', 'Becky', '1', '2015-04-04 17:02:21', '2', '9');
INSERT INTO `tb_salesman` VALUES ('32', '2015-04-15 16:52:00', 'tj', '陶静', '未知', '2015-04-18 20:03:51', '3', '6');
INSERT INTO `tb_salesman` VALUES ('33', '2015-04-18 17:51:12', '', 'Bey', '不详', '2015-04-18 17:51:12', '6', '9');
INSERT INTO `tb_salesman` VALUES ('34', '2015-04-18 20:04:12', 'xf', '徐飞', '81060553', '2015-04-18 20:04:12', '3', '9');
INSERT INTO `tb_salesman` VALUES ('35', '2015-04-18 20:04:49', 'cxp', '陈肖坪', '87759215', '2015-04-18 20:04:49', '3', '9');
INSERT INTO `tb_salesman` VALUES ('36', '2015-04-18 20:05:01', 'wxm', '王秀梅', '81060994', '2015-04-18 20:05:01', '3', '9');
INSERT INTO `tb_salesman` VALUES ('37', '2015-04-18 20:05:15', 'mjm', '毛建敏', '81060994', '2015-04-18 20:05:15', '3', '9');
INSERT INTO `tb_salesman` VALUES ('38', '2015-04-18 20:05:29', 'cyj', '陈耀军', '81060995', '2015-04-18 20:05:29', '3', '9');
INSERT INTO `tb_salesman` VALUES ('39', '2015-04-18 20:05:48', 'zzz', '祝珍珍', '81060551', '2015-04-18 20:05:48', '3', '9');
INSERT INTO `tb_salesman` VALUES ('40', '2015-04-18 20:06:12', 'lj', '柳娟', '81060549', '2015-04-18 20:06:12', '3', '9');
INSERT INTO `tb_salesman` VALUES ('41', '2015-04-18 20:06:32', 'cfj', '陈翻蒋', '81060989', '2015-04-18 20:06:32', '3', '9');
INSERT INTO `tb_salesman` VALUES ('42', '2015-04-18 20:06:55', 'mhy', '毛惠云', '81060553', '2015-04-18 20:06:55', '3', '9');
INSERT INTO `tb_salesman` VALUES ('43', '2015-04-18 20:07:20', 'ttm', '涂桃梅', '89715460', '2015-04-18 20:07:20', '3', '9');
INSERT INTO `tb_salesman` VALUES ('44', '2015-04-18 20:07:32', 'wr', '王蕊', '81060996', '2015-04-18 20:07:32', '3', '9');
INSERT INTO `tb_salesman` VALUES ('45', '2015-04-18 20:07:47', 'sfy', '孙菲遥', '81060996', '2015-04-18 20:07:47', '3', '9');
INSERT INTO `tb_salesman` VALUES ('46', '2015-04-18 20:08:18', 'jld', '蒋灵丹', '87356807', '2015-04-18 20:08:18', '3', '9');
INSERT INTO `tb_salesman` VALUES ('47', '2015-04-19 17:09:24', 'xt', '小童', '13666641124', '2015-04-19 17:09:24', '5', '9');
INSERT INTO `tb_salesman` VALUES ('48', '2015-04-29 09:29:41', 'cf', '陈峰', '13735207936', '2015-04-29 09:29:41', '8', '9');
INSERT INTO `tb_sample` VALUES ('1', '33.441', '2015-03-31 21:26:12', '471*1.12*12*32÷ 1000=202.568+15=217.568\r\n8.229\r\n机织:66.000\r\n锁口:18.000\r\n套口:9.600\r\n挂须:20.400\r\n整烫:16.800\r\n费用+后道:18.000\r\n____________________________\r\n148.8+8.229\r\n=157.029*1.17\r\n=183.724+217.568\r\n=401.292÷12\r\n=33.441*1.17\r\n=39.126\r\n', '', 'qqgzpj', 'resource.fuwei.com/images/sample/1427808371841QQ图片20150331211900.jpg', '1', '', '全晴格子披肩', 'FWA30001', '126*126 + 10*2', '2015-03-31 21:26:12', '471', '6', '7', 'resource.fuwei.com/images/sample/s/1427808371841QQ图片20150331211900.png', 'resource.fuwei.com/images/sample/ss/1427808371841QQ图片20150331211900.png', '1', '2');
INSERT INTO `tb_sample` VALUES ('2', '6.013', '2015-04-02 11:18:06', '55*1.1*12*31÷ 1000=22.506+9=31.506\r\n0.944\r\n机织:14.400\r\n套抽:6.000\r\n整烫:3.000\r\n费用+后道:10.400\r\n____________________________\r\n33.8+0.944\r\n=34.744*1.17\r\n=40.65+31.506\r\n=72.156÷12\r\n=6.013*1.2\r\n=7.216\r\n', '', 'bdmjhbnm', 'resource.fuwei.com/images/sample/1427944682391625E01F8D68A189EAAAAEA2A9523E451.png', '3', '', '冰岛毛绞花比尼帽', 'FWA30002', '19*23cm', '2015-04-02 11:18:06', '55', '10', '9', 'resource.fuwei.com/images/sample/s/1427944682391625E01F8D68A189EAAAAEA2A9523E451.png', 'resource.fuwei.com/images/sample/ss/1427944682391625E01F8D68A189EAAAAEA2A9523E451.png', null, '1');
INSERT INTO `tb_sample` VALUES ('3', '21.419', '2015-04-02 14:18:15', '385*1.12*12*31÷ 1000=160.406+12=172.406\r\n6.727\r\n机织:36.000\r\n套口:6.000\r\n挂须:6.600\r\n机织:17.000\r\n____________________________\r\n65.6+6.727\r\n=72.327*1.17\r\n=84.623+172.406\r\n=257.029÷12\r\n=21.419*1.17\r\n=25.06\r\n', '', 'bdmzfzgxwj', 'resource.fuwei.com/images/sample/1427955494579图片1.png', '4', '', '冰岛毛正反针挂须围巾', 'FWA30003', '190*40+2*20CM F', '2015-04-02 14:18:15', '285', '11', '9', 'resource.fuwei.com/images/sample/s/1427955494579图片1.png', 'resource.fuwei.com/images/sample/ss/1427955494579图片1.png', '2', '3');
INSERT INTO `tb_sample` VALUES ('4', '6.391', '2015-04-02 14:19:22', '66*1.12*12*31÷ 1000=27.498+9=36.498\r\n1.153\r\n机织:12.000\r\n套抽:6.000\r\n吊球:1.800\r\n整烫:3.000\r\n费用+后道:10.400\r\n____________________________\r\n33.2+1.153\r\n=34.353*1.17\r\n=40.193+36.498\r\n=76.691÷12\r\n=6.391*1.2\r\n=7.669\r\n', '', 'bdmzfzdqm', 'resource.fuwei.com/images/sample/1427955562784图片1.png', '4', '', '冰岛毛正反针吊球帽', 'FWA30004', '24CMH *20CM', '2015-04-02 14:19:22', '66', '11', '9', 'resource.fuwei.com/images/sample/s/1427955562784图片1.png', 'resource.fuwei.com/images/sample/ss/1427955562784图片1.png', '2', '3');
INSERT INTO `tb_sample` VALUES ('5', '9.53', '2015-04-02 14:20:33', '83*1.1*12*31÷ 1000=33.964+9=42.964\r\n1.424\r\n机织:12.000\r\n套口:4.800\r\n抽顶:4.800\r\n接指:10.000\r\n衬里:15.000\r\n费用+后道:13.000\r\n____________________________\r\n59.6+1.424\r\n=61.024*1.17\r\n=71.398+42.964\r\n=114.362÷12\r\n=9.53*1.2\r\n=11.436\r\n', '', 'bdzfzbt', 'resource.fuwei.com/images/sample/1427955633832图片1.png', '4', '', '冰岛正反针包套', 'FWA30005', '24CM L *10CM W ，做为S/M码', '2015-04-02 14:20:33', '83', '11', '9', 'resource.fuwei.com/images/sample/s/1427955633832图片1.png', 'resource.fuwei.com/images/sample/ss/1427955633832图片1.png', '2', '3');
INSERT INTO `tb_sample` VALUES ('6', '13.407', '2015-04-03 00:31:31', '160*1.15*12*35÷ 1000=77.28+12=89.28\r\n\r\n机织:36.000\r\n拷边:4.800\r\n整烫:9.600\r\n费用+后道:10.800\r\n____________________________\r\n61.2+0\r\n=61.2*1.17\r\n=71.604+89.28\r\n=160.884÷12\r\n=13.407*1.2\r\n=16.088\r\n', '', 'rzszwj', 'resource.fuwei.com/images/sample/1427992291553图片1.jpg', '15', '', '人造丝窄围巾', 'FWA30006', '12*300', '2015-04-03 00:31:31', '160', '8', '7', 'resource.fuwei.com/images/sample/s/1427992291553图片1.png', 'resource.fuwei.com/images/sample/ss/1427992291553图片1.png', '9', '2');
INSERT INTO `tb_sample` VALUES ('7', '0', '2015-04-03 00:35:28', '247*1.15*12*42÷ 1000=143.161+12=155.161\r\n4.431\r\n机织:36.000\r\n拷边:9.600\r\n挂须:28.800\r\n整烫:8.400\r\n费用+后道:12.000\r\n____________________________\r\n94.8+4.431\r\n=99.231*1.17\r\n=116.1+155.161\r\n=271.261÷12\r\n=22.605*1.2\r\n=27.126\r\n', '', 'mhmgxsjj', 'resource.fuwei.com/images/sample/1427992528634图片1.png', '9', '', '马海毛挂须三角巾', 'FWA30007', '155*85+15cmf', '2015-04-03 01:10:16', '247', '11', '9', 'resource.fuwei.com/images/sample/s/1427992528634图片1.png', 'resource.fuwei.com/images/sample/ss/1427992528634图片1.png', '2', '3');
INSERT INTO `tb_sample` VALUES ('8', '9.729', '2015-04-03 00:39:07', '78*1.1*12*42÷ 1000=43.243+9=52.243\r\n1.338\r\n机织:14.400\r\n套抽:6.000\r\n球:18.000\r\n吊球:2.000\r\n整烫:3.000\r\n费用+后道:10.400\r\n____________________________\r\n53.8+1.338\r\n=55.138*1.17\r\n=64.511+52.243\r\n=116.754÷12\r\n=9.729*1.2\r\n=11.675\r\n', '', 'mhmmqm', 'resource.fuwei.com/images/sample/1427992746746图片1.png', '9', '', '马海毛毛球帽', 'FWA30008', '22*22', '2015-04-03 00:39:07', '85', '11', '9', 'resource.fuwei.com/images/sample/s/1427992746746图片1.png', 'resource.fuwei.com/images/sample/ss/1427992746746图片1.png', '2', '3');
INSERT INTO `tb_sample` VALUES ('9', '10.625', '2015-04-03 00:41:42', '80*1.1*12*42÷ 1000=44.352+9=53.352\r\n1.373\r\n机织:14.400\r\n套口:4.800\r\n抽顶:4.800\r\n衬里:15.000\r\n接指:10.000\r\n整烫:5.000\r\n费用+后道:8.000\r\n____________________________\r\n62+1.373\r\n=63.373*1.17\r\n=74.146+53.352\r\n=127.498÷12\r\n=10.625*1.2\r\n=12.75\r\n', '', 'mhmbt', 'resource.fuwei.com/images/sample/1427992902609图片1.png', '9', '', '马海毛包套', 'FWA30009', 'S/M', '2015-04-03 00:41:42', '80', '11', '9', 'resource.fuwei.com/images/sample/s/1427992902609图片1.png', 'resource.fuwei.com/images/sample/ss/1427992902609图片1.png', '2', '3');
INSERT INTO `tb_sample` VALUES ('10', '16.235', '2015-04-03 00:44:47', '材料1：162*1.1*12*31÷ 1000=66.29\r\n材料2：38*1.15*12*65÷ 1000=34.08\r\n66.29+34.08=100.37+10.8=111.17\r\n2.78+1.31=4.09\r\n机织:30.0\r\n套口:21.6\r\n整烫:5.0\r\n费用+后道:10.8\r\n____________________________\r\n67.4+4.09\r\n=71.49*1.17\r\n=83.64+111.17\r\n=194.82÷12\r\n=16.23*1.2\r\n=19.48\r\n', '', 'bdmymswb', 'resource.fuwei.com/images/sample/1427993082909Adoree loop SMS 8019 carbon solid.JPG', '8', '', '冰岛毛羽毛纱围脖', 'FWA30010', '33*2*27', '2015-04-03 00:44:56', '198', '8', '9', 'resource.fuwei.com/images/sample/s/1427993082909Adoree loop SMS 8019 carbon solid.png', 'resource.fuwei.com/images/sample/ss/1427993082909Adoree loop SMS 8019 carbon solid.png', '7', '2');
INSERT INTO `tb_sample` VALUES ('11', '5.487', '2015-04-03 00:50:22', '73*1.1*12*31÷ 1000=29.872+9=38.872\r\n1.253\r\n机织:3.600\r\n拷边:4.800\r\n整烫:3.000\r\n费用+后道:10.400\r\n____________________________\r\n21.8+1.253\r\n=23.053*1.17\r\n=26.972+38.872\r\n=65.844÷12\r\n=5.487*1.2\r\n=6.584\r\n', '', 'ctfbm', 'resource.fuwei.com/images/sample/1427993422681图片1.png', '1', '', '抽条翻边帽', 'FWA30011', '21H*20W', '2015-04-03 00:50:22', '63', '11', '9', 'resource.fuwei.com/images/sample/s/1427993422681图片1.png', 'resource.fuwei.com/images/sample/ss/1427993422681图片1.png', '22', '3');
INSERT INTO `tb_sample` VALUES ('12', '5.957', '2015-04-03 00:59:53', '63*1.1*12*34.5÷ 1000=28.69+9=37.69\r\n1.081\r\n机织:9.600\r\n拷边:4.800\r\n整烫:3.000\r\n费用+后道:10.400\r\n____________________________\r\n27.8+1.081\r\n=28.881*1.17\r\n=33.791+37.69\r\n=71.481÷12\r\n=5.957*1.2\r\n=7.148\r\n', '', 'qqjbm', 'resource.fuwei.com/images/sample/1427993993473hat.jpg', '1', '', '全晴卷边帽', 'FWA30012', '23*27', '2015-04-03 00:59:53', '57', '11', '9', 'resource.fuwei.com/images/sample/s/1427993993473hat.png', 'resource.fuwei.com/images/sample/ss/1427993993473hat.png', '2', '3');
INSERT INTO `tb_sample` VALUES ('13', '9.44', '2015-04-03 01:01:41', '135*1.1*12*34.5÷ 1000=61.479+12=73.479\r\n2.317\r\n机织:12.000\r\n拷边:4.800\r\n整烫:4.500\r\n费用+后道:10.400\r\n____________________________\r\n31.7+2.317\r\n=34.017*1.17\r\n=39.8+73.479\r\n=113.279÷12\r\n=9.44*1.17\r\n=11.045\r\n', '', 'qqwb', 'resource.fuwei.com/images/sample/1427994100960loop.jpg', '1', '', '全晴围脖', 'FWA30013', '45*90*2', '2015-04-03 01:01:41', '135', '11', '9', 'resource.fuwei.com/images/sample/s/1427994100960loop.png', 'resource.fuwei.com/images/sample/ss/1427994100960loop.png', '9', '3');
INSERT INTO `tb_sample` VALUES ('14', '10.165', '2015-04-03 21:06:40', '110*1.1*12*31÷ 1000=45.012+9=54.012\r\n1.888\r\n机织:14.400\r\n套抽:6.000\r\n吊球:2.000\r\n球:20.400\r\n整烫:3.000\r\n费用+后道:10.400\r\n____________________________\r\n56.2+1.888\r\n=58.088*1.17\r\n=67.963+54.012\r\n=121.975÷12\r\n=10.165*1.2\r\n=12.198\r\n', '', 'bdmjhmqm', 'resource.fuwei.com/images/sample/1428066399895图片1.png', '6', '', '冰岛毛绞花毛球帽', 'FWA30014', '21*20CM', '2015-04-03 21:06:40', '123', '11', '9', 'resource.fuwei.com/images/sample/s/1428066399895图片1.png', 'resource.fuwei.com/images/sample/ss/1428066399895图片1.png', '2', '3');
INSERT INTO `tb_sample` VALUES ('15', '22.444', '2015-04-03 21:31:31', '310*1.1*12*31÷ 1000=126.852+12=138.852\r\n5.32\r\n机织:38.400\r\n锁口:6.000\r\n球:40.800\r\n吊球:4.000\r\n整烫:5.000\r\n费用+后道:12.000\r\n____________________________\r\n106.2+5.32\r\n=111.52*1.17\r\n=130.478+138.852\r\n=269.33÷12\r\n=22.444*1.17\r\n=26.259\r\n', '', 'jhdqwj', 'resource.fuwei.com/images/sample/1428067891295图片1.png', '6', '', '绞花吊球围巾', 'FWA30015', '180*20cm', '2015-04-03 21:31:31', '338', '11', '9', 'resource.fuwei.com/images/sample/s/1428067891295图片1.png', 'resource.fuwei.com/images/sample/ss/1428067891295图片1.png', '2', '3');
INSERT INTO `tb_sample` VALUES ('16', '10.372', '2015-04-03 21:33:47', '100*1.1*12*31÷ 1000=40.92+9=49.92\r\n1.716\r\n机织:14.400\r\n套口:4.800\r\n抽顶:4.800\r\n接指:10.000\r\n衬里:15.000\r\n整烫:5.000\r\n费用+后道:8.000\r\n____________________________\r\n62+1.716\r\n=63.716*1.17\r\n=74.548+49.92\r\n=124.468÷12\r\n=10.372*1.2\r\n=12.446\r\n', '', 'jhbt', 'resource.fuwei.com/images/sample/1428068026985图片1.png', '6', '', '绞花包套', 'FWA30016', '25*9cm S/M', '2015-04-03 21:33:47', '114', '11', '9', 'resource.fuwei.com/images/sample/s/1428068026985图片1.png', 'resource.fuwei.com/images/sample/ss/1428068026985图片1.png', '2', '3');
INSERT INTO `tb_sample` VALUES ('17', '10.526', '2015-04-03 22:29:24', '142*1.1*12*34÷ 1000=63.73+10.8=74.53\r\n2.062\r\n机织:12.000\r\n套口:14.400\r\n整烫:5.000\r\n费用+后道:10.800\r\n____________________________\r\n42.2+2.062\r\n=44.262*1.17\r\n=51.787+74.53\r\n=126.317÷12\r\n=10.526*1.2\r\n=12.631\r\n', '', 'mhmlsctwb', 'resource.fuwei.com/images/sample/1428071364212图片1.png', '9', '', '马海毛亮丝抽条围脖', 'FWA30017', '75*2*30cm', '2015-04-03 22:29:24', '142', '11', '7', 'resource.fuwei.com/images/sample/s/1428071364212图片1.png', 'resource.fuwei.com/images/sample/ss/1428071364212图片1.png', '27', '3');
INSERT INTO `tb_sample` VALUES ('18', '5.412', '2015-04-03 23:11:36', '65*1.2*12*31÷ 1000=29.016+9=38.016\r\n1.217\r\n机织:3.600\r\n拷边:4.800\r\n整烫:3.000\r\n费用+后道:10.400\r\n____________________________\r\n21.8+1.217\r\n=23.017*1.17\r\n=26.93+38.016\r\n=64.946÷12\r\n=5.412*1.2\r\n=6.494\r\n', '', 'ctfbm', 'resource.fuwei.com/images/sample/1428073896025图片1.png', '1', '', '抽条翻边帽', 'FWA30018', '21H*20W', '2015-04-03 23:11:36', '63', '11', '9', 'resource.fuwei.com/images/sample/s/1428073896025图片1.png', 'resource.fuwei.com/images/sample/ss/1428073896025图片1.png', '22', '3');
INSERT INTO `tb_sample` VALUES ('19', '0', '2015-04-04 00:09:12', '70*1.1*12*34÷ 1000=31.416+9=40.416\r\n1.201\r\n机织:12.000\r\n套抽:6.000\r\n烫钻:24.000\r\n整烫:4.000\r\n费用+后道:10.400\r\n____________________________\r\n56.4+1.201\r\n=57.601*1.17\r\n=67.393+40.416\r\n=107.809÷12\r\n=8.984*1.2\r\n=10.781\r\n', '', 'mhmtzm', 'resource.fuwei.com/images/sample/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', '9', '', '马海毛烫钻帽', 'FWA30019', '20W*27H', '2015-04-04 01:51:09', '69', '11', '7', 'resource.fuwei.com/images/sample/s/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', 'resource.fuwei.com/images/sample/ss/1428077349767796265BFB290FEE2DC5FC6E38AE4B3B6.png', '2', '3');
INSERT INTO `tb_sample` VALUES ('20', '13.471', '2015-04-04 00:14:08', '203*1.1*12*38÷ 1000=101.825+12=113.825\r\n3.483\r\n机织:14.400\r\n套口:6.000\r\n整烫:5.000\r\n费用+后道:12.000\r\n____________________________\r\n37.4+3.483\r\n=40.883*1.17\r\n=47.833+113.825\r\n=161.658÷12\r\n=13.471*1.2\r\n=16.165\r\n', '', 'mhmdzswb', 'resource.fuwei.com/images/sample/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', '17', '', '马海毛点子纱围脖', 'FWA30020', '43H*75W', '2015-04-04 00:14:08', '203', '11', '7', 'resource.fuwei.com/images/sample/s/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', 'resource.fuwei.com/images/sample/ss/14280776443192FC6687A49233B5F718DA9A0DB6598AA.png', '9', '3');
INSERT INTO `tb_sample` VALUES ('21', '13.513', '2015-04-04 00:17:08', '152*1.15*12*36÷ 1000=75.514+12=87.514\r\n\r\n机织:14.400\r\n拉毛:27.600\r\n拷边:4.800\r\n整烫:5.000\r\n费用+后道:12.000\r\n____________________________\r\n63.8+0\r\n=63.8*1.17\r\n=74.646+87.514\r\n=162.16÷12\r\n=13.513*1.2\r\n=16.216\r\n', '', 'fyrcprslmwb', 'resource.fuwei.com/images/sample/14280778246358CD60DF79323473B3DE0139776CD3BEA.png', '13', '', '仿羊绒成品染色拉毛围脖', 'FWA30021', '40H*75W', '2015-04-04 00:17:08', '152', '6', '7', 'resource.fuwei.com/images/sample/s/14280778246358CD60DF79323473B3DE0139776CD3BEA.png', 'resource.fuwei.com/images/sample/ss/14280778246358CD60DF79323473B3DE0139776CD3BEA.png', '10', '3');
INSERT INTO `tb_sample` VALUES ('22', '12.556', '2015-04-04 01:25:44', '材料1：170*1.12*12*33÷ 1000=75.39\r\n材料2：30*1.12*12*40÷ 1000=16.12\r\n75.39+16.12=91.52+12=103.52\r\n2.97+0.52=3.49\r\n机织:12\r\n锁口:4.8\r\n挂须:4.2\r\n整烫:5\r\n费用+后道:10.8\r\n____________________________\r\n36.8+3.49\r\n=40.29*1.17\r\n=47.14+103.52\r\n=150.67÷12\r\n=12.55*1.17\r\n=14.69\r\n', '', 'mhmddsgxwj', 'resource.fuwei.com/images/sample/1428081944406OB954525.png', '9', '', '马海毛豆豆纱挂须围巾', 'FWA30022', '20.5*223.5+20.5*2F', '2015-04-04 01:25:44', '213', '11', '6', 'resource.fuwei.com/images/sample/s/1428081944406OB954525.png', 'resource.fuwei.com/images/sample/ss/1428081944406OB954525.png', '9', '3');
INSERT INTO `tb_sample` VALUES ('23', '8.906', '2015-04-04 14:42:05', '115*1.1*12*34÷ 1000=51.612+12=63.612\r\n1.973\r\n机织:12.000\r\n套口:6.000\r\n整烫:5.000\r\n费用+后道:12.000\r\n____________________________\r\n35+1.973\r\n=36.973*1.17\r\n=43.258+63.612\r\n=106.87÷12\r\n=8.906*1.2\r\n=10.687\r\n', '', 'mhmctjlswb', 'resource.fuwei.com/images/sample/1428129724477图片1.png', '9', '', '马海毛抽条加亮丝围脖', 'FWA30023', '70*2*40cm', '2015-04-04 14:42:05', '115', '11', '9', 'resource.fuwei.com/images/sample/s/1428129724477图片1.png', 'resource.fuwei.com/images/sample/ss/1428129724477图片1.png', '27', '3');
INSERT INTO `tb_sample` VALUES ('24', '0', '2015-04-04 17:21:50', null, '', 'mhmlsylzscwb', 'resource.fuwei.com/images/sample/1428139307621A9370C19E298269217FD32E3D398A04C.png', '9', '', '马海毛亮丝鱼鳞针双层围脖', 'FWA30024', '35W*55H', '2015-04-04 17:21:50', '130', '11', '9', 'resource.fuwei.com/images/sample/s/1428139307621A9370C19E298269217FD32E3D398A04C.png', 'resource.fuwei.com/images/sample/ss/1428139307621A9370C19E298269217FD32E3D398A04C.png', '30', '3');
INSERT INTO `tb_sample` VALUES ('25', '0', '2015-04-07 12:23:57', null, '', 'dzskzwb', 'resource.fuwei.com/images/sample/1428380635592IMG_1656.JPG', '20', '金熙样纱', '带子纱空转围脖', 'FWA30025', '29*2*60cm', '2015-04-07 12:23:57', '260', '8', '9', 'resource.fuwei.com/images/sample/s/1428380635592IMG_1656.png', 'resource.fuwei.com/images/sample/ss/1428380635592IMG_1656.png', '9', '2');
INSERT INTO `tb_sample` VALUES ('26', '0', '2015-04-07 12:27:03', null, '', 'dzsbzst', 'resource.fuwei.com/images/sample/1428380822862IMG_2168.JPG', '20', '金熙样纱', '带子纱半指手套', 'FWA30026', '9*20.5cm', '2015-04-07 12:27:03', '30', '8', '9', 'resource.fuwei.com/images/sample/s/1428380822862IMG_2168.png', 'resource.fuwei.com/images/sample/ss/1428380822862IMG_2168.png', '32', '2');
INSERT INTO `tb_sample` VALUES ('27', '0', '2015-04-07 12:28:07', null, '', 'dzsmz', 'resource.fuwei.com/images/sample/1428380887144IMG_2018.JPG', '20', '金熙样纱', '带子纱帽子', 'FWA30027', '25.5*23cm', '2015-04-07 12:28:07', '75', '8', '9', 'resource.fuwei.com/images/sample/s/1428380887144IMG_2018.png', 'resource.fuwei.com/images/sample/ss/1428380887144IMG_2018.png', '2', '2');
INSERT INTO `tb_sample` VALUES ('28', '0', '2015-04-07 12:31:58', null, '', 'mhmzfzwb', 'resource.fuwei.com/images/sample/1428381118194图片1.jpg', '10', '9s马海毛 永欣色纱', '马海毛正反针围脖', 'FWA30028', '35.5*127cm', '2015-04-07 12:31:58', '155', '8', '9', 'resource.fuwei.com/images/sample/s/1428381118194图片1.png', 'resource.fuwei.com/images/sample/ss/1428381118194图片1.png', '33', '2');
INSERT INTO `tb_sample` VALUES ('29', '0', '2015-04-08 07:35:31', null, '', 'qlswb', 'resource.fuwei.com/images/sample/14284497284672DFCC0FB9B3CD67CD5E328A84A7089F3.png', '1', '', '晴纶纱围脖', 'FWA30029', '45*90*2cm', '2015-04-08 07:35:31', '135', '11', '9', 'resource.fuwei.com/images/sample/s/14284497284672DFCC0FB9B3CD67CD5E328A84A7089F3.png', 'resource.fuwei.com/images/sample/ss/14284497284672DFCC0FB9B3CD67CD5E328A84A7089F3.png', '9', '3');
INSERT INTO `tb_sample` VALUES ('30', '0', '2015-04-08 07:38:25', null, '', 'qlsjbmz', 'resource.fuwei.com/images/sample/14284499016891D02B4EE9A9C98349C5D78BF9C243A52.png', '1', '', '晴纶纱卷边帽子', 'FWA30030', '23*27', '2015-04-08 07:38:25', '57', '11', '9', 'resource.fuwei.com/images/sample/s/14284499016891D02B4EE9A9C98349C5D78BF9C243A52.png', 'resource.fuwei.com/images/sample/ss/14284499016891D02B4EE9A9C98349C5D78BF9C243A52.png', '2', '3');
INSERT INTO `tb_sample` VALUES ('31', '0', '2015-04-08 07:40:18', null, '', 'qlswj', 'resource.fuwei.com/images/sample/14284500148474A245F5021573282698A5022354CF3C1.png', '1', '', '晴纶纱围巾', 'FWA30031', '45*180+3.5cm', '2015-04-08 07:40:18', '110', '11', '9', 'resource.fuwei.com/images/sample/s/14284500148474A245F5021573282698A5022354CF3C1.png', 'resource.fuwei.com/images/sample/ss/14284500148474A245F5021573282698A5022354CF3C1.png', '2', '3');
INSERT INTO `tb_sample` VALUES ('32', '0', '2015-04-08 07:43:10', null, '', 'qqmz', 'resource.fuwei.com/images/sample/14284501869294EF3FDA3E66B3F52981D6221B3A4DDB9.png', '1', '', '全晴帽子', 'FWA30032', '22*26+2.5cm', '2015-04-08 07:43:10', '56', '11', '9', 'resource.fuwei.com/images/sample/s/14284501869294EF3FDA3E66B3F52981D6221B3A4DDB9.png', 'resource.fuwei.com/images/sample/ss/14284501869294EF3FDA3E66B3F52981D6221B3A4DDB9.png', '2', '3');
INSERT INTO `tb_sample` VALUES ('33', '0', '2015-04-08 11:20:19', null, '', 'mhmdzssgtd', 'resource.fuwei.com/images/sample/1428463219417QQ截图20150408111200.jpg', '9', '马海毛+带子纱', '马海毛带子纱手工头带', 'FWA30033', '9*23cm', '2015-04-08 11:20:19', '54', '6', '9', 'resource.fuwei.com/images/sample/s/1428463219417QQ截图20150408111200.png', 'resource.fuwei.com/images/sample/ss/1428463219417QQ截图20150408111200.png', '35', '3');
INSERT INTO `tb_sample` VALUES ('34', '0', '2015-04-10 15:10:09', null, '', 'bdmtzswb', 'resource.fuwei.com/images/sample/1428649809144图片1.png', '6', '', '冰岛毛特种纱围脖', 'FWA30034', '40*2*55cm', '2015-04-10 15:10:09', '240', '11', '9', 'resource.fuwei.com/images/sample/s/1428649809144图片1.png', 'resource.fuwei.com/images/sample/ss/1428649809144图片1.png', '9', '3');
INSERT INTO `tb_sample` VALUES ('35', '0', '2015-04-10 15:12:59', null, '', 'tkdzsmz', 'resource.fuwei.com/images/sample/1428649979257CatchAD63(04-10-15-11-08).jpg', '6', '', '童款带子纱帽子', 'FWA30035', 'M:20W*20.5H+5翻边/S:19H*19W+5翻边', '2015-04-10 15:12:59', '107', '12', '9', 'resource.fuwei.com/images/sample/s/1428649979257CatchAD63(04-10-15-11-08).png', 'resource.fuwei.com/images/sample/ss/1428649979257CatchAD63(04-10-15-11-08).png', '2', '4');
INSERT INTO `tb_sample` VALUES ('36', '0', '2015-04-10 15:15:41', null, '', 'mhmlsmz', 'resource.fuwei.com/images/sample/1428650207511图片2.jpg', '10', '', '马海毛亮丝帽子', 'FWA30036', '28*21.6cm', '2015-04-10 15:16:47', '70', '8', '9', 'resource.fuwei.com/images/sample/s/1428650207511图片2.png', 'resource.fuwei.com/images/sample/ss/1428650207511图片2.png', null, '2');
INSERT INTO `tb_sample` VALUES ('37', '0', '2015-04-10 15:17:45', null, '', 'mhmlsst', 'resource.fuwei.com/images/sample/1428650265434图片2.jpg', '10', '', '马海毛亮丝手套', 'FWA30037', '23*9cm', '2015-04-10 15:17:45', '50', '8', '9', 'resource.fuwei.com/images/sample/s/1428650265434图片2.png', 'resource.fuwei.com/images/sample/ss/1428650265434图片2.png', null, '2');
INSERT INTO `tb_sample` VALUES ('38', '0', '2015-04-10 15:19:32', null, '', 'bdmsmrdqm', 'resource.fuwei.com/images/sample/1428650372343图片2.png', '3', '', '冰岛毛舒棉绒吊球帽', 'FWA30038', '23H*22W', '2015-04-10 15:19:32', '121', '11', '9', 'resource.fuwei.com/images/sample/s/1428650372343图片2.png', 'resource.fuwei.com/images/sample/ss/1428650372343图片2.png', '2', '3');
INSERT INTO `tb_sample` VALUES ('39', '0', '2015-04-10 15:22:33', null, '', 'bdmjhtd', 'resource.fuwei.com/images/sample/142865055303418527HB 酒红色.jpg', '4', '', '冰岛毛绞花头带', 'FWA30039', '10*25.5cm', '2015-04-10 15:23:46', '47', '8', '9', 'resource.fuwei.com/images/sample/s/142865055303418527HB 酒红色.png', 'resource.fuwei.com/images/sample/ss/142865055303418527HB 酒红色.png', '2', '2');
INSERT INTO `tb_sample` VALUES ('40', '0', '2015-04-10 15:25:21', null, '', 'jhdqm', 'resource.fuwei.com/images/sample/142865072095818528H 酒红色.jpg', '4', '', '绞花吊球帽', 'FWA30040', '20.5*20.5+7.5cm', '2015-04-10 15:25:21', '107', '8', '9', 'resource.fuwei.com/images/sample/s/142865072095818528H 酒红色.png', 'resource.fuwei.com/images/sample/ss/142865072095818528H 酒红色.png', '2', '2');
INSERT INTO `tb_sample` VALUES ('41', '0', '2015-04-10 15:27:04', null, '', 'bdmjhwj', 'resource.fuwei.com/images/sample/142865082420918528S 酒红色.jpg', '4', '', '冰岛毛绞花围巾', 'FWA30041', '33*167.5cm+15cm须', '2015-04-10 15:27:04', '320', '8', '9', 'resource.fuwei.com/images/sample/s/142865082420918528S 酒红色.png', 'resource.fuwei.com/images/sample/ss/142865082420918528S 酒红色.png', '2', '2');
INSERT INTO `tb_sample` VALUES ('42', '0', '2015-04-13 19:23:39', null, '', 'bdmdzswb', 'resource.fuwei.com/images/sample/1428924218096image001(04-13-18-04-07).jpg', '1', '', '冰岛毛带子纱围脖', 'FWA30042', '40*29*2+20pu', '2015-04-13 19:23:39', '236', '6', '9', 'resource.fuwei.com/images/sample/s/1428924218096image001(04-13-18-04-07).png', 'resource.fuwei.com/images/sample/ss/1428924218096image001(04-13-18-04-07).png', '2', '2');
INSERT INTO `tb_sample` VALUES ('43', '0', '2015-04-14 21:36:12', null, '', 'bdmsmrjhwb', 'resource.fuwei.com/images/sample/1429018571965图片1.png', '3', '', '冰岛毛舒棉绒绞花围脖', 'FWA30043', '30*2*35cm', '2015-04-14 21:36:12', '205', '6', '9', 'resource.fuwei.com/images/sample/s/1429018571965图片1.png', 'resource.fuwei.com/images/sample/ss/1429018571965图片1.png', '2', '3');
INSERT INTO `tb_sample` VALUES ('44', '0', '2015-04-14 21:38:30', null, '', 'mhmjhmqm', 'resource.fuwei.com/images/sample/142901871084274030-RR-04-264beret with fake fur pompom 74030 264 30 600 001.jpg', '9', '', '马海毛绞花毛球帽', 'FWA30044', 'D:25', '2015-04-14 21:38:30', '80', '11', '9', 'resource.fuwei.com/images/sample/s/142901871084274030-RR-04-264beret with fake fur pompom 74030 264 30 600 001.png', 'resource.fuwei.com/images/sample/ss/142901871084274030-RR-04-264beret with fake fur pompom 74030 264 30 600 001.png', '37', '3');
INSERT INTO `tb_sample` VALUES ('45', '0', '2015-04-14 21:40:48', null, '', 'bdmlxjhmqm', 'resource.fuwei.com/images/sample/1429018848017QQ截图20150414213921.jpg', '6', '', '冰岛毛菱形绞花毛球帽', 'FWA30045', '20H*21W+9球+5翻边', '2015-04-14 21:40:48', '126', '11', '9', 'resource.fuwei.com/images/sample/s/1429018848017QQ截图20150414213921.png', 'resource.fuwei.com/images/sample/ss/1429018848017QQ截图20150414213921.png', '2', '3');
INSERT INTO `tb_sample` VALUES ('46', '0', '2015-04-14 21:41:48', null, '', 'mhmgxwj', 'resource.fuwei.com/images/sample/1429018908518图片1.jpg', '9', '', '马海毛挂须围巾', 'FWA30046', '25*165+2*15cm', '2015-04-14 21:41:48', '191', '8', '9', 'resource.fuwei.com/images/sample/s/1429018908518图片1.png', 'resource.fuwei.com/images/sample/ss/1429018908518图片1.png', null, '2');
INSERT INTO `tb_sample` VALUES ('47', '0', '2015-04-14 21:43:38', null, '', 'bdmzfzdqm', 'resource.fuwei.com/images/sample/1429019018426图片3.jpg', '6', '', '冰岛毛正反针吊球帽', 'FWA30047', '0', '2015-04-14 21:43:38', '105', '8', '9', 'resource.fuwei.com/images/sample/s/1429019018426图片3.png', 'resource.fuwei.com/images/sample/ss/1429019018426图片3.png', '2', '2');
INSERT INTO `tb_sample` VALUES ('48', '0', '2015-04-14 21:46:21', null, '', 'qlgzthpj', 'resource.fuwei.com/images/sample/1429019180883Sino0732.jpg', '1', '', '晴纶格子提花披肩', 'FWA30048', '0', '2015-04-14 21:46:21', '476', '8', '9', 'resource.fuwei.com/images/sample/s/1429019180883Sino0732.png', 'resource.fuwei.com/images/sample/ss/1429019180883Sino0732.png', '1', '2');
INSERT INTO `tb_sample` VALUES ('49', '0', '2015-04-14 21:48:23', null, '', 'qlssjm', 'resource.fuwei.com/images/sample/1429019303572QQ截图20150414214621.jpg', '1', '', '晴纶纱四角帽', 'FWA30049', '21高*20帽口宽', '2015-04-14 21:48:23', '52', '10', '9', 'resource.fuwei.com/images/sample/s/1429019303572QQ截图20150414214621.png', 'resource.fuwei.com/images/sample/ss/1429019303572QQ截图20150414214621.png', '22', '1');
INSERT INTO `tb_sample` VALUES ('50', '0', '2015-04-14 21:49:36', null, '', 'bdmdzswb', 'resource.fuwei.com/images/sample/1429019375839图片4.png', '6', '', '冰岛毛+带子纱围脖', 'FWA30050', '40*2*55cm', '2015-04-14 21:49:36', '240', '11', '9', 'resource.fuwei.com/images/sample/s/1429019375839图片4.png', 'resource.fuwei.com/images/sample/ss/1429019375839图片4.png', '9', '3');
INSERT INTO `tb_sample` VALUES ('51', '0', '2015-04-14 21:51:03', null, '', 'bdmdjhcmpwb', 'resource.fuwei.com/images/sample/1429019463185图片5.jpg', '6', '', '冰岛毛大绞花穿毛皮围脖', 'FWA30051', '42*150', '2015-04-14 21:51:03', '333', '8', '9', 'resource.fuwei.com/images/sample/s/1429019463185图片5.png', 'resource.fuwei.com/images/sample/ss/1429019463185图片5.png', '2', '2');
INSERT INTO `tb_sample` VALUES ('52', '0', '2015-04-14 21:53:07', null, '', 'mhmlswj', 'resource.fuwei.com/images/sample/1429019587172图片6.jpg', '10', '', '马海毛亮丝围巾', 'FWA30052', '30*180cm', '2015-04-14 21:53:07', '165', '11', '9', 'resource.fuwei.com/images/sample/s/1429019587172图片6.png', 'resource.fuwei.com/images/sample/ss/1429019587172图片6.png', null, '3');
INSERT INTO `tb_sample` VALUES ('53', '0', '2015-04-14 21:53:56', null, '', 'mhmlsbnm', 'resource.fuwei.com/images/sample/1429019636188图片7.jpg', '10', '', '马海毛亮丝比尼帽', 'FWA30053', '22*24高', '2015-04-14 21:53:56', '50', '11', '9', 'resource.fuwei.com/images/sample/s/1429019636188图片7.png', 'resource.fuwei.com/images/sample/ss/1429019636188图片7.png', null, '3');
INSERT INTO `tb_sample` VALUES ('54', '0', '2015-04-14 21:56:19', null, '', 'zzscbnm', 'resource.fuwei.com/images/sample/1429019778644TURUR.JPG', '1', '', '针织双层比尼帽', 'FWA30054', '24*30', '2015-04-14 21:56:19', '123', '12', '9', 'resource.fuwei.com/images/sample/s/1429019778644TURUR.png', 'resource.fuwei.com/images/sample/ss/1429019778644TURUR.png', null, '4');
INSERT INTO `tb_sample` VALUES ('55', '0', '2015-04-17 19:03:29', null, '', 'mhmddsgxwj', 'resource.fuwei.com/images/sample/1429268606560QQ截图20150417190145.jpg', '9', '', '马海毛大肚纱挂须围巾', 'FWA30055', '180*25+20*2cm', '2015-04-17 19:03:29', '228', '11', '9', 'resource.fuwei.com/images/sample/s/1429268606560QQ截图20150417190145.png', 'resource.fuwei.com/images/sample/ss/1429268606560QQ截图20150417190145.png', null, '3');
INSERT INTO `tb_sample` VALUES ('56', '0', '2015-04-17 19:04:23', null, '', 'mhmddsmz', 'resource.fuwei.com/images/sample/1429268663295QQ截图20150417190319.jpg', '9', '', '马海毛大肚纱帽子', 'FWA30056', '22W*21H+11CM球', '2015-04-17 19:04:23', '72', '11', '9', 'resource.fuwei.com/images/sample/s/1429268663295QQ截图20150417190319.png', 'resource.fuwei.com/images/sample/ss/1429268663295QQ截图20150417190319.png', null, '3');
INSERT INTO `tb_sample` VALUES ('57', '0', '2015-04-17 19:05:21', null, '', 'mhmbdmgxwj', 'resource.fuwei.com/images/sample/1429268721077图片1.jpg', '6', '', '马海毛冰岛毛挂须围巾', 'FWA30057', '180*25+20*2cm', '2015-04-17 19:05:21', '210', '6', '9', 'resource.fuwei.com/images/sample/s/1429268721077图片1.png', 'resource.fuwei.com/images/sample/ss/1429268721077图片1.png', null, '3');
INSERT INTO `tb_sample` VALUES ('58', '0', '2015-04-17 19:07:32', null, '', 'mhmmpcbwb', 'resource.fuwei.com/images/sample/1429268852563QQ截图20150417190508.jpg', '10', '', '马海毛毛皮侧边围脖', 'FWA30058', '70*180cm', '2015-04-17 19:07:32', '200', '8', '9', 'resource.fuwei.com/images/sample/s/1429268852563QQ截图20150417190508.png', 'resource.fuwei.com/images/sample/ss/1429268852563QQ截图20150417190508.png', '1', '2');
INSERT INTO `tb_sample` VALUES ('59', '0', '2015-04-17 19:15:36', null, '', 'mptd', 'resource.fuwei.com/images/sample/1429269335915图片2.png', '30', '', '毛皮头带', 'FWA30059', '30*8CM', '2015-04-17 19:15:36', '70', '11', '9', 'resource.fuwei.com/images/sample/s/1429269335915图片2.png', 'resource.fuwei.com/images/sample/ss/1429269335915图片2.png', null, '3');
INSERT INTO `tb_sample` VALUES ('60', '0', '2015-04-17 19:17:00', null, '', 'thpj', 'resource.fuwei.com/images/sample/1429269420682图片2.jpg', '9', '', '提花披肩', 'FWA30060', '披肩尺寸', '2015-04-17 19:17:00', '508', '8', '9', 'resource.fuwei.com/images/sample/s/1429269420682图片2.png', 'resource.fuwei.com/images/sample/ss/1429269420682图片2.png', '6', '2');
INSERT INTO `tb_sample` VALUES ('61', '0', '2015-04-17 19:19:20', null, '', 'xhssjm', 'resource.fuwei.com/images/sample/1429269560246图片3.png', '11', '', 'AB线混色四角帽', 'FWA30061', '童款5个尺码', '2015-04-17 19:19:20', '100', '8', '9', 'resource.fuwei.com/images/sample/s/1429269560246图片3.png', 'resource.fuwei.com/images/sample/ss/1429269560246图片3.png', '10', '2');
INSERT INTO `tb_sample` VALUES ('62', '0', '2015-04-17 19:20:35', null, '', 'bdmdzsmz', 'resource.fuwei.com/images/sample/1429269635263图片3.png', '6', '', '冰岛毛带子纱帽子', 'FWA30062', '23*20cm', '2015-04-17 19:20:35', '73', '11', '9', 'resource.fuwei.com/images/sample/s/1429269635263图片3.png', 'resource.fuwei.com/images/sample/ss/1429269635263图片3.png', null, '3');
INSERT INTO `tb_sample` VALUES ('63', '0', '2015-04-17 19:22:14', null, '', 'mqywjxwb', 'resource.fuwei.com/images/sample/1429269734358图片4.png', '3', '37毛晴', '37毛晴印五角星围脖', 'FWA30063', '34宽*37长', '2015-04-17 19:22:14', '195', '11', '9', 'resource.fuwei.com/images/sample/s/1429269734358图片4.png', 'resource.fuwei.com/images/sample/ss/1429269734358图片4.png', null, '3');
INSERT INTO `tb_sample` VALUES ('64', '0', '2015-04-17 19:43:34', null, '', 'qlsjhxqm', 'resource.fuwei.com/images/sample/1429271014381图片4.jpg', '1', '', '晴纶纱绞花线球帽', 'FWA30064', '23高*21宽中', '2015-04-17 19:43:34', '92', '8', '9', 'resource.fuwei.com/images/sample/s/1429271014381图片4.png', 'resource.fuwei.com/images/sample/ss/1429271014381图片4.png', '2', '2');
INSERT INTO `tb_sample` VALUES ('65', '0', '2015-04-17 21:36:17', null, '', 'jbkjbwb', 'resource.fuwei.com/images/sample/1429277776981Catch2C4E(03-27-(04-17-21-34-43).jpg', '1', '空转围脖', '基本款卷边围脖', 'FWA30065', '30W*2*45H', '2015-04-17 21:36:17', '125', '12', '9', 'resource.fuwei.com/images/sample/s/1429277776981Catch2C4E(03-27-(04-17-21-34-43).png', 'resource.fuwei.com/images/sample/ss/1429277776981Catch2C4E(03-27-(04-17-21-34-43).png', '9', '4');
INSERT INTO `tb_sample` VALUES ('66', '0', '2015-04-17 21:37:15', null, '', 'jbkmz', 'resource.fuwei.com/images/sample/1429277835310CatchAB38(04-03-(04-17-21-35-55).jpg', '1', '', '基本款帽子', 'FWA30066', '27H*20W', '2015-04-17 21:37:15', '65', '12', '9', 'resource.fuwei.com/images/sample/s/1429277835310CatchAB38(04-03-(04-17-21-35-55).png', 'resource.fuwei.com/images/sample/ss/1429277835310CatchAB38(04-03-(04-17-21-35-55).png', '2', '4');
INSERT INTO `tb_sample` VALUES ('67', '0', '2015-04-17 21:38:52', null, '', 'jbkjbwb', 'resource.fuwei.com/images/sample/1429277931969Catch2C4E(03-27-(04-17-21-34-43).jpg', '1', '', '基本款卷边围脖', 'FWA30067', '33W*2*50H', '2015-04-17 21:38:52', '210', '12', '9', 'resource.fuwei.com/images/sample/s/1429277931969Catch2C4E(03-27-(04-17-21-34-43).png', 'resource.fuwei.com/images/sample/ss/1429277931969Catch2C4E(03-27-(04-17-21-34-43).png', '9', '4');
INSERT INTO `tb_sample` VALUES ('68', '0', '2015-04-17 21:39:49', null, '', 'bdmzfzwb', 'resource.fuwei.com/images/sample/1429277989657QQ截图20150417213833.jpg', '5', '', '冰岛毛正反针围脖', 'FWA30068', '65W*2*37H', '2015-04-17 21:39:49', '328', '12', '9', 'resource.fuwei.com/images/sample/s/1429277989657QQ截图20150417213833.png', 'resource.fuwei.com/images/sample/ss/1429277989657QQ截图20150417213833.png', '2', '4');
INSERT INTO `tb_sample` VALUES ('69', '0', '2015-04-18 20:42:52', null, '', 'bdmzfznwb', 'resource.fuwei.com/images/sample/1429360970715图片1.jpg', '31', '', '冰岛毛正反针扭围脖', 'FWA30069', '40*30cm', '2015-04-18 20:42:52', '290', '10', '9', 'resource.fuwei.com/images/sample/s/1429360970715图片1.png', 'resource.fuwei.com/images/sample/ss/1429360970715图片1.png', '2', '1');
INSERT INTO `tb_sample` VALUES ('70', '0', '2015-04-18 20:44:18', null, '', 'bdmlsdqm', 'resource.fuwei.com/images/sample/1429361058061QQ截图20150418204258.jpg', '6', '', '冰岛毛+亮丝吊球帽', 'FWA30070', '22高21宽+8球', '2015-04-18 20:44:18', '73', '10', '9', 'resource.fuwei.com/images/sample/s/1429361058061QQ截图20150418204258.png', 'resource.fuwei.com/images/sample/ss/1429361058061QQ截图20150418204258.png', '2', '1');
INSERT INTO `tb_sample` VALUES ('71', '0', '2015-04-18 20:45:18', null, '', 'bdmlswb', 'resource.fuwei.com/images/sample/1429361118687QQ截图20150418204401.jpg', '6', '', '冰岛毛+亮丝围脖', 'FWA30071', '40*40cm', '2015-04-18 20:45:18', '265', '6', '9', 'resource.fuwei.com/images/sample/s/1429361118687QQ截图20150418204401.png', 'resource.fuwei.com/images/sample/ss/1429361118687QQ截图20150418204401.png', '9', '1');
INSERT INTO `tb_sample` VALUES ('72', '0', '2015-04-18 20:46:06', null, '', 'qllswj', 'resource.fuwei.com/images/sample/1429361166391图片1.jpg', '1', '', '晴纶亮丝围巾', 'FWA30072', '176*50cm', '2015-04-18 20:46:06', '130', '10', '9', 'resource.fuwei.com/images/sample/s/1429361166391图片1.png', 'resource.fuwei.com/images/sample/ss/1429361166391图片1.png', '9', '1');
INSERT INTO `tb_sample` VALUES ('73', '0', '2015-04-18 20:46:55', null, '', 'qllsmz', 'resource.fuwei.com/images/sample/1429361215032图片1.jpg', '1', '', '晴纶亮丝帽子', 'FWA30073', 'D:26', '2015-04-18 20:46:55', '45', '10', '9', 'resource.fuwei.com/images/sample/s/1429361215032图片1.png', 'resource.fuwei.com/images/sample/ss/1429361215032图片1.png', null, '1');
INSERT INTO `tb_sample` VALUES ('74', '0', '2015-04-18 20:48:48', null, '', 'xhsjm', 'resource.fuwei.com/images/sample/1429361328863QQ截图20150418204646.jpg', '32', '', '绣花四角帽', 'FWA30074', '21.5宽*26高+10翻边', '2015-04-18 20:48:48', '110', '10', '9', 'resource.fuwei.com/images/sample/s/1429361328863QQ截图20150418204646.png', 'resource.fuwei.com/images/sample/ss/1429361328863QQ截图20150418204646.png', '22', '1');
INSERT INTO `tb_sample` VALUES ('75', '0', '2015-04-18 20:50:58', null, '', 'bdmjdwb', 'resource.fuwei.com/images/sample/1429361458006图片1.jpg', '4', '', '冰岛毛夹档围脖', 'FWA30075', '0', '2015-04-18 20:50:58', '0', '8', '9', 'resource.fuwei.com/images/sample/s/1429361458006图片1.png', 'resource.fuwei.com/images/sample/ss/1429361458006图片1.png', '2', '2');
INSERT INTO `tb_sample` VALUES ('76', '0', '2015-04-20 14:13:16', null, '', 'bdmghzbnm', 'resource.fuwei.com/images/sample/1429510395701图片1.jpg', '5', '', '冰岛毛桂花针比尼帽', 'FWA30076', '25宽*26高', '2015-04-20 14:14:27', '59', '12', '9', 'resource.fuwei.com/images/sample/s/1429510395701图片1.png', 'resource.fuwei.com/images/sample/ss/1429510395701图片1.png', null, '4');
INSERT INTO `tb_sample` VALUES ('77', '0', '2015-04-20 14:14:08', null, '', 'bdmghzwb', 'resource.fuwei.com/images/sample/1429510448046图片1.jpg', '5', '', '冰岛毛桂花针围脖', 'FWA30077', '69*2*37cm', '2015-04-20 14:14:08', '220', '12', '9', 'resource.fuwei.com/images/sample/s/1429510448046图片1.png', 'resource.fuwei.com/images/sample/ss/1429510448046图片1.png', null, '4');
INSERT INTO `tb_sample` VALUES ('78', '0', '2015-04-23 14:55:06', null, '', 'mpl', 'resource.fuwei.com/images/sample/1429772105828图片1.png', '27', '', '毛皮领', 'FWA30078', '65*18', '2015-04-23 14:55:06', '75', '11', '9', 'resource.fuwei.com/images/sample/s/1429772105828图片1.png', 'resource.fuwei.com/images/sample/ss/1429772105828图片1.png', null, '3');
INSERT INTO `tb_sample` VALUES ('79', '0', '2015-04-23 14:57:14', null, '', 'bdmzfzdqm', 'resource.fuwei.com/images/sample/1429772234222图片3.jpg', '6', '', '冰岛毛正反针吊球帽', 'FWA30079', '未知', '2015-04-23 14:57:14', '105', '8', '9', 'resource.fuwei.com/images/sample/s/1429772234222图片3.png', 'resource.fuwei.com/images/sample/ss/1429772234222图片3.png', null, '2');
INSERT INTO `tb_sample` VALUES ('80', '0', '2015-04-23 15:00:11', null, '', 'zzjsmrwb', 'resource.fuwei.com/images/sample/1429772410711TDYC008.JPG', '1', '', '针织加舒棉绒围脖', 'FWA30080', '40*40cm', '2015-04-23 15:00:11', '235', '8', '9', 'resource.fuwei.com/images/sample/s/1429772410711TDYC008.png', 'resource.fuwei.com/images/sample/ss/1429772410711TDYC008.png', null, '2');
INSERT INTO `tb_sample` VALUES ('81', '0', '2015-04-23 15:06:00', null, '', 'dzstd', 'resource.fuwei.com/images/sample/1429772757876QQ图片20150423150351.jpg', '20', '', '带子纱头带', 'FWA30081', '25*9cm', '2015-04-23 15:06:00', '66', '8', '9', 'resource.fuwei.com/images/sample/s/1429772757876QQ图片20150423150351.png', 'resource.fuwei.com/images/sample/ss/1429772757876QQ图片20150423150351.png', null, '2');
INSERT INTO `tb_sample` VALUES ('82', '0', '2015-04-23 15:06:58', null, '', 'tjpj', 'resource.fuwei.com/images/sample/1429772818065图片1.jpg', '1', '', '烫金披肩', 'FWA30082', '披肩尺寸', '2015-04-23 15:06:58', '350', '11', '9', 'resource.fuwei.com/images/sample/s/1429772818065图片1.png', 'resource.fuwei.com/images/sample/ss/1429772818065图片1.png', '9', '3');
INSERT INTO `tb_sample` VALUES ('83', '0', '2015-04-23 15:08:24', null, '', 'qqlwm', 'resource.fuwei.com/images/sample/1429772904364QQ截图20150423150655.jpg', '1', '', '全晴罗纹帽', 'FWA30083', '21*28cm', '2015-04-23 15:08:24', '61', '11', '9', 'resource.fuwei.com/images/sample/s/1429772904364QQ截图20150423150655.png', 'resource.fuwei.com/images/sample/ss/1429772904364QQ截图20150423150655.png', '2', '3');
INSERT INTO `tb_sample` VALUES ('84', '0', '2015-04-23 15:09:19', null, '', 'qqwb', 'resource.fuwei.com/images/sample/1429772959897QQ截图20150423150800.jpg', '1', '', '全晴围脖', 'FWA30084', '60*40*2cm', '2015-04-23 15:09:19', '80', '11', '9', 'resource.fuwei.com/images/sample/s/1429772959897QQ截图20150423150800.png', 'resource.fuwei.com/images/sample/ss/1429772959897QQ截图20150423150800.png', null, '3');
INSERT INTO `tb_sample` VALUES ('85', '0', '2015-04-29 09:19:43', null, '', 'mhmctdqm', 'resource.fuwei.com/images/sample/1430270381012IMG_8078.JPG', '10', '', '马海毛抽条吊球帽', 'FWA30085', '23*21cm', '2015-04-29 09:19:43', '64', '8', '9', 'resource.fuwei.com/images/sample/s/1430270381012IMG_8078.png', 'resource.fuwei.com/images/sample/ss/1430270381012IMG_8078.png', null, '2');
INSERT INTO `tb_sample` VALUES ('86', '0', '2015-04-29 09:21:09', null, '', 'bdmjdjhm', 'resource.fuwei.com/images/sample/1430270469029IMG_8075.JPG', '4', '', '冰岛毛夹档夹花帽', 'FWA30086', '21宽23高', '2015-04-29 09:21:09', '113', '8', '9', 'resource.fuwei.com/images/sample/s/1430270469029IMG_8075.png', 'resource.fuwei.com/images/sample/ss/1430270469029IMG_8075.png', '7', '2');
INSERT INTO `tb_sample` VALUES ('87', '0', '2015-04-29 09:24:48', null, '', 'jbdsj', 'resource.fuwei.com/images/sample/1430270687657图片1.jpg', '11', '', '经编多色肩', 'FWA30087', '对折后宽55cm，长116cm，领口宽30，须12', '2015-04-29 09:24:48', '340', '10', '9', 'resource.fuwei.com/images/sample/s/1430270687657图片1.png', 'resource.fuwei.com/images/sample/ss/1430270687657图片1.png', null, '1');
INSERT INTO `tb_sample` VALUES ('88', '0', '2015-04-29 09:26:44', null, '', 'nkthwj', 'resource.fuwei.com/images/sample/1430270804252图片1.jpg', '1', '', '男款提花围巾', 'FWA30088', '184*30cm', '2015-04-29 09:26:44', '188', '10', '9', 'resource.fuwei.com/images/sample/s/1430270804252图片1.png', 'resource.fuwei.com/images/sample/ss/1430270804252图片1.png', null, '1');
INSERT INTO `tb_sample` VALUES ('89', '0', '2015-04-29 09:36:51', null, '', 'bdmnwb', 'resource.fuwei.com/images/sample/1430271411746QQ截图20150429093332.jpg', '34', '', '冰岛毛扭围脖', 'FWA30089', '35宽27高', '2015-04-29 09:36:51', '250', '12', '9', 'resource.fuwei.com/images/sample/s/1430271411746QQ截图20150429093332.png', 'resource.fuwei.com/images/sample/ss/1430271411746QQ截图20150429093332.png', null, '4');
INSERT INTO `tb_sample` VALUES ('90', '0', '2015-04-29 09:39:05', null, '', 'bdmwb', 'resource.fuwei.com/images/sample/1430271545076F6070 ..JPG', '8', '夹花灰2.7s', '冰岛毛围脖', 'FWA30090', '70*2*30cm', '2015-04-29 09:39:05', '239', '12', '9', 'resource.fuwei.com/images/sample/s/1430271545076F6070 ..png', 'resource.fuwei.com/images/sample/ss/1430271545076F6070 ..png', null, '4');
INSERT INTO `tb_sample` VALUES ('91', '0', '2015-04-29 09:41:03', null, '', 'mhmwjxwb', 'resource.fuwei.com/images/sample/1430271663000GIRLS ANNI TUBE SCARF.JPG', '10', '', '马海毛五角星围脖', 'FWA30091', '56*85*2cm', '2015-04-29 09:41:03', '120', '12', '9', 'resource.fuwei.com/images/sample/s/1430271663000GIRLS ANNI TUBE SCARF.png', 'resource.fuwei.com/images/sample/ss/1430271663000GIRLS ANNI TUBE SCARF.png', null, '4');
INSERT INTO `tb_sample` VALUES ('92', '0', '2015-04-29 09:56:09', null, '', 'bdmjbkbnm', 'resource.fuwei.com/images/sample/1430272569017图片1.jpg', '3', '', '冰岛毛基本款比尼帽', 'FWA30092', '22宽28高', '2015-04-29 09:56:09', '83', '12', '9', 'resource.fuwei.com/images/sample/s/1430272569017图片1.png', 'resource.fuwei.com/images/sample/ss/1430272569017图片1.png', null, '4');
INSERT INTO `tb_sample` VALUES ('93', '0', '2015-04-29 09:56:57', null, '', 'jbkwb', 'resource.fuwei.com/images/sample/1430272616392图片1.jpg', '1', '', '基本款围脖', 'FWA30093', '66*35*2', '2015-04-29 09:56:57', '248', '6', '9', 'resource.fuwei.com/images/sample/s/1430272616392图片1.png', 'resource.fuwei.com/images/sample/ss/1430272616392图片1.png', null, '4');
INSERT INTO `tb_sample` VALUES ('94', '0', '2015-04-29 09:57:54', null, '', 'dzxjwj', 'resource.fuwei.com/images/sample/1430272674924图片1.jpg', '1', '', '钉珠斜角围巾', 'FWA30094', '188*39', '2015-04-29 09:57:54', '0', '12', '9', 'resource.fuwei.com/images/sample/s/1430272674924图片1.png', 'resource.fuwei.com/images/sample/ss/1430272674924图片1.png', null, '4');
INSERT INTO `tb_sample` VALUES ('95', '0', '2015-04-29 10:12:16', null, '', 'zfzmppj', 'resource.fuwei.com/images/sample/1430273536279图片1.jpg', '1', '', '正反针毛皮披肩', 'FWA30095', '117*117+59', '2015-04-29 10:12:16', '517', '12', '9', 'resource.fuwei.com/images/sample/s/1430273536279图片1.png', 'resource.fuwei.com/images/sample/ss/1430273536279图片1.png', null, '4');
INSERT INTO `tb_sample` VALUES ('96', '0', '2015-04-29 10:13:49', null, '', 'bdmdzswb', 'resource.fuwei.com/images/sample/1430273629186图片1.jpg', '6', '', '冰岛毛带子纱围脖', 'FWA30096', '80*2*32cm', '2015-04-29 10:13:49', '300', '6', '9', 'resource.fuwei.com/images/sample/s/1430273629186图片1.png', 'resource.fuwei.com/images/sample/ss/1430273629186图片1.png', null, null);
INSERT INTO `tb_sample` VALUES ('97', '0', '2015-04-29 10:15:34', null, '', 'bdmmqm', 'resource.fuwei.com/images/sample/1430273734641图片1.jpg', '6', '', '冰岛毛毛球帽', 'FWA30097', '20*185+10*2cm', '2015-04-29 10:15:34', '316', '6', '9', 'resource.fuwei.com/images/sample/s/1430273734641图片1.png', 'resource.fuwei.com/images/sample/ss/1430273734641图片1.png', null, '4');
INSERT INTO `tb_sample` VALUES ('98', '0', '2015-04-29 10:16:35', null, '', 'qqfgbzst', 'resource.fuwei.com/images/sample/1430273795268图片1.jpg', '1', '', '全晴翻盖半指手套', 'FWA30098', '20.5*9cm', '2015-04-29 10:16:35', '55', '12', '9', 'resource.fuwei.com/images/sample/s/1430273795268图片1.png', 'resource.fuwei.com/images/sample/ss/1430273795268图片1.png', '32', '4');
INSERT INTO `tb_sample` VALUES ('99', '0', '2015-04-29 10:17:28', null, '', 'bdmjhblm', 'resource.fuwei.com/images/sample/1430273847816图片1.jpg', '4', '', '冰岛毛绞花贝雷帽', 'FWA30099', '23*10cm', '2015-04-29 10:17:28', '106.5', '12', '9', 'resource.fuwei.com/images/sample/s/1430273847816图片1.png', 'resource.fuwei.com/images/sample/ss/1430273847816图片1.png', '6', '4');
INSERT INTO `tb_sample` VALUES ('100', '0', '2015-04-29 10:18:40', null, '', 'bdmdzsmz', 'resource.fuwei.com/images/sample/1430273920083QQ截图20150429101711.jpg', '6', '', '冰岛毛带子纱帽子', 'FWA30100', '23H*22W+6+9CM', '2015-04-29 10:18:40', '124', '12', '9', 'resource.fuwei.com/images/sample/s/1430273920083QQ截图20150429101711.png', 'resource.fuwei.com/images/sample/ss/1430273920083QQ截图20150429101711.png', null, '4');
INSERT INTO `tb_sample` VALUES ('101', '0', '2015-04-29 10:20:36', null, '', 'bdmylzgxwj', 'resource.fuwei.com/images/sample/1430274036475QQ截图20150429101908.jpg', '6', '', '冰岛毛鱼鳞针挂须围巾', 'FWA30101', '20*180+20*2cm', '2015-04-29 10:20:36', '262', '12', '9', 'resource.fuwei.com/images/sample/s/1430274036475QQ截图20150429101908.png', 'resource.fuwei.com/images/sample/ss/1430274036475QQ截图20150429101908.png', null, '4');
INSERT INTO `tb_sample` VALUES ('102', '0', '2015-04-29 10:23:45', null, '', 'bdmylzwb', 'resource.fuwei.com/images/sample/1430274225667DSCN8187.JPG', '4', '', '冰岛毛鱼鳞针围脖', 'FWA30102', '34*2*40', '2015-04-29 10:23:45', '171', '12', '9', 'resource.fuwei.com/images/sample/s/1430274225667DSCN8187.png', 'resource.fuwei.com/images/sample/ss/1430274225667DSCN8187.png', null, '4');
INSERT INTO `tb_sample` VALUES ('103', '0', '2015-04-29 10:27:07', null, '', 'bdmjbkmz', 'resource.fuwei.com/images/sample/1430274426841图片1.png', '6', '', '冰岛毛基本款帽子', 'FWA30103', '20宽22高+9', '2015-04-29 10:27:07', '96', '12', '9', 'resource.fuwei.com/images/sample/s/1430274426841图片1.png', 'resource.fuwei.com/images/sample/ss/1430274426841图片1.png', null, '4');
INSERT INTO `tb_sample` VALUES ('104', '0', '2015-04-29 10:42:49', null, '', 'bdmlxhtd', 'resource.fuwei.com/images/sample/14302753662448400F76D2D65BC44E26D47CB2A0779A3.png', '3', '', '冰岛毛菱形花头带', 'FWA30104', '9.5*24cm', '2015-04-29 10:42:49', '43', '12', '9', 'resource.fuwei.com/images/sample/s/14302753662448400F76D2D65BC44E26D47CB2A0779A3.png', 'resource.fuwei.com/images/sample/ss/14302753662448400F76D2D65BC44E26D47CB2A0779A3.png', null, '4');
INSERT INTO `tb_sample` VALUES ('105', '0', '2015-04-29 10:46:43', null, '', 'bdmylrbt', 'resource.fuwei.com/images/sample/1430275598920176F622AEEB6C9EB1E396A84FFDE7375.png', '6', '', '冰岛毛摇粒绒包套', 'FWA30105', '9.5*24', '2015-04-29 10:46:43', '114', '12', '9', 'resource.fuwei.com/images/sample/s/1430275598920176F622AEEB6C9EB1E396A84FFDE7375.png', 'resource.fuwei.com/images/sample/ss/1430275598920176F622AEEB6C9EB1E396A84FFDE7375.png', null, '4');
INSERT INTO `tb_sample` VALUES ('106', '0', '2015-04-29 10:51:45', null, '', 'qlszfznwb', 'resource.fuwei.com/images/sample/1430275902205715EB642AD3B7F9B1CAAFA46BEF6686B.png', '1', '小码：123克   大码：172克', '晴纶纱正反针扭围脖', 'FWA30106', '小码：20高*24长  大码：24高*28长', '2015-04-29 10:51:45', '172', '8', '9', 'resource.fuwei.com/images/sample/s/1430275902205715EB642AD3B7F9B1CAAFA46BEF6686B.png', 'resource.fuwei.com/images/sample/ss/1430275902205715EB642AD3B7F9B1CAAFA46BEF6686B.png', null, '2');
INSERT INTO `tb_sample` VALUES ('107', '0', '2015-04-29 10:56:19', null, '', 'zfzylrnlbt', 'resource.fuwei.com/images/sample/143027617613105090862E7EB1EC347FDAE549795396D.png', '1', 'T1:58克，T2:68,T3:78', '正反针摇粒绒内里包套', 'FWA30107', 'T1,T2,T3三个尺码', '2015-04-29 10:56:19', '47', '8', '9', 'resource.fuwei.com/images/sample/s/143027617613105090862E7EB1EC347FDAE549795396D.png', 'resource.fuwei.com/images/sample/ss/143027617613105090862E7EB1EC347FDAE549795396D.png', null, '2');
INSERT INTO `tb_sample` VALUES ('108', '0', '2015-04-29 10:59:46', null, '', 'qlzfzljm', 'resource.fuwei.com/images/sample/14302763823211007D8DA88C9546253CCFB76E2D9F54C.png', '1', '52：59克，54：61克，56：69克', '晴纶正反针六角帽', 'FWA30108', '52，54，56三个尺码', '2015-04-29 10:59:46', '61', '6', '9', 'resource.fuwei.com/images/sample/s/14302763823211007D8DA88C9546253CCFB76E2D9F54C.png', 'resource.fuwei.com/images/sample/ss/14302763823211007D8DA88C9546253CCFB76E2D9F54C.png', null, '2');
INSERT INTO `tb_sample` VALUES ('109', '0', '2015-05-02 16:10:57', null, '', 'mhmzpsdqm', 'resource.fuwei.com/images/sample/1430554256869图片1.jpg', '9', '', '马海毛珠片纱吊球帽', 'FWA30109', '23*23cm', '2015-05-02 16:10:57', '80', '10', '9', 'resource.fuwei.com/images/sample/s/1430554256869图片1.png', 'resource.fuwei.com/images/sample/ss/1430554256869图片1.png', '2', '1');
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
INSERT INTO `tb_shoprecordorder` VALUES ('17', '17', '2015-04-04 14:45:56', '2015-04-04 14:45:56', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('18', '18', '2015-04-04 17:06:39', '2015-04-04 17:06:39', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('19', '19', '2015-04-04 17:24:04', '2015-04-04 17:24:04', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('20', '20', '2015-04-06 12:30:59', '2015-04-06 12:30:59', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('21', '21', '2015-04-06 14:26:11', '2015-04-06 14:26:11', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('22', '22', '2015-04-07 17:20:08', '2015-04-07 17:20:08', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('23', '23', '2015-04-08 07:59:02', '2015-04-08 07:59:02', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('24', '24', '2015-04-08 08:05:51', '2015-04-08 08:05:51', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('25', '25', '2015-04-08 09:20:30', '2015-04-08 09:20:30', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('26', '26', '2015-04-08 09:30:20', '2015-04-08 09:30:20', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('27', '27', '2015-04-08 10:05:42', '2015-04-08 10:05:42', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('28', '28', '2015-04-08 15:00:58', '2015-04-08 15:00:58', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('29', '29', '2015-04-08 15:55:25', '2015-04-08 15:55:25', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('30', '30', '2015-04-10 11:03:32', '2015-04-10 11:03:32', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('31', '31', '2015-04-10 17:08:23', '2015-04-10 17:08:23', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('32', '32', '2015-04-10 17:41:20', '2015-04-10 17:41:20', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('33', '33', '2015-04-10 17:57:18', '2015-04-10 17:57:18', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('34', '34', '2015-04-15 14:29:32', '2015-04-15 14:29:32', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('35', '35', '2015-04-15 15:17:14', '2015-04-15 15:17:14', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('36', '36', '2015-04-15 15:51:10', '2015-04-15 15:51:10', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('37', '37', '2015-04-15 16:33:31', '2015-04-15 16:33:31', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('38', '38', '2015-04-15 16:47:51', '2015-04-15 16:47:51', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('39', '39', '2015-04-15 16:52:54', '2015-04-15 16:52:54', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('40', '40', '2015-04-15 17:02:09', '2015-04-15 17:02:09', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('41', '41', '2015-04-15 17:14:55', '2015-04-15 17:14:55', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('42', '42', '2015-04-16 17:34:03', '2015-04-16 17:34:03', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('43', '43', '2015-04-17 15:32:22', '2015-04-17 15:32:22', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('44', '44', '2015-04-17 16:07:07', '2015-04-17 16:07:07', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('45', '45', '2015-04-17 16:21:44', '2015-04-17 16:21:44', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('46', '46', '2015-04-17 16:45:35', '2015-04-17 16:45:35', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('47', '47', '2015-04-17 17:50:43', '2015-04-17 17:50:43', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('48', '48', '2015-04-17 18:13:55', '2015-04-17 18:13:55', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('49', '49', '2015-04-17 18:39:08', '2015-04-17 18:39:08', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('50', '50', '2015-04-18 15:13:43', '2015-04-18 15:13:43', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('51', '51', '2015-04-18 15:23:22', '2015-04-18 15:23:22', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('52', '52', '2015-04-18 15:34:38', '2015-04-18 15:34:38', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('53', '53', '2015-04-18 15:51:54', '2015-04-18 15:51:54', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('54', '54', '2015-04-18 16:17:42', '2015-04-18 16:17:42', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('55', '55', '2015-04-18 17:23:44', '2015-04-18 17:23:44', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('56', '56', '2015-04-18 17:38:20', '2015-04-18 17:38:20', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('57', '57', '2015-04-18 17:57:46', '2015-04-18 17:57:46', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('58', '58', '2015-04-18 18:04:08', '2015-04-18 18:04:08', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('59', '59', '2015-04-18 18:14:36', '2015-04-18 18:14:36', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('60', '60', '2015-04-19 10:01:24', '2015-04-19 10:01:24', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('61', '61', '2015-04-19 13:01:53', '2015-04-19 13:01:53', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('62', '62', '2015-04-19 13:27:05', '2015-04-19 13:27:05', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('63', '63', '2015-04-19 13:47:19', '2015-04-19 13:47:19', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('64', '64', '2015-04-19 14:16:02', '2015-04-19 14:16:02', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('65', '65', '2015-04-19 14:30:18', '2015-04-19 14:30:18', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('66', '66', '2015-04-19 15:05:26', '2015-04-19 15:05:26', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('67', '67', '2015-04-19 15:17:28', '2015-04-19 15:17:28', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('68', '68', '2015-04-19 15:46:38', '2015-04-19 15:46:38', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('69', '69', '2015-04-19 16:03:09', '2015-04-19 16:03:09', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('70', '70', '2015-04-19 16:24:33', '2015-04-19 16:24:33', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('71', '71', '2015-04-19 16:33:55', '2015-04-19 16:33:55', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('72', '72', '2015-04-19 17:22:17', '2015-04-19 17:22:17', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('73', '73', '2015-04-19 17:29:36', '2015-04-19 17:29:36', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('74', '74', '2015-04-20 14:45:04', '2015-04-20 14:45:04', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('75', '75', '2015-04-20 14:51:33', '2015-04-20 14:51:33', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('76', '76', '2015-04-20 15:07:14', '2015-04-20 15:07:14', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('77', '77', '2015-04-20 15:17:28', '2015-04-20 15:17:28', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('78', '78', '2015-04-20 15:29:00', '2015-04-20 15:29:00', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('79', '79', '2015-04-23 14:31:06', '2015-04-23 14:31:06', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('80', '80', '2015-04-23 14:42:14', '2015-04-23 14:42:14', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('81', '81', '2015-04-24 12:46:27', '2015-04-24 12:46:27', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('82', '82', '2015-04-24 12:52:28', '2015-04-24 12:52:28', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('83', '83', '2015-04-24 13:02:43', '2015-04-24 13:02:43', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('84', '84', '2015-04-24 13:13:59', '2015-04-24 13:13:59', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('85', '85', '2015-04-24 13:34:42', '2015-04-24 13:34:42', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('86', '86', '2015-04-25 09:25:59', '2015-04-25 09:25:59', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('87', '87', '2015-04-27 08:07:57', '2015-04-27 08:07:57', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('88', '88', '2015-04-27 08:24:57', '2015-04-27 08:24:57', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('89', '89', '2015-04-27 08:45:32', '2015-04-27 08:45:32', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('90', '90', '2015-04-30 13:32:44', '2015-04-30 13:32:44', '7', '0', '新建');
INSERT INTO `tb_shoprecordorder` VALUES ('91', '91', '2015-05-02 16:28:24', '2015-05-02 16:28:24', '7', '0', '新建');
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
INSERT INTO `tb_storeorder` VALUES ('15', '17', '2015-04-04 15:38:23', '2015-04-04 15:38:23', '7', '[{\"color\":\"QY114-灰色\",\"factoryId\":27,\"material\":9,\"quantity\":110,\"yarn\":\"\"},{\"color\":\"QY114-粉色\",\"factoryId\":27,\"material\":9,\"quantity\":67,\"yarn\":\"\"},{\"color\":\"QY114-酒红\",\"factoryId\":27,\"material\":9,\"quantity\":110,\"yarn\":\"\"},{\"color\":\"QY114-深驼\",\"factoryId\":27,\"material\":9,\"quantity\":67,\"yarn\":\"\"},{\"color\":\"灰色\",\"factoryId\":4,\"material\":9,\"quantity\":1,\"yarn\":\"\"},{\"color\":\"粉色\",\"factoryId\":4,\"material\":9,\"quantity\":1,\"yarn\":\"\"},{\"color\":\"酒红\",\"factoryId\":4,\"material\":9,\"quantity\":1,\"yarn\":\"\"},{\"color\":\"深驼色\",\"factoryId\":4,\"material\":9,\"quantity\":1,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('16', '14', '2015-04-06 12:11:17', '2015-04-06 12:11:17', '7', '[{\"color\":\"白胚\",\"factoryId\":10,\"material\":13,\"quantity\":50,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('17', '20', '2015-04-06 12:41:45', '2015-04-06 12:41:45', '7', '[{\"color\":\"hr32-黑色\",\"factoryId\":2,\"material\":9,\"quantity\":9.5,\"yarn\":\"\"},{\"color\":\"hr32-黑色\",\"factoryId\":4,\"material\":9,\"quantity\":0.5,\"yarn\":\"\"},{\"color\":\"hr32-米色\",\"factoryId\":2,\"material\":9,\"quantity\":4.5,\"yarn\":\"\"},{\"color\":\"hr32-米色\",\"factoryId\":4,\"material\":9,\"quantity\":0.5,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('18', '21', '2015-04-07 12:34:22', '2015-04-07 16:28:52', '7', '[{\"color\":\"HR140919本白\",\"factoryId\":9,\"material\":9,\"quantity\":9.5,\"yarn\":\"\"},{\"color\":\"彩色点子纱本白\",\"factoryId\":9,\"material\":9,\"quantity\":6,\"yarn\":\"\"},{\"color\":\"本白色\",\"factoryId\":4,\"material\":9,\"quantity\":0.5,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('19', '24', '2015-04-08 08:50:28', '2015-04-08 08:50:28', '7', '[{\"color\":\"714#\",\"factoryId\":7,\"material\":1,\"quantity\":206,\"yarn\":\"\"},{\"color\":\"718#\",\"factoryId\":7,\"material\":1,\"quantity\":206,\"yarn\":\"\"},{\"color\":\"714#\",\"factoryId\":4,\"material\":1,\"quantity\":1.5,\"yarn\":\"\"},{\"color\":\"718#\",\"factoryId\":4,\"material\":1,\"quantity\":1.5,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('20', '26', '2015-04-08 09:38:15', '2015-04-08 09:38:15', '7', '[{\"color\":\"粉色\",\"factoryId\":2,\"material\":1,\"quantity\":128,\"yarn\":\"\"},{\"color\":\"718#\",\"factoryId\":2,\"material\":1,\"quantity\":128,\"yarn\":\"\"},{\"color\":\"712#\",\"factoryId\":2,\"material\":1,\"quantity\":128,\"yarn\":\"\"},{\"color\":\"粉色\",\"factoryId\":18,\"material\":1,\"quantity\":4,\"yarn\":\"\"},{\"color\":\"718#\",\"factoryId\":18,\"material\":1,\"quantity\":4,\"yarn\":\"\"},{\"color\":\"712#\",\"factoryId\":18,\"material\":1,\"quantity\":4,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('21', '23', '2015-04-08 09:44:03', '2015-04-08 09:44:03', '7', '[{\"color\":\"714#\",\"factoryId\":7,\"material\":1,\"quantity\":105,\"yarn\":\"\"},{\"color\":\"718#\",\"factoryId\":7,\"material\":1,\"quantity\":105,\"yarn\":\"\"},{\"color\":\"714#\",\"factoryId\":18,\"material\":1,\"quantity\":3.5,\"yarn\":\"\"},{\"color\":\"718#\",\"factoryId\":18,\"material\":1,\"quantity\":3.5,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('22', '27', '2015-04-08 10:47:56', '2015-04-08 10:47:56', '7', '[{\"color\":\"粉色\",\"factoryId\":2,\"material\":1,\"quantity\":302,\"yarn\":\"\"},{\"color\":\"718#\",\"factoryId\":2,\"material\":1,\"quantity\":302,\"yarn\":\"\"},{\"color\":\"712#\",\"factoryId\":2,\"material\":1,\"quantity\":302,\"yarn\":\"\"},{\"color\":\"粉色\",\"factoryId\":4,\"material\":1,\"quantity\":1,\"yarn\":\"\"},{\"color\":\"718#\",\"factoryId\":4,\"material\":1,\"quantity\":1,\"yarn\":\"\"},{\"color\":\"712\",\"factoryId\":4,\"material\":1,\"quantity\":1,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('23', '28', '2015-04-08 15:22:40', '2015-04-08 15:22:40', '7', '[{\"color\":\"EY062黄色\",\"factoryId\":35,\"material\":9,\"quantity\":73,\"yarn\":\"\"},{\"color\":\"EY062米白\",\"factoryId\":35,\"material\":9,\"quantity\":132,\"yarn\":\"\"},{\"color\":\"EY062黑色\",\"factoryId\":35,\"material\":9,\"quantity\":0,\"yarn\":\"\"},{\"color\":\"EY062紫色\",\"factoryId\":35,\"material\":9,\"quantity\":0,\"yarn\":\"\"},{\"color\":\"EY062黄色\",\"factoryId\":35,\"material\":20,\"quantity\":19,\"yarn\":\"\"},{\"color\":\"EY062米白\",\"factoryId\":35,\"material\":20,\"quantity\":33,\"yarn\":\"\"},{\"color\":\"EY062黑色\",\"factoryId\":35,\"material\":20,\"quantity\":0,\"yarn\":\"\"},{\"color\":\"EY062紫色\",\"factoryId\":35,\"material\":20,\"quantity\":0,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('24', '29', '2015-04-08 16:00:34', '2015-04-08 16:00:34', '7', '[{\"color\":\"K974\",\"factoryId\":2,\"material\":7,\"quantity\":523,\"yarn\":\"\"},{\"color\":\"QY102米色\",\"factoryId\":2,\"material\":6,\"quantity\":523,\"yarn\":\"\"},{\"color\":\"K974\",\"factoryId\":4,\"material\":7,\"quantity\":2.5,\"yarn\":\"\"},{\"color\":\"QY102米色\",\"factoryId\":4,\"material\":6,\"quantity\":2.5,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('25', '31', '2015-04-10 17:32:54', '2015-04-10 17:32:54', '7', '[{\"color\":\"黑色\",\"factoryId\":11,\"material\":20,\"quantity\":68,\"yarn\":\"\"},{\"color\":\"海军蓝\",\"factoryId\":11,\"material\":20,\"quantity\":59,\"yarn\":\"\"},{\"color\":\"银色\",\"factoryId\":11,\"material\":20,\"quantity\":59,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('26', '32', '2015-04-10 17:48:27', '2015-04-10 17:48:27', '7', '[{\"color\":\"黑色\",\"factoryId\":2,\"material\":20,\"quantity\":31,\"yarn\":\"\"},{\"color\":\":海军蓝\",\"factoryId\":2,\"material\":19,\"quantity\":25,\"yarn\":\"\"},{\"color\":\"银色\",\"factoryId\":2,\"material\":20,\"quantity\":25,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('27', '33', '2015-04-10 18:13:44', '2015-04-10 18:13:44', '7', '[{\"color\":\"“黑色\",\"factoryId\":21,\"material\":20,\"quantity\":11,\"yarn\":\"\"},{\"color\":\"海军蓝\",\"factoryId\":21,\"material\":20,\"quantity\":9,\"yarn\":\"\"},{\"color\":\"银色\",\"factoryId\":21,\"material\":20,\"quantity\":9,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":21,\"material\":1,\"quantity\":2,\"yarn\":\"\"},{\"color\":\"海军蓝\",\"factoryId\":21,\"material\":1,\"quantity\":1.5,\"yarn\":\"\"},{\"color\":\"灰色\",\"factoryId\":21,\"material\":1,\"quantity\":1.5,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('28', '34', '2015-04-15 14:47:15', '2015-04-15 15:17:20', '7', '[{\"color\":\"AM黑色\",\"factoryId\":2,\"material\":4,\"quantity\":300,\"yarn\":\"\"},{\"color\":\"AM奶白\",\"factoryId\":2,\"material\":4,\"quantity\":300,\"yarn\":\"\"},{\"color\":\"AM丈青\",\"factoryId\":2,\"material\":4,\"quantity\":207,\"yarn\":\"\"},{\"color\":\"AM酒红\",\"factoryId\":2,\"material\":4,\"quantity\":207,\"yarn\":\"\"},{\"color\":\"714\",\"factoryId\":2,\"material\":4,\"quantity\":300,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":4,\"material\":6,\"quantity\":1.5,\"yarn\":\"\"},{\"color\":\"奶白\",\"factoryId\":4,\"material\":6,\"quantity\":1.5,\"yarn\":\"\"},{\"color\":\"丈青\",\"factoryId\":4,\"material\":6,\"quantity\":1.5,\"yarn\":\"\"},{\"color\":\"酒红\",\"factoryId\":4,\"material\":6,\"quantity\":1.5,\"yarn\":\"\"},{\"color\":\"714#\",\"factoryId\":4,\"material\":7,\"quantity\":1.5,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('29', '35', '2015-04-15 15:29:38', '2015-04-16 16:32:49', '7', '[{\"color\":\"QY15本白\",\"factoryId\":2,\"material\":3,\"quantity\":407,\"yarn\":\"\"},{\"color\":\"QY15深灰夹花K974\",\"factoryId\":2,\"material\":3,\"quantity\":401,\"yarn\":\"\"},{\"color\":\"QY15黑色\",\"factoryId\":2,\"material\":3,\"quantity\":8,\"yarn\":\"\"},{\"color\":\"白色\",\"factoryId\":4,\"material\":1,\"quantity\":1.5,\"yarn\":\"\"},{\"color\":\"K974\",\"factoryId\":4,\"material\":1,\"quantity\":1.5,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":4,\"material\":1,\"quantity\":0.5,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('30', '36', '2015-04-15 16:06:33', '2015-04-16 17:19:15', '7', '[{\"color\":\"0B米白色\",\"factoryId\":9,\"material\":9,\"quantity\":258,\"yarn\":\"\"},{\"color\":\"0B黑色\",\"factoryId\":9,\"material\":9,\"quantity\":480,\"yarn\":\"\"},{\"color\":\"0B紫色\",\"factoryId\":9,\"material\":9,\"quantity\":183,\"yarn\":\"\"},{\"color\":\"0B黄色\",\"factoryId\":9,\"material\":9,\"quantity\":182,\"yarn\":\"\"},{\"color\":\"0B白色\",\"factoryId\":9,\"material\":21,\"quantity\":80,\"yarn\":\"\"},{\"color\":\"0B黑色\",\"factoryId\":9,\"material\":21,\"quantity\":136,\"yarn\":\"\"},{\"color\":\"0B深灰\",\"factoryId\":9,\"material\":21,\"quantity\":56,\"yarn\":\"\"},{\"color\":\"白+黑心\",\"factoryId\":9,\"material\":22,\"quantity\":258,\"yarn\":\"\"},{\"color\":\"0B深灰+黑心\",\"factoryId\":9,\"material\":22,\"quantity\":531,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":4,\"material\":9,\"quantity\":1.5,\"yarn\":\"\"},{\"color\":\"黄色\",\"factoryId\":4,\"material\":9,\"quantity\":1.5,\"yarn\":\"\"},{\"color\":\"紫色\",\"factoryId\":4,\"material\":9,\"quantity\":1.5,\"yarn\":\"\"},{\"color\":\"米白\",\"factoryId\":4,\"material\":9,\"quantity\":2,\"yarn\":\"\"},{\"color\":\"米白\",\"factoryId\":5,\"material\":9,\"quantity\":18,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":5,\"material\":9,\"quantity\":32.5,\"yarn\":\"\"},{\"color\":\"紫色\",\"factoryId\":5,\"material\":9,\"quantity\":13,\"yarn\":\"\"},{\"color\":\"黄色\",\"factoryId\":5,\"material\":9,\"quantity\":13,\"yarn\":\"\"},{\"color\":\"白色\",\"factoryId\":5,\"material\":21,\"quantity\":25,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":5,\"material\":21,\"quantity\":43,\"yarn\":\"\"},{\"color\":\"深灰\",\"factoryId\":5,\"material\":21,\"quantity\":18,\"yarn\":\"\"},{\"color\":\"白+黑心\",\"factoryId\":5,\"material\":9,\"quantity\":21,\"yarn\":\"\"},{\"color\":\"深灰+黑心、\",\"factoryId\":5,\"material\":9,\"quantity\":36,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('31', '37', '2015-04-15 16:36:30', '2015-04-16 16:26:36', '7', '[{\"color\":\"QY15白色\",\"factoryId\":2,\"material\":3,\"quantity\":206,\"yarn\":\"\"},{\"color\":\"QY15黑色\",\"factoryId\":2,\"material\":3,\"quantity\":5,\"yarn\":\"\"},{\"color\":\"QY15深灰夹花K974\",\"factoryId\":2,\"material\":3,\"quantity\":210,\"yarn\":\"\"},{\"color\":\"白色\",\"factoryId\":4,\"material\":1,\"quantity\":1,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":4,\"material\":1,\"quantity\":0.5,\"yarn\":\"\"},{\"color\":\"K974\",\"factoryId\":4,\"material\":1,\"quantity\":1,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('32', '39', '2015-04-15 16:54:58', '2015-04-16 16:12:32', '7', '[{\"color\":\"LU471米色\",\"factoryId\":2,\"material\":6,\"quantity\":159,\"yarn\":\"\"},{\"color\":\"LU471深灰夹花K974\",\"factoryId\":2,\"material\":7,\"quantity\":59,\"yarn\":\"\"},{\"color\":\"红白色\",\"factoryId\":2,\"material\":20,\"quantity\":47,\"yarn\":\"\"},{\"color\":\"米色\",\"factoryId\":4,\"material\":6,\"quantity\":1.5,\"yarn\":\"\"},{\"color\":\"K974\",\"factoryId\":4,\"material\":7,\"quantity\":1,\"yarn\":\"\"},{\"color\":\"米色\",\"factoryId\":20,\"material\":6,\"quantity\":28,\"yarn\":\"\"},{\"color\":\"K974\",\"factoryId\":20,\"material\":7,\"quantity\":9,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('33', '38', '2015-04-15 17:04:09', '2015-04-15 17:04:09', '7', '[{\"color\":\"AM黑,色\",\"factoryId\":2,\"material\":4,\"quantity\":798,\"yarn\":\"\"},{\"color\":\"AM奶白\",\"factoryId\":2,\"material\":4,\"quantity\":798,\"yarn\":\"\"},{\"color\":\"AM丈青\",\"factoryId\":2,\"material\":4,\"quantity\":676,\"yarn\":\"\"},{\"color\":\"AM酒红\",\"factoryId\":2,\"material\":4,\"quantity\":798,\"yarn\":\"\"},{\"color\":\"AM如白\",\"factoryId\":5,\"material\":4,\"quantity\":56,\"yarn\":\"\"},{\"color\":\"AM黑色\",\"factoryId\":5,\"material\":4,\"quantity\":56,\"yarn\":\"\"},{\"color\":\"AM丈青\",\"factoryId\":5,\"material\":4,\"quantity\":48,\"yarn\":\"\"},{\"color\":\"AM酒红\",\"factoryId\":5,\"material\":4,\"quantity\":56,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":4,\"material\":5,\"quantity\":2.5,\"yarn\":\"\"},{\"color\":\"奶白\",\"factoryId\":4,\"material\":6,\"quantity\":2.5,\"yarn\":\"\"},{\"color\":\"丈青\",\"factoryId\":4,\"material\":6,\"quantity\":2,\"yarn\":\"\"},{\"color\":\"酒红\",\"factoryId\":4,\"material\":6,\"quantity\":2.5,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('34', '40', '2015-04-15 17:08:04', '2015-04-15 17:08:04', '7', '[{\"color\":\"45#卡其色\",\"factoryId\":30,\"material\":9,\"quantity\":55,\"yarn\":\"\"},{\"color\":\"89#暗紫色\",\"factoryId\":30,\"material\":9,\"quantity\":55,\"yarn\":\"\"},{\"color\":\"90#黑色\",\"factoryId\":30,\"material\":9,\"quantity\":55,\"yarn\":\"\"},{\"color\":\"铜丝\",\"factoryId\":31,\"material\":19,\"quantity\":3,\"yarn\":\"\"},{\"color\":\"银丝\",\"factoryId\":31,\"material\":19,\"quantity\":5,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('35', '41', '2015-04-15 17:28:23', '2015-04-15 17:28:23', '7', '[{\"color\":\"AN黑色\",\"factoryId\":2,\"material\":4,\"quantity\":159,\"yarn\":\"\"},{\"color\":\"AN奶白\",\"factoryId\":2,\"material\":4,\"quantity\":159,\"yarn\":\"\"},{\"color\":\"AN夹花灰\",\"factoryId\":2,\"material\":4,\"quantity\":135,\"yarn\":\"\"},{\"color\":\"AN丈青\",\"factoryId\":2,\"material\":4,\"quantity\":83,\"yarn\":\"\"},{\"color\":\"AN酒红\",\"factoryId\":2,\"material\":4,\"quantity\":83,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":4,\"material\":6,\"quantity\":2,\"yarn\":\"\"},{\"color\":\"奶白\",\"factoryId\":4,\"material\":6,\"quantity\":2,\"yarn\":\"\"},{\"color\":\"夹花灰714\",\"factoryId\":4,\"material\":6,\"quantity\":1.5,\"yarn\":\"\"},{\"color\":\"丈青\",\"factoryId\":4,\"material\":6,\"quantity\":1.5,\"yarn\":\"\"},{\"color\":\"酒红\",\"factoryId\":4,\"material\":6,\"quantity\":1.5,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('36', '43', '2015-04-17 15:55:08', '2015-04-17 15:55:08', '7', '[{\"color\":\"15NY黑色\",\"factoryId\":33,\"material\":10,\"quantity\":18,\"yarn\":\"\"},{\"color\":\"15NY褐色\",\"factoryId\":33,\"material\":10,\"quantity\":13,\"yarn\":\"\"},{\"color\":\"151\",\"factoryId\":32,\"material\":19,\"quantity\":3,\"yarn\":\"\"},{\"color\":\"72\",\"factoryId\":32,\"material\":19,\"quantity\":3,\"yarn\":\"\"},{\"color\":\"106\",\"factoryId\":33,\"material\":19,\"quantity\":2,\"yarn\":\"\"},{\"color\":\"粉色\",\"factoryId\":33,\"material\":19,\"quantity\":2,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":21,\"material\":10,\"quantity\":2,\"yarn\":\"\"},{\"color\":\"褐色\",\"factoryId\":21,\"material\":10,\"quantity\":1.5,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":4,\"material\":10,\"quantity\":0.5,\"yarn\":\"\"},{\"color\":\"褐色\",\"factoryId\":4,\"material\":10,\"quantity\":0.5,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('37', '45', '2015-04-17 16:33:41', '2015-04-17 16:33:41', '7', '[{\"color\":\"15NY黑色\",\"factoryId\":33,\"material\":10,\"quantity\":33,\"yarn\":\"\"},{\"color\":\"15NY褐色\",\"factoryId\":33,\"material\":10,\"quantity\":27,\"yarn\":\"\"},{\"color\":\"15NY白色\",\"factoryId\":33,\"material\":10,\"quantity\":5,\"yarn\":\"\"},{\"color\":\"151\",\"factoryId\":33,\"material\":19,\"quantity\":5,\"yarn\":\"\"},{\"color\":\"72\",\"factoryId\":33,\"material\":19,\"quantity\":5,\"yarn\":\"\"},{\"color\":\"106\",\"factoryId\":33,\"material\":18,\"quantity\":4,\"yarn\":\"\"},{\"color\":\"粉色\",\"factoryId\":33,\"material\":19,\"quantity\":4,\"yarn\":\"\"},{\"color\":\"2\",\"factoryId\":33,\"material\":19,\"quantity\":1,\"yarn\":\"\"},{\"color\":\"7\",\"factoryId\":33,\"material\":19,\"quantity\":1,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('38', '46', '2015-04-17 17:40:31', '2015-04-17 17:40:31', '7', '[{\"color\":\"15NY黑色\",\"factoryId\":33,\"material\":10,\"quantity\":80,\"yarn\":\"\"},{\"color\":\"15NY棕色\",\"factoryId\":33,\"material\":10,\"quantity\":29,\"yarn\":\"\"},{\"color\":\"15NY白色\",\"factoryId\":33,\"material\":10,\"quantity\":36,\"yarn\":\"\"},{\"color\":\"15NY褐色\",\"factoryId\":33,\"material\":10,\"quantity\":34,\"yarn\":\"\"},{\"color\":\"15NY灰色\",\"factoryId\":33,\"material\":10,\"quantity\":468,\"yarn\":\"\"},{\"color\":\"151\",\"factoryId\":33,\"material\":19,\"quantity\":25,\"yarn\":\"\"},{\"color\":\"72\",\"factoryId\":33,\"material\":19,\"quantity\":25,\"yarn\":\"\"},{\"color\":\"106\",\"factoryId\":33,\"material\":19,\"quantity\":20,\"yarn\":\"\"},{\"color\":\"58\",\"factoryId\":33,\"material\":19,\"quantity\":11,\"yarn\":\"\"},{\"color\":\"2\",\"factoryId\":33,\"material\":19,\"quantity\":157,\"yarn\":\"\"},{\"color\":\"7\",\"factoryId\":33,\"material\":19,\"quantity\":11,\"yarn\":\"\"},{\"color\":\"粉色\",\"factoryId\":33,\"material\":19,\"quantity\":157,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":4,\"material\":10,\"quantity\":1,\"yarn\":\"\"},{\"color\":\"棕色\",\"factoryId\":4,\"material\":10,\"quantity\":0.5,\"yarn\":\"\"},{\"color\":\"白色\",\"factoryId\":4,\"material\":10,\"quantity\":0.5,\"yarn\":\"\"},{\"color\":\"褐色\",\"factoryId\":4,\"material\":10,\"quantity\":0.5,\"yarn\":\"\"},{\"color\":\"灰色\",\"factoryId\":4,\"material\":10,\"quantity\":4,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('39', '47', '2015-04-17 18:08:29', '2015-04-17 18:08:29', '7', '[{\"color\":\"QY114黑色\",\"factoryId\":30,\"material\":9,\"quantity\":93,\"yarn\":\"\"},{\"color\":\"QY114桔红色\",\"factoryId\":30,\"material\":9,\"quantity\":84,\"yarn\":\"\"},{\"color\":\"QY114酒红色\",\"factoryId\":30,\"material\":9,\"quantity\":67,\"yarn\":\"\"},{\"color\":\"QY114绿色\",\"factoryId\":30,\"material\":9,\"quantity\":116,\"yarn\":\"\"},{\"color\":\"QY114米白色\",\"factoryId\":30,\"material\":9,\"quantity\":10,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":30,\"material\":29,\"quantity\":93,\"yarn\":\"\"},{\"color\":\"桔红色\",\"factoryId\":30,\"material\":29,\"quantity\":84,\"yarn\":\"\"},{\"color\":\"酒红色\",\"factoryId\":30,\"material\":29,\"quantity\":67,\"yarn\":\"\"},{\"color\":\"绿色\",\"factoryId\":30,\"material\":29,\"quantity\":116,\"yarn\":\"\"},{\"color\":\"米白色\",\"factoryId\":30,\"material\":29,\"quantity\":10,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":4,\"material\":9,\"quantity\":1,\"yarn\":\"\"},{\"color\":\"桔红色\",\"factoryId\":4,\"material\":9,\"quantity\":0.5,\"yarn\":\"\"},{\"color\":\"酒红色\",\"factoryId\":4,\"material\":9,\"quantity\":0.5,\"yarn\":\"\"},{\"color\":\"绿色\",\"factoryId\":4,\"material\":9,\"quantity\":1,\"yarn\":\"\"},{\"color\":\"米白色\",\"factoryId\":4,\"material\":9,\"quantity\":0.2,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('40', '48', '2015-04-17 18:24:45', '2015-04-17 18:24:45', '7', '[{\"color\":\"QY15黑色\",\"factoryId\":27,\"material\":6,\"quantity\":217,\"yarn\":\"\"},{\"color\":\"QY15本白色\",\"factoryId\":27,\"material\":6,\"quantity\":260,\"yarn\":\"\"},{\"color\":\"QY15白灰\",\"factoryId\":27,\"material\":20,\"quantity\":123,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('41', '49', '2015-04-17 18:41:35', '2015-04-17 18:41:35', '7', '[{\"color\":\"15DP驼色\",\"factoryId\":2,\"material\":6,\"quantity\":145,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('42', '51', '2015-04-18 15:27:50', '2015-04-18 15:27:50', '7', '[{\"color\":\"PG-黑色\",\"factoryId\":1,\"material\":1,\"quantity\":322,\"yarn\":\"\"},{\"color\":\"PG-白色\",\"factoryId\":1,\"material\":1,\"quantity\":270,\"yarn\":\"\"},{\"color\":\"PG-黑色\",\"factoryId\":5,\"material\":1,\"quantity\":29,\"yarn\":\"\"},{\"color\":\"PG-黑色\",\"factoryId\":4,\"material\":1,\"quantity\":3,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('43', '52', '2015-04-18 15:39:52', '2015-04-18 15:39:52', '7', '[{\"color\":\"灰色\",\"factoryId\":2,\"material\":10,\"quantity\":395,\"yarn\":\"\"},{\"color\":\"粉色\",\"factoryId\":2,\"material\":10,\"quantity\":395,\"yarn\":\"\"},{\"color\":\"藏青\",\"factoryId\":2,\"material\":10,\"quantity\":585,\"yarn\":\"\"},{\"color\":\"灰色\",\"factoryId\":18,\"material\":1,\"quantity\":5,\"yarn\":\"\"},{\"color\":\"粉色\",\"factoryId\":18,\"material\":1,\"quantity\":5,\"yarn\":\"\"},{\"color\":\"藏青\",\"factoryId\":18,\"material\":1,\"quantity\":7,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('44', '53', '2015-04-18 16:11:26', '2015-04-18 16:13:05', '7', '[{\"color\":\"VMB米色\",\"factoryId\":2,\"material\":9,\"quantity\":8,\"yarn\":\"\"},{\"color\":\"VMB蓝色\",\"factoryId\":2,\"material\":9,\"quantity\":8,\"yarn\":\"\"},{\"color\":\"VMB米色\",\"factoryId\":4,\"material\":9,\"quantity\":0.5,\"yarn\":\"\"},{\"color\":\"VMB蓝色\",\"factoryId\":4,\"material\":9,\"quantity\":0.5,\"yarn\":\"\"},{\"color\":\"米色\",\"factoryId\":2,\"material\":29,\"quantity\":4,\"yarn\":\"\"},{\"color\":\"蓝色\",\"factoryId\":2,\"material\":29,\"quantity\":4,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('45', '54', '2015-04-18 16:25:20', '2015-04-18 16:25:20', '7', '[{\"color\":\"743米色\",\"factoryId\":9,\"material\":10,\"quantity\":24,\"yarn\":\"\"},{\"color\":\"205蓝色\",\"factoryId\":9,\"material\":10,\"quantity\":23,\"yarn\":\"\"},{\"color\":\"M27黑色\",\"factoryId\":9,\"material\":10,\"quantity\":23,\"yarn\":\"\"},{\"color\":\"米色\",\"factoryId\":9,\"material\":28,\"quantity\":43,\"yarn\":\"\"},{\"color\":\"蓝色\",\"factoryId\":9,\"material\":28,\"quantity\":21,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('46', '55', '2015-04-18 17:34:32', '2015-04-18 17:34:32', '7', '[{\"color\":\"QY15黑色\",\"factoryId\":7,\"material\":6,\"quantity\":48,\"yarn\":\"\"},{\"color\":\"QY15本白色\",\"factoryId\":7,\"material\":6,\"quantity\":58,\"yarn\":\"\"},{\"color\":\"QY15白灰\",\"factoryId\":7,\"material\":20,\"quantity\":56,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":4,\"material\":1,\"quantity\":0.5,\"yarn\":\"\"},{\"color\":\"本白色\",\"factoryId\":4,\"material\":1,\"quantity\":0.5,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('47', '56', '2015-04-18 17:39:39', '2015-04-18 17:39:39', '7', '[{\"color\":\"Cap黑色\",\"factoryId\":6,\"material\":1,\"quantity\":220,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('48', '57', '2015-04-18 18:00:54', '2015-04-18 18:00:54', '7', '[{\"color\":\"15GIII-棕色\",\"factoryId\":9,\"material\":9,\"quantity\":370,\"yarn\":\"\"},{\"color\":\"棕色\",\"factoryId\":5,\"material\":9,\"quantity\":45,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('49', '58', '2015-04-18 18:09:25', '2015-04-18 18:09:25', '7', '[{\"color\":\"W120黑色\",\"factoryId\":22,\"material\":1,\"quantity\":123,\"yarn\":\"\"},{\"color\":\"W120灰色\",\"factoryId\":22,\"material\":1,\"quantity\":80,\"yarn\":\"\"},{\"color\":\"W120棕色\",\"factoryId\":22,\"material\":1,\"quantity\":29,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":18,\"material\":1,\"quantity\":2,\"yarn\":\"\"},{\"color\":\"棕色\",\"factoryId\":18,\"material\":1,\"quantity\":1,\"yarn\":\"\"},{\"color\":\"灰色\",\"factoryId\":18,\"material\":1,\"quantity\":2,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('50', '59', '2015-04-18 18:19:51', '2015-04-18 18:19:51', '7', '[{\"color\":\"K974\",\"factoryId\":6,\"material\":9,\"quantity\":210,\"yarn\":\"\"},{\"color\":\"MD黑色\",\"factoryId\":6,\"material\":9,\"quantity\":210,\"yarn\":\"\"},{\"color\":\"MD中灰\",\"factoryId\":6,\"material\":9,\"quantity\":105,\"yarn\":\"\"},{\"color\":\"MD灰白\",\"factoryId\":6,\"material\":9,\"quantity\":105,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":18,\"material\":1,\"quantity\":2,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('51', '60', '2015-04-19 10:14:44', '2015-04-19 10:14:44', '7', '[{\"color\":\"粉色\",\"factoryId\":22,\"material\":1,\"quantity\":225,\"yarn\":\"\"},{\"color\":\"军蓝\",\"factoryId\":22,\"material\":1,\"quantity\":175,\"yarn\":\"\"},{\"color\":\"深灰\",\"factoryId\":22,\"material\":1,\"quantity\":95,\"yarn\":\"\"},{\"color\":\"粉色\",\"factoryId\":18,\"material\":1,\"quantity\":0.5,\"yarn\":\"\"},{\"color\":\"军蓝\",\"factoryId\":18,\"material\":1,\"quantity\":1.5,\"yarn\":\"\"},{\"color\":\"深灰\",\"factoryId\":18,\"material\":1,\"quantity\":1,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('52', '61', '2015-04-19 13:17:55', '2015-04-19 13:17:55', '7', '[{\"color\":\"03X浅粉\",\"factoryId\":2,\"material\":5,\"quantity\":740,\"yarn\":\"\"},{\"color\":\"90X712\",\"factoryId\":2,\"material\":5,\"quantity\":760,\"yarn\":\"\"},{\"color\":\"59X藏青\",\"factoryId\":2,\"material\":5,\"quantity\":740,\"yarn\":\"\"},{\"color\":\"69X蓝色\",\"factoryId\":2,\"material\":5,\"quantity\":708,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('53', '62', '2015-04-19 13:33:46', '2015-04-19 13:33:46', '7', '[{\"color\":\"33X红色\",\"factoryId\":9,\"material\":1,\"quantity\":273,\"yarn\":\"\"},{\"color\":\"42X亮粉\",\"factoryId\":9,\"material\":1,\"quantity\":299,\"yarn\":\"\"},{\"color\":\"59X藏青\",\"factoryId\":9,\"material\":1,\"quantity\":275,\"yarn\":\"\"},{\"color\":\"99X黑色\",\"factoryId\":9,\"material\":1,\"quantity\":300,\"yarn\":\"\"},{\"color\":\"90X712\",\"factoryId\":9,\"material\":1,\"quantity\":299,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('54', '63', '2015-04-19 14:05:44', '2015-04-19 14:07:13', '7', '[{\"color\":\"01X米色\",\"factoryId\":33,\"material\":1,\"quantity\":506,\"yarn\":\"\"},{\"color\":\"84X咖啡色\",\"factoryId\":33,\"material\":1,\"quantity\":425,\"yarn\":\"\"},{\"color\":\"09x712\",\"factoryId\":33,\"material\":1,\"quantity\":506,\"yarn\":\"\"},{\"color\":\"米色\",\"factoryId\":4,\"material\":1,\"quantity\":3,\"yarn\":\"\"},{\"color\":\"咖啡色\",\"factoryId\":4,\"material\":1,\"quantity\":3,\"yarn\":\"\"},{\"color\":\"712\",\"factoryId\":4,\"material\":1,\"quantity\":3,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('55', '64', '2015-04-19 14:20:46', '2015-04-19 14:20:46', '7', '[{\"color\":\"01X米色\",\"factoryId\":33,\"material\":1,\"quantity\":506,\"yarn\":\"\"},{\"color\":\"84X咖啡色\",\"factoryId\":33,\"material\":1,\"quantity\":425,\"yarn\":\"\"},{\"color\":\"09X712\",\"factoryId\":33,\"material\":1,\"quantity\":506,\"yarn\":\"\"},{\"color\":\"米色\",\"factoryId\":4,\"material\":1,\"quantity\":3,\"yarn\":\"\"},{\"color\":\"咖啡色\",\"factoryId\":4,\"material\":1,\"quantity\":3,\"yarn\":\"\"},{\"color\":\"712\",\"factoryId\":4,\"material\":1,\"quantity\":3,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('56', '65', '2015-04-19 14:53:02', '2015-04-19 14:53:02', '7', '[{\"color\":\"01X米色\",\"factoryId\":30,\"material\":1,\"quantity\":2380,\"yarn\":\"\"},{\"color\":\"84X咖啡色\",\"factoryId\":11,\"material\":1,\"quantity\":2027,\"yarn\":\"\"},{\"color\":\"28X土黄\",\"factoryId\":27,\"material\":1,\"quantity\":1542,\"yarn\":\"\"},{\"color\":\"09X712\",\"factoryId\":9,\"material\":1,\"quantity\":2380,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('57', '66', '2015-04-19 15:12:36', '2015-04-19 15:12:36', '7', '[{\"color\":\"LS紫色\",\"factoryId\":2,\"material\":1,\"quantity\":152,\"yarn\":\"\"},{\"color\":\"LS黑色\",\"factoryId\":2,\"material\":1,\"quantity\":186,\"yarn\":\"\"},{\"color\":\"紫色\",\"factoryId\":39,\"material\":1,\"quantity\":24,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":39,\"material\":1,\"quantity\":29,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('58', '67', '2015-04-19 15:19:22', '2015-04-19 15:19:22', '7', '[{\"color\":\"EY深灰\",\"factoryId\":9,\"material\":3,\"quantity\":310,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('59', '68', '2015-04-19 15:58:07', '2015-04-19 15:58:07', '7', '[{\"color\":\"NEXT-棕色\",\"factoryId\":9,\"material\":11,\"quantity\":218,\"yarn\":\"\"},{\"color\":\"712A\",\"factoryId\":9,\"material\":12,\"quantity\":436,\"yarn\":\"\"},{\"color\":\"NEXT-蓝色\",\"factoryId\":9,\"material\":11,\"quantity\":420,\"yarn\":\"\"},{\"color\":\"NEXT-黑色\",\"factoryId\":9,\"material\":11,\"quantity\":210,\"yarn\":\"\"},{\"color\":\"712A\",\"factoryId\":18,\"material\":12,\"quantity\":5,\"yarn\":\"\"},{\"color\":\"蓝色\",\"factoryId\":18,\"material\":11,\"quantity\":5,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('60', '69', '2015-04-19 16:18:42', '2015-04-19 16:18:42', '7', '[{\"color\":\"G8黑色\",\"factoryId\":6,\"material\":9,\"quantity\":113,\"yarn\":\"\"},{\"color\":\"G8黑色彩点\",\"factoryId\":6,\"material\":17,\"quantity\":231,\"yarn\":\"\"},{\"color\":\"G8本白\",\"factoryId\":6,\"material\":26,\"quantity\":91,\"yarn\":\"\"},{\"color\":\"G8黑色\",\"factoryId\":5,\"material\":3,\"quantity\":82,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":4,\"material\":9,\"quantity\":1,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('61', '70', '2015-04-19 16:29:51', '2015-04-19 16:29:51', '7', '[{\"color\":\"G8黑色\",\"factoryId\":6,\"material\":9,\"quantity\":28,\"yarn\":\"\"},{\"color\":\"G8黑色\",\"factoryId\":6,\"material\":17,\"quantity\":52,\"yarn\":\"\"},{\"color\":\"G8本白\",\"factoryId\":6,\"material\":26,\"quantity\":16,\"yarn\":\"\"},{\"color\":\"G8黑色\",\"factoryId\":39,\"material\":3,\"quantity\":75,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":4,\"material\":9,\"quantity\":1,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('62', '71', '2015-04-19 16:46:47', '2015-04-19 16:46:47', '7', '[{\"color\":\"G8黑色\",\"factoryId\":7,\"material\":9,\"quantity\":97,\"yarn\":\"\"},{\"color\":\"G8红绿段染\",\"factoryId\":7,\"material\":9,\"quantity\":105,\"yarn\":\"\"},{\"color\":\"G8米色\",\"factoryId\":7,\"material\":9,\"quantity\":59,\"yarn\":\"\"},{\"color\":\"G5桔色\",\"factoryId\":7,\"material\":6,\"quantity\":55,\"yarn\":\"\"},{\"color\":\"G5黑色\",\"factoryId\":7,\"material\":6,\"quantity\":299,\"yarn\":\"\"},{\"color\":\"G5米色\",\"factoryId\":7,\"material\":6,\"quantity\":194,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":5,\"material\":6,\"quantity\":70,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":4,\"material\":6,\"quantity\":1,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('63', '72', '2015-04-19 17:24:56', '2015-04-19 17:24:56', '7', '[{\"color\":\"SLI黑色\",\"factoryId\":2,\"material\":6,\"quantity\":515,\"yarn\":\"\"},{\"color\":\"SLI米色\",\"factoryId\":2,\"material\":6,\"quantity\":103,\"yarn\":\"\"},{\"color\":\"SLI暗红\",\"factoryId\":2,\"material\":6,\"quantity\":1217,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('64', '73', '2015-04-19 17:30:46', '2015-04-19 17:30:46', '7', '[{\"color\":\"712\",\"factoryId\":37,\"material\":9,\"quantity\":65,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('65', '74', '2015-04-20 14:47:50', '2015-04-20 14:47:50', '7', '[{\"color\":\"712\",\"factoryId\":2,\"material\":5,\"quantity\":245,\"yarn\":\"\"},{\"color\":\"712\",\"factoryId\":4,\"material\":5,\"quantity\":2,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('66', '75', '2015-04-20 14:53:38', '2015-04-20 14:53:38', '7', '[{\"color\":\"712\",\"factoryId\":2,\"material\":5,\"quantity\":66,\"yarn\":\"\"},{\"color\":\"712\",\"factoryId\":4,\"material\":8,\"quantity\":1,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('67', '76', '2015-04-20 15:12:45', '2015-04-20 15:12:45', '7', '[{\"color\":\"9008-黑色\",\"factoryId\":9,\"material\":6,\"quantity\":235,\"yarn\":\"\"},{\"color\":\"9008-白色\",\"factoryId\":9,\"material\":6,\"quantity\":322,\"yarn\":\"\"},{\"color\":\"金丝\",\"factoryId\":9,\"material\":19,\"quantity\":5,\"yarn\":\"\"},{\"color\":\"银丝\",\"factoryId\":9,\"material\":19,\"quantity\":6.5,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":17,\"material\":1,\"quantity\":1.5,\"yarn\":\"\"},{\"color\":\"白色\",\"factoryId\":18,\"material\":1,\"quantity\":2,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('68', '77', '2015-04-20 15:23:58', '2015-04-20 15:23:58', '7', '[{\"color\":\"9008黑色\",\"factoryId\":2,\"material\":6,\"quantity\":51,\"yarn\":\"\"},{\"color\":\"9008白色\",\"factoryId\":2,\"material\":6,\"quantity\":70,\"yarn\":\"\"},{\"color\":\"金丝\",\"factoryId\":2,\"material\":19,\"quantity\":2,\"yarn\":\"\"},{\"color\":\"银丝\",\"factoryId\":2,\"material\":19,\"quantity\":2.5,\"yarn\":\"\"},{\"color\":\"金丝\",\"factoryId\":39,\"material\":19,\"quantity\":1,\"yarn\":\"\"},{\"color\":\"银丝\",\"factoryId\":39,\"material\":19,\"quantity\":1.5,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":39,\"material\":6,\"quantity\":12,\"yarn\":\"\"},{\"color\":\"白色\",\"factoryId\":39,\"material\":6,\"quantity\":16,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('69', '78', '2015-04-20 15:33:41', '2015-04-20 15:33:41', '7', '[{\"color\":\"红色\",\"factoryId\":2,\"material\":31,\"quantity\":315,\"yarn\":\"\"},{\"color\":\"粉色\",\"factoryId\":2,\"material\":31,\"quantity\":315,\"yarn\":\"\"},{\"color\":\"米色\",\"factoryId\":2,\"material\":31,\"quantity\":377,\"yarn\":\"\"},{\"color\":\"红色\",\"factoryId\":4,\"material\":1,\"quantity\":2,\"yarn\":\"\"},{\"color\":\"粉色\",\"factoryId\":4,\"material\":1,\"quantity\":2,\"yarn\":\"\"},{\"color\":\"米色\",\"factoryId\":4,\"material\":1,\"quantity\":3,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('70', '79', '2015-04-23 14:37:43', '2015-04-23 14:37:43', '7', '[{\"color\":\"4601藏青\",\"factoryId\":1,\"material\":1,\"quantity\":37,\"yarn\":\"\"},{\"color\":\"4601夹花棕\",\"factoryId\":1,\"material\":1,\"quantity\":33,\"yarn\":\"\"},{\"color\":\"4601红色\",\"factoryId\":1,\"material\":1,\"quantity\":28,\"yarn\":\"\"},{\"color\":\"MH-57\",\"factoryId\":1,\"material\":19,\"quantity\":8,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('71', '80', '2015-04-23 14:47:28', '2015-04-23 14:47:28', '7', '[{\"color\":\"4601藏青\",\"factoryId\":1,\"material\":1,\"quantity\":88,\"yarn\":\"\"},{\"color\":\"4601夹花棕\",\"factoryId\":1,\"material\":1,\"quantity\":78,\"yarn\":\"\"},{\"color\":\"4601红色\",\"factoryId\":1,\"material\":1,\"quantity\":67,\"yarn\":\"\"},{\"color\":\"MH-57\",\"factoryId\":1,\"material\":19,\"quantity\":69,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('72', '81', '2015-04-24 12:49:12', '2015-04-24 12:49:12', '7', '[{\"color\":\"072粉色\",\"factoryId\":30,\"material\":1,\"quantity\":50,\"yarn\":\"\"},{\"color\":\"712\",\"factoryId\":30,\"material\":1,\"quantity\":50,\"yarn\":\"\"},{\"color\":\"072粉色\",\"factoryId\":4,\"material\":1,\"quantity\":0.5,\"yarn\":\"\"},{\"color\":\"712\",\"factoryId\":4,\"material\":1,\"quantity\":0.5,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('73', '82', '2015-04-24 12:54:38', '2015-04-24 12:54:38', '7', '[{\"color\":\"072粉色\",\"factoryId\":1,\"material\":1,\"quantity\":38,\"yarn\":\"\"},{\"color\":\"712\",\"factoryId\":1,\"material\":1,\"quantity\":38,\"yarn\":\"\"},{\"color\":\"072粉色\",\"factoryId\":18,\"material\":1,\"quantity\":0.5,\"yarn\":\"\"},{\"color\":\"712\",\"factoryId\":18,\"material\":1,\"quantity\":0.5,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('74', '83', '2015-04-24 13:06:18', '2015-04-24 13:06:29', '7', '[{\"color\":\"081黑色\",\"factoryId\":11,\"material\":1,\"quantity\":82,\"yarn\":\"\"},{\"color\":\"081棕色\",\"factoryId\":11,\"material\":1,\"quantity\":164,\"yarn\":\"\"},{\"color\":\"081黑色\",\"factoryId\":4,\"material\":1,\"quantity\":1,\"yarn\":\"\"},{\"color\":\"081棕色\",\"factoryId\":4,\"material\":1,\"quantity\":1,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('75', '86', '2015-04-25 09:28:33', '2015-04-25 09:28:33', '7', '[{\"color\":\"c008藏青\",\"factoryId\":1,\"material\":1,\"quantity\":130,\"yarn\":\"\"},{\"color\":\"c008卡去\",\"factoryId\":1,\"material\":1,\"quantity\":150,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('76', '87', '2015-04-27 08:19:59', '2015-04-27 08:19:59', '7', '[{\"color\":\"15NY黑色\",\"factoryId\":33,\"material\":10,\"quantity\":17,\"yarn\":\"\"},{\"color\":\"15NY褐色\",\"factoryId\":33,\"material\":10,\"quantity\":7,\"yarn\":\"\"},{\"color\":\"15NY灰色\",\"factoryId\":33,\"material\":10,\"quantity\":11,\"yarn\":\"\"},{\"color\":\"15NY白色\",\"factoryId\":33,\"material\":10,\"quantity\":9,\"yarn\":\"\"},{\"color\":\"151\",\"factoryId\":33,\"material\":19,\"quantity\":3,\"yarn\":\"\"},{\"color\":\"72\",\"factoryId\":33,\"material\":19,\"quantity\":3,\"yarn\":\"\"},{\"color\":\"106\",\"factoryId\":33,\"material\":19,\"quantity\":1,\"yarn\":\"\"},{\"color\":\"粉色\",\"factoryId\":33,\"material\":19,\"quantity\":3,\"yarn\":\"\"},{\"color\":\"1\",\"factoryId\":33,\"material\":19,\"quantity\":3.5,\"yarn\":\"\"},{\"color\":\"7\",\"factoryId\":33,\"material\":19,\"quantity\":1.5,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":21,\"material\":10,\"quantity\":2,\"yarn\":\"\"},{\"color\":\"褐色\",\"factoryId\":21,\"material\":10,\"quantity\":1,\"yarn\":\"\"},{\"color\":\"灰色\",\"factoryId\":21,\"material\":10,\"quantity\":1.5,\"yarn\":\"\"},{\"color\":\"白色\",\"factoryId\":21,\"material\":10,\"quantity\":1,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":4,\"material\":10,\"quantity\":1,\"yarn\":\"\"},{\"color\":\"褐色\",\"factoryId\":4,\"material\":10,\"quantity\":0.5,\"yarn\":\"\"},{\"color\":\"灰色\",\"factoryId\":4,\"material\":10,\"quantity\":0.5,\"yarn\":\"\"},{\"color\":\"白色\",\"factoryId\":4,\"material\":10,\"quantity\":0.5,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('77', '88', '2015-04-27 08:38:21', '2015-04-27 09:00:22', '7', '[{\"color\":\"15NY黑色\",\"factoryId\":37,\"material\":10,\"quantity\":155,\"yarn\":\"\"},{\"color\":\"15NY棕色\",\"factoryId\":37,\"material\":10,\"quantity\":77,\"yarn\":\"\"},{\"color\":\"15NY白色\",\"factoryId\":37,\"material\":10,\"quantity\":121,\"yarn\":\"\"},{\"color\":\"15NY灰色\",\"factoryId\":37,\"material\":10,\"quantity\":18,\"yarn\":\"\"},{\"color\":\"151\",\"factoryId\":37,\"material\":19,\"quantity\":12,\"yarn\":\"\"},{\"color\":\"72\",\"factoryId\":37,\"material\":19,\"quantity\":12,\"yarn\":\"\"},{\"color\":\"106\",\"factoryId\":37,\"material\":19,\"quantity\":6,\"yarn\":\"\"},{\"color\":\"58\",\"factoryId\":37,\"material\":19,\"quantity\":6,\"yarn\":\"\"},{\"color\":\"1\",\"factoryId\":37,\"material\":19,\"quantity\":12,\"yarn\":\"\"},{\"color\":\"7\",\"factoryId\":37,\"material\":19,\"quantity\":10,\"yarn\":\"\"},{\"color\":\"粉色\",\"factoryId\":37,\"material\":19,\"quantity\":2,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":4,\"material\":10,\"quantity\":1.5,\"yarn\":\"\"},{\"color\":\"棕色\",\"factoryId\":4,\"material\":10,\"quantity\":0.5,\"yarn\":\"\"},{\"color\":\"白色\",\"factoryId\":4,\"material\":10,\"quantity\":1,\"yarn\":\"\"},{\"color\":\"灰色\",\"factoryId\":4,\"material\":10,\"quantity\":0.5,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('78', '89', '2015-04-27 08:56:31', '2015-04-27 08:56:31', '7', '[{\"color\":\"15NY黑色\",\"factoryId\":33,\"material\":10,\"quantity\":320,\"yarn\":\"\"},{\"color\":\"15NY棕色\",\"factoryId\":33,\"material\":10,\"quantity\":149,\"yarn\":\"\"},{\"color\":\"15NY白色\",\"factoryId\":33,\"material\":10,\"quantity\":138,\"yarn\":\"\"},{\"color\":\"15NY褐色\",\"factoryId\":33,\"material\":10,\"quantity\":37,\"yarn\":\"\"},{\"color\":\"15NY灰色\",\"factoryId\":33,\"material\":10,\"quantity\":33,\"yarn\":\"\"},{\"color\":\"151\",\"factoryId\":33,\"material\":19,\"quantity\":99.5,\"yarn\":\"\"},{\"color\":\"72\",\"factoryId\":33,\"material\":19,\"quantity\":99.5,\"yarn\":\"\"},{\"color\":\"106\",\"factoryId\":33,\"material\":19,\"quantity\":58,\"yarn\":\"\"},{\"color\":\"58\",\"factoryId\":33,\"material\":19,\"quantity\":46,\"yarn\":\"\"},{\"color\":\"1\",\"factoryId\":33,\"material\":19,\"quantity\":53,\"yarn\":\"\"},{\"color\":\"7\",\"factoryId\":33,\"material\":19,\"quantity\":43,\"yarn\":\"\"},{\"color\":\"粉色\",\"factoryId\":33,\"material\":19,\"quantity\":22,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":4,\"material\":10,\"quantity\":2,\"yarn\":\"\"},{\"color\":\"棕色\",\"factoryId\":4,\"material\":10,\"quantity\":1,\"yarn\":\"\"},{\"color\":\"白色\",\"factoryId\":4,\"material\":10,\"quantity\":1,\"yarn\":\"\"},{\"color\":\"褐色\",\"factoryId\":4,\"material\":10,\"quantity\":0.5,\"yarn\":\"\"},{\"color\":\"灰色\",\"factoryId\":4,\"material\":10,\"quantity\":0.5,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('79', '90', '2015-04-30 13:41:44', '2015-04-30 13:41:44', '7', '[{\"color\":\"714\",\"factoryId\":40,\"material\":10,\"quantity\":143,\"yarn\":\"\"},{\"color\":\"714\",\"factoryId\":4,\"material\":10,\"quantity\":1,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_storeorder` VALUES ('80', '91', '2015-05-02 16:34:57', '2015-05-02 16:34:57', '7', '[{\"color\":\"粉色\",\"factoryId\":2,\"material\":9,\"quantity\":44,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":2,\"material\":9,\"quantity\":130,\"yarn\":\"\"},{\"color\":\"白色\",\"factoryId\":2,\"material\":9,\"quantity\":70,\"yarn\":\"\"},{\"color\":\"粉色\",\"factoryId\":2,\"material\":29,\"quantity\":10,\"yarn\":\"\"},{\"color\":\"黑色\",\"factoryId\":2,\"material\":29,\"quantity\":28,\"yarn\":\"\"},{\"color\":\"白色\",\"factoryId\":2,\"material\":29,\"quantity\":15,\"yarn\":\"\"}]', null, '0', '新建');
INSERT INTO `tb_user` VALUES ('6', null, null, null, '', '', '系统内建帐号', 'fuwei_hp', null, null, null, 'system', '1', '');
INSERT INTO `tb_user` VALUES ('7', '2015-03-31 21:05:17', 'cfz@fuwei.net.cn', 'czf', '', '', '陈珍芳', '123456', '', '13326134466', '2015-04-01 22:33:14', 'czf', '2', '');
INSERT INTO `tb_user` VALUES ('8', '2015-03-31 21:22:18', '', 'rx', '', '', '任晓', '123456', '', '', '2015-03-31 21:22:18', 'rx', '3', '');
INSERT INTO `tb_user` VALUES ('9', '2015-03-31 21:27:30', 'hp@fuwei.net.cn', 'hp', '', '', '胡盼', 'woaishuijiaohaha', '', '15068821361', '2015-05-02 12:46:48', 'hp', '4', '');
INSERT INTO `tb_user` VALUES ('10', '2015-04-02 11:10:37', 'hzq@fuwei.net.cn', 'hzq', '', '', '胡祖群', '123456', '', '13666663553', '2015-04-02 11:10:37', 'hzq', '3', '');
INSERT INTO `tb_user` VALUES ('11', '2015-04-02 14:09:39', 'wyp@fuwei.net.cn', 'wyp', '', '', '王宇平', '123456', '', '18857158975', '2015-04-02 14:09:39', 'wyp', '3', '');
INSERT INTO `tb_user` VALUES ('12', '2015-04-02 14:10:23', 'zmx@fuwei.net.cn', 'zmx', '', '', '张明霞', '123456', '', '15268805988', '2015-04-02 14:10:23', 'zmx', '3', '');
