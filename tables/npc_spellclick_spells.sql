-- ----------------------------
-- Table structure for `npc_spellclick_spells`
-- ----------------------------
DROP TABLE IF EXISTS `npc_spellclick_spells`;
CREATE TABLE `npc_spellclick_spells` (
  `npc_entry` int(10) unsigned NOT NULL COMMENT 'reference to creature_template',
  `spell_id` int(10) unsigned NOT NULL COMMENT 'spell which should be casted ',
  `cast_flags` tinyint(3) unsigned NOT NULL COMMENT 'first bit defines caster: 1=player, 0=creature; second bit defines target, same mapping as caster bit',
  `user_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'relation with summoner: 0-no 1-friendly 2-raid 3-party player can click',
  PRIMARY KEY (`npc_entry`,`spell_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of npc_spellclick_spells
-- ----------------------------
INSERT INTO `npc_spellclick_spells` VALUES ('34072', '63989', '2', '0');
INSERT INTO `npc_spellclick_spells` VALUES ('34072', '63997', '2', '0');
INSERT INTO `npc_spellclick_spells` VALUES ('34072', '63998', '2', '0');
INSERT INTO `npc_spellclick_spells` VALUES ('32370', '59724', '1', '0');
INSERT INTO `npc_spellclick_spells` VALUES ('29856', '55364', '1', '0');
INSERT INTO `npc_spellclick_spells` VALUES ('28669', '46598', '0', '1');
INSERT INTO `npc_spellclick_spells` VALUES ('29863', '46598', '0', '1');
INSERT INTO `npc_spellclick_spells` VALUES ('29736', '43671', '1', '0');
INSERT INTO `npc_spellclick_spells` VALUES ('30123', '55957', '3', '0');
