DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_gen_magic_rooster';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(65917, 'spell_gen_magic_rooster');
UPDATE `creature_template` SET `ScriptName`= 'npc_baltharus_the_warborn_clone' WHERE `ScriptName`= 'npc_baltarhus_the_warborn_clone';
UPDATE `creature_template` SET `ScriptName`= 'boss_general_zarithrian' WHERE `entry`=39746;
UPDATE `creature_template` SET `ScriptName`= 'npc_onyx_flamecaller' WHERE `entry`=39814;
-- Fix typo for Nature Bomb Spell in heroic difficulty
UPDATE `spelldifficulty_dbc` SET `spellid1`=64650 WHERE `id`=3250;
DELETE FROM `spell_script_names` WHERE `spell_id` IN(63018,65121,64234,63024,62791);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(63018,'spell_xt002_searing_light_spawn_life_spark'),
(65121,'spell_xt002_searing_light_spawn_life_spark'),
(64234,'spell_xt002_gravity_bomb_spawn_void_zone'),
(63024,'spell_xt002_gravity_bomb_spawn_void_zone'),
(62791,'spell_xt002_heart_overload_periodic');
DELETE FROM `spell_dbc` WHERE `Id`=62791;
INSERT INTO `spell_dbc` (`Id`,`Effect1`,`Comment`) VALUES (62791,3,'XT-002 Heart Overload Trigger Spell');
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=33293;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(33293,63852,0,0,0,1,0,0,0);
DELETE FROM `spell_script_names` WHERE `spell_id`=62775;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES 
(62775, 'spell_xt002_tympanic_tantrum');
DELETE FROM `spell_dbc` WHERE `id`=65037;
INSERT INTO `spell_dbc` (`Id`,`Effect1`,`EffectImplicitTargetA1`,`comment`)VALUES 
(65037,3,1,'Nerf the Scrapbots Achievement Criteria Marker');
DELETE FROM `spell_proc_event` WHERE `entry` IN (53672,54149);
DELETE FROM `spell_proc_event` WHERE `entry` = 33151;
DELETE FROM `spell_scripts` WHERE `id` IN(37751,37752);	-- Remove redundant data from spell_scripts
DELETE FROM `spell_script_names` WHERE `spell_id` IN(37751,37752);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(37751,'spell_xt002_submerged'),
(37752,'spell_xt002_stand');
DELETE FROM `spell_proc_event` WHERE `entry` = 60524;
INSERT INTO `spell_proc_event` VALUES
(60524,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00010000,0,0,0);
DELETE FROM `spell_script_names` WHERE `spell_id` IN(64233,63025);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(64233,'spell_xt002_gravity_bomb_damage'),
(63025,'spell_xt002_gravity_bomb_damage');
-- Better naming for changed script with new functionality
UPDATE `spell_script_names` SET `ScriptName`='spell_xt002_gravity_bomb_aura' WHERE `spell_id` IN(64234,63024);
UPDATE `creature_template` SET `AIName` = 'ArcherAI' WHERE `AIName` = 'ArchorAI';
UPDATE `spell_dbc` SET `AttributesEx3`=0x00020000 WHERE `Id`=25042;
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_mark_of_nature';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(25042, 'spell_mark_of_nature');
DELETE FROM `spell_script_names` WHERE `spell_id`=52090;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES 
(52090, 'spell_q12659_ahunaes_knife');
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (28710,29838,33114,33167,34161);
INSERT INTO `npc_spellclick_spells` VALUES
(28710,46598,0,0,0,1,0,0,0),
(29838,46598,0,0,0,1,0,0,0),
(33114,46598,0,0,0,1,0,0,0),
(33167,46598,0,0,0,1,0,0,0),
(34161,46598,0,0,0,1,0,0,0);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN
(25762,27131,31110,31137,31157,31262,31406,31407,31408,31409,32490,31583,31830,31881,31884,32225,32227,32292,32344,37968);
INSERT INTO `npc_spellclick_spells` VALUES
(25762,43671,0,0,0,1,0,0,0),
(27131,48754,0,0,0,1,0,0,0),
(31110,46598,0,0,0,1,0,0,0),
(31137,46598,0,0,0,1,0,0,0),
(31157,46598,0,0,0,1,0,0,0),
(31262,46598,0,0,0,1,0,0,0),
(31406,46598,0,0,0,1,0,0,0),
(31407,46598,0,0,0,1,0,0,0),
(31408,46598,0,0,0,1,0,0,0),
(31409,46598,0,0,0,1,0,0,0),
(32490,46598,0,0,0,1,0,0,0),
(31583,59319,0,0,0,1,0,0,0),
-- (31583,46598,0,0,0,1,0,0,0), -- should be casted if creature interacts, not implemented yet
(31830,46598,0,0,0,1,0,0,0),
(31881,46598,0,0,0,1,0,0,0),
(31884,46598,0,0,0,1,0,0,0),
(32225,46598,0,0,0,1,0,0,0),
(32227,46598,0,0,0,1,0,0,0),
(32292,46598,0,0,0,1,0,0,0),
(32344,46598,0,0,0,1,0,0,0),
(37968,46598,0,0,0,1,0,0,0);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 34793;
INSERT INTO `npc_spellclick_spells` VALUES
(34793,66245,0,0,0,1,0,0,0);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (36355, 36357, 34777, 35436, 36356, 36358);
INSERT INTO `npc_spellclick_spells` VALUES
(36355,66245,0,0,0,1,0,0,0),
(36357,66245,0,0,0,1,0,0,0),
(34777,66245,0,0,0,1,0,0,0),
(35436,66245,0,0,0,1,0,0,0),
(36358,66245,0,0,0,1,0,0,0),
(36356,66245,0,0,0,1,0,0,0);
-- Change spell script name for Attuned To Nature Dose Reduction
UPDATE `spell_script_names` SET `ScriptName`='spell_freya_attuned_to_nature_dose_reduction' WHERE `ScriptName`='spell_attuned_to_nature_dose_reduction';
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 31583 AND `spell_id`=46598;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (30935,34162);
INSERT INTO `npc_spellclick_spells` VALUES
(30935,46598,0,0,0,1,0,0,0),
(34162,46598,0,0,0,1,0,0,0);
UPDATE `creature_template` SET `ScriptName`='npc_fel_guard_hound' WHERE `entry`=21847;
UPDATE `creature_template` SET `ScriptName`='boss_drakkari_elemental' WHERE `entry`=29573;
