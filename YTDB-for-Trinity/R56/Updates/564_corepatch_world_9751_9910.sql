-- 14537 Six Demon Bag
DELETE FROM `spell_script_names` WHERE `spell_id`=14537 AND `ScriptName`='spell_item_six_demon_bag';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (14537,'spell_item_six_demon_bag');
-- 17271 Test Fetid Skull
DELETE FROM `spell_script_names` WHERE `spell_id`=17271 AND `ScriptName`='spell_q5206_test_fetid_skull';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (17271,'spell_q5206_test_fetid_skull');
-- 23074 Arcanite Dragonling
DELETE FROM `spell_script_names` WHERE `spell_id`=23074 AND `ScriptName`='spell_item_arcanite_dragonling';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (23074,'spell_item_arcanite_dragonling');
-- 23075 Mithril Mechanical Dragonling
DELETE FROM `spell_script_names` WHERE `spell_id`=23075 AND `ScriptName`='spell_item_mithril_mechanical_dragonling';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (23075,'spell_item_mithril_mechanical_dragonling');
-- 23076 Mechanical Dragonling
DELETE FROM `spell_script_names` WHERE `spell_id`=23076 AND `ScriptName`='spell_item_mechanical_dragonling';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (23076,'spell_item_mechanical_dragonling');
-- 23133 Gnomish Battle Chicken
DELETE FROM `spell_script_names` WHERE `spell_id`=23133 AND `ScriptName`='spell_item_gnomish_battle_chicken';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (23133,'spell_item_gnomish_battle_chicken');
-- 34665 Administer Antidote
DELETE FROM `spell_script_names` WHERE `spell_id`=34665 AND `ScriptName`='spell_q10255_administer_antidote';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (34665,'spell_q10255_administer_antidote');
-- 40802 Mingo's Fortune Generator
DELETE FROM `spell_script_names` WHERE `spell_id`=40802 AND `ScriptName`='spell_item_mingos_fortune_generator';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (40802,'spell_item_mingos_fortune_generator');
-- 8913 Sacred Cleansing
DELETE FROM `spell_script_names` WHERE `spell_id`=8913 AND `ScriptName`='spell_q55_sacred_cleansing';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (8913,'spell_q55_sacred_cleansing');
-- 44936 Quest - Fel Siphon Dummy
DELETE FROM `spell_script_names` WHERE `spell_id`=44936 AND `ScriptName`='spell_q11515_fel_siphon_dummy';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (44936,'spell_q11515_fel_siphon_dummy');
ALTER TABLE `transports`
  ADD COLUMN `guid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT FIRST,
  MODIFY COLUMN `entry` mediumint(8) unsigned NOT NULL DEFAULT '0' AFTER `guid`,
  DROP PRIMARY KEY,
  ADD PRIMARY KEY (`guid`),
  ADD UNIQUE INDEX `idx_entry` (`entry`);
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000522 AND -1000517;
INSERT INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES 
(0,-1000517,'A-Me good. Good, A-Me. Follow... follow A-Me. Home. A-Me go home.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_ame - SAY_READY'),
(0,-1000518,'$c, no hurt A-Me. A-Me good.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_ame - SAY_AGGRO1'),
(0,-1000519,'Good... good, A-Me. A-Me good. Home. Find home.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_ame - SAY_SEARCH'),
(0,-1000520,'Danger. Danger! $c try hurt A-Me.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_ame - SAY_AGGRO2'),
(0,-1000521,'Bad, $c. $c, bad!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_ame - SAY_AGGRO3'),
(0,-1000522,'A-Me home! A-Me good! Good A-Me. Home. Home. Home.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_ame - SAY_FINISH');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000525 AND -1000523;
INSERT INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES 
(0,-1000523,'Saeed is currently engaged or awaiting orders to engage. You may check directly east of me and see if Saeed is ready for you. If he is not present then he is off fighting another battle. I recommend that you wait for him to return before attacking Dimensius.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,4,0,0,'npc_professor_dabiri - WHISPER_DABIRI'),
(0,-1000524,'Bessy, is that you?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_bessy - SAY_THADELL_1'),
(0,-1000525,'Thank you for bringing back my Bessy, $N. I couldn''t live without her!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_bessy - SAY_THADELL_2');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000574 AND -1000571;
INSERT INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES 
(0,-1000571,'Ok let''s get out of here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_isla_starmane - SAY_PROGRESS_1'),
(0,-1000572,'You sure you''re ready? Take a moment.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_isla_starmane - SAY_PROGRESS_2'),
(0,-1000573,'Alright, let''s do this!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_isla_starmane - SAY_PROGRESS_3'),
(0,-1000574,'Ok, I think I can make it on my own from here. Thank you so much for breaking me out of there!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_isla_starmane - SAY_PROGRESS_4');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000621 AND -1000606;
INSERT INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES 
(0,-1000606,'Come, $N. Lord Stormrage awaits.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'OVERLORD_SAY_1'),
(0,-1000607,'Lord Illidan will be here shortly.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'OVERLORD_SAY_2'),
(0,-1000609,'But... My lord, I do not understand. $N... He is the orc that has...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'OVERLORD_SAY_4'),
(0,-1000610,'It will be done, my lord.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'OVERLORD_SAY_5'),
(0,-1000611,'So you thought to make a fool of Mor''ghor, eh? Before you are delivered to Lord Illidan, you will feel pain that you could not know to exist. I will take pleasure in exacting my own vengeance.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,25,'OVERLORD_SAY_6'),
(0,-1000612,'Warriors of Dragonmaw, gather ''round! One among you has attained the rank of highlord! Bow your heads in reverence! Show your respect and allegiance to Highlord $N!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,22,'OVERLORD_YELL_1'),
(0,-1000613,'All hail Lord Illidan!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,66,'OVERLORD_YELL_2'),
(0,-1000614,'What is the meaning of this, Mor''ghor?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'LORD_ILLIDAN_SAY_1'),
(0,-1000615,'SILENCE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,22,'LORD_ILLIDAN_SAY_2'),
(0,-1000616,'Blathering idiot. You incomprehensibly incompetent buffoon...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'LORD_ILLIDAN_SAY_3'),
(0,-1000617,'THIS is your hero?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,6,'LORD_ILLIDAN_SAY_4'),
(0,-1000618,'You have been deceived, imbecile.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'LORD_ILLIDAN_SAY_5'),
(0,-1000619,'This... whole... operation... HAS BEEN COMPROMISED!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,22,'LORD_ILLIDAN_SAY_6'),
(0,-1000620,'I expect to see this insect''s carcass in pieces in my lair within the hour. Fail and you will suffer a fate so much worse than death.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'LORD_ILLIDAN_SAY_7'),
(0,-1000621,'You will not harm the boy, Mor''ghor! Quickly, $N, climb on my back!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,22,'YARZILL_THE_MERC_SAY');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000636 AND -1000629;
INSERT INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES 
(0,-1000629,'What''s the big idea, Spark?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'geezle - GEEZLE_SAY_1'),
(0,-1000630,'What''s the big idea? You nearly blew my cover, idiot! I told you to put the compass and navigation maps somewhere safe - not out in the open for any fool to discover.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,'geezle - SPARK_SAY_2'),
(0,-1000631,'The Master has gone to great lengths to secure information about the whereabouts of the Exodar. You could have blown the entire operation, including the cover of our spy on the inside.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'geezle - SPARK_SAY_3'),
(0,-1000632,'Relax, Spark! I have it all under control. We''ll strip mine the Exodar right out from under ''em - making both you and I very, very rich in the process.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,4,'geezle - GEEZLE_SAY_4'),
(0,-1000633,'Relax? Do you know what Kael''thas does to those that fail him, Geezle? Eternal suffering and pain... Do NOT screw this up, fool.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'geezle - SPARK_SAY_5'),
(0,-1000634,'Our Bloodmyst scouts have located our contact. The fool, Velen, will soon leave himself open and defenseless -- long enough for us to strike! Now get out of my sight before I vaporize you...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'geezle - SPARK_SAY_6'),
(0,-1000635,'Yes, sir. It won''t happen again...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'geezle - GEEZLE_SAY_7'),
(0,-1000636,'picks up the naga flag.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'geezle - EMOTE_SPARK');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1800070 AND -1800064;
INSERT INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES 
(0,-1800064,'Beware! We are attacked!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,11,1,'npc_anchorite_truuen - SAY_WP_0'),
(0,-1800065,'It must be the purity of the Mark of the Lightbringer that is drawing forth the Scourge to attack us. We must proceed with caution lest we be overwhelmed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,11,1,'npc_anchorite_truuen - SAY_WP_1'),
(0,-1800066,'This land truly needs to be cleansed by the Light! Let us continue on to the tomb. It isn''t far now...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,11,1,'npc_anchorite_truuen - SAY_WP_2'),
(0,-1800067,'Be welcome, friends!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,11,1,'npc_anchorite_truuen - SAY_WP_3'),
(0,-1800068,'Thank you for coming here in remembrance of me. Your efforts in recovering that symbol, while unnecessary, are certainly touching to an old man''s heart. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,11,1,'npc_anchorite_truuen - SAY_WP_4'),
(0,-1800069,'Please, rise my friend. Keep the Blessing as a symbol of the strength of the Light and how heroes long gone might once again rise in each of us to inspire. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,11,1,'npc_anchorite_truuen - SAY_WP_5'),
(0,-1800070,'Thank you my friend for making this possible. This is a day that I shall never forget! I think I will stay a while. Please return to High Priestess MacDonnell at the camp. I know that she''ll be keenly interested to know of what has transpired here.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,11,1,'npc_anchorite_truuen - SAY_WP_6');

DELETE FROM `script_texts` WHERE `entry`=-1000600;
INSERT INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES 
(0,-1000600,'Ow! OK, I''ll get back to work, $N!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,11,1,'npc_lazy_peon - SAY_WP_0');
DELETE FROM `spell_proc_event` WHERE `entry`=53386;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(53386,0x30,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0); -- Rune of Cinderglacier
DELETE FROM `spell_proc_event` WHERE `entry`=50421;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(50421,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0); -- Scent of Blood
DELETE FROM `command` WHERE `name` LIKE 'instance unbind';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('instance unbind',3,'Syntax: .instance unbind <mapid|all> [difficulty]\r\n  Clear all/some of player\'s binds');
DELETE FROM `spell_proc_event` WHERE `entry`=71564;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(71564,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000002,0,0,0); -- Nevermelting Ice Crystal
DELETE FROM spell_proc_event WHERE entry IN (53290, 53291, 53292);
INSERT INTO spell_proc_event (entry, SchoolMask, SpellFamilyName, SpellFamilyMask0, SpellFamilyMask1, SpellFamilyMask2, procFlags, procEx, ppmRate, CustomChance, Cooldown) VALUES
(53290,0,9,0x800,0x1,0x200,0,0x0000002,0,0,0),
(53291,0,9,0x800,0x1,0x200,0,0x0000002,0,0,0),
(53292,0,9,0x800,0x1,0x200,0,0x0000002,0,0,0);
DELETE FROM `command` WHERE `name` IN ('character changefaction','character changerace');
INSERT INTO `command` VALUES
('character changefaction',2,'Syntax: .character changefaction $name\r\n\r\nChange character faction.'),
('character changerace',2,'Syntax: .character changerace $name\r\n\r\nChange character race.');
DROP TABLE IF EXISTS `player_factionchange_achievement`;
CREATE TABLE `player_factionchange_achievement` (
 `alliance_id` int(8) NOT NULL,
 `horde_id` int(8) NOT NULL,
 PRIMARY KEY (`alliance_id`,`horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `player_factionchange_items`;
CREATE TABLE `player_factionchange_items` (
 `race_A` int(8) NOT NULL,
 `alliance_id` int(8) NOT NULL,
 `commentA` text,
 `race_H` int(8) NOT NULL,
 `horde_id` int(8) NOT NULL,
 `commentH` text,
PRIMARY KEY (`alliance_id`,`horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `player_factionchange_reputations`;
CREATE TABLE `player_factionchange_reputations` (
 `alliance_id` int(8) NOT NULL,
 `horde_id` int(8) NOT NULL,
 PRIMARY KEY (`alliance_id`,`horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `player_factionchange_spells`;
CREATE TABLE `player_factionchange_spells` (
 `alliance_id` int(8) NOT NULL,
 `horde_id` int(8) NOT NULL,
 PRIMARY KEY (`alliance_id`,`horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DELETE FROM `spell_group` WHERE `spell_id` IN ('63283');
DELETE FROM `spell_proc_event` WHERE `entry`=63280;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES 
(63280,0x00,11,0x20000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0); -- Glyph ofTotem of Wrath
DELETE FROM `spell_proc_event` WHERE `entry` IN (75474,75465,75457,75455);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(75474,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,45), -- Charred Twilight Scale (Heroic)
(75465,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,45), -- Charred Twilight Scale
(75457,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,45), -- Sharpened Twilight Scale (Heroic)
(75455,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,45); -- Sharpened Twilight Scale
DELETE FROM `spell_proc_event` WHERE `entry` IN (71545,71406);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(71545,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,50,0), -- Tiny Abomination in a Jar (Heroic)
(71406,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,50,0); -- Tiny Abomination in a Jar
UPDATE `creature_template` SET `ScriptName`= 'npc_hodirs_fury' WHERE `entry`=33212;
UPDATE `creature_template` SET `ScriptName`= '' WHERE `entry`=33312;
DELETE FROM `trinity_string` WHERE (`entry`='5029');
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES ('5029', 'Result limit reached (max results: %d)');
UPDATE `spell_proc_event` SET `procFlags`=0 WHERE `entry` IN (53486,53488);
DELETE FROM `spell_group` where `id`=1113;
INSERT INTO spell_group (id, spell_id) VALUES
(1113, 1008),
(1113, 604);
DELETE FROM `spell_group_stack_rules` where `group_id`=1113;
INSERT INTO spell_group_stack_rules (group_id, stack_rule) VALUES (1113, 1);
-- Add serverside spells place holders for future development
DELETE FROM `spell_dbc` WHERE `Id` IN (44805);
INSERT INTO `spell_dbc` (`Id`,`Comment`) VALUES
(44805, 'Aura used in creature_addon - serverside spell');
DELETE FROM `spell_script_names` WHERE `spell_id` IN(29266,57685,58951,70592,70628,74490) AND `ScriptName`='spell_creature_permanent_feign_death';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES 
(29266, 'spell_creature_permanent_feign_death'),
(57685, 'spell_creature_permanent_feign_death'),
(58951, 'spell_creature_permanent_feign_death'),
(70592, 'spell_creature_permanent_feign_death'),
(70628, 'spell_creature_permanent_feign_death'),
(74490, 'spell_creature_permanent_feign_death');
DELETE FROM spell_linked_spell WHERE spell_trigger IN(7744,42292,59752);
INSERT INTO spell_linked_spell (spell_trigger, spell_effect, type, comment) VALUES 
(7744, 72757, 0, 'Will of the Forsaken Cooldown Trigger (WOTF)'),
(42292, 72752, 0, 'Will of the Forsaken Cooldown Trigger'),
(59752, 72752, 0, 'Will of the Forsaken Cooldown Trigger');
DELETE FROM `spell_script_names` WHERE `spell_id` IN(72752,72757);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
('72752', 'spell_pvp_trinket_wotf_shared_cd'),
('72757', 'spell_pvp_trinket_wotf_shared_cd');
-- Add remaining placeholder info for AURA 44805
UPDATE `spell_dbc` SET `Effect1`=6,`EffectApplyAuraName1`=4 WHERE `id`=44805;
UPDATE `spell_proc_event` SET `procFlags` = '139944' WHERE `entry` = 49222;
