#creature / gameobject
ALTER TABLE `creature` ADD `zoneId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Zone Identifier' AFTER `map`;
ALTER TABLE `creature` ADD `areaId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Area Identifier' AFTER `zoneId`;

ALTER TABLE `gameobject` ADD `zoneId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Zone Identifier' AFTER `map`;
ALTER TABLE `gameobject` ADD `areaId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Area Identifier' AFTER `zoneId`;

#creature_text TextRange

ALTER TABLE `creature_text`
  CHANGE `BroadcastTextID` `BroadcastTextId` MEDIUMINT(6) DEFAULT 0 NOT NULL  AFTER `sound`,
  ADD COLUMN `TextRange` TINYINT(3) UNSIGNED DEFAULT 0 NOT NULL AFTER `BroadcastTextId`;

-- Zone
UPDATE `creature_text` SET `TextRange`=2 WHERE `entry`=15214;

-- Map
UPDATE `creature_text` SET `TextRange`=3 WHERE `entry` IN (29, 14848, 22515, 26527, 27915, 30084);