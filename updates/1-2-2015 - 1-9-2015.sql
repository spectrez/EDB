-- Alter creature_loot_template
ALTER TABLE `creature_loot_template` DROP PRIMARY KEY;
ALTER TABLE `creature_loot_template` CHANGE `entry` `Entry` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `creature_loot_template` CHANGE `item` `Item` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `creature_loot_template` ADD COLUMN `Reference` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0 AFTER `Item`;
UPDATE `creature_loot_template` SET `Reference` = `mincountOrRef` * -1 WHERE `mincountOrRef` < 0;
UPDATE `creature_loot_template` SET  `mincountOrRef` = 1 WHERE `Reference` > 0;
ALTER TABLE `creature_loot_template` ADD COLUMN `QuestRequired` BOOL NOT NULL DEFAULT 0 AFTER `ChanceOrQuestChance`;
UPDATE `creature_loot_template` SET `QuestRequired` = 1 WHERE `ChanceOrQuestChance` < 0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = `ChanceOrQuestChance` * -1 WHERE `ChanceOrQuestChance` < 0;
ALTER TABLE `creature_loot_template` CHANGE `ChanceOrQuestChance` `Chance` FLOAT NOT NULL DEFAULT 100;
ALTER TABLE `creature_loot_template` CHANGE `lootmode` `LootMode` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `creature_loot_template` CHANGE `groupid` `GroupId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `creature_loot_template` CHANGE `mincountOrRef` `MinCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `creature_loot_template` CHANGE `maxcount` `MaxCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `creature_loot_template` ADD COLUMN `Comment` VARCHAR(255) AFTER `MaxCount`;
ALTER TABLE `creature_loot_template` ADD PRIMARY KEY (`Entry`,`Item`);

-- Alter disenchant_loot_template
ALTER TABLE `disenchant_loot_template` DROP PRIMARY KEY;
ALTER TABLE `disenchant_loot_template` CHANGE `entry` `Entry` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `disenchant_loot_template` CHANGE `item` `Item` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `disenchant_loot_template` ADD COLUMN `Reference` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0 AFTER `Item`;
UPDATE `disenchant_loot_template` SET `Reference` = `mincountOrRef` * -1 WHERE `mincountOrRef` < 0;
UPDATE `disenchant_loot_template` SET  `mincountOrRef` = 1 WHERE `Reference` > 0;
ALTER TABLE `disenchant_loot_template` ADD COLUMN `QuestRequired` BOOL NOT NULL DEFAULT 0 AFTER `ChanceOrQuestChance`;
UPDATE `disenchant_loot_template` SET `QuestRequired` = 1 WHERE `ChanceOrQuestChance` < 0;
UPDATE `disenchant_loot_template` SET `ChanceOrQuestChance` = `ChanceOrQuestChance` * -1 WHERE `ChanceOrQuestChance` < 0;
ALTER TABLE `disenchant_loot_template` CHANGE `ChanceOrQuestChance` `Chance` FLOAT NOT NULL DEFAULT 100;
ALTER TABLE `disenchant_loot_template` CHANGE `lootmode` `LootMode` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `disenchant_loot_template` CHANGE `groupid` `GroupId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `disenchant_loot_template` CHANGE `mincountOrRef` `MinCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `disenchant_loot_template` CHANGE `maxcount` `MaxCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `disenchant_loot_template` ADD COLUMN `Comment` VARCHAR(255) AFTER `MaxCount`;
ALTER TABLE `disenchant_loot_template` ADD PRIMARY KEY (`Entry`,`Item`);

-- Alter fishing_loot_template
ALTER TABLE `fishing_loot_template` DROP PRIMARY KEY;
ALTER TABLE `fishing_loot_template` CHANGE `entry` `Entry` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `fishing_loot_template` CHANGE `item` `Item` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `fishing_loot_template` ADD COLUMN `Reference` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0 AFTER `Item`;
UPDATE `fishing_loot_template` SET `Reference` = `mincountOrRef` * -1 WHERE `mincountOrRef` < 0;
UPDATE `fishing_loot_template` SET  `mincountOrRef` = 1 WHERE `Reference` > 0;
ALTER TABLE `fishing_loot_template` ADD COLUMN `QuestRequired` BOOL NOT NULL DEFAULT 0 AFTER `ChanceOrQuestChance`;
UPDATE `fishing_loot_template` SET `QuestRequired` = 1 WHERE `ChanceOrQuestChance` < 0;
UPDATE `fishing_loot_template` SET `ChanceOrQuestChance` = `ChanceOrQuestChance` * -1 WHERE `ChanceOrQuestChance` < 0;
ALTER TABLE `fishing_loot_template` CHANGE `ChanceOrQuestChance` `Chance` FLOAT NOT NULL DEFAULT 100;
ALTER TABLE `fishing_loot_template` CHANGE `lootmode` `LootMode` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `fishing_loot_template` CHANGE `groupid` `GroupId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `fishing_loot_template` CHANGE `mincountOrRef` `MinCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `fishing_loot_template` CHANGE `maxcount` `MaxCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `fishing_loot_template` ADD COLUMN `Comment` VARCHAR(255) AFTER `MaxCount`;
ALTER TABLE `fishing_loot_template` ADD PRIMARY KEY (`Entry`,`Item`);

-- Alter gameobject_loot_template
ALTER TABLE `gameobject_loot_template` DROP PRIMARY KEY;
ALTER TABLE `gameobject_loot_template` CHANGE `entry` `Entry` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `gameobject_loot_template` CHANGE `item` `Item` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `gameobject_loot_template` ADD COLUMN `Reference` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0 AFTER `Item`;
UPDATE `gameobject_loot_template` SET `Reference` = `mincountOrRef` * -1 WHERE `mincountOrRef` < 0;
UPDATE `gameobject_loot_template` SET  `mincountOrRef` = 1 WHERE `Reference` > 0;
ALTER TABLE `gameobject_loot_template` ADD COLUMN `QuestRequired` BOOL NOT NULL DEFAULT 0 AFTER `ChanceOrQuestChance`;
UPDATE `gameobject_loot_template` SET `QuestRequired` = 1 WHERE `ChanceOrQuestChance` < 0;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = `ChanceOrQuestChance` * -1 WHERE `ChanceOrQuestChance` < 0;
ALTER TABLE `gameobject_loot_template` CHANGE `ChanceOrQuestChance` `Chance` FLOAT NOT NULL DEFAULT 100;
ALTER TABLE `gameobject_loot_template` CHANGE `lootmode` `LootMode` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `gameobject_loot_template` CHANGE `groupid` `GroupId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `gameobject_loot_template` CHANGE `mincountOrRef` `MinCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `gameobject_loot_template` CHANGE `maxcount` `MaxCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `gameobject_loot_template` ADD COLUMN `Comment` VARCHAR(255) AFTER `MaxCount`;
ALTER TABLE `gameobject_loot_template` ADD PRIMARY KEY (`Entry`,`Item`);

-- Alter item_loot_template
ALTER TABLE `item_loot_template` DROP PRIMARY KEY;
ALTER TABLE `item_loot_template` CHANGE `entry` `Entry` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_loot_template` CHANGE `item` `Item` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_loot_template` ADD COLUMN `Reference` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0 AFTER `Item`;
UPDATE `item_loot_template` SET `Reference` = `mincountOrRef` * -1 WHERE `mincountOrRef` < 0;
UPDATE `item_loot_template` SET  `mincountOrRef` = 1 WHERE `Reference` > 0;
ALTER TABLE `item_loot_template` ADD COLUMN `QuestRequired` BOOL NOT NULL DEFAULT 0 AFTER `ChanceOrQuestChance`;
UPDATE `item_loot_template` SET `QuestRequired` = 1 WHERE `ChanceOrQuestChance` < 0;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = `ChanceOrQuestChance` * -1 WHERE `ChanceOrQuestChance` < 0;
ALTER TABLE `item_loot_template` CHANGE `ChanceOrQuestChance` `Chance` FLOAT NOT NULL DEFAULT 100;
ALTER TABLE `item_loot_template` CHANGE `lootmode` `LootMode` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `item_loot_template` CHANGE `groupid` `GroupId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_loot_template` CHANGE `mincountOrRef` `MinCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `item_loot_template` CHANGE `maxcount` `MaxCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `item_loot_template` ADD COLUMN `Comment` VARCHAR(255) AFTER `MaxCount`;
ALTER TABLE `item_loot_template` ADD PRIMARY KEY (`Entry`,`Item`);

-- Alter mail_loot_template
ALTER TABLE `mail_loot_template` DROP PRIMARY KEY;
ALTER TABLE `mail_loot_template` CHANGE `entry` `Entry` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `mail_loot_template` CHANGE `item` `Item` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `mail_loot_template` ADD COLUMN `Reference` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0 AFTER `Item`;
UPDATE `mail_loot_template` SET `Reference` = `mincountOrRef` * -1 WHERE `mincountOrRef` < 0;
UPDATE `mail_loot_template` SET  `mincountOrRef` = 1 WHERE `Reference` > 0;
ALTER TABLE `mail_loot_template` ADD COLUMN `QuestRequired` BOOL NOT NULL DEFAULT 0 AFTER `ChanceOrQuestChance`;
UPDATE `mail_loot_template` SET `QuestRequired` = 1 WHERE `ChanceOrQuestChance` < 0;
UPDATE `mail_loot_template` SET `ChanceOrQuestChance` = `ChanceOrQuestChance` * -1 WHERE `ChanceOrQuestChance` < 0;
ALTER TABLE `mail_loot_template` CHANGE `ChanceOrQuestChance` `Chance` FLOAT NOT NULL DEFAULT 100;
ALTER TABLE `mail_loot_template` CHANGE `lootmode` `LootMode` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `mail_loot_template` CHANGE `groupid` `GroupId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `mail_loot_template` CHANGE `mincountOrRef` `MinCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `mail_loot_template` CHANGE `maxcount` `MaxCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `mail_loot_template` ADD COLUMN `Comment` VARCHAR(255) AFTER `MaxCount`;
ALTER TABLE `mail_loot_template` ADD PRIMARY KEY (`Entry`,`Item`);

-- Alter milling_loot_template
ALTER TABLE `milling_loot_template` DROP PRIMARY KEY;
ALTER TABLE `milling_loot_template` CHANGE `entry` `Entry` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `milling_loot_template` CHANGE `item` `Item` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `milling_loot_template` ADD COLUMN `Reference` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0 AFTER `Item`;
UPDATE `milling_loot_template` SET `Reference` = `mincountOrRef` * -1 WHERE `mincountOrRef` < 0;
UPDATE `milling_loot_template` SET  `mincountOrRef` = 1 WHERE `Reference` > 0;
ALTER TABLE `milling_loot_template` ADD COLUMN `QuestRequired` BOOL NOT NULL DEFAULT 0 AFTER `ChanceOrQuestChance`;
UPDATE `milling_loot_template` SET `QuestRequired` = 1 WHERE `ChanceOrQuestChance` < 0;
UPDATE `milling_loot_template` SET `ChanceOrQuestChance` = `ChanceOrQuestChance` * -1 WHERE `ChanceOrQuestChance` < 0;
ALTER TABLE `milling_loot_template` CHANGE `ChanceOrQuestChance` `Chance` FLOAT NOT NULL DEFAULT 100;
ALTER TABLE `milling_loot_template` CHANGE `lootmode` `LootMode` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `milling_loot_template` CHANGE `groupid` `GroupId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `milling_loot_template` CHANGE `mincountOrRef` `MinCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `milling_loot_template` CHANGE `maxcount` `MaxCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `milling_loot_template` ADD COLUMN `Comment` VARCHAR(255) AFTER `MaxCount`;
ALTER TABLE `milling_loot_template` ADD PRIMARY KEY (`Entry`,`Item`);

-- Alter pickpocketing_loot_template
ALTER TABLE `pickpocketing_loot_template` DROP PRIMARY KEY;
ALTER TABLE `pickpocketing_loot_template` CHANGE `entry` `Entry` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `pickpocketing_loot_template` CHANGE `item` `Item` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `pickpocketing_loot_template` ADD COLUMN `Reference` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0 AFTER `Item`;
UPDATE `pickpocketing_loot_template` SET `Reference` = `mincountOrRef` * -1 WHERE `mincountOrRef` < 0;
UPDATE `pickpocketing_loot_template` SET  `mincountOrRef` = 1 WHERE `Reference` > 0;
ALTER TABLE `pickpocketing_loot_template` ADD COLUMN `QuestRequired` BOOL NOT NULL DEFAULT 0 AFTER `ChanceOrQuestChance`;
UPDATE `pickpocketing_loot_template` SET `QuestRequired` = 1 WHERE `ChanceOrQuestChance` < 0;
UPDATE `pickpocketing_loot_template` SET `ChanceOrQuestChance` = `ChanceOrQuestChance` * -1 WHERE `ChanceOrQuestChance` < 0;
ALTER TABLE `pickpocketing_loot_template` CHANGE `ChanceOrQuestChance` `Chance` FLOAT NOT NULL DEFAULT 100;
ALTER TABLE `pickpocketing_loot_template` CHANGE `lootmode` `LootMode` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `pickpocketing_loot_template` CHANGE `groupid` `GroupId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `pickpocketing_loot_template` CHANGE `mincountOrRef` `MinCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `pickpocketing_loot_template` CHANGE `maxcount` `MaxCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `pickpocketing_loot_template` ADD COLUMN `Comment` VARCHAR(255) AFTER `MaxCount`;
ALTER TABLE `pickpocketing_loot_template` ADD PRIMARY KEY (`Entry`,`Item`);

-- Alter prospecting_loot_template
ALTER TABLE `prospecting_loot_template` DROP PRIMARY KEY;
ALTER TABLE `prospecting_loot_template` CHANGE `entry` `Entry` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `prospecting_loot_template` CHANGE `item` `Item` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `prospecting_loot_template` ADD COLUMN `Reference` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0 AFTER `Item`;
UPDATE `prospecting_loot_template` SET `Reference` = `mincountOrRef` * -1 WHERE `mincountOrRef` < 0;
UPDATE `prospecting_loot_template` SET  `mincountOrRef` = 1 WHERE `Reference` > 0;
ALTER TABLE `prospecting_loot_template` ADD COLUMN `QuestRequired` BOOL NOT NULL DEFAULT 0 AFTER `ChanceOrQuestChance`;
UPDATE `prospecting_loot_template` SET `QuestRequired` = 1 WHERE `ChanceOrQuestChance` < 0;
UPDATE `prospecting_loot_template` SET `ChanceOrQuestChance` = `ChanceOrQuestChance` * -1 WHERE `ChanceOrQuestChance` < 0;
ALTER TABLE `prospecting_loot_template` CHANGE `ChanceOrQuestChance` `Chance` FLOAT NOT NULL DEFAULT 100;
ALTER TABLE `prospecting_loot_template` CHANGE `lootmode` `LootMode` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `prospecting_loot_template` CHANGE `groupid` `GroupId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `prospecting_loot_template` CHANGE `mincountOrRef` `MinCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `prospecting_loot_template` CHANGE `maxcount` `MaxCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `prospecting_loot_template` ADD COLUMN `Comment` VARCHAR(255) AFTER `MaxCount`;
ALTER TABLE `prospecting_loot_template` ADD PRIMARY KEY (`Entry`,`Item`);

-- Alter reference_loot_template
ALTER TABLE `reference_loot_template` DROP PRIMARY KEY;
ALTER TABLE `reference_loot_template` CHANGE `entry` `Entry` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `reference_loot_template` CHANGE `item` `Item` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `reference_loot_template` ADD COLUMN `Reference` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0 AFTER `Item`;
UPDATE `reference_loot_template` SET `Reference` = `mincountOrRef` * -1 WHERE `mincountOrRef` < 0;
UPDATE `reference_loot_template` SET  `mincountOrRef` = 1 WHERE `Reference` > 0;
ALTER TABLE `reference_loot_template` ADD COLUMN `QuestRequired` BOOL NOT NULL DEFAULT 0 AFTER `ChanceOrQuestChance`;
UPDATE `reference_loot_template` SET `QuestRequired` = 1 WHERE `ChanceOrQuestChance` < 0;
UPDATE `reference_loot_template` SET `ChanceOrQuestChance` = `ChanceOrQuestChance` * -1 WHERE `ChanceOrQuestChance` < 0;
ALTER TABLE `reference_loot_template` CHANGE `ChanceOrQuestChance` `Chance` FLOAT NOT NULL DEFAULT 100;
ALTER TABLE `reference_loot_template` CHANGE `lootmode` `LootMode` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `reference_loot_template` CHANGE `groupid` `GroupId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `reference_loot_template` CHANGE `mincountOrRef` `MinCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `reference_loot_template` CHANGE `maxcount` `MaxCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `reference_loot_template` ADD COLUMN `Comment` VARCHAR(255) AFTER `MaxCount`;
ALTER TABLE `reference_loot_template` ADD PRIMARY KEY (`Entry`,`Item`);

-- Alter skinning_loot_template
ALTER TABLE `skinning_loot_template` DROP PRIMARY KEY;
ALTER TABLE `skinning_loot_template` CHANGE `entry` `Entry` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `skinning_loot_template` CHANGE `item` `Item` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `skinning_loot_template` ADD COLUMN `Reference` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0 AFTER `Item`;
UPDATE `skinning_loot_template` SET `Reference` = `mincountOrRef` * -1 WHERE `mincountOrRef` < 0;
UPDATE `skinning_loot_template` SET  `mincountOrRef` = 1 WHERE `Reference` > 0;
ALTER TABLE `skinning_loot_template` ADD COLUMN `QuestRequired` BOOL NOT NULL DEFAULT 0 AFTER `ChanceOrQuestChance`;
UPDATE `skinning_loot_template` SET `QuestRequired` = 1 WHERE `ChanceOrQuestChance` < 0;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = `ChanceOrQuestChance` * -1 WHERE `ChanceOrQuestChance` < 0;
ALTER TABLE `skinning_loot_template` CHANGE `ChanceOrQuestChance` `Chance` FLOAT NOT NULL DEFAULT 100;
ALTER TABLE `skinning_loot_template` CHANGE `lootmode` `LootMode` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `skinning_loot_template` CHANGE `groupid` `GroupId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `skinning_loot_template` CHANGE `mincountOrRef` `MinCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `skinning_loot_template` CHANGE `maxcount` `MaxCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `skinning_loot_template` ADD COLUMN `Comment` VARCHAR(255) AFTER `MaxCount`;
ALTER TABLE `skinning_loot_template` ADD PRIMARY KEY (`Entry`,`Item`);

-- Alter spell_loot_template
ALTER TABLE `spell_loot_template` DROP PRIMARY KEY;
ALTER TABLE `spell_loot_template` CHANGE `entry` `Entry` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `spell_loot_template` CHANGE `item` `Item` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0;
UPDATE `spell_loot_template` SET `Reference` = `mincountOrRef` * -1 WHERE `mincountOrRef` < 0;
UPDATE `spell_loot_template` SET  `mincountOrRef` = 1 WHERE `Reference` > 0;
ALTER TABLE `spell_loot_template` ADD COLUMN `QuestRequired` BOOL NOT NULL DEFAULT 0 AFTER `ChanceOrQuestChance`;
UPDATE `spell_loot_template` SET `QuestRequired` = 1 WHERE `ChanceOrQuestChance` < 0;
UPDATE `spell_loot_template` SET `ChanceOrQuestChance` = `ChanceOrQuestChance` * -1 WHERE `ChanceOrQuestChance` < 0;
ALTER TABLE `spell_loot_template` CHANGE `ChanceOrQuestChance` `Chance` FLOAT NOT NULL DEFAULT 100;
ALTER TABLE `spell_loot_template` CHANGE `lootmode` `LootMode` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `spell_loot_template` CHANGE `groupid` `GroupId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `spell_loot_template` CHANGE `mincountOrRef` `MinCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `spell_loot_template` CHANGE `maxcount` `MaxCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `spell_loot_template` ADD COLUMN `Comment` VARCHAR(255) AFTER `MaxCount`;
ALTER TABLE `spell_loot_template` ADD PRIMARY KEY (`Entry`,`Item`);

# spell_dbc and spelldifficulty_dbc updates
UPDATE `spell_dbc` SET `Effect1`=28,`EffectMiscValueB1`=64 WHERE `Id`IN(29396,29397);
DELETE FROM `spell_dbc` WHERE `Id` = 100001;
UPDATE `spell_dbc` SET `AttributesEx3` = 128 WHERE `Id` = 65142;
DELETE FROM `spelldifficulty_dbc` WHERE `id` = 65722;
INSERT INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`, `spellid2`, `spellid3`) VALUES
(65722, 65722, 65723, 0, 0);
UPDATE `spell_dbc` SET `Effect1` = 3, `EffectImplicitTargetA1` = 22, `EffectImplicitTargetB1` = 7, `EffectRadiusIndex1` = 28 WHERE `Id` = 65296;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 49576;
DELETE FROM `spell_script_names` WHERE `spell_id`=49576;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(49576, 'spell_dk_death_grip_initial');

DELETE FROM `spell_proc_event` WHERE `entry` IN (71174,71198);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(71174, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0),
(71198, 4, 11, 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM `spell_script_names` WHERE `spell_id`=39142;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(39142, 'spell_archimonde_drain_world_tree_dummy');
INSERT INTO `spell_bonus_data` (`entry`, `comments`) VALUES
(14792, 'Venomhide Poison - should not get bonuses');
#Misc Updates
SET @CGUID := 6747;
DELETE FROM `creature` WHERE `guid`=@CGUID;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID, 22418, 534, 1, 1, 5502.288, -3525.471, 1607.909, 2.617994, 7200, 0, 0);

DELETE FROM `creature_text` WHERE `entry`=17968 AND `groupid`=8;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(17968, 8, 0, 'All of your efforts have been in vain, for the draining of the World Tree has already begun!  Soon the heart of your world will beat no more!', 14, 0, 100, 0, 0, 10986, 20432, 3, 'Archimonde - Intro');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (39140,39141,39142);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13,1,39140,0,0,31,0,3,22418,0,0,0, '', 'Drain World Tree Visual'),
(13,1,39141,0,0,31,0,3,17968,0,0,0, '', 'Drain World Tree Visual 2'),
(13,1,39142,0,0,31,0,3,22418,0,0,0, '', 'Drain World Tree Dummy');

DELETE FROM `spell_area` WHERE `spell`=58932;
DELETE FROM `spell_area` WHERE `spell`=60778;

INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`,`racemask`, `autocast`, `gender`, `quest_start_status`, `quest_end_status`) VALUES(58932, 4171, 12499, 0,1101, 1,2,64,11),
(58932, 4171, 12499, 0,0, 1,2,64,11),
(58932, 4172, 12499, 0,0, 1,2,64,11),
(58932, 4171, 12500, 0,0, 1,2,64,11),
(58932, 4172, 12500, 0,0, 1,2,64,11),
(60778, 4171, 12499, 0,0, 1,2,64,11),
(60778, 4172, 12499, 0,0, 1,2,64,11),
(60778, 4171, 12500, 0,0, 1,2,64,11),
(60778, 4172, 12500, 0,0, 1,2,64,11);

DELETE FROM `creature_text` WHERE `entry` IN(31333,31334);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextID`, `comment`) VALUES
(31333, 0, 0, 'No, my beloved.', 12, 0, 100, 1, 0, 0, 32040, 'Alexstrasza the Life-Binder to Player'),
(31333, 1, 0, 'They must not discover the fate of the young paladin. Not yet.', 12, 11, 100, 5, 0, 0, 32041, 'Alexstrasza the Life-Binder to Player'),
(31333, 2, 0, 'Come to me, $n.', 15, 0, 100, 0, 0, 0, 32048, 'Alexstrasza the Life-Binder to Player'),
(31334, 0, 0, 'My Queen, do they know?', 12, 0, 100, 6, 0, 0, 32038, 'Korialstrasz to Player'),
(31334, 1, 0, '%s nods.', 16, 0, 100, 0, 0, 0, 32046, 'Korialstrasz to Player'),
(31334, 2, 0, 'They will not.', 12, 0, 100, 1, 0, 0, 32047, 'Korialstrasz to Player');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=10179;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=31333;

INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 10179, 0, 0, 0, 8, 0, 12499, 0, 0, 0, 0, 0, '', 'Alexstrasza the Life-Binder - Show Gossip if player is rewarded for Return To Angrathar'),
(15, 10179, 0, 0, 1, 8, 0, 12500, 0, 0, 0, 0, 0, '', 'Alexstrasza the Life-Binder - Show Gossip if player is rewarded for Return To Angrathar'),
(22, 3, 31333, 0, 0, 8, 0, 12499, 0, 0, 0, 0, 0, '', 'Alexstrasza the Life-Binder - Run AI only if player is rewarded for Return To Angrathar'),
(22, 3, 31333, 0, 1, 8, 0, 12500, 0, 0, 0, 0, 0, '', 'Alexstrasza the Life-Binder - Run AI only if player is rewarded for Return To Angrathar');

UPDATE `creature_template` SET `ainame`='SmartAI', `scriptname`='', `npcflag`=3 WHERE `entry`=31333;

DELETE FROM `smart_scripts` WHERE `entryorguid`=31333  AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=3133300  AND `source_type`=9;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(31333,0,0,1,62,0,100,0,10179,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Alexstrasza the Life-Binder - On Gossip Option select - Close Gossip'),
(31333,0,1,0,61,0,100,0,0,0,0,0,68,14,0,0,0,0,0,7,0,0,0,0,0,0,0,'Alexstrasza the Life-Binder - On Gossip Option select - Play Movie'),
(31333,0,2,3,10,0,100,0,1,40,120000,120000,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,'Alexstrasza the Life-Binder - OOC Los - Store Targetlist'),
(31333,0,3,0,61,0,100,0,0,0,0,0,80,3133300,2,0,0,0,0,1,0,0,0,0,0,0,0,'Alexstrasza the Life-Binder - OOC Los - Run Script'),
(3133300,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,19,31334,0,0,0,0,0,0,'Alexstrasza the Life-Binder - Script - Say Line 0 (Korialstrasz)'),
(3133300,9,1,0,0,0,100,0,6000,6000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Alexstrasza the Life-Binder - Script - Say Line 0 (Alexstrasza the Life-Binder)'),
(3133300,9,2,0,0,0,100,0,3000,3000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Alexstrasza the Life-Binder - Script - Say Line 1 (Alexstrasza the Life-Binder)'),
(3133300,9,3,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,19,31334,0,0,0,0,0,0,'Alexstrasza the Life-Binder - Script - Say Line 1 (Korialstrasz)'),
(3133300,9,4,0,0,0,100,0,3000,3000,0,0,1,2,0,0,0,0,0,19,31334,0,0,0,0,0,0,'Alexstrasza the Life-Binder - Script - Say Line 2 (Korialstrasz)'),
(3133300,9,5,0,0,0,100,0,4000,4000,0,0,1,2,0,0,0,0,0,12,1,0,0,0,0,0,0,'Alexstrasza the Life-Binder - Script - Say Line 2 (Alexstrasza the Life-Binder)');

DELETE FROM `creature_template_addon` WHERE `entry` IN (31328, 31330, 26850, 31293, 31333, 28348, 31334, 31292, 31295, 31291, 31308, 31294, 31298, 31285, 31309, 31296, 31358, 31297, 31299, 31313, 31310, 26877);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(31328, 0, 0x0, 0x1, ''), -- 31328
(31330, 0, 0x0, 0x1, ''), -- 31330
(26850, 0, 0x0, 0x101, ''), -- 26850
(31293, 0, 0x10007, 0x1, '29266'), -- 31293 - 29266
(31333, 0, 0x3000001, 0x1, '60778'), -- 31333 - 60778
(28348, 0, 0x10000, 0x1, ''), -- 28348
(31334, 0, 0x3000001, 0x1, ''), -- 31334
(31292, 0, 0x10007, 0x1, '29266'), -- 31292 - 29266
(31295, 0, 0x10007, 0x1, '29266'), -- 31295 - 29266
(31291, 0, 0x10000, 0x1, ''), -- 31291
(31308, 0, 0x10007, 0x1, '29266'), -- 31308 - 29266
(31294, 0, 0x10007, 0x1, '29266'), -- 31294 - 29266
(31298, 0, 0x10007, 0x1, '29266'), -- 31298 - 29266
(31285, 0, 0x10007, 0x1, '29266'), -- 31285 - 29266
(31309, 0, 0x10007, 0x1, '29266'), -- 31309 - 29266
(31296, 0, 0x10007, 0x1, '29266'), -- 31296 - 29266
(31358, 0, 0x0, 0x1, ''), -- 31358
(31297, 0, 0x10007, 0x1, '29266'), -- 31297 - 29266
(31299, 0, 0x10007, 0x1, '29266'), -- 31299 - 29266
(31313, 0, 0x0, 0x1, ''), -- 31313
(31310, 0, 0x0, 0x1, ''), -- 31310
(26877, 0, 0x0, 0x101, ''); -- 26877

UPDATE `smart_scripts` SET `event_flags`=0 WHERE  `entryorguid` IN(24874,24875,24876,24877) AND `source_type`=0 AND `id`=0 AND `link`=1;
DELETE FROM `disables` WHERE `sourceType`=0 AND `entry`=45323;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES(0, 45323, 64, '', '', 'Ignore LOS for Returning Vrykul Artifact');
UPDATE `creature_template` SET `unit_flags`=768 WHERE  `entry`=24889;
UPDATE `spell_area` SET `quest_start_status`=74 WHERE  `spell`=57745 AND `area`=4591 AND `quest_start`=13068 AND `aura_spell`=0 AND `racemask`=0 AND `gender`=2;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=1 AND `SourceGroup`=24018 AND `SourceEntry` IN(34090,34091);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(1, 24018, 34090, 0, 0, 8, 0, 11236, 0, 0, 0, 0, 0, '', 'Mezhens Writings drops if player is rewarded for Necro Overlord Mezhen'),
(1, 24018, 34091, 0, 0, 8, 0, 11264, 0, 0, 0, 0, 0, '', 'Mezhens Writings drops if player is rewarded for Necro Overlord Mezhen'),
(1, 24018, 34090, 0, 1, 9, 0, 11236, 0, 0, 0, 0, 0, '', 'Mezhens Writings drops if player has taken Necro Overlord Mezhen'),
(1, 24018, 34091, 0, 1, 9, 0, 11264, 0, 0, 0, 0, 0, '', 'Mezhens Writings drops if player has taken Necro Overlord Mezhen'),
(1, 24018, 34090, 0, 2,28, 0, 11236, 0, 0, 0, 0, 0, '', 'Mezhens Writings drops if player has completed Necro Overlord Mezhen'),
(1, 24018, 34091, 0, 2,28, 0, 11264, 0, 0, 0, 0, 0, '', 'Mezhens Writings drops if player has completed Necro Overlord Mezhen');
UPDATE `smart_scripts` SET `action_param4`=1 WHERE  `entryorguid`=21352 AND `source_type`=0 AND `id`=2 AND `link`=0;
UPDATE `smart_scripts` SET `action_param4`=1 WHERE  `entryorguid`=21498 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `action_param4`=1 WHERE  `entryorguid`=21498 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `gameobject_loot_template` SET `maxcount`=4 WHERE  `entry`=1502 AND `item`=2770;
UPDATE `creature_template` SET `npcflag`=1 WHERE `entry`=32239;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`IN(-53017);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(-53017, 48330, 0,'On Indisposed Expiring - Cast Create Amberseeds');
UPDATE `smart_scripts` SET `target_type`=12, `target_param1`=1 WHERE  `entryorguid`=28747 AND `source_type`=0 AND `id`=6 AND `link`=0;UPDATE `smart_scripts` SET `target_type`=12, `target_param1`=1 WHERE  `entryorguid`=28748 AND `source_type`=0 AND `id`=5 AND `link`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=28747 AND `source_type`=0 AND `id`=7;DELETE FROM `smart_scripts` WHERE `entryorguid`=28748 AND `source_type`=0 AND `id`=6;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(28747, 0, 7, 0, 4, 0, 100, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Quetz\'lun Worshipper - On Agro - Store Targetlist'),
(28748, 0, 6, 0, 4, 0, 100, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Serpent-Touched Berserker - On Agro - Store Targetlist');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 26560 AND `spell_effect`=18280;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`)
VALUES (26560, 18280, 0, 'Summon Lord-Commander Arete');
UPDATE `smart_scripts` SET `event_param1`=12 WHERE  `entryorguid`=31279 AND `source_type`=0 AND `id`=18 AND `link`=0;
# creature_template changes
ALTER TABLE `creature_template`
  DROP COLUMN `mindmg`, 
  DROP COLUMN `maxdmg`, 
  DROP COLUMN `attackpower`, 
  DROP COLUMN `minrangedmg`, 
  DROP COLUMN `maxrangedmg`, 
  DROP COLUMN `rangedattackpower`, 
  CHANGE `baseattacktime` `BaseAttackTime` INT(10) UNSIGNED DEFAULT 0  NOT NULL,
  CHANGE `rangeattacktime` `RangeAttackTime` INT(10) UNSIGNED DEFAULT 0  NOT NULL,
  ADD COLUMN `BaseVariance` FLOAT DEFAULT 1  NOT NULL AFTER `RangeAttackTime`,
  ADD COLUMN `RangeVariance` FLOAT DEFAULT 1  NOT NULL AFTER `BaseVariance`,
  CHANGE `Health_mod` `HealthModifier` FLOAT DEFAULT 1  NOT NULL,
  CHANGE `Mana_mod` `ManaModifier` FLOAT DEFAULT 1  NOT NULL,
  CHANGE `Armor_mod` `ArmorModifier` FLOAT DEFAULT 1  NOT NULL,
  CHANGE `dmg_multiplier` `DamageModifier` FLOAT DEFAULT 1  NOT NULL  AFTER `ArmorModifier`,
  ADD COLUMN `ExperienceModifier` FLOAT DEFAULT 1  NOT NULL AFTER `DamageModifier`;