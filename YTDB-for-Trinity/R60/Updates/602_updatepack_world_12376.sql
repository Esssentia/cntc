# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 601_FIX_12254 602_FIX_12376 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('602_FIX_12376');

# TC
UPDATE `conditions` SET `ConditionValue2`='3' WHERE `ConditionTypeOrReference`='27' AND `ConditionValue1`='40';
UPDATE `game_event` SET `start_time` = '2011-09-04 12:01:00' WHERE `evententry` = 4;
DELETE FROM `creature_template_addon` WHERE `entry`=33293;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(33293,0,0,1,0, NULL); -- XT-002 Deconstructor
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN(10401,10402) AND `type`=18;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`)VALUES
(13,62834,18,1,0,'Boombot Boom - Player target'),
(13,62834,18,1,33343,'Boombot Boom - Scrapbot target'),
(13,62834,18,1,33344,'Boombot Boom - Pummeler target'),
(13,62834,18,1,33346,'Boombot Boom - Boombot target'),
(13,62834,18,1,33329,'Boombot Boom - Heart of the Deconstructor target'),
(13,62834,18,1,33293,'Boombot Boom - XT-002 target');
DELETE FROM `creature_template_addon` WHERE `entry`=33346;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(33346,0,0,1,0, NULL); -- XE-321 Boombot
DELETE FROM `creature_template_addon` WHERE `entry`=33344;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(33344,0,0,1,0, NULL); -- XM-024 Pummeller
DELETE FROM `creature_template_addon` WHERE `entry`=33343;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(33343,0,0,1,0, NULL); -- XS-013 Scrapbot

DELETE FROM `achievement_criteria_data` WHERE `type` = 6 AND `criteria_id` IN
(5020,5021,5022,5023,5024,5025,5026,5027,5028,5029,5030,5031,5032,5033,5034,5035,5036,5037,5038,5039);
INSERT INTO `achievement_criteria_data` values
(5020,6,1519,0,''),
(5021,6,1537,0,''),
(5022,6,1657,0,''),
(5023,6,1658,0,''),
(5024,6,1659,0,''),
(5025,6,1661,0,''),
(5026,6,1662,0,''),
(5027,6,1660,0,''),
(5028,6,3557,0,''),
(5029,6,1617,0,''),
(5030,6,4411,0,''),
(5031,6,1637,0,''),
(5032,6,3487,0,''),
(5033,6,3704,0,''),
(5034,6,1638,0,''),
(5035,6,1639,0,''),
(5036,6,1641,0,''),
(5037,6,1640,0,''),
(5038,6,2197,0,''),
(5039,6,1497,0,'');
DELETE FROM `creature_text` WHERE `entry`=39746; 
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES 
(39746,0,0, 'Alexstrasza has chosen capable allies.... A pity that I must END YOU!',14,0,100,0,0,17512, 'Baltharus the Warborn'),
(39746,1,0, 'You thought you stood a chance?',14,0,50,0,0,17513, 'General Zarithrian'),
(39746,1,1, 'It''s for the best.',14,0,50,0,0,17514, 'General Zarithrian'),
(39746,2,0, 'Turn them to ash, minions!',14,0,100,0,0,17516, 'General Zarithrian'),
(39746,3,0, 'HALION! I...',14,0,100,0,0,17515, 'General Zarithrian');
DELETE FROM `vehicle_template_accessory` WHERE `entry`=33293;
INSERT INTO `vehicle_template_accessory` (`entry`,`accessory_entry`,`seat_id`,`minion`,`description`,`summontype`,`summontimer`) VALUES
(33293,33329,0,1,'XT-002 Deconstructor - Heart',6,30000);
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN(10074,10075,10220,10221,10077,10079);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`ScriptName`) VALUES
(10074,11,0,'achievement_nerf_engineering'),
(10074,12,0,''),
(10075,11,0,'achievement_nerf_engineering'),
(10075,12,1,''),
(10221,11,0,'achievement_heartbreaker'),
(10221,12,0,''),
(10220,11,0,'achievement_heartbreaker'),
(10220,12,1,''),
(10077,11,0,'achievement_nerf_gravity_bombs'),
(10077,12,0,''),
(10079,11,0,'achievement_nerf_gravity_bombs'),
(10079,12,1,'');
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|128 WHERE `entry`=33050;
DELETE FROM `vehicle_template_accessory` WHERE `entry` = 31269;
INSERT INTO `vehicle_template_accessory` VALUES
(31269, 27559, 0, 0, 'Kor''kron Battle Wyvern', 6, 300);
DELETE FROM `creature` WHERE `id` = 27559;
UPDATE `creature_template` SET `InhabitType` = 1 WHERE `entry` = 27559;
-- Demented Druid Spirit SAI
SET @ENTRY   := 15260; -- NPC entry
SET @SPELL1  := 6726;  -- Silence
SET @SPELL2  := 16247; -- Curse of Thorns
SET @SPELL3  := 21669; -- Moonfire
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ENTRY; -- Set SAI as AI. Remove cpp ScriptName if one exist
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2500,2500,10000,15000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Demented Druid Spirit - Combat - Cast Silence on victim'),
(@ENTRY,0,1,0,0,0,100,0,15000,15000,15000,20000,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Demented Druid Spirit - Combat - Cast Curse of Thorns on victim'),
(@ENTRY,0,2,0,0,0,100,0,10000,10000,15000,20000,11,@SPELL3,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Demented Druid Spirit - Combat - Cast Moonfire on victim');
-- Shade of Taerar SAI
SET @ENTRY   := 15302; -- NPC entry
SET @SPELL1  := 24840; -- Poison Cloud
SET @SPELL2  := 20667; -- Corrosive Acid Breath
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ENTRY; -- Set SAI as AI. Remove cpp ScriptName if one exist
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,12000,12000,10000,14000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Shade of Taerar - Combat - Cast Poison Cloud on victim'),
(@ENTRY,0,1,0,0,0,100,0,30000,30000,25000,30000,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Shade of Taerar - Combat - Cast Corrosive Acid Breath on victim');
-- Add condition for Item 38731 "Ahunae's Knife" to target 28600 "Dead Heb'Drakkar Headhunter"
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceEntry`=38731;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(18,0,38731,0,24,2,28600,0,63,'','Item 38731 "Ahunae''s Knife" targets 28600 "Dead Heb''Drakkar Headhunter');
-- Demented Druid Spirit SAI
SET @ENTRY   := 15260; -- NPC entry
SET @SPELL1  := 6726;  -- Silence
SET @SPELL2  := 16247; -- Curse of Thorns
SET @SPELL3  := 21669; -- Moonfire
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ENTRY; -- Set SAI as AI. Remove cpp ScriptName if one exist
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,15000,15000,15000,20000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Demented Druid Spirit - Combat - Cast Silence on victim'),
(@ENTRY,0,1,0,0,0,100,0,10000,10000,15000,20000,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Demented Druid Spirit - Combat - Cast Curse of Thorns on victim'),
(@ENTRY,0,2,0,0,0,100,0,2500,2500,10000,15000,11,@SPELL3,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Demented Druid Spirit - Combat - Cast Moonfire on victim');
-- Shade of Taerar SAI
SET @ENTRY   := 15302; -- NPC entry
SET @SPELL1  := 20667; -- Corrosive Acid Breath
SET @SPELL2  := 24840; -- Poison Cloud
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ENTRY; -- Set SAI as AI. Remove cpp ScriptName if one exist
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,0,0,100,0,12000,12000,10000,14000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Shade of Taerar - Combat - Cast Corrosive Acid Breath on victim'),
(@ENTRY,0,0,0,0,0,100,0,30000,30000,25000,30000,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Shade of Taerar - Combat - Cast Poison Cloud on victim');
UPDATE `creature_template` set `VehicleId` = 129 WHERE `entry` = 28710;
UPDATE `creature_template` set `npcflag`=`npcflag`|0x1000000 WHERE `entry` IN (28710,29838,33114,33167,34161);
DELETE FROM `vehicle_template_accessory` WHERE `entry` = 29838;
INSERT INTO `vehicle_template_accessory` VALUES
(29838,29836,0,0,'Drakkari Battle Rider on Drakkari Rhino, not minion',6,30000);
DELETE FROM `creature` WHERE `id` = 29836;
UPDATE `gameobject_template` SET `flags`=`flags`&~1024 WHERE `entry` IN (194398,194399,194400,194401,194402,194403,194404,194405,194406,194407,194408,194409,194410,194411,194412,194413,194414,194415,194506);
UPDATE `creature_template` set `VehicleId` = 273 WHERE `entry` = 31406;
UPDATE `creature_template` set `VehicleId` = 274 WHERE `entry` = 31408;
UPDATE `creature_template` set `VehicleId` = 277 WHERE `entry` = 31407;
UPDATE `creature_template` set `VehicleId` = 278 WHERE `entry` = 31409;
UPDATE `creature_template` set `VehicleId` = 301 WHERE `entry` = 32344;
UPDATE `creature_template` set `npcflag`=`npcflag`|0x1000000 WHERE `entry` IN
(25762,27131,31110,31137,31157,31262,31406,31407,31408,31409,32490,31583,31830,31881,31884,32225,32227,32292,32344,37968);
DELETE FROM `vehicle_template_accessory` WHERE `entry` IN
(29931,31262,31406,31583,31881,31884,32225,32227,32490,32344);
INSERT INTO `vehicle_template_accessory` VALUES
(29931,29982,0,0,'Drakkari Rider on Drakkari Rhino',6,300),
(29931,29982,1,0,'Drakkari Rider on Drakkari Rhino',6,300),
(29931,29982,2,0,'Drakkari Rider on Drakkari Rhino',6,300),
(31262,31263,0,0,'Carrion Hunter rides Blight Falconer',6,300),
(31406,31408,0,1,'Alliance Bomber Seat on Alliance Infra-green Bomber',8,0),
(31406,31407,1,1,'Alliance Turret Seat on Alliance Infra-green Bomber',8,0),
(31406,31409,2,1,'Alliance Engineering Seat on rides Alliance Infra-green Bomber',8,0),
(31406,32217,3,1,'Banner Bunny, Hanging, Alliance on Alliance Infra-green Bomber',8,0),
(31406,32221,4,1,'Banner Bunny, Side, Alliance on Alliance Infra-green Bomber',8,0),
(31406,32221,5,1,'Banner Bunny, Side, Alliance on Alliance Infra-green Bomber',8,0),
(31406,32256,6,1,'Shield Visual Loc Bunny on Alliance Infra-green Bomber',8,0),
(31406,32274,7,0,'Alliance Bomber Pilot rides Alliance Infra-green Bomber',6,300),
(31583,31630,1,1,'Skytalon Explosion Bunny on Frostbrood Skytalon',8,0),
(31881,31891,0,0,'Kor''kron Transport Pilot rides Kor''kron Troop Transport',6,300),
(31881,31884,1,1,'Kor''kron Suppression Turret on Kor''kron Troop Transport',8,0),
(31881,31882,2,0,'Kor''kron Infiltrator on Kor''kron Troop Transport',6,300),
(31881,31882,3,0,'Kor''kron Infiltrator on Kor''kron Troop Transport',6,300),
(31881,31882,4,0,'Kor''kron Infiltrator on Kor''kron Troop Transport',6,300),
(31881,31882,5,0,'Kor''kron Infiltrator on Kor''kron Troop Transport',6,300),
(31884,31882,0,1,'Kor''kron Infiltrator rides Kor''kron Suppression Turret',8,0),
(32225,32223,0,0,'Skybreaker Transport Pilot rides Skybreaker Troop Transport',6,300),
(32225,32227,1,1,'Skybreaker Suppression Turret on Skybreaker Troop Transport',8,0),
(32225,32222,2,0,'Skybreaker Infiltrator on Skybreaker Troop Transport',6,300),
(32225,32222,3,0,'Skybreaker Infiltrator on Skybreaker Troop Transport',6,300),
(32225,32222,4,0,'Skybreaker Infiltrator on Skybreaker Troop Transport',6,300),
(32225,32222,5,0,'Skybreaker Infiltrator on Skybreaker Troop Transport',6,300),
(32227,32222,0,1,'Skybreaker Infiltrator rides Skybreaker Suppression Turret',6,300),
(32490,32486,0,0,'Scourge Death Knight rides Scourge Deathcharger',6,300),
(32344,32274,0,0,'Alliance Bomber Pilot rides Alliance Rescue Craft',6,300),
(32344,32531,2,1,'Banner Bunny, Side, Alliance, Small rides Alliance Rescue Craft',8,0);
DELETE FROM `creature` where `id` IN (31408,31407,31409,32217,32221,32256,32274,31630,31891,31884,31882,32223,32227,32222,32486,32531);
UPDATE `creature_template` set `VehicleId` = 436 WHERE `entry` IN (36355, 36357, 34777, 35436);
UPDATE `creature_template` set `VehicleId` = 201 WHERE `entry` = 30935;
UPDATE `creature_template` set `VehicleId` = 397 WHERE `entry` = 34162;
UPDATE `creature_template` set `npcflag`=`npcflag`|0x1000000 WHERE `entry` IN (36355, 36357, 34777, 35436, 36356, 36358);
UPDATE `creature_template` set `npcflag`=`npcflag`|0x1000000 WHERE `entry` IN (30935,34162);
DELETE FROM `linked_respawn` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `linked_respawn` WHERE `linkedGuid` NOT IN (SELECT `guid` FROM `creature`);

# NeatElves
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ABS(ChanceOrQuestChance) WHERE `item` in (24449,24246);
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = ABS(ChanceOrQuestChance) WHERE `item` =24246;
DELETE FROM `creature_loot_template` WHERE `item` = 24290;
DELETE FROM `creature_loot_template` WHERE `item` = 24245;
DELETE FROM gossip_menu_option WHERE menu_id=9205;
UPDATE `creature_template` SET `gossip_menu_id` = 6213 WHERE `entry` = 14842;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (6222, 7379);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (6186, 7393);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (6213, 7375);
UPDATE `creature_template` SET `gossip_menu_id` = 6233 WHERE `entry` = 14846;
UPDATE `gossip_menu` SET `entry` = 6233 WHERE `entry` =6489;
UPDATE gossip_menu_option SET menu_id = 6233 WHERE menu_id = 6489;
UPDATE locales_gossip_menu_option SET menu_id = 6233 WHERE `menu_id` =6489;
UPDATE creature SET position_x = '-9552.126953', position_y = '140.868317', position_z = '58.881634', orientation = '5.556240' WHERE guid = '4947';
UPDATE creature SET position_x = '-9586.381836', position_y = '27.001484', position_z = '60.229263', orientation = '4.799116' WHERE guid = '4913';
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(35371, 15303, 0, 1, 1, 0, 0, -9567.56, -12.4452, 63.3276, 1.1698, 180, 0, 0, 1220, 0, 0, 0),
(36222, 14865, 0, 1, 1, 0, 0, -9557.24, 119.71, 58.8826, 5.8916, 180, 0, 0, 594, 0, 0, 0),
(49037, 14868, 0, 1, 1, 0, 0, -9558.09, 133.618, 58.8822, 6.04554, 180, 0, 0, 156, 0, 0, 0);
REPLACE INTO `game_event_creature` (`guid`, `evententry`) VALUES ('35371', '4'),('36222', '4'),('49037', '4');
INSERT IGNORE INTO gossip_scripts (id,delay,command,datalong,datalong2) VALUES(8782,0,15,42295,3);
INSERT INTO gossip_scripts (id,delay,command,datalong,datalong2) VALUES(10220,0,14,61611,0);
UPDATE `item_template` SET `minMoneyLoot` = '200000',`maxMoneyLoot` = '200000' WHERE `entry` =44663;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE `entry` = 44663 AND `item` != 33470;
INSERT IGNORE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('3685', '6', '3820', '0');

# Fix
UPDATE `creature_template` SET `RegenHealth` = 0 WHERE `entry` IN (28781, 32796, 27894, 32795);
UPDATE `creature_template` SET `speed_run`=1.7142857142857 WHERE `entry`=33293;
UPDATE `creature_model_info` SET `bounding_radius`=0.465,`combat_reach`=1,`gender`=2 WHERE `modelid`=28611; -- XT-002 Deconstructor
UPDATE `areatrigger_teleport` SET `target_orientation`=2.58 WHERE `id`=4008;
UPDATE `areatrigger_teleport` SET `target_orientation`=3.779335 WHERE `id`=503;
UPDATE `areatrigger_teleport` SET `name`= 'Sethekk Halls (Exit)',`target_orientation`=1.65638 WHERE `id`=4399;
UPDATE `areatrigger_teleport` SET `name`= 'Auchenai Crypts (Exit)',`target_orientation`=4.672236 WHERE `id`=4403;
UPDATE `creature_template` SET `speed_run`=0.42857 WHERE `entry`=33346; -- XE-321 Boombot
UPDATE `creature_template` SET `speed_run`=0.42857 WHERE `entry`=33343; -- XS-013 Scrapbot
UPDATE `gameobject_template` SET `faction`=14 WHERE `entry`=180647;
UPDATE `creature_template` set `vehicleid` = 436 WHERE `entry` IN (36355, 36357, 34777, 35436);

# SignFinder
UPDATE `creature_template` SET `ScriptName`='', `spell1`=0 WHERE `entry` = 38068;

# NeatElves
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` in (28619,29742,21468,24804,22189,22405,30313,22912,23246,18904,23786,23822,28148,25268,28142,28136);

# Conditions
REPLACE INTO `conditions` VALUES ('15', '9205', '0', '0', '5', '989', '6', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8782', '0', '0', '9', '11142', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10220', '0', '0', '9', '12137', '0', '0', '0', '', null);
REPLACE INTO `gossip_menu_option` VALUES ('9205', '0', '0', 'Take me to the Caverns of Time', '1', '1', '1', '0', '10131', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('6213', '0', '0', 'The Darkmoon Faire has arrived, you say? And where is she now?', '1', '1', '6222', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('8782', '0', '0', 'Lady Jaina told me to speak to you about using a gryphon to survey Alcaz Island.', '1', '1', '1', '0', '8782', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10220', '0', '0', 'I am ready to return to the realm of the living.', '1', '1', '1', '0', '10220', '0', '0', null);


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

UPDATE version SET `cache_id`= '602';
UPDATE version SET `db_version`= 'YTDB_0.14.3_R602_TC_R12376_TDBAI_335.0.3_RuDB_R39';
