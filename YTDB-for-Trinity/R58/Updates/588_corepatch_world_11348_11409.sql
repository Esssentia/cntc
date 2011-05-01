DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=36477;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(36477,46598,0,0,0,0,0,0,0); -- Krick - Pit of Saron
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=32930;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(33909,65343,0,0,0,0,0,0,0),  -- Ride Vehicle Kologarn Arms
(32930,65343,0,0,0,0,0,0,0);  -- Ride Vehicle Kologarn Arms
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_gen_profession_research';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_item_book_of_glyph_mastery';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(60893, 'spell_gen_profession_research'),
(61177, 'spell_gen_profession_research'),
(61288, 'spell_gen_profession_research'),
(61756, 'spell_gen_profession_research'),
(64323, 'spell_item_book_of_glyph_mastery');
UPDATE `item_template` SET `ScriptName`='' WHERE `ScriptName`='item_harvesters_gift';
UPDATE `item_template` SET `ScriptName`='' WHERE `ScriptName`='item_flying_machine';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_item_gift_of_the_harvester';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dk_death_gate';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(52481, 'spell_item_gift_of_the_harvester'),
(52751, 'spell_dk_death_gate');
DELETE FROM `spell_proc_event` WHERE `entry` IN (71880,71892);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(71880,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,1,0,0), -- Item - Icecrown 25 Normal Dagger Proc
(71892,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,1,0,0); -- Item - Icecrown 25 Heroic Dagger Proc
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (24418,25765,26572,27761,28054,29500,30013,30174,30228,31269,31269,29563,28222,24750,27241,28018,29351,29358,29698,29931,30204,36477,36794,36891,36896,38500);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(24418,43768,0,0,0,3,0,0,0),  -- Steel Gate Flying Machine - Flying Machine Controls
(25765,43671,0,0,0,1,0,0,0),  -- Fizzcrank Bomber - Ride Vehicle
(35415,66245,0,0,0,1,0,0,0),
(35421,68503,0,0,0,1,0,0,0),
(35427,43671,0,0,0,1,0,0,0),
(35429,68458,0,0,0,1,0,0,0),
(37626,46598,0,0,0,1,0,0,0),
(37627,46598,0,0,0,1,0,0,0),
(37636,46598,0,0,0,1,0,0,0),
(26572,46598,0,0,0,1,0,0,0),  -- Kor'kron War Rider - Ride Vehicle Hardcoded
(27761,43671,0,0,0,1,0,0,0),  -- Fordragon Battle Steed - Ride Vehicle
(28054,50556,0,0,0,1,0,0,0),  -- Lucky Wilhelm - Ride Wilhelm
(29500,46598,0,0,0,1,0,0,0),  -- Brunnhildar Warbear - Ride Vehicle Hardcoded
(30013,43671,0,0,0,1,0,0,0),  -- Stormcrest Eagle - Ride Vehicle
(30174,46598,0,0,0,1,0,0,0),  -- Hyldsmeet Warbear - Ride Vehicle Hardcoded
(30228,56678,0,0,0,1,0,0,0),  -- Argent Skytalon - Command Argent Skytalon
(31269,46598,0,0,0,1,0,0,0),  -- Kor'kron Battle Wyvern - Ride Vehicle Hardcoded
(31269,46598,0,0,0,1,0,0,0),  -- Kor'kron Troop Transport - Ride Vehicle Hardcoded
(29563,56795,12983,1,1,2,0,0,0), -- Injured Icemaw Matriarch - Harnessed Icemaw Matriarch
(28222,52082,0,0,0,1,0,0,0),  -- The Etymidian - The Etymidian's Call
(24750,46598,0,0,0,1,0,0,0), -- Hidalgo the Master Falconer - Ride Vehicle Hardcoded
(27241,46598,0,0,0,1,0,0,0), -- Risen Gryphon - Ride Vehicle Hardcoded
(28018,46598,0,0,0,1,0,0,0), -- Thiassi the Lightning Bringer - Ride Vehicle Hardcoded
(29351,46598,0,0,0,1,0,0,0), -- Niffelem Frost Giant - Ride Vehicle Hardcoded
(29358,46598,0,0,0,1,0,0,0), -- Frostworg - Ride Vehicle Hardcoded
(29698,46598,0,0,0,1,0,0,0), -- Drakuru Raptor - Ride Vehicle Hardcoded
(29931,46598,0,0,0,1,0,0,0), -- Drakkari Rhino - Ride Vehicle Hardcoded
(30936,46598,0,0,0,1,0,0,0), -- Drakkari Rhino - Ride Vehicle Hardcoded
(30204,46598,0,0,0,1,0,0,0), -- Forgotten Depths Ambusher - Ride Vehicle Hardcoded
(36477,46598,0,0,0,0,0,0,0), -- Krick - Ride Vehicle Hardcoded
(36794,46598,0,0,0,1,0,0,0), -- Scourgelord Tyrannus - Ride Vehicle Hardcoded
(36891,46598,0,0,0,1,0,0,0), -- Iceborn Proto-Drake - Ride Vehicle Hardcoded
(36896,46598,0,0,0,1,0,0,0), -- Stonespine Gargoyle - Ride Vehicle Hardcoded
(38500,46598,0,0,0,1,0,0,0); -- Argent Warhorse - Ride Vehicle Hardcoded
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (24418,33113,36678,33214,35637,35633,35768,34658,35636,35638,35635,35640,35641,35634,33669,36476,36661) AND `spell_id`=46598;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(24418,46598,0,0,0,1,0,0,0),  -- Acherus Deathcharger - Ride Vehicle Hardcoded
(33113,46598,0,0,0,1,0,0,0),  -- Flame Leviathan - Ride Vehicle Hardcoded
(34003,46598,0,0,0,1,0,0,0),  -- Flame Leviathan - Ride Vehicle Hardcoded
(36678,46598,0,0,0,1,0,0,0), -- Professor Putricide - Ride Vehicle Hardcoded
(33214,46598,0,0,0,1,0,0,0), -- Mechanolift 304-A - Ride Vehicle Hardcoded
(35637,46598,0,0,0,1,0,0,0), -- Marshal Jacob Alerius' Mount - Ride Vehicle Hardcoded
(35633,46598,0,0,0,1,0,0,0), -- Ambrose Boltspark's Mount - Ride Vehicle Hardcoded
(35768,46598,0,0,0,1,0,0,0), -- Colosos' Mount - Ride Vehicle Hardcoded
(34658,46598,0,0,0,1,0,0,0), -- Jaelyne Evensong's Mount - Ride Vehicle Hardcoded
(35636,46598,0,0,0,1,0,0,0), -- Lana Stouthammer's Evensong's Mount - Ride Vehicle Hardcoded
(35638,46598,0,0,0,1,0,0,0), --  Mokra the Skullcrusher's Mount - Ride Vehicle Hardcoded
(35635,46598,0,0,0,1,0,0,0), -- Eressea Dawnsinger's Mount - Ride Vehicle Hardcoded
(35640,46598,0,0,0,1,0,0,0), -- Runok Wildmane's Mount - Ride Vehicle Hardcoded
(35641,46598,0,0,0,1,0,0,0), -- Zul'tore's Mount - Ride Vehicle Hardcoded
(35634,46598,0,0,0,1,0,0,0), -- Deathstalker Visceri's Mount - Ride Vehicle Hardcoded
(33669,46598,0,0,0,1,0,0,0), -- Demolisher Engineer Blastwrench - Ride Vehicle Hardcoded
(36476,46598,0,0,0,1,0,0,0), -- Ick - Ride Vehicle Hardcoded
(36661,46598,0,0,0,1,0,0,0); -- Rimefang - Ride Vehicle Hardcoded
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (30021,31748,32795,32796,34045,33782,33318,33323,33322,33317,33319,33316,33321,33324,33320,33845,33844,33217);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(30021,46598,0,0,0,1,0,0,0), -- Enormos - Ride Vehicle Hardcoded
(30021,55785,0,0,0,3,0,0,0), -- Enormos - Mammoth Jack
(31748,56378,0,0,0,1,0,0,0), -- Hover Disk (1)- Summon Disk
(32795,56378,0,0,0,1,0,0,0), -- Antipersonnel Cannon (1) - Ride Vehicle
(32796,60683,0,0,0,1,0,0,0), -- Battleground Demolisher (1) - Ride Vehicle
(34045,65030,0,0,0,1,0,0,0), -- Salvaged Chopper (1) - Ride Vehicle
(33782,63151,0,0,0,1,0,0,0), -- Argent Warhorse
(33318,63151,0,0,0,1,0,0,0), -- Exodar Elekk
(33323,63151,0,0,0,1,0,0,0), -- Silvermoon Hawkstrider
(33322,63151,0,0,0,1,0,0,0), -- Thunder Bluff Kodo
(33317,63151,0,0,0,1,0,0,0), -- Gnomeregan Mechanostrider
(33319,63151,0,0,0,1,0,0,0), -- Darnassian Nightsaber
(33316,63151,0,0,0,1,0,0,0), -- Ironforge Ram
(33321,63151,0,0,0,1,0,0,0), -- Darkspear Raptor
(33324,63151,0,0,0,1,0,0,0), -- Forsaken Warhorse
(33320,63151,0,0,0,1,0,0,0), -- Orgrimmar Wolf
(33845,63151,0,0,0,1,0,0,0), -- Quel''dorei Steed
(33844,63151,0,0,0,1,0,0,0), -- Sunreaver Hawkstrider
(33217,63151,0,0,0,1,0,0,0); -- Stormwind Steed
UPDATE `npc_spellclick_spells` SET `spell_id`=60682 WHERE `npc_entry`=32795 AND `spell_id`=56378; -- typo
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (33778,33687,32189,30330,29625,29433,29555,28614,35644,36558,27692,27756,27755);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(33778,43671,0,0,0,1,0,0,0), -- Tournament Hippogryph - Ride Vehicle
(33687,46598,0,0,0,1,0,0,0), -- Chillmaw - Ride Vehicle Hardcoded
(32189,46598,0,0,0,1,0,0,0), -- Skybreaker Recon Fighter - Ride Vehicle Hardcoded
(30330,46598,0,0,0,1,0,0,0), -- Jotunheim Proto-Drake - Ride Vehicle Hardcoded
(29625,46598,0,0,0,1,0,0,0), -- Hyldsmeet Proto-Drake - Ride Vehicle Hardcoded
(29433,47020,0,0,0,1,0,0,0), -- Goblin Sapper - Ride Vehicle
(29555,47020,0,0,0,1,0,0,0), -- Goblin Sapper - Ride Vehicle
(28614,46598,0,0,0,1,0,0,0), -- Scarlet Gryphon - Ride Vehicle Hardcoded
(35644,67830,0,0,0,1,0,0,0), -- Argent Warhorse - Ride Vehicle (guessed)
(36558,67830,0,0,0,1,0,0,0), -- Argent Battleworg - Ride Vehicle
(27692,49427,0,0,0,2,0,0,0), -- Emerald Drake
(27756,49463,0,0,0,2,0,0,0), -- Ruby Drake
(27755,49459,0,0,0,2,0,0,0); -- Amber Drake
INSERT IGNORE INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(35491,47020,0,0,0,1,0,0,0),
(28009,47020,0,0,0,1,0,0,0),
(28451,47020,0,0,0,1,0,0,0),
(25968,47020,0,0,0,1,0,0,0),
(38431,47020,0,0,0,1,0,0,0),
(38585,47020,0,0,0,1,0,0,0),
(38586,47020,0,0,0,1,0,0,0),
(38431,47020,0,0,0,1,0,0,0),
(38585,47020,0,0,0,1,0,0,0),
(38586,47020,0,0,0,1,0,0,0),
(39860,47020,0,0,0,1,0,0,0);

RENAME TABLE `vehicle_accessory` TO `vehicle_template_accessory`;
CREATE TABLE IF NOT EXISTS `vehicle_accessory` (
  `guid` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0,
  `accessory_entry` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0,
  `seat_id` TINYINT(1) NOT NULL DEFAULT 0,
  `minion` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  `description` TEXT NOT NULL,
  `summontype` TINYINT(3) UNSIGNED NOT NULL DEFAULT 6 COMMENT 'see enum TempSummonType',
  `summontimer` INT(10) UNSIGNED NOT NULL DEFAULT 30000 COMMENT 'timer, only relevant for certain summontypes',
  PRIMARY KEY (`guid`,`seat_id`)
) ENGINE=MYISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=36477; -- Krick isn't a vehicle
DELETE FROM `spell_proc_event` WHERE `entry`=55681;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(55681,0x00,6,0x00008000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0); -- Glyph of Shadow Word: Pain
DELETE FROM `command` WHERE `name` IN('reload vehicle_accessory','reload vehicle_template_accessory');
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('reload vehicle_accessory', 3, 'Syntax: .reload vehicle_accessory\n\nReloads GUID-based vehicle accessory definitions from the database.'),
('reload vehicle_template_accessory', 3, 'Syntax: .reload vehicle_template_accessory\n\nReloads entry-based vehicle accessory definitions from the database.');
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_item_map_of_the_geyser_fields';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(45853, 'spell_item_map_of_the_geyser_fields');
DELETE FROM `spell_dbc` WHERE `Id` IN (38758,38788,46251,45140,45144,45148);
INSERT INTO `spell_dbc` (`Id`,`Comment`) VALUES
(38758, '[PH] Quest reward: Exorcising the Trees'),
(38788, '[PH] Quest reward: Spirit Calling'),
(46251, '[PH] Quest reward: Blood for Blood'),
(45140, '[PH] Quest reward: Making Ready / Don''t Stop Now....'),
(45144, '[PH] Quest reward: Disrupt the Greengill Coast'),
(45148, '[PH] Quest reward: Ata''mal Armaments');
