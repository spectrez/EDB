-- ----------------------------
-- Table structure for `game_event_model_equip`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_model_equip`;
CREATE TABLE `game_event_model_equip` (
  `eventEntry` tinyint(4) NOT NULL COMMENT 'Entry of the game event.',
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `modelid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `equipment_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_event_model_equip
-- ----------------------------
INSERT INTO `game_event_model_equip` VALUES ('25', '12088', '0', '2');
INSERT INTO `game_event_model_equip` VALUES ('25', '12093', '0', '2');
INSERT INTO `game_event_model_equip` VALUES ('25', '12095', '0', '2');
INSERT INTO `game_event_model_equip` VALUES ('25', '79670', '0', '2');
INSERT INTO `game_event_model_equip` VALUES ('25', '79675', '0', '2');
INSERT INTO `game_event_model_equip` VALUES ('25', '79676', '0', '2');
INSERT INTO `game_event_model_equip` VALUES ('25', '79690', '0', '2');
INSERT INTO `game_event_model_equip` VALUES ('25', '79792', '0', '2');
INSERT INTO `game_event_model_equip` VALUES ('25', '79807', '0', '2');
INSERT INTO `game_event_model_equip` VALUES ('25', '79814', '0', '2');
