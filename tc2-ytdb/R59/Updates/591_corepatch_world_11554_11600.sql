UPDATE `creature_template` SET `ScriptName` = 'boss_razorscale_controller' WHERE `entry` = 33233;
UPDATE `creature_template` SET `ScriptName` = 'boss_razorscale' WHERE `entry` = 33186;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkrune_watcher' WHERE `entry` = 33453;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkrune_sentinel' WHERE `entry` = 33846;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkrune_guardian' WHERE `entry` = 33388;
UPDATE `creature_template` SET `ScriptName` = 'npc_devouring_flame' WHERE `entry` = 34188;
UPDATE `creature_template` SET `ScriptName` = 'npc_expedition_commander' WHERE `entry` = 33210;
UPDATE `creature_template` SET `ScriptName` = 'npc_mole_machine_trigger' WHERE `entry` IN (33282, 33245);
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry` IN (33210,33287,33259,33233);
UPDATE `gameobject_template` SET `ScriptName`='go_razorscale_harpoon' WHERE `entry` IN (194519,194541,194542,194543);
DELETE FROM `spell_script_names` WHERE `spell_id`=63308;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`)
VALUES
(63308,'spell_razorscale_devouring_flame');
UPDATE `creature_template` SET `InhabitType`=7 WHERE `flags_extra` & 128; -- Triggers floating
UPDATE `creature_template` SET `InhabitType`=7,`flags_extra`=`flags_extra`|128 WHERE `entry` IN (25664,25665,25666);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (30248,30234);
INSERT INTO `npc_spellclick_spells` (npc_entry,spell_id,quest_start,quest_end,cast_flags) VALUES 
(30234,61421,0,0,0),
(30248,61421,0,0,0);
DELETE FROM `instance_template` WHERE `map`=616;
INSERT INTO `instance_template` (map,parent,script) VALUES (616,571,'instance_eye_of_eternity');

UPDATE `creature_template` SET `ScriptName`='boss_malygos' WHERE `entry`=28859;
UPDATE `creature_template` SET `ScriptName`='npc_power_spark' WHERE `entry`=30084;
UPDATE `creature_template` SET `ScriptName`='npc_portal_eoe' WHERE `entry`=30118;
UPDATE `creature_template` SET `ScriptName`='npc_hover_disk' WHERE `entry` IN (30234,30248);
UPDATE `creature_template` SET `ScriptName`='npc_arcane_overload' WHERE `entry`=30282;
UPDATE `creature_template` SET `ScriptName`='npc_wyrmrest_skytalon' WHERE `entry`=30161;
UPDATE `creature_template` SET `ScriptName`='npc_alexstrasza_eoe' WHERE `entry`=32295;

DELETE FROM `spell_script_names` WHERE `spell_id`=56105;
INSERT INTO `spell_script_names` VALUES (56105,'spell_malygos_vortex_dummy');
DELETE FROM `spell_script_names` WHERE `spell_id`=55873;
INSERT INTO `spell_script_names` VALUES (55873,'spell_malygos_vortex_visual');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=-57350 AND `spell_effect`=60242 ;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(-57350,60242,0, 'Darkmoon Card: Illusion');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=56397;
INSERT INTO `spell_linked_spell` (spell_trigger,spell_effect,type,comment) VALUES (56397,63934,1,'Arcane Barrage - Arcane Barrage');
UPDATE `creature_template` SET `ScriptName`= 'npc_tiger_matriarch_credit' WHERE `entry`=40301;
UPDATE `creature_template` SET `ScriptName`= 'npc_tiger_matriarch' WHERE `entry`=40312;
UPDATE `creature_template` SET `ScriptName`= 'npc_troll_volunteer' WHERE `entry` IN (40260,40264);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (75420,75102);
INSERT INTO `spell_script_names` VALUES
(75420, 'spell_mount_check'),
(75102, 'spell_voljin_war_drums');
