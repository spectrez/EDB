-- ----------------------------
-- Table structure for `prospecting_loot_template`
-- ----------------------------
DROP TABLE IF EXISTS `prospecting_loot_template`;
CREATE TABLE `prospecting_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `lootmode` smallint(5) unsigned NOT NULL DEFAULT '1',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1',
  `maxcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';

-- ----------------------------
-- Records of prospecting_loot_template
-- ----------------------------
INSERT INTO `prospecting_loot_template` VALUES ('36910', '3', '20', '1', '0', '-13005', '1');
INSERT INTO `prospecting_loot_template` VALUES ('36910', '2', '25', '1', '1', '-13004', '1');
INSERT INTO `prospecting_loot_template` VALUES ('36910', '1', '75', '1', '1', '-13003', '2');
INSERT INTO `prospecting_loot_template` VALUES ('36910', '46849', '75', '1', '0', '1', '1');
INSERT INTO `prospecting_loot_template` VALUES ('36912', '2', '15', '1', '1', '-13004', '1');
INSERT INTO `prospecting_loot_template` VALUES ('36912', '1', '85', '1', '1', '-13003', '2');
INSERT INTO `prospecting_loot_template` VALUES ('36909', '2', '5', '1', '1', '-13004', '1');
INSERT INTO `prospecting_loot_template` VALUES ('36909', '1', '95', '1', '1', '-13003', '1');
INSERT INTO `prospecting_loot_template` VALUES ('23425', '2', '10', '1', '1', '-13002', '1');
INSERT INTO `prospecting_loot_template` VALUES ('23425', '1', '100', '1', '1', '-13001', '1');
INSERT INTO `prospecting_loot_template` VALUES ('23425', '24243', '100', '1', '0', '1', '1');
INSERT INTO `prospecting_loot_template` VALUES ('23424', '2', '5', '1', '1', '-13002', '1');
INSERT INTO `prospecting_loot_template` VALUES ('23424', '1', '95', '1', '1', '-13001', '1');
INSERT INTO `prospecting_loot_template` VALUES ('10620', '1', '10', '1', '1', '-13001', '1');
INSERT INTO `prospecting_loot_template` VALUES ('10620', '12800', '15', '1', '1', '1', '2');
INSERT INTO `prospecting_loot_template` VALUES ('10620', '12799', '15', '1', '1', '1', '2');
INSERT INTO `prospecting_loot_template` VALUES ('10620', '12364', '15', '1', '1', '1', '2');
INSERT INTO `prospecting_loot_template` VALUES ('10620', '12361', '15', '1', '1', '1', '2');
INSERT INTO `prospecting_loot_template` VALUES ('10620', '7910', '30', '1', '1', '1', '2');
INSERT INTO `prospecting_loot_template` VALUES ('3858', '12800', '2.5', '1', '1', '1', '1');
INSERT INTO `prospecting_loot_template` VALUES ('3858', '12799', '2.5', '1', '1', '1', '1');
INSERT INTO `prospecting_loot_template` VALUES ('3858', '12364', '2.5', '1', '1', '1', '1');
INSERT INTO `prospecting_loot_template` VALUES ('3858', '12361', '2.5', '1', '1', '1', '1');
INSERT INTO `prospecting_loot_template` VALUES ('3858', '7910', '30', '1', '1', '1', '2');
INSERT INTO `prospecting_loot_template` VALUES ('3858', '7909', '30', '1', '1', '1', '2');
INSERT INTO `prospecting_loot_template` VALUES ('3858', '3864', '30', '1', '1', '1', '2');
INSERT INTO `prospecting_loot_template` VALUES ('2772', '7910', '5', '1', '1', '1', '1');
INSERT INTO `prospecting_loot_template` VALUES ('2772', '7909', '5', '1', '1', '1', '1');
INSERT INTO `prospecting_loot_template` VALUES ('2772', '3864', '30', '1', '1', '1', '2');
INSERT INTO `prospecting_loot_template` VALUES ('2772', '1705', '30', '1', '1', '1', '2');
INSERT INTO `prospecting_loot_template` VALUES ('2772', '1529', '30', '1', '1', '1', '2');
INSERT INTO `prospecting_loot_template` VALUES ('2771', '1', '10', '1', '0', '-13000', '1');
INSERT INTO `prospecting_loot_template` VALUES ('2771', '1206', '0', '1', '1', '1', '2');
INSERT INTO `prospecting_loot_template` VALUES ('2771', '1705', '0', '1', '1', '1', '2');
INSERT INTO `prospecting_loot_template` VALUES ('2771', '1210', '0', '1', '1', '1', '2');
INSERT INTO `prospecting_loot_template` VALUES ('2770', '1210', '10', '1', '0', '1', '1');
INSERT INTO `prospecting_loot_template` VALUES ('2770', '818', '0', '1', '1', '1', '1');
INSERT INTO `prospecting_loot_template` VALUES ('2770', '774', '0', '1', '1', '1', '1');
