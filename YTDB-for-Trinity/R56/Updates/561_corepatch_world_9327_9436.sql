DELETE FROM `spell_proc_event` WHERE `entry` IN (71642,71611,71640,71634,71645,71602,71606,71637,71540,71402,72417,72413,72419);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(71642,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,45), -- Althor's Abacus (Heroic)
(71611,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,45), -- Althor's Abacus
(71640,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,30), -- Corpse Tongue Coin (Heroic)
(71634,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,30), -- Corpse Tongue Coin
(71645,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,45), -- Dislodged Foreign Object (Heroic)
(71602,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,45), -- Dislodged Foreign Object
(71606,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,100), -- Phylactery of the Nameless Lich
(71637,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,100), -- Phylactery of the Nameless Lich (Heroic)
(71540,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,45), -- Whispering Fanged Skull (Heroic)
(71402,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,45), -- Whispering Fanged Skull
(72417,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,60), -- Item - Icecrown Reputation Ring Caster Trigger
(72413,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,60), -- Item - Icecrown Reputation Ring Melee
(72419,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,60); -- Item - Icecrown Reputation Ring Healer Trigger
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (3804,3805,3806,3807,3808,3809,3810,3811,3812,3813,1234,1239,5605,5606) AND `type` IN (0,11);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(3804,11,0,0, 'achievement_resilient_victory'), -- Resilient Victory
(3805,11,0,0, 'achievement_resilient_victory'), -- Resilient Victory
(3806,11,0,0, 'achievement_resilient_victory'), -- Resilient Victory
(3807,11,0,0, 'achievement_resilient_victory'), -- Resilient Victory
(3808,11,0,0, 'achievement_resilient_victory'), -- Resilient Victory
(3809,11,0,0, 'achievement_resilient_victory'), -- Resilient Victory
(3810,11,0,0, 'achievement_resilient_victory'), -- Resilient Victory
(3811,11,0,0, 'achievement_resilient_victory'), -- Resilient Victory
(3812,11,0,0, 'achievement_resilient_victory'), -- Resilient Victory
(3813,11,0,0, 'achievement_resilient_victory'), -- Resilient Victory
(1234,11,0,0, 'achievement_bg_control_all_nodes'), -- Territorial Dominance
(1239,11,0,0, 'achievement_bg_control_all_nodes'), -- Eye of the Storm Domination
(5605,11,0,0, 'achievement_save_the_day'), -- Save the Day
(5606,11,0,0, 'achievement_save_the_day'); -- Save the Day
DELETE FROM `command` WHERE `name` IN ('namego','goname','groupgo','summon','appear','groupsummon');
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('appear',1,'Syntax: .appear [$charactername]\r\n\r\nTeleport to the given character. Either specify the character name or click on the character''s portrait, e.g. when you are in a group. Character can be offline.'),
('groupsummon',1,'Syntax: .groupsummon [$charactername]\r\n\r\nTeleport the given character and his group to you. Teleported only online characters but original selected group member can be offline.'),
('summon',1,'Syntax: .summon [$charactername]\r\n\r\nTeleport the given character to you. Character can be offline.');
DELETE FROM `command` WHERE `name` IN ('reload gossip_menu','reload gossip_menu_option','reload gossip_scripts');
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('reload gossip_menu',3, 'Syntax: .reload gossip_menu\nReload gossip_menu table.'),
('reload gossip_menu_option',3, 'Syntax: .reload gossip_menu_option\nReload gossip_menu_option table.'),
('reload gossip_scripts',3, 'Syntax: .reload gossip_scripts\nReload gossip_scripts table.');
-- QUEST SPELLS
-- 45449 Arcane Prisoner Rescue
DELETE FROM `spell_script_names` WHERE `spell_id`=45449 AND `ScriptName`='spell_q11587_arcane_prisoner_rescue';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (45449,'spell_q11587_arcane_prisoner_rescue');

-- 46023 The Ultrasonic Screwdriver
DELETE FROM `spell_script_names` WHERE `spell_id`=46023 AND `ScriptName`='spell_q11730_ultrasonic_screwdriver';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (46023,'spell_q11730_ultrasonic_screwdriver');

-- SHAMAN SPELLS
-- 1535 Fire Nova (and ranks)
DELETE FROM `spell_script_names` WHERE `spell_id`=-1535 AND `ScriptName`='spell_sha_fire_nova';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (-1535,'spell_sha_fire_nova');

-- 39610 Mana Tide Totem
DELETE FROM `spell_script_names` WHERE `spell_id`=39610 AND `ScriptName`='spell_sha_mana_tide_totem';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (39610,'spell_sha_mana_tide_totem');

-- DEATH KNIGHT SPELLS
-- 49158 Corpse Explosion (and ranks)
DELETE FROM `spell_script_names` WHERE `spell_id`=-49158 AND `ScriptName`='spell_dk_corpse_explosion';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (-49158,'spell_dk_corpse_explosion');

-- 50524 Runic Power Feed
DELETE FROM `spell_script_names` WHERE `spell_id`=50524 AND `ScriptName`='spell_dk_runic_power_feed';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (50524,'spell_dk_runic_power_feed');

-- 55090 Scourge Strike (and ranks)
DELETE FROM `spell_script_names` WHERE `spell_id`=-55090 AND `ScriptName`='spell_dk_scourge_strike';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (-55090,'spell_dk_scourge_strike');

-- DRUID SPELLS
-- 54846 Glyph of Starfire
DELETE FROM `spell_script_names` WHERE `spell_id`=54846 AND `ScriptName`='spell_dru_glyph_of_starfire';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (54846,'spell_dru_glyph_of_starfire');

-- WARLOCK SPELLS
-- 6201 Create Healthstone (and ranks)
DELETE FROM `spell_script_names` WHERE `spell_id`=-6201 AND `ScriptName`='spell_warl_create_healthstone';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (-6201,'spell_warl_create_healthstone');

-- 47193 Demonic Empowerment
DELETE FROM `spell_script_names` WHERE `spell_id`=47193 AND `ScriptName`='spell_warl_demonic_empowerment';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (47193,'spell_warl_demonic_empowerment');

-- 47422 Everlasting Affliction
DELETE FROM `spell_script_names` WHERE `spell_id`=47422 AND `ScriptName`='spell_warl_everlasting_affliction';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (47422,'spell_warl_everlasting_affliction');

-- 63521 Guarded by The Light
DELETE FROM `spell_script_names` WHERE `spell_id`=63521 AND `ScriptName`='spell_warl_guarded_by_the_light';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (63521,'spell_warl_guarded_by_the_light');

-- HUNTER SPELLS
-- 53209 Chimera Shot
DELETE FROM `spell_script_names` WHERE `spell_id`=53209 AND `ScriptName`='spell_hun_chimera_shot';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (53209,'spell_hun_chimera_shot');

-- 53412 Invigoration
DELETE FROM `spell_script_names` WHERE `spell_id`=53412 AND `ScriptName`='spell_hun_invigoration';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (53412,'spell_hun_invigoration');

-- 37506 Scatter Shot
DELETE FROM `spell_script_names` WHERE `spell_id`=37506 AND `ScriptName`='spell_hun_scatter_shot';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (37506,'spell_hun_scatter_shot');
