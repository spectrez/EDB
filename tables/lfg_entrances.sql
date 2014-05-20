/*
Navicat MySQL Data Transfer

Source Server         : Local
Source Server Version : 50602
Source Host           : 127.0.0.1:3306
Source Database       : edb_world

Target Server Type    : MYSQL
Target Server Version : 50602
File Encoding         : 65001

Date: 2014-05-20 16:04:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `lfg_entrances`
-- ----------------------------
DROP TABLE IF EXISTS `lfg_entrances`;
CREATE TABLE `lfg_entrances` (
  `dungeonId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Unique id from LFGDungeons.dbc',
  `name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(5) DEFAULT '0',
  PRIMARY KEY (`dungeonId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lfg_entrances
-- ----------------------------
INSERT INTO `lfg_entrances` VALUES ('18', 'Scarlet Monastery - Graveyard', '1688.99', '1053.48', '18.6775', '0.00117', '0');
INSERT INTO `lfg_entrances` VALUES ('26', 'Maraudon - Orange Crystals', '1019.69', '-458.31', '-43.43', '0.31', '0');
INSERT INTO `lfg_entrances` VALUES ('34', 'Dire Maul - East', '44.4499', '-154.822', '-2.71201', '0', '0');
INSERT INTO `lfg_entrances` VALUES ('36', 'Dire Maul - West', '-62.9658', '159.867', '-3.46206', '3.14788', '0');
INSERT INTO `lfg_entrances` VALUES ('38', 'Dire Maul - North', '255.249', '-16.0561', '-2.58737', '4.7', '0');
INSERT INTO `lfg_entrances` VALUES ('40', 'Stratholme - Main Gate', '3395.09', '-3380.25', '142.702', '0.1', '0');
INSERT INTO `lfg_entrances` VALUES ('163', 'Scarlet Monastery - Armory', '1610.83', '-323.433', '18.6738', '6.28022', '0');
INSERT INTO `lfg_entrances` VALUES ('164', 'Scarlet Monastery - Cathedral', '855.683', '1321.5', '18.6709', '0.001747', '0');
INSERT INTO `lfg_entrances` VALUES ('165', 'Scarlet Monastery - Library', '255.346', '-209.09', '18.6773', '6.26656', '0');
INSERT INTO `lfg_entrances` VALUES ('272', 'Maraudon - Purple Crystals', '752.91', '-616.53', '-33.11', '1.37', '0');
INSERT INTO `lfg_entrances` VALUES ('273', 'Maraudon - Pristine Waters', '495.702', '17.3372', '-96.3128', '3.11854', '0');
INSERT INTO `lfg_entrances` VALUES ('274', 'Stratholme - Service Entrance', '3593.15', '-3646.56', '138.5', '5.33', '0');
INSERT INTO `lfg_entrances` VALUES ('285', 'The Headless Horseman', '1797.52', '1347.38', '18.8876', '3.142', '0');
INSERT INTO `lfg_entrances` VALUES ('286', 'The Frost Lord Ahune', '-100.396', '-95.9996', '-4.28423', '4.71239', '0');
INSERT INTO `lfg_entrances` VALUES ('287', 'Coren Direbrew', '897.495', '-141.976', '-49.7563', '2.1255', '0');
INSERT INTO `lfg_entrances` VALUES ('288', 'The Crown Chemical Co.', '-238.075', '2166.43', '88.853', '1.13446', '0');
