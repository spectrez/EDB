-- ----------------------------
-- Table structure for `reputation_reward_rate`
-- ----------------------------
DROP TABLE IF EXISTS `reputation_reward_rate`;
CREATE TABLE `reputation_reward_rate` (
  `faction` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quest_rate` float NOT NULL DEFAULT '1',
  `quest_daily_rate` float NOT NULL DEFAULT '1',
  `quest_weekly_rate` float NOT NULL DEFAULT '1',
  `quest_monthly_rate` float NOT NULL DEFAULT '1',
  `quest_repeatable_rate` float NOT NULL,
  `creature_rate` float NOT NULL DEFAULT '1',
  `spell_rate` float NOT NULL DEFAULT '1',
  PRIMARY KEY (`faction`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reputation_reward_rate
-- ----------------------------
INSERT INTO `reputation_reward_rate` VALUES ('529', '1', '1', '1', '1', '0', '1', '2');
INSERT INTO `reputation_reward_rate` VALUES ('609', '1', '1', '1', '1', '0', '1', '2');
INSERT INTO `reputation_reward_rate` VALUES ('576', '4', '1', '1', '1', '0', '1', '1');
INSERT INTO `reputation_reward_rate` VALUES ('1073', '1', '2', '1', '1', '0', '2', '2');
INSERT INTO `reputation_reward_rate` VALUES ('1119', '1', '1', '1', '1', '0', '1.3', '1.3');
INSERT INTO `reputation_reward_rate` VALUES ('1106', '1', '1', '1', '1', '0', '1.3', '1.3');
INSERT INTO `reputation_reward_rate` VALUES ('1090', '1', '1', '1', '1', '0', '1.3', '1.3');
INSERT INTO `reputation_reward_rate` VALUES ('1098', '1', '1', '1', '1', '0', '1.3', '1.3');
INSERT INTO `reputation_reward_rate` VALUES ('1091', '1', '1', '1', '1', '0', '1.3', '1.3');
INSERT INTO `reputation_reward_rate` VALUES ('970', '1', '1', '1', '1', '0', '1', '3');
INSERT INTO `reputation_reward_rate` VALUES ('978', '1', '1', '1', '1', '0', '1', '2');
INSERT INTO `reputation_reward_rate` VALUES ('941', '2', '1', '1', '1', '0', '1', '1');
INSERT INTO `reputation_reward_rate` VALUES ('1105', '1', '1', '1', '1', '0', '2', '2');
INSERT INTO `reputation_reward_rate` VALUES ('1104', '1', '1', '1', '1', '0', '2', '2');
