UPDATE `trinity_string` SET `content_default`='|cfff00000[GM Announcement]: %s|r' WHERE `entry`=6613;
UPDATE `spell_proc_event` SET `SpellFamilyMask1`=65536 WHERE `entry`=70756;
DELETE FROM `spell_bonus_data` WHERE `entry`=64801;
INSERT INTO `spell_bonus_data` VALUES (64801,0.45,0,0,0,'Druid - T8 Restoration 4P Bonus');
UPDATE `spell_proc_event` SET `SpellFamilyMask0` = 0x00002000, `SpellFamilyMask2` = 0 WHERE `entry` = 64908;
DELETE FROM `spell_proc_event` WHERE `entry` = 64568;
UPDATE `spell_proc_event` SET `cooldown` = 10 WHERE `entry` = 64571;
UPDATE `spell_bonus_data` SET `direct_bonus` = -1 WHERE `entry` = 27243;
DELETE FROM `spell_bonus_data` WHERE `entry` = 27285;
INSERT INTO `spell_bonus_data` VALUES (27285, 0.2129, -1, -1, -1,'Warlock - Seed of Corruption Proc');
DELETE FROM `spell_proc_event` WHERE `entry` IN (20335,20336,20337);
INSERT INTO `spell_proc_event` VALUES
(20335,0x00,10,0x00800000,0x00000000,0x00000008,0x00000100,0x00000000,0,100,0),
(20336,0x00,10,0x00800000,0x00000000,0x00000008,0x00000100,0x00000000,0,100,0),
(20337,0x00,10,0x00800000,0x00000000,0x00000008,0x00000100,0x00000000,0,100,0);
UPDATE `spell_linked_spell` SET `type` = 1 WHERE `spell_trigger` = 20066;
UPDATE `spell_proc_event` SET `SpellFamilyMask1`=`SpellFamilyMask1`|0x00010000 WHERE `entry` IN (44445,44446,44448);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 56453;
INSERT INTO `spell_linked_spell` VALUES
(56453,67544,0,'Lock and Load Marker');
UPDATE `spell_proc_event` SET `procEx` = 0, `ppmRate` = 1 WHERE `entry` = 51123;
UPDATE `spell_proc_event` SET `procEx` = 0, `ppmRate` = 2 WHERE `entry` = 51127;
UPDATE `spell_proc_event` SET `procEx` = 0, `ppmRate` = 3 WHERE `entry` = 51128;
UPDATE `spell_proc_event` SET `procEx` = 0, `ppmRate` = 4 WHERE `entry` = 51129;
UPDATE `spell_proc_event` SET `procEx` = 0, `ppmRate` = 5 WHERE `entry` = 51130;
DELETE FROM `spell_proc_event` WHERE `entry` IN (49004,49508,49509);
INSERT INTO `spell_proc_event` VALUES
(49004,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000033,0,0,0),
(49508,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000033,0,0,0),
(49509,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000033,0,0,0);
UPDATE `spell_proc_event` SET `procEx` = 0x0010000 WHERE `entry` = 16864;
DELETE FROM `spell_pet_auras` WHERE `spell` IN (34455,34459,34460);
INSERT INTO `spell_pet_auras` VALUES
(34455,0,0,75593),
(34459,0,0,75446),
(34460,0,0,75447);
DELETE FROM `spell_proc_event` WHERE `entry` = 46916;
DELETE FROM `spell_proc_event` WHERE `entry` = 20784;
INSERT INTO `spell_proc_event` VALUES
(20784,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000002,0,0,0);
UPDATE `spell_proc_event` SET `SpellFamilyMask2`=0x00001000 WHERE `entry` IN (34753,34859,34860);
UPDATE `spell_proc_event` SET `SpellFamilyMask0`=`SpellFamilyMask0`|0x00000001 WHERE `entry` IN (66192,66191,65661);
UPDATE `spell_proc_event` SET `procEx`=`procEx`|0x00000030 WHERE `entry` IN (31244,31245);
DELETE FROM `spell_proc_event` WHERE `entry` IN (66799,66814,66815,66816,66817);
INSERT INTO `spell_proc_event` VALUES
(66799,0x00,15,0x00400000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0),
(66814,0x00,15,0x00400000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0),
(66815,0x00,15,0x00400000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0),
(66816,0x00,15,0x00400000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0),
(66817,0x00,15,0x00400000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0);
DELETE FROM `spell_proc_event` WHERE `entry` = 31801;
UPDATE `spell_group` SET `spell_id` = 14893 WHERE `id` = 1097;
UPDATE `spell_group` SET `spell_id` = 16177 WHERE `id` = 1098;
DELETE FROM `spell_group` WHERE `id` = 1044 OR `spell_id` = -1044;
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.526 WHERE `entry` = 596;
DELETE FROM `spell_bonus_data` WHERE `entry` = 64085;
INSERT INTO `spell_bonus_data` VALUES
(64085,1.2,-1,-1,-1,'Priest - Vampiric Touch (Dispelled)');
UPDATE `spell_bonus_data` SET `ap_bonus` = 0.06 WHERE `entry` = 48721;
DELETE FROM `spell_bonus_data` WHERE `entry` = 49941;
DELETE FROM `spell_proc_event` WHERE `entry` = 54936;
DELETE FROM `spell_bonus_data` WHERE `entry` IN (53188,53189,53190,53191,53194,53195);
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.3 WHERE `entry` = 50288;
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.13 WHERE `entry` = 50294;
DELETE FROM `spell_dbc` WHERE `id` = 100000;
INSERT INTO `spell_dbc` VALUES (100000,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,1,0,-1,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,'Bone Shield cooldown - serverside spell');
UPDATE `spell_proc_event` SET `cooldown` = 2 WHERE `entry` = 49222;
DELETE FROM `script_texts` WHERE `npc_entry` IN (10427,20129);
DELETE FROM `creature_text` WHERE `entry`=18728;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`sound`,`comment`) VALUES
(18728,0,0, 'I remember well the sting of defeat at the conclusion of the Third War. I have waited far too long for my revenge. Now the shadow of the Legion falls over this world. It is only a matter of time until all of your failed creation... is undone.',1,11332,'kazzak SAY_INTRO'),
(18728,1,0, 'The Legion will conquer all!',1,11333,'kazzak SAY_AGGRO1'),
(18728,1,1, 'All mortals will perish!',1,11334,'kazzak SAY_AGGRO2'),
(18728,2,0, 'All life must be eradicated!',1,11335,'kazzak SAY_SURPREME1'),
(18728,2,1, 'I''ll rip the flesh from your bones!',1,11336,'kazzak SAY_SURPREME2'),
(18728,3,0, 'Kirel Narak!',1,11337,'kazzak SAY_KILL1'),
(18728,3,1, 'Contemptible wretch!',1,11338,'kazzak SAY_KILL2'),
(18728,3,2, 'The universe will be remade.',1,11339,'kazzak SAY_KILL3'),
(18728,4,0, 'The Legion... will never... fall.',1,11340,'kazzak SAY_DEATH'),
(18728,5,0, '%s goes into a frenzy!',2,0,'kazzak EMOTE_FRENZY'),
(18728,6,0, 'Invaders, you dangle upon the precipice of oblivion! The Burning Legion comes and with it comes your end.',1,0,'kazzak SAY_RAND1'),
(18728,6,1, 'Impudent whelps, you only delay the inevitable. Where one has fallen, ten shall rise. Such is the will of Kazzak...',1,0,'kazzak SAY_RAND2');
DELETE FROM `spell_script_names` WHERE `spell_id`=32960 AND `ScriptName`= 'spell_doomlord_kazzak_mark_of_kazzak';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(32960, 'spell_doomlord_kazzak_mark_of_kazzak');
DELETE FROM `spell_script_names` WHERE `spell_id`=32960 AND `ScriptName`= 'spell_doomlord_kazzak_mark_of_kazzak';
UPDATE `spell_dbc` SET `Id` = 100001 WHERE `Id` = 200000;
DELETE FROM `spell_bonus_data` WHERE `entry` IN (467,7294);
INSERT INTO `spell_bonus_data` VALUES
(467,0.033,-1,-1,-1,'Druid - Thorns'),
(7294,0.033,-1,-1,-1,'Paladin - Retribution Aura');
DELETE FROM `spell_script_names` WHERE `spell_id`=28441;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(28441, 'spell_item_ashbringer');
DELETE FROM `spell_bonus_data` WHERE `entry`=2818;
INSERT INTO `spell_bonus_data` VALUES
(2818,0,0,0,0.03,'Rogue - Deadly Poison All Ranks($AP*0.12 / number of ticks)');
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_rog_deadly_poison';
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(-2818,'spell_rog_deadly_poison');
DELETE FROM `areatrigger_scripts` WHERE `entry` BETWEEN 5616 AND 5618;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5616,'at_icc_start_frostwing_gauntlet'),
(5617,'at_icc_start_frostwing_gauntlet'),
(5618,'at_icc_start_frostwing_gauntlet');
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=38248;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(38248,71462,0,0,0,1,0,71443,2); -- Impaling Spear
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`dynamicflags`=0 WHERE `entry`=38248; -- Impaling Spear
UPDATE `creature_template` SET `ScriptName`='boss_sister_svalna' WHERE `entry`=37126;
UPDATE `creature_template` SET `ScriptName`='npc_crok_scourgebane' WHERE `entry`=37129;
UPDATE `creature_template` SET `ScriptName`='npc_captain_arnath' WHERE `entry`=37122;
UPDATE `creature_template` SET `ScriptName`='npc_captain_brandon' WHERE `entry`=37123;
UPDATE `creature_template` SET `ScriptName`='npc_captain_grondel' WHERE `entry`=37124;
UPDATE `creature_template` SET `ScriptName`='npc_captain_rupert' WHERE `entry`=37125;
UPDATE `creature_template` SET `ScriptName`='npc_frostwing_vrykul' WHERE `entry` IN (37132,38125,37127,37134,37133);
UPDATE `creature_template` SET `ScriptName`='npc_impaling_spear' WHERE `entry`=38248;
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_svalna_caress_of_death';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_svalna_revive_champion';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_svalna_remove_spear';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(70078, 'spell_svalna_caress_of_death'),
(70053, 'spell_svalna_revive_champion'),
(71462, 'spell_svalna_remove_spear');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (710,18647);
INSERT INTO `spell_script_names` VALUES (710,"spell_warl_banish"),(18647,"spell_warl_banish");
UPDATE `spell_proc_event` SET `procEx` = 0x00040000 WHERE `entry` IN (56636, 56637, 56638);
DELETE FROM `spell_bonus_data` WHERE `entry` IN (69729,69730,69733,69734);
INSERT INTO `spell_bonus_data` VALUES
(69729,-1,0,-1,-1,'Item - Onyxia 10 Caster Trinket - Searing Flames'),
(69730,-1,0,-1,-1,'Item - Onyxia 25 Caster Trinket - Searing Flames'),
(69733,0,-1,-1,-1,'Item - Onyxia 10 Caster Trinket - Cauterizing Heal'),
(69734,0,-1,-1,-1,'Item - Onyxia 25 Caster Trinket - Cauterizing Heal');
DELETE FROM `spell_proc_event` WHERE `entry` IN (69739,69755);
INSERT INTO `spell_proc_event` VALUES
(69739,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,45),
(69755,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,45);
UPDATE `spell_proc_event` SET `ppmRate`=2 WHERE `entry`=51127;
UPDATE `spell_proc_event` SET `ppmRate`=4 WHERE `entry`=51128;
UPDATE `spell_proc_event` SET `ppmRate`=6 WHERE `entry`=51129;
UPDATE `spell_proc_event` SET `ppmRate`=8 WHERE `entry`=51130;
