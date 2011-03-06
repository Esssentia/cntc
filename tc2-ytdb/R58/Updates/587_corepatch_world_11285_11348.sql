DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (27692,27756,27755);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(27692,49427,0,0,0,2,0,0,0),  -- Emerald Drake
(27756,49463,0,0,0,2,0,0,0),  -- Ruby Drake
(27755,49459,0,0,0,2,0,0,0);  -- Amber Drake
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (35273,34775,34935);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(35273,68503,0,0,0,1,0,0,0), -- Glaive Thrower - Isle of Conquest
(34775,66245,0,0,0,1,0,0,0), -- Demolisher - Isle of Conquest
(34935,43671,0,0,0,1,0,0,0); -- Horde Gunship Cannon - Isle of Conquest
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=29563;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(29563,56795,12983,1,12983,1,0,0,0); -- Summon Harnessed Icemaw Matriarch
UPDATE `creature_template` SET `ScriptName`='' WHERE `entry`=21657; -- Neltharaku
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 55814 AND `spell_effect` = 55817 ;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(55814, 55817, 1, 'Eck Residue');
DELETE FROM `spell_script_names` WHERE `spell_id`=64702;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(64702, 'spell_ulduar_squeezed_lifeless');
DELETE FROM `spell_proc_event` WHERE entry = 54646;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(54646, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
DELETE FROM `spell_linked_spell` WHERE `spell_effect`=55475;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(55428,55475,0, 'Lifeblood (Rank 1)'),
(55480,55475,0, 'Lifeblood (Rank 2)'),
(55500,55475,0, 'Lifeblood (Rank 3)'),
(55501,55475,0, 'Lifeblood (Rank 4)'),
(55502,55475,0, 'Lifeblood (Rank 5)'),
(55503,55475,0, 'Lifeblood (Rank 6)');
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216 WHERE `entry` IN (SELECT `npc_entry` FROM `npc_spellclick_spells`); 
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (32640,32633,31861,31862,25743,27661,27258,27755,27756,27692,40725,32286,29929,29602,29709,27626,28851,
34120,30403,26813,26523,27496,27714,27996,28605,28606,28607,28833,30066,32930,28312,32627,33060,33067,33062,33109,34994,30234,27629,27924,28061,28192,28669,
28670,28817,28864,2914,29460,29679,29918,30468,30470,35064,30585,30645,33217,33319,33321,33519,33844,33845,39714);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(32640,61424,0,0,0,1,0,0,0),  -- Traveler's Tundra Mammoth
(32633,61424,0,0,0,1,0,0,0),  -- Traveler's Tundra Mammoth
(31861,61466,0,0,0,1,0,0,0),  -- Grand Black War Mammoth
(31862,61466,0,0,0,1,0,0,0),  -- Grand Black War Mammoth
(25743,46260,0,0,0,1,0,0,0),  -- Wooly Mammoth Bull
(27661,48365,0,0,0,1,0,0,0),  -- Wintergarde Gryphon
(27258,48365,0,0,0,1,0,0,0),  -- Wintergarde Gryphoworldn
(27755,49460,0,0,0,1,0,0,0),  -- Amber Drake
(27756,49464,0,0,0,1,0,0,0),  -- Ruby Drake
(27692,49346,0,0,0,1,0,0,0),  -- Emerald Drake
(40725,75953,0,0,0,1,0,0,0),  -- X-53 Touring Rocket
(32286,61666,0,0,0,1,0,0,0),  -- Mekgineer's Chopper
(29929,58961,0,0,0,1,0,0,0),  -- Mechano-hog
(29602,54908,0,0,0,1,0,0,0),  -- Icefang
(29709,55029,0,0,0,1,0,0,0),  -- Freed Proto-Drake
(27626,49138,0,0,0,1,0,0,0),  -- Tatjana's Horse
(28851,52600,0,0,0,1,0,0,0),  -- Enraged Mammoth
(34120,55089,0,0,0,1,0,0,0),  -- Brann's Flying Machine
(30403,56699,0,0,0,1,0,0,0),  -- Nergeld
(26813,47424,0,0,0,1,0,0,0),  -- Kor'kron War Rider
(26523,48296,0,0,0,1,0,0,0),  -- Forsaken Blight Spreader
(27496,48881,0,0,0,1,0,0,0),  -- Refurbished Shredder
(27714,49584,0,0,0,1,0,0,0),  -- 7th Legion Chain Gun
(27996,50343,0,0,0,1,0,0,0),  -- Wyrmrest Vanquisher
(28605,52263,0,0,0,1,0,0,0),  -- Havenshire Stallion
(28606,52263,0,0,0,1,0,0,0),  -- Havenshire Mare
(28607,52263,0,0,0,1,0,0,0),  -- Havenshire Colt
(28833,52447,0,0,0,1,0,0,0),  -- Scarlet Cannon
(30066,56678,0,0,0,1,0,0,0),  -- Argent Skytalon
(28312,60968,0,0,0,1,0,0,0),  -- Wintergrasp Siege Engine
(32627,60968,0,0,0,1,0,0,0),  -- Wintergrasp Siege Engine
(33060,65031,0,0,0,1,0,0,0),  -- Salvaged Siege Engine
(33067,65031,0,0,0,1,0,0,0),  -- Salvaged Siege Turret
(33062,65030,0,0,0,1,0,0,0),  -- Salvaged Chopper
(33109,62309,0,0,0,1,0,0,0),  -- Salvaged Demolisher
(34944,68458,0,0,0,1,0,0,0),  -- Keep Cannon
-- These use a 'proxy' cast. They summon a similar creature with SummonProperties.category = 4
(30234,56378,0,0,0,1,0,0,0),  -- Hover Disk
(27629,49207,0,0,0,1,0,0,0),  -- Wyrmrest Defender
(27924,50007,0,0,0,1,0,0,0),  -- Dragonflayer Harpoon
(28061,50557,0,0,0,1,0,0,0),  -- Wintergarde Gryphon
(28192,50860,0,0,0,1,0,0,0),  -- Archmage Pentarus' Flying Machine
(28669,52190,0,0,0,1,0,0,0),  -- Flying Fiend
(28670,53173,0,0,0,1,0,0,0),  -- Frostblood Vanquisher
(28817,52462,0,0,0,1,0,0,0),  -- Mine Car
(28864,52589,0,0,0,1,0,0,0),  -- Scourge Gryphon
(29414,18277,0,0,0,1,0,0,0),  -- Bone Gryphon
(29460,54513,0,0,0,1,0,0,0),  -- Frigit Proto-Drake
(29679,54952,0,0,0,1,0,0,0),  -- Hyldsmeet Proto-Drake
(29918,54301,0,0,0,1,0,0,0),  -- Warbear Matriarch
(30468,56795,0,0,0,1,0,0,0),  -- Harnessed Icemaw Matriarch
(30470,56839,0,0,0,1,0,0,0),  -- Skybreaker Cloudbuster
(30564,57401,0,0,0,1,0,0,0),  -- Njorndar Proto-Drake
(30585,57418,0,0,0,1,0,0,0),  -- Hammerhead
(30645,57612,0,0,0,1,0,0,0),  -- Water Terror
(33217,62774,0,0,0,1,0,0,0),  -- Stormwind Steed
(33319,62782,0,0,0,1,0,0,0),  -- Darnassian Nightsaber
(33321,62784,0,0,0,1,0,0,0),  -- Darkspear Raptor
(33519,63163,0,0,0,1,0,0,0),  -- Black Knight's Gryphon
(33844,63791,0,0,0,1,0,0,0),  -- Sunreaver Hawkstrider
(33845,63792,0,0,0,1,0,0,0),  -- Quel'dorei Steed
(39714,74205,0,0,0,1,0,0,0);  -- Shooting Mechano-Tank
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`unit_flags`=`unit_flags`|33600,`vehicleid`=212 WHERE `entry`=30021; -- Enormos
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`speed_run`=1,`vehicleid`=354 WHERE `entry`=33357; -- "Spectral Tiger"
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=33357 AND `spell_id`=75648;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(33357,75648,0,0,0,1,0,0,0); -- "Spectral Tiger"
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN(28781,27894,32627,32629,28366,28312,28319,28094,27881);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(28781,60683,0,0,0,1,0,0,0),  -- Battleground Demolisher
(27894,60682,0,0,0,1,0,0,0),  -- Antipersonnel Cannon
(32627,60968,0,0,0,1,0,0,0),  -- Wintergrasp Siege Engine
(32629,46598,0,0,0,1,0,0,0),  -- Wintergrasp Siege Turret
(28366,60962,0,0,0,1,0,0,0),  -- Wintergrasp Tower Cannon
(28312,46598,0,0,0,1,0,0,0),  -- Wintergrasp Siege Engine
(28319,46598,0,0,0,1,0,0,0),  -- Wintergrasp Siege Turret
(28094,60968,0,0,0,1,0,0,0),  -- Wintergrasp Demolisher
(27881,60968,0,0,0,1,0,0,0);  -- Wintergrasp Catapult
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=28366 AND `spell_id`=60962;  -- Wintergrasp Tower Cannon, duplicate from previous rev
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(28366,60962,0,0,0,1,0,0,0);  -- Wintergrasp Tower Cannon'
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (29625,29433,29555,25460,33778,28614,33687,30330,32189,30895,30337);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(29625,46598,0,0,0,1,0,0,0), -- Hyldsmeet Proto-Drake
(29433,47020,0,0,0,1,0,0,0), -- Goblin Sapper
(29555,47020,0,0,0,1,0,0,0), -- Goblin Sapper
(25460,46598,0,0,0,1,0,0,0), -- Amazing Flying Carpet
(33778,43671,0,0,0,1,0,0,0), -- Tournament Hippogryph
(28614,46598,0,0,0,1,0,0,0), -- Scarlet Gryphon
(33687,46598,0,0,0,1,0,0,0), -- Chillmaw
(30330,46598,0,0,0,1,0,0,0), -- Jotunheim Proto-Drake
(32189,46598,0,0,0,1,0,0,0), -- Skybreaker Recon Fighter
(30895,46598,0,0,0,1,0,0,0), -- Lithe Stalker
(30337,43671,13069,1,13069,1,0,0,0); -- Jotunheim Rapid-Fire Harpoon
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`speed_run`=1.5714285714286 WHERE `entry`=33870; -- Stabled Argent Warhorse
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`speed_run`=1.5714285714286 WHERE `entry`=33790; -- Stabled Exodar Elekk
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`speed_run`=1.5714285714286 WHERE `entry`=33791; -- Stabled Silvermoon Hawkstrider
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`speed_run`=1.5714285714286 WHERE `entry`=33792; -- Stabled Thunder Bluff Kodo
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`speed_run`=1.5714285714286 WHERE `entry`=33793; -- Stabled Gnomeregan Mechanostrider
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`speed_run`=1.5714285714286 WHERE `entry`=33794; -- Stabled Darnassian Nightsaber
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`speed_run`=1.5714285714286 WHERE `entry`=33795; -- Stabled Ironforge Ram
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`speed_run`=1.5714285714286 WHERE `entry`=33796; -- Stabled Darkspear Raptor
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`speed_run`=1.5714285714286 WHERE `entry`=33798; -- Stabled Forsaken Warhorse
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`speed_run`=1.5714285714286 WHERE `entry`=33799; -- Stabled Orgrimmar Wolf
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`speed_run`=1.5714285714286 WHERE `entry`=33800; -- Stabled Stormwind Steed
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`speed_run`=1.5714285714286 WHERE `entry`=33842; -- Stabled Sunreaver Hawkstrider
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`speed_run`=1.5714285714286 WHERE `entry`=33843; -- Stabled Quel'dorei Steed
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`unit_flags`=0,`speed_run`=1.5714285714286,`vehicleid`=349 WHERE `entry`=33782; -- Argent Warhorse
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`unit_flags`=0,`speed_run`=1.5714285714286,`vehicleid`=349 WHERE `entry`=33318; -- Exodar Elekk
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`unit_flags`=0,`speed_run`=1.5714285714286,`vehicleid`=349 WHERE `entry`=33323; -- Silvermoon Hawkstrider
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`unit_flags`=0,`speed_run`=1.5714285714286,`vehicleid`=349 WHERE `entry`=33322; -- Thunder Bluff Kodo
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`unit_flags`=0,`speed_run`=1.5714285714286,`vehicleid`=349 WHERE `entry`=33317; -- Gnomeregan Mechanostrider
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`unit_flags`=0,`speed_run`=1.5714285714286,`vehicleid`=349 WHERE `entry`=33319; -- Darnassian Nightsaber
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`unit_flags`=0,`speed_run`=1.5714285714286,`vehicleid`=349 WHERE `entry`=33316; -- Ironforge Ram
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`unit_flags`=0,`speed_run`=1.5714285714286,`vehicleid`=349 WHERE `entry`=33321; -- Darkspear Raptor
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`unit_flags`=0,`speed_run`=1.5714285714286,`vehicleid`=349 WHERE `entry`=33324; -- Forsaken Warhorse
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`unit_flags`=0,`speed_run`=1.5714285714286,`vehicleid`=349 WHERE `entry`=33320; -- Orgrimmar Wolf
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`unit_flags`=0,`speed_run`=1.5714285714286,`vehicleid`=349 WHERE `entry`=33845; -- Quel'dorei Steed
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`unit_flags`=0,`speed_run`=1.5714285714286,`vehicleid`=349 WHERE `entry`=33844; -- Sunreaver Hawkstrider
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`unit_flags`=0,`speed_run`=1.5714285714286,`vehicleid`=349 WHERE `entry`=33217; -- Stormwind Steed
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (33870,33790,33791,33792,33793,33794,33795,33796,33798,33799,33800,33842,33843);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(33870,63663,13664,1,1,1,62853,0,0), -- Stabled Argent Warhorse           - Summon Tournament Argent Charger         - requires quest The Black Knight's Fall (shall not be completed nor rewarded)
(33790,62781,13690,0,0,1,62853,0,0), -- Stabled Exodar Elekk              - Summon Tournament Elekk                  - requires quest A Valiant Of The Exodar
(33791,62786,13696,0,0,1,62853,0,0), -- Stabled Silvermoon Hawkstrider    - Summon Tournament Hawkstrider            - requires quest A Valiant Of Silvermoon
(33792,62785,13694,0,0,1,62853,0,0), -- Stabled Thunder Bluff Kodo        - Summon Tournament Kodo                   - requires quest A Valiant Of Thunder Bluff
(33793,62780,13688,0,0,1,62853,0,0), -- Stabled Gnomeregan Mechanostrider - Summon Tournament Mechanostrider         - requires quest A Valiant Of Gnomeregan
(33794,62782,13689,0,0,1,62853,0,0), -- Stabled Darnassian Nightsaber     - Summon Tournament Nightsaber             - requires quest A Valiant Of Darnassus
(33795,62779,13685,0,0,1,62853,0,0), -- Stabled Ironforge Ram             - Summon Tournament Ram                    - requires quest A Valiant Of Ironforge
(33796,62784,13693,0,0,1,62853,0,0), -- Stabled Darkspear Raptor          - Summon Tournament Raptor                 - requires quest A Valiant Of Sen'jin
(33798,62787,13695,0,0,1,62853,0,0), -- Stabled Forsaken Warhorse         - Summon Tournament Warhorse               - requires quest A Valiant Of Undercity
(33799,62783,13691,0,0,1,62853,0,0), -- Stabled Orgrimmar Wolf            - Summon Tournament Wolf                   - requires quest A Valiant Of Orgrimmar
(33800,62774,13684,0,0,1,62853,0,0), -- Stabled Stormwind Steed           - Summon Tournament Charger                - requires quest A Valiant Of Stormwind
(33842,63791,13668,0,0,1,62853,0,0), -- Stabled Sunreaver Hawkstrider     - Summon Tournament Hawkstrider (Aspirant) - requires quest The Argent Tournament (H/Argent Aspiration)
(33843,63792,13667,0,0,1,62853,0,0); -- Stabled Quel'dorei Steed          - Summon Tournament Steed (Aspirant)       - requires quest The Argent Tournament (A/Argent Aspiration)
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216 WHERE `entry` IN (31748,32795,32796,34045); -- Dificully entries
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216 WHERE `entry` IN (27894,28781,30234,33062); -- match npcflag with diffentries (that got updated on 2011_02_28_7)
UPDATE `creature_template` SET `ScriptName`='' WHERE `entry`=16518;
