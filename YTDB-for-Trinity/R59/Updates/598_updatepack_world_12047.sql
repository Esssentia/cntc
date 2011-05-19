# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 597_FIX_2011051100 598_FIX_12047 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('598_FIX_12047');

# TC
REPLACE INTO `gossip_scripts` VALUES ('50020', '0', '15', '53810', '3', '0', '0', '0', '0', '0');
DELETE FROM `conditions` WHERE `SourceEntry` = 56453;
INSERT INTO `conditions` VALUES
(17,0,56453,0,11,67544,0,0,0,'','Lock and Load - Lock and Load Marker');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,70078,0,18,1,37122,0,0, '', 'Sister Svalna - Caress of Death'),
(13,0,70078,0,18,1,37123,0,0, '', 'Sister Svalna - Caress of Death'),
(13,0,70078,0,18,1,37124,0,0, '', 'Sister Svalna - Caress of Death'),
(13,0,70078,0,18,1,37125,0,0, '', 'Sister Svalna - Caress of Death'),
(13,0,70053,0,18,1,37122,0,0, '', 'Sister Svalna - Revive Champion'),
(13,0,70053,0,18,1,37123,0,0, '', 'Sister Svalna - Revive Champion'),
(13,0,70053,0,18,1,37124,0,0, '', 'Sister Svalna - Revive Champion'),
(13,0,70053,0,18,1,37125,0,0, '', 'Sister Svalna - Revive Champion'),
(18,0,50307,0,24,1,37126,0,0, '', 'Infernal Spear- Sister Svalna target');

UPDATE `game_event` SET `start_time` = '2011-08-07 12:01:00' WHERE `evententry` = 3;
DELETE FROM `creature_text` WHERE `entry` IN (37126,37129,37122,37123,37124,37125);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(37126,0,0, 'You may have once fought beside me, Crok, but now you are nothing more than a traitor. Come, your second death approaches!',1,0,0,0,0,17017, 'Sister Svalna - SAY_EVENT_START'),
(37126,1,0, 'Miserable creatures! Die!',1,0,0,0,0,17018, 'Sister Svalna - SAY_KILL_CAPTAIN'),
(37126,2,0, 'Foolish Crok. You brought my reinforcements with you. Arise, Argent Champions, and serve the Lich King in death!',1,0,0,0,0,17019, 'Sister Svanlna - SAY_RESURRECT_CAPTAINS'),
(37126,3,0, 'Come, Scourgebane. I''ll show the master which of us is truly worthy of the title of \"Champion\"!',1,0,0,0,0,17020, 'Sister Svalna - SAY_AGGRO'),
(37126,4,0, 'What a pitiful choice of an ally, Crok!',1,0,0,0,0,17021, 'Sister Svalna - SAY_KILL'),
(37126,5,0, 'What? They died so easily? No matter.',1,0,0,0,0,17022, 'Sister Svalna - SAY_CAPTAIN_DEATH'),
(37126,6,0, 'Perhaps... you were right, Crok.',1,0,0,0,0,17023, 'Sister Svalna - SAY_DEATH'),
(37126,7,0, '%s has impaled $N!',3,0,0,0,0,0, 'Sister Svalna - EMOTE_SVALNA_IMPALE'),
(37126,8,0, '%s''s Aether Shield has been shattered by $N!',3,0,0,0,0,0, 'Sister Svalna - EMOTE_SVALNA_BROKEN_SHIELD'),
(37129,0,0, 'Ready your arms, my Argent Brothers. The Vrykul will protect the Frost Queen with their lives.',1,0,0,0,0,16819, 'Crok Scourgebane - SAY_CROK_INTRO_1'),
(37129,1,0, 'Enough idle banter! Our champions have arrived - support them as we push our way through the hall!',1,0,0,0,0,16820, 'Crok Scourgebane - SAY_CROK_INTRO_3'),
(37129,2,0, 'Draw them back to us, and we''ll assist you.',1,0,0,0,0,16821, 'Crok Scourgebane - SAY_CROK_COMBAT_WP_0'),
(37129,3,0, 'Quickly, push on!',1,0,0,0,0,16823, 'Crok Scourgebane - SAY_CROK_COMBAT_WP_1'),
(37129,4,0, 'Her reinforcements will arrive shortly, we must bring her down quickly!',1,0,0,0,0,16824, 'Crok Scourgebane - SAY_CROK_FINAL_WP'),
(37129,5,0, 'I''ll draw her attacks. Return our brothers to their graves, then help me bring her down!',1,0,0,15,0,16826, 'Crok Scourgebane - SAY_CROK_COMBAT_SVALNA'),
(37129,6,0, 'I must rest for a moment',1,0,0,0,0,16826, 'Crok Scourgebane - SAY_CROK_WEAKENING_GAUNTLET'),
(37129,7,0, 'Champions, I cannot hold her back any longer!',1,0,0,0,0,16827, 'Crok Scourgebane - SAY_CROK_WEAKENING_SVALNA'),
(37129,8,0, 'Vengeance alone... was not enough!',1,0,0,0,0,16828, 'Crok Scourgebane - SAY_CROK_DEATH'),
(37122,0,0, 'Never... could reach... the top shelf...',1,0,0,0,0,16586, 'Captain Arnath - SAY_ARNATH_DEATH'),
(37122,1,0, 'You miserable fools never did manage to select a decent bat wing.',1,0,0,0,0,16587, 'Captain Arnath - SAY_ARNATH_RESURRECTED'),
(37122,2,0, 'THAT was for bringing me spoiled spider ichor!',1,0,0,0,0,16588, 'Captain Arnath - SAY_ARNATH_KILL'),
(37122,3,0, 'Don''t... let Finklestein use me... for his potions...',1,0,0,0,0,16589, 'Captain Arnath - SAY_ARNATH_SECOND_DEATH'),
(37122,4,0, 'The loss of our comrades was unpreventable. They lived and died in the service of the Argent Crusade.',1,0,0,0,0,16590, 'Captain Arnath - SAY_ARNATH_SURVIVE_TALK'),
(37122,5,0, 'Even dying here beats spending another day collecting reagents for that madman, Finklestein.',1,0,0,0,0,16585, 'Captain Arnath - SAY_ARNATH_INTRO_2'),
(37123,0,0, 'No amount of healing can save me now. Fight on, brothers...',1,0,0,0,0,16810, 'Captain Brandon - SAY_BRANDON_DEATH'),
(37123,1,0, 'What? This strength...? All of the pain is gone! You... must join me in the eternal embrace of death!',1,0,0,0,0,16811, 'Captain Brandon - SAY_BRANDON_RESURRECTED'),
(37123,2,0, 'It doesn''t hurt anymore, does it?',1,0,0,0,0,16812, 'Captain Brandon - SAY_BRANDON_KILL'),
(37123,3,0, 'I''m sorry...',1,0,0,0,0,16813, 'Captain Brandon - SAY_BRANDON_SECOND_DEATH'),
(37123,4,0, 'You have done much in this war against the Scourge. May the light embrace you.',1,0,0,0,0,16815, 'Captain Brandon - SAY_BRANDON_SURVIVE_TALK'),
(37124,0,0, 'Please... burn my remains. Let me live warm in the afterlife...',1,0,0,0,0,16844, 'Captain Grondel - SAY_GRONDEL_DEATH'),
(37124,1,0, 'No! Why was I denied a death by flame? You must all BURN!',1,0,0,0,0,16845, 'Captain Grondel - SAY_GRONDEL_RESURRECTED'),
(37124,2,0, 'Can you feel the burn?',1,0,0,0,0,16846, 'Captain Grondel - SAY_GRONDEL_KILL'),
(37124,3,0, 'What... have I done? No!',1,0,0,0,0,16847, 'Captain Grondel - SAY_GRONDEL_SECOND_DEATH'),
(37124,4,0, 'What can possibly redeem this unholy place? Thank you...',1,0,0,0,0,16849, 'Captain Grondel - SAY_GRONDEL_SURVIVE_TALK'),
(37125,0,0, 'It was... a worthy afterlife.',1,0,0,0,0,16998, 'Captain Rupert - SAY_RUPERT_DEATH'),
(37125,1,0, 'There is no escaping the Lich King''s will. Prepare for an explosive encounter!',1,0,0,0,0,16999, 'Captain Rupert - SAY_RUPERT_RESURRECTED'),
(37125,2,0, 'So that''s what happens when you stand too close to a bomb!',1,0,0,0,0,17000, 'Captain Rupert - SAY_RUPERT_KILL'),
(37125,3,0, 'What an... explosive ending!',1,0,0,0,0,17001, 'Captain Rupert - SAY_RUPERT_SECOND_DEATH'),
(37125,4,0, 'Beware the dangers that lie ahead... and do try to remain in one piece.',1,0,0,0,0,17003, 'Captain Rupert - SAY_RUPERT_SURVIVE_TALK');
DELETE FROM `script_waypoint` WHERE `entry`=37129;
INSERT INTO `script_waypoint` (`entry`,`pointid`,`location_x`,`location_y`,`location_z`,`waittime`,`point_comment`) VALUES
(37129,0,4356.90,2648.00,350.285,0, 'Crok Scourgebane - at first trash pack'),
(37129,1,4357.00,2582.17,351.101,0, 'Crok Scourgebane - at second trash pack'),
(37129,2,4357.21,2555.91,354.478,0, NULL),
(37129,3,4357.09,2547.81,354.766,0, NULL),
(37129,4,4356.88,2512.40,358.436,0, 'Crok Scourgebane - at Sister Svalna');
DELETE FROM `script_texts` WHERE `npc_entry` IN (12429);
DELETE FROM `creature_text` WHERE `entry`=18733;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`sound`,`comment`) VALUES
(18733,0,0, 'Do not proceed. You will be eliminated!',1,11344,'doomwalker SAY_AGGRO'),
(18733,1,0, 'Tectonic disruption commencing.',1,11345,'doomwalker SAY_EARTHQUAKE_1'),
(18733,1,1, 'Magnitude set. Release.',1,11346,'doomwalker SAY_EARTHQUAKE_2'),
(18733,2,0, 'Trajectory locked.',1,11347,'doomwalker SAY_OVERRUN_1'),
(18733,2,1, 'Engage maximum speed.',1,11348,'doomwalker SAY_OVERRUN_2'),
(18733,3,0, 'Threat level zero.',1,11349,'doomwalker SAY_SLAY_1'),
(18733,3,1, 'Directive accomplished.',1,11350,'doomwalker SAY_SLAY_2'),
(18733,3,2, 'Target exterminated.',1,11351,'doomwalker SAY_SLAY_3'),
(18733,4,0, 'System failure in five, f-o-u-r...',1,11352,'doomwalker SAY_DEATH');
-- Update creature_text to use proper text values
UPDATE `creature_text` SET `type`=12 WHERE `type`=0;
UPDATE `creature_text` SET `type`=14 WHERE `type`=1;
UPDATE `creature_text` SET `type`=16 WHERE `type`=2;
UPDATE `creature_text` SET `type`=41 WHERE `type`=3;
UPDATE `creature_text` SET `type`=15 WHERE `type`=4;
UPDATE `creature_text` SET `type`=42 WHERE `type`=5;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (3368,3369,3370,3371,7623,12578,3684,5529,5512,5530,5531,5532,5533,5534,5535,9165,9166,5536,5537,5538,5539,5540,13254,5541,5542,5543,5544,5545,5546,5547,5548,7573,7574,10619,10620,11497,11498,11500,11501,12178,12179,12181,12182,13255);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(3368,0,0,0,''), -- Alterac Valley
(3369,0,0,0,''), -- Arathi Basin
(3370,0,0,0,''), -- Eye of the Storm
(3371,0,0,0,''), -- Warsong Gulch
(7623,0,0,0,''), -- Strand of the Ancients
(12578,0,0,0,''), -- Isle of Conquest
(3684,7,23505,0,''), -- Berserking killing blow
(5529,0,0,0,''), -- Total Killing Blows
(5512,20,0,0,''), -- Eastern Kingdoms
(5530,20,1,0,''), -- Kalimdor
(5531,20,530,0,''), -- Burning Crusade Areas
(5532,20,571,0,''), -- Northrend
(5533,20,559,0,''), -- Nagrand Arena
(5534,20,562,0,''), -- Blade's Edge Arena
(5535,20,572,0,''), -- Ruind of Lordaeron
(9165,20,617,0,''), -- Dalaran Sewers
(9166,20,618,0,''), -- Ring of Valor
(5536,20,30,0,''), -- Alterac Valley
(5537,20,529,0,''), -- Arathi Basin
(5538,20,489,0,''), -- Warsong Gulch
(5539,20,566,0,''), -- Eye of the Storm
(5540,20,607,0,''), -- Strand of the Ancients
(13254,20,628,0,''), -- Isle of Conquest
(5541,11,0,0,'achievement_arena_2v2_kills'), -- 2v2 Arena Killing Blows
(5542,11,0,0,'achievement_arena_3v3_kills'), -- 3v3 Arena Killing Blows
(5543,11,0,0,'achievement_arena_5v5_kills'), -- 5v5 Arena Killing Blows
(5544,20,30,0,''), -- Alterac Valley Killing Blows
(5545,20,529,0,''), -- Arathi Basin Killing Blows
(5546,20,489,0,''), -- Warsong Gulch Killing Blows
(5547,20,566,0,''), -- Eye of the Storm Killing Blows
(5548,20,607,0,''), -- Strand of the Ancients Killing Blows
(7573,1,30249,0,''), -- Deliver a killing blow to a Scion of Eternity while riding on a hover disk
(7573,11,0,0,'achievement_denyin_the_scion'), -- Deliver a killing blow to a Scion of Eternity while riding on a hover disk
(7574,1,30249,0,''), -- Deliver a killing blow to a Scion of Eternity while riding on a hover disk
(7574,11,0,0,'achievement_denyin_the_scion'), -- Deliver a killing blow to a Scion of Eternity while riding on a hover disk
(10619,1,33142,0,''), -- Leviathan Turret
(10620,1,33142,0,''), -- Leviathan Turret
(11497,1,35273,0,''), -- Glaive Thrower
(11498,1,34775,0,''), -- Demolisher
(11500,1,34793,0,''), -- Catapult
(11501,1,35069,0,''), -- Siege Engine
(12178,1,34802,0,''), -- Glaive Thrower
(12179,1,34775,0,''), -- Demolisher
(12181,1,34793,0,''), -- Catapult
(12182,1,34776,0,''), -- Siege Engine
(13255,20,628,0,''); -- Isle of Conquest Killing Blows
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (7265,7549) AND `type` IN (0,11);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(7265,11,0,0,'achievement_momma_said_knock_you_out'), -- Momma Said Knock You Out (10 player)
(7549,11,0,0,'achievement_momma_said_knock_you_out'); -- Momma Said Knock You Out (25 player)
UPDATE `achievement_criteria_data` SET `type`=5 WHERE `type`=7 AND `criteria_id`=3684;
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry` = 4625;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 4625 AND `source_type` = 0 AND `id` IN (0,1);
INSERT INTO `smart_scripts` VALUES
(4625,0,0,0,1,0,100,3,0,1100,0,1100,11,7083,2,0,0,0,0,1,0,0,0,0,0,0,0,'Ward Keepers - Cast the Guard Spell'),
(4625,0,1,0,6,0,100,2,0,0,0,0,34,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'Ward Keepers - Send Event on Die');
UPDATE `creature` c LEFT JOIN `creature_template` ct ON c.id=ct.`Entry` SET c.`MovementType`=0,c.`spawndist`=0 WHERE (ct.flags_extra & 128)!=0;

# NeatElves
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = '20' WHERE `entry` =26402 AND `item` =33568;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `item` =783;
DELETE FROM `creature_loot_template` WHERE `item` = 25703;
DELETE FROM `skinning_loot_template` WHERE `item` = 15422;
DELETE FROM `skinning_loot_template` WHERE `item` = 15423;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(117821, 26889, 571, 1, 1, 0, 0, 3085.59, 643.894, 84.0621, 4.97667, 600, 0, 0, 42, 0, 0, 0);

# Selexanus
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES (59087, 4522, 13386, 1, 13392, 0, 1101, 2, 1);
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES (52217, 4288, 12762, 1, 12762, 0, 0, 2, 1);
UPDATE `creature` SET `phaseMask` = 128 WHERE `id` IN (30987,30989,30986,30984,30900,30830);

# NeatElves
DELETE FROM `skinning_loot_template` WHERE `item` = 19767;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '100' WHERE `item` =19767;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '40',`maxcount` = '1' WHERE `item` =5082;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = '20' WHERE `item` =15419;
DELETE FROM `creature_loot_template` WHERE `item` = 19768;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = '20' WHERE `item` =19768;
UPDATE `creature_template` SET `skinloot` = '14509' WHERE `entry` =14509;
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES ('14509', '19768', '100', '0', '1', '4');
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = '20' WHERE `entry` =24047 AND `item` =25649;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `entry` =24047 AND `item` =25699;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = '20' WHERE `entry` =20520 AND `item` =25700;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = '10' WHERE `entry` =20520 AND `item` =25699;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = '15' WHERE `entry` =20520 AND `item` =21887;
DELETE FROM `skinning_loot_template` WHERE `entry` = 22287 AND `item` = 25708;
DELETE FROM `skinning_loot_template` WHERE `entry` = 18398;
UPDATE `creature_template` SET `skinloot` = '0' WHERE `entry` =18398;
DELETE FROM `gameobject_loot_template` WHERE `item` = 23793;
DELETE FROM `spell_area` WHERE `spell` = 48864;
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES
(47917, 4027, 11652, 1, 11652, 0, 0, 2, 0),
(47917, 4130, 11652, 1, 11652, 0, 0, 2, 0),
(57569, 4580, 13070, 0, 13086, 0, 0, 2, 1),
(48864, 65, 12301, 1, 12301, 0, 0, 2, 1),
(48864, 4185, 12301, 1, 12301, 0, 0, 2, 1),
(48864, 4233, 12301, 1, 12301, 0, 0, 2, 1),
(51852, 4298, 0, 0, 0, 0, 0, 2, 0),
(35483, 4100, 0, 0, 0, 0, 1032, 1, 1),
(35482, 4100, 0, 0, 0, 0, 1032, 0, 1),
(57673, 4580, 0, 0, 13070, 0, 0, 2, 1),
(57674, 4580, 13086, 0, 13141, 0, 0, 2, 1);
UPDATE `spell_area` SET `racemask` = '690' WHERE `spell` =43060 AND `area` =4054 AND `quest_start` =11324;
UPDATE `spell_area` SET `racemask` = '1101' WHERE `spell` =43060 AND `area` =4054 AND `quest_start` =11326;
UPDATE `spell_area` SET `quest_end` = '11648' WHERE `spell` =45844 AND `area` =4023 AND `quest_start` =11648;
DELETE FROM `creature_involvedrelation` WHERE `id` = 10828 AND `quest` = 12755;
UPDATE `creature_template` SET `npcflag` = '0' WHERE `entry` =10828;
UPDATE `gameobject` SET `spawntimesecs` = '-180' WHERE `guid` =103090;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`) VALUES ('18014', '0', '9', '103090', '60');
UPDATE `spell_area` SET `quest_end` = '12915' WHERE `spell` =55857 AND `area` =4438;
UPDATE `spell_area` SET `quest_end` = '12915' WHERE `spell` =55857 AND `area` =4455;
DELETE FROM `spell_area` WHERE `spell` = 55858 AND `area` = 4440 AND `quest_start` = 0 AND `quest_start_active` = 0 AND `aura_spell` = 0 AND `racemask` = 0 AND `gender` = 2;
DELETE FROM `spell_area` WHERE `spell` = 55858 AND `area` = 4495 AND `quest_start` = 12956 AND `quest_start_active` = 0 AND `aura_spell` = 0 AND `racemask` = 0 AND `gender` = 2;
UPDATE `spell_area` SET `quest_start` = '12915' WHERE `spell` =55858 AND `area` =4438 AND `quest_start` =12956 AND `quest_start_active` =0 AND `aura_spell` =0 AND `racemask` =0 AND `gender` =2;
UPDATE `spell_area` SET `quest_start` = '12915' WHERE `spell` =55858 AND `area` =4455 AND `quest_start` =12956 AND `quest_start_active` =0 AND `aura_spell` =0 AND `racemask` =0 AND `gender` =2;
UPDATE `spell_area` SET `quest_start_active` = '1' WHERE `spell` =55952 AND `area` =4495 AND `quest_start` =12924 AND `quest_start_active` =0 AND `aura_spell` =0 AND `racemask` =0 AND `gender` =2;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(34602, 27370, 571, 1, 1, 0, 0, 3673.89, -801.339, 174.436, 4.97559, 600, 0, 0, 9610, 0, 0, 0),
(34999, 27359, 571, 1, 1, 0, 0, 3676.65, -796.592, 174.501, 3.32547, 600, 0, 0, 4979, 0, 0, 0);
UPDATE `creature_template` SET `ScriptName` = '' WHERE `IconName` LIKE 'vehichleCursor' AND ScriptName= 'generic_creature';
UPDATE `creature_template` SET `ScriptName` = '' WHERE `IconName` LIKE 'Gunner' AND ScriptName= 'generic_creature';
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES
(55773, 4177, 0, 0, 0, 0, 690, 2, 1),
(55774, 4177, 0, 0, 0, 0, 1101, 2, 1);
UPDATE gameobject SET phaseMask=64 WHERE id IN (189292);
UPDATE gameobject SET phaseMask=128 WHERE id IN (189291);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 17886);
INSERT INTO creature_addon (guid, auras) VALUES(123169,'31411'),(123170,'31412'),(123171,'31413'),(123172,'31414');

# FIX
DELETE FROM `creature` WHERE `id`=24899;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(116717, 24899, 571, 1, 1, 0, 0, -361.412, -3655.34, -14.1422, 4.64118, 180, 5, 0, 9291, 0, 0, 1);
UPDATE `creature` SET `position_x` = 5927.83, `position_y` = 731.9 WHERE `guid` = 136467;
UPDATE `creature_template` SET `flags_extra` = 64 WHERE `entry` = 28938;
UPDATE `creature_template` SET `unit_flags` = 32768 WHERE `entry` IN (38391,38392);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (24664, 35297, 1, 0, 1, 1);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (24664, 35298, 1, 0, 1, 1);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (24664, 35299, 1, 0, 1, 1);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (24857, 35297, 1, 0, 1, 1);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (24857, 35298, 1, 0, 1, 1);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (24857, 35299, 1, 0, 1, 1);
UPDATE `gameobject_template` SET `flags` = 2 WHERE `entry` = 184465;
UPDATE `gameobject_template` SET `flags` = 2 WHERE `entry` = 184849;
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` = 30625;
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` = 31480;
UPDATE `creature_addon` SET `auras`='70203 71465' WHERE `guid`=77655; -- Sister Svalna
UPDATE `creature_template` SET `minlevel`=81,`maxlevel`=81,`faction_A`=2209,`faction_H`=2209,`unit_class`=2,`mindmg`=425,`maxdmg`=602,`attackpower`=670,`baseattacktime`=1500,`minrangedmg`=351,`maxrangedmg`=511,`rangedattackpower`=86 WHERE `entry`=37491; -- Captain Arnath (Undead)
UPDATE `creature_template` SET `minlevel`=81,`maxlevel`=81,`faction_A`=2209,`faction_H`=2209,`unit_class`=2,`mindmg`=425,`maxdmg`=602,`attackpower`=670,`baseattacktime`=1500,`minrangedmg`=351,`maxrangedmg`=511,`dmg_multiplier`=13,`rangedattackpower`=86,`dynamicflags`=8 WHERE `entry`=38349; -- Captain Arnath (Undead)
UPDATE `creature_template` SET `minlevel`=81,`maxlevel`=81,`faction_A`=2209,`faction_H`=2209,`unit_class`=2,`mindmg`=425,`maxdmg`=602,`attackpower`=670,`baseattacktime`=1500,`minrangedmg`=351,`maxrangedmg`=511,`rangedattackpower`=86 WHERE `entry`=37493; -- Captain Brandon (Undead)
UPDATE `creature_template` SET `minlevel`=81,`maxlevel`=81,`faction_A`=2209,`faction_H`=2209,`unit_class`=2,`mindmg`=425,`maxdmg`=602,`attackpower`=670,`baseattacktime`=1500,`minrangedmg`=351,`maxrangedmg`=511,`dmg_multiplier`=13,`rangedattackpower`=86,`dynamicflags`=8 WHERE `entry`=38350; -- Captain Brandon (Undead)
UPDATE `creature_template` SET `minlevel`=81,`maxlevel`=81,`faction_A`=2209,`faction_H`=2209,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`baseattacktime`=1500,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112 WHERE `entry`=37494; -- Captain Grondel (Undead)
UPDATE `creature_template` SET `minlevel`=81,`maxlevel`=81,`faction_A`=2209,`faction_H`=2209,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`baseattacktime`=1500,`minrangedmg`=353,`maxrangedmg`=512,`dmg_multiplier`=13,`rangedattackpower`=112,`dynamicflags`=8 WHERE `entry`=38351; -- Captain Grondel (Undead)
UPDATE `creature_template` SET `minlevel`=81,`maxlevel`=81,`faction_A`=2209,`faction_H`=2209,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`baseattacktime`=1500,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112 WHERE `entry`=37495; -- Captain Rupert (Undead)
UPDATE `creature_template` SET `minlevel`=81,`maxlevel`=81,`faction_A`=2209,`faction_H`=2209,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`baseattacktime`=1500,`minrangedmg`=353,`maxrangedmg`=512,`dmg_multiplier`=13,`rangedattackpower`=112,`dynamicflags`=8 WHERE `entry`=38352; -- Captain Rupert (Undead)
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`faction_A`=2209,`faction_H`=2209 WHERE `entry`=38248; -- Impaling Spear

# telsamat
UPDATE `creature_template` SET `unit_flags` = 32768 WHERE `entry` IN (30114, 31473);

# FIX
UPDATE creature_loot_template SET ChanceOrQuestChance=ABS(ChanceOrQuestChance) WHERE item in (18945);

# NeatElves
UPDATE `quest_template` SET `StartScript` = '0' WHERE `entry` =3525;
DELETE FROM `quest_start_scripts` WHERE `id` = 3525;
DELETE FROM `db_script_string` WHERE `entry` = 2000000074;
UPDATE `creature` SET `spawndist` = '0',`MovementType` = '0' WHERE `guid` =49667;
DELETE FROM `creature_involvedrelation` WHERE `id` = 8516 AND `quest` = 3525;
REPLACE INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES ('152097', '3525');
UPDATE `creature` SET `spawndist` = '0',`MovementType` = '0' WHERE `guid` in (49660,49661);
DELETE FROM `gameobject` WHERE `guid` in (22447,22449,22452,22453);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(22447, 152097, 129, 1, 1, 2575.66, 949.726, 52.8895, 5.49081, 0, 0, 0.385904, -0.922539, -180, 255, 1);
DELETE FROM `creature` WHERE `guid` = 123827;
INSERT IGNORE INTO `npc_text` (`ID`,`prob0`,`text0_0`,`text0_1`,`lang0`,`em0_0`,`em0_1`,`em0_2`,`em0_3`,`em0_4`,`em0_5`,`prob1`,`text1_0`,`text1_1`,`lang1`,`em1_0`,`em1_1`,`em1_2`,`em1_3`,`em1_4`,`em1_5`,`prob2`,`text2_0`,`text2_1`,`lang2`,`em2_0`,`em2_1`,`em2_2`,`em2_3`,`em2_4`,`em2_5`,`prob3`,`text3_0`,`text3_1`,`lang3`,`em3_0`,`em3_1`,`em3_2`,`em3_3`,`em3_4`,`em3_5`,`prob4`,`text4_0`,`text4_1`,`lang4`,`em4_0`,`em4_1`,`em4_2`,`em4_3`,`em4_4`,`em4_5`,`prob5`,`text5_0`,`text5_1`,`lang5`,`em5_0`,`em5_1`,`em5_2`,`em5_3`,`em5_4`,`em5_5`,`prob6`,`text6_0`,`text6_1`,`lang6`,`em6_0`,`em6_1`,`em6_2`,`em6_3`,`em6_4`,`em6_5`,`prob7`,`text7_0`,`text7_1`,`lang7`,`em7_0`,`em7_1`,`em7_2`,`em7_3`,`em7_4`,`em7_5`) VALUES
(16540,1,'I train only warriors, $c. You''ll have to look elsewhere.','I train only warriors, $c. You''ll have to look elsewhere.',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0);

# Conditions
REPLACE INTO `conditions` VALUES ('13', '0', '31411', '0', '18', '1', '17889', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '31412', '0', '18', '1', '17889', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '31413', '0', '18', '1', '17889', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '31414', '0', '18', '1', '17889', '0', '0', '', null);


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

UPDATE version SET `cache_id`= '598';
UPDATE version SET `db_version`= 'YTDB_0.14.2_R598_TC_R12047_TDBAI_335.0.3_RuDB_R38.9';
