# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 604_FIX_12758 605_FIX_12888 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('605_FIX_12888');

# TC
UPDATE `creature_template` SET `unit_flags` = 131076, `Armor_mod` = 1, `flags_extra` = 262144 WHERE `entry` = 33229;
UPDATE `creature_template` SET `unit_flags` = 4, `dynamicflags` = 136, `flags_extra` = 0, `Armor_mod` = 1 WHERE `entry` = 33272;
UPDATE `creature_template` SET `unit_flags` = 4, `Armor_mod` = 1 WHERE `entry` = 33243; 
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12859;
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES (12859, 15, 3, 0);
UPDATE `quest_template` SET `ReqSpellCast1` = 49625, `ReqSpellCast2` = 49625, `ReqSpellCast3` = 49625, `ReqSpellCast4` = 49625 WHERE `entry` = 11259;
UPDATE `quest_template` SET `ReqSpellCast1` = 36374, `ReqSpellCast2` = 36374, `ReqSpellCast3` = 36374, `ReqSpellCast4` = 36374 WHERE `entry` = 10895;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry` IN (17116,17240,17440);
UPDATE `creature_template` SET `gossip_menu_id`=7983 WHERE `entry`=17440;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (17116,17240,17440);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(17116,0,0,0,64,0,100,0,0,0,0,0,33,17116,0,0,0,0,0,7,0,0,0,0,0,0,0, 'On gossip hello credit for quest 9663'),
(17240,0,0,0,64,0,100,0,0,0,0,0,33,17240,0,0,0,0,0,7,0,0,0,0,0,0,0, 'On gossip hello credit for quest 9663'),
(17440,0,0,0,64,0,100,0,0,0,0,0,33,17440,0,0,0,0,0,7,0,0,0,0,0,0,0, 'On gossip hello credit for quest 9663');
DELETE FROM `gossip_menu` WHERE `entry`=7399 AND `text_id`=9038;
DELETE FROM `gossip_menu` WHERE `entry`=7983 AND `text_id`=8994;
DELETE FROM `gossip_menu` WHERE `entry`=7983 AND `text_id`=9039;
DELETE FROM `gossip_menu` WHERE `entry`=7370 AND `text_id`=9040;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(7399,9038),(7983,8994),(7983,9039),(7370,9040);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup` IN (7399,7983,7370);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,7399,9038,0,9,9663,0,0,0,'','Show gossip text 9038 if player has quest 9663'),
(14,7983,9039,0,9,9663,0,0,0,'','Show gossip text 9039 if player has quest 9663'),
(14,7370,9040,0,9,9663,0,0,0,'','Show gossip text 9040 if player has quest 9663');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=27990;
UPDATE `creature_template` SET `gossip_menu_id`=10192 WHERE `entry`=26917;
UPDATE `creature_template` SET `gossip_menu_id`=10199 WHERE `entry`=27990;
DELETE FROM `gossip_menu_option` WHERE `menu_id`=10199;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`) VALUES
(10199,0,0,'What do you know of ancient swords?',1,1,0,0,0,0,''),
(10199,1,0,'What do you know of ancient swords?',1,1,0,0,0,0,'');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=10199;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,10199,0,0,9,14444,0,0,0,'','Show gossip option 0 if player has quest 14444 (Alliance)'),
(15,10199,1,0,9,24555,0,0,0,'','Show gossip option 1 if player has quest 24555 (Horde)');
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (27990,2799000,2799001);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(27990,0,0,0,62,0,100,0,10199,0,0,0,80,2799001,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On gossip option select run script'),
(27990,0,1,0,62,0,100,0,10199,1,0,0,80,2799000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On gossip option select run script'),
(2799000,9,0,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Turn off Gossip & Questgiver flags'),
(2799000,9,1,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,9,26917,0,10,0,0,0,0, 'Turn of Gossip & Questgiver flags for Alexstrasza'),
(2799000,9,2,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 0'),
(2799000,9,3,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 1'),
(2799000,9,4,0,0,0,100,0,0,0,0,0,45,0,1,0,0,0,0,9,38017,0,30,0,0,0,0, 'Kalecgos start path'),
(2799000,9,5,0,0,0,100,0,4000,4000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 2'),
(2799000,9,6,0,0,0,100,0,4000,4000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 3'),
(2799000,9,7,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,9,38017,0,30,0,0,0,0, 'Kalecgos Say text 0'),
(2799000,9,8,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,9,38017,0,30,0,0,0,0, 'Kalecgos Say text 1'),
(2799000,9,9,0,0,0,100,0,4000,4000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 4'),
(2799000,9,10,0,0,0,100,0,4000,4000,0,0,1,2,0,0,0,0,0,9,38017,0,30,0,0,0,0, 'Kalecgos Say text 2'),
(2799000,9,11,0,0,0,100,0,3000,3000,0,0,45,0,1,0,0,0,0,9,26917,0,10,0,0,0,0, 'Turn Alexstrasza'),
(2799000,9,12,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,9,26917,0,10,0,0,0,0, 'Alexstrasza Say text 0'),
(2799000,9,13,0,0,0,100,0,4000,4000,0,0,1,3,0,0,0,0,0,9,38017,0,30,0,0,0,0, 'Kalecgos Say text 3'),
(2799000,9,14,0,0,0,100,0,3000,3000,0,0,45,0,2,0,0,0,0,9,38017,0,30,0,0,0,0, 'Kalecgos resume path'),
(2799000,9,15,0,0,0,100,0,0,0,0,0,45,0,2,0,0,0,0,9,26917,0,10,0,0,0,0, 'Turn Alexstrasza back'),
(2799000,9,16,0,0,0,100,0,1000,1000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 5'),
(2799000,9,17,0,0,0,100,0,4000,4000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 6'),
(2799000,9,18,0,0,0,100,0,4000,4000,0,0,33,36715,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Give quest credit'),
(2799000,9,19,0,0,0,100,0,4000,4000,0,0,81,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Turn on Gossip & Questgiver flags'),
(2799000,9,20,0,0,0,100,0,0,0,0,0,81,3,0,0,0,0,0,9,26917,0,10,0,0,0,0, 'Turn on Gossip & Questgiver flags for Alexstrasza'),
(2799001,9,0,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Turn off Gossip & Questgiver flags'),
(2799001,9,1,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,9,26917,0,10,0,0,0,0, 'Turn of Gossip & Questgiver flags for Alexstrasza'),
(2799001,9,2,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 0'),
(2799001,9,3,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 1'),
(2799001,9,4,0,0,0,100,0,0,0,0,0,45,0,1,0,0,0,0,9,38017,0,30,0,0,0,0, 'Kalecgos start path'),
(2799001,9,5,0,0,0,100,0,4000,4000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 2'),
(2799001,9,6,0,0,0,100,0,4000,4000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 3'),
(2799001,9,7,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,9,38017,0,30,0,0,0,0, 'Kalecgos Say text 0'),
(2799001,9,8,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,9,38017,0,30,0,0,0,0, 'Kalecgos Say text 1'),
(2799001,9,9,0,0,0,100,0,4000,4000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 4'),
(2799001,9,10,0,0,0,100,0,4000,4000,0,0,1,2,0,0,0,0,0,9,38017,0,30,0,0,0,0, 'Kalecgos Say text 2'),
(2799001,9,11,0,0,0,100,0,3000,3000,0,0,45,0,1,0,0,0,0,9,26917,0,10,0,0,0,0, 'Turn Alexstrasza'),
(2799001,9,12,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,9,26917,0,10,0,0,0,0, 'Alexstrasza Say text 0'),
(2799001,9,13,0,0,0,100,0,4000,4000,0,0,1,3,0,0,0,0,0,9,38017,0,30,0,0,0,0, 'Kalecgos Say text 3'),
(2799001,9,14,0,0,0,100,0,3000,3000,0,0,45,0,2,0,0,0,0,9,38017,0,30,0,0,0,0, 'Kalecgos resume path'),
(2799001,9,15,0,0,0,100,0,0,0,0,0,45,0,2,0,0,0,0,9,26917,0,10,0,0,0,0, 'Turn Alexstrasza back'),
(2799001,9,16,0,0,0,100,0,1000,1000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 5'),
(2799001,9,17,0,0,0,100,0,4000,4000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 7'),
(2799001,9,18,0,0,0,100,0,4000,4000,0,0,33,36715,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Give quest credit'),
(2799001,9,19,0,0,0,100,0,4000,4000,0,0,81,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Turn on Gossip & Questgiver flags'),
(2799001,9,20,0,0,0,100,0,0,0,0,0,81,3,0,0,0,0,0,9,26917,0,10,0,0,0,0, 'Turn on Gossip & Questgiver flags for Alexstrasza');
DELETE FROM `creature_text` WHERE `entry` IN (26917,27990,38017);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(26917,0,0,'Mortal champions have long used these weapons to combat evil. I see no reason to keep the swords from them in this battle.',0,0,100,1,0,0,'Alexstrasza the Life-Binder'),
(27990,0,0,'You''re too late, $n. Another visitor from Dalaran came asking after information about the same prismatic dragon blades.',0,0,100,1,0,0,'Krasus'),
(27990,1,0,'From your description, I''m certain the book I loaned our visitor could allow you to easily identify the weapon.',0,0,100,25,0,0,'Krasus'),
(27990,2,0,'I''m afraid you''ll have to ask the -- Well, perhaps Kalecgos can help.',0,0,100,1,0,0,'Krasus'),
(27990,3,0,'$n may have found the remains of a prismatic blade, Kalecgos. Will you offer your help to our visitor?',0,0,100,1,0,0,'Krasus'),
(27990,4,0,'You believe our allies will not be able to control the power of the swords?',0,0,100,1,0,0,'Krasus'),
(27990,5,0,'As will we all.',0,0,100,25,0,0,'Krasus'),
(27990,6,0,'Please, mortal, speak with Arcanist Tybalin in Dalaran. He may be able to negotiate with the Sunreavers for access to the book.',0,0,100,1,0,0,'Krasus'),
(27990,7,0,'Please, mortal, seek out Magister Hathorel in Dalaran. He might be able to negotiate with the Silver Covenant for access to the book.',0,0,100,1,0,0,'Krasus'),
(38017,0,0,'Are you certain you should be helping these mortals in their quest for the sword?',0,0,100,1,0,0,'Kalecgos'),
(38017,1,0,'These blades, Krasus... They were made long ago, when things were... different.',0,0,100,1,0,0,'Kalecgos'),
(38017,2,0,'Our enemies once turned our strongest weapon against us. What makes you think the prismatic blades will be any different?',0,0,100,1,0,0,'Kalecgos'),
(38017,3,0,'As you wish, my queen. I will not stand in their way, but I will keep a close watch.',0,0,100,16,0,0,'Kalecgos');
DELETE FROM `waypoints` WHERE `entry`=38017;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(38017,1,3541.156,276.041,342.721,'talk point'),
(38017,2,3545.989,287.278,342.721,'home point');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=38017;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=38017;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (3801700,3801701);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(38017,0,0,1,38,0,100,0,0,1,0,0,80,3801700,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On dataset 0 1 run script'),
(38017,0,1,1,38,0,100,0,0,2,0,0,80,3801701,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On dataset 0 2 run script'),
(38017,0,2,3,40,0,100,0,1,38017,0,0,54,30000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Pause at wp 1'),
(38017,0,3,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,9,27990,0,15,0,0,0,0, 'turn to Krasus'),
(38017,0,4,5,40,0,100,0,2,38017,0,0,55,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Stop at wp 2'),
(38017,0,5,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'turn to pos'),
(3801700,9,0,0,0,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'dataset 0 0'),
(3801700,9,1,0,0,0,100,0,0,0,0,0,53,0,38017,0,0,0,0,1,0,0,0,0,0,0,0, 'wp start'),
(3801701,9,0,0,0,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'dataset 0 0'),
(3801701,9,1,0,0,0,100,0,0,0,0,0,65,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'wp resume');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=26917;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=26917;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(26917,0,0,1,38,0,100,0,0,1,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.6049, 'On dataset 0 1 turn'),
(26917,0,1,1,38,0,100,0,0,2,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On dataset 0 2 turn');
SET @ENTRY := 37552;
SET @GOSSIP := 37552;
SET @MENUID := 37552;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,@MENUID,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Thalorien Dawnseeker - On gossip option 0 select - Close gossip'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,85,70265,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Thalorien Dawnseeker - On gossip option 0 select - Player cast credit on self'),
(@ENTRY,0,2,1,62,0,100,0,@GOSSIP,@MENUID+1,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Thalorien Dawnseeker - On gossip option 1 select - Close gossip');
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP, `AIName`= 'SmartAI',`ScriptName`= '' WHERE `entry` = @ENTRY;
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_text`, `option_id`, `npc_option_npcflag`) VALUES (@GOSSIP, @MENUID, 'Examine the remains.', '1', '1');
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_text`, `option_id`, `npc_option_npcflag`) VALUES (@GOSSIP, @MENUID+1, 'Examine the remains.', '1', '1');
UPDATE `quest_template` SET `ReqSpellCast1` = 32042, `ReqSpellCast2` = 32042 WHERE `entry` = 9824;
UPDATE `quest_template` SET `ReqSpellCast1` = 49634, `ReqSpellCast2` = 49634, `ReqSpellCast3` = 49634, `ReqSpellCast4` = 49634 WHERE `entry` = 11245;
UPDATE `quest_template` SET `ReqSpellCast1` = 49349 WHERE `entry` = 12417;
UPDATE `quest_template` SET `ReqSpellCast1` = 48790 WHERE `entry` = 12267;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=71189;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,71189,0,18,1,37868,0,0, '', 'Dreamwalker''s Rage - target Risen Archmage'),
(13,0,71189,0,18,1,36791,0,0, '', 'Dreamwalker''s Rage - target Blazing Skeleton'),
(13,0,71189,0,18,1,37863,0,0, '', 'Dreamwalker''s Rage - target Suppresser'),
(13,0,71189,0,18,1,37934,0,0, '', 'Dreamwalker''s Rage - target Blistering Zombie'),
(13,0,71189,0,18,1,37886,0,0, '', 'Dreamwalker''s Rage - target Gluttonous Abomination'),
(13,0,71189,0,18,1,38186,0,0, '', 'Dreamwalker''s Rage - target Dream Portal (Pre-effect)'),
(13,0,71189,0,18,1,37945,0,0, '', 'Dreamwalker''s Rage - target Dream Portal'),
(13,0,71189,0,18,1,38429,0,0, '', 'Dreamwalker''s Rage - target Nightmare Portal (Pre-effect)'),
(13,0,71189,0,18,1,38430,0,0, '', 'Dreamwalker''s Rage - target Nightmare Portal'),
(13,0,71189,0,18,1,37907,0,0, '', 'Dreamwalker''s Rage - target Rot Worm');
-- TODO: this list of vehicles isn't complete, need to find more vehicles with missing immunities
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask` |
0x00000002| -- MECHANIC_DISORIENTED (Blind)
0x00000008| -- MECHANIC_DISTRACT (Distract)
0x00000010| -- MECHANIC_FEAR (Fear, Psychic Scream)
0x00000020| -- MECHANIC_GRIP (Death Grip)
0x00000040| -- MECHANIC_ROOT (Entangling Roots)
0x00000100| -- MECHANIC_SILENCE (Silence)
0x00000200| -- MECHANIC_SLEEP (Wyvern Sting)
0x00000400| -- MECHANIC_SNARE (Crippling Poison, Piercing Howl)
0x00000800| -- MECHANIC_STUN (Hammer of Justice)
0x00001000| -- MECHANIC_FREEZE (Freezing Trap)
0x00002000| -- MECHANIC_KNOUCKOUT (Gouge, Blast Wave)
-- 0x00004000| -- MECHANIC_BLEED (Rend, Deep Wounds) - requires confirmation
0x00010000| -- MECHANIC_POLYMORPH (Polymorph)
0x00040000| -- MECHANIC_SHIELD (Power word: Shield) -- maybe unnecessary, spells shouldn't be even casted on vehicles
-- 0x00200000| -- MECHANIC_INFECTED (Frost Fever, Blood Plague) - requires confirmation
0x00800000| -- MECHANIC_HORROR (warlock's Death Coil)
0x10000000| -- MECHANIC_IMMUNE_SHIELD (Hand of Protection) -- maybe unnecessary, spells shouldn't be even casted on vehicles
0x02000000| -- MECHANIC_INTERRUPT (Kick, Counterspell)
0x04000000 -- MECHANIC_DAZE (Dazed)
where entry IN (
-- Some random quest vehicles
25334, -- Horde Siege Tank
26523, -- Forsaken Blight Spreader
-- Strand of the Ancients vehicles
28781, -- Battleground Demolisher
27894, -- Antipersonnel Cannon
-- Wintergrasp vehicles
27881, -- Wintergrasp Catapult (both)
28094, -- Wintergrasp Demolisher (both)
28312, -- Wintergrasp Siege Engine (alliance)
28319, -- Wintergrasp Siege Turret (alliance)
28366, -- Wintergrasp Tower Cannon (both)
32627, -- Wintergrasp Siege Engine (horde)
32629, -- Wintergrasp Siege Turret (alliance)
-- Ulduar Vehicles
33060, -- Salvaged Siege Engine
33062, -- Salvaged Chopper
33067, -- Salvaged Siege Turret
33109, -- Salvaged Demolisher
-- Isle of Conquest vehicles
34793, -- Catapult (both)
34775, -- Demolisher (both)
34776, -- Siege Engine (alliance)
34777, -- Siege Turret (alliance)
34778, -- Flame Turret (alliance)
34802, -- Glaive Thrower (alliance)
34944, -- Keep Cannon (both)
35069, -- Siege Engine (horde)
35273, -- Glaive Thrower (horde)
36355, -- Siege Turret (horde)
36356); -- Flame Turret (horde)
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|0x80 WHERE `entry` IN (17965,34784,34825,35278,35279,35280);
DELETE FROM `achievement_criteria_data` WHERE criteria_id = 7703;
INSERT INTO `achievement_criteria_data` VALUES
(7703, 6, 4197, 0, ''),
(7703, 11, 0, 0, 'achievement_wg_didnt_stand_a_chance');
-- Gurubashi Blood Drinker SAI
SET @ENTRY := 11353;
SET @SPELL_BLOOD_LEECH := 24437; -- Blood Leech
SET @SPELL_DRAIN_LIFE := 24435; -- Drain Life
UPDATE `creature_template` SET `AIName`='SmartAI',`spell1`=24437,`spell2`=24435,`spell3`=0,`spell4`=0 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,0,0,30,0,0,11,@SPELL_BLOOD_LEECH,1,0,0,0,0,1,0,0,0,0,0,0,0,'Gurubashi Blood Drinker - At 50% HP - Cast Blood Leech');
-- (@ENTRY,0,1,0,0,0,100,0,3000,5000,9000,11000,11,@SPELL_DRAIN_LIFE,1,0,0,0,0,2,0,0,0,0,0,0,0,'Gurubashi Blood Drinker - In Combat - Cast Drain Life'); -- Need spellscript, right now it heals the player for 5000 every second

-- Hakkari Priest SAI
SET @ENTRY := 11830;
SET @SPELL_PSYCHIC_SCREAM := 13704; -- Psychic Scream
SET @SPELL_ANTI_MAGIC_SHIELD := 24021; -- Anti-Magic Shield
SET @SPELL_CLEANSE_NOVA := 24022; -- Cleanse Nova
SET @SPELL_HEAL := 22883; -- Heal
UPDATE `creature_template` SET `AIName`='SmartAI',`mechanic_immune_mask`=`mechanic_immune_mask`|1 WHERE `entry`=@ENTRY; -- Immune to charm effects (mind control)
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,30,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Hakkari Priest - On Aggro - Say Line 0 (random)'),
(@ENTRY,0,1,0,0,0,100,0,8000,8000,27000,27000,11,@SPELL_PSYCHIC_SCREAM,0,0,0,0,0,1,0,0,0,0,0,0,0,'Hakkari Priest - In Combat - Cast Psychic Scream'),
(@ENTRY,0,2,0,0,0,100,0,1000,1000,22000,24000,11,@SPELL_ANTI_MAGIC_SHIELD,0,0,0,0,0,1,0,0,0,0,0,0,0,'Hakkari Priest - In Combat - Cast Anti-Magic Shield'),
(@ENTRY,0,3,0,0,0,100,0,15000,15000,30000,30000,11,@SPELL_CLEANSE_NOVA,0,0,0,0,0,1,0,0,0,0,0,0,0,'Hakkari Priest - In Combat - Cast Cleanse Nova'),
(@ENTRY,0,4,0,2,0,100,1,0,50,0,0,11,@SPELL_HEAL,1,0,0,0,0,1,0,0,0,0,0,0,0,'Hakkari Priest - At 50% HP - Cast Heal');
-- Texts
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,'Killing you be easy!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,1,'Troll mojo da strongest mojo!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,2,'Your skull gonna decorate our ritual altars!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,3,'I gonna make you into mojo!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,4,'Feel da big bad voodoo!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,5,'My weapon be thirsty!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,6,'You be dead soon!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines');

-- Gurubashi Axe Thrower SAI
SET @ENTRY := 11350;
SET @SPELL_RANGED_THROW := 22887; -- Ranged Throw
SET @SPELL_FRENZY := 8269; -- Frenzy
SET @SPELL_AXE_FLURRY := 24018; -- Axe Flurry
UPDATE `creature_template` SET `AIName`='SmartAI',`spell1`=22887,`spell2`=24018,`spell3`=8269,`spell4`=0 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,30,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Gurubashi Axe Thrower - On Aggro - Say Line 1 (random)'),
(@ENTRY,0,1,0,9,0,100,1,5,30,1500,2000,11,@SPELL_RANGED_THROW,1,0,0,0,0,2,0,0,0,0,0,0,0,'Gurubashi Axe Thrower - On Range - Cast Ranged Throw'),
(@ENTRY,0,2,0,2,0,100,1,0,30,0,0,11,@SPELL_FRENZY,1,0,0,0,0,1,0,0,0,0,0,0,0,'Gurubashi Axe Thrower - At 30% HP - Cast Frenzy'),
(@ENTRY,0,3,0,2,0,100,1,0,30,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Gurubashi Axe Thrower - At 30% HP - Say Line 0'),
(@ENTRY,0,4,0,0,0,100,0,15000,15000,25000,28000,11,@SPELL_AXE_FLURRY,0,0,0,0,0,1,0,0,0,0,0,0,0,'Gurubashi Axe Thrower - In Combat - Cast Axe Flurry');
-- Axe Flurry whirldwind effect will now stun nearby players by throwing axes at them
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=24071 AND `spell_effect`=24020;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(24071,24020,1,'Axe Flurry will now throw axes at nearby players, stunning them');
-- Texts
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,'%s goes into a frenzy!',16,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,1,0,'Killing you be easy!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,1,1,'Troll mojo da strongest mojo!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,1,2,'Your skull gonna decorate our ritual altars!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,1,3,'I gonna make you into mojo!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,1,4,'Feel da big bad voodoo!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,1,5,'My weapon be thirsty!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,1,6,'You be dead soon!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines');

-- Portal of Madness SAI
SET @ENTRY := 15141;
SET @SPELL_SUMMON_MAD_VOIDWALKERS := 24622; -- Summon Mad Voidwalkers
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,6000,6000,6000,6000,11,@SPELL_SUMMON_MAD_VOIDWALKERS,0,0,0,0,0,1,0,0,0,0,0,0,0,'Portal of Madness - OCC - Cast Summon Mad Voidwalkers'),
(@ENTRY,0,1,0,11,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Portal of Madness - On Spawn - Set react state Passive');

-- Mad Voidwalker SAI
SET @ENTRY := 15146;
SET @SPELL_CONSUMING_SHADOW := 24614; -- Consuming Shadows
SET @SPELL_SHADOW_SHOCK := 24616; -- Shadow Shock
UPDATE `creature_template` SET `AIName`='SmartAI',`mechanic_immune_mask`=131073,`flags_extra`=64 WHERE `entry`=@ENTRY; -- Immune to Enslave and Banish and no experience gain
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,89,10,0,0,0,0,0,1,0,0,0,0,0,0,0,'Mad Voidwalker - On spawn - Set random movement'),
(@ENTRY,0,1,0,0,0,100,2,7000,9000,11000,13000,11,@SPELL_CONSUMING_SHADOW,0,0,0,0,0,2,0,0,0,0,0,0,0,'Mad Voidwalker - In Combat - Cast Consuming Shadows'),
(@ENTRY,0,2,0,0,0,100,2,3000,4000,8000,8000,11,@SPELL_SHADOW_SHOCK,0,0,0,0,0,2,0,0,0,0,0,0,0,'Mad Voidwalker - In Combat - Cast Shadow Shock'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,41,180000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Mad Voidwalker - Link - Despawn after 3 minutes');

-- Mad Servant SAI
SET @ENTRY := 15111;
SET @SPELL_PORTAL_OF_MADNESS := 24621; -- Portal of Madness
SET @SPELL_FIREBALL := 24611; -- Fireball
SET @SPELL_FLAMESTRIKE := 24612; -- Flamestrike
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,3000,4000,5000,11,@SPELL_FIREBALL,0,0,0,0,0,5,0,0,0,0,0,0,0,'Mad Servant - In Combat - Cast Fireball'),
(@ENTRY,0,1,0,0,0,100,0,6000,7000,9000,11000,11,@SPELL_FLAMESTRIKE,1,0,0,0,0,5,0,0,0,0,0,0,0,'Mad Servant - In Combat - Cast Flamestrike'),
(@ENTRY,0,2,0,6,0,100,0,0,0,0,0,11,@SPELL_PORTAL_OF_MADNESS,2,0,0,0,0,1,0,0,0,0,0,0,0,'Mad Servant - On Death - Cast Portal of Madness');

-- Razzashi Adder SAI
SET @ENTRY := 11372;
SET @SPELL_VENOM_SPIT := 24011; -- Venom Spit
SET @SPELL_EXPLOIT_WEAKNESS := 24016; -- Exploit Weakness
SET @SPELL_TRASH := 3391; -- Trash
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,85,0,3000,3000,15000,18000,11,@SPELL_VENOM_SPIT,1,0,0,0,0,5,0,0,0,0,0,0,0,'Razzashi Adder - In Combat - Cast Venom Spit'),
(@ENTRY,0,1,0,0,0,100,0,10000,11000,20000,20000,11,@SPELL_EXPLOIT_WEAKNESS,1,0,0,0,0,2,0,0,0,0,0,0,0,'Razzashi Adder - In Combat - Cast Exploit Weakness'),
(@ENTRY,0,2,0,0,0,100,0,9000,9000,11000,14000,11,@SPELL_TRASH,1,0,0,0,0,1,0,0,0,0,0,0,0,'Razzashi Adder - In Combat - Cast Trash');

-- Gurubashi Headhunter SAI
SET @ENTRY := 11351;
SET @SPELL_THROW := 22887; -- Throw
SET @SPELL_WHIRLING_TRIP := 24048; -- Whirling Trip
SET @SPELL_MORTAL_STRIKE := 15708; -- Mortal Strike
UPDATE `creature_template` SET `AIName`='SmartAI',`spell1`=22887,`spell2`=15708,`spell3`=0,`spell4`=0 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,30,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Gurubashi Headhunter - On Aggro - Say Line 0'),
(@ENTRY,0,1,0,9,0,100,0,5,30,1500,2000,11,@SPELL_THROW,1,0,0,0,0,2,0,0,0,0,0,0,0,'Gurubashi Headhunter - On Range - Cast Throw'),
(@ENTRY,0,2,0,0,0,100,0,3000,5000,7000,8000,11,@SPELL_WHIRLING_TRIP,1,0,0,0,0,1,0,0,0,0,0,0,0,'Gurubashi Headhunter - In Combat - Cast Whirlwing Trip'),
(@ENTRY,0,3,0,0,0,100,1,7000,8000,15000,15000,11,@SPELL_MORTAL_STRIKE,1,0,0,0,0,2,0,0,0,0,0,0,0,'Gurubashi Headhunter - In Combat - Cast Mortal Strike');
-- Texts
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,'Killing you be easy!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,1,'Troll mojo da strongest mojo!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,2,'Your skull gonna decorate our ritual altars!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,3,'I gonna make you into mojo!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,4,'Feel da big bad voodoo!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,5,'My weapon be thirsty!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,6,'You be dead soon!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines');

-- Hakkari Witch Doctor SAI
SET @ENTRY := 11831;
SET @SPELL_HEX := 24053; -- Hex
SET @SPELL_RELEASE_TOADS := 24058; -- Release Toads - needs work
SET @SPELL_SHADOW_SHOCK := 17289; -- Shadow Shock
UPDATE `creature_template` SET `AIName`='SmartAI',`spell1`=24053,`spell2`=17289,`spell3`=24054,`spell4`=0 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,30,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Hakkari Witch Doctor - On Aggro - Say Line 0'),
(@ENTRY,0,1,0,0,0,100,0,7000,9000,15000,17000,11,@SPELL_HEX,1,0,0,0,0,2,0,0,0,0,0,0,0,'Hakkari Witch Doctor - In Combat - Cast Hex'),
(@ENTRY,0,2,0,0,0,100,0,5000,6000,12000,13000,11,@SPELL_SHADOW_SHOCK,1,0,0,0,0,2,0,0,0,0,0,0,0,'Hakkari Witch Doctor - In Combat - Cast Shadow Shock');
-- (@ENTRY,0,2,0,0,0,100,0,15000,16000,20000,22000,11,@SPELL_RELEASE_TOADS,1,0,0,0,0,1,0,0,0,0,0,0,0,'Hakkari Witch Doctor - Cast Release Toads'); -- Spell needs work
-- Texts
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,'Killing you be easy!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,1,'Troll mojo da strongest mojo!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,2,'Your skull gonna decorate our ritual altars!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,3,'I gonna make you into mojo!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,4,'Feel da big bad voodoo!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,5,'My weapon be thirsty!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,6,'You be dead soon!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines');

-- Bloodseeker Bat SAI
SET @ENTRY := 11368;
SET @SPELL_CHARGE := 24023; -- Charge
UPDATE `creature_template` SET `AIName`='SmartAI',`unit_flags`=512 WHERE `entry`=@ENTRY; -- Will now be attackable
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,@SPELL_CHARGE,1,0,0,0,0,2,0,0,0,0,0,0,0,'Bloodseeker Bat - On Aggro - Cast Charge');
-- Charge will now also trigger Fixate (cast on bat)
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=24023 AND `spell_effect`=12021;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(24023,12021,1,'Charge (24023) will now trigger Fixate'); -- Bloodseeker Bat's charge

-- Razzashi Venombrood SAI
SET @ENTRY := 14532;
SET @SPELL_INTOXICATING_VENOM := 24596; -- Intoxicating Venom
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,1,5000,7000,11000,13000,11,@SPELL_INTOXICATING_VENOM,1,0,0,0,0,2,0,0,0,0,0,0,0,'Razzashi Venombrood - In Combat - Cast Intoxicating Venom');

-- Razzashi Broodwidow SAI
SET @ENTRY := 11370;
SET @SPELL_WEB_SPIN := 24600; -- Web Spin
SET @SPELL_SUMMON_RAZZASHI_SKITTERER := 24598; -- Summon Razzashi Skitterer (x5)
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,9000,10000,14000,15000,11,@SPELL_WEB_SPIN,1,0,0,0,0,2,0,0,0,0,0,0,0,'Razzashi Broodwidow - In Combat - Cast Web Spin'),
(@ENTRY,0,1,0,6,0,100,0,0,0,0,0,11,@SPELL_SUMMON_RAZZASHI_SKITTERER,2,0,0,0,0,1,0,0,0,0,0,0,0,'Razzashi Broodwidow - On Death - Cast Summon Razzashi Skitterer');

-- Hakkari Shadowcaster SAI
SET @ENTRY := 11338;
SET @SPELL_MANA_BURN := 22947; -- Mana Burn
SET @SPELL_SHADOW_BOLT := 15232; -- Shadow Bolt
SET @SPELL_SHADOW_BOLT_VOLLEY := 20741; -- Shadow Bolt Volley
UPDATE `creature_template` SET `AIName`='SmartAI',`spell1`=15232,`spell2`=20741,`spell3`=0,`spell4`=0 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,6000,11000,13000,11,@SPELL_MANA_BURN,1,0,0,0,0,5,0,0,0,0,0,0,0,'Hakkari Shadowcaster - In Combat - Cast Mana Burn'),
(@ENTRY,0,1,0,0,0,100,0,7000,9000,12000,14000,11,@SPELL_SHADOW_BOLT,1,0,0,0,0,2,0,0,0,0,0,0,0,'Hakkari Shadowcaster - In Combat - Cast Shadow Bolt'),
(@ENTRY,0,2,0,0,0,100,0,7000,9000,12000,14000,11,@SPELL_SHADOW_BOLT_VOLLEY,1,0,0,0,0,2,0,0,0,0,0,0,0,'Hakkari Shadowcaster - In Combat - Cast Shadow Bolt Volley');

-- Razzashi Raptor SAI
SET @ENTRY := 14821;
SET @SPELL_ENRAGE := 8599; -- Enrage
SET @SPELL_INFECTED_BITE := 24339; -- Infected Bite
SET @SPELL_TRASH := 3391; -- Trash
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,6500,6500,8000,8000,11,@SPELL_INFECTED_BITE,1,0,0,0,0,2,0,0,0,0,0,0,0,'Razzashi Raptor - In Combat - Cast Infected Bite'),
(@ENTRY,0,1,0,0,0,100,0,7000,8000,9000,10000,11,@SPELL_TRASH,1,0,0,0,0,1,0,0,0,0,0,0,0,'Razzashi Raptor - In Combat - Cast Trash'),
(@ENTRY,0,2,0,2,0,100,1,0,30,0,0,11,@SPELL_ENRAGE,1,0,0,0,0,1,0,0,0,0,0,0,0,'Razzashi Raptor - At 30% HP - Cast Enrage'),
(@ENTRY,0,3,0,2,0,100,1,0,30,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Razzashi Raptor - At 30% HP - Say Line 0');
-- Enrage text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,'%s becomes enraged!',16,0,100,0,0,0,'Razzashi Raptor - At 30% HP - Say Line 0');

-- Gurubashi Champion SAI
SET @ENTRY := 11356;
SET @SPELL_BATTLE_SHOUT := 24438; -- Battle Shout
SET @SPELL_CHARGE := 22886; -- Berserker Charge
SET @SPELL_STRIKE := 22591; -- Strike
SET @SPELL_SHIELD_SLAM := 15655; -- Shield Slam
UPDATE `creature_template` SET `AIName`='SmartAI',`spell1`=22886,`spell2`=22591,`spell3`=15655,`spell4`=0 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,30,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Gurubashi Champion - On aggro - Say Line 0'),
(@ENTRY,0,1,0,4,0,100,0,0,0,0,0,11,@SPELL_BATTLE_SHOUT,1,0,0,0,0,1,0,0,0,0,0,0,0,'Gurubashi Champion - On Aggro - Cast Battle Shout'),
(@ENTRY,0,2,0,0,0,100,0,3000,3000,9000,10000,11,@SPELL_STRIKE,1,0,0,0,0,2,0,0,0,0,0,0,0,'Gurubashi Champion - In Combat - Cast Strike'),
(@ENTRY,0,3,0,0,0,100,0,11000,13000,20000,22000,11,@SPELL_CHARGE,1,0,0,0,0,2,0,0,0,0,0,0,0,'Gurubashi Champion - In Combat - Cast Berserker Charge'),
(@ENTRY,0,4,0,0,0,100,0,6000,6000,9000,9000,11,@SPELL_SHIELD_SLAM,1,0,0,0,0,2,0,0,0,0,0,0,0,'Gurubashi Champion - In Combat - Cast Shield Shalm');
-- Texts
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,'Killing you be easy!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,1,'Troll mojo da strongest mojo!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,2,'Your skull gonna decorate our ritual altars!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,3,'I gonna make you into mojo!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,4,'Feel da big bad voodoo!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,5,'My weapon be thirsty!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,6,'You be dead soon!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines');

-- Zulian Panther SAI
SET @ENTRY := 11365;
SET @SPELL_RAKE := 24332; -- Rake
SET @SPELL_RAVAGE := 24333; -- Ravage
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,4000,9000,11000,13000,11,@SPELL_RAKE,1,0,0,0,0,2,0,0,0,0,0,0,0,'Zulian Panther - In Combat - Cast Rake'),
(@ENTRY,0,1,0,0,0,100,0,11000,12000,22000,23000,11,@SPELL_RAVAGE,1,0,0,0,0,2,0,0,0,0,0,0,0,'Zulian Panther - In Combat - Cast Ravage');

-- Gurubashi SAI
-- This one needs some work. It's summoned when opening a Voodoo Pile (spawned all over the instance) and should mind control the player for some seconds, but SAI refuses to cast the spell
SET @ENTRY := 15047;
SET @SPELL_WILL_OF_HAKKAR := 24178; -- Will of Hakkar
UPDATE `creature_template` SET `AIName`='SmartAI',`unit_flags`=33554434 WHERE `entry`=@ENTRY; -- Set unattackable, untargetable
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Portal of Madness - On Spawn - Set react state Passive'), -- Temporarily workaround. It shouldn't attack players, but need core support for creatures mind controlling players
(@ENTRY,0,1,0,0,0,100,0,5,5,5,5,11,@SPELL_WILL_OF_HAKKAR,1,0,0,0,0,2,0,0,0,0,0,0,0,'Gurubashi - In Combat - Cast Will Of Hakkar');

-- Hakkari Shadow Hunter SAI
SET @ENTRY := 11339;
SET @SPELL_SHOOT := 16496; -- Shoot
SET @SPELL_MULTI_SHOT := 21390; -- Multi-shot
SET @SPELL_WYVERN_STING := 24335; -- Wyvern Sting
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,30,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Hakkari Shadow Hunter - On aggro - Emote Line 0'),
(@ENTRY,0,1,0,4,0,100,0,0,0,0,0,11,@SPELL_SHOOT,1,0,0,0,0,2,0,0,0,0,0,0,0,'Hakkari Shadow Hunter - On Aggro - Cast Shoot'),
(@ENTRY,0,2,0,0,0,100,0,1000,1000,2000,3000,11,@SPELL_SHOOT,1,0,0,0,0,2,0,0,0,0,0,0,0,'Hakkari Shadow Hunter - In Combat - Cast Shoot'),
(@ENTRY,0,3,0,0,0,100,0,10000,10000,14000,16000,11,@SPELL_MULTI_SHOT,1,0,0,0,0,5,0,0,0,0,0,0,0,'Hakkari Shadow Hunter - In Combat - Cast Multi-Shot'),
(@ENTRY,0,4,0,0,0,100,0,12000,13000,17000,19000,11,@SPELL_WYVERN_STING,1,0,0,0,0,5,0,0,0,0,0,0,0,'Hakkari Shadow Hunter - In Combat - Cast Wyvern Sting');
-- Texts
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,'Killing you be easy!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,1,'Troll mojo da strongest mojo!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,2,'Your skull gonna decorate our ritual altars!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,3,'I gonna make you into mojo!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,4,'Feel da big bad voodoo!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,5,'My weapon be thirsty!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,6,'You be dead soon!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines');

-- 24247, 24246, 24222
-- Zulian Prowler SAI
SET @ENTRY := 15101;
SET @SPELL_TRASH := 3391; -- Trash
SET @SPELL_STEALTH := 24246; -- Stealth
SET @SPELL_VANISH_VISUAL := 24222; -- Vanish Visual
SET @SPELL_XXXXXX := 24247; -- Need more information and DBC
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,7000,8000,9000,10000,11,@SPELL_TRASH,1,0,0,0,0,1,0,0,0,0,0,0,0,'Zulian Prowler - In Combat - Cast Trash');
-- (@ENTRY,0,1,0,11,0,100,0,0,0,0,0,11,@SPELL_STEALTH,0,0,0,0,0,1,0,0,0,0,0,0,0,'Zulian Prowler - On Spawn - Cast Stealth'), -- Needs to be implented in DBCs, together with 24247
-- (@ENTRY,0,2,0,11,0,100,0,0,0,0,0,11,@SPELL_VANISH_VISUAL,0,0,0,0,0,1,0,0,0,0,0,0,0,'Zulian Prowler - On Spawn - Cast Vanish Visual');

-- Atal'ai Mistress SAI
SET @ENTRY := 14882;
SET @SPELL_TRASH := 3391; -- Trash
SET @SPELL_CURSE_OF_BLOOD := 24673; -- Curse of Blood
SET @SPELL_SNAP_KICK := 24671; -- Snap Kick
UPDATE `creature_template` SET `AIName`='SmartAI',`spell1`=3391,`spell2`=24673,`spell3`=0,`spell4`=0 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,7000,8000,9000,10000,11,@SPELL_TRASH,1,0,0,0,0,1,0,0,0,0,0,0,0,'Atalai Mistress - In Combat - Cast Trash'),
(@ENTRY,0,1,0,0,0,100,0,11000,14000,22000,22000,11,@SPELL_CURSE_OF_BLOOD,1,0,0,0,0,2,0,0,0,0,0,0,0,'Atalai Mistress - In Combat - Cast Curse of Blood'),
(@ENTRY,0,2,0,0,0,100,0,9000,12000,22000,22000,11,@SPELL_SNAP_KICK,1,0,0,0,0,2,0,0,0,0,0,0,0,'Atalai Mistress - In Combat - Cast Snap Kick');

-- Zulian Crocolisk SAI
SET @ENTRY := 15043;
SET @SPELL_REND := 13445; -- Rend
SET @SPELL_TENDON_RIP := 3604; -- Tendon Rip
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,8000,9000,11000,12000,11,@SPELL_TENDON_RIP,1,0,0,0,0,2,0,0,0,0,0,0,0,'Zulian Crocolisk - In Combat - Cast Tendon Rip'),
(@ENTRY,0,1,0,0,0,100,0,17000,19000,22000,24000,11,@SPELL_REND,1,0,0,0,0,2,0,0,0,0,0,0,0,'Zulian Crocolisk - In Combat - Cast Rend');

-- Hooktooth Frenzy SAI
SET @ENTRY := 11374;
SET @SPELL_PIERCE_ARMOR := 12097; -- Pierce Armor
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_loot_template` WHERE `entry`=@ENTRY AND `item`=19221; -- Remove incorrect item from loot table (Darkmoon Special Reserve)
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,5000,11000,11000,11,@SPELL_PIERCE_ARMOR,1,0,0,0,0,2,0,0,0,0,0,0,0,'Hooktooth Frenzy - In Combat - Cast Pierce Armor');

-- Son of Hakkar SAI
SET @ENTRY := 11357;
SET @SPELL_TRASH := 3391; -- Trash
SET @SPELL_KNOCKDOWN := 16790; -- Knockdown
SET @SPELL_POISONOUS_BLOOD := 24320; -- Poisonous Blood
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,7000,8000,9000,10000,11,@SPELL_TRASH,1,0,0,0,0,1,0,0,0,0,0,0,0,'Son of Hakkar - In Combat - Cast Trash'),
(@ENTRY,0,1,0,0,0,100,0,11000,13000,19000,22000,11,@SPELL_KNOCKDOWN,1,0,0,0,0,2,0,0,0,0,0,0,0,'Son of Hakkar - In Combat - Cast Knockdown'),
(@ENTRY,0,2,0,6,0,100,0,0,0,0,0,11,@SPELL_POISONOUS_BLOOD,2,0,0,0,0,1,0,0,0,0,0,0,0,'Mad Servant - In Combat - Cast Poisonous Blood'); -- Spell needs work

-- Soulflayer SAI
SET @ENTRY := 11359;
SET @SPELL_FEAR := 22678; -- Fear
SET @SPELL_FRENZY := 8269; -- Frenzy
SET @SPELL_SOUL_TAP := 24619; -- Soul Tap
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,16000,19000,2100,23000,11,@SPELL_FEAR,1,0,0,0,0,5,0,0,0,0,0,0,0,'Soulflayer - In Combat - Cast Fear'),
(@ENTRY,0,1,0,0,0,100,0,10000,14000,20000,22000,11,@SPELL_SOUL_TAP,0,0,0,0,0,2,0,0,0,0,0,0,0,'Soulflayer - In Combat - Cast Soul Tap'),
(@ENTRY,0,2,0,2,0,100,1,0,30,0,0,11,@SPELL_FRENZY,1,0,0,0,0,1,0,0,0,0,0,0,0,'Soulflayer - At 30% HP - Cast Frenzy'),
(@ENTRY,0,3,0,2,0,100,1,0,30,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Soulflayer - At 30% HP - Say Line 0');
-- Frenzy text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,'%s goes into a frenzy!',16,0,100,0,0,0,'Soulflayer - At 30% HP - Say Line 0');

-- Razzashi Cobra SAI
SET @ENTRY := 11373;
SET @SPELL_POISON := 24097; -- Poison
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,7000,9000,11000,13000,11,@SPELL_POISON,1,0,0,0,0,2,0,0,0,0,0,0,0,'Razzashi Cobra - In Combat - Cast Poison');

-- Hakkari Blood Priest SAI
SET @ENTRY := 11340;
SET @SPELL_DRAIN_LIFE := 24618; -- Drain Life
SET @SPELL_BLOOD_FUNNEL := 24617; -- Blood Funnel
SET @SPELL_DISPEL_MAGIC := 17201; -- Dispel Magic
UPDATE `creature_template` SET `AIName`='SmartAI',`spell1`=24618,`spell2`=0,`spell3`=0,`spell4`=0 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,30,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Hakkari Blood Priest - On Aggro - Emote Line'),
(@ENTRY,0,1,0,0,0,100,0,10000,10000,15000,15000,11,@SPELL_DISPEL_MAGIC,1,0,0,0,0,1,0,0,0,0,0,0,0,'Hakkari Blood Priest - In Combat - Cast Dispel Magic'),
(@ENTRY,0,2,0,2,0,100,0,0,30,0,0,11,@SPELL_DRAIN_LIFE,1,0,0,0,0,1,0,0,0,0,0,0,0,'Hakkari Blood Priest - At 30% HP - Cast Drain Life');
-- (@ENTRY,0,3,0,0,0,85,0,5000,5000,15000,18000,11,@SPELL_BLOOD_FUNNEL,1,0,0,0,0,2,0,0,0,0,0,0,0,'Hakkari Blood Priest - In Combat - Cast Blood Funnel'), -- Need spellscript, heals player (target)
-- Texts
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,'Killing you be easy!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,1,'Troll mojo da strongest mojo!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,2,'Your skull gonna decorate our ritual altars!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,3,'I gonna make you into mojo!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,4,'Feel da big bad voodoo!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,5,'My weapon be thirsty!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines'),
(@ENTRY,0,6,'You be dead soon!',12,0,100,0,0,0,'Part of the ZulGurub on aggro lines');

-- Voodoo Slave SAI
SET @ENTRY := 14883;
SET @SPELL_LIGHTNING_BLAST := 43996; -- Lightning Blast
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,0,0,100,0,3000,3000,6000,9000,11,@SPELL_LIGHTNING_BLAST,1,0,0,0,0,2,0,0,0,0,0,0,0,'Voodoo Slave - In Combat - Cast Lightning Blast');

-- Withered Mistress SAI
SET @ENTRY := 14825;
SET @SPELL_CURSE := 24673; -- Curse of Blood
SET @SPELL_DISPEL := 17201; -- Dispel Magic
SET @SPELL_VEIL_OF_SHADOW := 24674; -- Veil of Shadow
SET @SPELL_UNHOLY_FRENZY := 24672; -- Unholy Frenzy
UPDATE `creature_template` SET `AIName`='SmartAI',`spell1`=3391,`spell2`=24673,`spell3`=0,`spell4`=0 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,11000,14000,22000,22000,11,@SPELL_CURSE,1,0,0,0,0,2,0,0,0,0,0,0,0,'Withered Mistress - In Combat - Cast Curse of Blood'),
(@ENTRY,0,1,0,0,0,100,0,4000,5000,23000,26000,11,@SPELL_DISPEL,0,0,0,0,0,1,0,0,0,0,0,0,0,'Withered Mistress - In Combat - Cast Dispel Magic'),
(@ENTRY,0,2,0,2,0,100,1,0,50,0,0,11,@SPELL_UNHOLY_FRENZY,1,0,0,0,0,1,0,0,0,0,0,0,0,'Withered Mistress - At 50% HP - Cast Unholy Frenzy'),
(@ENTRY,0,3,0,2,0,100,1,0,20,0,0,11,@SPELL_UNHOLY_FRENZY,1,0,0,0,0,1,0,0,0,0,0,0,0,'Withered Mistress - At 20% HP - Cast Unholy Frenzy');

-- Zulian Cub SAI
SET @ENTRY := 11360;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,0,0,15,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Zulian Cub - At 15% HP - Flee'),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Zulian Cub - At 15% HP - Emote line 0');
-- Insert emote
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,'%s attempts to run away in fear!',16,0,100,0,0,0,'Zulian Cub - At 15% HP - Emote line 0');

-- Gurubashi Berserker SAI
SET @ENTRY := 11352;
SET @SPELL_THUNDERCLAP := 15588; -- Thunderclap
SET @SPELL_KNOCK_AWAY := 11130; -- Knock Away
SET @SPELL_INTIMIDATING_ROAR := 16508; -- Intimidating Roar
SET @SPELL_FRENZY := 8269; -- Frenzy
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,3000,15000,15000,11,@SPELL_INTIMIDATING_ROAR,1,0,0,0,0,2,0,0,0,0,0,0,0,'Gurubashi Berserker - In Combat - Cast Intimidating Roar'),
(@ENTRY,0,1,0,0,0,100,0,10000,10000,12000,12000,11,@SPELL_KNOCK_AWAY,1,0,0,0,0,2,0,0,0,0,0,0,0,'Gurubashi Berserker - In Combat - Cast Knock Away'),
(@ENTRY,0,2,0,0,0,100,0,5000,5000,13000,18000,11,@SPELL_THUNDERCLAP,1,0,0,0,0,1,0,0,0,0,0,0,0,'Gurubashi Berserker - In Combat - Cast Thunderclap'),
(@ENTRY,0,3,0,2,0,100,1,0,30,0,0,11,@SPELL_FRENZY,1,0,0,0,0,1,0,0,0,0,0,0,0,'Gurubashi Berserker - At 30% HP - Cast Frenzy'),
(@ENTRY,0,4,0,2,0,100,1,0,30,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Gurubashi Berserker - At 30% HP - Emote Line 0');
-- Frenzy text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,'%s goes into a frenzy!',16,0,100,0,0,0,'Gurubashi Berserker - At 30% HP - Emote Line 0');

-- Razzashi Serpent SAI
SET @ENTRY := 11371;
SET @SPELL_FATAL_BITE := 20539; -- Fatal Bite
SET @SPELL_PIERCE_ARMOR := 12097; -- Pierce Armor
SET @SPELL_TRANQUILIZING_POISON := 24002; -- Tranquilizing Poison
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,7000,9000,12000,15000,11,@SPELL_FATAL_BITE,1,0,0,0,0,2,0,0,0,0,0,0,0,'Razzashi Serpent - In Combat - Cast Fatal Bite'),
(@ENTRY,0,1,0,0,0,100,0,9000,11000,14000,17000,11,@SPELL_TRANQUILIZING_POISON,1,0,0,0,0,5,0,0,0,0,0,0,0,'Razzashi Serpent - In Combat - Cast Tranquilizing Poison'),
(@ENTRY,0,2,0,0,0,100,0,3000,5000,11000,11000,11,@SPELL_PIERCE_ARMOR,1,0,0,0,0,2,0,0,0,0,0,0,0,'Razzashi Serpent - In Combat - Cast Pierce Armor');

-- Skullspitter Speaker SAI
SET @ENTRY := 11390;
SET @SPELL_HEAD_CRACK := 16172; -- Head Crack
SET @SPELL_WHIRLING_TRIP := 24048; -- Whirling Trip
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,16000,19000,1100,13000,11,@SPELL_HEAD_CRACK,1,0,0,0,0,2,0,0,0,0,0,0,0,'Skullspitter Speaker - In Combat - Cast Head Crack'),
(@ENTRY,0,1,0,0,0,100,0,8000,9000,7000,8000,11,@SPELL_WHIRLING_TRIP,1,0,0,0,0,2,0,0,0,0,0,0,0,'Skullspitter Speaker - In Combat - Cast Whirlwing Trip');
-- Remove old addon data
DELETE FROM `creature_addon` WHERE `guid`=49257;
DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@ENTRY,0,8,1,0,NULL); -- Make Skullspitter Speaker kneel

-- Bloodscalp Speaker SAI
SET @ENTRY := 11389;
SET @SPELL_DISARM := 6713; -- Disarm
SET @SPELL_REND := 16509; -- Rend
SET @SPELL_ENRAGE := 8599; -- Enrage
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,6000,9000,11000,13000,11,@SPELL_REND,1,0,0,0,0,2,0,0,0,0,0,0,0,'Bloodscalp Speaker - In Combat - Cast Rend'),
(@ENTRY,0,1,0,0,0,100,0,9000,10000,13000,16000,11,@SPELL_DISARM,1,0,0,0,0,2,0,0,0,0,0,0,0,'Bloodscalp Speaker - In Combat - Cast Disarm');
-- Remove old addon data
DELETE FROM `creature_addon` WHERE `guid`=49288;
DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@ENTRY,0,8,1,0,NULL); -- Make Bloodscalp Speaker kneel

-- Vilebranch Speaker SAI
SET @ENTRY := 11391;
SET @SPELL_CLEAVE := 15284; -- Cleave
SET @SPELL_DEMORALIZING_SHOUT := 13730; -- Demoralizing Shout
SET @SPELL_ENRAGE := 8599; -- Enrage
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,@SPELL_DEMORALIZING_SHOUT,1,0,0,0,0,2,0,0,0,0,0,0,0,'Vilebranch Speaker - On Aggro - Cast Demoralizing Shout'),
(@ENTRY,0,1,0,0,0,100,0,9000,10000,1300,16000,11,@SPELL_CLEAVE,1,0,0,0,0,2,0,0,0,0,0,0,0,'Vilebranch Speaker - In Combat - Cast Cleave');
-- Remove old addon data
DELETE FROM `creature_addon` WHERE `guid`=49656;
DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@ENTRY,0,0,1,20,NULL); -- Make Vilebranch Speaker beg

-- Witherbark Speaker SAI
SET @ENTRY := 11388;
SET @SPELL_EARTH_SHOCK := 22885; -- Earth Shock
SET @SPELL_FROST_SHOCK := 21401; -- Frost Shock
SET @SPELL_LIGHTNING_BOLT := 15801; -- Lightning Bolt
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,@SPELL_FROST_SHOCK,0,0,0,0,0,2,0,0,0,0,0,0,0,'Witherbark Speaker - On Aggro - Cast Frost Shock'),
(@ENTRY,0,1,0,0,0,100,0,9000,10000,13000,16000,11,@SPELL_LIGHTNING_BOLT,0,0,0,0,0,2,0,0,0,0,0,0,0,'Witherbark Speaker - In Combat - Cast Lightning Bolt'),
(@ENTRY,0,2,0,0,0,100,0,5000,7000,10000,11000,11,@SPELL_EARTH_SHOCK,0,0,0,0,0,2,0,0,0,0,0,0,0,'Witherbark Speaker - In Combat - Cast Earth Shock');
-- Remove old addon data
DELETE FROM `creature_addon` WHERE `guid`=49657;
DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@ENTRY,0,0,1,20,NULL); -- Make Witherbark Speaker beg

-- Gurubashi Bat Rider SAI
SET @ENTRY := 14750;
SET @SPELL_DEMORALIZING_SHOUT := 23511; -- Demoralizing Shout
SET @SPELL_BATTLE_COMMAND := 5115; -- Battle Command
SET @SPELL_INFECTED_BITE := 16128; -- Infected Bite
SET @SPELL_TRASH := 3391; -- Trash
SET @SPELL_UNSTABLE_CONCOCTION := 24024; -- Unstable Concoction
SET @SPELL_THROW_LIQUID_FIRE := 23968; -- Throw Liquid Fire
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,@SPELL_DEMORALIZING_SHOUT,0,0,0,0,0,2,0,0,0,0,0,0,0,'Gurubashi Bat Rider - On Aggro - Cast Demoralizing Shout'),
(@ENTRY,0,1,0,0,0,100,0,8000,8000,25000,25000,11,@SPELL_BATTLE_COMMAND,0,0,0,0,0,1,0,0,0,0,0,0,0,'Gurubashi Bat Rider - On Combat - Cast Battle Command'),
(@ENTRY,0,2,0,0,0,100,0,6500,6500,8000,8000,11,@SPELL_INFECTED_BITE,0,0,0,0,0,2,0,0,0,0,0,0,0,'Gurubashi Bat Rider - On Combat - Cast Infected Bite'),
(@ENTRY,0,3,0,0,0,100,0,6000,6000,6000,6000,11,@SPELL_TRASH,0,0,0,0,0,1,0,0,0,0,0,0,0,'Gurubashi Bat Rider - On Combat - Cast Trash'),
(@ENTRY,0,4,0,2,0,100,1,0,30,0,0,11,@SPELL_UNSTABLE_CONCOCTION,4,0,0,0,0,1,0,0,0,0,0,0,0,'Gurubashi Bat Rider - At 30% HP - Cast Unstable Concoction'),
(@ENTRY,0,5,0,2,0,100,1,0,30,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Gurubashi Bat Rider - At 30% HP - Emote Line 0');
-- Insert emote
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,'%s fully engulfs in flame and a maddened look appears in his eyes!',16,0,100,0,0,0,'Gurubashi Bat Rider - On Unstable Concoction cast - Emote Line 0');
-- Variable
SET @GOSSIP := 21258; -- gossip_menu.entry
-- Set actual gossip for Zanza the Restless
UPDATE `creature_template` SET `gossip_menu_id`=@GOSSIP+0 WHERE `entry`=15042;
-- Insert gossip menu itself
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP+0 AND `text_id`=7594;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP+0,7594);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP+0 AND `text_id`=7595;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP+0,7595);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP+1 AND `text_id`=7596;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP+1,7596);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP+2 AND `text_id`=7597;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP+2,7597);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP+3 AND `text_id`=7598;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP+3,7598);
-- Insert the gossip menu options, redirects to the next page which forms a short story by Zanza
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (@GOSSIP+0,@GOSSIP+1,@GOSSIP+2);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`) VALUES
(@GOSSIP+0,0,0,'I think I have heard of this magic.',1,3,@GOSSIP+1,0,0,0,''),
(@GOSSIP+1,0,0,'Arcanum? That sounds very familiar.',1,3,@GOSSIP+2,0,0,0,''),
(@GOSSIP+2,0,0,'What are the components?',1,3,@GOSSIP+3,0,0,0,'');
-- Conditions for gossip menu, the 'story' Zanza tells you becomes available when you hit exalted with Zandalar Tribe.
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup` BETWEEN @GOSSIP+0 AND @GOSSIP+3;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`Comment`) VALUES
(14,@GOSSIP+0,7594,0,5,270,3,0,0,"Only show text_id 7594 if player is neutral with Zandalar Tribe (270)"),
(14,@GOSSIP+0,7594,1,5,270,4,0,0,"Only show text_id 7594 if player is friendly with Zandalar Tribe (270)"),
(14,@GOSSIP+0,7594,2,5,270,5,0,0,"Only show text_id 7594 if player is honored with Zandalar Tribe (270)"),
(14,@GOSSIP+0,7594,3,5,270,6,0,0,"Only show text_id 7594 if player is reveved with Zandalar Tribe (270)"),
(14,@GOSSIP+0,7595,0,5,270,7,0,0,"Only show text_id 7595 if player is exalted with Zandalar Tribe (270)"),
(15,@GOSSIP+0,0,0,5,270,7,0,0,"Only show gossip option if player is exalted with Zandalar Tribe (270)"),
(15,@GOSSIP+1,0,0,5,270,7,0,0,"Only show gossip option if player is exalted with Zandalar Tribe (270)"),
(15,@GOSSIP+2,0,0,5,270,7,0,0,"Only show gossip option if player is exalted with Zandalar Tribe (270)");
-- Molthor SAI
SET @ENTRY := 14875;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,64,0,100,0,0,0,0,0,5,4,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Molthor - On Gossip Hello - Play Emote Cheer");
-- Zandalar Headshrinker: 14876
SET @GUID := 960;
SET @PATH := @GUID;
UPDATE `creature` SET `MovementType`=2,`position_x`=-11829.594727,`position_y`=1269.249512,`position_z`=1.430709,`orientation`=1.842991 WHERE `guid`=@GUID;
DELETE FROM `creature_addon` WHERE `guid`=@GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@GUID,@PATH,1,0,'');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-11835.188477,1288.131714,1.291541,0,0,0,100,0),
(@PATH,2,-11829.594727,1269.249512,1.430709,0,0,0,100,0),
(@PATH,3,-11823.579102,1251.472412,2.542836,0,0,0,100,0),
(@PATH,4,-11823.824219,1252.372681,2.492942,0,0,0,100,0),
(@PATH,5,-11814.262695,1246.662720,2.205406,0,0,0,100,0),
(@PATH,6,-11791.875977,1262.220703,1.538649,0,0,0,100,0),
(@PATH,7,-11766.643555,1275.045776,3.064182,0,0,0,100,0),
(@PATH,8,-11791.875977,1262.220703,1.538649,0,0,0,100,0),
(@PATH,9,-11814.262695,1246.662720,2.205406,0,0,0,100,0),
(@PATH,10,-11823.824219,1252.372681,2.492942,0,0,0,100,0),
(@PATH,11,-11823.579102,1251.472412,2.542836,0,0,0,100,0),
(@PATH,12,-11829.594727,1269.249512,1.430709,0,0,0,100,0),
(@PATH,13,-11835.188477,1288.131714,1.291541,0,0,0,100,0);
-- Zandalar Headshrinker: 14876
SET @GUID := 938;
SET @PATH := @GUID;
UPDATE `creature` SET `MovementType`=2,`position_x`=-11832.375977,`position_y`=1271.938721,`position_z`=1.459813,`orientation`=1.842991 WHERE `guid`=@GUID;
DELETE FROM `creature_addon` WHERE `guid`=@GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@GUID,@PATH,1,0,'');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-11837.279297,1288.950317,1.512615,0,0,0,100,0),
(@PATH,2,-11832.375977,1271.938721,1.459813,0,0,0,100,0),
(@PATH,3,-11825.054688,1251.701782,2.429044,0,0,0,100,0),
(@PATH,4,-11823.474609,1249.535645,2.501543,0,0,0,100,0),
(@PATH,5,-11813.486328,1243.423096,1.650653,0,0,0,100,0),
(@PATH,6,-11809.788086,1243.615967,1.399789,0,0,0,100,0),
(@PATH,7,-11794.386719,1257.631592,1.222988,0,0,0,100,0),
(@PATH,8,-11789.625000,1260.664429,1.522318,0,0,0,100,0),
(@PATH,9,-11764.781250,1273.674072,2.998039,0,0,0,100,0),
(@PATH,10,-11789.625000,1260.664429,1.522318,0,0,0,100,0),
(@PATH,11,-11794.386719,1257.631592,1.222988,0,0,0,100,0),
(@PATH,12,-11809.788086,1243.615967,1.399789,0,0,0,100,0),
(@PATH,13,-11813.486328,1243.423096,1.650653,0,0,0,100,0),
(@PATH,14,-11823.474609,1249.535645,2.501543,0,0,0,100,0),
(@PATH,15,-11825.054688,1251.701782,2.429044,0,0,0,100,0),
(@PATH,16,-11832.375977,1271.938721,1.459813,0,0,0,100,0),
(@PATH,17,-11837.279297,1288.950317,1.512615,0,0,0,100,0);
-- Zandalar Headshrinker: 14876
SET @GUID := 914;
SET @PATH := @GUID;
UPDATE `creature` SET `MovementType`=2,`position_x`=-11828.326172,`position_y`=1234.463989,`position_z`=0.780894,`orientation`=5.261924 WHERE `guid`=@GUID;
DELETE FROM `creature_addon` WHERE `guid`=@GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@GUID,@PATH,1,0,'');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-11824.317383,1227.511108,0.670448,0,0,0,100,0),
(@PATH,2,-11839.237305,1241.058105,1.519958,0,0,0,100,0),
(@PATH,3,-11846.645508,1243.729980,4.5744192,0,0,0,100,0),
(@PATH,4,-11841.049805,1260.212158,10.099603,0,0,0,100,0),
(@PATH,5,-11841.225586,1264.016235,11.571445,0,0,0,100,0),
(@PATH,6,-11842.425781,1267.932251,12.456536,0,0,0,100,0),
(@PATH,7,-11846.776367,1270.782959,14.125699,0,0,0,100,0),
(@PATH,8,-11850.278320,1271.012329,15.261613,0,0,0,100,0),
(@PATH,9,-11853.373047,1268.856567,16.700747,0,0,0,100,0),
(@PATH,10,-11855.116211,1264.943848,18.011517,0,0,0,100,0),
(@PATH,11,-11857.451172,1254.989014,21.714193,0,0,0,100,0),
(@PATH,12,-11851.708008,1250.510010,21.714193,0,0,0,100,0),
(@PATH,13,-11857.451172,1254.989014,21.714193,0,0,0,100,0),
(@PATH,14,-11855.116211,1264.943848,18.011517,0,0,0,100,0),
(@PATH,15,-11853.373047,1268.856567,16.700747,0,0,0,100,0),
(@PATH,16,-11850.278320,1271.012329,15.261613,0,0,0,100,0),
(@PATH,17,-11846.776367,1270.782959,14.125699,0,0,0,100,0),
(@PATH,18,-11842.425781,1267.932251,12.456536,0,0,0,100,0),
(@PATH,19,-11841.225586,1264.016235,11.571445,0,0,0,100,0),
(@PATH,20,-11841.049805,1260.212158,10.099603,0,0,0,100,0),
(@PATH,21,-11846.645508,1243.729980,4.5744192,0,0,0,100,0),
(@PATH,22,-11839.237305,1241.058105,1.519958,0,0,0,100,0),
(@PATH,23,-11824.317383,1227.511108,0.670448,0,0,0,100,0);
-- Hakkari Oracle: 14876
SET @GUID := 885;
SET @PATH := @GUID;
UPDATE `creature` SET `MovementType`=2,`position_x`=-11915.200195,`position_y`=-943.197021,`position_z`=52.455700,`orientation`=1.575122 WHERE `guid`=@GUID;
DELETE FROM `creature_addon` WHERE `guid`=@GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@GUID,@PATH,1,0,'');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-11915.455078,-884.229614,32.811508,10000,0,0,100,0),
(@PATH,2,-11915.200195,-943.197021,52.455700,0,0,0,100,0),
(@PATH,3,-11915.335938,-971.741028,62.940353,0,0,0,100,0),
(@PATH,4,-11915.582031,-997.877869,67.938759,0,0,0,100,0),
(@PATH,5,-11915.845703,-1047.903076,69.805588,0,0,0,100,0),
(@PATH,6,-11915.582031,-997.877869,67.938759,0,0,0,100,0),
(@PATH,7,-11915.335938,-971.741028,62.940353,0,0,0,100,0),
(@PATH,8,-11915.200195,-943.197021,52.455700,0,0,0,100,0);
-- Hakkari Oracle SAI
SET @ENTRY := 11346;
SET @SPELL_EARTH_SHOCK := 15501; -- Earth Shock
SET @SPELL_CHAIN_LIGHTNING := 16006; -- Chain Lightning
SET @SPELL_HEALING_WAVE := 15982; -- Healing Wave
UPDATE `creature_template` SET `AIName`='SmartAI',`spell1`=0,`spell2`=0,`spell3`=0,`spell4`=0 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,12000,15000,11,@SPELL_CHAIN_LIGHTNING,0,0,0,0,0,2,0,0,0,0,0,0,0,'Hakkari Oracle - In Combat - Cast Chain Lightning'),
(@ENTRY,0,1,0,0,0,100,0,4000,5000,19000,20000,11,@SPELL_EARTH_SHOCK,0,0,0,0,0,2,0,0,0,0,0,0,0,'Hakkari Oracle - In Combat - Cast Earth Shock'),
(@ENTRY,0,2,0,2,0,100,1,0,50,0,0,11,@SPELL_HEALING_WAVE,1,0,0,0,0,1,0,0,0,0,0,0,0,'Hakkari Oracle - At 50% HP - Cast Healing Wave');
-- Gurubashi Warrior SAI
SET @ENTRY := 11355;
SET @SPELL_KNOCKDOWN := 11428; -- Knockdown
SET @SPELL_ENRAGE := 8599; -- Enrage
UPDATE `creature_template` SET `AIName`='SmartAI',`spell1`=0,`spell2`=0,`spell3`=0,`spell4`=0,`mechanic_immune_mask`=1 WHERE `entry`=@ENTRY; -- Immune to charm effects (mind control)
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,4000,12000,15000,11,@SPELL_KNOCKDOWN,0,0,0,0,0,2,0,0,0,0,0,0,0,'Gurubashi Warrior - In Combat - Cast Knockdown'),
(@ENTRY,0,1,0,2,0,100,1,0,30,0,0,11,@SPELL_ENRAGE,1,0,0,0,0,1,0,0,0,0,0,0,0,'Gurubashi Warrior - At 30% HP - Cast Enrage'),
(@ENTRY,0,2,0,2,0,100,1,0,30,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Gurubashi Warrior - At 30% HP - Say Line 0');
-- Enrage text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,'%s becomes enraged!',16,0,100,0,0,0,'Gurubashi Warrior - At 30% HP - Say Line 0');
-- High Priestess Hai'watna SAI
SET @ENTRY := 11383;
SET @SPELL_SHADOW_BOLT_VOLLEY := 14887; -- Shadow Bolt Volley
SET @SPELL_HEAL := 15586; -- Heal
UPDATE `creature_template` SET `AIName`='SmartAI',`spell1`=0,`spell2`=0,`spell3`=0,`spell4`=0 WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,12000,15000,11,@SPELL_SHADOW_BOLT_VOLLEY,0,0,0,0,0,2,0,0,0,0,0,0,0,'High Priestess Haiwatna - In Combat - Cast Shadow Bolt Volley'),
(@ENTRY,0,1,0,0,0,100,0,20000,25000,29000,31000,11,@SPELL_HEAL,0,0,0,0,0,1,0,0,0,0,0,0,0,'High Priestess Haiwatna - In Combat - Cast Heal');
-- Zulian Panther pathing: 11365
SET @GUID := 48330;
SET @PATH := @GUID;
UPDATE `creature` SET `MovementType`=2,`position_x`=-11626.807617,`position_y`=-1701.435425,`position_z`=38.823635 WHERE `guid`=@GUID;
DELETE FROM `creature_addon` WHERE `guid`=@GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@GUID,@PATH,1,0,'');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-11626.807617,-1701.435425,38.823635,0,1,0,100,0),
(@PATH,2,-11627.707031,-1727.870483,40.333164,0,1,0,100,0),
(@PATH,3,-11629.434570,-1760.955322,38.754513,0,1,0,100,0),
(@PATH,4,-11653.967773,-1807.740723,43.086334,0,1,0,100,0),
(@PATH,5,-11629.434570,-1760.955322,38.754513,0,1,0,100,0),
(@PATH,6,-11627.707031,-1727.870483,40.333164,0,1,0,100,0),
(@PATH,7,-11630.115234,-1687.330566,39.997681,0,1,0,100,0),
(@PATH,8,-11634.075195,-1596.245239,39.645630,0,0,0,100,0);
-- Hakkari Priest pathing: 11830
SET @GUID := 48391; -- Hakkari Priest leads
SET @PATH := @GUID;
UPDATE `creature` SET `MovementType`=2,`position_x`=-12054.799805,`position_y`=-1686.000000,`position_z`=43.075001 WHERE `guid`=@GUID;
DELETE FROM `creature_addon` WHERE `guid`=@GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@GUID,@PATH,1,0,'');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-12059.555664,-1691.853027,43.423206,0,0,0,100,0),
(@PATH,2,-12059.799805,-1701.031494,44.344296,0,0,0,100,0),
(@PATH,3,-12053.253906,-1720.945435,48.184185,0,0,0,100,0),
(@PATH,4,-12043.537109,-1733.467651,51.260815,0,0,0,100,0),
(@PATH,5,-12034.110352,-1742.581421,53.809147,0,0,0,100,0),
(@PATH,6,-12043.537109,-1733.467651,51.260815,0,0,0,100,0),
(@PATH,7,-12053.253906,-1720.945435,48.184185,0,0,0,100,0),
(@PATH,8,-12059.799805,-1701.031494,44.344296,0,0,0,100,0),
(@PATH,9,-12059.555664,-1691.853027,43.423206,0,0,0,100,0),
(@PATH,10,-12058.425781,-1681.930420,42.665642,0,0,0,100,0),
(@PATH,11,-12042.879883,-1650.618164,40.627056,0,0,0,100,0),
(@PATH,12,-12034.342773,-1643.789551,39.795006,0,0,0,100,0),
(@PATH,13,-12009.803711,-1642.433350,35.999470,0,0,0,100,0),
(@PATH,14,-11992.014648,-1646.609253,34.173782,0,0,0,100,0),
(@PATH,15,-11962.285156,-1644.002441,36.924133,0,0,0,100,0),
(@PATH,16,-11951.910156,-1638.948730,38.838421,0,0,0,100,0),
(@PATH,17,-11949.411133,-1628.985229,39.359371,0,0,0,100,0),
(@PATH,18,-11946.486328,-1619.823486,41.083221,0,0,0,100,0),
(@PATH,19,-11947.083984,-1614.833984,39.48743,0,0,0,100,0),
(@PATH,20,-11943.375000,-1576.649292,38.514889,0,0,0,100,0),
(@PATH,21,-11942.552734,-1568.465454,41.119324,0,0,0,100,0),
(@PATH,23,-11941.658203,-1559.485596,39.735973,0,0,0,100,0),
(@PATH,24,-11938.247070,-1554.563354,39.750710,0,0,0,100,0),
(@PATH,25,-11918.897461,-1550.056152,38.295830,0,0,0,100,0),
(@PATH,26,-11903.013672,-1537.574463,31.093979,0,0,0,100,0),
(@PATH,27,-11900.709961,-1530.430054,28.203531,10000,0,0,100,0),
(@PATH,28,-11903.013672,-1537.574463,31.093979,0,0,0,100,0),
(@PATH,29,-11918.897461,-1550.056152,38.295830,0,0,0,100,0),
(@PATH,30,-11938.247070,-1554.563354,39.750710,0,0,0,100,0),
(@PATH,31,-11941.658203,-1559.485596,39.735973,0,0,0,100,0),
(@PATH,32,-11943.507813,-1569.661377,40.848972,0,0,0,100,0),
(@PATH,33,-11943.375000,-1576.649292,38.514889,0,0,0,100,0),
(@PATH,34,-11947.083984,-1614.833984,39.48743,0,0,0,100,0),
(@PATH,36,-11946.486328,-1619.823486,41.083221,0,0,0,100,0),
(@PATH,37,-11949.411133,-1628.985229,39.359371,0,0,0,100,0),
(@PATH,38,-11951.910156,-1638.948730,38.838421,0,0,0,100,0),
(@PATH,39,-11962.285156,-1644.002441,36.924133,0,0,0,100,0),
(@PATH,40,-11992.014648,-1646.609253,34.173782,0,0,0,100,0),
(@PATH,41,-12009.803711,-1642.433350,35.999470,0,0,0,100,0),
(@PATH,42,-12034.342773,-1643.789551,39.795006,0,0,0,100,0),
(@PATH,43,-12042.879883,-1650.618164,40.627056,0,0,0,100,0),
(@PATH,44,-12058.425781,-1681.930420,42.665642,0,0,0,100,0),
(@PATH,45,-12059.555664,-1691.853027,43.423206,0,0,0,100,0),
(@PATH,46,-12059.799805,-1701.031494,44.344296,0,0,0,100,0),
(@PATH,47,-12053.253906,-1720.945435,48.184185,0,0,0,100,0),
(@PATH,48,-12043.537109,-1733.467651,51.260815,0,0,0,100,0),
(@PATH,49,-12034.110352,-1742.581421,53.809147,0,0,0,100,0),
(@PATH,50,-12043.537109,-1733.467651,51.260815,0,0,0,100,0),
(@PATH,51,-12053.253906,-1720.945435,48.184185,0,0,0,100,0),
(@PATH,52,-12059.799805,-1701.031494,44.344296,0,0,0,100,0),
(@PATH,53,-12059.555664,-1691.853027,43.423206,0,0,0,100,0);
-- Razzashi Skitterer pathing: 14880
SET @GUID := 48378;
SET @PATH := @GUID;
UPDATE `creature` SET `MovementType`=2,`position_x`=-12121.770508,`position_y`=-1781.804077,`position_z`=80.251060 WHERE `guid`=@GUID;
DELETE FROM `creature_addon` WHERE `guid`=@GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@GUID,@PATH,1,0,'');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-12121.770508,-1781.804077,80.251060,1000,1,0,100,0),
(@PATH,2,-12107.982422,-1754.442871,81.616844,1000,1,0,100,0),
(@PATH,3,-12106.101563,-1742.353638,80.255928,1000,1,0,100,0),
(@PATH,4,-12126.319336,-1719.959229,80.978317,1000,1,0,100,0),
(@PATH,5,-12107.717773,-1699.646362,81.238678,1000,1,0,100,0),
(@PATH,6,-12133.279297,-1669.547363,82.450058,1000,1,0,100,0),
(@PATH,7,-12138.102539,-1669.364258,85.529083,1000,1,0,100,0),
(@PATH,8,-12161.593750,-1692.840698,95.234123,1000,1,0,100,0),
(@PATH,9,-12165.793945,-1692.938721,97.776299,1000,1,0,100,0),
(@PATH,10,-12191.083008,-1669.304321,111.627693,1000,1,0,100,0),
(@PATH,11,-12195.055664,-1669.150146,113.257439,1000,1,0,100,0),
(@PATH,12,-12215.911133,-1692.359497,122.447922,1000,1,0,100,0),
(@PATH,13,-12220.180664,-1692.659546,124.706985,1000,1,0,100,0),
(@PATH,14,-12221.366211,-1670.207275,126.270119,1000,1,0,100,0),
(@PATH,15,-12215.528320,-1669.463379,122.749390,1000,1,0,100,0),
(@PATH,16,-12183.934570,-1689.368286,106.393227,1000,1,0,100,0),
(@PATH,17,-12164.437500,-1681.142578,95.410744,1000,1,0,100,0),
(@PATH,18,-12145.658203,-1670.292603,89.038513,1000,1,0,100,0),
(@PATH,19,-12134.544922,-1682.580444,82.284355,1000,1,0,100,0),
(@PATH,20,-12126.685547,-1692.754028,81.543770,1000,1,0,100,0),
(@PATH,21,-12108.330078,-1725.148071,80.870346,1000,1,0,100,0),
(@PATH,22,-12123.732422,-1739.145386,80.321144,1000,1,0,100,0),
(@PATH,23,-12111.660156,-1760.424561,80.601723,1000,1,0,100,0);
DELETE FROM `creature_text` WHERE `entry`=36627 AND `groupid`=9;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(36627,9,0,'|TInterface\Icons\ability_creature_disease_02.blp:16|tYou have |cFF00FF00Mutated Infection!|r',42,0,0,0,0,0,'Rotface - EMOTE_MUTATED_INFECTION');

# Fix
# UPDATE `quest_template` SET `SpecialFlags` = 0 WHERE `entry` = 10162;
DELETE FROM `gameobject` WHERE `id`=175621;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(71671, 175621, 229, 1, 1, -14.456, -396.061, 48.5219, 2.16916, 0, 0, 0, 1, 180, 255, 1);
UPDATE `creature_template` SET `dmg_multiplier` = 1 WHERE `entry` = 24690;

# NeatElves
UPDATE `achievement_criteria_data` SET `value1` = '3057' WHERE `criteria_id` =6800 AND `type` =6;
UPDATE `creature_template` SET `pickpocketloot` = '0' WHERE `entry` =18585;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 18585;
DELETE FROM `gameobject` WHERE `guid` = 8413;
DELETE FROM `gameobject` WHERE `guid` = 14799;
UPDATE `creature_onkill_reputation` SET `RewOnKillRepFaction1` = '729',`RewOnKillRepFaction2` = '0' WHERE `creature_id` in (11948,11949,13419);
UPDATE `creature_onkill_reputation` SET `RewOnKillRepFaction1` = '1052',`RewOnKillRepFaction2` = '0' WHERE `creature_id` in (30398,30509,30498,26796,26800,30496,27949,26802,26805);
UPDATE `creature_onkill_reputation` SET `RewOnKillRepFaction1` = '989',`RewOnKillRepValue1` = '50' WHERE `creature_id` =21148;
UPDATE `creature_onkill_reputation` SET `RewOnKillRepFaction1` = '935',`RewOnKillRepValue1` = '4' WHERE `creature_id` =19964;
DELETE FROM `gossip_menu` WHERE `entry` = 50015;
REPLACE  INTO `gossip_menu` (`entry`,`text_id`) VALUES
(1823, 2482), (1824, 2481),(1825, 2480), (1826, 2479), (1827, 2478),
(1828, 2477), (5627, 6736), (5283, 6316), (2186, 2820);
DELETE FROM `pickpocketing_loot_template` WHERE `entry` in (499,826,828,842,866,870,999,1278,1279,1281,1283,1336,1434,2105,2198,2436,2466,2468,2469,4500,5089,6670,7051,7730,7939,8016,8147,8876,8877,10038,10475,10696,10991,11837,11946,11948,12903,17256,17416,18909,19500,19797,21749,22201,22325,23865,24225,26690,28242,31555);
UPDATE `creature_template` SET `pickpocketloot` = '0' WHERE `pickpocketloot` in (499,826,828,842,866,870,999,1278,1279,1281,1283,1336,1434,2105,2198,2436,2466,2468,2469,4500,5089,6670,7051,7730,7939,8016,8147,8876,8877,10038,10475,10696,10991,11837,11946,11948,12903,17256,17416,18909,19500,19797,21749,22201,22325,23865,24225,26690,28242,31555);
DELETE FROM `creature_loot_template` WHERE `item` = 22434;
UPDATE `creature_template` SET `modelid1` = '16480',`modelid2` = '21072' WHERE `entry` in (25091,25092,25090);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-50' WHERE `item` =34338;
DELETE FROM `creature_questrelation` WHERE `id` = 24967 AND `quest` = 11496;
UPDATE `quest_template` SET `PrevQuestId` = '0' WHERE `entry` =11523;
UPDATE `quest_template` SET `PrevQuestId` = '11526' WHERE `entry` in (11516,11515);
UPDATE `quest_template` SET `PrevQuestId` = '9914' WHERE `entry` =9915;
UPDATE `quest_template` SET `RequiredRaces` = '1101' WHERE `entry` in (12135,11131);
UPDATE `quest_template` SET `RequiredRaces` = '690' WHERE `entry` in (12139,11219);
UPDATE `creature_template` SET `faction_A` = '35',`faction_H` = '35' WHERE `entry` =25236;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 25201 WHERE `entry` = 11560;
UPDATE `game_event` SET `start_time` = '2011-08-12 00:01:00',`length` = '5758' WHERE `evententry` =18;
UPDATE `game_event` SET `start_time` = '2011-08-19 00:01:00',`length` = '5758' WHERE `evententry` =19;
UPDATE `game_event` SET `start_time` = '2011-07-29 00:01:00',`length` = '5758' WHERE `evententry` =20;
UPDATE `game_event` SET `start_time` = '2011-08-05 00:01:00',`length` = '5758' WHERE `evententry` =21;
UPDATE `game_event` SET `start_time` = '2011-08-26 00:01:00',`length` = '5758' WHERE `evententry` =30;
UPDATE `game_event` SET `start_time` = '2011-07-22 00:01:00',`length` = '5758' WHERE `evententry` =42;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`) VALUES
(63191, 29259, 571, 1, 1, 0, 0, 8466.51, 439.484, 600.413, 1.51171, 600, 0, 0, 7212, 0);
UPDATE `creature` SET `spawntimesecs` = 604800 WHERE `id` = 37868;
UPDATE `creature_template` SET `gossip_menu_id` = 10950 WHERE `entry` = 37223;
DELETE FROM `gossip_menu` WHERE `entry`=10950;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10950,15215);
UPDATE `creature_template` SET `gossip_menu_id` = 10012 WHERE `entry` = 28070;
UPDATE `gossip_menu` SET `entry` = 10012 WHERE `entry` =9669;
UPDATE `gossip_menu_option` SET `menu_id` = 10012 WHERE `menu_id` =9669;
UPDATE locales_gossip_menu_option SET menu_id = 10012 WHERE `menu_id` =9669;
INSERT IGNORE INTO `gossip_menu` (`entry`,`text_id`) VALUES (10012,13883);
UPDATE `creature_template` SET `gossip_menu_id` = 9286 WHERE `entry` = 25632;
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (9293,12604);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (9286,12597);
UPDATE `creature_template` SET `gossip_menu_id` = 9285 WHERE `entry` = 25638;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (9285, 12596);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (9290, 12601);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (9289, 12600);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (9288, 12599);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (9287, 12598);
UPDATE `creature_template` SET `gossip_menu_id` = 9680 WHERE `entry` = 26499;
UPDATE `creature_model_info` SET `modelid_other_gender` = '0' WHERE `modelid` =21072;
UPDATE `creature_ai_scripts` SET `action3_type` = '41',`action3_param1` = '30000' WHERE `id` in (2509051,2509151,2509251);
UPDATE `creature` SET `spawntimesecs` = '30' WHERE `id` in (25090,25091,25092);
UPDATE `creature_template` SET `flags_extra` = `flags_extra` &~ 128 WHERE `entry` in (24921,30156,23808,24109);
UPDATE `creature_template` SET `flags_extra` = '2' WHERE `entry` =25174;
UPDATE `creature_template` SET `gossip_menu_id`=7288 WHERE `entry`=16542;
UPDATE `creature_template` SET `gossip_menu_id`=141 WHERE `entry`=3155;
UPDATE `npc_vendor` SET `incrtime` = '1800' WHERE `entry` =31247 AND `item` =44500;

# FIX
UPDATE `gameobject` SET `spawnMask` = 1 WHERE `guid` = 49697;
UPDATE `gameobject` SET `spawnMask` = 2 WHERE `guid` = 38556;
DELETE FROM `creature_loot_template` WHERE (`entry`=15209) AND (`item`=20928);
DELETE FROM `creature_loot_template` WHERE (`entry`=15209) AND (`item`=20932);
UPDATE `creature` SET `spawntimesecs` = 60 WHERE `guid` = 89806;
UPDATE `creature_template` SET `unit_flags` = 32768 WHERE `entry` = 29352;
UPDATE `gameobject` SET `spawntimesecs` = 30 WHERE `guid` = 44884;
UPDATE `gameobject` SET `animprogress` = 100 WHERE `guid` = 44884;
UPDATE `creature` SET `spawntimesecs` = 5 WHERE `id` = 23119;

#
DELETE FROM `gameobject_loot_template` WHERE `entry` = 191303 AND `item` = 39969;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 181556 AND `item` in (23077, 23079, 23107, 23112, 23117);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 181557 AND `item` in (23437, 23438, 23439, 23440, 23441);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 181555 AND `item` in (23077, 23079, 23107, 23112, 23117);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 181557 AND `item` = 12363;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 181569 AND `item` in (23077, 23079, 23107, 23112, 23117);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 185877 AND `item` in (23077, 23079, 23107, 23112, 23117);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 185877 AND `item` in (23437, 23438, 23439, 23440, 23441);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 185877 AND `item` = 32506;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 185881 AND `item` = 32506;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 181555 AND `item` in (23077, 23079, 23107, 23112, 23117);

DELETE FROM `gameobject_loot_template` WHERE entry = 191133 AND item = 37701;
DELETE FROM `gameobject_loot_template` WHERE entry = 191133 AND item = 37702;
DELETE FROM `gameobject_loot_template` WHERE entry = 191133 AND item = 37705;
DELETE FROM `gameobject_loot_template` WHERE entry = 189978 AND item = 37705;
DELETE FROM `gameobject_loot_template` WHERE entry = 189979 AND item = 37705;
DELETE FROM `gameobject_loot_template` WHERE entry in (2047, 181108, 150081, 123309, 150079, 2040, 123310, 1735, 176645) AND item in (3864);
DELETE FROM `gameobject_loot_template` WHERE entry in (2047, 181108, 150081, 123309, 150079, 2040, 123310, 1735, 176645) AND item in (7910);
DELETE FROM `gameobject_loot_template` WHERE entry in (2047, 181108, 150081, 123309, 150079, 2040, 123310, 1735, 176645) AND item in (1529);

DELETE FROM `gameobject_loot_template` WHERE `entry` = 189979 AND `item` in (36920,36921,36923,36924,36926,36927,36929,36930,36932,36933);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 189978 AND `item` in (36920,36923,36926,36929,36932);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 189980 AND `item` in (36920,36923,36926,36929,36932);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 189981 AND `item` in (36920,36921,36923,36924,36926,36927,36929,36930,36932,36933);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 191133 AND `item` in (36920,36921,36923,36924,36926,36927,36929,36930,36932,36933);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 195036 AND `item` in (36920, 36921, 36923, 36924, 36926, 36927, 36929, 36930, 36932, 36933);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 189980 AND `item` = 37703;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 189981 AND `item` = 37703;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 195036 AND `item` = 35627;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 185557 AND `item` in (21929,23077,23079,23107,23112,23117);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 185557 AND `item` in (23437,23438,23439,23440,23441);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 185557 AND `item` in (32228,32229,32230,32231,32249);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 175404 AND `item` in (12361,12363,12364,12799,12800);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 180215 AND `item` in (12361,12363,12364,12799,12800);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 123848 AND `item` in (12361,12363,12364,12799,12800);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 177388 AND `item` in (12361,12363,12364,12799,12800);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 150082 AND `item` in (12361,12363,12364,12799,12800);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 324 AND `item` in (12361,12363,12364,12799,12800);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 176643 AND `item` in (12361,12363,12364,12799,12800);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 181068 AND `item` in (12361,12363,12364,12799,12800);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 181069 AND `item` in (12361,12363,12364,12799,12800);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 73941 AND `item` = 3864;
DELETE FROM `creature_loot_template` WHERE `item` in (12361,12364,12800,12799,9262,11513);
DELETE FROM `gameobject_loot_template` WHERE `item` = 11513;
DELETE FROM `creature_loot_template` WHERE `item` = 35625;

UPDATE creature SET phaseMask = 256 WHERE id IN (30872,30873,30875,30876,30877,30849);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '25' WHERE `entry` = 27651 AND `item` = 37702;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '25' WHERE `entry` = 28584 AND `item` = 37702;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '25' WHERE `entry` = 30847 AND `item` = 37702;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '25' WHERE `entry` = 30450 AND `item` = 37702;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '25' WHERE `entry` = 30387 AND `item` = 37702;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '25' WHERE `entry` = 29504 AND `item` = 37702;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '25' WHERE `entry` = 25417 AND `item` = 37702;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` in (24879,32544);
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` = 34846;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` = 35945;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` =35945 AND `item` in (32227,32228,32229,32230,32231,32249);
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `entry` =34846 AND `item` in (32227,32228,32229,32230,32231,32249);
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '100' WHERE `item` = 12365;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '5',`mincountOrRef` = '-7910' WHERE `entry` = 175404 AND `item` = 7910;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '50' WHERE `entry` =180215 AND `item` =19774;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '5',`mincountOrRef` = '-7910' WHERE `entry` =180215 AND `item` =7910;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '5',`mincountOrRef` = '-7910' WHERE `entry` =123848 AND `item` =7910;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '10',`mincountOrRef` = '-7910' WHERE `entry` =177388 AND `item` =7910;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '10',`mincountOrRef` = '-7910' WHERE `entry` =150082 AND `item` =7910;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '10',`mincountOrRef` = '-7910' WHERE `entry` =324 AND `item` =7910;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '10',`mincountOrRef` = '-7910' WHERE `entry` =176643 AND `item` =7910;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '90' WHERE `entry` =181068 AND `item` =22202;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `entry` =181068 AND `item` =22203;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '4' WHERE `entry` =181068 AND `item` =7076;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '10' WHERE `entry` =181069 AND `item` =7076;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '50' WHERE `entry` =181069 AND `item` =22202;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '39' WHERE `entry` =181069 AND `item` =22203;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1',`mincountOrRef` = '-7909' WHERE `entry` in (2047,181108,150081,123309,150079,2040,123310,1735,176645) AND `item` =7909;
UPDATE `gameobject_loot_template` SET `item` = '7909',`ChanceOrQuestChance` = '1',`mincountOrRef` = '-7909' WHERE `entry` =73941 AND `item` =1529;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '2' WHERE `item` = 9262;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '100' WHERE `entry` =190176 AND `item` =36908;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '30' WHERE `entry` =190176 AND `item` =37704;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '35' WHERE `entry` =190176 AND `item` =37921;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '10' WHERE `entry` =190170 AND `item` =36908;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '30' WHERE `entry` =190170 AND `item` =37704;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '35' WHERE `entry` =190170 AND `item` =37921;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '10' WHERE `entry` =189973 AND `item` =36908;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '30' WHERE `entry` =189973 AND `item` =37704;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '35' WHERE `entry` =189973 AND `item` =37921;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '10' WHERE `entry` =190172 AND `item` =36908;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '30' WHERE `entry` =190172 AND `item` =37704;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '10' WHERE `entry` =190169 AND `item` =36908;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '30' WHERE `entry` =190169 AND `item` =37704;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '35' WHERE `entry` =190169 AND `item` =37921;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '10' WHERE `entry` =191303 AND `item` =36908;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '30' WHERE `entry` =191303 AND `item` =37704;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '100',`groupid` = '0' WHERE `entry` =191303 AND `item` =39970;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '10' WHERE `entry` =191019 AND `item` =36908;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '30' WHERE `entry` =191019 AND `item` =37704;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '10' WHERE `entry` =190171 AND `item` =36908;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '30' WHERE `entry` =190171 AND `item` =37704;
UPDATE `gameobject_loot_template` SET `maxcount` = '3' WHERE `item` =36908;
UPDATE `gameobject_loot_template` SET `item` = '37702',`ChanceOrQuestChance` = '50',`mincountOrRef` = '-37702',`maxcount` = '1' WHERE `entry` =189981 AND `item` =37701;
UPDATE `gameobject_loot_template` SET `item` = '35622',`ChanceOrQuestChance` = '80',`mincountOrRef` = '-35622',`maxcount` = '1' WHERE `entry` =195036 AND `item` =35624;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1',`mincountOrRef` = '-21929',`maxcount` = '1' WHERE `entry` = 181556 AND `item` = 21929;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1',`mincountOrRef` = '-23436',`maxcount` = '1' WHERE `entry` = 181557 AND `item` = 23436;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '5',`mincountOrRef` = '-21929',`maxcount` = '1' WHERE `entry` = 181557 AND `item` = 21929;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '2',`mincountOrRef` = '-21929',`maxcount` = '1' WHERE `entry` = 181569 AND `item` = 21929;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1',`mincountOrRef` = '-21929',`maxcount` = '1' WHERE `entry` = 185877 AND `item` = 21929;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0.5',`mincountOrRef` = '-23436',`maxcount` = '1' WHERE `entry` = 185877 AND `item` = 23436;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '20' WHERE `item` =11514;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '20' WHERE `item` =11515;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = '20'WHERE `item` =11512;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0.5',`mincountOrRef` = '-21929',`maxcount` = '1' WHERE `entry` = 181555 AND `item` = 21929;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '100',`maxcount` = '8' WHERE `entry` = 185557 AND `item` = 34907;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '45',`mincountOrRef` = '-37701', `maxcount` = '1' WHERE `entry` = 189980 AND `item` = 37701;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '10',`mincountOrRef` = '-23436',`maxcount` = '1' WHERE `entry` = 185557 AND `item` = 23436;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '15',`mincountOrRef` = '-32227',`maxcount` = '1' WHERE `entry` = 185557 AND `item` = 32227;
UPDATE `quest_template` SET `NextQuestId` = '6607',`NextQuestInChain` = '6607' WHERE `entry` in (6608,6609);
UPDATE `quest_template` SET `PrevQuestId` = '7163' WHERE `entry` = 7164;
UPDATE `quest_template` SET `PrevQuestId` = '7261' WHERE `entry` = 7162;

# FIX
UPDATE `creature` SET `spawntimesecs` = 604800 WHERE `id` = 37868;
UPDATE `gameobject` SET `spawntimesecs` = 120 WHERE `guid` = 44143;
UPDATE `gameobject` SET `spawntimesecs` = 120 WHERE `guid` = 44144;
UPDATE `gameobject` SET `spawntimesecs` = 120 WHERE `guid` = 44145;
UPDATE `gameobject` SET `spawntimesecs` = 120 WHERE `guid` = 44146;
UPDATE `gameobject` SET `spawntimesecs` = 120 WHERE `guid` = 44374;
UPDATE `gameobject_template` SET `faction` = 35, `flags` = 32 WHERE `entry` = 195527;
UPDATE `creature_template` SET `faction_A` = 534, `faction_H` = 534 WHERE `entry` = 35594;
UPDATE `creature_template` SET `faction_A` = 714, `faction_H` = 714 WHERE `entry` = 35607;

# telsamat
UPDATE `creature_template` SET `flags_extra` = '256' WHERE `entry` in (38138, 36897);

# NeatElves
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(5734, 181682, 0, 1, 1, 3167.72, -4355.91, 138.785, 1.69297, 0, 0, 0, 1, -180, 255, 1),
(5735, 181955, 0, 1, 1, 3167.5, -4356.24, 138.821, 1.69297, 0, 0, 0, 1, -180, 255, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(1713, 195344, 571, 1, 1, 7676.96, 2545.17, 397.447, 0, 0, 0, 0, 1, 300, 100, 1),
(1714, 195344, 571, 1, 1, 7792.49, 2552.3, 404.737, 0, 0, 0, 0, 1, 300, 100, 1),
(1716, 195344, 571, 1, 1, 7658.14, 2141.53, 371.874, 0, 0, 0, 0, 1, 300, 100, 1),
(1717, 195344, 571, 1, 1, 7912.72, 2361.59, 403.348, 0, 0, 0, 0, 1, 300, 100, 1),
(1728, 195344, 571, 1, 1, 7879.32, 2381.5, 395.993, 0, 0, 0, 0, 1, 300, 100, 1),
(1729, 195344, 571, 1, 1, 7802.09, 2589.91, 404.13, 0, 0, 0, 0, 1, 300, 100, 1),
(1731, 195344, 571, 1, 1, 7829.74, 2296.03, 378.059, 0, 0, 0, 0, 1, 300, 100, 1),
(1732, 195344, 571, 1, 1, 7888.03, 2486.69, 412.185, 0, 0, 0, 0, 1, 300, 100, 1),
(1737, 195344, 571, 1, 1, 7746.05, 2373, 376.394, 0, 0, 0, 0, 1, 300, 100, 1),
(1738, 195344, 571, 1, 1, 7703.88, 2480.24, 385.491, 0, 0, 0, 0, 1, 300, 100, 1),
(1743, 195344, 571, 1, 1, 7713.28, 2557.22, 396.82, 0, 0, 0, 0, 1, 300, 100, 1),
(1744, 195344, 571, 1, 1, 7705.6, 2505.98, 391.187, 0, 0, 0, 0, 1, 300, 100, 1),
(1746, 195344, 571, 1, 1, 7816.32, 2475.27, 396.899, 0, 0, 0, 0, 1, 300, 100, 1),
(1749, 195344, 571, 1, 1, 7694.1, 2306.05, 370.416, 0, 0, 0, 0, 1, 300, 100, 1),
(1750, 195344, 571, 1, 1, 7772.19, 2523.41, 397.553, 0, 0, 0, 0, 1, 300, 100, 1),
(1753, 195344, 571, 1, 1, 7796.59, 2463.79, 393.289, 0, 0, 0, 0, 1, 300, 100, 1),
(1759, 195344, 571, 1, 1, 7845.07, 2444.61, 400.599, 0, 0, 0, 0, 1, 300, 100, 1),
(1760, 195344, 571, 1, 1, 7779.92, 2417.38, 384.435, 0, 0, 0, 0, 1, 300, 100, 1),
(1761, 195344, 571, 1, 1, 7718.42, 2419.05, 378.136, 0, 0, 0, 0, 1, 300, 100, 1),
(1764, 195344, 571, 1, 1, 7840.04, 2426.58, 393.604, 0, 0, 0, 0, 1, 300, 100, 1),
(1766, 195344, 571, 1, 1, 7813.52, 2376.7, 383.758, 0, 0, 0, 0, 1, 300, 100, 1),
(1767, 195344, 571, 1, 1, 7712.81, 2241.79, 366.496, 0, 0, 0, 0, 1, 300, 100, 1),
(73687, 195344, 571, 1, 1, 7765.82, 2235.86, 368.622, 0, 0, 0, 0, 1, 300, 100, 1),
(73688, 195344, 571, 1, 1, 7794.9, 2280.98, 375.543, 0, 0, 0, 0, 1, 300, 100, 1),
(73689, 195344, 571, 1, 1, 7912.48, 2277.05, 387.872, 0, 0, 0, 0, 1, 300, 100, 1),
(73690, 195344, 571, 1, 1, 7853.17, 2141, 367.559, 0, 0, 0, 0, 1, 300, 100, 1),
(73691, 195344, 571, 1, 1, 7811.03, 2320.48, 378.264, 0, 0, 0, 0, 1, 300, 100, 1),
(73692, 195344, 571, 1, 1, 7820.73, 2238.01, 372.776, 0, 0, 0, 0, 1, 300, 100, 1),
(73693, 195344, 571, 1, 1, 7813.28, 2194.92, 368.565, 0, 0, 0, 0, 1, 300, 100, 1),
(73694, 195344, 571, 1, 1, 7750.78, 2420.46, 380.734, 0, 0, 0, 0, 1, 300, 100, 1),
(73695, 195344, 571, 1, 1, 7777.63, 2179.09, 365.452, 0, 0, 0, 0, 1, 300, 100, 1),
(73696, 195344, 571, 1, 1, 7736.08, 2157.99, 364.475, 0, 0, 0, 0, 1, 300, 100, 1),
(73697, 195344, 571, 1, 1, 7705.57, 2182.61, 365.275, 0, 0, 0, 0, 1, 300, 100, 1),
(73698, 195344, 571, 1, 1, 7788.99, 2255.3, 371.706, 0, 0, 0, 0, 1, 300, 100, 1),
(73699, 195344, 571, 1, 1, 7755.23, 2126.35, 362.332, 0, 0, 0, 0, 1, 300, 100, 1),
(73700, 195344, 571, 1, 1, 7843.85, 2334.66, 382.39, 0, 0, 0, 0, 1, 300, 100, 1),
(73701, 195344, 571, 1, 1, 7897.19, 2206.28, 375.886, 0, 0, 0, 0, 1, 300, 100, 1),
(73702, 195344, 571, 1, 1, 7863.5, 2231.65, 375.172, 0, 0, 0, 0, 1, 300, 100, 1),
(73703, 195344, 571, 1, 1, 7651.21, 2394.11, 374.719, 0, 0, 0, 0, 1, 300, 100, 1),
(73704, 195344, 571, 1, 1, 7683.24, 2449.2, 381.064, 0, 0, 0, 0, 1, 300, 100, 1),
(73705, 195344, 571, 1, 1, 7887.58, 2323.53, 389.297, 0, 0, 0, 0, 1, 300, 100, 1),
(73706, 195344, 571, 1, 1, 7734.91, 2469.83, 385.78, 0, 0, 0, 0, 1, 300, 100, 1),
(73707, 195344, 571, 1, 1, 7567.95, 2265.78, 384.713, 0, 0, 0, 0, 1, 300, 100, 1),
(5736, 195344, 571, 1, 1, 7745.68, 2289.91, 371.991, 0, 0, 0, 0, 1, 300, 100, 1),
(5747, 195344, 571, 1, 1, 7649.5, 2275.41, 370.921, 0, 0, 0, 0, 1, 300, 100, 1),
(5749, 195344, 571, 1, 1, 7636.03, 2255.23, 370.7, 0, 0, 0, 0, 1, 300, 100, 1),
(5758, 195344, 571, 1, 1, 7710.98, 2338.51, 373.022, 0, 0, 0, 0, 1, 300, 100, 1),
(5760, 195344, 571, 1, 1, 7760.76, 2331.15, 374.805, 0, 0, 0, 0, 1, 300, 100, 1),
(5762, 195344, 571, 1, 1, 7630.05, 2336.39, 372.913, 0, 0, 0, 0, 1, 300, 100, 1),
(5767, 195344, 571, 1, 1, 7665.88, 2225.69, 369.02, 0, 0, 0, 0, 1, 300, 100, 1),
(5768, 195344, 571, 1, 1, 7702.23, 2268.07, 367.593, 0, 0, 0, 0, 1, 300, 100, 1),
(5769, 195344, 571, 1, 1, 7637.92, 2188.86, 371.916, 0, 0, 0, 0, 1, 300, 100, 1),
(5771, 195344, 571, 1, 1, 7632.56, 2369.05, 376.192, 0, 0, 0, 0, 1, 300, 100, 1),
(5772, 195344, 571, 1, 5, 7614.33, 2214.53, 375.922, 0, 0, 0, 0, 1, 300, 100, 1),
(5773, 195344, 571, 1, 1, 7542.19, 2323.88, 378.223, 0, 0, 0, 0, 1, 300, 100, 1),
(5788, 195344, 571, 1, 1, 7590.31, 2308.01, 376.749, 0, 0, 0, 0, 1, 300, 100, 1),
(5791, 195344, 571, 1, 1, 7453.91, 2355.88, 380.035, 0, 0, 0, 0, 1, 300, 100, 1),
(5792, 195344, 571, 1, 1, 7505.33, 2363.4, 378.051, 0, 0, 0, 0, 1, 300, 100, 1),
(5793, 195344, 571, 1, 5, 7696.85, 2372.09, 374.58, 0, 0, 0, 0, 1, 300, 100, 1);
UPDATE `quest_template` SET `RequestItemsText`='With your increased status amongst the tribe comes access to some of our more potent potables. Behold... these brews are strong in the mojo - blessed by Zanza and fit for adventurers from all walks of life!$B$BI will allow you to choose one from the three I offer; in exchange, I require one Zandalar Honor Token. Note that only the effects of a single one may course through your spirit at any given time.$B$BLet me know when you''re ready to barter!' WHERE `entry`=8243;
UPDATE `quest_template` SET `RequestItemsText`='The extremely potent essence mango grows across many of the islands in the South Seas. A single mango will refresh those who eat it,both physically and mentally. If you''ve never had one,you do yourself a disservice!$B$BWe have enough of a supply here on the isle to offer you a handful in exchange for a Zandalar Honor Token. Speak with Vinchaxa if you need to learn how to get tokens; otherwise, let''s get to the business at hand!' WHERE `entry`=8196;
UPDATE `quest_template` SET `RequestItemsText`='$N - for someone as exalted among the Zandalar as you are,I have something very special for you. Direct from our home in the South Seas... the Signets of the Zandalar! These signets are used to enhance any shoulder item you may possess. Should you seek might,mojo,or serenity - I have what you need!$B$BI ask for fifteen Zandalar Honor Tokens in exchange for your choice of one signet. If you have the tokens ready,then I''m ready to make a deal!' WHERE `entry`=8246;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0.5',`mincountOrRef` = '-36920',`maxcount` = '1' WHERE `entry` = 189978 AND `item` = 36917;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '2',`mincountOrRef` = '-36920',`maxcount` = '1' WHERE `entry` = 189979 AND `item` = 36917;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1',`mincountOrRef` = '-36918',`maxcount` = '1' WHERE `entry` = 189979 AND `item` = 36918;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0.5',`mincountOrRef` = '-36920',`maxcount` = '1' WHERE `entry` = 189980 AND `item` = 36917;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '10',`mincountOrRef` = '-36920',`maxcount` = '1' WHERE `entry` = 189981 AND `item` = 36917;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1',`mincountOrRef` = '-36918',`maxcount` = '1' WHERE `entry` = 189981 AND `item` = 36918;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '10',`mincountOrRef` = '-36920',`maxcount` = '1' WHERE `entry` = 191133 AND `item` = 36917;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '2',`mincountOrRef` = '-36918',`maxcount` = '1' WHERE `entry` = 191133 AND `item` = 36918;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '50',`mincountOrRef` = '-37700', `maxcount` = '1' WHERE `entry` = 191133 AND `item` = 37700;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '30',`mincountOrRef` = '-37701', `maxcount` = '1' WHERE `entry` = 189978 AND `item` = 37701;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '60',`mincountOrRef` = '-37701', `maxcount` = '1' WHERE `entry` = 189979 AND `item` = 37701;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '20', `mincountOrRef` = '-36923', `groupid` = '0', `maxcount` = '1' WHERE entry = 195036 AND item = 36917;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '30', `mincountOrRef` = '-36921', `groupid` = '0', `maxcount` = '1' WHERE entry = 195036 AND item = 36918;
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(7775, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

# Conditions
REPLACE INTO `conditions` VALUES ('4', '1734', '11513', '0', '2', '11511', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('4', '1732', '11513', '0', '2', '11511', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('4', '2040', '11513', '0', '2', '11511', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('4', '324', '11513', '0', '2', '11511', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('4', '2047', '11513', '0', '2', '11511', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6540', '7771', '0', '1', '24746', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6543', '7776', '0', '1', '24746', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6543', '7775', '0', '1', '24748', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6543', '68', '0', '1', '24782', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6542', '7773', '0', '1', '24748', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6542', '7772', '0', '1', '24746', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9472', '0', '0', '8', '11733', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('18', '0', '38380', '0', '24', '1', '28145', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('18', '0', '47033', '0', '24', '1', '32149', '0', '0', '', null);
REPLACE INTO `gameobject_loot_template` VALUES ('181068', '7910', '1', '1', '0', '-7910', '1');
REPLACE INTO `gameobject_loot_template` VALUES ('181069', '7910', '1', '1', '0', '-7910', '1');
REPLACE INTO `gameobject_loot_template` VALUES ('1734', '11513', '20', '1', '0', '1', '1');
REPLACE INTO `gameobject_loot_template` VALUES ('1732', '11513', '20', '1', '0', '1', '1');
REPLACE INTO `gameobject_loot_template` VALUES ('2040', '11513', '20', '1', '0', '1', '1');
REPLACE INTO `gameobject_loot_template` VALUES ('324', '11513', '20', '1', '0', '1', '1');
REPLACE INTO `gameobject_loot_template` VALUES ('2047', '11513', '20', '1', '0', '1', '1');
REPLACE INTO `gameobject_loot_template` VALUES ('181569', '23436', '0.5', '1', '0', '-23436', '1');
REPLACE INTO `gossip_menu` VALUES ('6540', '7744');
REPLACE INTO `gossip_menu` VALUES ('6540', '7771');
REPLACE INTO `gossip_menu` VALUES ('6542', '7749');
REPLACE INTO `gossip_menu` VALUES ('6542', '7772');
REPLACE INTO `gossip_menu` VALUES ('6542', '7773');
REPLACE INTO `gossip_menu` VALUES ('6543', '68');
REPLACE INTO `gossip_menu` VALUES ('6543', '7775');
REPLACE INTO `gossip_menu` VALUES ('6543', '7776');
REPLACE INTO `gossip_menu_option` VALUES ('3062', '0', '0', 'Low spirits', '1', '1', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3062', '1', '0', 'Bad hang nail', '1', '1', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3062', '2', '0', 'Feeling underpowered', '1', '1', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3062', '3', '0', 'Jungle Fever', '1', '1', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3062', '4', '0', 'Uni-brow', '1', '1', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3062', '5', '0', 'Whiplash', '1', '1', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3062', '6', '0', 'I don\'t want to go back to work', '1', '1', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('5021', '5', '0', 'How many more supplies are needed for the next upgrade?', '1', '1', '5627', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9472', '0', '0', 'I\'d like passage to the Transitus Shield.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `reference_loot_template` VALUES ('36921', '36918', '0', '1', '1', '4', '12');
REPLACE INTO `reference_loot_template` VALUES ('36921', '36921', '0', '1', '1', '4', '12');
REPLACE INTO `reference_loot_template` VALUES ('36921', '36924', '0', '1', '1', '4', '12');
REPLACE INTO `reference_loot_template` VALUES ('36921', '36927', '0', '1', '1', '4', '12');
REPLACE INTO `reference_loot_template` VALUES ('36921', '36930', '0', '1', '1', '4', '12');
REPLACE INTO `reference_loot_template` VALUES ('36921', '36933', '0', '1', '1', '4', '12');
REPLACE INTO `reference_loot_template` VALUES ('36920', '36917', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('36920', '36920', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('36920', '36923', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('36920', '36926', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('36920', '36929', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('36920', '36932', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('36923', '36917', '0', '1', '1', '1', '6');
REPLACE INTO `reference_loot_template` VALUES ('36923', '36920', '0', '1', '1', '1', '6');
REPLACE INTO `reference_loot_template` VALUES ('36923', '36923', '0', '1', '1', '1', '6');
REPLACE INTO `reference_loot_template` VALUES ('36923', '36926', '0', '1', '1', '1', '6');
REPLACE INTO `reference_loot_template` VALUES ('36923', '36929', '0', '1', '1', '1', '6');
REPLACE INTO `reference_loot_template` VALUES ('36923', '36932', '0', '1', '1', '1', '6');
REPLACE INTO `reference_loot_template` VALUES ('37700', '37700', '0', '1', '1', '3', '6');
REPLACE INTO `reference_loot_template` VALUES ('37700', '37701', '0', '1', '1', '3', '6');
REPLACE INTO `reference_loot_template` VALUES ('37700', '37702', '0', '1', '1', '3', '6');
REPLACE INTO `reference_loot_template` VALUES ('37700', '37703', '0', '1', '1', '3', '6');
REPLACE INTO `reference_loot_template` VALUES ('37700', '37705', '0', '1', '1', '3', '6');
REPLACE INTO `reference_loot_template` VALUES ('37701', '37700', '0', '1', '1', '1', '2');
REPLACE INTO `reference_loot_template` VALUES ('37701', '37701', '0', '1', '1', '1', '2');
REPLACE INTO `reference_loot_template` VALUES ('37701', '37702', '0', '1', '1', '1', '2');
REPLACE INTO `reference_loot_template` VALUES ('37701', '37703', '0', '1', '1', '1', '2');
REPLACE INTO `reference_loot_template` VALUES ('37701', '37705', '0', '1', '1', '1', '2');
REPLACE INTO `reference_loot_template` VALUES ('37702', '37700', '0', '1', '1', '2', '8');
REPLACE INTO `reference_loot_template` VALUES ('37702', '37701', '0', '1', '1', '2', '8');
REPLACE INTO `reference_loot_template` VALUES ('37702', '37702', '0', '1', '1', '2', '8');
REPLACE INTO `reference_loot_template` VALUES ('37702', '37703', '0', '1', '1', '2', '8');
REPLACE INTO `reference_loot_template` VALUES ('37702', '37705', '0', '1', '1', '2', '8');
REPLACE INTO `reference_loot_template` VALUES ('35622', '35622', '0', '1', '1', '2', '4');
REPLACE INTO `reference_loot_template` VALUES ('35622', '35623', '0', '1', '1', '2', '4');
REPLACE INTO `reference_loot_template` VALUES ('35622', '35624', '0', '1', '1', '2', '4');
REPLACE INTO `reference_loot_template` VALUES ('35622', '35627', '0', '1', '1', '2', '4');
REPLACE INTO `reference_loot_template` VALUES ('35622', '36860', '0', '1', '1', '2', '4');
REPLACE INTO `reference_loot_template` VALUES ('21929', '21929', '0', '1', '1', '1', '2');
REPLACE INTO `reference_loot_template` VALUES ('21929', '23079', '0', '1', '1', '1', '2');
REPLACE INTO `reference_loot_template` VALUES ('21929', '23112', '0', '1', '1', '1', '2');
REPLACE INTO `reference_loot_template` VALUES ('21929', '23107', '0', '1', '1', '1', '2');
REPLACE INTO `reference_loot_template` VALUES ('21929', '23117', '0', '1', '1', '1', '2');
REPLACE INTO `reference_loot_template` VALUES ('21929', '23077', '0', '1', '1', '1', '2');
REPLACE INTO `reference_loot_template` VALUES ('32227', '32227', '0', '1', '1', '1', '2');
REPLACE INTO `reference_loot_template` VALUES ('32227', '32228', '0', '1', '1', '1', '2');
REPLACE INTO `reference_loot_template` VALUES ('32227', '32230', '0', '1', '1', '1', '2');
REPLACE INTO `reference_loot_template` VALUES ('32227', '32229', '0', '1', '1', '1', '2');
REPLACE INTO `reference_loot_template` VALUES ('32227', '32231', '0', '1', '1', '1', '2');
REPLACE INTO `reference_loot_template` VALUES ('32227', '32249', '0', '1', '1', '1', '2');
REPLACE INTO `reference_loot_template` VALUES ('7910', '12363', '0', '1', '1', '1', '1');


# FIX
# DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50314;
# DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50314;
# UPDATE conditions SET SourceGroup=9732 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=28666;
# UPDATE conditions SET SourceGroup=9732 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=28666;

# WDB_Check
# UPDATE `npc_text` SET `WDBVerified`=1 WHERE `ID` IN (9516,14330,15608,15609,9842,9704,9708,6520,14451,14452,10955);

# Temp_FIX
update quest_start_scripts set datalong2=3 where datalong2=2 AND command=15;
update quest_end_scripts set datalong2=3 where datalong2=2 AND command=15;
DELETE FROM conditions WHERE ConditionTypeOrReference=14 AND ConditionValue1=0;
UPDATE conditions SET ConditionValue2=0 WHERE ConditionTypeOrReference=25 AND ConditionValue2=1;
UPDATE conditions SET ConditionValue2=0 WHERE ConditionTypeOrReference=17 AND ConditionValue2=1;
# UPDATE `creature_template` SET `gossip_menu_id` = 0 WHERE `npcflag` = `npcflag`|32;
UPDATE `gossip_menu_option` SET `box_text`='Are you sure you wish to purchase a Dual Talent Specialization?' WHERE `option_id` =18;

# NPC_ADDON_FIX
UPDATE creature_template_addon SET path_id=0;
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
# UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE `spellid_2` = 0 AND `spelltrigger_2` = 6;
UPDATE `creature_template` SET npcflag = npcflag|1 WHERE `gossip_menu_id` > 0;
UPDATE `creature_template`, `smart_scripts` SET `creature_template`.`ainame`='SmartAI' WHERE `creature_template`.`entry`=`smart_scripts`.`entryorguid` AND `smart_scripts`.`Source_Type`=0;
UPDATE `gameobject_template`, `smart_scripts` SET `gameobject_template`.`ainame`='SmartGameObjectAI' WHERE `gameobject_template`.`entry`=`smart_scripts`.`entryorguid` AND `smart_scripts`.`Source_Type`=1;
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

UPDATE version SET `cache_id`= '605';
UPDATE version SET `db_version`= 'YTDB_0.14.3_R605_TC_R12888_TDBAI_335.0.3_RuDB_R40';
