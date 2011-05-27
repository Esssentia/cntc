# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 598_FIX_12047 599_FIX_12154 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('599_FIX_12047');

# TC
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,71948,0,18,1,37950,0,0,'','Valithria Dreamwalker - Copy Damage on Valithria'),
(13,0,70588,0,18,1,36789,0,0,'','Suppresser - Suppression target Valithria'),
(13,0,70602,0,18,1,36789,0,0,'','Risen Archmage - Corruption target Valithria'),
(13,0,71946,0,18,1,36789,0,0,'','Valithria Dreamwalker - Nightmare Cloud'),
(13,0,72031,0,18,1,36789,0,0,'','Valithria Dreamwalker - Nightmare Cloud'),
(13,0,72032,0,18,1,36789,0,0,'','Valithria Dreamwalker - Nightmare Cloud'),
(13,0,72033,0,18,1,36789,0,0,'','Valithria Dreamwalker - Nightmare Cloud'),
(13,0,70921,0,18,1,22515,0,0,'','The Lich King - Summon Gluttonous Abomination'),
(13,0,71032,0,18,1,22515,0,0,'','The Lich King - Summon Blistering Zombie'),
(13,0,71078,0,18,1,22515,0,0,'','The Lich King - Summon Risen Archmage'),
(13,0,70933,0,18,1,22515,0,0,'','The Lich King - Summon Blazing Skeleton'),
(13,0,72706,0,18,1,0,0,0,'','Valithria Dreamwalker - Achievement Check'),
(13,0,73843,0,18,1,0,0,0,'','Valithria Dreamwalker - Reputation reward');
INSERT IGNORE INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(36789,0,0x0000000,1,0,'72724 70904'),
(38174,0,0x0000000,1,0,'72724 70904'),
(37934,0,0x0000000,1,0,'70749'),
(37950,0,0x3000000,1,0,''),
(38068,0,0x0000000,1,0,'71085'),
(37918,0,0x0000000,1,0,'70715'),
(37907,0,0x0000000,1,0,'72962'),
(38168,0,0x0000000,1,0,'72962'),
(38726,0,0x0000000,1,0,'72962'),
(38736,0,0x0000000,1,0,'72962'),
(37945,0,0x0000000,1,0,'70763'), -- Dream Portal
(38430,0,0x0000000,1,0,'71994'), -- Nightmare Portal
(38186,0,0x0000000,1,0,'71304'), -- Dream Portal (Pre-effect)
(38429,0,0x0000000,1,0,'71986'), -- Nightmare Portal (Pre-effect)
(37985,0,0x3000000,1,0,'70876'), -- Dream Cloud
(38421,0,0x3000000,1,0,'71939 71970'); -- Nightmre Cloud
UPDATE `creature_template` SET `minlevel`=83,`maxlevel`=83,`exp`=2,`unit_class`=1,`faction_A`=1665,`faction_H`=1665,`unit_flags`=`unit_flags`|33554432,`baseattacktime`=2000,`scale`=1,`InhabitType`=7 WHERE `entry`=37950; -- Valithria Dreamwalker
UPDATE `creature_template` SET `minlevel`=60,`maxlevel`=60,`unit_class`=1,`faction_A`=14,`faction_H`=14,`unit_flags`=`unit_flags`|33554432,`baseattacktime`=2000,`flags_extra`=`flags_extra`|128 WHERE `entry`=38068; -- Mana Void
UPDATE `creature_template` SET `minlevel`=60,`maxlevel`=60,`unit_class`=1,`faction_A`=14,`faction_H`=14,`unit_flags`=`unit_flags`|33554432,`baseattacktime`=2000,`flags_extra`=`flags_extra`|128 WHERE `entry`=37918; -- Column of Frost
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`exp`=2,`unit_class`=1,`faction_A`=35,`faction_H`=35 WHERE `entry` IN (37945,38430); -- Dream Portal and Nightmare Portal
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`faction_A`=35,`faction_H`=35,`unit_flags`=`unit_flags`|33554432,`baseattacktime`=2000 WHERE `entry`=38186; -- Dream Portal (Pre-effect)
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`faction_A`=35,`faction_H`=35,`unit_flags`=`unit_flags`|33554432,`baseattacktime`=2000 WHERE `entry`=38429; -- Nightmare Portal (Pre-effect)
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`exp`=2,`unit_class`=1,`faction_A`=2022,`faction_H`=2022,`unit_flags`=`unit_flags`|33554432,`baseattacktime`=2000,`InhabitType`=7,`flags_extra`=`flags_extra`|128 WHERE `entry`=37985; -- Dream Cloud
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`exp`=2,`unit_class`=1,`faction_A`=2022,`faction_H`=2022,`unit_flags`=`unit_flags`|33554432,`baseattacktime`=2000,`InhabitType`=7,`flags_extra`=`flags_extra`|128 WHERE `entry`=38421; -- Nightmare Cloud
UPDATE `creature_template` SET `minlevel`=83,`maxlevel`=83,`exp`=2,`unit_class`=1,`faction_A`=35,`faction_H`=35,`npcflag`=`npcflag`|3,`baseattacktime`=2000,`scale`=1 WHERE `entry`=38589; -- Valithria Dreamwalker (questgiver)
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
(13,0,62385,0,18,1,32906,0,0,'','Brightleaf\'s Essence'),
(13,0,62386,0,18,1,32906,0,0,'','Stonebarks\'s Essence'),
(13,0,62387,0,18,1,32906,0,0,'','Ironbranch\'s Essence'),
(13,0,62521,0,18,1,32906,0,0,'','Attuned to Nature 25 Dose Reduction'),
(13,0,62524,0,18,1,32906,0,0,'','Attuned to Nature 2 Dose Reduction'),
(13,0,62525,0,18,1,32906,0,0,'','Attuned to Nature 10 Dose Reduction');
INSERT IGNORE INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(37007,0,0x0000000,0,0,'70733'),
(38031,0,0x0000000,0,0,'70733');
UPDATE `creature_template_addon` SET `bytes1`=0,`bytes2`=0x1,`mount`=0,`emote`=0,`auras`='29266' WHERE `entry`=40626; -- Ruby Drakonid (Permanent Feing Death)
UPDATE `creature_template_addon` SET `bytes1`=0,`bytes2`=0x1,`mount`=0,`emote`=0,`auras`='29266' WHERE `entry`=40627; -- Ruby Drake (Permanent Feing Death)
UPDATE `creature_template_addon` SET `bytes1`=0,`bytes2`=0x1,`mount`=0,`emote`=0,`auras`='29266' WHERE `entry`=40628; -- Ruby Scalebane (Permanent Feing Death)
UPDATE `creature_template_addon` SET `bytes1`=0,`bytes2`=0x1,`mount`=0,`emote`=0,`auras`='29266' WHERE `entry`=40870; -- Ruby Dragon (Permanent Feing Death)
INSERT IGNORE INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(39746,0,0,0x1,0, NULL), -- General Zarithrian
(39747,0,0,0x1,0, NULL), -- Saviana Ragefire
(39751,0,0,0x1,0, NULL), -- Baltharus the Warborn
(39794,0,0,0x1,0, NULL), -- Zarithrian Spawn Stalker
(39814,0,0,0x1,0, NULL), -- Onyx Flamecaller
(39863,0,0,0x1,0, NULL), -- Halion
(40001,0,0,0x1,0, NULL), -- Combustion
(40029,0,0,0x1,0, NULL), -- Meteor Strike
(40041,0,0,0x1,0, NULL), -- Meteor Strike
(40042,0,0,0x1,0, NULL), -- Meteor Strike
(40043,0,0,0x1,0, NULL), -- Meteor Strike
(40044,0,0,0x1,0, NULL), -- Meteor Strike
(40055,0,0,0x1,0, NULL), -- Meteor Strike
(40081,0,0x3000000,0x1,0, NULL), -- Orb Carrier
(40083,0,0x2000000,0x1,0, NULL), -- Shadow Orb
(40091,0,0,0x1,0, NULL), -- Orb Rotation Focus
(40100,0,0x2000000,0x1,0, NULL), -- Shadow Orb
(40142,0,0,0x1,0, NULL), -- Halion
(40146,0,0,0x1,0, NULL), -- Halion Controller
(40417,0,0,0x1,0, NULL), -- Charscale Invoker
(40419,0,0,0x1,0, NULL), -- Charscale Assaulter
(40421,0,0,0x1,0, NULL), -- Charscale Elite
(40423,0,0,0x1,0, NULL), -- Charscale Commander
(40429,0,0,0x1,0, NULL); -- Sanctum Guardian Xerestrasza
INSERT IGNORE INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(38391,0,50331648,1,0, NULL);
INSERT IGNORE INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(29598,0,0,1,0, NULL); -- Icefang
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,49062,0,18,1,27577,0,0,'','Spell 49062 target creature 27577');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,47463,0,18,1,26785,0,0,'','Spell 47463 targets only Directional Rune');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,51616,0,18,1,28442,0,0,'','Spell 51616 targets only Prophet of Rhunok');

DELETE FROM `disables` WHERE `sourceType`=4 AND `entry`=7021;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id`=7021;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(7021,6,4572,0, ''), -- check if player is in Warsong Flag Room
(7021,7,23333,0, ''); -- check if victim has a Horde Flag buff
DELETE FROM `disables` WHERE `sourceType`=4 AND  `entry`=7020;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id`=7020;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(7020,6,4571,0, ''), -- check if player is in Silverwing Flag Room
(7020,7,23335,0, ''); -- check if victim has a Alliance Flag buff
DELETE FROM `disables` WHERE `sourceType`=4 AND `entry`=3879;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id`=3879;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(3879,6,3820,0, ''), -- check if player is in Eye of the Storm
(3879,7,23505,0, ''); -- check if victim has a Berserking buff
-- Quest 12291 "The Forgotten Tale"
-- SAI for Forgotten Knight, Forgotten Rifleman, Forgotten Peasant, Forgotten Footman, Orik, & Forgotten Soul
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry` IN (27224,27225,27226,27229,27220,27347,27465);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (27224,27225,27226,27229,27220,27347,27465);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- Forgotten Knight
(27224,0,0,1,62,0,100,0,9544,0,0,0,11,48831,3,0,0,0,0,7,0,0,0,0,0,0,0, 'Forgotten Knight - On gossip option select quest credit'),
(27224,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Forgotten Knight - Close Gossip'),
(27224,0,2,0,23,0,100,0,48143,0,0,0,11,48143,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Knight - Add Forgotten Aura if missing'),
(27224,0,3,4,4,0,100,0,0,0,0,0,11,38556,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Forgotten Knight - Cast Throw on Aggro'),
(27224,0,4,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Knight - Set Phase 1 on Aggro'),
(27224,0,5,6,0,1,100,0,5,35,2300,3900,11,38556,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Forgotten Knight - Cast Throw (Phase 1)'),
(27224,0,6,0,61,1,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Knight - Set Ranged Weapon Model (Phase 1)'),
(27224,0,7,8,9,1,100,0,25,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Knight - Start Combat Movement at 25 Yards (Phase 1)'),
(27224,0,8,0,61,1,100,0,0,0,0,0,20,1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Forgotten Knight - Start Melee at 25 Yards (Phase 1)'),
(27224,0,9,10,9,1,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Knight - Start Combat Movement Below 5 Yards (Phase 1)'),
(27224,0,10,11,61,1,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Knight - Set Ranged Weapon Model Below 5 Yards (Phase 1)'),
(27224,0,11,0,61,1,100,0,0,0,0,0,20,1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Forgotten Knight - Start Melee Below 5 Yards (Phase 1)'),
(27224,0,12,13,9,1,100,0,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Knight - Prevent Combat Movement at 15 Yards (Phase 1)'),
(27224,0,13,0,61,1,100,0,0,0,0,0,20,0,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Forgotten Knight - Prevent Melee at 15 Yards (Phase 1)'),
(27224,0,14,0,7,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Knight - Set Melee Weapon Model on Evade'),
-- Forgotten Rifleman
(27225,0,0,1,62,0,100,0,9543,0,0,0,11,48830,3,0,0,0,0,7,0,0,0,0,0,0,0, 'Forgotten Rifleman - On gossip option select quest credit'), 
(27225,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Forgotten Rifleman - Close Gossip'), 
(27225,0,2,3,11,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - Prevent Combat Movement on Spawn'),
(27225,0,3,0,61,0,100,0,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - Prevent Melee on Spawn'),
(27225,0,4,0,23,0,100,0,48143,0,0,0,11,48143,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - Add Forgotten Aura if missing'),
(27225,0,5,6,4,0,100,0,0,0,0,0,11,15547,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Forgotten Rifleman - Cast Shoot on Aggro'),
(27225,0,6,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - Set Phase 1 on Aggro'),
(27225,0,7,8,0,1,100,0,5,30,2300,3900,11,15547,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Forgotten Rifleman - Cast Shoot (Phase 1)'),
(27225,0,8,0,61,1,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - Set Ranged Weapon Model (Phase 1)'),
(27225,0,9,0,0,1,100,0,9000,12000,9000,14000,11,17174,1,1,0,0,0,2,0,0,0,0,0,0,0, 'Forgotten Rifleman - Cast Concussive Shot (Phase 1)'),
(27225,0,10,11,9,1,100,0,25,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - Start Combat Movement at 25 Yards (Phase 1)'),
(27225,0,11,0,61,1,100,0,0,0,0,0,20,1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Forgotten Rifleman - Start Melee at 25 Yards (Phase 1)'),
(27225,0,12,13,9,1,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - Start Combat Movement Below 5 Yards (Phase 1)'),
(27225,0,13,14,61,1,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - Set Ranged Weapon Model Below 5 Yards (Phase 1)'),
(27225,0,14,0,61,1,100,0,0,0,0,0,20,1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Forgotten Rifleman - Start Melee Below 5 Yards (Phase 1)'),
(27225,0,15,16,9,1,100,0,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - Prevent Combat Movement at 15 Yards (Phase 1)'),
(27225,0,16,0,61,1,100,0,0,0,0,0,20,0,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Forgotten Rifleman - Prevent Melee at 15 Yards (Phase 1)'),
(27225,0,17,0,2,1,100,0,0,15,0,0,23,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - Set Phase 2 at 15% HP'),
(27225,0,18,19,2,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - Start Combat Movement at 15% HP (Phase 2)'),
(27225,0,19,20,61,2,100,0,0,0,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - Flee at 15% HP (Phase 2)'),
(27225,0,20,21,61,2,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - Say text0 at 15% HP (Phase 2)'),
(27225,0,21,0,61,2,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Rifleman - set phase 1 at 15% HP (Phase 2)'),
(27225,0,22,0,7,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Knight - Set Melee Weapon Model on Evade'),                              
-- Forgotten Peasant
(27226,0,0,1,62,0,100,0,9541,0,0,0,11,48829,3,0,0,0,0,7,0,0,0,0,0,0,0, 'Forgotten Peasant - On gossip option select quest credit'),
(27226,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Forgotten Peasant - Close Gossip'),
(27226,0,2,0,23,0,100,0,48143,0,0,0,11,48143,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Peasant - Add Forgotten Aura if missing'),
(27226,0,3,0,0,0,100,0,0,5,7000,10000,11,51601,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Forgotten Peasant - Cast Bonk'),
-- Forgotten Footman
(27229,0,0,1,62,0,100,0,9545,0,0,0,11,48832,3,0,0,0,0,7,0,0,0,0,0,0,0, 'Forgotten Footman - On gossip option select quest credit'),
(27229,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Forgotten Footman - Close Gossip'),
(27229,0,2,0,23,0,100,0,48143,0,0,0,11,48143,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Footman - Add Forgotten Aura if missing'),
(27229,0,3,0,0,0,100,0,3000,7000,9000,12000,11,32587,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Forgotten Footman - Cast Shield Block'),
-- Forgotten Captain
(27220,0,0,0,23,0,100,0,48143,0,0,0,11,48143,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Captain - Add Forgotten Aura if missing'),
(27220,0,1,0,0,0,100,0,6000,9000,8000,12000,11,51591,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Forgotten Captain - Cast Stormhammer'),
-- Orik
(27347,0,0,1,62,0,100,0,9542,0,0,0,11,48828,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Orik - On gossip option select create Murkweed Elixir'),
(27347,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Orik - Close Gossip'),
-- Forgotten Soul
(27465,0,0,0,11,0,100,0,0,0,0,0,11,29266,3,0,0,0,0,1,0,0,0,0,0,0,0, 'Forgotten Soul - On aura self');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry` IN (27225);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(27225,0,0, '%s attempts to run away in fear!',2,0,100,0,0,0, 'Forgotten Rifleman');
DELETE FROM `creature_text` WHERE `entry` IN (18733,17711);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`sound`,`comment`) VALUES
(17711,0,0, 'Do not proceed. You will be eliminated!',1,11344,'doomwalker SAY_AGGRO'),
(17711,1,0, 'Tectonic disruption commencing.',1,11345,'doomwalker SAY_EARTHQUAKE_1'),
(17711,1,1, 'Magnitude set. Release.',1,11346,'doomwalker SAY_EARTHQUAKE_2'),
(17711,2,0, 'Trajectory locked.',1,11347,'doomwalker SAY_OVERRUN_1'),
(17711,2,1, 'Engage maximum speed.',1,11348,'doomwalker SAY_OVERRUN_2'),
(17711,3,0, 'Threat level zero.',1,11349,'doomwalker SAY_SLAY_1'),
(17711,3,1, 'Directive accomplished.',1,11350,'doomwalker SAY_SLAY_2'),
(17711,3,2, 'Target exterminated.',1,11351,'doomwalker SAY_SLAY_3'),
(17711,4,0, 'System failure in five, f-o-u-r...',1,11352,'doomwalker SAY_DEATH');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceEntry`=23417;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(18,0,23417,0,24,1,16975,0,0, '', 'Sanctified Crystal - Uncontrolled Voidwalker target');
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (12757,12954,12971,12978,12979,12980,13048,13059,13099,13124,13125,13126,13335,13355);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(12978,12,0,0,''),
(12979,12,1,0,''),
(12971,12,2,0,''),
(12980,12,3,0,''),
(12978,11,0,0,'achievement_portal_jockey'),
(12979,11,0,0,'achievement_portal_jockey'),
(12971,11,0,0,'achievement_portal_jockey'),
(12980,11,0,0,'achievement_portal_jockey'),
(13355,12,1,0,''),
(13335,12,0,0,''),
(12757,12,0,0,''),
(12954,12,1,0,''),
(13048,12,2,0,''),
(13059,12,3,0,''),
(13099,12,0,0,''),
(13125,12,2,0,''),
(13124,12,1,0,''),
(13126,12,3,0,'');
DELETE FROM `creature_text` WHERE `entry` IN (16980,36789,37491,37493,37494,37495);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(16980,0,0,'Intruders have breached the inner sanctum. Hasten the destruction of the green dragon! Leave only bones and sinew for the reanimation!',14,0,0,0,0,17251,'The Lich King - SAY_LICH_KING_INTRO'),
(36789,0,0,'Heroes, lend me your aid. I... I cannot hold them off much longer. You must heal my wounds!',14,0,0,0,0,17064,'Valithria Dreamwalker - SAY_VALITHRIA_ENTER_COMBAT'),
(36789,1,0,'I have opened a portal into the Dream. Your salvation lies within, heroes...',14,0,0,0,0,17068,'Valithria Dreamwalker - SAY_VALITHRIA_DREAM_PORTAL'),
(36789,2,0,'My strength is returning! Press on, heroes!',14,0,0,0,0,17070,'Valithria Dreamwalker - SAY_VALITHRIA_75_PERCENT'),
(36789,3,0,'I will not last much longer!',14,0,0,0,0,17069,'Valithria Dreamwalker - SAY_VALITHRIA_25_PERCENT'),
(36789,4,0,'Forgive me for what I do! I... cannot... stop... ONLY NIGHTMARES REMAIN!',14,0,0,0,0,17072,'Valithria Dreamwalker - SAY_VALITHRIA_DEATH'),
(36789,5,0,'A tragic loss...',14,0,0,0,0,17066,'Valithria Dreamwalker - SAY_VALITHRIA_PLAYER_DEATH'),
(36789,6,0,'FAILURES!',14,0,0,0,0,17067,'Valithria Dreamwalker - SAY_VALITHRIA_BERSERK'),
(36789,7,0,'I am renewed! Ysera grants me the favor to lay these foul creatures to rest!',14,0,0,0,0,17071,'Valithria Dreamwalker - SAY_VALITHRIA_SUCCESS'),
(37491,1,0, 'You miserable fools never did manage to select a decent bat wing.',1,0,0,0,0,16587, 'Captain Arnath - SAY_ARNATH_RESURRECTED'),
(37491,2,0, 'THAT was for bringing me spoiled spider ichor!',1,0,0,0,0,16588, 'Captain Arnath - SAY_ARNATH_KILL'),
(37491,3,0, 'Don''t... let Finklestein use me... for his potions...',1,0,0,0,0,16589, 'Captain Arnath - SAY_ARNATH_SECOND_DEATH'),
(37493,1,0, 'What? This strength...? All of the pain is gone! You... must join me in the eternal embrace of death!',1,0,0,0,0,16811, 'Captain Brandon - SAY_BRANDON_RESURRECTED'),
(37493,2,0, 'It doesn''t hurt anymore, does it?',1,0,0,0,0,16812, 'Captain Brandon - SAY_BRANDON_KILL'),
(37493,3,0, 'I''m sorry...',1,0,0,0,0,16813, 'Captain Brandon - SAY_BRANDON_SECOND_DEATH'),
(37494,1,0, 'No! Why was I denied a death by flame? You must all BURN!',1,0,0,0,0,16845, 'Captain Grondel - SAY_GRONDEL_RESURRECTED'),
(37494,2,0, 'Can you feel the burn?',1,0,0,0,0,16846, 'Captain Grondel - SAY_GRONDEL_KILL'),
(37494,3,0, 'What... have I done? No!',1,0,0,0,0,16847, 'Captain Grondel - SAY_GRONDEL_SECOND_DEATH'),
(37495,1,0, 'There is no escaping the Lich King''s will. Prepare for an explosive encounter!',1,0,0,0,0,16999, 'Captain Rupert - SAY_RUPERT_RESURRECTED'),
(37495,2,0, 'So that''s what happens when you stand too close to a bomb!',1,0,0,0,0,17000, 'Captain Rupert - SAY_RUPERT_KILL'),
(37495,3,0, 'What an... explosive ending!',1,0,0,0,0,17001, 'Captain Rupert - SAY_RUPERT_SECOND_DEATH');
DELETE FROM `creature_text` WHERE `entry`=37007;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(37007,0,0, 'The master''s sanctum has been disturbed!',1,0,0,0,0,16865, 'Deathbound Ward - SAY_TRAP_ACTIVATE'),
(37007,0,1, 'I... awaken!',1,0,0,0,0,16866, 'Deathbound Ward - SAY_TRAP_ACTIVATE'),
(37007,0,2, 'Who... goes there...?',1,0,0,0,0,16867, 'Deathbound Ward - SAY_TRAP_ACTIVATE');
SET @Valkyr = 38391; -- Val'kyr Guardian
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@Valkyr; -- unk_15
INSERT IGNORE INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@Valkyr,0,50331648,1,0, NULL);
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Valkyr;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@Valkyr,0,0,0,25,0,100,0,0,0,0,0,58,1,71841,1500,2500,45,0,1,0,0,0,0,0,0,0, 'Val''kyr Guardian - On reset install AI template caster - Cast Smite every 1.5/2.5 seconds');
DELETE FROM `creature_text` WHERE `entry` IN (37007,37491,37493,37494,37495);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(37007,0,0, 'The master''s sanctum has been disturbed!',14,0,0,0,0,16865, 'Deathbound Ward - SAY_TRAP_ACTIVATE'),
(37007,0,1, 'I... awaken!',14,0,0,0,0,16866, 'Deathbound Ward - SAY_TRAP_ACTIVATE'),
(37007,0,2, 'Who... goes there...?',14,0,0,0,0,16867, 'Deathbound Ward - SAY_TRAP_ACTIVATE'),
(37491,1,0, 'You miserable fools never did manage to select a decent bat wing.',14,0,0,0,0,16587, 'Captain Arnath - SAY_ARNATH_RESURRECTED'),
(37491,2,0, 'THAT was for bringing me spoiled spider ichor!',14,0,0,0,0,16588, 'Captain Arnath - SAY_ARNATH_KILL'),
(37491,3,0, 'Don''t... let Finklestein use me... for his potions...',14,0,0,0,0,16589, 'Captain Arnath - SAY_ARNATH_SECOND_DEATH'),
(37493,1,0, 'What? This strength...? All of the pain is gone! You... must join me in the eternal embrace of death!',14,0,0,0,0,16811, 'Captain Brandon - SAY_BRANDON_RESURRECTED'),
(37493,2,0, 'It doesn''t hurt anymore, does it?',14,0,0,0,0,16812, 'Captain Brandon - SAY_BRANDON_KILL'),
(37493,3,0, 'I''m sorry...',14,0,0,0,0,16813, 'Captain Brandon - SAY_BRANDON_SECOND_DEATH'),
(37494,1,0, 'No! Why was I denied a death by flame? You must all BURN!',14,0,0,0,0,16845, 'Captain Grondel - SAY_GRONDEL_RESURRECTED'),
(37494,2,0, 'Can you feel the burn?',14,0,0,0,0,16846, 'Captain Grondel - SAY_GRONDEL_KILL'),
(37494,3,0, 'What... have I done? No!',14,0,0,0,0,16847, 'Captain Grondel - SAY_GRONDEL_SECOND_DEATH'),
(37495,1,0, 'There is no escaping the Lich King''s will. Prepare for an explosive encounter!',14,0,0,0,0,16999, 'Captain Rupert - SAY_RUPERT_RESURRECTED'),
(37495,2,0, 'So that''s what happens when you stand too close to a bomb!',14,0,0,0,0,17000, 'Captain Rupert - SAY_RUPERT_KILL'),
(37495,3,0, 'What an... explosive ending!',14,0,0,0,0,17001, 'Captain Rupert - SAY_RUPERT_SECOND_DEATH');
SET @Valkyr = 38391;
UPDATE `creature_template` SET `AIName`='SmartAI',`exp`=2,`minlevel`=80,`maxlevel`=80,`baseattacktime`=2000,`unit_flags`=`unit_flags`|0x8000,`speed_walk`=2.8,`speed_run`=1.07143 WHERE `entry`=@Valkyr+1; -- Val'kyr Protector
DELETE FROM `creature_template_addon` WHERE `entry`=@Valkyr+1;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@Valkyr+1,0,0x3000000,0x801,0, NULL); -- Val'kyr Protector
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Valkyr+1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@Valkyr+1,0,0,0,25,0,100,0,0,0,0,0,58,1,71842,1500,2500,45,0,1,0,0,0,0,0,0,0, 'Val''kyr Protector - On reset install AI template caster - Cast Smite (Rank 12) every 1.5/2.5 seconds');
UPDATE `creature_text` SET `type`=14 WHERE `type`=1; -- 9 rows changed
UPDATE `creature_text` SET `type`=16 WHERE `type`=2; -- 1 row changed
SET @ENTRY := 27853;
SET @GUID := 117694;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=27853;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,3000,3000,3000,3000,11,49731,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Projections and Plans Kill Credit Bunny - OOC - Cast Projections and Plans: Kill Credit on self'),
(-86615,0,0,0,1,0,100,1,1000,1000,30000,30000,11,46906,2,0,0,0,0,10,@GUID,@ENTRY,0,0,0,0,0, 'Surge Needle Sorcerer - OOC - Cast Surge Needle Beam'),
(-86615,0,1,0,0,0,100,0,3000,4000,3000,5000,11,51797,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Surge Needle Sorcerer - Combat - Cast Arcane Blast on victim'),
(-93641,0,0,0,1,0,100,1,1000,1000,30000,30000,11,46906,2,0,0,0,0,10,@GUID,@ENTRY,0,0,0,0,0, 'Surge Needle Sorcerer - OOC - Cast Surge Needle Beam'),
(-93641,0,1,0,0,0,100,0,3000,4000,3000,5000,11,51797,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Surge Needle Sorcerer - Combat - Cast Arcane Blast on victim'),
(-93642,0,0,0,1,0,100,1,1000,1000,30000,30000,11,46906,2,0,0,0,0,10,@GUID,@ENTRY,0,0,0,0,0, 'Surge Needle Sorcerer - OOC - Cast Surge Needle Beam'),
(-93642,0,1,0,0,0,100,0,3000,4000,3000,5000,11,51797,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Surge Needle Sorcerer - Combat - Cast Arcane Blast on victim');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry` IN (27213,27206);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (27213,27206);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(27213,0,0,0,11,0,100,0,0,0,0,0,12,27206,8,0,0,0,0,1,0,0,0,0,0,0,0,'Onslaught Warhorse - On Spawn - Summon Onslaught Knight'),
(27206,0,0,0,1,0,100,1,500,500,500,500,11,43671,3,0,0,0,0,19,27213,0,0,0,0,0,0,'Onslaught Knight - OOC once - Cast Ride Vehicle on Onslaught Warhorse');
-- Quest 12321 "A Righteous Sermon"
-- SAI for Inquisitor Hallard 
SET @ENTRY := 27316;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY; 
UPDATE `creature` SET `position_x`=3797.918,`position_y`=-677.4138,`position_z`=213.7526 WHERE id=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100); 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- AI
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - on reset - load path 0'),
(@ENTRY,0,1,0,19,0,100,0,12321,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - on quest accept 12321 - run script'),
-- Script
(@ENTRY*100,9,0,0,0,0,100,0,1000,1000,0,0,54,180000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - pause path'),
(@ENTRY*100,9,1,0,0,0,100,0,100,100,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Turn off Questgiver flag'),
(@ENTRY*100,9,2,0,0,0,100,0,100,100,0,0,69,0,0,0,0,0,0,1,0,0,0,3801.585,-678.4510,213.7526,0, 'Inquisitor Hallard - Script - Move to'),
(@ENTRY*100,9,3,0,0,0,100,0,1500,1500,0,0,69,0,0,0,0,0,0,1,0,0,0,3800.602,-680.9520,213.5028,0, 'Inquisitor Hallard - Script - Move to'),
(@ENTRY*100,9,4,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 0'),
(@ENTRY*100,9,5,0,0,0,100,0,6000,6000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 1'),
(@ENTRY*100,9,6,0,0,0,100,0,8000,8000,0,0,1,0,0,0,0,0,0,9,27577,0,30,0,0,0,0, 'Inquisitor Hallard - script - Mayor Godfrey Say text 0'),
(@ENTRY*100,9,7,0,0,0,100,0,3000,3000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 2'),
(@ENTRY*100,9,8,0,0,0,100,0,7000,7000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 3'),
(@ENTRY*100,9,9,0,0,0,100,0,3000,3000,0,0,1,1,0,0,0,0,0,9,27577,0,30,0,0,0,0, 'Inquisitor Hallard - script - Mayor Godfrey Say text 1'),
(@ENTRY*100,9,10,0,0,0,100,0,4000,4000,0,0,1,2,0,0,0,0,0,9,27577,0,30,0,0,0,0, 'Inquisitor Hallard - script - Mayor Godfrey Say text 2'),
(@ENTRY*100,9,11,0,0,0,100,0,4000,4000,0,0,1,3,0,0,0,0,0,9,27577,0,30,0,0,0,0, 'Inquisitor Hallard - script - Mayor Godfrey Say text 3'),
(@ENTRY*100,9,12,0,0,0,100,0,7000,7000,0,0,1,4,0,0,0,0,0,9,27577,0,30,0,0,0,0, 'Inquisitor Hallard - script - Mayor Godfrey Say text 4'),
(@ENTRY*100,9,13,0,0,0,100,0,7000,7000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 4'),
(@ENTRY*100,9,14,0,0,0,100,0,5000,5000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 5'),
(@ENTRY*100,9,15,0,0,0,100,0,5000,5000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 6'),
(@ENTRY*100,9,16,0,0,0,100,0,5000,5000,0,0,11,49061,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - cast spell 49061'),
(@ENTRY*100,9,17,0,0,0,100,0,4000,4000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 7'),
(@ENTRY*100,9,18,0,0,0,100,0,5000,5000,0,0,1,5,0,0,0,0,0,9,27577,0,30,0,0,0,0, 'Inquisitor Hallard - script - Mayor Godfrey Say text 5'),
(@ENTRY*100,9,19,0,0,0,100,0,3500,3500,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 8'),
(@ENTRY*100,9,20,0,0,0,100,0,3500,3500,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 9'),
(@ENTRY*100,9,21,0,0,0,100,0,500,500,0,0,1,6,0,0,0,0,0,9,27577,0,30,0,0,0,0, 'Inquisitor Hallard - script - Mayor Godfrey Say text 6'),
(@ENTRY*100,9,22,0,0,0,100,0,3000,3000,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 10'),
(@ENTRY*100,9,23,0,0,0,100,0,2000,2000,0,0,1,11,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 11'),
(@ENTRY*100,9,24,0,0,0,100,0,7000,7000,0,0,1,7,0,0,0,0,0,9,27577,0,30,0,0,0,0, 'Inquisitor Hallard - script - Mayor Godfrey Say text 7'),
(@ENTRY*100,9,25,0,0,0,100,0,7000,7000,0,0,1,12,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 12'),
(@ENTRY*100,9,26,0,0,0,100,0,12000,12000,0,0,1,8,0,0,0,0,0,9,27577,0,30,0,0,0,0, 'Inquisitor Hallard - script - Mayor Godfrey Say text 8'),
(@ENTRY*100,9,27,0,0,0,100,0,5000,5000,0,0,1,9,0,0,0,0,0,9,27577,0,30,0,0,0,0, 'Inquisitor Hallard - script - Mayor Godfrey Say text 9'),
(@ENTRY*100,9,28,0,0,0,100,0,13000,13000,0,0,1,13,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 13'),
(@ENTRY*100,9,29,0,0,0,100,0,7000,7000,0,0,1,10,0,0,0,0,0,9,27577,0,30,0,0,0,0, 'Inquisitor Hallard - script - Mayor Godfrey Say text 10'),
(@ENTRY*100,9,30,0,0,0,100,0,9000,9000,0,0,1,11,0,0,0,0,0,9,27577,0,30,0,0,0,0, 'Inquisitor Hallard - script - Mayor Godfrey Say text 11'),
(@ENTRY*100,9,31,0,0,0,100,0,5000,5000,0,0,1,14,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 14'),
(@ENTRY*100,9,32,0,0,0,100,0,5000,5000,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - turn to player'),
(@ENTRY*100,9,33,0,0,0,100,0,1000,1000,0,0,1,15,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 15'),
(@ENTRY*100,9,34,0,0,0,100,0,9000,9000,0,0,15,12321,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - give quest credit to player'),
(@ENTRY*100,9,35,0,0,0,100,0,1000,1000,0,0,66,0,0,0,0,0,0,9,27577,0,30,0,0,0,0, 'Inquisitor Hallard - script - turn to Mayor Godfrey'),
(@ENTRY*100,9,36,0,0,0,100,0,3000,3000,0,0,1,16,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Say text 16'),
(@ENTRY*100,9,37,0,0,0,100,0,10000,10000,0,0,81,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - Turn on Questgiver flag'),
(@ENTRY*100,9,38,0,0,0,100,0,0,0,0,0,78,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Inquisitor Hallard - script - reset creature');
-- waypoints for Inquisitor Hallard
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY); 
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES 
(@ENTRY,1,3804.538,-679.7090,213.7526, 'Inquisitor Hallard'), 
(@ENTRY,2,3802.979,-678.8114,214.2526, 'Inquisitor Hallard'),
(@ENTRY,3,3800.479,-678.0614,214.2526, 'Inquisitor Hallard'),
(@ENTRY,4,3797.918,-677.4138,213.7526, 'Inquisitor Hallard');
-- NPC talk text insert from sniff 
DELETE FROM `creature_text` WHERE `entry` IN (27316,27577); 
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES 
(27316,0,0, 'Stand back, $N, the beast might lash out and harm you.',12,7,100,396,0,0, 'Inquisitor Hallard'),
(27316,1,0, 'GODFREY! Hear me, fiend! Hear me, for I am the Light, here to deliver you from evil!',12,7,100,5,0,0, 'Inquisitor Hallard'),
(27577,0,0, '%s growls.',16,0,100,0,0,409, 'Mayor Godfrey'),
(27316,2,0, 'Good. I have your attention, then, Godfrey?',12,7,100,396,0,0, 'Inquisitor Hallard'),
(27316,3,0, 'We can do this in one of two ways, Godfrey. First, I will simply ask you to tell me what the unholy markings etched upon the pages of this tome mean. What say you?',12,7,100,1,0,0, 'Inquisitor Hallard'),
(27577,1,0, '%s hisses!',16,0,100,0,0,410, 'Mayor Godfrey'),
(27577,2,0, 'Tell you nothing, preacher.',12,0,100,1,0,0, 'Mayor Godfrey'),
(27577,3,0, 'What can you do to me that Kel''Thuzad has not? That the Lich King will not?',12,0,100,1,0,0, 'Mayor Godfrey'),
(27577,4,0, 'The book is your salvation, yes... but nothing will you know! NOTHING I SAY! NOTHING! ',12,0,100,1,0,0, 'Mayor Godfrey'),
(27316,4,0, 'Then it is option two.',12,7,100,1,0,0, 'Inquisitor Hallard'),
(27316,5,0, 'I say a prayer for you now, lost soul. May the Light take you gracefully.',12,7,100,68,4000,0, 'Inquisitor Hallard'),
(27316,6,0, 'Let the sermon begin.',12,7,100,1,0,0, 'Inquisitor Hallard'),
(27316,7,0, 'LIGHT TAKE YOU, BEAST!',12,7,100,0,0,0, 'Inquisitor Hallard'),
(27577,5,0, 'No more LIGHT! NO MORE! I BEG YOU!',12,0,100,0,0,0, 'Mayor Godfrey'),
(27316,8,0, 'BURN IN HOLY FIRE!',12,7,100,0,0,0, 'Inquisitor Hallard'),
(27316,9,0, 'LET THE LIGHT IN, GODFREY GOODARD!',12,7,100,0,0,0, 'Inquisitor Hallard'),
(27577,6,0, 'Never felt hurt like this!',12,0,100,0,0,0, 'Mayor Godfrey'),
(27316,10,0, 'May the power of Light compel you!',12,7,100,0,0,0, 'Inquisitor Hallard'),
(27316,11,0, 'I thought you would see the Light, Godfrey... Now speak quickly, fiend. What does it say?',12,7,100,396,0,0, 'Inquisitor Hallard'),
(27577,7,0, 'It tells of the coming apocalypse. How this world will burn and be reborn from death.',12,0,100,1,0,0, 'Mayor Godfrey'),
(27316,12,0, 'RUBBISH! Godfrey do you take me for a fool? Do not spew your Scourge propaganda at a man of the Light, heathen! Speak now or I will have the peasants craft a holy water bath and dip you into it like a dog with fleas!',12,7,100,6,0,0, 'Inquisitor Hallard'),
(27577,8,0, 'NOOOO!!! I tell you! I tell you everything!',12,0,100,39,0,0, 'Mayor Godfrey'),
(27577,9,0, 'Humans... Beneath the earth of Wintergarde Village you built a mausoleum! Why do you think Naxxramas attacked that spot? Thel''zan hides deep in your own crypt and sends a thousand-thousand corpses at you! Perish you will...',12,0,100,1,0,0, 'Mayor Godfrey'),
(27316,13,0, 'What? There is a mausoleum beneath the old village? What fools we are to not have noticed! We will find and strike down your master now, Godfrey. We will end this nightmare.',12,7,100,6,0,0, 'Inquisitor Hallard'),
(27577,10,0, 'How? Humans truly are stupid, yes? Thel''zan the Duskbringer! Thel''zan the Lich! He who is born of human flesh and bone, sacrificed all for power, protected by the Lich King!',12,0,100,1,0,0, 'Mayor Godfrey'),
(27577,11,0, 'You cannot stop Thel''zan! He bears the dark gift, bestowed upon him by the Lich King himself!',12,0,100,1,0,0, 'Mayor Godfrey'),
(27316,14,0, 'You let us worry about how we kill the monster, Godfrey.',12,7,100,396,0,0, 'Inquisitor Hallard'),
(27316,15,0, 'Return to Halford with the information that the good mayor was kind enough to submit, $N. I will finish here and squeeze whatever else this wretch might know about Thel''zan. Now, I will show Godfrey the rarely seen "option three."',12,7,100,1,0,0, 'Inquisitor Hallard'),
(27316,16,0, 'Let''s you and I have a chat about some things, Godfrey.',12,7,100,1,0,0, 'Inquisitor Hallard');
-- SAI for Grom'tor, Son of Oronok & Coilskar Commander (Shadowmoon Valley)
SET @ENTRY := 21291;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=-2815.424,`position_y`=1771.031,`position_z`=59.10168,`orientation`=4.967079 WHERE `guid`=74817;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- AI
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - On spawn - Start WP movement'),
(@ENTRY,0,1,0,1,0,100,0,10000,30000,240000,240000,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - OOC - Run Script'),
-- Script
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,54,16000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - Pause path'),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,69,0,0,0,0,0,0,1,0,0,0,-2814.744,1774.838,59.49939,0, 'Grom''tor, Son of Oronok - Script - Move to'),
(@ENTRY*100,9,2,0,0,0,100,0,1200,1200,0,0,66,0,0,0,0,0,0,19,21295,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - Turn to Coilskar Commander'),
(@ENTRY*100,9,3,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - Say text 0'),
(@ENTRY*100,9,4,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - Say text 1'),
(@ENTRY*100,9,5,0,0,0,100,0,3000,3000,0,0,5,5,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - do emote 5'),
(@ENTRY*100,9,6,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,19,21295,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - Coilskar Commander Say text 0'),
(@ENTRY*100,9,7,0,0,0,100,0,1000,1000,0,0,65,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - Resume path'),
(@ENTRY*100,9,8,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,19,21295,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - Coilskar Commander Say text 1'),
(@ENTRY*100,9,9,0,0,0,100,0,4000,4000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - Say text 2'),
(@ENTRY*100,9,10,0,0,0,100,0,2000,2000,0,0,54,26000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - Pause path'),
(@ENTRY*100,9,11,0,0,0,100,0,2000,2000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - Say text 3'),
(@ENTRY*100,9,12,0,0,0,100,0,2000,2000,0,0,1,2,0,0,0,0,0,19,21295,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - Coilskar Commander Say text 2'),
(@ENTRY*100,9,13,0,0,0,100,0,5000,5000,0,0,69,0,0,0,0,0,0,1,0,0,0,-2814.744,1774.838,59.49939,0, 'Grom''tor, Son of Oronok - Script - Move to'),
(@ENTRY*100,9,14,0,0,0,100,0,1500,1500,0,0,66,0,0,0,0,0,0,19,21295,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - Turn to Coilskar Commander'),
(@ENTRY*100,9,15,0,0,0,100,0,2000,2000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - Say text 4'),
(@ENTRY*100,9,16,0,0,0,100,0,2000,2000,0,0,5,25,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - do emote 25'),
(@ENTRY*100,9,17,0,0,0,100,0,1500,1500,0,0,11,36538,0,0,0,0,0,19,21295,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - cast 36538 on Coilskar Commander'),
(@ENTRY*100,9,18,0,0,0,100,0,1200,1200,0,0,11,36540,0,0,0,0,0,19,21295,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - cast 36540 on Coilskar Commander'),
(@ENTRY*100,9,19,0,0,0,100,0,1200,1200,0,0,11,36538,0,0,0,0,0,19,21295,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - cast 36538 on Coilskar Commander'),
(@ENTRY*100,9,20,0,0,0,100,0,1200,1200,0,0,11,36538,0,0,0,0,0,19,21295,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - cast 36538 on Coilskar Commander'),
(@ENTRY*100,9,21,0,0,0,100,0,1200,1200,0,0,11,36540,0,0,0,0,0,19,21295,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - cast 36540 on Coilskar Commander'),
(@ENTRY*100,9,22,0,0,0,100,0,1200,1200,0,0,11,36539,0,0,0,0,0,19,21295,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - cast 36539 on Coilskar Commander'),
(@ENTRY*100,9,23,0,0,0,100,0,1500,1500,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - Say text 5'),
(@ENTRY*100,9,24,0,0,0,100,0,500,500,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - Say text 6'),
(@ENTRY*100,9,25,0,0,0,100,0,2500,2500,0,0,65,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - Resume path'),
(@ENTRY*100,9,26,0,0,0,100,0,2500,2500,0,0,54,16000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - Pause path'),
(@ENTRY*100,9,27,0,0,0,100,0,100,100,0,0,66,0,0,0,0,0,0,19,21295,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - Turn to Coilskar Commander'),
(@ENTRY*100,9,28,0,0,0,100,0,500,500,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - Say text 7'),
(@ENTRY*100,9,29,0,0,0,100,0,3000,3000,0,0,1,4,0,0,0,0,0,19,21295,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - Coilskar Commander Say text 4'),
(@ENTRY*100,9,30,0,0,0,100,0,4000,4000,0,0,1,5,0,0,0,0,0,19,21295,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - Coilskar Commander Say text 5'),
(@ENTRY*100,9,31,0,0,0,100,0,4000,4000,0,0,65,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Grom''tor, Son of Oronok - Script - Resume path');
-- Waypoints for Grom'tor, Son of Oronok from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,-2817.188,1777.806,60.35168, 'Grom''tor, Son of Oronok'),
(@ENTRY,2,-2815.424,1771.031,59.10168, 'Grom''tor, Son of Oronok');
-- SAI for Coilskar Commander
SET @ENTRY := 21295;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,1,8,0,100,0,36539,0,0,0,11,36542,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Coilskar Commander - On Spellhit 36539 - cast 36542 on self'),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,90,7,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Coilskar Commander - On Spellhit 36539 - set bytes1 7'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Coilskar Commander - On Spellhit 36539 - set phase 1'),
(@ENTRY,0,3,4,1,1,100,0,6000,6000,6000,6000,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Coilskar Commander - On Spellhit 36539 - Coilskar Commander Say text 3 (phase 1)'),
(@ENTRY,0,4,5,61,1,100,0,0,0,0,0,28,36542,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Coilskar Commander - On Spellhit 36539 - remove aura 36542 (phase 1)'),
(@ENTRY,0,5,6,61,1,100,0,0,0,0,0,91,7,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Coilskar Commander - On Spellhit 36539 - unset bytes1 7 (phase 1)'),
(@ENTRY,0,6,0,61,1,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Coilskar Commander - On Spellhit 36539 - set phase 0 (phase 1)');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry` IN (21291,21295);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(21291,0,0, 'I''m through asking nicely, fish-man.',12,0,100,25,0,0, 'Grom''tor, Son of Oronok'),
(21291,1,0, 'Where is the Cipher of Damnation? I know a third of it is in this village.',12,0,100,6,0,0, 'Grom''tor, Son of Oronok'),
(21295,0,0, 'Whhaaat... are you sssspeaking of, ssssoft-sskin?',12,0,100,1,0,0, 'Coilskar Commander'),
(21295,1,0, 'The naga do nottt... have thissss... cipherrr...',12,0,100,1,0,0, 'Coilskar Commander'),
(21291,2,0, 'No... Of course not. What was I thinking? Why would you have a third of the Cipher of Damnation?',12,0,100,274,0,0, 'Grom''tor, Son of Oronok'),
(21291,3,0, 'I feel so stupid. Maybe I should unchain you and set you free?',12,0,100,11,0,0, 'Grom''tor, Son of Oronok'),
(21295,2,0, 'Yesss... Yesss... Ssset me freee...',12,0,100,1,0,0, 'Coilskar Commander'),
(21291,4,0, 'DO I HONESTLY LOOK THAT STUPID TO YOU, NAGA? NOW YOU FEEL PAIN!',12,0,100,5,0,0, 'Grom''tor, Son of Oronok'),
(21291,5,0, '%s spits on the Coilskar naga.',16,0,100,5,0,0, 'Grom''tor, Son of Oronok'),
(21291,6,0, 'GET UP YOU ROTTEN PIECE OF TRASH! GET UP BEFORE I END YOU!',12,0,100,5,0,0, 'Grom''tor, Son of Oronok'),
(21295,3,0, '%s regains consciousness.',16,0,100,0,0,0, 'Coilskar Commander'),
(21291,7,0, 'I''m listening...',12,0,100,273,0,0, 'Grom''tor, Son of Oronok'),
(21295,4,0, 'Do not beat the Coilsssskaarrr commander anymore, orc! I will tell you! The cipherrr... It is hidden in one of the chests at Coilssskarrr Point... The naga there hold the keysss...',12,0,100,1,0,0, 'Coilskar Commander'),
(21295,5,0, 'COILSSSKARRR!',12,0,100,15,0,0, 'Coilskar Commander');
-- Plagued Proto-Dragon SAI
SET @ENTRY  := 23680;
SET @SPELL  := 21862; -- Radiation
SET @SPELL1 := 9573;  -- Flame Breath
SET @SPELL2 := 3391;  -- Thrash
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,23,0,100,0,@SPELL,0,2000,2000,11,@SPELL,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Plagued Proto-Dragon - Aura Radiation not present - Add Aura Radiation'),
(@ENTRY,0,1,0,0,0,100,0,5000,7000,10000,15000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Plagued Proto-Dragon - Combat - Cast Flame Breath on victim'),
(@ENTRY,0,2,0,0,0,100,0,10000,15000,20000,25000,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Plagued Proto-Dragon - Combat - Cast Thrash on victim');
-- Plagued Proto-Dragon fix InhabitType
UPDATE `creature_template` SET `InhabitType`=7 WHERE entry=@ENTRY;
-- Plagued Proto-Dragon fix model info
UPDATE `creature_model_info` SET `bounding_radius`=0.225,`combat_reach`=3.75,`gender`=0 WHERE `modelid`=24874; -- Plagued Proto-Dragon
-- Plagued Proto-Dragon fix bytes1 and bytes2
INSERT IGNORE INTO `creature_template_addon` (`entry`,`bytes1`,`bytes2`) VALUES
(@ENTRY,50331648,1); -- Plagued Proto-Dragon
-- Pathing for Plagued Proto-Dragon Entry: 23680
SET @NPC := 107883;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=847.8322,`position_y`=-4441.198,`position_z`=159.749 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,838.0903,-4421.268,159.749,0,0,0,100,0),
(@PATH,2,801.8729,-4407.143,179.2211,0,0,0,100,0),
(@PATH,3,782.8507,-4413.701,194.3322,0,0,0,100,0),
(@PATH,4,777.4731,-4419.182,198.0821,0,0,0,100,0),
(@PATH,5,774.1382,-4438.679,206.8877,0,0,0,100,0),
(@PATH,6,814.439,-4462.499,206.8877,0,0,0,100,0),
(@PATH,7,848.4948,-4489.605,206.8877,0,0,0,100,0),
(@PATH,8,876.2105,-4490.642,206.8877,0,0,0,100,0),
(@PATH,9,896.0039,-4450.317,192.8044,0,0,0,100,0),
(@PATH,10,897.2634,-4422.887,179.6656,0,0,0,100,0),
(@PATH,11,907.506,-4392.95,179.6656,0,0,0,100,0),
(@PATH,12,933.834,-4369.785,166.0267,0,0,0,100,0),
(@PATH,13,956.7077,-4379.646,166.0267,0,0,0,100,0),
(@PATH,14,967.011,-4400.757,158.8045,0,0,0,100,0),
(@PATH,15,966.2571,-4425.053,159.749,0,0,0,100,0),
(@PATH,16,932.5647,-4461.108,159.749,0,0,0,100,0),
(@PATH,17,891.5416,-4476.208,159.749,0,0,0,100,0),
(@PATH,18,861.6124,-4460.188,159.749,0,0,0,100,0),
(@PATH,19,847.8322,-4441.198,159.749,0,0,0,100,0);
-- Shadow Adept <Cult of the Damned> SAI
SET @ENTRY   := 31145; -- NPC entry
SET @CHANNEL := 58847; -- Spell to cast
SET @TARGET  := 31245; -- Target creature entry
SET @SPELL1  := 60646; -- Shadow Blast
SET @SPELL2  := 17238; -- Drain Life
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,1000,1000,11,@CHANNEL,2,0,0,0,0,11,@TARGET,30,0,0,0,0,0, 'Shadow Adept - On spawn & reset - Channel Green Cultist Beam on target'),
(@ENTRY,0,1,0,0,0,100,0,4000,7000,6000,9000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Shadow Adept - Combat - Cast Shadow Blast on victim'),
(@ENTRY,0,2,0,2,0,100,0,0,80,20000,30000,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Shadow Adept - Combat - Cast Drain Life on victim');
-- Invisible Ooze Stalker Fixup and set as trigger
UPDATE `creature` SET `modelid`=0,`spawndist`=0,`MovementType`=0 WHERE `id`=31245;
UPDATE `creature_template` SET `InhabitType`=7,`flags_extra`=`flags_extra`|128 WHERE `entry`=31245;
-- Iron Rune-Weaver SAI
SET @ENTRY   := 26820; -- NPC entry
SET @CHANNEL := 47463; -- Rune-Weaver Channel
SET @TARGET  := 26785; -- Directional Rune
SET @SPELL1  := 52713; -- Rune Weaving
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,1000,1000,11,@CHANNEL,2,0,0,0,0,11,@TARGET,30,0,0,0,0,0, 'Iron Rune-Weaver - On spawn & reset - Channel Rune-Weaver Channel on Directional Rune'),
(@ENTRY,0,1,0,0,0,100,0,4000,7000,10000,16000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Iron Rune-Weaver - Combat - Cast Rune Weaving on victim');
-- Priest of Rhunok SAI
SET @ENTRY   := 28417; -- NPC entry
SET @CHANNEL := 51616; -- Priest of Rhunok: Channel to Prophet
SET @TARGET  := 28442; -- Prophet of Rhunok
SET @SPELL1  := 9734;  -- Holy Smite
SET @SPELL2  := 54518; -- Penance
SET @SPELL3  := 37274; -- Power Infusion
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,1000,1000,11,@CHANNEL,0,0,0,0,0,11,@TARGET,90,0,0,0,0,0, 'Priest of Rhunok - On spawn & reset - Priest of Rhunok: Channel to Prophet'),
(@ENTRY,0,1,0,0,0,100,0,2000,5000,10000,18000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Priest of Rhunok - Combat - Cast Holy Smite on victim'),
(@ENTRY,0,2,0,0,0,100,0,17000,26000,17000,20000,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Priest of Rhunok - Combat - Cast Penance on victim'),
(@ENTRY,0,3,0,0,0,100,0,12000,16000,60000,60000,11,@SPELL3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Priest of Rhunok - Combat - Cast Power Infusion on self');
-- SAI for Karaaz,Dealer Aljaan,Dealer Digriz (Netherstorm)
SET @ENTRY := 21878;
UPDATE creature_template SET AIName='SmartAI' WHERE entry IN (20242,19533,19534);
DELETE FROM smart_scripts WHERE source_type=0 AND entryorguid IN (20242,19533,19534);
INSERT INTO smart_scripts (entryorguid,source_type,id,link,event_type,event_phase_mask,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,action_type,action_param1,action_param2,action_param3,action_param4,action_param5,action_param6,target_type,target_param1,target_param2,target_param3,target_x,target_y,target_z,target_o,comment) VALUES
(20242,0,0,0,1,0,100,0,1000,30000,60000,120000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Karaaz - OOC - Say Text 0'),
(19533,0,0,0,1,0,100,0,1000,30000,60000,120000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dealer Aljaan - OOC - Say Text 0'),
(19534,0,0,0,1,0,100,0,1000,30000,60000,120000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dealer Digriz - OOC - Say Text 0');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry` IN (20242,19533,19534) AND `groupid` IN (0);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(20242,0,0, 'The best selection of smuggled goods is available right here, $N.  Great for the whole family!  Avoid goblin taxation and naaru prohibition - the Consortium is here to fill your every shopping need!',12,0,100,1,0,0, 'Karaaz'),
(19533,0,0, 'A tradesman, perhaps? You need look no further than I for supplies. My prices are quite fair, friend. These items were difficult to acquire, but what does the source matter, eh? You''ll have what you need.',12,0,100,1,0,0, 'Dealer Aljaan'),
(19534,0,0, 'The creatures of this place are strong, wayfarer. You''ll need ample ammunition if you hope to survive. You''re in luck - I am well-stocked with fine arrows, bullets, and throwing weapons. The price is reasonable, considering circumstances.',12,0,100,1,0,0, 'Dealer Digriz');
-- Convert Grimscale Murloc EAI script to SAI
SET @ENTRY   := 15668; -- NPC entry
SET @SPELL   := 26661; -- Fear
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,6000,10000,18000,23000,11,@SPELL,3,0,0,0,0,2,0,0,0,0,0,0,0,'Grimscale Murloc - IC - Cast Fear');
UPDATE `quest_template` SET `SpecialFlags` = 2 WHERE `entry` = 12321;

# virusav
DELETE FROM `gameobject` WHERE `id`=190554;

# NeatElves
UPDATE `creature` SET `spawndist` = '0',`MovementType` = '0' WHERE `guid` =7172;
UPDATE `quest_template` SET `SpecialFlags` = '2',`RewMoneyMaxLevel` = '54300' WHERE `entry` =2278;
UPDATE `gossip_menu_option` SET `action_script_id` = '576' WHERE `menu_id` =576 AND `id` =0;
DELETE FROM `gossip_scripts` WHERE `id` = 576;
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`) VALUES ('576', '0', '7', '2278');
UPDATE `gameobject` SET `position_x` = '455.827',`position_y` = '-628.813' WHERE `guid` =5073;

# FIX
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(120732, 4680, 1, 1, 1, 0, 0, -2001.41, 1920.69, 69.2124, 4.46501, 300, 3, 0, 1604, 0, 0, 1),
(120733, 4680, 1, 1, 1, 0, 0, -2051.81, 1904.82, 70.4807, 5.77697, 300, 5, 0, 1604, 0, 0, 1),
(120734, 4680, 1, 1, 1, 0, 0, -2043.25, 1943.66, 72.3547, 3.20805, 300, 3, 0, 1604, 0, 0, 1),
(120735, 4680, 1, 1, 1, 0, 0, -2063.22, 1871.55, 69.3997, 1.40544, 300, 5, 0, 1604, 0, 0, 1),
(120736, 4680, 1, 1, 1, 0, 0, -2075.86, 1913.09, 68.2203, 0.070087, 300, 3, 0, 1604, 0, 0, 1);
UPDATE `quest_template` SET `PrevQuestId` = 10566 WHERE `PrevQuestId` = -10566;

# NeatElves
REPLACE INTO `creature_template_addon` (`entry`, `emote`, `auras`) VALUES
(38031, 417, '70733'),
(37934, 0, '70749'),
(38174, 0, '72724 70904');
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` =18497;
UPDATE `creature_template_addon` SET `auras` = '18950 18943' WHERE `entry` =29249;
UPDATE `creature_template_addon` SET `auras` = '18950' WHERE `entry` =30061;
UPDATE `creature_template_addon` SET `auras` = '1787 18950' WHERE `entry` =29825;
UPDATE `creature_template_addon` SET `auras` = '18950 46598' WHERE `entry` =36938;
UPDATE `creature_template_addon` SET `auras` = '18950 69008' WHERE `entry` =36498;
UPDATE `creature_template_addon` SET `auras` = '63501 18950 66865' WHERE `entry` =35518;
UPDATE `creature_template_addon` SET `auras` = '18950 72712' WHERE `entry` in (38599,38603);
UPDATE `creature_template_addon` SET `emote` = '375' WHERE `entry` =30498;
UPDATE `creature_template_addon` SET `emote` = '333' WHERE `entry` =30496;
UPDATE `creature_template_addon` SET `emote` = '173' WHERE `entry` =19904;
UPDATE `creature_template_addon` SET `auras` = '18950 63007' WHERE `entry` =33732;

# Selexanus
UPDATE `quest_template` SET `RequiredRaces` = 0 WHERE `entry`= 11479;

# FIX
INSERT IGNORE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`curhealth`) VALUES
(120737, 30996, 595, 3, 1, 1755.69, 1290.88, 140.749, 2.2986, 300, 1),
(120738, 30996, 595, 3, 1, 1755.69, 1290.88, 141.49, 2.2986, 300, 1),
(120739, 30996, 595, 3, 1, 1755.69, 1290.88, 142.231, 2.2986, 300, 1),
(120740, 30996, 595, 3, 1, 1756.65, 1289.24, 140.47, 2.07476, 300, 1),
(120741, 30996, 595, 3, 1, 1756.65, 1289.24, 141.211, 2.07476, 300, 1),
(120742, 30996, 595, 3, 1, 1757.36, 1287.92, 140.287, 1.76846, 300, 1);
UPDATE `gameobject` SET `rotation0` = 0 WHERE `guid` = 8322;
UPDATE `gameobject` SET `rotation0` = 0 WHERE `guid` = 8344;
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35 WHERE `entry` = 14525;
UPDATE `gameobject_template` SET `flags` = 4 WHERE `entry` = 187039;
UPDATE `gameobject_template` SET `flags` = 4 WHERE `entry` = 187072;
UPDATE `creature_template` SET `speed_run`=3.571429,`speed_walk`=3.6,`InhabitType`=5 WHERE `entry`=30275;
INSERT IGNORE INTO `npc_text` (`ID`,`prob0`,`text0_0`,`text0_1`,`lang0`,`em0_0`,`em0_1`,`em0_2`,`em0_3`,`em0_4`,`em0_5`,`prob1`,`text1_0`,`text1_1`,`lang1`,`em1_0`,`em1_1`,`em1_2`,`em1_3`,`em1_4`,`em1_5`,`prob2`,`text2_0`,`text2_1`,`lang2`,`em2_0`,`em2_1`,`em2_2`,`em2_3`,`em2_4`,`em2_5`,`prob3`,`text3_0`,`text3_1`,`lang3`,`em3_0`,`em3_1`,`em3_2`,`em3_3`,`em3_4`,`em3_5`,`prob4`,`text4_0`,`text4_1`,`lang4`,`em4_0`,`em4_1`,`em4_2`,`em4_3`,`em4_4`,`em4_5`,`prob5`,`text5_0`,`text5_1`,`lang5`,`em5_0`,`em5_1`,`em5_2`,`em5_3`,`em5_4`,`em5_5`,`prob6`,`text6_0`,`text6_1`,`lang6`,`em6_0`,`em6_1`,`em6_2`,`em6_3`,`em6_4`,`em6_5`,`prob7`,`text7_0`,`text7_1`,`lang7`,`em7_0`,`em7_1`,`em7_2`,`em7_3`,`em7_4`,`em7_5`) VALUES
(16726,1,'I care far too deeply about redeeming Eldre''thalas to deal with any other matter. War, strife, allegiances, none of it matters until this city is safe.','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0),
(8336,1,'What now?  Can''t you see I''m rather busy?','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0),
(16540,1,'I train only warriors, $c. You''ll have to look elsewhere.','I train only warriors, $c. You''ll have to look elsewhere.',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0);
UPDATE `creature_template` SET `minlevel`=83,`maxlevel`=83,`unit_class`=1,`faction_A`=1665,`faction_H`=1665,`unit_flags`=`unit_flags`|33554432,`baseattacktime`=2000,`scale`=1,`InhabitType`=7 WHERE `entry`=37950; -- Valithria Dreamwalker
UPDATE `creature_template` SET `minlevel`=60,`maxlevel`=60,`unit_class`=1,`faction_A`=14,`faction_H`=14,`unit_flags`=`unit_flags`|33554432,`baseattacktime`=2000,`flags_extra`=`flags_extra`|128 WHERE `entry`=38068; -- Mana Void
UPDATE `creature_template` SET `minlevel`=60,`maxlevel`=60,`unit_class`=1,`faction_A`=14,`faction_H`=14,`unit_flags`=`unit_flags`|33554432,`baseattacktime`=2000,`flags_extra`=`flags_extra`|128 WHERE `entry`=37918; -- Column of Frost
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`unit_class`=1,`faction_A`=35,`faction_H`=35 WHERE `entry` IN (37945,38430); -- Dream Portal and Nightmare Portal
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`faction_A`=35,`faction_H`=35,`unit_flags`=`unit_flags`|33554432,`baseattacktime`=2000 WHERE `entry`=38186; -- Dream Portal (Pre-effect)
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`faction_A`=35,`faction_H`=35,`unit_flags`=`unit_flags`|33554432,`baseattacktime`=2000 WHERE `entry`=38429; -- Nightmare Portal (Pre-effect)
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`unit_class`=1,`faction_A`=2022,`faction_H`=2022,`unit_flags`=`unit_flags`|33554432,`baseattacktime`=2000,`InhabitType`=7,`flags_extra`=`flags_extra`|128 WHERE `entry`=37985; -- Dream Cloud
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`unit_class`=1,`faction_A`=2022,`faction_H`=2022,`unit_flags`=`unit_flags`|33554432,`baseattacktime`=2000,`InhabitType`=7,`flags_extra`=`flags_extra`|128 WHERE `entry`=38421; -- Nightmare Cloud
UPDATE `creature_template` SET `minlevel`=83,`maxlevel`=83,`unit_class`=1,`faction_A`=35,`faction_H`=35,`npcflag`=`npcflag`|3,`baseattacktime`=2000,`scale`=1 WHERE `entry`=38589; -- Valithria Dreamwalker (questgiver)
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(120743,37950,631,15,20,0,0,4202.847,2484.917,383.8368,0.00000,604800,0,0,0,0,0,0),
(120744,22515,631,10,1,0,0,4166.170,2411.520,364.9520,1.57080,120,0,0,0,0,0,0),
(120881,37985,631,3,16,0,0,4155.51,2478.76,382.494,4.97053,30,10,0,0,0,0,1),
(120882,37985,631,3,16,0,0,4158.75,2494.08,384.334,2.31129,30,10,0,0,0,0,1),
(120883,37985,631,3,16,0,0,4172.57,2464.47,385.368,3.72021,30,10,0,0,0,0,1),
(120884,37985,631,3,16,0,0,4173.67,2504.13,386.174,2.67313,30,10,0,0,0,0,1),
(120885,37985,631,3,16,0,0,4181.62,2514.91,386.374,2.65209,30,10,0,0,0,0,1),
(120886,37985,631,3,16,0,0,4186.72,2450.97,388.373,4.95968,30,10,0,0,0,0,1),
(120887,37985,631,3,16,0,0,4200.96,2456.00,387.128,3.58291,30,10,0,0,0,0,1),
(121053,37985,631,3,16,0,0,4202.23,2508.00,383.985,2.09137,30,10,0,0,0,0,1),
(121096,37985,631,3,16,0,0,4220.35,2515.16,388.649,2.34469,30,10,0,0,0,0,1),
(121097,37985,631,3,16,0,0,4222.26,2455.20,385.568,0.00000,30,10,0,0,0,0,1),
(121124,37985,631,3,16,0,0,4231.61,2464.44,389.011,0.00000,30,10,0,0,0,0,1),
(122978,37985,631,3,16,0,0,4236.75,2500.62,383.373,5.97527,30,10,0,0,0,0,1),
(123025,37985,631,3,16,0,0,4243.29,2476.89,386.076,0.00000,30,10,0,0,0,0,1),
(123026,37985,631,3,16,0,0,4244.83,2493.18,387.677,4.29139,30,10,0,0,0,0,1),
(123027,38421,631,12,20,0,0,4155.51,2478.76,382.494,4.97053,30,10,0,0,0,0,1),
(123029,38421,631,12,20,0,0,4158.75,2494.08,384.334,2.31129,30,10,0,0,0,0,1),
(123030,38421,631,12,20,0,0,4172.57,2464.47,385.368,3.72021,30,10,0,0,0,0,1),
(123031,38421,631,12,20,0,0,4181.62,2514.91,386.374,2.65209,30,10,0,0,0,0,1),
(123033,38421,631,12,20,0,0,4200.96,2456.00,387.128,3.58291,30,10,0,0,0,0,1),
(123034,38421,631,12,20,0,0,4202.23,2508.00,383.985,2.09137,30,10,0,0,0,0,1),
(123035,38421,631,12,20,0,0,4220.35,2515.16,388.649,2.34469,30,10,0,0,0,0,1),
(123037,38421,631,12,20,0,0,4222.26,2455.20,385.568,0.00000,30,10,0,0,0,0,1),
(123038,38421,631,12,20,0,0,4236.75,2500.62,383.373,5.97527,30,10,0,0,0,0,1),
(123461,38421,631,12,20,0,0,4243.29,2476.89,386.076,0.00000,30,10,0,0,0,0,1);
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=18883;
UPDATE `creature_model_info` SET `bounding_radius`=1.75,`combat_reach`=1,`gender`=0 WHERE `modelid`=32179; -- General Zarithrian
UPDATE `creature_model_info` SET `bounding_radius`=2.625,`combat_reach`=5.25,`gender`=1 WHERE `modelid`=31577; -- Saviana Ragefire
UPDATE `creature_model_info` SET `bounding_radius`=3,`combat_reach`=9,`gender`=0 WHERE `modelid`=31761; -- Baltharus the Warborn
UPDATE `creature_model_info` SET `bounding_radius`=1.8,`combat_reach`=1,`gender`=2 WHERE `modelid`=31952; -- Halion
UPDATE `creature_model_info` SET `bounding_radius`=2,`combat_reach`=4,`gender`=2 WHERE `modelid`=16946; -- Combustion
UPDATE `creature_model_info` SET `bounding_radius`=1.5,`combat_reach`=5,`gender`=0 WHERE `modelid`=14308; -- Charscale Assaulter
UPDATE `creature_model_info` SET `bounding_radius`=0.67025,`combat_reach`=2.625,`gender`=1 WHERE `modelid`=31962; -- Sanctum Guardian Xerestrasza
UPDATE `creature_model_info` SET `bounding_radius`=1.875,`combat_reach`=6.25,`gender`=0 WHERE `modelid`=32105; -- Ruby Drakonid
UPDATE `creature_model_info` SET `bounding_radius`=3.75,`combat_reach`=4.375,`gender`=0 WHERE `modelid`=32104; -- Ruby Scalebane
UPDATE `creature_model_info` SET `bounding_radius`=1,`combat_reach`=1,`gender`=1 WHERE `modelid`=2718; -- Ruby Dragon
UPDATE `creature_model_info` SET `bounding_radius`=0.124,`combat_reach`=1.6,`gender`=1 WHERE `modelid`=31181;
UPDATE `creature_template` SET `speed_run`=1.71429 WHERE `entry`=29598; -- Icefang
UPDATE `creature_template` SET `spell1`=54897, `spell2`=54907, `spell3`=54788 WHERE `entry`=29602; -- Icefang
UPDATE `creature_template` SET `unit_class`=8 WHERE `entry`=40418;
UPDATE `creature_template` SET `speed_run`=1.25 WHERE `entry`=29753;

# NeatElves
UPDATE `creature_template` SET `gossip_menu_id`=8118 WHERE `entry`=20470;
UPDATE `creature_template` SET `gossip_menu_id`=8119 WHERE `entry`=20471;
UPDATE `creature_template` SET `gossip_menu_id`=8576 WHERE `entry`=22899;
DELETE FROM `gossip_menu` WHERE `entry`=8118 AND `text_id`=10054;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8118,10054);
DELETE FROM `gossip_menu` WHERE `entry`=8119 AND `text_id`=10056;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8119,10056);
DELETE FROM `gossip_menu` WHERE `entry`=8576 AND `text_id`=10752;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8576,10752);

# Conditions
REPLACE INTO `conditions` VALUES ('13', '0', '51331', '0', '18', '1', '28053', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '51332', '0', '18', '1', '28054', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '51366', '0', '18', '1', '28093', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8118', '10055', '0', '8', '10335', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8119', '10057', '0', '8', '10336', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '562', '0', '0', '9', '2278', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('18', '0', '38573', '0', '24', '1', '28054', '0', '0', '', null);
REPLACE INTO `gossip_menu` VALUES ('8118', '10055');
REPLACE INTO `gossip_menu` VALUES ('8119', '10057');
REPLACE INTO `gossip_menu_option` VALUES ('562', '0', '0', 'Who are the Earthen?', '1', '1', '561', '0', '0', '0', '0', null);
DELETE FROM conditions WHERE SourceTypeOrReferenceId=13 AND SourceEntry=70936;


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

UPDATE version SET `cache_id`= '599';
UPDATE version SET `db_version`= 'YTDB_0.14.2_R599_TC_R12154_TDBAI_335.0.3_RuDB_R38.9';
