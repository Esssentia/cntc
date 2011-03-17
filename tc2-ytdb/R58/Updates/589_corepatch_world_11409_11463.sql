DELETE FROM `spell_dbc` WHERE `Id` IN (38758,38665);
INSERT INTO `spell_dbc` (`Id`,`Comment`) VALUES
(38758, '[PH] Quest reward: Nether Gas In a Fel Fire Engine'),
(38665, '[PH] Quest reward: Exorcising the Trees');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=-32756;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(-32756,-38080,0, 'Shadowy Disguise: Remove model aura'),
(-32756,-38081,0, 'Shadowy Disguise: Remove model aura');
DELETE FROM `spell_script_names` WHERE `spell_id`=48917;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(48917, 'spell_q10041_q10040_who_are_they');
UPDATE `creature_template` SET `ScriptName`='npc_highlord_tirion_fordring_lh' WHERE `entry`=37119;
UPDATE `trinity_string` SET `content_default` = 'Player selected NPC
DB GUID: %u, current GUID: %u.
Faction: %u.
npcFlags: %u.
Entry: %u.
DisplayID: %u (Native: %u).' WHERE `entry` = 539;
UPDATE `creature_template` SET `ScriptName`='boss_flame_leviathan_defense_cannon' WHERE `entry`=33139;
DELETE FROM `areatrigger_scripts` WHERE `entry`=5729;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5729,'at_icc_start_blood_quickening');
UPDATE `creature_template` SET `ScriptName`='npc_second_trial_paladin' WHERE `entry` IN (17809,17810,17811,17812);
