# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 600_FIX_12254 601_FIX_12254 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('601_FIX_12254');

# TC
UPDATE `waypoint_scripts` SET `datalong2`='1' WHERE datalong=70602;

# NeatElves
UPDATE `npc_trainer` SET `reqlevel` = '10' WHERE `spell` =54083;
UPDATE `npc_trainer` SET `reqlevel` = '10' WHERE `spell` =18249;
UPDATE `npc_trainer` SET `reqlevel` = '40' WHERE `spell` =28696;
DELETE FROM `creature` WHERE `id` = 30996;
UPDATE `creature_template` SET `modelid1` = '22712',`modelid2` = '17200' WHERE `entry` =27827;
DELETE FROM `creature` WHERE `guid` = 54463;
DELETE FROM `creature` WHERE `guid` = 54468;
DELETE FROM `waypoint_data` WHERE `id` = 54468;
DELETE FROM `waypoint_data` WHERE `id` = 54463;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(2763, 495, 0, 1, 1, 0, 0, -10551.6, -1181.89, 28.0373, 5.88565, 300, 0, 0, 1753, 0, 0, 0),
(2769, 489, 0, 1, 1, 0, 0, -10517.9, 1035, 60.5174, 4.43679, 300, 0, 0, 1910, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(2606, 887, 0, 1, 1, 0, 0, -10624.6, -1185.56, 28.9689, 0.263761, 300, 0, 0, 2918, 0, 0, 0),
(5494, 848, 0, 1, 1, 0, 0, -9272.57, -2200.73, 64.0831, 4.40372, 300, 0, 0, 102, 0, 0, 0),
(5476, 849, 0, 1, 1, 0, 0, -9254.62, -2182.47, 64.0499, 4.13816, 300, 0, 0, 71, 0, 0, 0),
(5455, 934, 0, 1, 1, 0, 0, -9276.02, -2272.22, 67.3066, 1.98287, 300, 0, 0, 2440, 0, 0, 0),
(5189, 797, 0, 1, 1, 0, 0, -9426.15, 129.829, 59.5506, 3.12876, 180, 0, 0, 42, 0, 0, 0);
DELETE FROM `creature` WHERE `guid` = 53638;
DELETE FROM `waypoint_data` WHERE `id` = 53638;
DELETE FROM `quest_end_scripts` WHERE `id` = 252;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(252, 0, 10, 412, 3600000, 0, -10290.2, 72.7811, 38.8811, 4.8015);
DELETE FROM `creature` WHERE `guid` = 49924;
DELETE FROM `creature` WHERE `guid` = 50254;
UPDATE `creature` SET `modelid` = '0' WHERE `guid` =88636;
UPDATE `pool_creature` SET `guid` = '28982' WHERE `guid` =29982;
DELETE FROM `fishing_loot_template` WHERE `entry` in (1120,1116,1108,1117,1121,357);
INSERT INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(1116, 4603, 20, 1, 1, 1),
(1116, 6355, 0.2, 1, 1, 1),
(1116, 6357, 0.2, 1, 1, 1),
(1116, 6358, 12, 1, 1, 1),
(1116, 6359, 12, 1, 1, 1),
(1116, 6362, 0, 1, 1, 1),
(1117, 4603, 20, 1, 1, 1),
(1117, 6355, 0.2, 1, 1, 1),
(1117, 6357, 0.2, 1, 1, 1),
(1117, 6358, 12, 1, 1, 1),
(1117, 6359, 12, 1, 1, 1),
(1117, 6362, 0, 1, 1, 1),
(1108, 4603, 20, 1, 1, 1),
(1108, 6355, 0.2, 1, 1, 1),
(1108, 6357, 0.2, 1, 1, 1),
(1108, 6358, 12, 1, 1, 1),
(1108, 6359, 12, 1, 1, 1),
(1108, 6362, 0, 1, 1, 1),
(1121, 4603, 20, 1, 1, 1),
(1121, 6355, 0.2, 1, 1, 1),
(1121, 6357, 0.2, 1, 1, 1),
(1121, 6358, 12, 1, 1, 1),
(1121, 6359, 12, 1, 1, 1),
(1121, 6362, 0, 1, 1, 1),
(1120, 4603, 20, 1, 1, 1),
(1120, 6355, 0.2, 1, 1, 1),
(1120, 6357, 0.2, 1, 1, 1),
(1120, 6358, 12, 1, 1, 1),
(1120, 6359, 12, 1, 1, 1),
(1120, 6362, 0, 1, 1, 1);
INSERT INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(357, 1710, 0.5, 1, 1, 1),
(357, 3827, 0.5, 1, 1, 1),
(357, 6308, 40, 1, 1, 1),
(357, 6309, 0.1, 1, 1, 1),
(357, 6310, 0.1, 1, 1, 1),
(357, 6311, 0.1, 1, 1, 1),
(357, 6363, 0.1, 1, 1, 1),
(357, 6364, 0.01, 1, 1, 1),
(357, 8365, 0, 1, 1, 1),
(357, 8366, 0.2, 1, 1, 1);
UPDATE `creature` SET `modelid` = '0' WHERE `guid` =88636;
DELETE FROM `creature_loot_template` WHERE `item` in (11751,11752,11614,12830);
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =160845 AND `item` =11751;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =160845 AND `item` =11752;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =160845 AND `item` =11753;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '100' WHERE `item` =11197;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` in (173234,173232,176325,176327);
DELETE FROM `creature_loot_template` WHERE `entry` = 16807 AND `item` = 31716;

# KiriX
UPDATE `quest_template` SET `NextQuestId`='2970', `NextQuestInChain`='2970' WHERE `entry`='2969';
UPDATE `quest_template` SET `NextQuestId`='2972', `NextQuestInChain`='2972' WHERE `entry`='2970';
UPDATE `quest_template` SET `PrevQuestId`='2970', `NextQuestId`='3841', `NextQuestInChain`='3841' WHERE `entry`='2972';
UPDATE `quest_template` SET `PrevQuestId`='2972' WHERE `entry`='3841';
UPDATE `quest_template` SET `NextQuestId`='3843', `NextQuestInChain`='3843' WHERE `entry`='3842';
UPDATE `quest_template` SET `PrevQuestId`='3842' WHERE `entry`='3843'; 
UPDATE `quest_template` SET `NextQuestId` = 0 WHERE `entry` = 11574;

# NeatElves
DELETE FROM `creature_loot_template` WHERE `entry` =17301 AND `item` =22451;
DELETE FROM `creature_loot_template` WHERE `entry` =17301 AND `item` =22452;
DELETE FROM `creature_loot_template` WHERE `entry` =17301 AND `item` =21885;
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
('22451', '22451', '0', '1', '1', '3'),
('22451', '22452', '0', '1', '1', '3'),
('22451', '21884', '0', '1', '1', '3'),
('22451', '21885', '0', '1', '1', '3');
DELETE FROM `creature_loot_template` WHERE `entry` = 17301 AND `item` = 31716;
UPDATE `creature_loot_template` SET `item` = '22451',`ChanceOrQuestChance` = '100',`mincountOrRef` = '-22451' WHERE `entry` =17301 AND `item` =21884;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '100',`maxcount` = '8' WHERE `entry` =17301 AND `item` =22829;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '100',`maxcount` = '8' WHERE `entry` =17301 AND `item` =22832;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(20585, 22451, 100, 0, -22451, 1),
(20585, 22829, 100, 0, 1, 8),
(20585, 22832, 100, 0, 1, 8),
(20585, 27498, 22.0701, 0, -27498, 1),
(20585, 31716, -100, 0, 1, 1),
(20585, 33457, 7.4273, 0, -33457, 1);
UPDATE `creature_template` SET `lootid` = '20585' WHERE `entry` =20585;
DELETE FROM `pickpocketing_loot_template` WHERE `item` = 2592;
REPLACE INTO `creature_ai_scripts` VALUES ('2647751', '26477', '11', '0', '100', '0', '0', '0', '0', '0', '3', '0', '6762', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-Dead Mage Hunter Transform');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '26477';
DELETE FROM `creature` WHERE `guid` = 6842;
DELETE FROM `gameobject` WHERE `guid` = 20861;
UPDATE `gameobject` SET `rotation2` = '0',`rotation3` = '1' WHERE `id` IN (176080,176081,176082,176083,176084,176085);
UPDATE `gossip_menu` SET `text_id` = '1060' WHERE `entry` =543 AND `text_id` =68;
UPDATE `gossip_menu` SET `text_id` = '1059' WHERE `entry` =542 AND `text_id` =68;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 10383 AND `id` = 1;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-100' WHERE `entry` =11583 AND `item` =21142;
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(17962, 17962, 0, 1, 1, 1),
(17962, 17963, 0, 1, 1, 1),
(17962, 17964, 0, 1, 1, 1),
(17962, 17965, 0, 1, 1, 1),
(17962, 17969, 0, 1, 1, 1);
DELETE FROM `creature_loot_template` WHERE `item` IN (17963,17964,17965,17969);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '100',`mincountOrRef` = '-17962' WHERE `item` =17962;
UPDATE `spell_bonus_data` SET `direct_bonus`='0.3' WHERE `entry`='50288';
UPDATE `spell_bonus_data` SET `direct_bonus`='0.13' WHERE `entry`='50294';
DELETE FROM `gossip_menu` WHERE `entry` = 50214;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 50214;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 50214;
UPDATE `creature_template` SET `gossip_menu_id` = 7263 WHERE `entry` = 17120;
UPDATE `creature_template` SET `gossip_menu_id` = 7263 WHERE `entry` = 17504;
DELETE FROM `gossip_menu` WHERE `entry` = 50202;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 50202;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 50202;
UPDATE `creature_template` SET `gossip_menu_id` = 7484 WHERE `entry` = 16734;
UPDATE `gossip_menu` SET `entry` = '7484' WHERE `entry` =50172;
UPDATE gossip_menu_option SET menu_id = 7484 WHERE menu_id = 50172;
UPDATE locales_gossip_menu_option SET menu_id = 7484 WHERE `menu_id` =50172;
UPDATE `creature_template` SET `gossip_menu_id` = 4007 WHERE `entry` = 1231;
UPDATE `creature_template` SET `gossip_menu_id` = 4535 WHERE `entry` = 3049;
UPDATE `creature_template` SET `gossip_menu_id` = 4532 WHERE `entry` = 3046;
UPDATE `creature_template` SET `gossip_menu_id` = 4536 WHERE `entry` = 3048;
UPDATE `creature_template` SET `gossip_menu_id` = 7265 WHERE `entry` = 17511;
UPDATE `creature_template` SET `gossip_menu_id` = 7265 WHERE `entry` = 16756;
UPDATE `creature_template` SET `gossip_menu_id` = 7265 WHERE `entry` = 17510;
DELETE FROM `gossip_menu` WHERE `entry` = 50194;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 50194;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 50194;
DELETE FROM `gossip_menu` WHERE `entry` = 4463;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 4463;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 4463;
UPDATE `creature_template` SET `gossip_menu_id` = 4544 WHERE `entry` = 4606;
UPDATE `creature_template` SET `gossip_menu_id` = 4543 WHERE `entry` = 4608;
UPDATE `creature_template` SET `gossip_menu_id` = 4545 WHERE `entry` = 4607;
UPDATE `gossip_menu` SET `entry` = '4543' WHERE `entry` =50185;
UPDATE gossip_menu_option SET menu_id = 4543 WHERE menu_id = 50185;
UPDATE locales_gossip_menu_option SET menu_id = 4543 WHERE `menu_id` =50185;
UPDATE `creature_template` SET `gossip_menu_id` = 63 WHERE `entry` = 23103;
UPDATE `gossip_menu` SET `entry` = '7578' WHERE `entry` =50020 AND `text_id` =9220;
UPDATE `gossip_menu_option` SET `action_menu_id` = '7578' WHERE `menu_id` =7579 AND `id` =1;
UPDATE `creature_template` SET `npcflag` = '3' WHERE `entry` =3401;
DELETE FROM `npc_trainer` WHERE `entry` = 3401;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 50199;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 50199;
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES
(60815, 1519, 13188, 1, 13188, 0, 0, 2, 1),
(74789, 1637, 13189, 1, 13189, 0, 0, 2, 1);
UPDATE `creature` SET `phaseMask` = '129' WHERE `guid` =40123;
UPDATE `creature` SET `phaseMask` = '129' WHERE `guid` =117022;
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35 WHERE `entry` = 14525;

# Conditions
REPLACE INTO `conditions` VALUES ('13', '0', '49590', '0', '18', '1', '27827', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50199', '1124', '0', '8', '2458', '0', '0', '0', '', null);
REPLACE INTO `gossip_menu` VALUES ('4007', '4999');
REPLACE INTO `gossip_menu` VALUES ('4532', '4439');
REPLACE INTO `gossip_menu` VALUES ('4535', '563');
REPLACE INTO `gossip_menu` VALUES ('4536', '563');
REPLACE INTO `gossip_menu` VALUES ('4544', '4439');
REPLACE INTO `gossip_menu` VALUES ('4545', '4439');
REPLACE INTO `gossip_menu` VALUES ('50199', '1124');
REPLACE INTO `gossip_menu_option` VALUES ('4007', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4535', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4532', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4536', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4544', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4545', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=10383;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=10383;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50194;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50194;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50214;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50214;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50202;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50202;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50199;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50199;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=4463;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=4463;
UPDATE conditions SET SourceGroup=4543 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50185;
UPDATE conditions SET SourceGroup=4543 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50185;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=3 AND SourceGroup=1116;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=3 AND SourceGroup=1117;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=3 AND SourceGroup=1120;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=3 AND SourceGroup=1121;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=3 AND SourceGroup=1108;

# UPDATE `gossip_menu_option` SET `option_icon` = '2',`option_id` = '18' WHERE `menu_id` =10371 AND `id` =0;

# FIX
# DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50314;
# DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50314;
# UPDATE conditions SET SourceGroup=9732 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=28666;
# UPDATE conditions SET SourceGroup=9732 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=28666;

# WDB_Check
# UPDATE `npc_text` SET `WDBVerified`=1 WHERE `ID` IN (9516,14330,15608,15609,9842,9704,9708,6520,14451,14452,10955);

# Temp_FIX
update gossip_scripts set datalong2=3 where datalong2=2 AND command=15;
update quest_start_scripts set datalong2=3 where datalong2=2 AND command=15;
update quest_end_scripts set datalong2=3 where datalong2=2 AND command=15;
DELETE FROM conditions WHERE ConditionTypeOrReference=14 AND ConditionValue1=0;
UPDATE conditions SET ConditionValue2=0 WHERE ConditionTypeOrReference=25 AND ConditionValue2=1;
UPDATE conditions SET ConditionValue2=0 WHERE ConditionTypeOrReference=17 AND ConditionValue2=1;
# UPDATE `creature_template` SET `gossip_menu_id` = 0 WHERE `npcflag` = `npcflag`|32;
UPDATE `gossip_menu_option` SET `box_text`='Are you sure you wish to purchase a Dual Talent Specialization?' WHERE `option_id` =18;
UPDATE creature_template_addon SET path_id=0;

# NPC_ADDON_FIX
INSERT IGNORE INTO `creature_template_addon`
SELECT
`creature_template`.`difficulty_entry_1`,
`creature_template_addon`.`path_id`,
`creature_template_addon`.`mount`,
`creature_template_addon`.`bytes1`,
`creature_template_addon`.`bytes2`,
`creature_template_addon`.`emote`,
`creature_template_addon`.`auras`
FROM
`creature_template`, `creature_template_addon`
WHERE
`creature_template_addon`.`entry`=`creature_template`.`entry`
AND `creature_template`.`difficulty_entry_1`>0;
INSERT IGNORE INTO `creature_template_addon`
SELECT
`creature_template`.`difficulty_entry_2`,
`creature_template_addon`.`path_id`,
`creature_template_addon`.`mount`,
`creature_template_addon`.`bytes1`,
`creature_template_addon`.`bytes2`,
`creature_template_addon`.`emote`,
`creature_template_addon`.`auras`
FROM
`creature_template`, `creature_template_addon`
WHERE
`creature_template_addon`.`entry`=`creature_template`.`entry`
AND `creature_template`.`difficulty_entry_2`>0;
INSERT IGNORE INTO `creature_template_addon`
SELECT
`creature_template`.`difficulty_entry_3`,
`creature_template_addon`.`path_id`,
`creature_template_addon`.`mount`,
`creature_template_addon`.`bytes1`,
`creature_template_addon`.`bytes2`,
`creature_template_addon`.`emote`,
`creature_template_addon`.`auras`
FROM
`creature_template`, `creature_template_addon`
WHERE
`creature_template_addon`.`entry`=`creature_template`.`entry`
AND `creature_template`.`difficulty_entry_3`>0;

# NPC_FIX
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenHealth`=`creature_template`.`RegenHealth`,
`copy`.`unit_class`=`creature_template`.`unit_class`,
`copy`.`unit_flags`=`creature_template`.`unit_flags`,
`copy`.`npcflag`=`creature_template`.`npcflag`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`equipment_id`=`creature_template`.`equipment_id`,
`copy`.`faction_A`=`creature_template`.`faction_A`,
`copy`.`faction_H`=`creature_template`.`faction_H`,
`copy`.`speed_run`=`creature_template`.`speed_run`,
`copy`.`speed_walk`=`creature_template`.`speed_walk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`dmgschool`=`creature_template`.`dmgschool`,
`copy`.`mingold`=`creature_template`.`mingold`,
`copy`.`maxgold`=`creature_template`.`maxgold`,
`copy`.`VehicleId`=`creature_template`.`VehicleId`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_1`;
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenHealth`=`creature_template`.`RegenHealth`,
`copy`.`unit_class`=`creature_template`.`unit_class`,
`copy`.`unit_flags`=`creature_template`.`unit_flags`,
`copy`.`npcflag`=`creature_template`.`npcflag`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`equipment_id`=`creature_template`.`equipment_id`,
`copy`.`faction_A`=`creature_template`.`faction_A`,
`copy`.`faction_H`=`creature_template`.`faction_H`,
`copy`.`speed_run`=`creature_template`.`speed_run`,
`copy`.`speed_walk`=`creature_template`.`speed_walk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`dmgschool`=`creature_template`.`dmgschool`,
`copy`.`mingold`=`creature_template`.`mingold`,
`copy`.`maxgold`=`creature_template`.`maxgold`,
`copy`.`VehicleId`=`creature_template`.`VehicleId`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_2`;
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenHealth`=`creature_template`.`RegenHealth`,
`copy`.`unit_class`=`creature_template`.`unit_class`,
`copy`.`unit_flags`=`creature_template`.`unit_flags`,
`copy`.`npcflag`=`creature_template`.`npcflag`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`equipment_id`=`creature_template`.`equipment_id`,
`copy`.`faction_A`=`creature_template`.`faction_A`,
`copy`.`faction_H`=`creature_template`.`faction_H`,
`copy`.`speed_run`=`creature_template`.`speed_run`,
`copy`.`speed_walk`=`creature_template`.`speed_walk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`dmgschool`=`creature_template`.`dmgschool`,
`copy`.`mingold`=`creature_template`.`mingold`,
`copy`.`maxgold`=`creature_template`.`maxgold`,
`copy`.`VehicleId`=`creature_template`.`VehicleId`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_3`;

# Final_FIX
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE QuestFlags=QuestFlags|4096;
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE QuestFlags=QuestFlags|32768;
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
# DELETE FROM `linked_respawn` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
# DELETE FROM `linked_respawn` WHERE `linkedGuid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `game_event_gameobject` WHERE `guid` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
UPDATE creature_template SET unit_flags=unit_flags&~2048 WHERE unit_flags&2048=2048;
UPDATE creature_template SET unit_flags=unit_flags&~524288 WHERE unit_flags&524288=524288;
UPDATE creature_template SET unit_flags=unit_flags&~67108864 WHERE unit_flags&67108864=67108864;
UPDATE creature_template SET unit_flags=unit_flags&~8388608 WHERE unit_flags&8388608=8388608;
UPDATE `creature` SET `MovementType` = 0 WHERE `spawndist` = 0 AND `MovementType`=1;
UPDATE `creature` SET `spawndist`=0 WHERE `MovementType`=0;
UPDATE `creature` SET `spawntimesecs` = 300 WHERE `spawntimesecs` = 25;
UPDATE `gameobject` SET `spawntimesecs` = 300 WHERE `spawntimesecs` = 25;
UPDATE `creature_template` SET `scale` = 1 WHERE `scale` = 0;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 0;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 3;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 10;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 25;
UPDATE `gameobject` SET `state`=1 WHERE `state`=0 AND `id` IN (SELECT entry FROM `gameobject_template` WHERE `type`=3);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_questrelation`);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_involvedrelation`);
UPDATE `gameobject` SET `state` = 0 WHERE `id` IN (SELECT `entry` FROM `gameobject_template` WHERE `type` = 0 AND `data0` = 1);
UPDATE `gameobject_template` SET `flags`=`flags`&~4 WHERE `type` IN (2,19,17);
DELETE FROM `gameobject_scripts` WHERE `id` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `gameobject_scripts` WHERE `command` in (11, 12) and `datalong` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE `spellid_2` = 0 AND `spelltrigger_2` = 6;
UPDATE `creature_template` SET npcflag = npcflag|1 WHERE `gossip_menu_id` > 0;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `AIName` = 'EventAI' AND `ScriptName` = 'generic_creature';
UPDATE `creature_template` SET `ScriptName` = '' WHERE `AIName` = 'SmartAI' AND `ScriptName` = 'generic_creature';

UPDATE
`creature`, `waypoint_data`
SET
`creature`.`spawndist`=0,
`creature`.`MovementType`=2
WHERE
`creature`.`guid`=`waypoint_data`.`id`;

DELETE
`waypoint_data`
FROM
`waypoint_data`
LEFT JOIN
(`creature`)
ON
(`creature`.`guid`=`waypoint_data`.`id`)
WHERE
`creature`.`guid` IS NULL;

ALTER TABLE `waypoint_data` ADD INDEX `temp_action` (`action`);
ALTER TABLE `waypoint_scripts` ADD INDEX `temp_id` (`id`);
DELETE
`waypoint_scripts`
FROM
`waypoint_scripts`
LEFT JOIN
(`waypoint_data`)
ON
(`waypoint_data`.`action`=`waypoint_scripts`.`id`)
WHERE
`waypoint_data`.`action` IS NULL;
ALTER TABLE `waypoint_data` DROP INDEX `temp_action`;
ALTER TABLE `waypoint_scripts` DROP INDEX `temp_id`;

update creature_addon set path_id=0;
UPDATE
`creature_addon`, `waypoint_data`
SET
`creature_addon`.`path_id`=`creature_addon`.`guid`
WHERE
`creature_addon`.`guid`=`waypoint_data`.`id`;

UPDATE version SET `cache_id`= '601';
UPDATE version SET `db_version`= 'YTDB_0.14.3_R601_TC_R12254_TDBAI_335.0.3_RuDB_R39';
