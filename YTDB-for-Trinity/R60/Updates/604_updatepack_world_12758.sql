# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 603_FIX_12644 604_FIX_12758 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('604_FIX_12758');

# Fix
REPLACE INTO `game_event_gameobject` SELECT '1',`guid` FROM `gameobject` WHERE `id`=300068;
UPDATE `game_event` SET `start_time` = '2011-10-02 23:01:00' WHERE `eventEntry` = '5';

# NeatElves
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES 
('29139', '1497', '0', '0', '0', '0', '1101', '2', '0'),
('29138', '1638', '0', '0', '0', '0', '1101', '2', '0'),
('46672', '3487', '0', '0', '0', '0', '1101', '2', '0'),
('29136', '1637', '0', '0', '0', '0', '1101', '2', '0'),
('29126', '1657', '0', '0', '0', '0', '690', '2', '0'),
('29135', '1537', '0', '0', '0', '0', '690', '2', '0'),
('29137', '1519', '0', '0', '0', '0', '690', '2', '0'),
('46671', '3557', '0', '0', '0', '0', '690', '2', '0');
UPDATE `creature_template` SET `gossip_menu_id` = 8540 WHERE `entry` = 19052;
UPDATE `creature_template` SET `gossip_menu_id` = 8434 WHERE `entry` = 19180;
UPDATE `creature_template` SET `gossip_menu_id` = 7816 WHERE `entry` = 19187;
UPDATE `creature_template` SET `gossip_menu_id` = 8947 WHERE `entry` = 24369;
UPDATE `creature_template` SET `gossip_menu_id` = 11384 WHERE `entry` = 40443;
UPDATE `quest_template` SET `SpecialFlags` = 1 WHERE `entry` = 5525;
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235 WHERE `entry` IN (37132,38132);
REPLACE INTO `gossip_menu_option` VALUES ('8540', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('8434', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', null);

# zhanhang02
UPDATE `creature_template` SET `minlevel`='80', `maxlevel`='80', `mindmg`='420', `maxdmg`='630', `attackpower`='157', `minrangedmg`='336', `maxrangedmg`='504' WHERE `entry` IN (33316, 33317, 33318);

# WDB
INSERT IGNORE INTO `npc_text` SET `ID`=15028,`prob0`=1,`text0_0`='Keep your sights straight, $N.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15831,`prob0`=1,`text0_0`='',`text0_1`='Hiya, $g babe : hon;! What''s this I hear about you and $g Candy : Chip;?',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=1,`text1_0`='',`text1_1`='Nice day for digging up the last known deposits of kaja''mite in the world, wouldn''t you say, $N?',`lang1`=0,`em1_0`=0,`em1_1`=1,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=1,`text2_0`='',`text2_1`='Isn''t it weird how kaja''mite made us smart thousands of years ago, but it doesn''t seem to be having any effect on our trolls?',`lang2`=0,`em2_0`=0,`em2_1`=6,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=1,`text3_0`='',`text3_1`='Distilling Kaja''Cola out of kaja''mite was a stroke of pure genius on your part, $N. The Trade Prince has got to be worried that you''re going to take his title!',`lang3`=0,`em3_0`=0,`em3_1`=1,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16844,`prob0`=1,`text0_0`='There is nothing I call my own that would be of use to you.$B$BPerhaps D''lom will have something of interest to you in his collection.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17026,`prob0`=1,`text0_0`='Are you with the Neferset scum?  Did they send you to do their dirty work?  Speak!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17068,`prob0`=1,`text0_0`='',`text0_1`='<The console whirrs and buzzes as you approach it.>',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17086,`prob0`=1,`text0_0`='After the fall of the Burning Blade Clan, we blademasters swore to free ourselves and our people from demonic control.$B$BThis may be done, but my honor remains unsatisfied.$B$BI shall fight for the Horde - and train other warriors to do so - until I die gloriously in battle. This is the only path I may tread.$B$BSo. Are you ready to train?',`text0_1`='After the fall of the Burning Blade Clan, we blademasters swore to free ourselves and our people from demonic control.$B$BThis may be done, but my honor remains unsatisfied.$B$BI shall fight for the Horde - and train other warriors to do so - until I die gloriously in battle. This is the only path I may tread.$B$BSo. Are you ready to train?',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17181,`prob0`=1,`text0_0`='You too are a student of the arcane, yes?$B$BI can teach you about portal magic, if you wish to learn.',`text0_1`='You too are a student of the arcane, yes?$B$BI can teach you about portal magic, if you wish to learn.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17442,`prob0`=1,`text0_0`='Some day I''ll be able to put my skills at the service of Ramkahen.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17866,`prob0`=1,`text0_0`='Our brothers at Baradin Hold on Tol Barad are very busy and not always available when you need them.  I have been stationed here around the clock to help you with tasks they might have given you.',`text0_1`='Our brothers at Baradin Hold on Tol Barad are very busy and not always available when you need them.  I have been stationed here around the clock to help you with tasks they might have given you.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17997,`prob0`=1,`text0_0`='It''s good to be outta dat cage. Dey were goin'' to sacrifice me...',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=500,`em0_3`=1,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17998,`prob0`=1,`text0_0`='Ok mon, this be what I saw....$b$bAll was quiet, til we be hearin'' a rustlin'' sound, like the wind through the trees. Before we know it, we be surrounded by these Amani and their pets! Next think I knew, I be wakin'' up here, stuck in a cage.$b$bDay an'' night, one by one, da captured scouts be gettin'' killed. Every time one be dyin'', that bear-troll be lookin'' stronger.$b$bThat be all I could learn from my place in dat cage.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=500,`em0_3`=1,`em0_4`=1000,`em0_5`=1,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18002,`prob0`=1,`text0_0`='Ya be havin'' me gratitude, $c.$b$bIf there be anythin'' I can be doin'' for ya, just say so.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;

# FIX
UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70 WHERE `entry` = 28781;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80 WHERE `entry` = 32796;
UPDATE gameobject SET `phaseMask` = 65535 WHERE id IN (1610,1617,1618,1619,1620,1621,1667,1731,1732,2055,2653,3724,3725,3726,3727,3729,3730,3763,3764,103711,103713,181166,1622,1623,1624,1628,1735,2040,2041,2042,2043,2044,2045,2046,2047,2054,19903,73940,206085) AND map=571;
UPDATE gameobject SET `phaseMask` = 65535 WHERE id IN (123310,142140,150079,176645,324,1733,1734,2866,73941,123309,123848,142141,142142,142143,142144,142145,150080,150081,150082,165658,175404,176583,176584,176586,176587,176588,176636,176637) AND map=571;
UPDATE gameobject SET `phaseMask` = 65535 WHERE id IN (176638,176639,176640,176641,176642,176643,177388,180164,180165,180166,180167,180168,180215,181270,181271,181275,181276,181277,181278,181279,176589,181280,181281,181555,181556,181557,181569,181570,183043,183044,183045, 183046,185877,185881,189973,189979,189980,189981,190169,190170,190171,190172,202749,202748,202747,202736,202739) AND map=571;
UPDATE gameobject SET `phaseMask` = 65535 WHERE id IN (190173,190175,191019,191133,191303,189978,202750,202752,202751,202737,202738,202741,202740) AND map=571;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`) VALUES
(123584, 37965, 571, 1, 256, 0, 2320, 5679.39, 2166.71, 800.091, 6.16101, 120, 0, 0, 1, 0),
(123585, 37965, 571, 1, 256, 0, 2320, 5690.04, 2169.76, 822.619, 3.46936, 120, 0, 0, 1, 0),
(123586, 37965, 571, 1, 256, 0, 2320, 5706.81, 2164.21, 800.091, 3.07178, 120, 0, 0, 1, 0),
(123587, 37965, 571, 1, 256, 0, 2320, 5665.33, 2235, 833.81, 1.88679, 120, 0, 0, 1, 0),
(123588, 37965, 571, 1, 256, 0, 2320, 5666.03, 2317.19, 800.091, 0.174533, 120, 0, 0, 1, 0),
(123589, 37965, 571, 1, 256, 0, 2320, 5670.79, 2302.29, 822.619, 1.9092, 120, 0, 0, 1, 0),
(123590, 37965, 571, 1, 256, 0, 2320, 5674.22, 2316.01, 837.016, 4.99458, 120, 0, 0, 1, 0),
(123591, 37965, 571, 1, 256, 0, 2320, 5678.93, 2265.66, 800.091, 0.174533, 120, 0, 0, 1, 0),
(123592, 37965, 571, 1, 256, 0, 2320, 5679.39, 2166.71, 800.091, 6.16101, 120, 0, 0, 1, 0),
(123593, 37965, 571, 1, 256, 0, 2320, 5683.26, 2215.06, 800.091, 6.23082, 120, 0, 0, 1, 0),
(123594, 37965, 571, 1, 256, 0, 2320, 5693.28, 2323.65, 800.091, 3.29867, 120, 0, 0, 1, 0),
(123595, 37965, 571, 1, 256, 0, 2320, 5706.71, 2270.33, 800.091, 3.29867, 120, 0, 0, 1, 0),
(123596, 37965, 571, 1, 256, 0, 2320, 5706.81, 2164.21, 800.091, 3.07178, 120, 0, 0, 1, 0),
(123597, 37965, 571, 1, 256, 0, 2320, 5710.68, 2213.77, 800.091, 3.10669, 120, 0, 0, 1, 0);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`) VALUES
(123856, 37968, 571, 1, 256, 0, 0, 5679.44, 2166.71, 798.209, 6.16101, 120, 0, 0, 1, 0),
(123857, 37968, 571, 1, 256, 0, 0, 5690, 2169.74, 820.738, 3.46936, 120, 0, 0, 1, 0),
(123858, 37968, 571, 1, 256, 0, 0, 5706.77, 2164.21, 798.209, 3.07178, 120, 0, 0, 1, 0),
(123859, 37968, 571, 1, 256, 0, 0, 5665.31, 2235.04, 831.929, 1.88679, 120, 0, 0, 1, 0),
(123860, 37968, 571, 1, 256, 0, 0, 5666.08, 2317.2, 798.209, 0.174533, 120, 0, 0, 1, 0),
(123861, 37968, 571, 1, 256, 0, 0, 5670.77, 2302.33, 820.738, 1.9092, 120, 0, 0, 1, 0),
(123862, 37968, 571, 1, 256, 0, 0, 5674.24, 2315.97, 835.135, 4.99458, 120, 0, 0, 1, 0),
(123863, 37968, 571, 1, 256, 0, 0, 5678.98, 2265.67, 798.209, 0.174533, 120, 0, 0, 1, 0),
(123967, 37968, 571, 1, 256, 0, 0, 5679.44, 2166.71, 798.209, 6.16101, 120, 0, 0, 1, 0),
(123968, 37968, 571, 1, 256, 0, 0, 5683.31, 2215.06, 798.209, 6.23082, 120, 0, 0, 1, 0),
(123969, 37968, 571, 1, 256, 0, 0, 5693.23, 2323.64, 798.209, 3.29867, 120, 0, 0, 1, 0),
(123970, 37968, 571, 1, 256, 0, 0, 5706.67, 2270.32, 798.209, 3.29867, 120, 0, 0, 1, 0),
(123971, 37968, 571, 1, 256, 0, 0, 5706.77, 2164.21, 798.209, 3.07178, 120, 0, 0, 1, 0),
(123745, 37968, 571, 1, 256, 0, 0, 5710.63, 2213.77, 798.209, 3.10669, 120, 0, 0, 1, 0);
UPDATE `quest_template` SET `ExclusiveGroup` = 0 WHERE `ExclusiveGroup` = -12535;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`) VALUES
(123474, 26645, 571, 1, 1, 23968, 0, 4153.92, 5347.38, 29.0303, 1.41598, 300, 0, 0, 8982, 0),
(123482, 26645, 571, 1, 1, 23969, 0, 4145.67, 5329.37, 28.6824, 3.75295, 300, 0, 0, 8982, 0);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`) VALUES
(123548, 23837, 571, 1, 1, 11686, 0, 4181.7, 5257.24, 33.0113, 4.66003, 300, 0, 0, 42);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`) VALUES
(124163, 23837, 571, 1, 1, 11686, 0, 4180.98, 5246.49, 43.5983, 1.309, 300, 0, 0, 42),
(124232, 23837, 571, 1, 1, 11686, 0, 4181.7, 5257.24, 33.0113, 4.66003, 300, 0, 0, 42);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`) VALUES
(124328, 24938, 530, 1, 1, 22911, 0, 12700.2, -6865.85, 12.5483, 0.742416, 600, 0, 0, 6986),
(124329, 24938, 530, 1, 1, 22911, 0, 12690.9, -6874.34, 12.4344, 3.88401, 600, 0, 0, 6986),
(124384, 24938, 530, 1, 1, 22911, 0, 12658, -6841.25, 12.4231, 3.90757, 600, 0, 0, 6986),
(124435, 24938, 530, 1, 1, 22911, 0, 12667.8, -6831.93, 12.5473, 0.809175, 600, 0, 0, 6986),
(124675, 24938, 530, 1, 1, 22911, 0, 12670.4, -6854.46, 12.422, 3.89579, 600, 0, 0, 6986),
(124676, 24938, 530, 1, 1, 22911, 0, 12678.7, -6862.69, 12.4261, 3.89579, 600, 0, 0, 6986),
(124677, 24938, 530, 1, 1, 22911, 0, 12688.8, -6853.61, 12.5505, 0.734558, 600, 0, 0, 6986),
(124678, 24938, 530, 1, 1, 22911, 0, 12680.7, -6845.13, 12.5501, 0.707069, 600, 0, 0, 6986);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`) VALUES
(124679, 21173, 530, 1, 1, 0, 0, -1162.91, 2248.2, 152.247, 4.81585, 120, 0, 0, 1);
INSERT IGNORE INTO `game_tele` (`id`,`position_x`,`position_y`,`position_z`,`orientation`,`map`,`name`) VALUES
(1437,5690.97,2141.074,798.0541,4.4344,571, 'TheFrozenHalls'),
(1438,8427.875,2706.33,655.095,5.743,571, 'TheShadowVault'),
(1439,3641.45,282.75,-120.145,3.325,571, 'ChamberOfAspects');
UPDATE `areatrigger_teleport` SET `target_orientation`=4.718671 WHERE `id`=3928; -- Zul Gurub entrance
UPDATE `areatrigger_teleport` SET `target_orientation`=1.617921 WHERE `id`=3930; -- Zul Gurub exit
UPDATE `areatrigger_teleport` SET `target_orientation`=4.582802 WHERE `id`=259; -- Blackfathom deeps
UPDATE `areatrigger_teleport` SET `target_orientation`=3.147877 WHERE `id`=3186; -- Dire Maul, Capital Gardens, south
UPDATE `areatrigger_teleport` SET `target_orientation`=1.784425 WHERE `id`=3126; -- Maraudon, north
UPDATE `areatrigger_teleport` SET `target_position_z`=81.491974, `target_orientation`='1.259779' WHERE `id`=444; -- Razorfen Downs
UPDATE `areatrigger_teleport` SET `target_orientation`=1.840974 WHERE `id`=1472; -- Blackrock Dephts
UPDATE `areatrigger_teleport` SET `target_orientation`=2.095443 WHERE `id`=1470; -- Blackrock Spire
UPDATE `areatrigger_teleport` SET `target_orientation`=3.663096 WHERE `id`=2568; -- Scholomance
UPDATE `areatrigger_teleport` SET `target_position_z`=108.449623, `target_orientation`=1.935219 WHERE `id`=2221; -- Stratholme
UPDATE `areatrigger_teleport` SET `target_orientation`=4.55217 WHERE `id`=119; -- Deadmines
UPDATE `areatrigger_teleport` SET `target_orientation`=3.20443 WHERE `id`=288; -- Uldaman, north
UPDATE `areatrigger_teleport` SET `target_position_z`=266.22583, `target_orientation`=3.135308 WHERE `id`=882; -- Uldaman, south
UPDATE `areatrigger_teleport` SET `target_orientation`=2.959382 WHERE `id`=448; -- Altar of Atal'Hakkar
UPDATE `creature_template` SET `baseattacktime`=2000 WHERE `entry`=36213; -- Kor'kron Overseer
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`baseattacktime`=2000,`unit_flags`=33280,`speed_walk`=1 WHERE `entry`=5677; -- Summoned Succubus
UPDATE `creature_template` SET `npcflag`=1,`unit_flags`=0x300,`speed_run`=0.99206 WHERE `entry`=33238; -- Argent Squire
UPDATE `creature_template` SET `faction_A`=35,`faction_H`=35,`unit_flags`=33536 WHERE `entry`=36979; -- Lil'KT
UPDATE `creature_template` SET `InhabitType`=7 WHERE `entry` IN (34286,34159,33571); -- Orbital Support, Ulduar Gauntlet Generator, Ulduar Gauntlet Generator (small radius)
UPDATE `creature_model_info` SET `bounding_radius`=0.2596,`combat_reach`=1.65,`gender`=1 WHERE `modelid`=30063; -- Kor'kron Overseer
UPDATE `creature_model_info` SET `bounding_radius`=0.6045,`combat_reach`=2.25,`gender`=1 WHERE `modelid`=10923; -- Summoned Succubus
UPDATE `creature_model_info` SET `bounding_radius`=0.06,`combat_reach`=0.3,`gender`=0 WHERE `modelid`=30507; -- Lil'KT
UPDATE `creature_model_info` SET `bounding_radius`=0.3,`combat_reach`=0,`gender`=0 WHERE `modelid`=28946; -- Argent Squire
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1.725,`gender`=0 WHERE `modelid`=26078; -- Windle Sparkshine
DELETE FROM `creature_questrelation` WHERE `quest` = 8575;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 8575;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 8575;
UPDATE `item_template` SET `startquest`=8575 WHERE `entry` = 20949;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (15481, 8575);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 15481;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 8575;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 8575;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (11811, 8575);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=11811;

# TC
UPDATE `spell_scripts` SET `datalong2`='2' WHERE `datalong` IN (29132, 29099, 46689, 29130, 29133, 29102, 29101, 46690);
UPDATE `quest_template` SET `ReqSpellCast1`='51858', `ReqSpellCast2`='51858', `ReqSpellCast3`='51858', `ReqSpellCast4`='51858' WHERE (`entry`='12641');

# SignFinder
DELETE FROM `player_factionchange_items` WHERE `alliance_id` =48356;

# FIX
REPLACE INTO `smart_scripts` VALUES ('-123584', '0', '0', '0', '1', '0', '100', '1', '100', '100', '100', '100', '11', '46598', '0', '0', '0', '0', '0', '10', '123856', '0', '0', '0', '0', '0', '0', 'Enter Vehicle on spawn');
REPLACE INTO `smart_scripts` VALUES ('-123585', '0', '0', '0', '1', '0', '100', '1', '100', '100', '100', '100', '11', '46598', '0', '0', '0', '0', '0', '10', '123857', '0', '0', '0', '0', '0', '0', 'Enter Vehicle on spawn');
REPLACE INTO `smart_scripts` VALUES ('-123586', '0', '0', '0', '1', '0', '100', '1', '100', '100', '100', '100', '11', '46598', '0', '0', '0', '0', '0', '10', '123858', '0', '0', '0', '0', '0', '0', 'Enter Vehicle on spawn');
REPLACE INTO `smart_scripts` VALUES ('-123587', '0', '0', '0', '1', '0', '100', '1', '100', '100', '100', '100', '11', '46598', '0', '0', '0', '0', '0', '10', '123859', '0', '0', '0', '0', '0', '0', 'Enter Vehicle on spawn');
REPLACE INTO `smart_scripts` VALUES ('-123588', '0', '0', '0', '1', '0', '100', '1', '100', '100', '100', '100', '11', '46598', '0', '0', '0', '0', '0', '10', '123860', '0', '0', '0', '0', '0', '0', 'Enter Vehicle on spawn');
REPLACE INTO `smart_scripts` VALUES ('-123589', '0', '0', '0', '1', '0', '100', '1', '100', '100', '100', '100', '11', '46598', '0', '0', '0', '0', '0', '10', '123861', '0', '0', '0', '0', '0', '0', 'Enter Vehicle on spawn');
REPLACE INTO `smart_scripts` VALUES ('-123590', '0', '0', '0', '1', '0', '100', '1', '100', '100', '100', '100', '11', '46598', '0', '0', '0', '0', '0', '10', '123862', '0', '0', '0', '0', '0', '0', 'Enter Vehicle on spawn');
REPLACE INTO `smart_scripts` VALUES ('-123591', '0', '0', '0', '1', '0', '100', '1', '100', '100', '100', '100', '11', '46598', '0', '0', '0', '0', '0', '10', '123863', '0', '0', '0', '0', '0', '0', 'Enter Vehicle on spawn');
REPLACE INTO `smart_scripts` VALUES ('-123592', '0', '0', '0', '1', '0', '100', '1', '100', '100', '100', '100', '11', '46598', '0', '0', '0', '0', '0', '10', '123967', '0', '0', '0', '0', '0', '0', 'Enter Vehicle on spawn');
REPLACE INTO `smart_scripts` VALUES ('-123593', '0', '0', '0', '1', '0', '100', '1', '100', '100', '100', '100', '11', '46598', '0', '0', '0', '0', '0', '10', '123968', '0', '0', '0', '0', '0', '0', 'Enter Vehicle on spawn');
REPLACE INTO `smart_scripts` VALUES ('-123594', '0', '0', '0', '1', '0', '100', '1', '100', '100', '100', '100', '11', '46598', '0', '0', '0', '0', '0', '10', '123969', '0', '0', '0', '0', '0', '0', 'Enter Vehicle on spawn');
REPLACE INTO `smart_scripts` VALUES ('-123595', '0', '0', '0', '1', '0', '100', '1', '100', '100', '100', '100', '11', '46598', '0', '0', '0', '0', '0', '10', '123970', '0', '0', '0', '0', '0', '0', 'Enter Vehicle on spawn');
REPLACE INTO `smart_scripts` VALUES ('-123596', '0', '0', '0', '1', '0', '100', '1', '100', '100', '100', '100', '11', '46598', '0', '0', '0', '0', '0', '10', '123971', '0', '0', '0', '0', '0', '0', 'Enter Vehicle on spawn');
REPLACE INTO `smart_scripts` VALUES ('-123597', '0', '0', '0', '1', '0', '100', '1', '100', '100', '100', '100', '11', '46598', '0', '0', '0', '0', '0', '10', '123745', '0', '0', '0', '0', '0', '0', 'Enter Vehicle on spawn');
REPLACE INTO `smart_scripts` VALUES ('25281', '0', '0', '0', '1', '0', '100', '0', '6000', '6000', '6000', '6000', '11', '45425', '2', '0', '0', '0', '0', '10', '102753', '24921', '0', '0', '0', '0', '0', 'Fire at target every 6 sec');
REPLACE INTO `smart_scripts` VALUES ('25282', '0', '0', '0', '1', '0', '100', '0', '6000', '6000', '6000', '6000', '11', '42611', '2', '0', '0', '0', '0', '10', '102744', '24921', '0', '0', '0', '0', '0', 'Fire at target every 6 sec');
REPLACE INTO `smart_scripts` VALUES ('-95966', '0', '0', '0', '1', '0', '100', '0', '12000', '18000', '12000', '18000', '11', '54423', '2', '0', '0', '0', '0', '10', '104083', '29416', '0', '0', '0', '0', '0', 'Fire at target every 12-18 sec');
REPLACE INTO `smart_scripts` VALUES ('-57224', '0', '0', '0', '1', '0', '100', '0', '6000', '6000', '6000', '6000', '11', '29120', '2', '0', '0', '0', '0', '10', '59176', '16898', '0', '0', '0', '0', '0', 'Fire at target every 6 sec');
REPLACE INTO `smart_scripts` VALUES ('-57225', '0', '0', '0', '1', '0', '100', '0', '4000', '4000', '6000', '6000', '11', '29120', '2', '0', '0', '0', '0', '10', '59105', '16899', '0', '0', '0', '0', '0', 'Fire at target every 6 sec');
REPLACE INTO `smart_scripts` VALUES ('-59110', '0', '0', '0', '1', '0', '100', '0', '2000', '2000', '6000', '6000', '11', '29120', '2', '0', '0', '0', '0', '10', '59193', '16897', '0', '0', '0', '0', '0', 'Fire at target every 6 sec');
REPLACE INTO `smart_scripts` VALUES ('-117325', '0', '0', '0', '1', '0', '100', '0', '1000', '1000', '8000', '8000', '11', '45863', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fire at random target every 8 sec');
REPLACE INTO `smart_scripts` VALUES ('-98051', '0', '0', '0', '1', '0', '100', '0', '1000', '1000', '8000', '8000', '11', '45863', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fire at random target every 8 sec');
REPLACE INTO `smart_scripts` VALUES ('-98052', '0', '0', '0', '1', '0', '100', '0', '1000', '1000', '8000', '8000', '11', '45863', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fire at random target every 8 sec');
REPLACE INTO `smart_scripts` VALUES ('-117330', '0', '0', '0', '1', '0', '100', '0', '7000', '7000', '8000', '8000', '11', '45863', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fire at random target every 8 sec');
REPLACE INTO `smart_scripts` VALUES ('-98053', '0', '0', '0', '1', '0', '100', '0', '7000', '7000', '8000', '8000', '11', '45863', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fire at random target every 8 sec');
REPLACE INTO `smart_scripts` VALUES ('-117329', '0', '0', '0', '1', '0', '100', '0', '4000', '4000', '8000', '8000', '11', '45863', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fire at random target every 8 sec');
REPLACE INTO `smart_scripts` VALUES ('-117331', '0', '0', '0', '1', '0', '100', '0', '4000', '4000', '8000', '8000', '11', '45863', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fire at random target every 8 sec');
REPLACE INTO `smart_scripts` VALUES ('-117326', '0', '0', '0', '1', '0', '100', '0', '2000', '2000', '8000', '8000', '11', '45863', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fire at random target every 8 sec');
REPLACE INTO `smart_scripts` VALUES ('-117324', '0', '0', '0', '1', '0', '100', '0', '2000', '2000', '8000', '8000', '11', '45863', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fire at random target every 8 sec');
REPLACE INTO `smart_scripts` VALUES ('-117328', '0', '0', '0', '1', '0', '100', '0', '2000', '2000', '8000', '8000', '11', '45863', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fire at random target every 8 sec');
REPLACE INTO `smart_scripts` VALUES ('-117327', '0', '0', '0', '1', '0', '100', '0', '8000', '8000', '8000', '8000', '11', '45863', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fire at random target every 8 sec');
REPLACE INTO `smart_scripts` VALUES ('-98012', '0', '0', '0', '1', '0', '100', '0', '1000', '2000', '4000', '5000', '5', '36', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Attack emote every 4-5 sec');
REPLACE INTO `smart_scripts` VALUES ('-98011', '0', '0', '0', '1', '0', '100', '0', '3000', '4000', '4000', '5000', '5', '36', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Attack emote every 4-5 sec');
REPLACE INTO `smart_scripts` VALUES ('-98088', '0', '0', '0', '1', '0', '100', '0', '8000', '8000', '16000', '16000', '10', '4', '5', '21', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Random cheer emote every 16 sec');
REPLACE INTO `smart_scripts` VALUES ('-98005', '0', '0', '0', '1', '0', '100', '0', '16000', '16000', '16000', '16000', '10', '4', '5', '21', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Random cheer emote every 16 sec');
REPLACE INTO `smart_scripts` VALUES ('-98008', '0', '0', '0', '1', '0', '100', '0', '2000', '2000', '5000', '5000', '5', '36', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Attack emote every 5 sec');
REPLACE INTO `smart_scripts` VALUES ('-98008', '0', '1', '0', '1', '0', '100', '0', '4000', '4000', '7000', '7000', '5', '36', '0', '0', '0', '0', '0', '10', '98007', '25253', '0', '0', '0', '0', '0', 'Attack emote dueler 2 sec later sec');
REPLACE INTO `smart_scripts` VALUES ('-98010', '0', '0', '0', '1', '0', '100', '0', '5000', '5000', '5000', '5000', '5', '36', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Attack emote every 5 sec');
REPLACE INTO `smart_scripts` VALUES ('-98010', '0', '1', '0', '1', '0', '100', '0', '7000', '7000', '7000', '7000', '5', '36', '0', '0', '0', '0', '0', '10', '98009', '25253', '0', '0', '0', '0', '0', 'Attack emote dueler 2 sec later sec');
REPLACE INTO `smart_scripts` VALUES ('-112478', '0', '0', '0', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '59044', '2', '0', '0', '0', '0', '10', '112479', '31400', '0', '0', '0', '0', '0', 'Cast Cosmetic - Crystalsong Tree Beam when spawned');
REPLACE INTO `smart_scripts` VALUES ('-112480', '0', '0', '0', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '59044', '2', '0', '0', '0', '0', '10', '113967', '31400', '0', '0', '0', '0', '0', 'Cast Cosmetic - Crystalsong Tree Beam when spawned');
REPLACE INTO `smart_scripts` VALUES ('-113967', '0', '0', '0', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '59044', '2', '0', '0', '0', '0', '10', '112480', '31400', '0', '0', '0', '0', '0', 'Cast Cosmetic - Crystalsong Tree Beam when spawned');
REPLACE INTO `smart_scripts` VALUES ('-112479', '0', '0', '0', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '59044', '2', '0', '0', '0', '0', '10', '112478', '31400', '0', '0', '0', '0', '0', 'Cast Cosmetic - Crystalsong Tree Beam when spawned');
REPLACE INTO `smart_scripts` VALUES ('-74063', '0', '0', '0', '1', '0', '100', '0', '1000', '2000', '3000', '6000', '11', '33808', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Cast Shoot Gun every 3-6 sec');
REPLACE INTO `smart_scripts` VALUES ('-74055', '0', '0', '0', '1', '0', '100', '0', '1000', '2000', '3000', '6000', '11', '33808', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Cast Shoot Gun every 3-6 sec');
REPLACE INTO `smart_scripts` VALUES ('-74066', '0', '0', '0', '1', '0', '100', '0', '3000', '5000', '3000', '5000', '11', '33805', '2', '0', '0', '0', '0', '9', '19388', '0', '25', '0', '0', '0', '0', 'Cast Throw Hammer every 3-5 sec');
REPLACE INTO `smart_scripts` VALUES ('-74065', '0', '0', '0', '1', '0', '100', '0', '3000', '5000', '3000', '5000', '11', '33806', '2', '0', '0', '0', '0', '9', '19388', '0', '25', '0', '0', '0', '0', 'Cast Throw Hammer every 3-5 sec');
REPLACE INTO `smart_scripts` VALUES ('-74059', '0', '0', '0', '1', '0', '100', '0', '1000', '2000', '3000', '6000', '11', '33808', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Cast Shoot Gun every 3-6 sec');
REPLACE INTO `smart_scripts` VALUES ('-74057', '0', '0', '0', '1', '0', '100', '0', '1000', '2000', '3000', '6000', '11', '33808', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Cast Shoot Gun every 3-6 sec');
REPLACE INTO `smart_scripts` VALUES ('-78147', '0', '0', '0', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '46906', '2', '0', '0', '0', '0', '10', '113858', '26298', '0', '0', '0', '0', '0', 'Cast Surge Needle Beam when spawned');
REPLACE INTO `smart_scripts` VALUES ('-78147', '0', '1', '0', '21', '0', '100', '0', '0', '0', '0', '0', '11', '46906', '2', '0', '0', '0', '0', '10', '113858', '26298', '0', '0', '0', '0', '0', 'Cast Surge Needle Beam when reach home');
REPLACE INTO `smart_scripts` VALUES ('-78147', '0', '2', '0', '0', '0', '100', '0', '3000', '4000', '3000', '5000', '11', '51797', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Cast Arcane Blast on victim');
REPLACE INTO `smart_scripts` VALUES ('-51242', '0', '0', '0', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '46906', '2', '0', '0', '0', '0', '10', '113858', '26298', '0', '0', '0', '0', '0', 'Cast Surge Needle Beam when spawned');
REPLACE INTO `smart_scripts` VALUES ('-51242', '0', '1', '0', '21', '0', '100', '0', '0', '0', '0', '0', '11', '46906', '2', '0', '0', '0', '0', '10', '113858', '26298', '0', '0', '0', '0', '0', 'Cast Surge Needle Beam when reach home');
REPLACE INTO `smart_scripts` VALUES ('-51242', '0', '2', '0', '0', '0', '100', '0', '3000', '4000', '3000', '5000', '11', '51797', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Cast Arcane Blast on victim');
REPLACE INTO `smart_scripts` VALUES ('-78148', '0', '0', '0', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '46906', '2', '0', '0', '0', '0', '10', '113858', '26298', '0', '0', '0', '0', '0', 'Cast Surge Needle Beam when spawned');
REPLACE INTO `smart_scripts` VALUES ('-78148', '0', '1', '0', '21', '0', '100', '0', '0', '0', '0', '0', '11', '46906', '2', '0', '0', '0', '0', '10', '113858', '26298', '0', '0', '0', '0', '0', 'Cast Surge Needle Beam when reach home');
REPLACE INTO `smart_scripts` VALUES ('-78148', '0', '2', '0', '0', '0', '100', '0', '3000', '4000', '3000', '5000', '11', '51797', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Cast Arcane Blast on victim');
REPLACE INTO `smart_scripts` VALUES ('-78146', '0', '0', '0', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '46906', '2', '0', '0', '0', '0', '10', '113858', '26298', '0', '0', '0', '0', '0', 'Cast Surge Needle Beam when spawned');
REPLACE INTO `smart_scripts` VALUES ('-78146', '0', '1', '0', '21', '0', '100', '0', '0', '0', '0', '0', '11', '46906', '2', '0', '0', '0', '0', '10', '113858', '26298', '0', '0', '0', '0', '0', 'Cast Surge Needle Beam when reach home');
REPLACE INTO `smart_scripts` VALUES ('-78146', '0', '2', '0', '0', '0', '100', '0', '3000', '4000', '3000', '5000', '11', '51797', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Cast Arcane Blast on victim');
REPLACE INTO `smart_scripts` VALUES ('-97988', '0', '0', '0', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '46906', '2', '0', '0', '0', '0', '10', '113858', '26298', '0', '0', '0', '0', '0', 'Cast Surge Needle Beam when spawned');
REPLACE INTO `smart_scripts` VALUES ('-97988', '0', '1', '0', '21', '0', '100', '0', '0', '0', '0', '0', '11', '46906', '2', '0', '0', '0', '0', '10', '113858', '26298', '0', '0', '0', '0', '0', 'Cast Surge Needle Beam when reach home');
REPLACE INTO `smart_scripts` VALUES ('-97988', '0', '2', '0', '0', '0', '100', '0', '3000', '4000', '3000', '5000', '11', '51797', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Cast Arcane Blast on victim');
REPLACE INTO `smart_scripts` VALUES ('-78150', '0', '0', '0', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '46906', '2', '0', '0', '0', '0', '10', '113858', '26298', '0', '0', '0', '0', '0', 'Cast Surge Needle Beam when spawned');
REPLACE INTO `smart_scripts` VALUES ('-78150', '0', '1', '0', '21', '0', '100', '0', '0', '0', '0', '0', '11', '46906', '2', '0', '0', '0', '0', '10', '113858', '26298', '0', '0', '0', '0', '0', 'Cast Surge Needle Beam when reach home');
REPLACE INTO `smart_scripts` VALUES ('-78150', '0', '2', '0', '0', '0', '100', '0', '3000', '4000', '3000', '5000', '11', '51797', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Cast Arcane Blast on victim');
REPLACE INTO `smart_scripts` VALUES ('-93641', '0', '0', '0', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '46906', '2', '0', '0', '0', '0', '10', '113858', '26298', '0', '0', '0', '0', '0', 'Cast Surge Needle Beam when spawned');
REPLACE INTO `smart_scripts` VALUES ('-93641', '0', '1', '0', '21', '0', '100', '0', '0', '0', '0', '0', '11', '46906', '2', '0', '0', '0', '0', '10', '113858', '26298', '0', '0', '0', '0', '0', 'Cast Surge Needle Beam when reach home');
REPLACE INTO `smart_scripts` VALUES ('-93641', '0', '2', '0', '0', '0', '100', '0', '3000', '4000', '3000', '5000', '11', '51797', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Cast Arcane Blast on victim');
REPLACE INTO `smart_scripts` VALUES ('-78147', '0', '0', '0', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '46906', '2', '0', '0', '0', '0', '10', '113858', '26298', '0', '0', '0', '0', '0', 'Cast Surge Needle Beam when spawned');
REPLACE INTO `smart_scripts` VALUES ('-78147', '0', '1', '0', '21', '0', '100', '0', '0', '0', '0', '0', '11', '46906', '2', '0', '0', '0', '0', '10', '113858', '26298', '0', '0', '0', '0', '0', 'Cast Surge Needle Beam when reach home');
REPLACE INTO `smart_scripts` VALUES ('-78147', '0', '2', '0', '0', '0', '100', '0', '3000', '4000', '3000', '5000', '11', '51797', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Cast Arcane Blast on victim');
REPLACE INTO `smart_scripts` VALUES ('-78149', '0', '0', '0', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '46906', '2', '0', '0', '0', '0', '10', '113858', '26298', '0', '0', '0', '0', '0', 'Cast Surge Needle Beam when spawned');
REPLACE INTO `smart_scripts` VALUES ('-78149', '0', '1', '0', '21', '0', '100', '0', '0', '0', '0', '0', '11', '46906', '2', '0', '0', '0', '0', '10', '113858', '26298', '0', '0', '0', '0', '0', 'Cast Surge Needle Beam when reach home');
REPLACE INTO `smart_scripts` VALUES ('-78149', '0', '2', '0', '0', '0', '100', '0', '3000', '4000', '3000', '5000', '11', '51797', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Cast Arcane Blast on victim');
REPLACE INTO `smart_scripts` VALUES ('-93640', '0', '0', '0', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '46906', '2', '0', '0', '0', '0', '10', '113858', '26298', '0', '0', '0', '0', '0', 'Cast Surge Needle Beam when spawned');
REPLACE INTO `smart_scripts` VALUES ('-93640', '0', '1', '0', '21', '0', '100', '0', '0', '0', '0', '0', '11', '46906', '2', '0', '0', '0', '0', '10', '113858', '26298', '0', '0', '0', '0', '0', 'Cast Surge Needle Beam when reach home');
REPLACE INTO `smart_scripts` VALUES ('-93640', '0', '2', '0', '0', '0', '100', '0', '3000', '4000', '3000', '5000', '11', '51797', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Cast Arcane Blast on victim');
REPLACE INTO `smart_scripts` VALUES ('26349', '0', '0', '0', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '46906', '2', '0', '0', '0', '0', '10', '113858', '26298', '0', '0', '0', '0', '0', 'Cast Surge Needle Beam when spawned');
REPLACE INTO `smart_scripts` VALUES ('26349', '0', '1', '0', '21', '0', '100', '0', '0', '0', '0', '0', '11', '46906', '2', '0', '0', '0', '0', '10', '113858', '26298', '0', '0', '0', '0', '0', 'Cast Surge Needle Beam when reach home');
REPLACE INTO `smart_scripts` VALUES ('26370', '0', '0', '0', '1', '0', '100', '1', '2000', '2000', '2000', '2000', '45', '0', '1', '0', '0', '0', '0', '10', '113858', '26298', '0', '0', '0', '0', '0', 'Set data 0 = 1 on bunny 2 sec after reset');
REPLACE INTO `smart_scripts` VALUES ('-113858', '0', '0', '0', '11', '0', '100', '0', '0', '0', '0', '0', '11', '32566', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Cast Purple Banish State aura on self when spawned');
REPLACE INTO `smart_scripts` VALUES ('-113858', '0', '1', '2', '38', '0', '100', '0', '0', '1', '0', '0', '45', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'reset data 0 = 0');
REPLACE INTO `smart_scripts` VALUES ('-113858', '0', '2', '0', '61', '0', '100', '0', '0', '0', '0', '0', '11', '46906', '2', '0', '0', '0', '0', '10', '96298', '26370', '0', '0', '0', '0', '0', 'cast Surge Needle Beam on Arcanimus');
REPLACE INTO `smart_scripts` VALUES ('2432100', '9', '0', '0', '0', '0', '100', '0', '1000', '1000', '0', '0', '1', '0', '0', '0', '0', '0', '0', '10', '66044', '24323', '0', '0', '0', '0', '0', 'Ancient Citizen of Nifflevar Say text 0');
REPLACE INTO `smart_scripts` VALUES ('2432100', '9', '2', '0', '0', '0', '100', '0', '1000', '1000', '0', '0', '1', '0', '0', '0', '0', '0', '0', '10', '66007', '24322', '0', '0', '0', '0', '0', 'Ancient Citizen of Nifflevar Say text 0');
REPLACE INTO `smart_scripts` VALUES ('2432100', '9', '18', '0', '0', '0', '100', '0', '5000', '5000', '0', '0', '1', '1', '0', '0', '0', '0', '0', '10', '66019', '24322', '0', '0', '0', '0', '0', 'Ancient Citizen of Nifflevar Say text 1');
REPLACE INTO `smart_scripts` VALUES ('2432100', '9', '20', '0', '0', '0', '100', '0', '4000', '4000', '0', '0', '1', '2', '0', '0', '0', '0', '0', '10', '67173', '24322', '0', '0', '0', '0', '0', 'Ancient Citizen of Nifflevar Say text 2');
REPLACE INTO `smart_scripts` VALUES ('2432100', '9', '21', '0', '0', '0', '100', '0', '2000', '2000', '0', '0', '1', '1', '0', '0', '0', '0', '0', '10', '67208', '24323', '0', '0', '0', '0', '0', 'Ancient Citizen of Nifflevar Say text 1');
REPLACE INTO `smart_scripts` VALUES ('2784202', '9', '2', '0', '0', '0', '100', '0', '1000', '1000', '0', '0', '66', '0', '0', '0', '0', '0', '0', '10', '87329', '27787', '0', '0', '0', '0', '0', 'face bat');
REPLACE INTO `smart_scripts` VALUES ('-93946', '0', '0', '0', '25', '0', '100', '0', '0', '0', '0', '0', '11', '72302', '3', '0', '0', '0', '0', '10', '1966', '0', '0', '0', '0', '0', '0', 'Minchar Beam Stalker - Channel beam');
REPLACE INTO `smart_scripts` VALUES ('-93947', '0', '0', '0', '25', '0', '100', '0', '0', '0', '0', '0', '11', '72301', '3', '0', '0', '0', '0', '10', '1966', '0', '0', '0', '0', '0', '0', 'Minchar Beam Stalker - Channel beam');
REPLACE INTO `smart_scripts` VALUES ('-93948', '0', '0', '0', '25', '0', '100', '0', '0', '0', '0', '0', '11', '72304', '3', '0', '0', '0', '0', '10', '1966', '0', '0', '0', '0', '0', '0', 'Minchar Beam Stalker - Channel beam');
REPLACE INTO `smart_scripts` VALUES ('-93949', '0', '0', '0', '25', '0', '100', '0', '0', '0', '0', '0', '11', '72303', '3', '0', '0', '0', '0', '10', '1966', '0', '0', '0', '0', '0', '0', 'Minchar Beam Stalker - Channel beam');
REPLACE INTO `smart_scripts` VALUES ('-118933', '0', '0', '0', '1', '0', '100', '0', '1000', '4000', '4000', '7000', '11', '51590', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Frozen Earth - OOC - Cast Toss Ice Boulder');
REPLACE INTO `smart_scripts` VALUES ('-118933', '0', '1', '0', '0', '0', '100', '0', '1000', '4000', '10000', '17000', '11', '54532', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Frozen Earth - Combat - Cast Ice Spike on victim');
REPLACE INTO `smart_scripts` VALUES ('-118938', '0', '0', '0', '1', '0', '100', '0', '1000', '4000', '4000', '7000', '11', '51590', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Frozen Earth - OOC - Cast Toss Ice Boulder');
REPLACE INTO `smart_scripts` VALUES ('-118938', '0', '1', '0', '0', '0', '100', '0', '1000', '4000', '10000', '17000', '11', '54532', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Frozen Earth - Combat - Cast Ice Spike on victim');
REPLACE INTO `smart_scripts` VALUES ('-118937', '0', '0', '0', '1', '0', '100', '0', '1000', '4000', '4000', '7000', '11', '51590', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Frozen Earth - OOC - Cast Toss Ice Boulder');
REPLACE INTO `smart_scripts` VALUES ('-118937', '0', '1', '0', '0', '0', '100', '0', '1000', '4000', '10000', '17000', '11', '54532', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Frozen Earth - Combat - Cast Ice Spike on victim');
REPLACE INTO `smart_scripts` VALUES ('-118933', '0', '0', '0', '1', '0', '100', '0', '1000', '4000', '4000', '7000', '11', '51590', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Frozen Earth - OOC - Cast Toss Ice Boulder');
REPLACE INTO `smart_scripts` VALUES ('-118933', '0', '1', '0', '0', '0', '100', '0', '1000', '4000', '10000', '17000', '11', '54532', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Frozen Earth - Combat - Cast Ice Spike on victim');
REPLACE INTO `smart_scripts` VALUES ('-118935', '0', '0', '0', '1', '0', '100', '0', '1000', '4000', '4000', '7000', '11', '51590', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Frozen Earth - OOC - Cast Toss Ice Boulder');
REPLACE INTO `smart_scripts` VALUES ('-118935', '0', '1', '0', '0', '0', '100', '0', '1000', '4000', '10000', '17000', '11', '54532', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Frozen Earth - Combat - Cast Ice Spike on victim');
REPLACE INTO `smart_scripts` VALUES ('-118934', '0', '0', '0', '1', '0', '100', '0', '1000', '4000', '4000', '7000', '11', '51590', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Frozen Earth - OOC - Cast Toss Ice Boulder');
REPLACE INTO `smart_scripts` VALUES ('-118934', '0', '1', '0', '0', '0', '100', '0', '1000', '4000', '10000', '17000', '11', '54532', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Frozen Earth - Combat - Cast Ice Spike on victim');
REPLACE INTO `smart_scripts` VALUES ('-118936', '0', '0', '0', '1', '0', '100', '0', '1000', '4000', '4000', '7000', '11', '51590', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Frozen Earth - OOC - Cast Toss Ice Boulder');
REPLACE INTO `smart_scripts` VALUES ('-118936', '0', '1', '0', '0', '0', '100', '0', '1000', '4000', '10000', '17000', '11', '54532', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Frozen Earth - Combat - Cast Ice Spike on victim');
REPLACE INTO `smart_scripts` VALUES ('26073', '0', '1', '2', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '70', '0', '0', '0', '0', '0', '0', '10', '102845', '25422', '0', '0', '0', '0', '0', 'High Priest Talet-Kha - OOC - Respawn Mystical Webbing');
REPLACE INTO `smart_scripts` VALUES ('26073', '0', '2', '3', '61', '0', '100', '0', '0', '0', '0', '0', '45', '0', '1', '0', '0', '0', '0', '10', '102845', '25422', '0', '0', '0', '0', '0', 'High Priest Talet-Kha - OOC - Set data Mystical Webbing');
REPLACE INTO `smart_scripts` VALUES ('26073', '0', '3', '4', '61', '0', '100', '0', '0', '0', '0', '0', '70', '0', '0', '0', '0', '0', '0', '10', '102844', '25422', '0', '0', '0', '0', '0', 'High Priest Talet-Kha - OOC - Respawn Mystical Webbing');
REPLACE INTO `smart_scripts` VALUES ('26073', '0', '4', '5', '61', '0', '100', '0', '0', '0', '0', '0', '45', '0', '1', '0', '0', '0', '0', '10', '102844', '25422', '0', '0', '0', '0', '0', 'High Priest Talet-Kha - OOC - Set data Mystical Webbing');
REPLACE INTO `smart_scripts` VALUES ('26073', '0', '5', '6', '61', '0', '100', '0', '0', '0', '0', '0', '45', '0', '1', '0', '0', '0', '0', '10', '111477', '23033', '0', '0', '0', '0', '0', 'High Priest Talet-Kha - OOC - Set data Invisible Stalker');
REPLACE INTO `smart_scripts` VALUES ('26073', '0', '6', '0', '61', '0', '100', '0', '0', '0', '0', '0', '45', '0', '1', '0', '0', '0', '0', '10', '111478', '23033', '0', '0', '0', '0', '0', 'High Priest Talet-Kha - OOC - Set data Invisible Stalker');
REPLACE INTO `smart_scripts` VALUES ('-102844', '0', '0', '0', '11', '0', '100', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Mystical Webbing - On spawn - Set React State civilian');
REPLACE INTO `smart_scripts` VALUES ('-102844', '0', '1', '0', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '45497', '2', '0', '0', '0', '0', '11', '26073', '40', '0', '0', '0', '0', '0', 'Mystical Webbing - On spawn & reset - Web Beam');
REPLACE INTO `smart_scripts` VALUES ('-102844', '0', '2', '0', '6', '0', '100', '1', '0', '0', '0', '0', '45', '0', '2', '0', '0', '0', '0', '10', '111477', '23033', '0', '0', '0', '0', '0', 'Mystical Webbing - On death - set data 0 2 Invisible Stalker');
REPLACE INTO `smart_scripts` VALUES ('-102844', '0', '3', '4', '38', '0', '100', '0', '0', '1', '0', '0', '45', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Invisible Stalker (Floating) - On dataset 0 1 - set data 0 0');
REPLACE INTO `smart_scripts` VALUES ('-102844', '0', '4', '0', '61', '0', '100', '0', '0', '0', '0', '0', '70', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Invisible Stalker (Floating) - On dataset 0 1 - reset AI');
REPLACE INTO `smart_scripts` VALUES ('-102845', '0', '0', '0', '11', '0', '100', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Mystical Webbing - On spawn - Set React State civilian');
REPLACE INTO `smart_scripts` VALUES ('-102845', '0', '1', '0', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '45497', '2', '0', '0', '0', '0', '11', '26073', '40', '0', '0', '0', '0', '0', 'Mystical Webbing - On spawn & reset - Web Beam');
REPLACE INTO `smart_scripts` VALUES ('-102845', '0', '2', '0', '6', '0', '100', '1', '0', '0', '0', '0', '45', '0', '2', '0', '0', '0', '0', '10', '111478', '23033', '0', '0', '0', '0', '0', 'Mystical Webbing - On death - set data 0 2 Invisible Stalker');
REPLACE INTO `smart_scripts` VALUES ('-102845', '0', '3', '4', '38', '0', '100', '0', '0', '1', '0', '0', '45', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Invisible Stalker (Floating) - On dataset 0 1 - set data 0 0');
REPLACE INTO `smart_scripts` VALUES ('-102845', '0', '4', '0', '61', '0', '100', '0', '0', '0', '0', '0', '70', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Invisible Stalker (Floating) - On dataset 0 1 - reset AI');
REPLACE INTO `smart_scripts` VALUES ('-111477', '0', '0', '0', '38', '0', '100', '0', '0', '1', '0', '0', '22', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Invisible Stalker (Floating) - On dataset 0 1 - Set Phase 1');
REPLACE INTO `smart_scripts` VALUES ('-111477', '0', '1', '0', '38', '0', '100', '0', '0', '2', '0', '0', '22', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Invisible Stalker (Floating) - On dataset 0 2 - Set Phase 2');
REPLACE INTO `smart_scripts` VALUES ('-111477', '0', '2', '3', '1', '1', '100', '0', '0', '0', '0', '0', '11', '45497', '2', '0', '0', '0', '0', '11', '26073', '40', '0', '0', '0', '0', '0', 'Invisible Stalker (Floating) - OOC - Cast Web Beam on target (Phase 1)');
REPLACE INTO `smart_scripts` VALUES ('-111477', '0', '3', '4', '61', '1', '100', '0', '0', '0', '0', '0', '45', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Invisible Stalker (Floating) - OOC - Set data 0 0 (Phase 1)');
REPLACE INTO `smart_scripts` VALUES ('-111477', '0', '4', '0', '61', '1', '100', '0', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Invisible Stalker (Floating) - OOC - Set Phase 0 (Phase 1)');
REPLACE INTO `smart_scripts` VALUES ('-111477', '0', '5', '6', '1', '2', '100', '0', '0', '0', '0', '0', '92', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Invisible Stalker (Floating) - OOC - Stop casting (Phase 2)');
REPLACE INTO `smart_scripts` VALUES ('-111477', '0', '6', '0', '61', '2', '100', '0', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Invisible Stalker (Floating) - OOC - Set Phase 0 (Phase 2)');
REPLACE INTO `smart_scripts` VALUES ('-111478', '0', '0', '0', '38', '0', '100', '0', '0', '1', '0', '0', '22', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Invisible Stalker (Floating) - On dataset 0 1 - Set Phase 1');
REPLACE INTO `smart_scripts` VALUES ('-111478', '0', '1', '0', '38', '0', '100', '0', '0', '2', '0', '0', '22', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Invisible Stalker (Floating) - On dataset 0 2 - Set Phase 2');
REPLACE INTO `smart_scripts` VALUES ('-111478', '0', '2', '3', '1', '1', '100', '0', '0', '0', '0', '0', '11', '45497', '2', '0', '0', '0', '0', '11', '26073', '40', '0', '0', '0', '0', '0', 'Invisible Stalker (Floating) - OOC - Cast Web Beam on target (Phase 1)');
REPLACE INTO `smart_scripts` VALUES ('-111478', '0', '3', '4', '61', '1', '100', '0', '0', '0', '0', '0', '45', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Invisible Stalker (Floating) - OOC - Set data 0 0 (Phase 1)');
REPLACE INTO `smart_scripts` VALUES ('-111478', '0', '4', '0', '61', '1', '100', '0', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Invisible Stalker (Floating) - OOC - Set Phase 0 (Phase 1)');
REPLACE INTO `smart_scripts` VALUES ('-111478', '0', '5', '6', '1', '2', '100', '0', '0', '0', '0', '0', '92', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Invisible Stalker (Floating) - OOC - Stop casting (Phase 2)');
REPLACE INTO `smart_scripts` VALUES ('-111478', '0', '6', '0', '61', '2', '100', '0', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Invisible Stalker (Floating) - OOC - Set Phase 0 (Phase 2)');
REPLACE INTO `smart_scripts` VALUES ('-95068', '0', '0', '0', '11', '0', '100', '0', '0', '0', '0', '0', '53', '0', '2523400', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Stormfleet Deckhand - On spawn - Start WP movement');
REPLACE INTO `smart_scripts` VALUES ('-95068', '0', '1', '2', '40', '0', '100', '0', '4', '2523400', '0', '0', '54', '10000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Stormfleet Deckhand - Reach wp 4 - pause wp');
REPLACE INTO `smart_scripts` VALUES ('-95068', '0', '2', '0', '61', '0', '100', '0', '0', '0', '0', '0', '80', '2523400', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Stormfleet Deckhand - Reach wp 4 - run script');
REPLACE INTO `smart_scripts` VALUES ('-95068', '0', '3', '4', '40', '0', '100', '0', '8', '2523400', '0', '0', '54', '21000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Stormfleet Deckhand - Reach wp 8 - pause wp');
REPLACE INTO `smart_scripts` VALUES ('-95068', '0', '4', '5', '61', '0', '100', '0', '0', '0', '0', '0', '66', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '5.79449', 'Stormfleet Deckhand - Reach wp 8 - turn to');
REPLACE INTO `smart_scripts` VALUES ('-95068', '0', '5', '0', '61', '0', '100', '0', '0', '0', '0', '0', '80', '2523401', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Stormfleet Deckhand - Reach wp 8 - run script');
REPLACE INTO `smart_scripts` VALUES ('-95069', '0', '0', '0', '11', '0', '100', '0', '0', '0', '0', '0', '53', '0', '2523401', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Stormfleet Deckhand - On spawn - Start WP movement');
REPLACE INTO `smart_scripts` VALUES ('-95069', '0', '1', '2', '40', '0', '100', '0', '6', '2523401', '0', '0', '54', '10000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Stormfleet Deckhand - Reach wp 6 - pause wp');
REPLACE INTO `smart_scripts` VALUES ('-95069', '0', '2', '0', '61', '0', '100', '0', '0', '0', '0', '0', '80', '2523400', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Stormfleet Deckhand - Reach wp 6 - run script');
REPLACE INTO `smart_scripts` VALUES ('-95069', '0', '3', '4', '40', '0', '100', '0', '13', '2523401', '0', '0', '54', '21000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Stormfleet Deckhand - Reach wp 13 - pause wp');
REPLACE INTO `smart_scripts` VALUES ('-95069', '0', '4', '0', '61', '0', '100', '0', '0', '0', '0', '0', '80', '2523401', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Stormfleet Deckhand - Reach wp 13 - run script');
REPLACE INTO `smart_scripts` VALUES ('-95192', '0', '0', '0', '11', '0', '100', '0', '0', '0', '0', '0', '53', '0', '2523402', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Stormfleet Deckhand - On spawn - Start WP movement');
REPLACE INTO `smart_scripts` VALUES ('-95192', '0', '1', '2', '40', '0', '100', '0', '17', '2523402', '0', '0', '54', '10000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Stormfleet Deckhand - Reach wp 17 - pause wp');
REPLACE INTO `smart_scripts` VALUES ('-95192', '0', '2', '0', '61', '0', '100', '0', '0', '0', '0', '0', '80', '2523400', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Stormfleet Deckhand - Reach wp 17 - run script');
REPLACE INTO `smart_scripts` VALUES ('-95192', '0', '3', '4', '40', '0', '100', '0', '9', '2523402', '0', '0', '54', '21000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Stormfleet Deckhand - Reach wp 9 - pause wp');
REPLACE INTO `smart_scripts` VALUES ('-95192', '0', '4', '0', '61', '0', '100', '0', '0', '0', '0', '0', '80', '2523401', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Stormfleet Deckhand - Reach wp 9 - run script');
REPLACE INTO `smart_scripts` VALUES ('-95054', '0', '0', '0', '11', '0', '100', '0', '0', '0', '0', '0', '53', '0', '2523403', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Stormfleet Deckhand - On spawn - Start WP movement');
REPLACE INTO `smart_scripts` VALUES ('-95054', '0', '1', '2', '40', '0', '100', '0', '3', '2523403', '0', '0', '54', '11000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Stormfleet Deckhand - Reach wp 3 - pause wp');
REPLACE INTO `smart_scripts` VALUES ('-95054', '0', '2', '0', '61', '0', '100', '0', '0', '0', '0', '0', '80', '2523402', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Stormfleet Deckhand - Reach wp 3 - run script');
REPLACE INTO `smart_scripts` VALUES ('-95054', '0', '3', '4', '40', '0', '100', '0', '13', '2523403', '0', '0', '54', '11000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Stormfleet Deckhand - Reach wp 13 - pause wp');
REPLACE INTO `smart_scripts` VALUES ('-95054', '0', '4', '0', '61', '0', '100', '0', '0', '0', '0', '0', '80', '2523402', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Stormfleet Deckhand - Reach wp 13 - run script');
REPLACE INTO `smart_scripts` VALUES ('-95054', '0', '5', '6', '40', '0', '100', '0', '16', '2523403', '0', '0', '54', '11000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Stormfleet Deckhand - Reach wp 16 - pause wp');
REPLACE INTO `smart_scripts` VALUES ('-95054', '0', '6', '0', '61', '0', '100', '0', '0', '0', '0', '0', '80', '2523402', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Stormfleet Deckhand - Reach wp 16 - run script');
REPLACE INTO `smart_scripts` VALUES ('-95054', '0', '7', '8', '40', '0', '100', '0', '25', '2523403', '0', '0', '54', '11000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Stormfleet Deckhand - Reach wp 25 - pause wp');
REPLACE INTO `smart_scripts` VALUES ('-95054', '0', '8', '9', '61', '0', '100', '0', '0', '0', '0', '0', '66', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '5.96903', 'Stormfleet Deckhand - Reach wp 25 - turn to');
REPLACE INTO `smart_scripts` VALUES ('-95054', '0', '9', '0', '61', '0', '100', '0', '0', '0', '0', '0', '80', '2523402', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Stormfleet Deckhand - Reach wp 25 - run script');
REPLACE INTO `smart_scripts` VALUES ('-123474', '0', '0', '0', '11', '0', '100', '0', '0', '0', '0', '0', '53', '0', '2664500', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fizzcrank Engineering Crew - On spawn - Start WP movement');
REPLACE INTO `smart_scripts` VALUES ('-123474', '0', '1', '2', '40', '0', '100', '0', '1', '2664500', '0', '0', '54', '16000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fizzcrank Engineering Crew - Reach wp 1 - pause path');
REPLACE INTO `smart_scripts` VALUES ('-123474', '0', '2', '0', '61', '0', '100', '0', '0', '0', '0', '0', '17', '69', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fizzcrank Engineering Crew - Reach wp 1 - STATE_USESTANDING');
REPLACE INTO `smart_scripts` VALUES ('-123474', '0', '3', '4', '40', '0', '100', '0', '6', '2664500', '0', '0', '54', '19000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fizzcrank Engineering Crew - Reach wp 6 - pause path');
REPLACE INTO `smart_scripts` VALUES ('-123474', '0', '4', '0', '61', '0', '100', '0', '0', '0', '0', '0', '17', '69', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fizzcrank Engineering Crew - Reach wp 6 - STATE_USESTANDING');
REPLACE INTO `smart_scripts` VALUES ('-123474', '0', '5', '6', '40', '0', '100', '0', '10', '2664500', '0', '0', '54', '16000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fizzcrank Engineering Crew - Reach wp 10 - pause path');
REPLACE INTO `smart_scripts` VALUES ('-123474', '0', '6', '0', '61', '0', '100', '0', '0', '0', '0', '0', '17', '69', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fizzcrank Engineering Crew - Reach wp 10 - STATE_USESTANDING');
REPLACE INTO `smart_scripts` VALUES ('-123474', '0', '7', '8', '40', '0', '100', '0', '14', '2664500', '0', '0', '54', '24000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fizzcrank Engineering Crew - Reach wp 14 - pause path');
REPLACE INTO `smart_scripts` VALUES ('-123474', '0', '8', '0', '61', '0', '100', '0', '0', '0', '0', '0', '17', '69', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fizzcrank Engineering Crew - Reach wp 14 - STATE_USESTANDING');
REPLACE INTO `smart_scripts` VALUES ('-123482', '0', '0', '0', '11', '0', '100', '0', '0', '0', '0', '0', '53', '0', '2664501', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fizzcrank Engineering Crew - On spawn - Start WP movement');
REPLACE INTO `smart_scripts` VALUES ('-123482', '0', '1', '2', '40', '0', '100', '0', '5', '2664501', '0', '0', '54', '20000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fizzcrank Engineering Crew - Reach wp 5 - pause path');
REPLACE INTO `smart_scripts` VALUES ('-123482', '0', '2', '0', '61', '0', '100', '0', '0', '0', '0', '0', '17', '69', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fizzcrank Engineering Crew - Reach wp 5 - STATE_USESTANDING');
REPLACE INTO `smart_scripts` VALUES ('-123482', '0', '3', '4', '40', '0', '100', '0', '10', '2664501', '0', '0', '54', '23000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fizzcrank Engineering Crew - Reach wp 10 - pause path');
REPLACE INTO `smart_scripts` VALUES ('-123482', '0', '4', '0', '61', '0', '100', '0', '0', '0', '0', '0', '17', '233', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fizzcrank Engineering Crew - Reach wp 10 - STATE_WORK_MINING');
REPLACE INTO `smart_scripts` VALUES ('-123482', '0', '5', '6', '40', '0', '100', '0', '18', '2664501', '0', '0', '54', '25000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fizzcrank Engineering Crew - Reach wp 18 - pause path');
REPLACE INTO `smart_scripts` VALUES ('-123482', '0', '6', '0', '61', '0', '100', '0', '0', '0', '0', '0', '17', '233', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fizzcrank Engineering Crew - Reach wp 18 - STATE_WORK_MINING');
REPLACE INTO `smart_scripts` VALUES ('-123482', '0', '7', '8', '40', '0', '100', '0', '24', '2664501', '0', '0', '54', '25000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fizzcrank Engineering Crew - Reach wp 24 - pause path');
REPLACE INTO `smart_scripts` VALUES ('-123482', '0', '8', '0', '61', '0', '100', '0', '0', '0', '0', '0', '17', '69', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Fizzcrank Engineering Crew - Reach wp 24 - STATE_USESTANDING');
REPLACE INTO `smart_scripts` VALUES ('25766', '0', '4', '0', '40', '0', '100', '0', '6', '25766', '0', '0', '45', '0', '1', '0', '0', '0', '0', '10', '102697', '15214', '0', '0', '0', '0', '0', 'Rig Hauler AC-9 - Reach wp 6 - dataset 0 1 Invisable Stalker');
REPLACE INTO `smart_scripts` VALUES ('-102697', '0', '0', '1', '38', '0', '100', '0', '0', '1', '0', '0', '45', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Invisable Stalker - on dataset 0 1 - dataset 0 0');
REPLACE INTO `smart_scripts` VALUES ('-102697', '0', '1', '0', '61', '0', '100', '0', '0', '0', '0', '0', '11', '47453', '3', '0', '0', '0', '0', '11', '25766', '200', '0', '0', '0', '0', '0', 'Invisable Stalker - on dataset 0 1 - Cast 47453 on Rig Hauler AC-9');
REPLACE INTO `smart_scripts` VALUES ('-124163', '0', '0', '0', '1', '0', '100', '0', '10000', '20000', '90000', '105000', '11', '45931', '3', '0', '0', '0', '0', '10', '123548', '23837', '0', '0', '0', '0', '0', 'ELM General Purpose Bunny - OOC timed - cast 45931 on target');
REPLACE INTO `smart_scripts` VALUES ('-124232', '0', '0', '0', '8', '0', '100', '0', '45931', '0', '0', '0', '80', '2383700', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'ELM General Purpose Bunny - On spellhit - run script');
REPLACE INTO `smart_scripts` VALUES ('27615', '0', '0', '1', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '49119', '2', '0', '0', '0', '0', '10', '93658', '27452', '0', '0', '0', '0', '0', 'Scourge Deathspeaker - Spawn & reset - channel Fire Beam');
REPLACE INTO `smart_scripts` VALUES ('-124328', '0', '0', '0', '1', '0', '100', '0', '5000', '5000', '5000', '7000', '11', '45223', '0', '0', '0', '0', '0', '10', '122833', '25192', '0', '0', '0', '0', '0', 'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger');
REPLACE INTO `smart_scripts` VALUES ('-124329', '0', '0', '0', '1', '0', '100', '0', '2000', '2000', '5000', '7000', '11', '45223', '0', '0', '0', '0', '0', '10', '122834', '25192', '0', '0', '0', '0', '0', 'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger');
REPLACE INTO `smart_scripts` VALUES ('-124384', '0', '0', '0', '1', '0', '100', '0', '3000', '3000', '5000', '7000', '11', '45223', '0', '0', '0', '0', '0', '10', '122843', '25192', '0', '0', '0', '0', '0', 'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger');
REPLACE INTO `smart_scripts` VALUES ('-124435', '0', '0', '0', '1', '0', '100', '0', '6000', '6000', '5000', '7000', '11', '45223', '0', '0', '0', '0', '0', '10', '122844', '25192', '0', '0', '0', '0', '0', 'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger');
REPLACE INTO `smart_scripts` VALUES ('-124675', '0', '0', '0', '1', '0', '100', '0', '2000', '2000', '5000', '7000', '11', '45223', '0', '0', '0', '0', '0', '10', '122845', '25192', '0', '0', '0', '0', '0', 'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger');
REPLACE INTO `smart_scripts` VALUES ('-124676', '0', '0', '0', '1', '0', '100', '0', '5000', '5000', '5000', '7000', '11', '45223', '0', '0', '0', '0', '0', '10', '122846', '25192', '0', '0', '0', '0', '0', 'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger');
REPLACE INTO `smart_scripts` VALUES ('-124677', '0', '0', '0', '1', '0', '100', '0', '1000', '1000', '5000', '7000', '11', '45223', '0', '0', '0', '0', '0', '10', '122833', '25192', '0', '0', '0', '0', '0', 'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger');
REPLACE INTO `smart_scripts` VALUES ('-124678', '0', '0', '0', '1', '0', '100', '0', '5000', '5000', '5000', '7000', '11', '45223', '0', '0', '0', '0', '0', '10', '122834', '25192', '0', '0', '0', '0', '0', 'Shattered Sun Marksman - OOC 5-7 sec - Shoot at trigger');
REPLACE INTO `smart_scripts` VALUES ('21182', '0', '1', '2', '8', '0', '100', '0', '36374', '0', '0', '0', '45', '0', '1', '0', '0', '0', '0', '10', '124679', '21173', '0', '0', '0', '0', '0', 'Zeth\'Gor Quest Credit Marker, They Must Burn, Tower South - On spell hit - Call Griphonriders');
REPLACE INTO `smart_scripts` VALUES ('22401', '0', '1', '2', '8', '0', '100', '0', '36374', '0', '0', '0', '45', '0', '2', '0', '0', '0', '0', '10', '123039', '21173', '0', '0', '0', '0', '0', 'Zeth\'Gor Quest Credit Marker, They Must Burn, Tower North - On spell hit - Call Griphonriders');
REPLACE INTO `smart_scripts` VALUES ('22402', '0', '1', '2', '8', '0', '100', '0', '36374', '0', '0', '0', '45', '0', '3', '0', '0', '0', '0', '10', '123039', '21173', '0', '0', '0', '0', '0', 'Zeth\'Gor Quest Credit Marker, They Must Burn, Tower Forge - On spell hit - Call Griphonriders');
REPLACE INTO `smart_scripts` VALUES ('22403', '0', '1', '2', '8', '0', '100', '0', '36374', '0', '0', '0', '45', '0', '4', '0', '0', '0', '0', '10', '123039', '21173', '0', '0', '0', '0', '0', 'Zeth\'Gor Quest Credit Marker, They Must Burn, Tower Foothill - On spell hit - Call Griphonriders');
REPLACE INTO `smart_scripts` VALUES ('-117023', '0', '0', '0', '62', '0', '100', '0', '21256', '0', '0', '0', '11', '61457', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Archmage Vargoth (Dalaran) - On gossip select cast Kirin Tor Familiar on invoker');
REPLACE INTO `smart_scripts` VALUES ('-136629', '0', '0', '0', '1', '0', '100', '1', '500', '500', '0', '0', '11', '63413', '0', '0', '0', '0', '0', '11', '35469', '10', '0', '0', '0', '0', '0', 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Gormok the Impaler');
REPLACE INTO `smart_scripts` VALUES ('-136630', '0', '0', '0', '1', '0', '100', '1', '500', '500', '0', '0', '11', '63413', '0', '0', '0', '0', '0', '11', '35469', '10', '0', '0', '0', '0', '0', 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Gormok the Impaler');
REPLACE INTO `smart_scripts` VALUES ('-136631', '0', '0', '0', '1', '0', '100', '1', '500', '500', '0', '0', '11', '63413', '0', '0', '0', '0', '0', '11', '35469', '10', '0', '0', '0', '0', '0', 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Gormok the Impaler');
REPLACE INTO `smart_scripts` VALUES ('-136632', '0', '0', '0', '1', '0', '100', '1', '500', '500', '0', '0', '11', '63413', '0', '0', '0', '0', '0', '11', '35469', '10', '0', '0', '0', '0', '0', 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Gormok the Impaler');
REPLACE INTO `smart_scripts` VALUES ('-136633', '0', '0', '0', '1', '0', '100', '1', '500', '500', '0', '0', '11', '63413', '0', '0', '0', '0', '0', '11', '35470', '10', '0', '0', '0', '0', '0', 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Icehowl');
REPLACE INTO `smart_scripts` VALUES ('-136634', '0', '0', '0', '1', '0', '100', '1', '500', '500', '0', '0', '11', '63413', '0', '0', '0', '0', '0', '11', '35470', '10', '0', '0', '0', '0', '0', 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Icehowl');
REPLACE INTO `smart_scripts` VALUES ('-136635', '0', '0', '0', '1', '0', '100', '1', '500', '500', '0', '0', '11', '63413', '0', '0', '0', '0', '0', '11', '35470', '10', '0', '0', '0', '0', '0', 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Icehowl');
REPLACE INTO `smart_scripts` VALUES ('-136636', '0', '0', '0', '1', '0', '100', '1', '500', '500', '0', '0', '11', '63413', '0', '0', '0', '0', '0', '11', '35470', '10', '0', '0', '0', '0', '0', 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Icehowl');
REPLACE INTO `smart_scripts` VALUES ('-57385', '0', '0', '0', '1', '0', '100', '1', '1000', '1000', '30000', '30000', '11', '46906', '2', '0', '0', '0', '0', '10', '117694', '27853', '0', '0', '0', '0', '0', 'Surge Needle Sorcerer - OOC - Cast Surge Needle Beam');
REPLACE INTO `smart_scripts` VALUES ('-57385', '0', '1', '0', '0', '0', '100', '0', '3000', '4000', '3000', '5000', '11', '51797', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Surge Needle Sorcerer - Combat - Cast Arcane Blast on victim');
REPLACE INTO `smart_scripts` VALUES ('-78148', '0', '0', '0', '1', '0', '100', '1', '1000', '1000', '30000', '30000', '11', '46906', '2', '0', '0', '0', '0', '10', '117694', '27853', '0', '0', '0', '0', '0', 'Surge Needle Sorcerer - OOC - Cast Surge Needle Beam');
REPLACE INTO `smart_scripts` VALUES ('-78148', '0', '1', '0', '0', '0', '100', '0', '3000', '4000', '3000', '5000', '11', '51797', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Surge Needle Sorcerer - Combat - Cast Arcane Blast on victim');
REPLACE INTO `smart_scripts` VALUES ('-93642', '0', '0', '0', '1', '0', '100', '1', '1000', '1000', '30000', '30000', '11', '46906', '2', '0', '0', '0', '0', '10', '117694', '27853', '0', '0', '0', '0', '0', 'Surge Needle Sorcerer - OOC - Cast Surge Needle Beam');
REPLACE INTO `smart_scripts` VALUES ('-93642', '0', '1', '0', '0', '0', '100', '0', '3000', '4000', '3000', '5000', '11', '51797', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'Surge Needle Sorcerer - Combat - Cast Arcane Blast on victim');
REPLACE INTO `smart_scripts` VALUES ('-114313', '0', '0', '1', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '50389', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Rotting Storm Giant - On reset - Cast Flesh Construct Test');
REPLACE INTO `smart_scripts` VALUES ('-114313', '0', '1', '0', '61', '0', '100', '1', '0', '0', '0', '0', '11', '50390', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Rotting Storm Giant - On reset - Cast Flesh Construct Test');
REPLACE INTO `smart_scripts` VALUES ('-114313', '0', '2', '3', '4', '0', '100', '0', '0', '0', '0', '0', '28', '50389', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Rotting Storm Giant - On Aggro - Remove Flesh Construct Test');
REPLACE INTO `smart_scripts` VALUES ('-114313', '0', '3', '0', '61', '0', '100', '0', '0', '0', '0', '0', '28', '50390', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Rotting Storm Giant - On Aggro - Remove Flesh Construct Test');
REPLACE INTO `smart_scripts` VALUES ('-114306', '0', '0', '1', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '50389', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Rotting Storm Giant - On reset - Cast Flesh Construct Test');
REPLACE INTO `smart_scripts` VALUES ('-114306', '0', '1', '0', '61', '0', '100', '1', '0', '0', '0', '0', '11', '50390', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Rotting Storm Giant - On reset - Cast Flesh Construct Test');
REPLACE INTO `smart_scripts` VALUES ('-114306', '0', '2', '3', '4', '0', '100', '0', '0', '0', '0', '0', '28', '50389', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Rotting Storm Giant - On Aggro - Remove Flesh Construct Test');
REPLACE INTO `smart_scripts` VALUES ('-114306', '0', '3', '0', '61', '0', '100', '0', '0', '0', '0', '0', '28', '50390', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Rotting Storm Giant - On Aggro - Remove Flesh Construct Test');
REPLACE INTO `smart_scripts` VALUES ('-114311', '0', '0', '1', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '50389', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Rotting Storm Giant - On reset - Cast Flesh Construct Test');
REPLACE INTO `smart_scripts` VALUES ('-114311', '0', '1', '0', '61', '0', '100', '1', '0', '0', '0', '0', '11', '50390', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Rotting Storm Giant - On reset - Cast Flesh Construct Test');
REPLACE INTO `smart_scripts` VALUES ('-114311', '0', '2', '3', '4', '0', '100', '0', '0', '0', '0', '0', '28', '50389', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Rotting Storm Giant - On Aggro - Remove Flesh Construct Test');
REPLACE INTO `smart_scripts` VALUES ('-114311', '0', '3', '0', '61', '0', '100', '0', '0', '0', '0', '0', '28', '50390', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Rotting Storm Giant - On Aggro - Remove Flesh Construct Test');
REPLACE INTO `smart_scripts` VALUES ('-114310', '0', '0', '1', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '50389', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Rotting Storm Giant - On reset - Cast Flesh Construct Test');
REPLACE INTO `smart_scripts` VALUES ('-114310', '0', '1', '0', '61', '0', '100', '1', '0', '0', '0', '0', '11', '50390', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Rotting Storm Giant - On reset - Cast Flesh Construct Test');
REPLACE INTO `smart_scripts` VALUES ('-114310', '0', '2', '3', '4', '0', '100', '0', '0', '0', '0', '0', '28', '50389', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Rotting Storm Giant - On Aggro - Remove Flesh Construct Test');
REPLACE INTO `smart_scripts` VALUES ('-114310', '0', '3', '0', '61', '0', '100', '0', '0', '0', '0', '0', '28', '50390', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Rotting Storm Giant - On Aggro - Remove Flesh Construct Test');
REPLACE INTO `smart_scripts` VALUES ('-114308', '0', '0', '1', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '50389', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Rotting Storm Giant - On reset - Cast Flesh Construct Test');
REPLACE INTO `smart_scripts` VALUES ('-114308', '0', '1', '0', '61', '0', '100', '1', '0', '0', '0', '0', '11', '50390', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Rotting Storm Giant - On reset - Cast Flesh Construct Test');
REPLACE INTO `smart_scripts` VALUES ('-114308', '0', '2', '3', '4', '0', '100', '0', '0', '0', '0', '0', '28', '50389', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Rotting Storm Giant - On Aggro - Remove Flesh Construct Test');
REPLACE INTO `smart_scripts` VALUES ('-114308', '0', '3', '0', '61', '0', '100', '0', '0', '0', '0', '0', '28', '50390', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Rotting Storm Giant - On Aggro - Remove Flesh Construct Test');
REPLACE INTO `smart_scripts` VALUES ('-114309', '0', '0', '1', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '50389', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Rotting Storm Giant - On reset - Cast Flesh Construct Test');
REPLACE INTO `smart_scripts` VALUES ('-114309', '0', '1', '0', '61', '0', '100', '1', '0', '0', '0', '0', '11', '50390', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Rotting Storm Giant - On reset - Cast Flesh Construct Test');
REPLACE INTO `smart_scripts` VALUES ('-114309', '0', '2', '3', '4', '0', '100', '0', '0', '0', '0', '0', '28', '50389', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Rotting Storm Giant - On Aggro - Remove Flesh Construct Test');
REPLACE INTO `smart_scripts` VALUES ('-114309', '0', '3', '0', '61', '0', '100', '0', '0', '0', '0', '0', '28', '50390', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Rotting Storm Giant - On Aggro - Remove Flesh Construct Test');
REPLACE INTO `smart_scripts` VALUES ('-122693', '0', '0', '0', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '33346', '2', '0', '0', '0', '0', '10', '122695', '19656', '0', '0', '0', '0', '0', 'Invisible Location Trigger - OOC once - Cast Green Beam on target');
REPLACE INTO `smart_scripts` VALUES ('-122694', '0', '0', '0', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '33346', '2', '0', '0', '0', '0', '10', '122695', '19656', '0', '0', '0', '0', '0', 'Invisible Location Trigger - OOC once - Cast Green Beam on target');
REPLACE INTO `smart_scripts` VALUES ('-122697', '0', '0', '0', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '33346', '2', '0', '0', '0', '0', '10', '122695', '19656', '0', '0', '0', '0', '0', 'Invisible Location Trigger - OOC once - Cast Green Beam on target');
REPLACE INTO `smart_scripts` VALUES ('-122696', '0', '0', '0', '1', '0', '100', '1', '1000', '1000', '1000', '1000', '11', '33346', '2', '0', '0', '0', '0', '10', '122695', '19656', '0', '0', '0', '0', '0', 'Invisible Location Trigger - OOC once - Cast Green Beam on target');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=37011;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-136222,-136223,37011);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(-136222,0,0,0,6,0,100,1,0,0,0,0,11,70961,3,0,0,0,0,1,0,0,0,0,0,0,0, 'The Damned - Cast Shattered Bones on death'),
(-136222,0,1,0,2,0,100,0,5,30,15000,20000,75,70960,0,0,0,0,0,1,0,0,0,0,0,0,0, 'The Damned - Cast Bone Flurry at 5-30%'),
(-136222,0,2,0,6,0,100,1,0,0,0,0,45,1,1,0,0,0,0,10,136291,0,0,0,0,0,0, 'The Damned - Set data for Highlord Tirion Fordring'),
(-136223,0,0,0,6,0,100,1,0,0,0,0,11,70961,3,0,0,0,0,1,0,0,0,0,0,0,0, 'The Damned - Cast Shattered Bones on death'),
(-136223,0,1,0,2,0,100,0,5,30,15000,20000,75,70960,0,0,0,0,0,1,0,0,0,0,0,0,0, 'The Damned - Cast Bone Flurry at 5-30%'),
(-136223,0,2,0,6,0,100,1,0,0,0,0,45,1,1,0,0,0,0,10,136291,0,0,0,0,0,0, 'The Damned - Set data for Highlord Tirion Fordring'),
(37011,0,0,0,6,0,100,1,0,0,0,0,11,70961,3,0,0,0,0,1,0,0,0,0,0,0,0, 'The Damned - Cast Shattered Bones on death'),
(37011,0,1,0,2,0,100,0,5,30,15000,20000,75,70960,0,0,0,0,0,1,0,0,0,0,0,0,0, 'The Damned - Cast Bone Flurry at 5-30%');
UPDATE `creature` SET `position_x` = -125.816 WHERE `guid` = 136222;
UPDATE `creature` SET `position_x` = -125.049, `position_y` = 2208.14 WHERE `guid` = 136223;
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16, `speed_walk` = 1 WHERE `entry` IN (37011,38061);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry`=14884;
DELETE FROM `smart_scripts` WHERE `entryorguid`=14884 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(14884,0,0,0,25,0,100,0,0,3,0,0,75,23867,0,0,0,0,0,1,0,0,0,0,0,0,0,'Parasitic Serpent - Cast Parasitic Serpent aura on spawn'),
(14884,0,1,2,31,0,100,0,23865,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Parasitic Serpent - stop combat movement, linking to 2'),
(14884,0,2,0,61,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Parasitic Serpent - evade, linking to 3'),
(14884,0,3,0,7,0,100,0,0,0,0,0,41,10,0,0,0,0,0,1,0,0,0,0,0,0,0,'Parasitic Serpent - on evade despawn');
UPDATE `item_template` SET `spellid_2`=53056 WHERE `entry`=39644;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`comment`)
VALUES
(13,0,63317,0,18,1,33388,0,0,'','Flame Breath - Dark Rune Guardian');
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (10066,10067) AND `type`=11;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`)
VALUES
(10066,11,0,0,'achievement_iron_dwarf_medium_rare'),
(10067,11,0,0,'achievement_iron_dwarf_medium_rare');
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 6800;
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES
(6800, 6, 3057, 0, ''),
(6800, 11, 0, 0, 'achievement_sickly_gazelle');
UPDATE `gameobject_template` SET `flags`=48 WHERE `entry`=202223; -- Scourge Transporter to the Frozen Throne
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry` IN (202242,202243,202244,202245,202235,202246); -- Scourge Transporters
UPDATE `creature_template` SET `gossip_menu_id`=10993 WHERE `entry`=38995;
DELETE FROM `gossip_menu` WHERE `entry`=10993;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(10993,15290);
DELETE FROM `gossip_menu_option` WHERE `menu_id`=10993;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`) VALUES
(10993,0,0,'We are prepared, Highlord. Let us battle for the fate of Azeroth! For the light of dawn!',1,1,0,0,0,0,'');
UPDATE `spell_proc_event` SET `procEx` = 0 WHERE `entry` = 60172;
UPDATE `spell_proc_event` SET `procEx` = `procEx`|0x42000 WHERE `entry` IN (58872,58874);
UPDATE `reputation_reward_rate` SET `quest_rate`=4,`spell_rate`=1 WHERE `faction`=576;
UPDATE `reputation_reward_rate` SET `quest_rate`=2,`spell_rate`=1 WHERE `faction`=941;
DELETE FROM `gossip_menu` WHERE `entry` IN (6543,6540,6542) AND `text_id` IN (7771,7772,7773,7776);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(6540,7771),
(6542,7772),
(6543,7776);
DELETE FROM `creature_text` WHERE `entry` IN (15209,15211,15212,15307,15206,15207,15208,15220,15203,15204,15205,15305);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(15209,0,0, 'The Abyssal Council does not tolerate deceit! Feel our wrath, little human!',12,0,100,0,0,0, 'Crimson Templar - SAY_TEMPLAR_AGGRO'),
(15211,0,0, 'The Abyssal Council does not tolerate deceit! Feel our wrath, little human!',12,0,100,0,0,0, 'Azure Templar - SAY_TEMPLAR_AGGRO'),
(15212,0,0, 'The Abyssal Council does not tolerate deceit! Feel our wrath, little human!',12,0,100,0,0,0, 'Hoary Templar - SAY_TEMPLAR_AGGRO'),
(15307,0,0, 'The Abyssal Council does not tolerate deceit! Feel our wrath, little human!',12,0,100,0,0,0, 'Earthen Templar - SAY_TEMPLAR_AGGRO'),
(15206,0,0, 'What? Such a small, frail thing beckons me? This will not do unpunished!',12,0,100,0,0,0, 'The Duke of Cynders - SAY_DUKE_AGGRO'),
(15207,0,0, 'What? Such a small, frail thing beckons me? This will not do unpunished!',12,0,100,0,0,0, 'The Duke of Fathoms - SAY_DUKE_AGGRO'),
(15208,0,0, 'What? Such a small, frail thing beckons me? This will not do unpunished!',12,0,100,0,0,0, 'The Duke of Shards - SAY_DUKE_AGGRO'),
(15220,0,0, 'What? Such a small, frail thing beckons me? This will not do unpunished!',12,0,100,0,0,0, 'The Duke of Zephyrs - SAY_DUKE_AGGRO'),
(15203,0,0, 'Your treachery only speeds your doom. This world will fall to darkness!',14,0,100,0,0,0, 'Prince Skaldrenox - YELL_ROYAL_AGGRO'),
(15204,0,0, 'Your treachery only speeds your doom. This world will fall to darkness!',14,0,100,0,0,0, 'High Marshal Whirlaxis - YELL_ROYAL_AGGRO'),
(15205,0,0, 'Your treachery only speeds your doom. This world will fall to darkness!',14,0,100,0,0,0, 'Baron Kazum - YELL_ROYAL_AGGRO'),
(15305,0,0, 'Your treachery only speeds your doom. This world will fall to darkness!',14,0,100,0,0,0, 'Lord Skwol - YELL_ROYAL_AGGRO');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`, `Comment`) VALUES
(13,0,24734,0,18,0,180529,0,0, '', 'Summon Templar Random - Lesser Wind Stone'),
(13,0,24734,0,18,0,180456,0,0, '', 'Summon Templar Random - Lesser Wind Stone'),
(13,0,24734,0,18,0,180518,0,0, '', 'Summon Templar Random - Lesser Wind Stone'),
(13,0,24734,0,18,0,180544,0,0, '', 'Summon Templar Random - Lesser Wind Stone'),
(13,0,24734,0,18,0,180549,0,0, '', 'Summon Templar Random - Lesser Wind Stone'),
(13,0,24734,0,18,0,180564,0,0, '', 'Summon Templar Random - Lesser Wind Stone'),
(13,0,24744,0,18,0,180529,0,0, '', 'Summon Templar Fire - Lesser Wind Stone'),
(13,0,24744,0,18,0,180456,0,0, '', 'Summon Templar Fire - Lesser Wind Stone'),
(13,0,24744,0,18,0,180518,0,0, '', 'Summon Templar Fire - Lesser Wind Stone'),
(13,0,24744,0,18,0,180544,0,0, '', 'Summon Templar Fire - Lesser Wind Stone'),
(13,0,24744,0,18,0,180549,0,0, '', 'Summon Templar Fire - Lesser Wind Stone'),
(13,0,24744,0,18,0,180564,0,0, '', 'Summon Templar Fire - Lesser Wind Stone'),
(13,0,24756,0,18,0,180529,0,0, '', 'Summon Templar Air - Lesser Wind Stone'),
(13,0,24756,0,18,0,180456,0,0, '', 'Summon Templar Air - Lesser Wind Stone'),
(13,0,24756,0,18,0,180518,0,0, '', 'Summon Templar Air - Lesser Wind Stone'),
(13,0,24756,0,18,0,180544,0,0, '', 'Summon Templar Air - Lesser Wind Stone'),
(13,0,24756,0,18,0,180549,0,0, '', 'Summon Templar Air - Lesser Wind Stone'),
(13,0,24756,0,18,0,180564,0,0, '', 'Summon Templar Air - Lesser Wind Stone'),
(13,0,24758,0,18,0,180529,0,0, '', 'Summon Templar Earth - Lesser Wind Stone'),
(13,0,24758,0,18,0,180456,0,0, '', 'Summon Templar Earth - Lesser Wind Stone'),
(13,0,24758,0,18,0,180518,0,0, '', 'Summon Templar Earth - Lesser Wind Stone'),
(13,0,24758,0,18,0,180544,0,0, '', 'Summon Templar Earth - Lesser Wind Stone'),
(13,0,24758,0,18,0,180549,0,0, '', 'Summon Templar Earth - Lesser Wind Stone'),
(13,0,24758,0,18,0,180564,0,0, '', 'Summon Templar Earth - Lesser Wind Stone'),
(13,0,24760,0,18,0,180529,0,0, '', 'Summon Templar Water - Lesser Wind Stone'),
(13,0,24760,0,18,0,180456,0,0, '', 'Summon Templar Water - Lesser Wind Stone'),
(13,0,24760,0,18,0,180518,0,0, '', 'Summon Templar Water - Lesser Wind Stone'),
(13,0,24760,0,18,0,180544,0,0, '', 'Summon Templar Water - Lesser Wind Stone'),
(13,0,24760,0,18,0,180549,0,0, '', 'Summon Templar Water - Lesser Wind Stone'),
(13,0,24760,0,18,0,180564,0,0, '', 'Summon Templar Water - Lesser Wind Stone'),
(13,0,24763,0,18,0,180534,0,0, '', 'Summon Duke Random - Wind Stone'),
(13,0,24763,0,18,0,180461,0,0, '', 'Summon Duke Random - Wind Stone'),
(13,0,24763,0,18,0,180554,0,0, '', 'Summon Duke Random - Wind Stone'),
(13,0,24765,0,18,0,180534,0,0, '', 'Summon Duke Fire - Wind Stone'),
(13,0,24765,0,18,0,180461,0,0, '', 'Summon Duke Fire - Wind Stone'),
(13,0,24765,0,18,0,180554,0,0, '', 'Summon Duke Fire - Wind Stone'),
(13,0,24768,0,18,0,180534,0,0, '', 'Summon Duke Air - Wind Stone'),
(13,0,24768,0,18,0,180461,0,0, '', 'Summon Duke Air - Wind Stone'),
(13,0,24768,0,18,0,180554,0,0, '', 'Summon Duke Air - Wind Stone'),
(13,0,24770,0,18,0,180534,0,0, '', 'Summon Duke Earth - Wind Stone'),
(13,0,24770,0,18,0,180461,0,0, '', 'Summon Duke Earth - Wind Stone'),
(13,0,24770,0,18,0,180554,0,0, '', 'Summon Duke Earth - Wind Stone'),
(13,0,24772,0,18,0,180534,0,0, '', 'Summon Duke Water - Wind Stone'),
(13,0,24772,0,18,0,180461,0,0, '', 'Summon Duke Water - Wind Stone'),
(13,0,24772,0,18,0,180554,0,0, '', 'Summon Duke Water - Wind Stone'),
(13,0,24784,0,18,0,180466,0,0, '', 'Summon Royal Random - Greater Wind Stone'),
(13,0,24784,0,18,0,180539,0,0, '', 'Summon Royal Random - Greater Wind Stone'),
(13,0,24784,0,18,0,180559,0,0, '', 'Summon Royal Random - Greater Wind Stone'),
(13,0,24786,0,18,0,180466,0,0, '', 'Summon Royal Fire - Greater Wind Stone'),
(13,0,24786,0,18,0,180539,0,0, '', 'Summon Royal Fire - Greater Wind Stone'),
(13,0,24786,0,18,0,180559,0,0, '', 'Summon Royal Fire - Greater Wind Stone'),
(13,0,24788,0,18,0,180466,0,0, '', 'Summon Royal Air - Greater Wind Stone'),
(13,0,24788,0,18,0,180539,0,0, '', 'Summon Royal Air - Greater Wind Stone'),
(13,0,24788,0,18,0,180559,0,0, '', 'Summon Royal Air - Greater Wind Stone'),
(13,0,24789,0,18,0,180466,0,0, '', 'Summon Royal Earth - Greater Wind Stone'),
(13,0,24789,0,18,0,180539,0,0, '', 'Summon Royal Earth - Greater Wind Stone'),
(13,0,24789,0,18,0,180559,0,0, '', 'Summon Royal Earth - Greater Wind Stone'),
(13,0,24790,0,18,0,180466,0,0, '', 'Summon Royal Water - Greater Wind Stone'),
(13,0,24790,0,18,0,180539,0,0, '', 'Summon Royal Water - Greater Wind Stone'),
(13,0,24790,0,18,0,180559,0,0, '', 'Summon Royal Water - Greater Wind Stone');
SET @ENTRY := 18716;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,62,0,100,0,7759,0,0,0,11,47068,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Who Are They - Shadowy Initiate - On Gossip option - Cast spell 47068 on player'),
(@ENTRY,0,1,0,25,0,100,0,0,0,0,0,58,1,9613,2400,3800,30,30,1,0,0,0,0,0,0,0, 'Shadowy Initiate - On spawn install caster template');
SET @ENTRY := 18719;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,62,0,100,0,7760,0,0,0,11,47070,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Who Are They - Shadowy Advisor - On Gossip option - Cast spell 47070 on player'),
(@ENTRY,0,1,0,25,0,100,0,0,0,0,0,58,1,9613,2400,3800,30,30,1,0,0,0,0,0,0,0, 'Shadowy Advisor - On spawn install caster template');
SET @ENTRY := 18930;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,62,0,100,0,7938,1,0,0,11,34924,2,0,0,0,0,7,0,0,0,0,0,0,0, 'Vlagga Freyfeather - On gossip option 1 select - Cast Stair of Destiny to Thrallmar'),
(@ENTRY,0,1,0,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0, 'Vlagga Freyfeather - Vlagga Freyfeather - Summon Enraged Wyverns on Aggro'),
(@ENTRY,0,2,0,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0, 'Vlagga Freyfeather - Vlagga Freyfeather - Summon Enraged Wyverns on Aggro'),
(@ENTRY,0,3,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Vlagga Freyfeather - Say text on Aggro');
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES 
(@ENTRY,0,0, 'Arrrhhh...Guards!',14,7,100,0,0,0, 'Common Horde Flight Master');
SET @ENTRY := 25596;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,11,32423,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Infected Kodo Beast - Blue Radiation on spawn'),
(@ENTRY,0,1,0,27,0,100,0,0,0,0,0,91,7,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Infected Kodo Beast - remove death state on passager boarded'),
(@ENTRY,0,2,0,31,0,100,0,45877,0,0,0,41,0,0,0,0,0,0,22,0,0,0,0,0,0,0, 'Infected Kodo Beast - On Spell Hit despawn');
SET @ENTRY := 26257;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,58,1,51797,3400,4800,30,7,1,0,0,0,0,0,0,0, 'Surge Needle Sorcerer - On spawn install caster template');
SET @ENTRY := 26343;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,11,32423,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Indu''le Fisherman - On spawn - Cast Blue Radiation on self'),
(@ENTRY,0,1,0,9,0,100,0,0,20,15000,18000,11,11820,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Indu''le Fisherman -  Cast Electrified Net');
SET @ENTRY := 27842;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,1,0,4,0,100,0,0,0,0,0,12,9521,4,30000,0,0,0,1,0,0,0,0,0,0,0, 'Fenrick Barlowe - Summon Enraged Felbat on Aggro'),
(@ENTRY,0,2,0,4,0,100,0,0,0,0,0,12,9521,4,30000,0,0,0,1,0,0,0,0,0,0,0, 'Fenrick Barlowe - Summon Enraged Felbat on Aggro'),
(@ENTRY,0,3,0,4,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fenrick Barlowe - Say text on Aggro'),
(@ENTRY,0,4,0,11,0,100,0,0,0,0,0,53,0,27842,1,0,0,0,1,0,0,0,0,0,0,0, 'Fenrick Barlowe - on spawn start path'),
(@ENTRY,0,5,0,40,0,100,0,5,27842,0,0,80,2784201,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fenrick Barlowe - at wp 5 run script1'),
(@ENTRY,0,6,0,40,0,100,0,8,27842,0,0,80,2784202,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fenrick Barlowe - at wp 8 run script2');
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES 
(@ENTRY, 0, 0, 'Bat gizzards again for the gnomes tonight...', 12, 0, 100, 1, 0, 0, 'Fenrick Barlowe text'),
(@ENTRY, 0, 1, 'What do they expect, making the bats come in at that angle? Broken necks and gamey bat stew, that''s what they get.', 12, 0, 100, 1, 0, 0, 'Fenrick Barlowe text'),
(@ENTRY, 0, 2, 'We like trees, Fenrick. They provide cover. They won''t let me chop them down, either.', 12, 0, 100, 1, 0, 0, 'Fenrick Barlowe text'),
(@ENTRY, 0, 3, 'I wonder how many reinforcements need to suffer injury before they allows us to chop down these idiotic trees. They''re costing us a fortune in bats. Maybe I''ll rig a harness or two...', 12, 0, 100, 1, 0, 0, 'Fenrick Barlowe text'),
(@ENTRY,1,0, 'Arrrhhh...Guards!',14,7,100,0,0,0, 'Common Horde Flight Master');
UPDATE `creature_template` SET `baseattacktime`=2000 WHERE `entry`=36213; -- Kor'kron Overseer
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`baseattacktime`=2000,`unit_flags`=33280,`speed_walk`=1 WHERE `entry`=5677; -- Summoned Succubus
UPDATE `creature_template` SET `npcflag`=1,`unit_flags`=0x300,`speed_run`=0.99206 WHERE `entry`=33238; -- Argent Squire
UPDATE `creature_template` SET `faction_A`=35,`faction_H`=35,`unit_flags`=33536 WHERE `entry`=36979; -- Lil'KT
UPDATE `creature_template` SET `InhabitType`=7,`flags_extra`=`flags_extra`|2|128 WHERE `entry` IN (34286,34159,33571); -- Orbital Support, Ulduar Gauntlet Generator, Ulduar Gauntlet Generator (small radius)
UPDATE `creature_model_info` SET `bounding_radius`=0.2596,`combat_reach`=1.65,`gender`=1 WHERE `modelid`=30063; -- Kor'kron Overseer
UPDATE `creature_model_info` SET `bounding_radius`=0.6045,`combat_reach`=2.25,`gender`=1 WHERE `modelid`=10923; -- Summoned Succubus
UPDATE `creature_model_info` SET `bounding_radius`=0.06,`combat_reach`=0.3,`gender`=0 WHERE `modelid`=30507; -- Lil'KT
UPDATE `creature_model_info` SET `bounding_radius`=0.3,`combat_reach`=0,`gender`=0 WHERE `modelid`=28946; -- Argent Squire
UPDATE `creature_model_info` SET `bounding_radius`=0.3519,`combat_reach`=1.725,`gender`=0 WHERE `modelid`=26078; -- Windle Sparkshine
DELETE FROM `creature_template_addon` WHERE `entry` IN (36213,5677,33238,36979,34286,34159);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(36213,0,0,257,0, NULL), -- Kor'kron Overseer
(5677,0,0,1,0, NULL), -- Summoned Succubus
(33238,0,0,1,0, NULL), -- Argent Squire
(36979,0,0,1,0, '69683 70050'), -- Lil'KT (Lil' K.T. Passive / [DND] Lich Pet)
(34286,0,0,1,0, NULL), -- Orbital Support
(34159,0,0,1,0, NULL); -- Ulduar Gauntlet Generator (small radius)
UPDATE `creature` SET `MovementType`=0,`spawndist`=0 WHERE `id` IN (34286,34159,33571); -- Orbital Support, Ulduar Gauntlet Generator, Ulduar Gauntlet Generator (small radius)
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~0x8 WHERE `unit_flags` & 0x8;
UPDATE `creature_template` SET `dynamicflags`=32 WHERE `entry` IN (27457,27481,26513,26516); -- Skirmisher Corpse, Westfall Infantry Corpse, Drakkari Shaman Corpse, Drakkari Warrior Corpse
DELETE FROM `creature_template_addon` WHERE `entry` IN (27457,27481);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(27457,0,0,1,0, '29266'), -- Skirmisher Corpse (Permanent Feign Death)
(27481,0,0,1,0, '29266'); -- Westfall Infantry Corpse (Permanent Feign Death)
UPDATE `creature_template_addon` SET `bytes1`=0,`bytes2`=1,`mount`=0,`emote`=0,`auras`='29266' WHERE `entry` IN (26513,26516); -- Drakkari Shaman Corpse (Permanent Feign Death)
UPDATE `creature` SET `MovementType`=0, `spawndist`=0 WHERE `id` IN (27457,27481,26513,26516);
DELETE FROM `creature_template_addon` WHERE `entry`=10578;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(10578,0,0,257,0, NULL); -- Bom'bay
UPDATE `creature` SET `MovementType`=1,`spawndist`=5 WHERE `id`=10578; -- rand movement
UPDATE `creature_template` SET `AIName`='SmartAI',`MovementType`=1 WHERE `entry`=10578;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=10578 AND `source_type`=0);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=1057800 AND `source_type`=9);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(10578, 0, 0, 0, 62, 0, 100, 0, 3062, 0, 0, 0, 80, 10578*100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bom''bay - On gossip select 0 run timed action list'),
(10578, 0, 1, 0, 62, 0, 100, 0, 3062, 1, 0, 0, 80, 10578*100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bom''bay - On gossip select 1 run timed action list'),
(10578, 0, 2, 0, 62, 0, 100, 0, 3062, 2, 0, 0, 80, 10578*100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bom''bay - On gossip select 2 run timed action list'),
(10578, 0, 3, 0, 62, 0, 100, 0, 3062, 3, 0, 0, 80, 10578*100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bom''bay - On gossip select 3 run timed action list'),
(10578, 0, 4, 0, 62, 0, 100, 0, 3062, 4, 0, 0, 80, 10578*100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bom''bay - On gossip select 4 run timed action list'),
(10578, 0, 5, 0, 62, 0, 100, 0, 3062, 5, 0, 0, 80, 10578*100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bom''bay - On gossip select 5 run timed action list'),
(10578, 0, 6, 0, 62, 0, 100, 0, 3062, 6, 0, 0, 80, 10578*100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bom''bay - On gossip select 6 run timed action list'),
(10578, 0, 7, 0, 1, 0, 100, 0, 1000, 1000, 20000, 40000, 10, 153, 15, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bom''bay - Every 20-40 seconds do random emote'),
(1057800, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bom''bay - Close gossip'),
(1057800, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 4, 6482, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bom''bay - Play a sound'),
(1057800, 9, 2, 0, 0, 0, 100, 0, 100, 100, 0, 0, 11, 17009, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bom''bay - Cast Voodoo');
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|128 WHERE `entry` IN (32892,32879); -- Fix Thorim triggers
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
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
DELETE FROM creature_ai_scripts WHERE creature_id=16518;
DELETE FROM creature_ai_scripts WHERE creature_id=30273;
DELETE FROM creature_ai_scripts WHERE creature_id=25841;
DELETE FROM creature_ai_scripts WHERE creature_id=26816;
DELETE FROM creature_ai_scripts WHERE creature_id=29129;
DELETE FROM creature_ai_scripts WHERE creature_id=30562;
DELETE FROM creature_ai_scripts WHERE creature_id=27237;
DELETE FROM creature_ai_scripts WHERE creature_id=19534;
DELETE FROM creature_ai_scripts WHERE creature_id=28417;
DELETE FROM creature_ai_scripts WHERE creature_id=732;
DELETE FROM creature_ai_scripts WHERE creature_id=16863;
DELETE FROM creature_ai_scripts WHERE creature_id=17320;
DELETE FROM creature_ai_scripts WHERE creature_id=34383;
DELETE FROM creature_ai_scripts WHERE creature_id=16929;
DELETE FROM creature_ai_scripts WHERE creature_id=9523;
DELETE FROM creature_ai_scripts WHERE creature_id=23859;
DELETE FROM creature_ai_scripts WHERE creature_id=24972;
DELETE FROM creature_ai_scripts WHERE creature_id=38391;
DELETE FROM creature_ai_scripts WHERE creature_id=27570;
DELETE FROM creature_ai_scripts WHERE creature_id=27225;
DELETE FROM creature_ai_scripts WHERE creature_id=22401;
DELETE FROM creature_ai_scripts WHERE creature_id=24938;
DELETE FROM creature_ai_scripts WHERE creature_id=19456;
DELETE FROM creature_ai_scripts WHERE creature_id=27234;
DELETE FROM creature_ai_scripts WHERE creature_id=6740;
DELETE FROM creature_ai_scripts WHERE creature_id=27220;
DELETE FROM creature_ai_scripts WHERE creature_id=28411;
DELETE FROM creature_ai_scripts WHERE creature_id=26820;
DELETE FROM creature_ai_scripts WHERE creature_id=9456;
DELETE FROM creature_ai_scripts WHERE creature_id=21117;
DELETE FROM creature_ai_scripts WHERE creature_id=26358;
DELETE FROM creature_ai_scripts WHERE creature_id=18103;
DELETE FROM creature_ai_scripts WHERE creature_id=22403;
DELETE FROM creature_ai_scripts WHERE creature_id=25665;
DELETE FROM creature_ai_scripts WHERE creature_id=23678;
DELETE FROM creature_ai_scripts WHERE creature_id=27236;
DELETE FROM creature_ai_scripts WHERE creature_id=21182;
DELETE FROM creature_ai_scripts WHERE creature_id=25321;
DELETE FROM creature_ai_scripts WHERE creature_id=27229;
DELETE FROM creature_ai_scripts WHERE creature_id=27853;
DELETE FROM creature_ai_scripts WHERE creature_id=27615;
DELETE FROM creature_ai_scripts WHERE creature_id=27224;
DELETE FROM creature_ai_scripts WHERE creature_id=26370;
DELETE FROM creature_ai_scripts WHERE creature_id=5111;
DELETE FROM creature_ai_scripts WHERE creature_id=17321;
DELETE FROM creature_ai_scripts WHERE creature_id=28585;
DELETE FROM creature_ai_scripts WHERE creature_id=6929;
DELETE FROM creature_ai_scripts WHERE creature_id=15760;
DELETE FROM creature_ai_scripts WHERE creature_id=9524;
DELETE FROM creature_ai_scripts WHERE creature_id=15668;
DELETE FROM creature_ai_scripts WHERE creature_id=27226;
DELETE FROM creature_ai_scripts WHERE creature_id=22402;
DELETE FROM creature_ai_scripts WHERE creature_id=25664;
DELETE FROM creature_ai_scripts WHERE creature_id=26349;
DELETE FROM creature_ai_scripts WHERE creature_id=27235;
DELETE FROM creature_ai_scripts WHERE creature_id=6741;
DELETE FROM creature_ai_scripts WHERE creature_id=25666;
DELETE FROM creature_ai_scripts WHERE creature_id=20561;
DELETE FROM creature_ai_scripts WHERE creature_id=24746;
DELETE FROM creature_ai_scripts WHERE creature_id=11814;
DELETE FROM creature_ai_scripts WHERE creature_id=25322;
DELETE FROM creature_ai_scripts WHERE creature_id=16978;
DELETE FROM creature_ai_scripts WHERE creature_id=6735;
DELETE FROM creature_ai_scripts WHERE creature_id=3393;
INSERT IGNORE INTO `waypoints` VALUES ('2664500', '1', '4153.73', '5344.67', '29.3407', 'Fizzcrank Engineering Crew wp 1');
INSERT IGNORE INTO `waypoints` VALUES ('2664500', '2', '4152.79', '5345.6', '29.6297', 'Fizzcrank Engineering Crew wp 1');
INSERT IGNORE INTO `waypoints` VALUES ('2664500', '3', '4157.79', '5346.6', '29.6297', 'Fizzcrank Engineering Crew wp 1');
INSERT IGNORE INTO `waypoints` VALUES ('2664500', '4', '4160.79', '5343.1', '30.3797', 'Fizzcrank Engineering Crew wp 1');
INSERT IGNORE INTO `waypoints` VALUES ('2664500', '5', '4158.29', '5341.35', '29.6297', 'Fizzcrank Engineering Crew wp 1');
INSERT IGNORE INTO `waypoints` VALUES ('2664500', '6', '4156.34', '5341.52', '29.4187', 'Fizzcrank Engineering Crew wp 1');
INSERT IGNORE INTO `waypoints` VALUES ('2664500', '7', '4158.54', '5340.62', '29.5669', 'Fizzcrank Engineering Crew wp 1');
INSERT IGNORE INTO `waypoints` VALUES ('2664500', '8', '4159.29', '5338.12', '29.0669', 'Fizzcrank Engineering Crew wp 1');
INSERT IGNORE INTO `waypoints` VALUES ('2664500', '9', '4157.04', '5336.12', '29.0669', 'Fizzcrank Engineering Crew wp 1');
INSERT IGNORE INTO `waypoints` VALUES ('2664500', '10', '4152.73', '5336.72', '28.7152', 'Fizzcrank Engineering Crew wp 1');
INSERT IGNORE INTO `waypoints` VALUES ('2664500', '11', '4152.22', '5335.37', '29.058', 'Fizzcrank Engineering Crew wp 1');
INSERT IGNORE INTO `waypoints` VALUES ('2664500', '12', '4150.22', '5335.87', '29.058', 'Fizzcrank Engineering Crew wp 1');
INSERT IGNORE INTO `waypoints` VALUES ('2664500', '13', '4148.97', '5337.87', '29.308', 'Fizzcrank Engineering Crew wp 1');
INSERT IGNORE INTO `waypoints` VALUES ('2664500', '14', '4149.72', '5343.52', '28.9009', 'Fizzcrank Engineering Crew wp 1');
INSERT IGNORE INTO `waypoints` VALUES ('2664500', '15', '4148.82', '5340.95', '29.4656', 'Fizzcrank Engineering Crew wp 1');
INSERT IGNORE INTO `waypoints` VALUES ('2664500', '16', '4149.32', '5336.7', '29.2156', 'Fizzcrank Engineering Crew wp 1');
INSERT IGNORE INTO `waypoints` VALUES ('2664500', '17', '4154.32', '5334.2', '29.2156', 'Fizzcrank Engineering Crew wp 1');
INSERT IGNORE INTO `waypoints` VALUES ('2664500', '18', '4158.57', '5336.7', '28.9656', 'Fizzcrank Engineering Crew wp 1');
INSERT IGNORE INTO `waypoints` VALUES ('2664500', '19', '4160.82', '5343.2', '30.2156', 'Fizzcrank Engineering Crew wp 1');
INSERT IGNORE INTO `waypoints` VALUES ('2664500', '20', '4158.07', '5347.2', '29.7156', 'Fizzcrank Engineering Crew wp 1');
INSERT IGNORE INTO `waypoints` VALUES ('2664500', '21', '4153.92', '5347.38', '29.0303', 'Fizzcrank Engineering Crew wp 1');
INSERT IGNORE INTO `waypoints` VALUES ('2664501', '1', '4147', '5327.73', '29.3272', 'Fizzcrank Engineering Crew wp 2');
INSERT IGNORE INTO `waypoints` VALUES ('2664501', '2', '4149.25', '5326.73', '29.0772', 'Fizzcrank Engineering Crew wp 2');
INSERT IGNORE INTO `waypoints` VALUES ('2664501', '3', '4151.5', '5329.48', '29.3272', 'Fizzcrank Engineering Crew wp 2');
INSERT IGNORE INTO `waypoints` VALUES ('2664501', '4', '4150.25', '5330.73', '29.3272', 'Fizzcrank Engineering Crew wp 2');
INSERT IGNORE INTO `waypoints` VALUES ('2664501', '5', '4148.83', '5329.6', '28.9719', 'Fizzcrank Engineering Crew wp 2');
INSERT IGNORE INTO `waypoints` VALUES ('2664501', '6', '4150.05', '5331.48', '29.3232', 'Fizzcrank Engineering Crew wp 2');
INSERT IGNORE INTO `waypoints` VALUES ('2664501', '7', '4152.05', '5333.48', '29.0732', 'Fizzcrank Engineering Crew wp 2');
INSERT IGNORE INTO `waypoints` VALUES ('2664501', '8', '4150.8', '5335.73', '29.0732', 'Fizzcrank Engineering Crew wp 2');
INSERT IGNORE INTO `waypoints` VALUES ('2664501', '9', '4147.55', '5336.48', '29.0732', 'Fizzcrank Engineering Crew wp 2');
INSERT IGNORE INTO `waypoints` VALUES ('2664501', '10', '4143.78', '5335.35', '28.6746', 'Fizzcrank Engineering Crew wp 2');
INSERT IGNORE INTO `waypoints` VALUES ('2664501', '11', '4146.73', '5336.82', '29.2076', 'Fizzcrank Engineering Crew wp 2');
INSERT IGNORE INTO `waypoints` VALUES ('2664501', '12', '4150.98', '5335.57', '29.2076', 'Fizzcrank Engineering Crew wp 2');
INSERT IGNORE INTO `waypoints` VALUES ('2664501', '13', '4153.23', '5331.32', '28.9576', 'Fizzcrank Engineering Crew wp 2');
INSERT IGNORE INTO `waypoints` VALUES ('2664501', '14', '4150.48', '5326.82', '28.7076', 'Fizzcrank Engineering Crew wp 2');
INSERT IGNORE INTO `waypoints` VALUES ('2664501', '15', '4144.73', '5324.57', '29.4576', 'Fizzcrank Engineering Crew wp 2');
INSERT IGNORE INTO `waypoints` VALUES ('2664501', '16', '4141.48', '5326.82', '29.2076', 'Fizzcrank Engineering Crew wp 2');
INSERT IGNORE INTO `waypoints` VALUES ('2664501', '17', '4139.69', '5329.79', '28.7406', 'Fizzcrank Engineering Crew wp 2');
INSERT IGNORE INTO `waypoints` VALUES ('2664501', '18', '4141.88', '5331.73', '28.6935', 'Fizzcrank Engineering Crew wp 2');
INSERT IGNORE INTO `waypoints` VALUES ('2664501', '19', '4141.27', '5330.55', '29.188', 'Fizzcrank Engineering Crew wp 2');
INSERT IGNORE INTO `waypoints` VALUES ('2664501', '20', '4141.77', '5328.3', '29.188', 'Fizzcrank Engineering Crew wp 2');
INSERT IGNORE INTO `waypoints` VALUES ('2664501', '21', '4142.77', '5326.05', '29.188', 'Fizzcrank Engineering Crew wp 2');
INSERT IGNORE INTO `waypoints` VALUES ('2664501', '22', '4145.52', '5326.05', '29.438', 'Fizzcrank Engineering Crew wp 2');
INSERT IGNORE INTO `waypoints` VALUES ('2664501', '23', '4146.77', '5328.05', '29.188', 'Fizzcrank Engineering Crew wp 2');
INSERT IGNORE INTO `waypoints` VALUES ('2664501', '24', '4145.67', '5329.37', '28.6824', 'Fizzcrank Engineering Crew wp 2');


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

UPDATE version SET `cache_id`= '604';
UPDATE version SET `db_version`= 'YTDB_0.14.3_R604_TC_R12758_TDBAI_335.0.3_RuDB_R40';
