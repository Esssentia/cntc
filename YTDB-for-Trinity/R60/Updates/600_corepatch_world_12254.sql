DELETE FROM `spell_proc_event` WHERE `entry` = 21084;
DELETE FROM `spell_script_names` WHERE `spell_id`=62519;
DELETE FROM `spell_script_names` WHERE `spell_id` = -48721;
INSERT INTO `spell_script_names` VALUES (-48721,'spell_dk_blood_boil');
DELETE FROM `spell_script_names` WHERE `spell_id` = 50524;
DELETE FROM `areatrigger_scripts` WHERE `entry`=5867;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5867, 'at_baltharus_plateau');
UPDATE `creature_template` SET `ScriptName`= 'npc_xerestrasza' WHERE `entry`=40429;
UPDATE `creature_template` SET `ScriptName`= 'boss_baltharus_the_warborn' WHERE `entry`=39751;
UPDATE `instance_template` SET `script`= 'instance_ruby_sanctum' WHERE `map`=724;
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_baltharus_enervating_brand';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(74502, 'spell_baltharus_enervating_brand');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (70923,-70923);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(70923,70924,1,'Blood-Queen: Uncontrollable Frenzy damage buff'),
(-70923,-70924,0,'Blood-Queen: Uncontrollable Frenzy remove 10man'),
(-70923,-73015,0,'Blood-Queen: Uncontrollable Frenzy remove 25man');
DELETE FROM `spell_script_names` WHERE `ScriptName`= 'spell_baltharus_enervating_brand_trigger';
INSERT INTO `spell_script_names` VALUES
(74505, 'spell_baltharus_enervating_brand_trigger');
UPDATE `creature_template` SET `ScriptName`='npc_dream_fog' WHERE `entry`=15224;
UPDATE `creature_template` SET `ScriptName`='boss_ysondre' WHERE `entry`=14887;
UPDATE `creature_template` SET `ScriptName`='npc_demented_druid' WHERE `entry`=15260;
UPDATE `creature_template` SET `ScriptName`='boss_ysondre' WHERE `entry`=14887;
UPDATE `creature_template` SET `ScriptName`='boss_lethon' WHERE `entry`=14888;
UPDATE `creature_template` SET `ScriptName`='boss_emeriss' WHERE `entry`=14889;
UPDATE `creature_template` SET `ScriptName`='boss_taerar' WHERE `entry`=14890;
UPDATE `creature_template` SET `ScriptName`='boss_shade_of_taerar' WHERE `entry`=15302;
-- Delete old text-assignment for Ysondre
DELETE FROM `script_texts` WHERE `entry`='-1000360';
DELETE FROM `script_texts` WHERE `entry`='-1000361';
-- Delete old text-assignment for Taerar
DELETE FROM `script_texts` WHERE `entry`='-1000399';
DELETE FROM `script_texts` WHERE `entry`='-1000400';
-- Delete old text-assignment for Emeriss
DELETE FROM `script_texts` WHERE `entry`='-1000401';
DELETE FROM `script_texts` WHERE `entry`='-1000402';
UPDATE `creature_template` SET `AIName`= '',`ScriptName`= 'npc_baltarhus_the_warborn_clone' WHERE `entry`=39899;
DELETE FROM `spell_script_names` WHERE `ScriptName`= 'spell_saviana_conflagration_init';
DELETE FROM `spell_script_names` WHERE `ScriptName`= 'spell_saviana_conflagration_throwback';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(74452, 'spell_saviana_conflagration_init'),
(74455, 'spell_saviana_conflagration_throwback');
UPDATE `spell_linked_spell` SET `spell_trigger`=62821 WHERE `spell_trigger`=65280;
DELETE FROM `spell_script_names` WHERE `spell_id` = 24778;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (24778, 'spell_dream_fog_sleep');
UPDATE `spell_bonus_data` SET `direct_bonus` = 0, `ap_bonus` = 0 WHERE `entry` = 25742;
DELETE FROM `spell_script_names` WHERE `ScriptName` IN('spell_gen_av_drekthar_presence','spell_ex_463');
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(463, 'spell_ex_463'),
(45828, 'spell_gen_av_drekthar_presence'),
(45829, 'spell_gen_av_drekthar_presence'),
(45830, 'spell_gen_av_drekthar_presence'),
(45822, 'spell_gen_av_drekthar_presence'),
(45823, 'spell_gen_av_drekthar_presence'),
(45824, 'spell_gen_av_drekthar_presence'),
(45826, 'spell_gen_av_drekthar_presence');
DELETE FROM `spell_proc_event` WHERE `entry` IN (75475,75481);
INSERT INTO `spell_proc_event` (`entry`,`Cooldown`) VALUES
(75475,45),
(75481,45);
