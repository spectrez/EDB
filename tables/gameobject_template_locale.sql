-- ----------------------------
-- Table structure for `gameobject_template_locale`
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_template_locale`;
CREATE TABLE `gameobject_template_locale` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `name` text,
  `castBarCaption` text,
  `VerifiedBuild` smallint(5) DEFAULT '0',
  PRIMARY KEY (`entry`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gameobject_template_locale
-- ----------------------------
