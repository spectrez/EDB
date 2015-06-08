DROP TABLE IF EXISTS `gameobject_addon`;
CREATE TABLE `gameobject_addon` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `invisibilityType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `invisibilityValue` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `trinity_string` VALUES ('542', 'Unit Flags 2: %u.\nDynamic Flags: %u.\nFaction Template: %u.', null, null, null, null, null, null, null, null);
INSERT INTO `trinity_string` VALUES ('11008', 'InhabitType: %u', null, null, null, null, null, null, null, null);
INSERT INTO `trinity_string` VALUES ('5038', 'Unit Flags: %u', null, null, null, null, null, null, null, null);
INSERT INTO `trinity_string` VALUES ('5037', 'MechanicImmuneMask: %u', null, null, null, null, null, null, null, null);
INSERT INTO `trinity_string` VALUES ('11009', 'Flags Extra: %u', null, null, null, null, null, null, null, null);