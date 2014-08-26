#waypoint_data column change
ALTER TABLE `waypoint_data` CHANGE `move_flag` `move_type` INT(11) NOT NULL DEFAULT 0;

#creature_template column changes
ALTER TABLE `creature_template`
DROP COLUMN `mindmg`,
DROP COLUMN `maxdmg`,
DROP COLUMN `attackpower`,
DROP COLUMN `minrangedmg`,
DROP COLUMN `maxrangedmg`,
DROP COLUMN `rangedattackpower`,
CHANGE `baseattacktime` `BaseAttackTime` INT(10) UNSIGNED DEFAULT 0 NOT NULL,
CHANGE `rangeattacktime` `RangeAttackTime` INT(10) UNSIGNED DEFAULT 0 NOT NULL,
ADD COLUMN `BaseVariance` FLOAT DEFAULT 1 NOT NULL AFTER `RangeAttackTime`,
ADD COLUMN `RangeVariance` FLOAT DEFAULT 1 NOT NULL AFTER `BaseVariance`,
CHANGE `Health_mod` `HealthModifier` FLOAT DEFAULT 1 NOT NULL,
CHANGE `Mana_mod` `ManaModifier` FLOAT DEFAULT 1 NOT NULL,
CHANGE `Armor_mod` `ArmorModifier` FLOAT DEFAULT 1 NOT NULL,
CHANGE `dmg_multiplier` `DamageModifier` FLOAT DEFAULT 1 NOT NULL AFTER `ArmorModifier`,
ADD COLUMN `ExperienceModifier` FLOAT DEFAULT 1 NOT NULL AFTER `DamageModifier`;