UPDATE `spell_script_names` SET `ScriptName` = 'spell_dk_ghoul_explode' WHERE `spell_id` = 47496;
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_festergut_gaseous_blight';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_rotface_slime_spray';
DELETE FROM `spell_bonus_data` WHERE `entry` = 64844;
INSERT INTO `spell_bonus_data` VALUES
(64844, 0.5483, -1, -1, -1, 'Priest - Divine Hymn');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (50365,50391);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(50365,'spell_dk_improved_blood_presence'),
(50391,'spell_dk_improved_unholy_presence');
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.564 WHERE `entry` = 64844;
DELETE FROM `spell_proc_event` WHERE `entry` = 58642;
INSERT INTO `spell_proc_event` VALUES
(58642, 0x00, 15, 0x00000000, 0x08000000, 0x00000000, 0x00000010, 0x00000000, 0, 0, 0);
UPDATE `spell_proc_event` SET `procEx` = 0 WHERE `entry` IN (53671,53673,54151,54154,54155);
DELETE FROM `spell_bonus_data` WHERE `entry` = 12162;
INSERT INTO `spell_bonus_data` VALUES
(12162, 0, 0, 0, 0, 'Warrior - Deep Wounds');
DELETE FROM `areatrigger_scripts` WHERE `entry` IN (5046,5047);
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5046,'at_sholazar_waygate'),
(5047,'at_sholazar_waygate');
INSERT IGNORE INTO `trinity_string` (`entry`,`content_default`) VALUES 
(283,'You have disabled %s\'s chat for %u minutes, effective at the player\'s next login. Reason: %s.');
DELETE FROM `spell_dbc` WHERE `id`=18350;
INSERT INTO `spell_dbc` (`id`,`Effect1`,`EffectImplicitTargetA1`,`Comment`) VALUES
(18350,3,1,'Soul Preserver trinket spell');
DELETE FROM `spell_script_names` WHERE `spell_id`=18350;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(18350,'spell_gen_soul_preserver');
