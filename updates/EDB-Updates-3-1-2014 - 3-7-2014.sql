#npc_spellclick_spells - Added missing table

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

#creature_addon - Removed too many auras previously, added one back
UPDATE `creature_addon` SET `auras`='63500 64718' WHERE `guid`=85236;

#creature_addon - Corrected invalid aura startup errors
UPDATE `creature_addon` SET `auras`=NULL WHERE `guid` IN (125946, 128590, 128591, 128592, 128593, 128595, 128596, 128597, 128598, 128599, 128600, 128616, 128617, 128618, 128619, 128620, 128621, 128622, 128623, 128624, 128625, 
  128626, 132681, 133326, 133328, 133329, 133330, 133331);               

#creature_template_addon - Corrected invalid aura startup errors
UPDATE `creature_template_addon` SET `auras`=NULL WHERE `entry` IN (28093, 29838, 27661);
