UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName` LIKE 'guard_generic' AND (`spell1`=0 AND `spell2`=0);
UPDATE `creature_template` SET `ScriptName`='guard_generic' WHERE `ScriptName`='guard_stormwind' OR `ScriptName`='guard_orgrimmar';
-- Not the Blizzlike waypoints, Malcrom has those, but these are temporary
DELETE FROM `script_waypoint` WHERE `entry`=29602;
INSERT INTO `script_waypoint` (entry,pointid,location_x,location_y,location_z,waittime) VALUES 
(29602,1,7085.374,-1938.052,773.318,0),
(29602,2,7085.374,-1938.052,773.318,0),
(29602,3,7065.382,-1988.499,768.9483,0),
(29602,4,7079.698,-2033.11,764.2703,0),
(29602,5,7068.746,-2081.637,758.4695,0),
(29602,6,7065.993,-2130.804,756.0863,0),
(29602,7,7088.311,-2173.474,759.4193,0),
(29602,8,7124.069,-2207.86,758.3796,0),
(29602,9,7152.243,-2248.376,759.6431,0),
(29602,10,7196.352,-2265.138,756.9138,0),
(29602,11,7234.013,-2297.475,752.4849,0),
(29602,12,7255.404,-2341.076,751.6851,0),
(29602,13,7297.881,-2368.091,751.6649,0),
(29602,14,7304.306,-2416.368,752.8918,0),
(29602,15,7320.821,-2463.647,750.8485,0),
(29602,16,7362.996,-2490.504,749.8151,0),
(29602,17,7409.486,-2475.066,751.9595,0),
(29602,18,7422.454,-2427.556,752.5062,0),
(29602,19,7407.287,-2380.342,753.0123,0),
(29602,20,7366.268,-2303.298,756.0569,0),
(29602,21,7318.561,-2301.531,754.494,0),
(29602,22,7280.997,-2270.392,756.3792,0),
(29602,23,7237.944,-2246.72,756.4333,0),
(29602,24,7193.829,-2231.046,757.992,0),
(29602,25,7159.348,-2195.307,760.6475,0),
(29602,26,7122.389,-2164.836,760.5703,0),
(29602,27,7112.455,-2116.784,759.8074,0),
(29602,28,7117.603,-2040.713,767.7001,0),
(29602,29,7107.043,-2011.189,770.1815,0),
(29602,30,7103.942,-1985.653,771.1707,0),
(29602,31,7079.7,-1966.68,769.305,0),
(29602,32,7080.018,-1948.492,771.6097,0),
(29602,33,7087.928,-1931.903,773.8726,0);
UPDATE `command` SET `help` = 'Syntax: .reload all gossips\nReload gossip_menu, gossip_menu_option, gossip_scripts, points_of_interest tables.' WHERE `name` = 'reload all gossips';
UPDATE `command` SET `help` = 'Syntax: .reload all npc\nReload npc_option, npc_trainer, npc vendor, points of interest tables.' WHERE `name` = 'reload all npc';
DELETE FROM `command` WHERE `name` = 'reload npc_gossip';
DROP TABLE `npc_gossip`;
DROP TABLE `game_event_npc_gossip`;
DELETE FROM `spell_script_names` WHERE `spell_id`=26678;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(26678,'spell_item_create_heart_candy');
UPDATE `creature_template` SET `ScriptName`='npc_rotting_frost_giant' WHERE `entry` IN (38490,38494);
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_frost_giant_death_plague';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(72864,'spell_frost_giant_death_plague');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=70117;
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_sindragosa_icy_grip';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(70117,'spell_sindragosa_icy_grip');
DELETE FROM `spell_script_names` WHERE `spell_id`=70117 AND `ScriptName`='spell_sindragosa_collision_filter';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(70117,'spell_sindragosa_collision_filter');
UPDATE `creature_template` SET `ScriptName`='npc_darnavan' WHERE `entry` IN (38472,38485);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=65940;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(65940,65941,0, 'Trial of the Crusader: Shattering Throw');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=-11129;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(-11129,-28682,0, 'Combustion');
UPDATE `creature_template` SET `ScriptName`='npc_alchemist_adrianna' WHERE `entry`=38501;
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_icc_harvest_blight_specimen';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_festergut_gaseous_blight';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_rotface_slime_spray';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(72155,'spell_icc_harvest_blight_specimen'),
(72162,'spell_icc_harvest_blight_specimen'),
(69159,'spell_festergut_gaseous_blight'),
(70135,'spell_festergut_gaseous_blight'),
(70136,'spell_festergut_gaseous_blight'),
(70137,'spell_festergut_gaseous_blight'),
(69161,'spell_festergut_gaseous_blight'),
(70138,'spell_festergut_gaseous_blight'),
(70139,'spell_festergut_gaseous_blight'),
(70140,'spell_festergut_gaseous_blight'),
(69163,'spell_festergut_gaseous_blight'),
(70468,'spell_festergut_gaseous_blight'),
(70469,'spell_festergut_gaseous_blight'),
(70470,'spell_festergut_gaseous_blight'),
(69507,'spell_rotface_slime_spray'),
(71213,'spell_rotface_slime_spray'),
(73189,'spell_rotface_slime_spray'),
(73190,'spell_rotface_slime_spray');
ALTER TABLE `smart_scripts` CHANGE `entryorguid` `entryorguid` INT(32) NOT NULL;
ALTER TABLE `smart_scripts` MODIFY `action_param1` INT(32) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `smart_scripts` MODIFY `action_param2` INT(32) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `smart_scripts` MODIFY `action_param3` INT(32) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `smart_scripts` MODIFY `action_param4` INT(32) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `smart_scripts` MODIFY `action_param5` INT(32) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `smart_scripts` MODIFY `action_param6` INT(32) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `smart_scripts` CHANGE `entryorguid` `entryorguid` INT(11) NOT NULL;
ALTER TABLE `smart_scripts` MODIFY `source_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `smart_scripts` MODIFY `id` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `smart_scripts` MODIFY `link` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `smart_scripts` MODIFY `event_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `smart_scripts` MODIFY `event_phase_mask` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `smart_scripts` MODIFY `event_chance` TINYINT(3) UNSIGNED NOT NULL DEFAULT 100;
ALTER TABLE `smart_scripts` MODIFY `event_flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `smart_scripts` MODIFY `event_param1` INT(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `smart_scripts` MODIFY `event_param2` INT(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `smart_scripts` MODIFY `event_param3` INT(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `smart_scripts` MODIFY `event_param4` INT(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `smart_scripts` MODIFY `action_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `smart_scripts` MODIFY `action_param1` INT(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `smart_scripts` MODIFY `action_param2` INT(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `smart_scripts` MODIFY `action_param3` INT(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `smart_scripts` MODIFY `action_param4` INT(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `smart_scripts` MODIFY `action_param5` INT(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `smart_scripts` MODIFY `action_param6` INT(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `smart_scripts` MODIFY `target_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `smart_scripts` MODIFY `target_param1` INT(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `smart_scripts` MODIFY `target_param2` INT(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `smart_scripts` MODIFY `target_param3` INT(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `smart_scripts` MODIFY `comment` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Event Comment';
UPDATE `creature_template` SET `ScriptName`='' WHERE `entry` IN(32933,32934);
DELETE FROM `spell_script_names` WHERE `spell_id` IN(63633,65594,62056,63985,64224,64225);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES 
(63633,'spell_ulduar_rubble_summon'),
(65594,'spell_ulduar_cancel_stone_grip'),
(62056,'spell_ulduar_stone_grip'),
(63985,'spell_ulduar_stone_grip'),
(64224,'spell_ulduar_stone_grip_absorb'),
(64225,'spell_ulduar_stone_grip_absorb');
ALTER TABLE `vehicle_accessory`
ADD `summontype` TINYINT(3) UNSIGNED NOT NULL DEFAULT 6 COMMENT "see enum TempSummonType",
ADD `summontimer` INT(10) UNSIGNED NOT NULL DEFAULT 30000 COMMENT "timer, only relevant for certain summontypes";
UPDATE `vehicle_accessory` SET `summontype`=8, `summontimer`=0 WHERE `entry`=32930;
DELETE FROM `spell_script_names` WHERE `spell_id` IN(62166,63981);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(62166, 'spell_ulduar_stone_grip_cast_target'),
(63981, 'spell_ulduar_stone_grip_cast_target');
