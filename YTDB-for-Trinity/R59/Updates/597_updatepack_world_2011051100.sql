# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 596_FIX_11772 597_FIX_2011051100 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('597_FIX_2011051100');

# TC
DELETE FROM `creature_template_addon` WHERE `entry` IN (14305,14444,22817,22818,33532,33533);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(14305,0,0,0,1,0,'58818'),
(14444,0,0,0,1,0,'58818'),
(22817,0,0,0,1,0,'58818'),
(22818,0,0,0,1,0,'58818'),
(33532,0,0,0,1,0,'58818'),
(33533,0,0,0,1,0,'58818');
UPDATE `creature_template` SET `modelid1`=22712,`modelid2`=17200,`flags_extra`=`flags_extra`|128 WHERE `entry`=27827; -- reverse models (parsers fault)
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|128 WHERE `entry`=28960; -- reverse models (parsers fault)
DELETE FROM `creature_text` WHERE `entry`=27915;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(27915,0,0, 'Good work with the crates! Come talk to me in front of Stratholme for your next assignment!',4,0,0,0,0,0, 'Chromie - SAY_EVENT_START');
DELETE FROM `creature_text` WHERE `entry`=37217;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(37217,0,0, '%s cries out with a loud, baying howl!',3,0,0,0,0,0, 'Precious - EMOTE_PRECIOUS_ZOMBIES');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (23801,24746,29594);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23801,24746,29594);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(23801,0,0,0,6,0,100,1,0,0,0,0,85,25281,2,0,0,0,0,7,0,0,0,0,0,0,0,'Turkey - Cast Marker on death'),
(24746,0,0,0,6,0,100,1,0,0,0,0,85,25281,2,0,0,0,0,7,0,0,0,0,0,0,0,'Fjord Turkey - Cast Marker on death'),
(29594,0,0,0,6,0,100,1,0,0,0,0,85,25281,2,0,0,0,0,7,0,0,0,0,0,0,0,'Angry Turkey - Cast Marker on death');
UPDATE `creature_template` SET `AIName`='SmartAI',`spell1`=45877,`unit_flags`=`unit_flags`|512,`speed_run`=2  WHERE `entry`=25596; -- Infected Kodo Beast
UPDATE `creature_template_addon` SET `bytes1`=7,`bytes2`=1,`mount`=0,`emote`=0,`auras`=45771 WHERE `entry`=25596; -- Aura: Scourge Infection
DELETE FROM `smart_scripts` WHERE `entryorguid`=25596 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25596,0,0,0,27,0,100,0,0,0,0,0,91,7,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Infected Kodo Beast - remove death state on passager boarded'),
(25596,0,1,0,31,0,100,0,45877,0,0,0,41,0,0,0,0,0,0,22,0,0,0,0,0,0,0, 'Infected Kodo Beast - On Spell Hit despawn');
DELETE FROM `npc_spellclick_spells` where `npc_entry`=25596;
INSERT INTO `npc_spellclick_spells`(`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) values 
(25596,45875,11690,1,11690,0,0,0,0);
UPDATE `creature_template` SET `VehicleId`=206,`AIName`='SmartAI',`spell1`=51660,`speed_run`=0.95238 WHERE `entry`=28379;
DELETE FROM `smart_scripts` WHERE `entryorguid`=28379 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(28379,0,0,0,31,0,100,0,51660,0,0,0,41,0,0,0,0,0,0,22,0,0,0,0,0,0,0, 'Shattertusk Mammoth - On Spell Hit - Despawn');
DELETE FROM `npc_spellclick_spells` where `npc_entry`=28379;
INSERT INTO `npc_spellclick_spells`(`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) values 
(28379,51658,12607,1,12607,0,0,0,0);
DELETE FROM `creature_template_addon` WHERE `entry`=28379;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(28379,0,0,1,0, NULL); -- Shattertusk Mammoth
SET @ENTRY := 23861;
UPDATE `creature_template` SET `ScriptName`='',`AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Restless Apparition - On spawn - Run script'),
(@ENTRY*100,9,0,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Restless Apparition - Script - Say text 0'),
(@ENTRY*100,9,1,0,0,0,100,0,8000,8000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Restless Apparition - Script - Despawn');
DELETE FROM `creature_text` WHERE `entry`=@ENTRY; 
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'The darkness... the corruption... they came too quickly for anyone to know...',0,0,15,25,0,0, 'Restless Apparition'),
(@ENTRY,0,1, 'It is too late for us, living one. Take yourself and your friend away from here before you both are... claimed...',0,0,15,25,0,0, 'Restless Apparition'),
(@ENTRY,0,2, 'Go away, whoever you are! Witch Hill is mine... mine!',0,0,15,25,0,0, 'Restless Apparition'),
(@ENTRY,0,3, 'The darkness will consume all... all the living...',0,0,15,25,0,0, 'Restless Apparition'),
(@ENTRY,0,4, 'The manor... someone else... will soon be consumed...',0,0,15,25,0,0, 'Restless Apparition'),
(@ENTRY,0,5, 'Why have you come here, outsider? You will only find pain! Our fate will be yours...',0,0,15,25,0,0, 'Restless Apparition'),
(@ENTRY,0,6, 'It was... terrible... the demon...',0,0,15,25,0,0, 'Restless Apparition');
-- Zeppelin Power Core
SET @ENTRY := 23832;
-- Remove aura hack
DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY;
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=@ENTRY);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@ENTRY,0,0,1,0, NULL); -- Zeppelin Power Core
-- Remove random movement
UPDATE `creature` SET `spawndist`=0,`MovementType`=0 WHERE `id`=@ENTRY;
-- SmartAI for Zeppelin Power Core
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,1,0,100,0,1000,60000,90000,120000,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeppelin Power Core - OOC - Load script every 1.5-2 min'),
(@ENTRY*100,9,0,0,0,0,100,0,1000,1000,0,0,11,42491,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeppelin Power Core - Script - Cast Energized Periodic on self'),
(@ENTRY*100,9,1,0,0,0,100,0,60000,90000,0,0,28,42491,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Zeppelin Power Core - Script - After 1 - 1.5 min, remove Energized Periodic on self');
-- Add condition for Ooze Buster (item 33108, spell 42489)
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceEntry`=33108;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(18,0,33108,0,24,1,4394,0,0, '', 'Item 33108 can target Bubbling Swamp Ooze'),
(18,0,33108,1,24,1,4393,0,0, '', 'Item 33108 can target Acidic Swamp Ooze');
UPDATE `creature_text` SET `type`=0 WHERE `type`=12 AND `entry`=23861;
DELETE FROM `creature_template_addon` WHERE `entry`=28221;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(28221,0,0,1,0, '11959');

# tabo
update npc_spellclick_spells set cast_flags=1 where npc_entry=30236;
update npc_spellclick_spells set spell_id=46598 where npc_entry=30236;
update creature_model_info set gender=2=0 where modelid=27101;
update creature_template_addon set bytes1=0 where entry=30236;
update creature_template set spell1=57385, spell2=57412 where entry=30236;

# Fix
DELETE FROM `game_graveyard_zone` WHERE ID=956;

# Schmoozerd
DELETE FROM event_scripts WHERE id IN (5618, 5619, 5620, 5621, 5622, 5623);
INSERT INTO event_scripts VALUES
(5618, 2, 10, 16119, 300000, 0, 254.2325, 0.3417, 84.8407, 0.0),
(5618, 2, 10, 16119, 300000, 0, 257.7133, 4.0226, 84.8407, 0.0),
(5618, 2, 10, 16119, 300000, 0, 258.6702, -2.60656, 84.8407, 0.0),
(5619, 2, 10, 16119, 300000, 0, 184.0519, -73.5649, 84.8407, 0.0),
(5619, 2, 10, 16119, 300000, 0, 179.5951, -73.7045, 84.8407, 0.0),
(5619, 2, 10, 16119, 300000, 0, 180.6452, -78.2143, 84.8407, 0.0),
(5619, 3, 10, 16119, 300000, 0, 183.2274, -78.1518, 84.8407, 0.0),
(5620, 2, 10, 16119, 300000, 0, 100.9404, -1.8016, 85.2289, 0.0),
(5620, 2, 10, 16119, 300000, 0, 101.3729, 0.4882, 85.2289, 0.0),
(5620, 2, 10, 16119, 300000, 0, 101.4596, -4.4740, 85.2289, 0.0),
(5621, 2, 10, 16119, 300000, 0, 240.34481, 0.7368, 72.6722, 0.0),
(5621, 2, 10, 16119, 300000, 0, 240.3633, -2.9520, 72.6722, 0.0),
(5621, 2, 10, 16119, 300000, 0, 240.6702, 3.34949, 72.6722, 0.0),
(5622, 2, 10, 16119, 300000, 0, 184.0519, -73.5649, 70.7734, 0.0),
(5622, 2, 10, 16119, 300000, 0, 179.5951, -73.7045, 70.7734, 0.0),
(5622, 2, 10, 16119, 300000, 0, 180.6452, -78.2143, 70.7734, 0.0),
(5622, 3, 10, 16119, 300000, 0, 183.2274, -78.1518, 70.7734, 0.0),
(5623, 2, 10, 16119, 300000, 0, 115.3945, -1.5555, 75.3663, 0.0),
(5623, 2, 10, 16119, 300000, 0, 117.7133, 1.8066, 75.3663, 0.0),
(5623, 2, 10, 16119, 300000, 0, 118.6702, -5.1001, 75.3663, 0.0);

# NeatElves
# DELETE FROM gossip_scripts WHERE id=7585;
# INSERT INTO gossip_scripts (id, delay, command, datalong, datalong2) VALUES(7585, 0, 17, 24573, 1);
DELETE FROM creature WHERE guid=128995;
DELETE FROM creature WHERE guid=128996;
DELETE FROM creature WHERE guid=129000;
DELETE FROM creature WHERE guid=128306;
DELETE FROM creature WHERE guid=128999;
DELETE FROM creature WHERE guid=128305;
UPDATE `creature_questrelation` SET `quest` = '7848' WHERE `id` =14387 AND `quest` =7487;
UPDATE `creature_involvedrelation` SET `quest` = '7848' WHERE `id` =14387 AND `quest` =7487;

# telsamat
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(29932, 47241, 100, 0, 1, 1);

# Lordronn
UPDATE creature SET position_x = '6131.875', position_y = '-1951.968', position_z = '417.7781', orientation = '5.288348' WHERE guid = '118624';

# Lordronn
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 570;
UPDATE `creature_model_info` SET `bounding_radius` = '1' WHERE modelid = 2176;
UPDATE `creature_model_info` SET `combat_reach` = '2.25' WHERE modelid = 7869;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 8055;
UPDATE `creature_model_info` SET `bounding_radius` = '2' WHERE modelid = 18043;
UPDATE `creature_model_info` SET `combat_reach` = '4.6' WHERE modelid = 18043;
UPDATE `creature_model_info` SET `combat_reach` = '0.8' WHERE modelid = 19595;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 19595;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 23137;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 23138;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 23138;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 24191;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 24553;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 24554;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25468;
UPDATE `creature_model_info` SET `bounding_radius` = '0.4797' WHERE modelid = 26002;
UPDATE `creature_model_info` SET `combat_reach` = '1.35' WHERE modelid = 26002;
UPDATE `creature_model_info` SET `combat_reach` = '2.25' WHERE modelid = 26563;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 26563;
UPDATE `creature_model_info` SET `combat_reach` = '1.95' WHERE modelid = 26847;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26985;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26987;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26989;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26991;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 26994;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 26995;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26997;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 26998;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27307;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27314;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27315;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27317;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27318;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27319;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27325;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27327;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27328;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27329;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27331;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27332;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27333;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27334;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 27541;
UPDATE `creature_model_info` SET `bounding_radius` = '0.62' WHERE modelid = 27706;
UPDATE `creature_model_info` SET `combat_reach` = '2' WHERE modelid = 27706;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 27706;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 27786;
UPDATE `creature_model_info` SET `gender` = '2' WHERE modelid = 27786;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 27787;
#UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 16570;
#UPDATE `creature_template` SET `dynamicflags` = '12' WHERE entry = 26525;
#UPDATE `creature_template` SET `unit_flags` = '34113544' WHERE entry = 27893;
#UPDATE `creature_template` SET `unit_flags` = '526336' WHERE entry = 28022;
#UPDATE `creature_template` SET `unit_flags` = '526336' WHERE entry = 28023;
#UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 28026;
#UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 28028;
#UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 28029;
UPDATE `creature_template` SET `faction_A` = '2138', `faction_H` = '2138' WHERE entry = 28029;
#UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 28035;
UPDATE `creature_template` SET `baseattacktime` = '1818' WHERE entry = 28035;
#UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 28036;
UPDATE `creature_template` SET `baseattacktime` = '1818' WHERE entry = 28036;
#UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 28041;
#UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 28156;
#UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 28162;
UPDATE `creature_template` SET `speed_run` = '1.28571' WHERE entry = 28221;
#UPDATE `creature_template` SET `unit_flags` = '33587200' WHERE entry = 28221;
#UPDATE `creature_template` SET `unit_flags` = '512' WHERE entry = 28246;
#UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28246;
#UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28519;
#UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28564;
#UPDATE `creature_template` SET `dynamicflags` = '12' WHERE entry = 28603;
UPDATE `creature_template` SET `speed_run` = '6.28571' WHERE entry = 28669;
#UPDATE `creature_template` SET `unit_flags` = '34081040' WHERE entry = 28717;
#UPDATE `creature_template` SET `dynamicflags` = '12' WHERE entry = 28745;
#UPDATE `creature_template` SET `unit_flags` = '32776' WHERE entry = 28750;
#UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28750;
#UPDATE `creature_template` SET `unit_flags` = '768' WHERE entry = 28759;
#UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28759;
#UPDATE `creature_template` SET `unit_flags` = '821248' WHERE entry = 28801;
#UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28802;
#UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28803;
#UPDATE `creature_template` SET `unit_flags` = '526336' WHERE entry = 28843;
#UPDATE `creature_template` SET `dynamicflags` = '13' WHERE entry = 28843;
#UPDATE `creature_template` SET `unit_flags` = '537692416' WHERE entry = 28844;
#UPDATE `creature_template` SET `dynamicflags` = '12' WHERE entry = 28844;
#UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 28852;
#UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 28879;
UPDATE `creature_template` SET `faction_A` = '974', `faction_H` = '974' WHERE entry = 28998;
#UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 29129;
#UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 29129;
#UPDATE `creature_template` SET `unit_flags` = '2048' WHERE entry = 29133;
#UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 29133;
#UPDATE `creature_template` SET `unit_flags` = '559104' WHERE entry = 29236;
UPDATE `creature_template` SET `baseattacktime` = '1639' WHERE entry = 29444;
#UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 29451;
#UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 29452;
#UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 29453;
#UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 29646;
UPDATE `creature_template` SET `faction_A` = '1891', `faction_H` = '1891' WHERE entry = 30352;
#UPDATE `creature_template` SET `unit_flags` = '32768' WHERE entry = 30755;
UPDATE `creature_template` SET `faction_A` = '2132', `faction_H` = '2132' WHERE entry = 30755;
UPDATE `creature_template` SET `speed_run` = '1.71429' WHERE entry = 31139;
UPDATE `creature_template` SET `speed_walk` = '2.4' WHERE entry = 31139;
UPDATE `creature_template` SET `faction_A` = '21', `faction_H` = '21' WHERE entry = 31150;
UPDATE `creature_template` SET `faction_A` = '21', `faction_H` = '21' WHERE entry = 31198;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 31243;
UPDATE `creature_template` SET `faction_A` = '1885', `faction_H` = '1885' WHERE entry = 31258;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 31259;
UPDATE `creature_template` SET `faction_A` = '1885', `faction_H` = '1885' WHERE entry = 31262;
UPDATE `creature_template` SET `faction_A` = '1885', `faction_H` = '1885' WHERE entry = 31263;
#UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 31263;
UPDATE `creature_template` SET `faction_A` = '1885', `faction_H` = '1885' WHERE entry = 31265;
UPDATE `creature_template` SET `faction_A` = '1885', `faction_H` = '1885' WHERE entry = 31267;
#UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 31267;
#UPDATE `creature_template` SET `unit_flags` = '524296' WHERE entry = 31276;
UPDATE `creature_template` SET `faction_A` = '2109', `faction_H` = '2109' WHERE entry = 31280;
#UPDATE `creature_template` SET `unit_flags` = '33587200' WHERE entry = 31702;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 31718;
#UPDATE `creature_template` SET `dynamicflags` = '13' WHERE entry = 31718;
#UPDATE `creature_template` SET `dynamicflags` = '13' WHERE entry = 31731;
#UPDATE `creature_template` SET `dynamicflags` = '13' WHERE entry = 31738;
#UPDATE `creature_template` SET `dynamicflags` = '13' WHERE entry = 31783;
#UPDATE `creature_template` SET `unit_flags` = '16' WHERE entry = 31812;
#UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 31812;
#UPDATE `creature_template` SET `dynamicflags` = '12' WHERE entry = 31813;
#UPDATE `creature_template` SET `dynamicflags` = '12' WHERE entry = 31815;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 31836;
#UPDATE `creature_template` SET `dynamicflags` = '4' WHERE entry = 31847;
#UPDATE `creature_template` SET `dynamicflags` = '32' WHERE entry = 31868;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 32155;
UPDATE `creature_template` SET `faction_A` = '21', `faction_H` = '21' WHERE entry = 32164;
UPDATE `creature_template` SET `faction_A` = '83', `faction_H` = '83' WHERE entry = 32301;
UPDATE `creature_template` SET `faction_A` = '84', `faction_H` = '84' WHERE entry = 32302;
UPDATE `creature_template` SET `faction_A` = '84', `faction_H` = '84' WHERE entry = 32566;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 32777;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 35646;
update creature_template set spell1=57385, spell2=57412 where entry=30236;

# NeatElves
DELETE FROM `creature` WHERE `id` = 22275;

# WDB
INSERT IGNORE INTO `npc_text` SET `ID`=15252,`prob0`=1,`text0_0`='They''re in mid challenge, mon. Be patient.',`text0_1`='They''re in mid challenge, mon. Be patient.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16623,`prob0`=1,`text0_0`='',`text0_1`='How can I help you, $c?',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16790,`prob0`=1,`text0_0`='Sorry, $c.$B$BI ain''t believin'' ya got de right mind for graspin'' de nature of portal magic.',`text0_1`='Sorry, $c.$B$BI ain''t believin'' ya got de right mind for graspin'' de nature of portal magic.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
DELETE FROM npc_text WHERE ID=14690;
INSERT INTO `npc_text` SET `ID`=14690,`prob0`=1,`text0_0`='For years I served in this backwater corner of the world, learning the terrain and biding my time. At last our time has come. The full might of Orgrimmar is now turned to Azshara, our gateway to Ashenvale and dominance over this continent. Welcome to the front lines, $c.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
DELETE FROM npc_text WHERE ID=16491;
INSERT INTO `npc_text` SET `ID`=16491,`prob0`=1,`text0_0`='May the Sun''s light protect you, $c.',`text0_1`='May the Sun''s light protect you, $c.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `page_text` VALUES ('3563', '\"Interested in some more company?\" she purred as her hands weaved through a complex summoning ritual, stopping only when she felt the warmth of a new presence behind her.\r\n\r\nAll color drained from Marcus\'s face as he struggled to protest.  \"I... I don\'t think that\'s appropriate.\"\r\n\r\nConfused, Tavi turned to see what was wrong.  A hideous fel hound stood ready, drooling onto the floor as it stared intently at the half-armored paladin.\r\n\r\n\"No!  No that\'s not what I meant.\" she stammered as she dispelled the hungry demon.  \"I\'m sorry, that\'s not really my specialization....\"', '3564',1);
INSERT IGNORE INTO `page_text` VALUES ('3564', 'Marcus took both her hands in one of his as he reassured her, \"It\'s fine.  What is your specialization?\"\r\n\r\nHer head snapped up, eyes burning with renewed life as shadowy energy channeled through her hands into Marcus, dropping him to his knees in agony.\r\n\r\n\"Affliction, actually.\"\r\n', '3565',1);
INSERT IGNORE INTO `page_text` VALUES ('3565', 'Gritting his teeth, Marcus gestured as light flashed over him, restoring his strength.\r\n\r\nTavi stared anxiously as he rose to his full height, engulfing her in his shadow.  He thrust his hand forward, sending a wave of righteous force through her.  Eyes rolled back as she wavered for several seconds before regaining consciousness.\r\n\r\n\"I\'ve recently taken the path of... retribution.\"\r\n\r\nThe mischievous smirk returned to her face, \"Well then, this is going to be fun.\"\r\n\r\n<The remaining pages have a level 99 requirement to read.>', '0',1);
UPDATE `creature_model_info` SET `bounding_radius`=2,`combat_reach`=4.6,`gender`=1 WHERE `modelid`=18043;


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

UPDATE version SET `cache_id`= '597';
UPDATE version SET `db_version`= 'YTDB_0.14.2_R597_TC_R2011051100_TDBAI_335.0.3_RuDB_R38.9';
