DELETE FROM `command` WHERE `name` = 'cast dest';
INSERT INTO `command` VALUES
('cast dest',3,'Syntax: .cast dest #spellid #x #y #z [triggered]\r\n  Selected target will cast #spellid at provided destination. If ''trigered'' or part provided then spell casted with triggered flag.');
DELETE FROM `spell_dbc` WHERE `id`=18350;
DELETE FROM `spell_script_names` WHERE `spell_id`=18350;
DELETE FROM `trinity_string` WHERE `entry` IN (453, 550, 714, 716);
INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES 
(453,'Ban time remaining: %s, Banned by: %s, Reason: %s'),
(550,'Mute time remaining: %s'),
(716,'Map: %s, Area: %s'),
(714,'Map: %s, Area: %s, Zone: %s, Phase: %u');
DELETE FROM `command` WHERE `name` = 'pinfo';
INSERT INTO `command` (`name`, `security`, `help`) VALUES ('pinfo','2','Syntax: .pinfo [$player_name/#GUID]\r\n\r\nOutput account information for selected player or player find by $player_name or #GUID.');
UPDATE `creature_template` SET `ScriptName`='npc_hyldsmeet_protodrake' WHERE `entry`=29625;
DELETE FROM `spell_script_names` WHERE `spell_id`=64414;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(64414,'spell_load_into_catapult');
DELETE FROM `spell_script_names` WHERE `spell_id`=58886;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`)
VALUES
(58886,'spell_magic_eater_food');
DELETE FROM `spell_script_names` WHERE `spell_id`=61889;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`)
VALUES
(61889,'spell_assembly_meltdown');
DELETE FROM `spell_script_names` WHERE `spell_id`=20577;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`)
VALUES
(20577,'spell_gen_cannibalize');
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_kelthuzad_abomination' WHERE `entry`=16428;
DELETE FROM `command` WHERE `name` = 'go xyz';
INSERT INTO `command` VALUES
('go xyz',1,'Syntax: .go xyz #x #y [#z [#mapid [#orientation]]]\r\n\r\nTeleport player to point with (#x,#y,#z) coordinates at map #mapid with orientation #orientation. If z is not provided, ground/water level will be used. If mapid is not provided, the current map will be used. If #orientation is not provided, the current orientation will be used.');

DELETE FROM `command` WHERE `name` = 'go xy';

DELETE FROM `trinity_string` WHERE `entry`=1136;
INSERT INTO `trinity_string` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`)
VALUES
(1136,'Character %s has never been banned!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
DELETE FROM `spell_script_names` WHERE `spell_id`=32146;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`)
VALUES
(32146,'spell_q9874_liquid_fire');
DELETE FROM `spell_script_names` WHERE `spell_id`=54190;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`)
VALUES
(54190,'spell_q12805_lifeblood_dummy');
UPDATE `spell_script_names` SET `ScriptName`='spell_marrowgar_coldflame_bonestorm' WHERE `spell_id`=72705 AND `ScriptName`='spell_marrowgar_coldflame';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_putricide_expunged_gas';
DELETE FROM `spell_proc_event` WHERE `entry` IN (70215,72858,72859,72860,70672,72455,72832,72833);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(70672,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0),
(72455,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0),
(72832,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0),
(72833,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0);
DELETE FROM `spell_script_names` WHERE `spell_id`=13161;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(13161, 'spell_hun_aspect_of_the_beast');
