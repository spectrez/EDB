-- ----------------------------
-- Table structure for `achievement_dbc`
-- ----------------------------
DROP TABLE IF EXISTS `achievement_dbc`;
CREATE TABLE `achievement_dbc` (
  `ID` int(10) unsigned NOT NULL,
  `requiredFaction` int(11) NOT NULL DEFAULT '-1',
  `mapID` int(11) NOT NULL DEFAULT '-1',
  `points` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `refAchievement` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of achievement_dbc
-- ----------------------------
INSERT INTO `achievement_dbc` VALUES ('3696', '-1', '-1', '0', '2', '1', '0');
INSERT INTO `achievement_dbc` VALUES ('4788', '-1', '-1', '0', '2', '1', '0');
INSERT INTO `achievement_dbc` VALUES ('4789', '-1', '-1', '0', '2', '1', '0');
