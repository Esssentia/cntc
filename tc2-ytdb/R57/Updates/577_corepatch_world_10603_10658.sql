DELETE FROM `spell_script_names` WHERE `spell_id`=43874 AND `ScriptName`='spell_q11396_11399_force_shield_arcane_purple_x3';
DELETE FROM `spell_script_names` WHERE `spell_id`=50133 AND `ScriptName`='spell_q11396_11399_scourging_crystal_controller';
DELETE FROM `spell_script_names` WHERE `spell_id`=43882 AND `ScriptName`='spell_q11396_11399_scourging_crystal_controller_dummy';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(43874, 'spell_q11396_11399_force_shield_arcane_purple_x3'),
(43882, 'spell_q11396_11399_scourging_crystal_controller_dummy'),
(50133, 'spell_q11396_11399_scourging_crystal_controller');
DELETE FROM `spell_bonus_data` WHERE `entry` IN (66922);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(66922, 0, 0, 0, 0, 'Paladin - Flash of Light');
UPDATE `creature_template` SET `ScriptName`='npc_bone_spike' WHERE `entry` IN (36619,38711,38712);
