ALTER TABLE `gameobject_addon` MODIFY `guid` int(10) unsigned NOT NULL DEFAULT '0';

-- creating `quest_template_addon` table
DROP TABLE IF EXISTS        `quest_template_addon`;
CREATE TABLE IF NOT EXISTS  `quest_template_addon` (                  -- old names:
  `ID`                    mediumint(8) unsigned NOT NULL DEFAULT '0', -- ID
  `MaxLevel`              tinyint(3) unsigned NOT NULL DEFAULT '0',   -- MaxLevel
  `AllowableClasses`      int(10) unsigned NOT NULL DEFAULT '0',      -- RequiredClasses
  `SourceSpellID`         mediumint(8) unsigned NOT NULL DEFAULT '0', -- SourceSpellId
  `PrevQuestID`           mediumint(8) NOT NULL DEFAULT '0',          -- PrevQuestId
  `NextQuestID`           mediumint(8) NOT NULL DEFAULT '0',          -- NextQuestId
  `ExclusiveGroup`        mediumint(8) NOT NULL DEFAULT '0',          -- ExclusiveGroup
  `RewardMailTemplateID`  mediumint(8) unsigned NOT NULL DEFAULT '0', -- RewardMailTemplateId
  `RewardMailDelay`       int(10) unsigned NOT NULL DEFAULT '0',      -- RewardMailDelay
  `RequiredSkillID`       smallint(5) unsigned NOT NULL DEFAULT '0',  -- RequiredSkillId
  `RequiredSkillPoints`   smallint(5) unsigned NOT NULL DEFAULT '0',  -- RequiredSkillPoints
  `RequiredMinRepFaction` smallint(5) unsigned NOT NULL DEFAULT '0',  -- RequiredMinRepFaction
  `RequiredMaxRepFaction` smallint(5) unsigned NOT NULL DEFAULT '0',  -- RequiredMaxRepFaction
  `RequiredMinRepValue`   mediumint(8) NOT NULL DEFAULT '0',          -- RequiredMinRepValue
  `RequiredMaxRepValue`   mediumint(8) NOT NULL DEFAULT '0',          -- RequiredMaxRepValue
  `ProvidedItemCount`     tinyint(3) unsigned NOT NULL DEFAULT '0',   -- SourceItemCount
  `SpecialFlags`          tinyint(3) unsigned NOT NULL DEFAULT '0',   -- SpecialFlags
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- moving data from `quest_template` to `quest_template_addon`
INSERT INTO `quest_template_addon`
(`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`)
(SELECT `ID`, `MaxLevel`, `RequiredClasses`, `SourceSpellId`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `RewardMailTemplateId`, `RewardMailDelay`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `SourceItemCount`, `SpecialFlags` FROM `quest_template`);


-- drop `quest_template` fields
ALTER TABLE `quest_template`
DROP `MaxLevel`,
DROP `RequiredClasses`,
DROP `SourceSpellId`,
DROP `PrevQuestId`,
DROP `NextQuestId`,
DROP `ExclusiveGroup`,
DROP `RewardMailTemplateId`,
DROP `RewardMailDelay`,
DROP `RequiredSkillId`,
DROP `RequiredSkillPoints`,
DROP `RequiredMinRepFaction`,
DROP `RequiredMaxRepFaction`,
DROP `RequiredMinRepValue`,
DROP `RequiredMaxRepValue`,
DROP `SourceItemCount`,
DROP `SpecialFlags`;

DROP TABLE IF EXISTS `creature_questitem`;
CREATE TABLE `creature_questitem` (
  `CreatureEntry` int(10) unsigned NOT NULL DEFAULT '0',
  `Idx` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemId` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`CreatureEntry`,`Idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `gameobject_questitem`;
CREATE TABLE `gameobject_questitem` (
  `GameObjectEntry` int(10) unsigned NOT NULL DEFAULT '0',
  `Idx` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemId` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`GameObjectEntry`,`Idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO gameobject_questitem (`GameObjectEntry`, `Idx`, `ItemId`)
(SELECT gameobject_template.entry, 0, gameobject_template.questItem1 FROM gameobject_template WHERE gameobject_template.questItem1 != 0);
INSERT INTO gameobject_questitem (`GameObjectEntry`, `Idx`, `ItemId`)
(SELECT gameobject_template.entry, 1, gameobject_template.questItem2 FROM gameobject_template WHERE gameobject_template.questItem2 != 0);
INSERT INTO gameobject_questitem (`GameObjectEntry`, `Idx`, `ItemId`)
(SELECT gameobject_template.entry, 2, gameobject_template.questItem3 FROM gameobject_template WHERE gameobject_template.questItem3 != 0);
INSERT INTO gameobject_questitem (`GameObjectEntry`, `Idx`, `ItemId`)
(SELECT gameobject_template.entry, 3, gameobject_template.questItem4 FROM gameobject_template WHERE gameobject_template.questItem4 != 0);
INSERT INTO gameobject_questitem (`GameObjectEntry`, `Idx`, `ItemId`)
(SELECT gameobject_template.entry, 4, gameobject_template.questItem5 FROM gameobject_template WHERE gameobject_template.questItem5 != 0);
INSERT INTO gameobject_questitem (`GameObjectEntry`, `Idx`, `ItemId`)
(SELECT gameobject_template.entry, 5, gameobject_template.questItem6 FROM gameobject_template WHERE gameobject_template.questItem6 != 0);

INSERT INTO creature_questitem (`CreatureEntry`, `Idx`, `ItemId`)
(SELECT creature_template.entry, 0, creature_template.questItem1 FROM creature_template WHERE creature_template.questItem1 != 0);
INSERT INTO creature_questitem (`CreatureEntry`, `Idx`, `ItemId`)
(SELECT creature_template.entry, 1, creature_template.questItem2 FROM creature_template WHERE creature_template.questItem2 != 0);
INSERT INTO creature_questitem (`CreatureEntry`, `Idx`, `ItemId`)
(SELECT creature_template.entry, 2, creature_template.questItem3 FROM creature_template WHERE creature_template.questItem3 != 0);
INSERT INTO creature_questitem (`CreatureEntry`, `Idx`, `ItemId`)
(SELECT creature_template.entry, 3, creature_template.questItem4 FROM creature_template WHERE creature_template.questItem4 != 0);
INSERT INTO creature_questitem (`CreatureEntry`, `Idx`, `ItemId`)
(SELECT creature_template.entry, 4, creature_template.questItem5 FROM creature_template WHERE creature_template.questItem5 != 0);
INSERT INTO creature_questitem (`CreatureEntry`, `Idx`, `ItemId`)
(SELECT creature_template.entry, 5, creature_template.questItem6 FROM creature_template WHERE creature_template.questItem6 != 0);

ALTER TABLE `creature_template` DROP `questItem1`, DROP `questItem2`, DROP `questItem3`, DROP `questItem4`, DROP `questItem5`, DROP `questItem6`;
ALTER TABLE `gameobject_template` DROP `questItem1`, DROP `questItem2`, DROP `questItem3`, DROP `questItem4`, DROP `questItem5`, DROP `questItem6`;

-- areatrigger_teleport
ALTER TABLE `areatrigger_teleport`
CHANGE `id` `ID` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `name` `Name` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;

-- battleground_template
ALTER TABLE `battleground_template`
CHANGE `id` `ID` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0';

-- creature_equip_template
ALTER TABLE `creature_equip_template`
CHANGE `entry` `CreatureID` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `id` `ID` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
CHANGE `itemEntry1` `ItemID1` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `itemEntry2` `ItemID2` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `itemEntry3` `ItemID3` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0';

-- creature_formations
ALTER TABLE `creature_formations`
CHANGE `leaderGUID` `leaderGUID` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `memberGUID` `memberGUID` INT(10) UNSIGNED NOT NULL DEFAULT '0';

-- creature_model_info
ALTER TABLE `creature_model_info`
CHANGE `modelid` `DisplayID` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `bounding_radius` `BoundingRadius` FLOAT NOT NULL DEFAULT '0',
CHANGE `combat_reach` `CombatReach` FLOAT NOT NULL DEFAULT '0',
CHANGE `gender` `Gender` TINYINT(3) UNSIGNED NOT NULL DEFAULT '2',
CHANGE `modelid_other_gender` `DisplayID_Other_Gender` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0';

-- gameobject_template
ALTER TABLE `gameobject_template`
CHANGE `data0`  `Data0`  INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data1`  `Data1`  INT(11) NOT NULL DEFAULT '0',
CHANGE `data2`  `Data2`  INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data3`  `Data3`  INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data4`  `Data4`  INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data5`  `Data5`  INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data6`  `Data6`  INT(11) NOT NULL DEFAULT '0',
CHANGE `data7`  `Data7`  INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data8`  `Data8`  INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data9`  `Data9`  INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data10` `Data10` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data11` `Data11` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data12` `Data12` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data13` `Data13` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data14` `Data14` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data15` `Data15` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data16` `Data16` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data17` `Data17` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data18` `Data18` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data19` `Data19` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data20` `Data20` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data21` `Data21` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data22` `Data22` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data23` `Data23` INT(10) UNSIGNED NOT NULL DEFAULT '0';

-- lfg_entrances -> lfg_dungeon_template
RENAME TABLE `lfg_entrances` TO `lfg_dungeon_template`;

-- npc_text
ALTER TABLE `npc_text`
CHANGE `prob0` `Probability0` FLOAT NOT NULL DEFAULT '0',
CHANGE `prob1` `Probability1` FLOAT NOT NULL DEFAULT '0',
CHANGE `prob2` `Probability2` FLOAT NOT NULL DEFAULT '0',
CHANGE `prob3` `Probability3` FLOAT NOT NULL DEFAULT '0',
CHANGE `prob4` `Probability4` FLOAT NOT NULL DEFAULT '0',
CHANGE `prob5` `Probability5` FLOAT NOT NULL DEFAULT '0',
CHANGE `prob6` `Probability6` FLOAT NOT NULL DEFAULT '0',
CHANGE `prob7` `Probability7` FLOAT NOT NULL DEFAULT '0';

-- npc_trainer
ALTER TABLE `npc_trainer`
CHANGE `entry` `ID` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `spell` `SpellID` MEDIUMINT(8) NOT NULL DEFAULT '0',
CHANGE `spellcost` `MoneyCost` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `reqskill` `ReqSkillLine` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `reqskillvalue` `ReqSkillRank` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `reqlevel` `ReqLevel` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0';

-- page_text
ALTER TABLE `page_text`
CHANGE `entry` `ID` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `text` `Text` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
CHANGE `next_page` `NextPageID` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `VerifiedBuild` `VerifiedBuild` SMALLINT(5) NULL DEFAULT '0';

-- player_xp_for_level
ALTER TABLE `player_xp_for_level`
CHANGE `lvl` `Level` TINYINT(3) UNSIGNED NOT NULL,
CHANGE `xp_for_next_level` `Experience` INT(10) UNSIGNED NOT NULL;

-- points_of_interest
ALTER TABLE `points_of_interest`
CHANGE `entry` `ID` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `x` `PositionX` FLOAT NOT NULL DEFAULT '0',
CHANGE `y` `PositionY` FLOAT NOT NULL DEFAULT '0',
CHANGE `icon` `Icon` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `flags` `Flags` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data` `Data` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `icon_name` `Name` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;

-- quest_poi
ALTER TABLE `quest_poi`
CHANGE `questId` `QuestID` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `objIndex` `ObjectiveIndex` INT(11) NOT NULL DEFAULT '0',
CHANGE `mapid` `MapID` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `FloorId` `Floor` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `unk3` `Priority` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `unk4` `Flags` INT(10) UNSIGNED NOT NULL DEFAULT '0';

-- quest_poi_points
ALTER TABLE `quest_poi_points`
CHANGE `questId` `QuestID` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `id` `Idx1` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `idx` `Idx2` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `x` `X` INT(11) NOT NULL DEFAULT '0',
CHANGE `y` `Y` INT(11) NOT NULL DEFAULT '0';

-- quest_template
ALTER TABLE `quest_template`
CHANGE `Id` `ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `Level` `QuestLevel` smallint(3) NOT NULL DEFAULT '1',
CHANGE `ZoneOrSort` `QuestSortID` smallint(6) NOT NULL DEFAULT '0',
CHANGE `Type` `QuestType` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `SuggestedPlayers` `SuggestedGroupNum` tinyint(3) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardTitleId` `RewardTitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardItemId1` `RewardItem1` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardItemId2` `RewardItem2` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardItemId3` `RewardItem3` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardItemId4` `RewardItem4` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardItemCount1` `RewardAmount1` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardItemCount2` `RewardAmount2` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardItemCount3` `RewardAmount3` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardItemCount4` `RewardAmount4` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardChoiceItemId1` `RewardChoiceItemID1` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardChoiceItemId2` `RewardChoiceItemID2` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardChoiceItemId3` `RewardChoiceItemID3` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardChoiceItemId4` `RewardChoiceItemID4` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardChoiceItemId5` `RewardChoiceItemID5` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardChoiceItemId6` `RewardChoiceItemID6` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardChoiceItemCount1` `RewardChoiceItemQuantity1` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardChoiceItemCount2` `RewardChoiceItemQuantity2` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardChoiceItemCount3` `RewardChoiceItemQuantity3` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardChoiceItemCount4` `RewardChoiceItemQuantity4` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardChoiceItemCount5` `RewardChoiceItemQuantity5` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardChoiceItemCount6` `RewardChoiceItemQuantity6` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardFactionId1` `RewardFactionID1` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
CHANGE `RewardFactionId2` `RewardFactionID2` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
CHANGE `RewardFactionId3` `RewardFactionID3` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
CHANGE `RewardFactionId4` `RewardFactionID4` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
CHANGE `RewardFactionId5` `RewardFactionID5` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
CHANGE `RewardFactionValueId1` `RewardFactionValue1` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `RewardFactionValueId2` `RewardFactionValue2` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `RewardFactionValueId3` `RewardFactionValue3` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `RewardFactionValueId4` `RewardFactionValue4` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `RewardFactionValueId5` `RewardFactionValue5` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `RewardFactionValueIdOverride1` `RewardFactionOverride1` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `RewardFactionValueIdOverride2` `RewardFactionOverride2` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `RewardFactionValueIdOverride3` `RewardFactionOverride3` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `RewardFactionValueIdOverride4` `RewardFactionOverride4` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `RewardFactionValueIdOverride5` `RewardFactionOverride5` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `Title` `LogTitle` text,
CHANGE `Objectives` `LogDescription` text,
CHANGE `Details` `QuestDescription` text,
CHANGE `CompletedText` `QuestCompletionLog` text;

-- spell_target_position
ALTER TABLE `spell_target_position`
CHANGE `id` `ID` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Identifier',
CHANGE `effIndex` `EffectIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `target_map` `MapID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `target_position_x` `PositionX` FLOAT NOT NULL DEFAULT '0',
CHANGE `target_position_y` `PositionY` FLOAT NOT NULL DEFAULT '0',
CHANGE `target_position_z` `PositionZ` FLOAT NOT NULL DEFAULT '0',
CHANGE `target_orientation` `Orientation` FLOAT NOT NULL DEFAULT '0';
