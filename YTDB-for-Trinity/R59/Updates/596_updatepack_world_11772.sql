# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 595_FIX_11772 596_FIX_11772 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('596_FIX_11772');

# TC
DELETE FROM `creature` WHERE `id`=33998;
REPLACE INTO `gossip_scripts` VALUES ('5849', '0', '15', '23124', '3', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('5848', '0', '15', '23125', '3', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('50121', '0', '15', '39512', '3', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('50122', '0', '15', '39513', '3', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('50124', '0', '15', '65359', '3', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('50125', '0', '15', '65360', '3', '0', '0', '0', '0', '0');
UPDATE `quest_template` SET `ReqSpellCast1` = 31225 WHERE `entry` = 9685;

# WDB
DELETE FROM `npc_text` WHERE `ID` IN (8506,16418,16440,16441);
INSERT INTO `npc_text` SET `ID`=8506,`prob0`=1,`text0_0`='There are those who would say that the Argent Crusade is a thing of the past.  I am one of them, but not because the Scourge have fallen.$b$bNo... it is because of their stubborn ways.  They''ve become too much like the church that they seceded from: too rigid, too governed by honor and order.  This is what I''m trying to tell Barthalomew, anyhow.$b$bSure, it may sound a bit jingoistic, but it makes for a good debate.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=1,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=16418,`prob0`=1,`text0_0`='Here''s to you!  Here''s to me!  May we never disagree.$b$bBut if we do... BLAST YOU!  Here''s to me.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=16440,`prob0`=1,`text0_0`='Care to purchase some piratey items?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT INTO `npc_text` SET `ID`=16441,`prob0`=1,`text0_0`='Welcome to Booty Bay, $r.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=14838,`prob0`=1,`text0_0`='We''ll get through this, $N.  We''ll be wearing these beasts'' pelts when we''re done.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16420,`prob0`=1,`text0_0`='This must be the lifeboat that Captain Hecklebury Smotts spoke about.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16429,`prob0`=1,`text0_0`='The gorillas are fascinating creatures.  Better than night elves, who do foolish things, like... gambling away all their money and getting put on Sea Wolf MacKinley''s hit list.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16435,`prob0`=1,`text0_0`='Yarr.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16438,`prob0`=1,`text0_0`='<Bossy looks at you with large, liquid black eyes.>',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16439,`prob0`=1,`text0_0`='<Bossy lowers her head nobly, almost as if she understands the gravity and the meaning of your request.>',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16442,`prob0`=1,`text0_0`='This looks good, but I think it''ll look even better if we beat it up a little bit.  You know, to sell the illusion of a fight.  What do you think?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16455,`prob0`=1,`text0_0`='Aye, what need ye?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16457,`prob0`=1,`text0_0`='A barrel of grog.  Pirates love this stuff.$b$bThe cork does not seem to fit too tightly in the bunghole.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16458,`prob0`=1,`text0_0`='The grog leaks out of the barrel.  A lot of pirates are going to be very unhappy about this.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16460,`prob0`=1,`text0_0`='A barrel of gunpowder.  There is a pitcher of water sitting nearby.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16461,`prob0`=1,`text0_0`='The gunpowder is completely soaked.  Nobody''s going to be using this to fire cannons anytime soon.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16463,`prob0`=1,`text0_0`='An enormous crate, filled to the brim with cannonballs.  There is a can of cooking grease sitting innocently nearby.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16464,`prob0`=1,`text0_0`='You pour grease all over the heavy metal projectiles.  Firallon''s crew is certainly going to have a hard time loading these.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16465,`prob0`=1,`text0_0`='Ahoy!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=1,`text1_0`='Avast!',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=1,`text2_0`='Arr!',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=1,`text3_0`='Yarr!',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=1,`text4_0`='Blow me down!',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=1,`text5_0`='Gangway!',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16469,`prob0`=1,`text0_0`='These plans list the details on the upcoming attack!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16472,`prob0`=1,`text0_0`='Ahoy there!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16473,`prob0`=1,`text0_0`='What''re y'' looking at, $r?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16474,`prob0`=1,`text0_0`='',`text0_1`='Can I help you?',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16478,`prob0`=1,`text0_0`='<Baron Revilgaz''s private stock.  Do not touch under any circumstances!>',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16486,`prob0`=1,`text0_0`='You sure picked an interesting time to chat with Ol'' Kebok.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16500,`prob0`=1,`text0_0`='Back so soon?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16547,`prob0`=1,`text0_0`='',`text0_1`='Hello, $c.  Care to purchase something?',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16548,`prob0`=1,`text0_0`='',`text0_1`='The Gurubashi are dead, and Hakkar with them.  Most of my fellow Zandalar have returned to their homeland.$b$bIt falls on me, Chabal, and the Darkspears of Bambala to watch over Zul''Gurub now.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16549,`prob0`=1,`text0_0`='This ancient totem is fashioned into the shape of a bat.  It must be the totem that Maywiki spoke of.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16569,`prob0`=1,`text0_0`='I cannot help you with your training. Seek out a $c trainer.',`text0_1`='I cannot help you with your training. Seek out a $c trainer.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16588,`prob0`=1,`text0_0`='Looks like you brought the whole fleet with you, $N!  And a pack of angry Brashtide to boot!$b$bI hope you''re battle-ready, because these guys sure came packin''.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=3,`em0_2`=0,`em0_3`=1,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16589,`prob0`=1,`text0_0`='I''m getting too old for this!  There''s too many of them!$b$b<Fleet Master Seahorn pauses to catch his breath.>$b$bWhat am I saying?  There''s not enough of them!  HAVE AT YOU, YOU MANGY CURS!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16691,`prob0`=1,`text0_0`='',`text0_1`='How do you do, $N?',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16751,`prob0`=1,`text0_0`='Greetin''s, $N.  Are ya here ta be learnin'' of de Hidden Arts?',`text0_1`='Greetin''s, $N.  Are ya here ta be learnin'' of de Hidden Arts?',`lang0`=1,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16754,`prob0`=1,`text0_0`='Good day, $g brave: fair; $c.  How can I be of service?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16755,`prob0`=1,`text0_0`='Well, let''s see... I saw some drudges running away from that mine over there.  Said something about a spider.  New customers?  Well, there''s Jeralee, the lovely young gnome, who bought an axe twice her size last week.  Oh, and Magus Bisp came by asking for armor.  Not sure why he''d need plate armor...',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16756,`prob0`=1,`text0_0`='Can I help you?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16757,`prob0`=1,`text0_0`='What is this, an interrogation?  You''re not one of Fordring''s internal affairs guys, are you?$b$bWell, I''ve got nothing to hide.  Let me look over my records.  Last week I sold a ball gown to Lieutenant Myner, which struck me as odd.  What else... Magus Bisp bought several dozen leather jerkins, which he couldn''t give a reason for.  Oh, and Friar Burlingham came by to stock up on swimwear for his trip to Hardwrench Hideaway.  That''s about it.$b$bNow if you don''t mind, I have customers!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16758,`prob0`=1,`text0_0`='',`text0_1`='Hello there, $c!',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16759,`prob0`=1,`text0_0`='',`text0_1`='Well, let''s see.  I heard that Magus Bisp has been spending his time cooped up on top of his tower, working on some new spell, or something.$b$bI heard that Del Gahrron was planning on retiring and heading back to his farm.  He may have already left, in fact.$b$bOh, and I heard that there''s some $r $c running around town, asking people all sorts of annoying questions!$b$bJust playing with you, love.  Hope that information helped.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16760,`prob0`=1,`text0_0`='May the Light watch over you, child.  And how may I help you this fine day?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16761,`prob0`=1,`text0_0`='Stolen supplies?  Well, let me think about it...$b$bI know a certain priest named Daria who took all the extra wine after last week''s service, but didn''t throw it out as I asked.  I believe she''ll be apologizing soon, though.$b$b<Alphus winks at you.>$b$bI''ve also heard an abnormal number of confessions this week from one of the mages... what was his name?  Crisp?  Lisp?  Something along those lines.$b$bNow, be on your way.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16762,`prob0`=1,`text0_0`='W-what are you doing up here, $r?  Can''t you see you''re interfering with OFFICIAL ARGENT CRUSADE BUSINESS!?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16763,`prob0`=1,`text0_0`='<Grunt>$b$bYou need something, $r?',`text0_1`='<Grunt>$b$bYou need something, $r?',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=1,`text1_0`='What is it?  I''m a little busy here.',`text1_1`='What is it?  I''m a little busy here.',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=1,`text2_0`='I''m training right now.  Can this wait?',`text2_1`='I''m training right now.  Can this wait?',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=1,`text3_0`='Yes?',`text3_1`='Yes?',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16873,`prob0`=1,`text0_0`='The cauldron bubbles violently.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16874,`prob0`=1,`text0_0`='Nothing seems to happen.  The plague cauldron may be ruined, but it certainly doesn''t look any different.  What will you do?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16909,`prob0`=1,`text0_0`='Don''t let anybody tell you that the Scourge is defeated.  Look... do they not still roam the Plaguewood?  They cling to their corrupted land like a child''s blanket.$b$bI have no choice but to fight.  Until my last breath, I will fight them.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16947,`prob0`=1,`text0_0`='',`text0_1`='Why would he run off like that?!',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=1,`text1_0`='',`text1_1`='Promise me you''ll find him, $N.',`lang1`=0,`em1_0`=0,`em1_1`=1,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=1,`text2_0`='',`text2_1`='<Fiona is rather upset.  She doesn''t seem to be in the mood to talk.>',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16948,`prob0`=1,`text0_0`='',`text0_1`='Good to see you again, $N!',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=1,`text1_0`='',`text1_1`='Hey, $N!  You here to visit, or did you want to buy something?',`lang1`=0,`em1_0`=0,`em1_1`=1,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=1,`text2_0`='',`text2_1`='Well, well... look who''s here!',`lang2`=0,`em2_0`=0,`em2_1`=1,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16951,`prob0`=1,`text0_0`='Gidwin is nearby... I know it.  Paladin''s intuition.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16956,`prob0`=1,`text0_0`='Oh, ahh... hello there, good traveler!  What can this fine goblin do for you today?$b$bI''ll assure you that I''m here in Light''s Hope Chapel solely due to my hatred of the Scourge which I share with these Argent Crusaders, and definitely not because I''m running away from any sort of embarassing zeppelin crash!$b$bI''ll stop talking now, before I implicate myself any further!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=1,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16957,`prob0`=1,`text0_0`='You present an interesting option, $r.  I''ll take that into consideration.$b$bAlright, I''ve considered it.  Sure, I''ll join you.  I''ve probably stayed in Light''s Hope Chapel for too long anyhow.  Like a gnome at a urinal, I''m gonna have to stay on my toes!  Heh heh!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=1,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16964,`prob0`=1,`text0_0`='Greetings, $N.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16966,`prob0`=1,`text0_0`='I don''t get many visitors this deep in the Plaguewood.  Abominations, mostly.$b$bCan I help you with something?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=2,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16969,`prob0`=1,`text0_0`='It looks like your predecessor had time to set the flares up, but they have not yet been launched.$b$bThis is your time to shine, $N.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16970,`prob0`=1,`text0_0`='The flare launcher has been emptied.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16979,`prob0`=1,`text0_0`='',`text0_1`='Even in these bright days after the reign of Kel''thuzad, after the fall of the Lich King: the Brotherhood lives on.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=273,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16988,`prob0`=100,`text0_0`='Poor dear, you must be exhausted.$B$BThere''s food and drink, if you like, and it''s safe to rest here.',`text0_1`='Poor dear, you must be exhausted.$B$BThere''s food and drink, if you like, and it''s safe to rest here.',`lang0`=7,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17073,`prob0`=1,`text0_0`='While it is clearly quite old, this statue does not appear to have crumbled at all over the centuries.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17074,`prob0`=1,`text0_0`='Judging by its color, this must be The Warden.$b$bYou see a small indentation where your pawn might fit.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17075,`prob0`=1,`text0_0`='This red statue looks a lot like the Sentinel''s pawn that you hold.$b$bThe statue has a small indentation that matches the size of your pawn.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17078,`prob0`=1,`text0_0`='',`text0_1`='Greetings.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17080,`prob0`=1,`text0_0`='Hope you brought your mining pick, pilgrim.  No place better than here for digging up ancient treasure.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17115,`prob0`=1,`text0_0`='An inconspicuous marble slab.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17116,`prob0`=1,`text0_0`='An inconspicuous stone slab.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17172,`prob0`=1,`text0_0`='We fish, we sleep, and we explode things.  What could be better than that?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17187,`prob0`=1,`text0_0`='I''m afraid I cannot help you, $r, but I am sure Khaelyn Steelwing can.',`text0_1`='I''m afraid I cannot help you, $r, but I am sure Khaelyn Steelwing can.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17267,`prob0`=1,`text0_0`='I can''t believe that we''re doing this.  I know that Calcinder''s presence threatens us all, but really?  Doesn''t this seem like the domain of the Earthen Ring, or something?$b$bWhy''s the Thorium Brotherhood gotta come save the day all the time?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=1,`em0_4`=0,`em0_5`=273,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17269,`prob0`=1,`text0_0`='We''ve made it this far into the Slag Pit, $N.  Now it''s time to finish the job.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17270,`prob0`=1,`text0_0`='You''re welcome among us anytime, $N.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17486,`prob0`=1,`text0_0`='I won''t let those damned orcs invade Redridge again!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17598,`prob0`=1,`text0_0`='I''ve been sent here by my superiors to investigate some strange occurrences here in Booty Bay.  This goblin town withstood a tidal wave remarkably well, especially given the reputation of goblin engineering.  I''m surprised the place didn''t explode on impact.$b$bI suspect there may be magical forces at play here.  There may be more to Booty Bay than you''d expect, $c...',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17599,`prob0`=1,`text0_0`='Are you ready to leave Stranglethorn Vale?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17611,`prob0`=1,`text0_0`='The sacrifices of my Argent Dawn brothers must never be forgotten. They believed in the Dawn, though none lived to see the return of the Light to these lands.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17726,`prob0`=1,`text0_0`='Welcome to Fuselight-by-the-Sea, a picturesque seaside town founded by explosives enthusiasts for explosives enthusiasts.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17855,`prob0`=1,`text0_0`='',`text0_1`='Welcome to the Menders'' Stead, $c.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17856,`prob0`=1,`text0_0`='What''re ye lookin'' at, ye tuskarr-faced bung?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=1,`text1_0`='Yarr!',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=1,`text2_0`='Scuttle me skivvies!',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17857,`prob0`=1,`text0_0`='The tale of ol'' Duncan is a sad one, I''m afraid.  I used to be captain of me own ship, ye know?$b$bOne more demotion and I''ll be a swabbie again.  I don''t think I could take the humiliation.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;

# NeatElves
UPDATE `quest_template` SET `RequestItemsText` = 'Did you bring me the components I require, $N?' WHERE `entry` =8708;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` in (9122,9121,9199,9200,9201,9202,9203,9204,9205) AND `type` =14;
UPDATE `quest_template` SET `PrevQuestId` = '7810' WHERE `entry` =7838;
DELETE FROM `gameobject_loot_template` WHERE `item` = 4500;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =13881 AND `item` =3864;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =13881 AND `item` =7909;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =13881 AND `item` =7910;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =13881 AND `item` =12361;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =8366 AND `item` =1529;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =8366 AND `item` =1705;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =8366 AND `item` =3864;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =8366 AND `item` =7909;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =179697 AND `item` =1710;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =179697 AND `item` =3827;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =179697 AND `item` =3928;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =179697 AND `item` =6149;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '10',`groupid` = '2' WHERE `entry` =179697 AND `item` =18709;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '10',`groupid` = '2' WHERE `entry` =179697 AND `item` =18710;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '10',`groupid` = '2' WHERE `entry` =179697 AND `item` =18711;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '10',`groupid` = '2' WHERE `entry` =179697 AND `item` =18712;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1',`groupid` = '1' WHERE `entry` =179697 AND `item` =3914;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '2',`groupid` = '1' WHERE `entry` =179697 AND `item` =7909;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '2',`groupid` = '1' WHERE `entry` =179697 AND `item` =7910;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `entry` =179697 AND `item` =3395;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `entry` =179697 AND `item` =12684;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '10' WHERE `entry` =179697 AND `item` =8106;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '10' WHERE `entry` =179697 AND `item` =8246;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '10' WHERE `entry` =179697 AND `item` =8251;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '10' WHERE `entry` =179697 AND `item` =8269;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '2' WHERE `entry` =179697 AND `item` =12693;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0.5' WHERE `entry` =179697 AND `item` =7517;

# Fix
DELETE FROM `gameobject` WHERE `id`=188458;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(5072, 188458, 571, 1, 1, 4239.79, -2055.94, 244.035, 1.48353, 0, 0, 0, 1, 300, 255, 1);

# NeatElves
UPDATE `gameobject_loot_template` SET `groupid` = '1' WHERE `entry` =179697 AND `item` =1710;
UPDATE `gameobject_loot_template` SET `groupid` = '1' WHERE `entry` =179697 AND `item` =3928;
UPDATE `gameobject_loot_template` SET `groupid` = '2' WHERE `entry` =179697 AND `item` =3827;
UPDATE `gameobject_loot_template` SET `groupid` = '2' WHERE `entry` =179697 AND `item` =6149;
DELETE FROM `gameobject_loot_template` WHERE `entry` =179697 AND `item` =18710;
DELETE FROM `gameobject_loot_template` WHERE `entry` =179697 AND `item` =18711;
DELETE FROM `gameobject_loot_template` WHERE `entry` =179697 AND `item` =18712;
UPDATE `gameobject_loot_template` SET `groupid` = '0',`mincountOrRef` = '-18709' WHERE `entry` =179697 AND `item` =18709;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 179697 AND `item` = 7910;
UPDATE `gameobject_loot_template` SET `groupid` = '0',`mincountOrRef` = '-7909' WHERE `entry` =179697 AND `item` =7909;
UPDATE `gameobject_loot_template` SET `groupid` = '0',`mincountOrRef` = '-3914' WHERE `entry` =179697 AND `item` =3914;
DELETE FROM `item_loot_template` WHERE `entry` = 20603 AND `item` = 7067;
DELETE FROM `item_loot_template` WHERE `entry` = 20603 AND `item` = 7068;
DELETE FROM `item_loot_template` WHERE `entry` = 20603 AND `item` = 7069;
DELETE FROM `item_loot_template` WHERE `entry` = 20603 AND `item` = 7070;
UPDATE `achievement_reward` SET `sender` = 22914,`subject` = 'Thank you!',`text` = 'Dear $N.\r\n\r\nThank you for taking me out during Children''s Week. Lady Liadrin, the leader of the Blood Knights, has asked that I be released to her custody for training in Silvermoon City!\r\n\r\nI just wanted to thank you for taking me to see my friend, Hch''uu, as well as the Dark Portal, the Throne of the Elements and the Caverns of Time. I like my toy dragon very much!\r\n\r\nI''m sure that you''re taking good care of my pet. Please tell him that I miss him!\r\n\r\nSincerely,\r\nSalandria.' WHERE `entry` = 1793;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(23077, 11737, 1, 1, 1, 0, 0, -7088.35, 1419.41, 3.33002, 3.14384, 600, 7, 0, 3758, 0, 0, 1);
replace into spell_target_position values 
(17863, 289, 250.0696, 0.3921, 84.8408, 3.149),
(17939, 289, 181.4220, -91.9481, 84.8410, 1.608),
(17943, 289, 95.1547, -1.8173, 85.2289, 0.043),
(17944, 289, 250.0696, 0.3921, 72.6722, 3.149),
(17946, 289, 181.4220, -91.9481, 70.7734, 1.608),
(17948, 289, 106.1541, -1.8994, 75.3663, 0.043);
UPDATE `creature_template_addon` SET `bytes1` = '0',`auras` = '29266 0 42726 0' WHERE `entry` =24441;
UPDATE `creature_template_addon` SET `bytes1` = '0',`auras` = '29266 0 42726 0' WHERE `entry` =24442;
UPDATE `creature_template_addon` SET `bytes1` = '0',`auras` = '29266 0 42726 0' WHERE `entry` =24443;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 6659;
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('6659', '16', '201', '0'),('6659', '5', '58818', '0');
UPDATE `achievement_criteria_data` SET `type` = '5',`value1` = '58818' WHERE `criteria_id` =10391 AND `type` =11;
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES (10391, 16, 201, 0);
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('4112', '15', '3', '0');
DELETE FROM `creature_involvedrelation` WHERE `id` = 18180 AND `quest` = 12688;
UPDATE `quest_template` SET `SpecialFlags` = '2' WHERE `entry` =12688;
INSERT IGNORE INTO gameobject VALUES (5678,182071,571,1,1,5921.53,5371.78,-96.3388,1.51844,0.0,0.0,0.0,1.0,-60,0,1);
INSERT IGNORE INTO gameobject VALUES (5679,182071,571,1,1,5919.42,5366.92,-96.0911,1.309,0.0,0.0,0.0,1.0,-60,0,1);
INSERT IGNORE INTO gameobject VALUES (5681,182071,571,1,1,5920.26,5372.41,-98.8583,-0.663223,0.0,0.0,0.0,1.0,-60,0,1);
INSERT IGNORE INTO gameobject VALUES (5682,182071,571,1,1,5888.68,5377.42,-92.6172,2.58308,0.0,0.0,0.0,1.0,-60,0,1);
INSERT IGNORE INTO gameobject VALUES (5683,182071,571,1,1,5886.48,5379.05,-92.9799,0.855211,0.0,0.0,0.0,1.0,-60,0,1);
INSERT IGNORE INTO gameobject VALUES (5685,182071,571,1,1,5887.2,5381.18,-93.5001,0.122173,0.0,0.0,0.0,1.0,-60,0,1);
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '2' WHERE `entry` =13891 AND `item` =8292;
DELETE FROM `item_loot_template` WHERE `entry` = 13891 AND `item` in (12364,12361,12799,12800);
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '100',`mincountOrRef` = '-7910' WHERE `entry` =13891 AND `item` =7910;

# FIX
UPDATE `creature_template` SET `dmg_multiplier` = 127.8 WHERE `entry` = 16061;
UPDATE `creature_template` SET `faction_A` = 1665, `faction_H` = 1665 WHERE `entry` IN (36789, 38174);

# KiriX
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '17612';
DELETE FROM `creature_ai_scripts` WHERE (`id`='17612050');
INSERT INTO `creature_ai_scripts` VALUES ('17612050', '17612', '6', '0', '100', '0', '0', '0', '0', '0', '11', '30790', '6', '7', '0', '0', '0', '0', '0', '0', '0', '0', 'ytbd_q9595');

# FIX
DELETE FROM `creature_questrelation` WHERE `quest` = 10960;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 10960;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 10960;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (22817, 10960);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 22817;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 10960;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 10960;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (17076, 10960);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=17076;
UPDATE `item_template` SET `stat_type1` = 5, `stat_value1` = 40, `spellid_1` = 0, `spelltrigger_1` = 0, `spelltrigger_2` = 0 WHERE `entry` = 35581;

# NeatElves
DELETE FROM `creature_loot_template` WHERE `entry` = 9622 AND `item` = 13757;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 11947 AND `item` = 13446;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 11949 AND `item` = 13446;
DELETE FROM `item_loot_template` WHERE `entry` = 20602 AND `item` = 7076;
DELETE FROM `item_loot_template` WHERE `entry` = 20602 AND `item` = 7078;
DELETE FROM `item_loot_template` WHERE `entry` = 20602 AND `item` = 7080;
DELETE FROM `item_loot_template` WHERE `entry` = 20602 AND `item` = 7082;
UPDATE `creature` SET `spawndist` = '0',`MovementType` = '0' WHERE `guid` =98108;
UPDATE `creature_template` SET `faction_A` = '35',`faction_H` = '35' WHERE `entry` =33738;
DELETE FROM `creature_loot_template` WHERE `item` = 32726;

# WDB
INSERT IGNORE INTO `npc_text` SET `ID`=17950,`prob0`=1,`text0_0`='Ye don'' want ta'' be goin up dis'' way, mon.  Da spirits be restless.
\

\
Mebbe if ye'' know a ting or two about ancient artifacts, ye can fin'' a way to put dem to rest.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17952,`prob0`=1,`text0_0`='Though this artifact seems to be in pristine condition, you sense nothing particularly special about it.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=1,`text1_0`='This artifact appears to be intact, though it is so thoroughly coated in dirt and mud that it is difficult to tell for sure.  There does not seem to be anything inherently magical about it.',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=1,`text2_0`='This artifact has weathered many storms, and shows significant signs of deterioration.  It is doubtful that any powers it once held remain.',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=1,`text3_0`='Several leaves and branches cling to this object, indicating that it may have been used as part of a nest for some creature.  There is otherwise nothing of note.',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=1,`text4_0`='Several strange carvings adorn this object, perhaps made by the trolls in an attempt to decipher its origins.  They did not seem to meet with much success, as the object remains inert.',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=1,`text5_0`='Mysterious runes adorn this artifact, though they appear to be unpowered at this time.',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=1,`text6_0`='This object is of low quality and is likely one of many fake artifacts that have been flooding the black market.',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=1,`text7_0`='Several spots of dried blood can be seen on this object, likely a result of the struggle to obtain the artifact by the trolls.  The object is quite plain, however, and may not have been worth the struggle.',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17999,`prob0`=1,`text0_0`='',`text0_1`='Are you here to aid da Darkspear, $c?',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18024,`prob0`=1,`text0_0`='I''m here to make sure the job gets done on time.$b$bBooty Bay is still trying to recover from the tidal wave!$b$bThe last thing we need is a horde of rampaging trolls, zombie trolls, poisonous serpents or crazed panthers attacking us.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=1,`text1_0`='I''m here to represent Booty Bay''s interest in this expedition.$b$bIf things go bad, Booty Bay is in trouble.$b$bWe are still recovering from the events of the cataclysm.',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18038,`prob0`=1,`text0_0`='<The troll sings to himself as he observes the carnage around him.>',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;

# Conditions
REPLACE INTO `conditions` VALUES ('10', '13755', '13755', '0', '12', '64', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '13755', '13756', '0', '12', '65', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '5', '13754', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '6', '13754', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '7', '13754', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '8', '13754', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '5', '13422', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '6', '13422', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '7', '13422', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '8', '13422', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '5', '7973', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '6', '7973', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '7', '7973', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '8', '7973', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '5', '4603', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '5', '13874', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '5', '13888', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '5', '13907', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '5', '13908', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '5', '13909', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '5', '13910', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '5', '13911', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '5', '13912', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '5', '13913', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '5', '13914', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '5', '13915', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '5', '13916', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '5', '13917', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '5', '13918', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '6', '4603', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '6', '13874', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '6', '13888', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '6', '13907', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '6', '13908', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '6', '13909', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '6', '13910', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '6', '13911', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '6', '13912', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '6', '13913', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '6', '13914', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '6', '13915', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '6', '13916', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '6', '13917', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '6', '13918', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '7', '4603', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '7', '13874', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '7', '13888', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '7', '13907', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '7', '13908', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '7', '13909', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '7', '13910', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '7', '13911', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '7', '13912', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '7', '13913', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '7', '13914', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '7', '13915', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '7', '13916', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '7', '13917', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '7', '13918', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '8', '4603', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '8', '13874', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '8', '13888', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '8', '13907', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '8', '13908', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '8', '13909', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '8', '13910', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '8', '13911', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '8', '13912', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '8', '13913', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '8', '13914', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '8', '13915', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '8', '13916', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '8', '13917', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '8', '13918', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '1', '6359', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '1', '6362', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '1', '13422', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '1', '13754', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '2', '6359', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '2', '6362', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '2', '7973', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '2', '13422', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '2', '13754', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '3', '6359', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '3', '6362', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '3', '7973', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '3', '13422', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '3', '13754', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '4', '6359', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '4', '6362', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '4', '7973', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '4', '13422', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '4', '13754', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '1', '4603', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '2', '4603', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '3', '4603', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '4', '4603', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '1', '13874', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '1', '13875', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '1', '13876', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '1', '13877', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '1', '13878', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '1', '13879', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '1', '13880', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '2', '13874', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '2', '13875', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '2', '13876', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '2', '13877', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '2', '13878', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '2', '13879', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '2', '13880', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '3', '13874', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '3', '13875', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '3', '13876', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '3', '13877', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '3', '13878', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '3', '13879', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '3', '13880', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '4', '13874', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '4', '13875', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '4', '13876', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '4', '13877', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '4', '13878', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '4', '13879', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '4', '13880', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '9', '13759', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '10', '13759', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '12', '13759', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '10', '13760', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '11', '13760', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '12', '13760', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '11', '13757', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '9', '13758', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '10', '13758', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '11', '13758', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '12', '13758', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '9', '8365', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '9', '6358', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '9', '3928', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '9', '6149', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '9', '13881', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '9', '13882', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '9', '13883', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '9', '13884', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '9', '13885', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '9', '13886', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '9', '13887', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '10', '8365', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '10', '6358', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '10', '3928', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '10', '6149', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '10', '13881', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '10', '13882', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '10', '13883', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '10', '13884', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '10', '13885', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '10', '13886', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '10', '13887', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '11', '8365', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '11', '6358', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '11', '3928', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '11', '6149', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '11', '13881', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '11', '13882', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '11', '13883', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '11', '13884', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '11', '13885', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '11', '13886', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '11', '13887', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '12', '8365', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '12', '6358', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '12', '3928', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '12', '6149', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '12', '13881', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '12', '13882', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '12', '13883', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '12', '13884', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '12', '13885', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '12', '13886', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '12', '13887', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '14', '13759', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '16', '13759', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '14', '13760', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '16', '13760', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '15', '13760', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '13', '13759', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '13', '13757', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '14', '13757', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '15', '13757', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '16', '13757', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '13', '13890', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '14', '13890', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '15', '13890', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '16', '13890', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '13', '13758', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '13', '13443', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '13', '13446', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '13', '13889', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '13', '13891', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '13', '13901', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '13', '13902', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '13', '13903', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '13', '13904', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '13', '13905', '0', '12', '66', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '14', '13758', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '14', '13443', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '14', '13446', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '14', '13889', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '14', '13891', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '14', '13901', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '14', '13902', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '14', '13903', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '14', '13904', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '14', '13905', '0', '12', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '15', '13758', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '15', '13443', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '15', '13446', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '15', '13889', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '15', '13891', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '15', '13901', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '15', '13902', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '15', '13903', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '15', '13904', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '15', '13905', '0', '12', '68', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '16', '13758', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '16', '13443', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '16', '13446', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '16', '13889', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '16', '13891', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '16', '13901', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '16', '13902', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '16', '13903', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '16', '13904', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('10', '16', '13905', '0', '12', '69', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '42454', '0', '18', '1', '4344', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '42454', '0', '18', '1', '4345', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '52369', '0', '18', '1', '28789', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '52371', '0', '18', '1', '28789', '0', '0', '', null);
REPLACE INTO `fishing_loot_template` VALUES ('297', '13755', '10', '1', '0', '-13755', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1121', '13755', '10', '1', '0', '-13755', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1117', '13755', '10', '1', '0', '-13755', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1116', '13755', '10', '1', '0', '-13755', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1108', '13755', '10', '1', '0', '-13755', '1');
REPLACE INTO `fishing_loot_template` VALUES ('440', '13755', '10', '1', '0', '-13755', '1');
REPLACE INTO `fishing_loot_template` VALUES ('307', '13755', '10', '1', '0', '-13755', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1120', '13755', '10', '1', '0', '-13755', '1');
REPLACE INTO `fishing_loot_template` VALUES ('16', '13755', '10', '1', '0', '-13755', '1');
REPLACE INTO `fishing_loot_template` VALUES ('3317', '13755', '10', '1', '0', '-13755', '1');
REPLACE INTO `fishing_loot_template` VALUES ('3140', '7', '100', '1', '0', '-7', '1');
REPLACE INTO `fishing_loot_template` VALUES ('3140', '5', '100', '1', '0', '-5', '1');
REPLACE INTO `fishing_loot_template` VALUES ('3140', '6', '100', '1', '0', '-6', '1');
REPLACE INTO `fishing_loot_template` VALUES ('16', '1', '100', '1', '0', '-1', '1');
REPLACE INTO `fishing_loot_template` VALUES ('16', '2', '100', '1', '0', '-2', '1');
REPLACE INTO `fishing_loot_template` VALUES ('16', '3', '100', '1', '0', '-3', '1');
REPLACE INTO `fishing_loot_template` VALUES ('16', '4', '100', '1', '0', '-4', '1');
REPLACE INTO `fishing_loot_template` VALUES ('3317', '1', '100', '1', '0', '-1', '1');
REPLACE INTO `fishing_loot_template` VALUES ('3317', '2', '100', '1', '0', '-2', '1');
REPLACE INTO `fishing_loot_template` VALUES ('3317', '3', '100', '1', '0', '-3', '1');
REPLACE INTO `fishing_loot_template` VALUES ('3317', '4', '100', '1', '0', '-4', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1120', '1', '100', '1', '0', '-1', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1120', '2', '100', '1', '0', '-2', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1120', '3', '100', '1', '0', '-3', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1120', '4', '100', '1', '0', '-4', '1');
REPLACE INTO `fishing_loot_template` VALUES ('297', '1', '100', '1', '0', '-1', '1');
REPLACE INTO `fishing_loot_template` VALUES ('297', '2', '100', '1', '0', '-2', '1');
REPLACE INTO `fishing_loot_template` VALUES ('297', '3', '100', '1', '0', '-3', '1');
REPLACE INTO `fishing_loot_template` VALUES ('297', '4', '100', '1', '0', '-4', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1121', '1', '100', '1', '0', '-1', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1121', '2', '100', '1', '0', '-2', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1121', '3', '100', '1', '0', '-3', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1121', '4', '100', '1', '0', '-4', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1117', '1', '100', '1', '0', '-1', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1117', '2', '100', '1', '0', '-2', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1117', '3', '100', '1', '0', '-3', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1117', '4', '100', '1', '0', '-4', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1116', '1', '100', '1', '0', '-1', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1116', '2', '100', '1', '0', '-2', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1116', '3', '100', '1', '0', '-3', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1116', '4', '100', '1', '0', '-4', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1108', '1', '100', '1', '0', '-1', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1108', '2', '100', '1', '0', '-2', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1108', '3', '100', '1', '0', '-3', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1108', '4', '100', '1', '0', '-4', '1');
REPLACE INTO `fishing_loot_template` VALUES ('440', '1', '100', '1', '0', '-1', '1');
REPLACE INTO `fishing_loot_template` VALUES ('440', '2', '100', '1', '0', '-2', '1');
REPLACE INTO `fishing_loot_template` VALUES ('440', '3', '100', '1', '0', '-3', '1');
REPLACE INTO `fishing_loot_template` VALUES ('440', '4', '100', '1', '0', '-4', '1');
REPLACE INTO `fishing_loot_template` VALUES ('307', '1', '100', '1', '0', '-1', '1');
REPLACE INTO `fishing_loot_template` VALUES ('307', '2', '100', '1', '0', '-2', '1');
REPLACE INTO `fishing_loot_template` VALUES ('307', '3', '100', '1', '0', '-3', '1');
REPLACE INTO `fishing_loot_template` VALUES ('307', '4', '100', '1', '0', '-4', '1');
REPLACE INTO `fishing_loot_template` VALUES ('3140', '8', '100', '1', '0', '-8', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1222', '5', '100', '1', '0', '-5', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1222', '6', '100', '1', '0', '-6', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1222', '7', '100', '1', '0', '-7', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1222', '8', '100', '1', '0', '-8', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1227', '5', '100', '1', '0', '-5', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1227', '6', '100', '1', '0', '-6', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1227', '7', '100', '1', '0', '-7', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1227', '8', '100', '1', '0', '-8', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1477', '9', '100', '1', '0', '-9', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1477', '10', '100', '1', '0', '-10', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1477', '11', '100', '1', '0', '-11', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1477', '12', '100', '1', '0', '-12', '1');
REPLACE INTO `fishing_loot_template` VALUES ('493', '9', '100', '1', '0', '-9', '1');
REPLACE INTO `fishing_loot_template` VALUES ('493', '10', '100', '1', '0', '-10', '1');
REPLACE INTO `fishing_loot_template` VALUES ('493', '11', '100', '1', '0', '-11', '1');
REPLACE INTO `fishing_loot_template` VALUES ('493', '12', '100', '1', '0', '-12', '1');
REPLACE INTO `fishing_loot_template` VALUES ('2100', '9', '100', '1', '0', '-9', '1');
REPLACE INTO `fishing_loot_template` VALUES ('2100', '10', '100', '1', '0', '-10', '1');
REPLACE INTO `fishing_loot_template` VALUES ('2100', '11', '100', '1', '0', '-11', '1');
REPLACE INTO `fishing_loot_template` VALUES ('2100', '12', '100', '1', '0', '-12', '1');
REPLACE INTO `fishing_loot_template` VALUES ('490', '9', '100', '1', '0', '-9', '1');
REPLACE INTO `fishing_loot_template` VALUES ('490', '10', '100', '1', '0', '-10', '1');
REPLACE INTO `fishing_loot_template` VALUES ('490', '11', '100', '1', '0', '-11', '1');
REPLACE INTO `fishing_loot_template` VALUES ('490', '12', '100', '1', '0', '-12', '1');
REPLACE INTO `fishing_loot_template` VALUES ('361', '9', '100', '1', '0', '-9', '1');
REPLACE INTO `fishing_loot_template` VALUES ('361', '10', '100', '1', '0', '-10', '1');
REPLACE INTO `fishing_loot_template` VALUES ('361', '11', '100', '1', '0', '-11', '1');
REPLACE INTO `fishing_loot_template` VALUES ('361', '12', '100', '1', '0', '-12', '1');
REPLACE INTO `fishing_loot_template` VALUES ('139', '9', '100', '1', '0', '-9', '1');
REPLACE INTO `fishing_loot_template` VALUES ('139', '10', '100', '1', '0', '-10', '1');
REPLACE INTO `fishing_loot_template` VALUES ('139', '11', '100', '1', '0', '-11', '1');
REPLACE INTO `fishing_loot_template` VALUES ('139', '12', '100', '1', '0', '-12', '1');
REPLACE INTO `fishing_loot_template` VALUES ('357', '9', '100', '1', '0', '-9', '1');
REPLACE INTO `fishing_loot_template` VALUES ('357', '10', '100', '1', '0', '-10', '1');
REPLACE INTO `fishing_loot_template` VALUES ('357', '11', '100', '1', '0', '-11', '1');
REPLACE INTO `fishing_loot_template` VALUES ('357', '12', '100', '1', '0', '-12', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1234', '9', '100', '1', '0', '-9', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1234', '10', '100', '1', '0', '-10', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1234', '11', '100', '1', '0', '-11', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1234', '12', '100', '1', '0', '-12', '1');
REPLACE INTO `fishing_loot_template` VALUES ('878', '9', '100', '1', '0', '-9', '1');
REPLACE INTO `fishing_loot_template` VALUES ('878', '10', '100', '1', '0', '-10', '1');
REPLACE INTO `fishing_loot_template` VALUES ('878', '11', '100', '1', '0', '-11', '1');
REPLACE INTO `fishing_loot_template` VALUES ('878', '12', '100', '1', '0', '-12', '1');
REPLACE INTO `fishing_loot_template` VALUES ('2521', '9', '100', '1', '0', '-9', '1');
REPLACE INTO `fishing_loot_template` VALUES ('28', '9', '100', '1', '0', '-9', '1');
REPLACE INTO `fishing_loot_template` VALUES ('28', '10', '100', '1', '0', '-10', '1');
REPLACE INTO `fishing_loot_template` VALUES ('28', '11', '100', '1', '0', '-11', '1');
REPLACE INTO `fishing_loot_template` VALUES ('28', '12', '100', '1', '0', '-12', '1');
REPLACE INTO `fishing_loot_template` VALUES ('47', '9', '100', '1', '0', '-9', '1');
REPLACE INTO `fishing_loot_template` VALUES ('47', '10', '100', '1', '0', '-10', '1');
REPLACE INTO `fishing_loot_template` VALUES ('47', '11', '100', '1', '0', '-11', '1');
REPLACE INTO `fishing_loot_template` VALUES ('47', '12', '100', '1', '0', '-12', '1');
REPLACE INTO `fishing_loot_template` VALUES ('2521', '10', '100', '1', '0', '-10', '1');
REPLACE INTO `fishing_loot_template` VALUES ('2521', '11', '100', '1', '0', '-11', '1');
REPLACE INTO `fishing_loot_template` VALUES ('2521', '12', '100', '1', '0', '-12', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1377', '13', '100', '1', '0', '-13', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1377', '14', '100', '1', '0', '-14', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1377', '15', '100', '1', '0', '-15', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1377', '16', '100', '1', '0', '-16', '1');
REPLACE INTO `fishing_loot_template` VALUES ('2057', '13', '100', '1', '0', '-13', '1');
REPLACE INTO `fishing_loot_template` VALUES ('2057', '14', '100', '1', '0', '-14', '1');
REPLACE INTO `fishing_loot_template` VALUES ('2057', '15', '100', '1', '0', '-15', '1');
REPLACE INTO `fishing_loot_template` VALUES ('2057', '16', '100', '1', '0', '-16', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1977', '13', '100', '1', '0', '-13', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1977', '14', '100', '1', '0', '-14', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1977', '15', '100', '1', '0', '-15', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1977', '16', '100', '1', '0', '-16', '1');
REPLACE INTO `fishing_loot_template` VALUES ('618', '13', '100', '1', '0', '-13', '1');
REPLACE INTO `fishing_loot_template` VALUES ('618', '14', '100', '1', '0', '-14', '1');
REPLACE INTO `fishing_loot_template` VALUES ('618', '15', '100', '1', '0', '-15', '1');
REPLACE INTO `fishing_loot_template` VALUES ('618', '16', '100', '1', '0', '-16', '1');
REPLACE INTO `fishing_loot_template` VALUES ('2017', '13', '100', '1', '0', '-13', '1');
REPLACE INTO `fishing_loot_template` VALUES ('2017', '14', '100', '1', '0', '-14', '1');
REPLACE INTO `fishing_loot_template` VALUES ('2017', '15', '100', '1', '0', '-15', '1');
REPLACE INTO `fishing_loot_template` VALUES ('2017', '16', '100', '1', '0', '-16', '1');
REPLACE INTO `fishing_loot_template` VALUES ('249', '13', '100', '1', '0', '-13', '1');
REPLACE INTO `fishing_loot_template` VALUES ('249', '14', '100', '1', '0', '-14', '1');
REPLACE INTO `fishing_loot_template` VALUES ('249', '15', '100', '1', '0', '-15', '1');
REPLACE INTO `fishing_loot_template` VALUES ('249', '16', '100', '1', '0', '-16', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1112', '13', '100', '1', '0', '-13', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1112', '14', '100', '1', '0', '-14', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1112', '15', '100', '1', '0', '-15', '1');
REPLACE INTO `fishing_loot_template` VALUES ('1112', '16', '100', '1', '0', '-16', '1');
REPLACE INTO `reference_loot_template` VALUES ('18709', '18709', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('18709', '18710', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('18709', '18711', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('18709', '18712', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('7909', '7909', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('7909', '7910', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('7909', '3864', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('7909', '1529', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('3914', '3914', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('3914', '1725', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('3914', '804', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('3914', '4500', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('7910', '12799', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('7910', '12800', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('7910', '7910', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('7910', '12361', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('7910', '12364', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('13755', '13755', '100', '1', '0', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('13755', '13756', '100', '1', '0', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('5', '13754', '10', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('6', '13754', '5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('7', '13754', '5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('8', '13754', '6', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('5', '13422', '23', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('6', '13422', '12', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('7', '13422', '6', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('8', '13422', '18', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('5', '7973', '12', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('6', '7973', '9', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('7', '7973', '9', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('8', '7973', '6', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('5', '4603', '5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('5', '13874', '0.2', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('5', '13888', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('5', '13907', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('5', '13908', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('5', '13909', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('5', '13910', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('5', '13911', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('5', '13912', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('5', '13913', '0.01', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('5', '13914', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('5', '13915', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('5', '13916', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('5', '13917', '0.01', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('5', '13918', '0.2', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('6', '4603', '5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('6', '13874', '0.2', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('6', '13888', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('6', '13907', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('6', '13908', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('6', '13909', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('6', '13910', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('6', '13911', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('6', '13912', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('6', '13913', '0.01', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('6', '13914', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('6', '13915', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('6', '13916', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('6', '13917', '0.01', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('6', '13918', '0.2', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('7', '4603', '5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('7', '13874', '0.2', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('7', '13888', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('7', '13907', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('7', '13908', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('7', '13909', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('7', '13910', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('7', '13911', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('7', '13912', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('7', '13913', '0.01', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('7', '13914', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('7', '13915', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('7', '13916', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('7', '13917', '0.01', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('7', '13918', '0.2', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('8', '4603', '5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('8', '13874', '0.2', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('8', '13888', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('8', '13907', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('8', '13908', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('8', '13909', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('8', '13910', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('8', '13911', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('8', '13912', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('8', '13913', '0.01', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('8', '13914', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('8', '13915', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('8', '13916', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('8', '13917', '0.01', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('8', '13918', '0.2', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('1', '6359', '11', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('1', '6362', '12', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('1', '13422', '18', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('1', '13754', '18', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('2', '6359', '12', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('2', '6362', '8', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('2', '7973', '12', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('2', '13422', '7', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('2', '13754', '10', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('3', '6359', '11', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('3', '6362', '10', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('3', '7973', '12', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('3', '13422', '6', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('3', '13754', '4', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('4', '6359', '10', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('4', '6362', '10', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('4', '7973', '10', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('4', '13422', '11', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('4', '13754', '11', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('1', '4603', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('2', '4603', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('3', '4603', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('4', '4603', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('1', '13874', '0.2', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('1', '13875', '0.2', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('1', '13876', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('1', '13877', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('1', '13878', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('1', '13879', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('1', '13880', '0.01', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('2', '13874', '0.2', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('2', '13875', '0.2', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('2', '13876', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('2', '13877', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('2', '13878', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('2', '13879', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('2', '13880', '0.01', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('3', '13874', '0.2', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('3', '13875', '0.2', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('3', '13876', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('3', '13877', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('3', '13878', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('3', '13879', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('3', '13880', '0.01', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('4', '13874', '0.2', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('4', '13875', '0.2', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('4', '13876', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('4', '13877', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('4', '13878', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('4', '13879', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('4', '13880', '0.01', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('9', '13759', '30', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('10', '13759', '5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('12', '13759', '10', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('10', '13760', '10', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('11', '13760', '30', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('12', '13760', '5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('11', '13757', '10', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('9', '13758', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('10', '13758', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('11', '13758', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('12', '13758', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('9', '8365', '10', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('9', '6358', '10', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('9', '3928', '0.5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('9', '6149', '0.5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('9', '13881', '0.2', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('9', '13882', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('9', '13883', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('9', '13884', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('9', '13885', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('9', '13886', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('9', '13887', '0.01', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('10', '8365', '10', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('10', '6358', '10', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('10', '3928', '0.5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('10', '6149', '0.5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('10', '13881', '0.2', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('10', '13882', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('10', '13883', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('10', '13884', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('10', '13885', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('10', '13886', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('10', '13887', '0.01', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('11', '8365', '10', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('11', '6358', '10', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('11', '3928', '0.5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('11', '6149', '0.5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('11', '13881', '0.2', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('11', '13882', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('11', '13883', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('11', '13884', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('11', '13885', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('11', '13886', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('11', '13887', '0.01', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('12', '8365', '10', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('12', '6358', '10', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('12', '3928', '0.5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('12', '6149', '0.5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('12', '13881', '0.2', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('12', '13882', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('12', '13883', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('12', '13884', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('12', '13885', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('12', '13886', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('12', '13887', '0.01', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('14', '13759', '10', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('16', '13759', '10', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('14', '13760', '10', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('16', '13760', '10', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('15', '13760', '35', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('13', '13759', '35', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('13', '13757', '5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('14', '13757', '5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('15', '13757', '10', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('16', '13757', '5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('13', '13890', '25', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('14', '13890', '5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('15', '13890', '5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('16', '13890', '10', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('13', '13758', '5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('13', '13443', '0.5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('13', '13446', '0.5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('13', '13889', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('13', '13891', '0.2', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('13', '13901', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('13', '13902', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('13', '13903', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('13', '13904', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('13', '13905', '0.01', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('14', '13758', '5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('14', '13443', '0.5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('14', '13446', '0.5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('14', '13889', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('14', '13891', '0.2', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('14', '13901', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('14', '13902', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('14', '13903', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('14', '13904', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('14', '13905', '0.01', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('15', '13758', '5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('15', '13443', '0.5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('15', '13446', '0.5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('15', '13889', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('15', '13891', '0.2', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('15', '13901', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('15', '13902', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('15', '13903', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('15', '13904', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('15', '13905', '0.01', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('16', '13758', '5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('16', '13443', '0.5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('16', '13446', '0.5', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('16', '13889', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('16', '13891', '0.2', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('16', '13901', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('16', '13902', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('16', '13903', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('16', '13904', '0.1', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('16', '13905', '0.01', '1', '1', '1', '1');


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

UPDATE version SET `cache_id`= '596';
UPDATE version SET `core_revision`= '11772';
UPDATE version SET `db_version`= 'YTDB_0.14.2_R596_TC_R11772_TDBAI_335.0.3_RuDB_R38.9';
