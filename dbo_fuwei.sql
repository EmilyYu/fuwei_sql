/*
MySQL Data Transfer
Source Host: localhost
Source Database: dbo_fuwei
Target Host: localhost
Target Database: dbo_fuwei
Date: 2014/7/20 16:10:56
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for companyprice
-- ----------------------------
DROP TABLE IF EXISTS `companyprice`;
CREATE TABLE `companyprice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyId` int(11) NOT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `salesManId` int(11) NOT NULL,
  `sampleId` int(11) NOT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for developer
-- ----------------------------
DROP TABLE IF EXISTS `developer`;
CREATE TABLE `developer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jianChen` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fworder
-- ----------------------------
DROP TABLE IF EXISTS `fworder`;
CREATE TABLE `fworder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyId` int(11) NOT NULL,
  `companyOrderNumber` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `fwOrderNumber` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `quoteId` int(11) NOT NULL,
  `salesmanId` int(11) NOT NULL,
  `start_at` datetime DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for quotation
-- ----------------------------
DROP TABLE IF EXISTS `quotation`;
CREATE TABLE `quotation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyPriceID` int(11) NOT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for quotationlist
-- ----------------------------
DROP TABLE IF EXISTS `quotationlist`;
CREATE TABLE `quotationlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyName` varchar(255) DEFAULT NULL,
  `excelName` varchar(255) DEFAULT NULL,
  `idString` varchar(255) DEFAULT NULL,
  `quotationNumber` varchar(255) DEFAULT NULL,
  `salesName` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sample
-- ----------------------------
DROP TABLE IF EXISTS `sample`;
CREATE TABLE `sample` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cost` double NOT NULL,
  `date` datetime DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `developerId` int(11) NOT NULL,
  `machine` varchar(255) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `picturePath` varchar(255) DEFAULT NULL,
  `productNumber` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `weight` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sampleprice
-- ----------------------------
DROP TABLE IF EXISTS `sampleprice`;
CREATE TABLE `sampleprice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memo` varchar(255) DEFAULT NULL,
  `orderId` int(11) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `sampleId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

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
  CONSTRAINT `FKSample2` FOREIGN KEY (`sampleId`) REFERENCES `tb_sample` (`id`),
  CONSTRAINT `tb_quoteorder_detail_ibfk_3` FOREIGN KEY (`quoteOrderId`) REFERENCES `tb_quoteorder` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

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
  CONSTRAINT `FKFAB6A56B87AC0D5A` FOREIGN KEY (`created_user`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

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
  `username` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKA4FF6AFC9710D9E3` (`roleId`),
  CONSTRAINT `FKA4FF6AFC9710D9E3` FOREIGN KEY (`roleId`) REFERENCES `tb_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for unpricedsample
-- ----------------------------
DROP TABLE IF EXISTS `unpricedsample`;
CREATE TABLE `unpricedsample` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `developerId` int(11) NOT NULL,
  `machine` varchar(255) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `picturePath` varchar(255) DEFAULT NULL,
  `productNumber` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `weight` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `tb_company` VALUES ('1', '公司地址', '杭州市', null, null, '2014-07-10 19:46:36', '公司', 'gs', '0', '公司', '2014-07-10 19:46:36', '1');
INSERT INTO `tb_company` VALUES ('2', '西湖区文一西路243号', '杭州市', null, null, '2014-07-13 20:22:16', '测试公司', 'csgs', '0', '公司2', '2014-07-13 20:22:16', '1');
INSERT INTO `tb_company` VALUES ('3', '西湖区文一西路998号', '杭州市', null, null, '2014-07-20 11:24:03', '测试公司2', 'csgs', '0', '测试', '2014-07-20 11:24:03', '1');
INSERT INTO `tb_gongxu` VALUES ('1', '2014-07-07 17:18:04', '测试工序', '2014-07-12 22:34:52', '1');
INSERT INTO `tb_gongxu` VALUES ('2', '2014-07-07 17:22:01', '测试工序2', '2014-07-12 22:35:07', '1');
INSERT INTO `tb_gongxu` VALUES ('3', '2014-07-07 19:53:12', '测试工序3', '2014-07-12 22:35:16', '1');
INSERT INTO `tb_gongxu` VALUES ('4', '2014-07-08 21:01:53', '测试', '2014-07-08 21:01:53', '1');
INSERT INTO `tb_quote` VALUES ('20', '2014-07-20 15:09:06', '2014-07-20 15:09:06', '1', '9', '22');
INSERT INTO `tb_quoteorder` VALUES ('1', '2014-07-18 17:48:06', null, 'FWA10001', '2014-07-18 17:48:06', '1', '1');
INSERT INTO `tb_quoteorder` VALUES ('2', '2014-07-18 22:49:06', 'upload/excel/20140718224906_1405694946935.xls', 'FWA10002', '2014-07-18 22:49:06', '1', '2');
INSERT INTO `tb_quoteorder` VALUES ('3', '2014-07-18 23:05:19', 'upload/excel/20140718230519_1405695919044.xls', 'FWA10003', '2014-07-18 23:05:19', '1', '2');
INSERT INTO `tb_quoteorder` VALUES ('4', '2014-07-18 23:06:18', 'upload/excel/20140718230618_1405695978868.xls', 'FWA10004', '2014-07-18 23:06:18', '1', '2');
INSERT INTO `tb_quoteorder` VALUES ('5', '2014-07-18 23:18:38', 'upload/excel/20140718231838_1405696718673.xls', 'FWA10005', '2014-07-18 23:18:38', '1', '1');
INSERT INTO `tb_quoteorder` VALUES ('6', '2014-07-18 23:23:07', 'upload/excel/20140718232307_1405696987396.xls', 'FWA10006', '2014-07-18 23:23:07', '1', '1');
INSERT INTO `tb_quoteorder` VALUES ('7', '2014-07-18 23:25:13', 'upload/excel/20140718232513_1405697113617.xls', 'FWA10007', '2014-07-18 23:25:13', '1', '2');
INSERT INTO `tb_quoteorder` VALUES ('8', '2014-07-19 00:33:28', 'upload/excel/20140719003328_1405701208430.xls', 'FWA10008', '2014-07-19 00:33:28', '1', '1');
INSERT INTO `tb_quoteorder` VALUES ('10', '2014-07-19 00:55:35', 'upload/excel/20140719005535_1405702535048.xls', 'FWA10010', '2014-07-19 00:55:35', '1', '1');
INSERT INTO `tb_quoteorder` VALUES ('11', '2014-07-19 00:57:20', 'upload/excel/20140719005720_1405702640062.xls', 'FWA10011', '2014-07-19 00:57:20', '1', '1');
INSERT INTO `tb_quoteorder` VALUES ('12', '2014-07-19 01:01:37', 'upload/excel/20140719010137_1405702897967.xls', 'FWA10012', '2014-07-19 01:01:37', '1', '1');
INSERT INTO `tb_quoteorder` VALUES ('13', '2014-07-19 01:08:08', 'upload/excel/20140719010808_1405703288531.xls', 'FWA10013', '2014-07-19 01:08:08', '1', '1');
INSERT INTO `tb_quoteorder` VALUES ('14', '2014-07-20 11:48:17', 'upload/excel/20140720114817_1405828097498.xls', 'FWA10014', '2014-07-20 11:48:17', '1', '1');
INSERT INTO `tb_quoteorder` VALUES ('15', '2014-07-20 14:57:07', 'upload/excel/20140720145707_1405839427523.xls', 'FWA10015', '2014-07-20 14:57:07', '1', '1');
INSERT INTO `tb_quoteorder` VALUES ('16', '2014-07-20 15:02:36', 'upload/excel/20140720150236_1405839756929.xls', 'FWA10016', '2014-07-20 15:02:36', '1', '1');
INSERT INTO `tb_quoteorder` VALUES ('17', '2014-07-20 15:10:29', 'upload/excel/20140720151028_1405840228772.xls', 'FWA10017', '2014-07-20 15:10:29', '1', '1');
INSERT INTO `tb_quoteorder` VALUES ('18', '2014-07-20 15:11:46', 'upload/excel/20140720151145_1405840305531.xls', 'FWA10018', '2014-07-20 15:11:46', '1', '1');
INSERT INTO `tb_quoteorder_detail` VALUES ('1', '3.967', '材料1：1*1*12*2÷ 1000=0.024\r\n材料2：1*3*12*4÷ 1000=0.144\r\n0.024+0.144=0.168+1=1.168\r\n0.036+0.18=0.216\r\n测试工序3:6.000\r\n测试工序2:8.000\r\n测试工序:9.000\r\n____________________________\r\n23+0.216\r\n=23.216*2\r\n=46.432+1.168\r\n=47.6÷12\r\n=3.967*3\r\n=11.901\r\n', 'upload\\1404742143164DSC00104.JPG', '1', '1', '1', '1', '1', '1', '1', '1', '3', '新建公司报价备注', '34', null, null, null);
INSERT INTO `tb_quoteorder_detail` VALUES ('2', '3.967', '材料1：1*1*12*2÷ 1000=0.024\r\n材料2：1*3*12*4÷ 1000=0.144\r\n0.024+0.144=0.168+1=1.168\r\n0.036+0.18=0.216\r\n测试工序3:6.000\r\n测试工序2:8.000\r\n测试工序:9.000\r\n____________________________\r\n23+0.216\r\n=23.216*2\r\n=46.432+1.168\r\n=47.6÷12\r\n=3.967*3\r\n=11.901\r\n', 'upload\\1404742143164DSC00104.JPG', '1', '1', '1', '1', '1', '1', '1', '2', '3', '备注', '15', 'kuhao2', null, null);
INSERT INTO `tb_quoteorder_detail` VALUES ('3', '3.967', '材料1：1*1*12*2÷ 1000=0.024\r\n材料2：1*3*12*4÷ 1000=0.144\r\n0.024+0.144=0.168+1=1.168\r\n0.036+0.18=0.216\r\n测试工序3:6.000\r\n测试工序2:8.000\r\n测试工序:9.000\r\n____________________________\r\n23+0.216\r\n=23.216*2\r\n=46.432+1.168\r\n=47.6÷12\r\n=3.967*3\r\n=11.901\r\n', 'upload\\1404742143164DSC00104.JPG', '1', '1', '1', '1', '1', '1', '1', '3', '3', '备注', '15', 'kuhao2', null, null);
INSERT INTO `tb_quoteorder_detail` VALUES ('4', '3.967', '材料1：1*1*12*2÷ 1000=0.024\r\n材料2：1*3*12*4÷ 1000=0.144\r\n0.024+0.144=0.168+1=1.168\r\n0.036+0.18=0.216\r\n测试工序3:6.000\r\n测试工序2:8.000\r\n测试工序:9.000\r\n____________________________\r\n23+0.216\r\n=23.216*2\r\n=46.432+1.168\r\n=47.6÷12\r\n=3.967*3\r\n=11.901\r\n', 'upload\\1404742143164DSC00104.JPG', '1', '1', '1', '1', '1', '1', '1', '4', '3', '备注', '15', 'kuhao2', null, null);
INSERT INTO `tb_quoteorder_detail` VALUES ('5', '3.967', '材料1：1*1*12*2÷ 1000=0.024\r\n材料2：1*3*12*4÷ 1000=0.144\r\n0.024+0.144=0.168+1=1.168\r\n0.036+0.18=0.216\r\n测试工序3:6.000\r\n测试工序2:8.000\r\n测试工序:9.000\r\n____________________________\r\n23+0.216\r\n=23.216*2\r\n=46.432+1.168\r\n=47.6÷12\r\n=3.967*3\r\n=11.901\r\n', 'upload\\1404742143164DSC00104.JPG', '1', '1', '1', '1', '1', '1', '1', '5', '3', 'hgh', '54', 'kuhao1', null, null);
INSERT INTO `tb_quoteorder_detail` VALUES ('6', '3.967', '材料1：1*1*12*2÷ 1000=0.024\r\n材料2：1*3*12*4÷ 1000=0.144\r\n0.024+0.144=0.168+1=1.168\r\n0.036+0.18=0.216\r\n测试工序3:6.000\r\n测试工序2:8.000\r\n测试工序:9.000\r\n____________________________\r\n23+0.216\r\n=23.216*2\r\n=46.432+1.168\r\n=47.6÷12\r\n=3.967*3\r\n=11.901\r\n', 'upload\\1404742143164DSC00104.JPG', '1', '1', '1', '1', '1', '1', '1', '6', '3', 'hgh', '54', 'kuhao1', null, null);
INSERT INTO `tb_quoteorder_detail` VALUES ('7', '3.967', '材料1：1*1*12*2÷ 1000=0.024\r\n材料2：1*3*12*4÷ 1000=0.144\r\n0.024+0.144=0.168+1=1.168\r\n0.036+0.18=0.216\r\n测试工序3:6.000\r\n测试工序2:8.000\r\n测试工序:9.000\r\n____________________________\r\n23+0.216\r\n=23.216*2\r\n=46.432+1.168\r\n=47.6÷12\r\n=3.967*3\r\n=11.901\r\n', 'upload/images/1404742143164DSC00104.JPG', '1', '1', '1', '1', '1', '1', '1', '7', '3', '备注', '15', 'kuhao2', null, null);
INSERT INTO `tb_quoteorder_detail` VALUES ('15', '26.961', '45*1.1*12*12÷ 1000=7.128+3=10.128\r\n0.772\r\n测试工序:44.000\r\n____________________________\r\n44+0.772\r\n=44.772*7\r\n=313.404+10.128\r\n=323.532÷12\r\n=26.961*1.3\r\n=35.049\r\n', 'upload/images/1405837478092KK119 KK123.jpg', '机织', '材料', '测试款号', 'FWA30022', '尺寸', '4', '1', '15', '22', '', '33', 'kk', 'upload/images/s/1405837478092KK119 KK123.jpg', 'upload/images/ss/1405837478092KK119 KK123.png');
INSERT INTO `tb_quoteorder_detail` VALUES ('16', '26.961', '45*1.1*12*12÷ 1000=7.128+3=10.128\r\n0.772\r\n测试工序:44.000\r\n____________________________\r\n44+0.772\r\n=44.772*7\r\n=313.404+10.128\r\n=323.532÷12\r\n=26.961*1.3\r\n=35.049\r\n', 'upload/images/1405837478092KK119 KK123.jpg', '机织', '材料', '测试款号', 'FWA30022', '尺寸', '4', '1', '16', '22', 'fff', '4', 'kuanhao', 'upload/images/s/1405837478092KK119 KK123.jpg', 'upload/images/ss/1405837478092KK119 KK123.png');
INSERT INTO `tb_quoteorder_detail` VALUES ('17', '26.961', '45*1.1*12*12÷ 1000=7.128+3=10.128\r\n0.772\r\n测试工序:44.000\r\n____________________________\r\n44+0.772\r\n=44.772*7\r\n=313.404+10.128\r\n=323.532÷12\r\n=26.961*1.3\r\n=35.049\r\n', 'upload/images/1405837478092KK119 KK123.jpg', '机织', '材料', '测试款号', 'FWA30022', '尺寸', '4', '1', '17', '22', '', '33', 'kk', 'upload/images/s/1405837478092KK119 KK123.jpg', 'upload/images/ss/1405837478092KK119 KK123.png');
INSERT INTO `tb_quoteorder_detail` VALUES ('18', '26.961', '45*1.1*12*12÷ 1000=7.128+3=10.128\r\n0.772\r\n测试工序:44.000\r\n____________________________\r\n44+0.772\r\n=44.772*7\r\n=313.404+10.128\r\n=323.532÷12\r\n=26.961*1.3\r\n=35.049\r\n', 'upload/images/1405837478092KK119 KK123.jpg', '机织', '材料', '测试款号', 'FWA30022', '尺寸', '4', '1', '18', '22', 'fff', '4', 'kuanhao', 'upload/images/s/1405837478092KK119 KK123.jpg', 'upload/images/ss/1405837478092KK119 KK123.png');
INSERT INTO `tb_quoteprice` VALUES ('1', '2014-07-13 20:08:52', 'hgh', '54', '1', '3', '2014-07-18 17:19:34', '1', 'kuhao1');
INSERT INTO `tb_quoteprice` VALUES ('2', '2014-07-13 20:25:38', '新建公司报价备注', '34', '1', '3', '2014-07-15 23:32:02', '1', null);
INSERT INTO `tb_quoteprice` VALUES ('3', '2014-07-13 20:25:55', '备注', '15', '2', '3', '2014-07-18 17:19:23', '1', 'kuhao2');
INSERT INTO `tb_quoteprice` VALUES ('4', '2014-07-15 23:15:22', 'gfd', '50', '1', '3', '2014-07-15 23:31:25', '1', null);
INSERT INTO `tb_quoteprice` VALUES ('8', '2014-07-20 14:55:48', 'fff', '4', '1', '22', '2014-07-20 14:55:48', '1', 'kuanhao');
INSERT INTO `tb_quoteprice` VALUES ('9', '2014-07-20 14:56:01', '', '33', '1', '22', '2014-07-20 14:56:01', '1', 'kk');
INSERT INTO `tb_role` VALUES ('1', '2014-07-07 17:15:33', null, 'name', '2014-07-07 17:15:43', '1');
INSERT INTO `tb_salesman` VALUES ('1', '2014-07-10 19:46:49', 'ywy', '业务员', '212455', '2014-07-10 19:46:49', '1', '1');
INSERT INTO `tb_salesman` VALUES ('2', '2014-07-13 20:22:27', 'csywy', '测试业务员2', '15033747932', '2014-07-13 20:22:37', '2', '1');
INSERT INTO `tb_sample` VALUES ('2', '1', null, '方法', '', 'csbjyp', 'upload/images/1404835197988QQ图片20140314002141.jpg', '1', '材料', '1', '测试编辑样品1', '1', '1', '2014-07-09 00:03:05', '1', '1', null, null, null);
INSERT INTO `tb_sample` VALUES ('3', '3.967', '2014-07-07 22:09:03', '材料1：1*1*12*2÷ 1000=0.024\r\n材料2：1*3*12*4÷ 1000=0.144\r\n0.024+0.144=0.168+1=1.168\r\n0.036+0.18=0.216\r\n测试工序3:6.000\r\n测试工序2:8.000\r\n测试工序:9.000\r\n____________________________\r\n23+0.216\r\n=23.216*2\r\n=46.432+1.168\r\n=47.6÷12\r\n=3.967*3\r\n=11.901\r\n', '', '', 'upload/images/1404742143164DSC00104.JPG', '1', '1', '1', '1', '1', '1', '2014-07-07 22:09:03', '1', '1', '1', null, null);
INSERT INTO `tb_sample` VALUES ('4', '1', '2014-07-07 22:23:24', null, '', '', 'upload/images/QQ图片20140313221759.jpg', '1', '1', '2', '1', '1', '1', '2014-07-07 22:23:24', '1', '1', '1', null, null);
INSERT INTO `tb_sample` VALUES ('5', '1', '2014-07-07 22:28:16', null, '', '', 'upload/images/1404743295966QQ图片20140313221759.jpg', '1', '1', '1', '1', '1', '1', '2014-07-07 22:28:16', '1', '1', '1', null, null);
INSERT INTO `tb_sample` VALUES ('7', '1', '2014-07-07 22:46:12', null, '', '', 'upload/images/1404744357661QQ图片20140314002141.jpg', '1', '1', '1', '15068821518', '1', '1', '2014-07-07 22:46:12', '1', '1', '1', null, null);
INSERT INTO `tb_sample` VALUES ('8', '100', '2014-07-14 22:16:53', null, '', 'csypm', 'upload/images/1405347413660loading.gif', '机织', '材料', '备注3', '测试样品名3', '3', '尺寸', '2014-07-14 22:16:53', '344', '1', '1', null, null);
INSERT INTO `tb_sample` VALUES ('9', '30', '2014-07-14 22:17:26', null, '', 'csypm', 'upload/images/1405347446340QQ图片20140313221759.jpg', '机织', '材料', '备注4', '测试样品名4', '4', '尺寸', '2014-07-14 22:17:26', '45', '1', '1', null, null);
INSERT INTO `tb_sample` VALUES ('10', '24', '2014-07-14 22:20:03', null, '', 'csypm', 'upload/images/1405347603880QQ图片20140313221759.jpg', '机织', '材料', '55', '测试样品名5', '5', '344', '2014-07-14 22:20:03', '45', '1', '1', null, null);
INSERT INTO `tb_sample` VALUES ('22', '26.961', '2014-07-20 14:24:38', '45*1.1*12*12÷ 1000=7.128+3=10.128\r\n0.772\r\n测试工序:44.000\r\n____________________________\r\n44+0.772\r\n=44.772*7\r\n=313.404+10.128\r\n=323.532÷12\r\n=26.961*1.3\r\n=35.049\r\n', '', 'cskh', 'upload/images/1405837478092KK119 KK123.jpg', '机织', '材料', '', '测试款号', 'FWA30022', '尺寸', '2014-07-20 14:25:40', '4', '1', '1', 'upload/images/s/1405837478092KK119 KK123.jpg', 'upload/images/ss/1405837478092KK119 KK123.png');
INSERT INTO `tb_sample` VALUES ('23', '0', '2014-07-20 15:42:39', null, '', '', 'upload/images/1405842153342IMG_7725.JPG', '3 ', 'f', '', 'f', 'FWA30023', '发', '2014-07-20 15:42:39', '3', '1', '1', 'upload/images/s/1405842153342IMG_7725.JPG', 'upload/images/ss/1405842153342IMG_7725.png');
INSERT INTO `tb_user` VALUES ('1', null, '6@qq.com', 'yf', '', '', '余芬', '123456', '123', '143333', '2014-07-07 19:54:08', 'yf', '1');
INSERT INTO `tb_user` VALUES ('2', '2014-07-10 20:07:03', '345@qq.com', 'yf', '', '', '余芬2', '123456', '12335', '124577', '2014-07-10 20:07:03', 'yufen', '1');
