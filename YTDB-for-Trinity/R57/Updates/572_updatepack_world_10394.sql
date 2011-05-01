# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 571_FIX_10340 572_FIX_10394 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('572_FIX_10394');

# NeatElves
UPDATE `quest_template` SET `RequiredRaces`=690 WHERE `entry`=14350;
UPDATE `creature_template` SET `gossip_menu_id` = '10557' WHERE `entry` =34730;
UPDATE creature SET position_x = '-3912.829102', position_y = '3723.145508', position_z = '296.414124', orientation = '2.198693' WHERE guid = '92082';
UPDATE creature SET position_x = '-3927.324707', position_y = '3778.768555', position_z = '291.506927', orientation = '2.905551' WHERE guid = '92077';
UPDATE creature SET position_x = '-3983.135010', position_y = '3697.187744', position_z = '292.900635', orientation = '4.728463' WHERE guid = '92075';
UPDATE creature SET position_x = '-4019.287109', position_y = '3602.985840', position_z = '283.285248', orientation = '3.068911' WHERE guid = '92079';
UPDATE creature SET position_x = '-4080.554199', position_y = '3583.278320', position_z = '302.283600', orientation = '1.685820' WHERE guid = '92074';
UPDATE creature SET position_x = '-4174.503906', position_y = '3353.862549', position_z = '266.957153', orientation = '1.209083' WHERE guid = '92094';
UPDATE creature SET position_x = '-4131.511230', position_y = '3371.601074', position_z = '285.248840', orientation = '6.006295' WHERE guid = '92081';
UPDATE creature SET position_x = '-4045.331543', position_y = '3454.896729', position_z = '277.203827', orientation = '0.934193' WHERE guid = '92078';
UPDATE creature SET position_x = '-4094.274902', position_y = '3285.455811', position_z = '289.295197', orientation = '4.803063' WHERE guid = '92810';
UPDATE creature SET position_x = '-4139.699219', position_y = '3280.928223', position_z = '291.348969', orientation = '3.723141' WHERE guid = '92080';
UPDATE creature SET position_x = '-4186.354492', position_y = '3260.128662', position_z = '292.121094', orientation = '2.302354' WHERE guid = '92083';
UPDATE creature SET position_x = '-4187.911133', position_y = '3186.955811', position_z = '316.510956', orientation = '0.155079' WHERE guid = '92090';
UPDATE creature SET position_x = '-4161.225098', position_y = '3114.762695', position_z = '319.371857', orientation = '0.740199' WHERE guid = '92811';
UPDATE creature SET position_x = '-4259.720703', position_y = '2982.583740', position_z = '314.257080', orientation = '0.883141' WHERE guid = '92089';
UPDATE creature SET position_x = '-3918.939697', position_y = '3263.353760', position_z = '297.771088', orientation = '4.288624' WHERE guid = '92084';
UPDATE creature SET position_x = '-3880.435547', position_y = '3182.163574', position_z = '318.769867', orientation = '1.176087' WHERE guid = '92087';
UPDATE creature SET position_x = '-3951.761475', position_y = '3014.202393', position_z = '357.972809', orientation = '5.908114' WHERE guid = '92088';
UPDATE creature SET position_x = '-3612.374023', position_y = '3710.623779', position_z = '283.825439', orientation = '2.404454' WHERE guid = '92086';
UPDATE creature SET position_x = '-3825.081055', position_y = '3749.882812', position_z = '278.263733', orientation = '3.051622' WHERE guid = '92085';
UPDATE creature SET position_x = '-4134.798340', position_y = '3779.063477', position_z = '366.506012', orientation = '4.770066' WHERE guid = '92093';
UPDATE creature SET position_x = '-3698.134766', position_y = '3684.316895', position_z = '277.989807', orientation = '3.336723' WHERE guid = '92092';
UPDATE creature SET position_x = '-4134.775879', position_y = '3491.023682', position_z = '286.782623', orientation = '4.350671' WHERE guid = '92091';

# virusav
DELETE FROM `creature` WHERE `id` IN (19419,11783);
DELETE FROM `creature_addon` WHERE `guid` IN (50029,50046,50047,50049,50060,52167,77879,77880,77881,77882,77883,77884,116026,116027);
DELETE FROM `waypoint_data` WHERE `id` IN (50029,50046,50047,50049,50060,52167,77879,77880,77881,77882,77883,77884,116026,116027);
DELETE FROM `event_scripts` WHERE `id`=11225;
INSERT INTO `event_scripts` SET `id`=11225, `command`=7, `datalong`=9718, `datalong2`=10;

# Forum_FIX
UPDATE `creature_template` SET `unit_flags` = 32768 WHERE `entry` = 37200;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(104378, 23219, 530, 1, 1, 0, 0, -3583.43, 3482.01, 286.535, 3.30835, 300, 5, 0, 6761, 0, 0, 1),
(104379, 23219, 530, 1, 1, 0, 0, -3607.32, 3445.24, 298.612, 2.93425, 300, 5, 0, 6761, 0, 0, 1),
(104380, 23219, 530, 1, 1, 0, 0, -4231.74, 3102.79, 331.26, 2.99799, 180, 5, 0, 6761, 0, 0, 1),
(104381, 23219, 530, 1, 1, 0, 0, -4128.9, 3282.62, 291.03, 2.68416, 180, 5, 0, 6761, 0, 0, 1),
(104382, 23219, 530, 1, 1, 0, 0, -4086.46, 3605.21, 313.85, 2.91249, 180, 5, 0, 6761, 0, 0, 1),
(104383, 23219, 530, 1, 1, 0, 0, -4144.58, 3554.15, 319.213, 5.5717, 180, 5, 0, 6761, 0, 0, 1),
(104384, 23219, 530, 1, 1, 0, 0, -4017.68, 3682.79, 300.721, 5.80542, 180, 5, 0, 6761, 0, 0, 1),
(104385, 23219, 530, 1, 1, 0, 0, -4120.2, 3440.34, 291.884, 4.48779, 180, 5, 0, 6761, 0, 0, 1),
(104386, 23219, 530, 1, 1, 0, 0, -3629.75, 3450.12, 283.498, 0.129198, 180, 5, 0, 6761, 0, 0, 1),
(104387, 23219, 530, 1, 1, 0, 0, -3587.48, 3721.54, 286.794, 1.72623, 180, 5, 0, 6761, 0, 0, 1),
(104388, 23219, 530, 1, 1, 0, 0, -4052.56, 3587.41, 289.699, 6.24117, 180, 5, 0, 6761, 0, 0, 1);
UPDATE `creature` SET `position_x` = 1635.83, `position_y` = 1090.6, `position_z` = 41.3971, `orientation` = 0.545251 WHERE `guid` = 100684;
UPDATE `quest_template` SET `PrevQuestId` = 12531 WHERE `entry` = 12535;
UPDATE `creature_template` SET `flags_extra` = 1 WHERE `entry` = 32273;
DELETE FROM `creature` WHERE `id`=27199;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(104389, 27199, 571, 1, 2, 0, 0, 4633.51, -4866.71, 36.3653, 0.164495, 300, 0, 0, 5939, 0, 0, 0);
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 26902;
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 18840;
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 18841;
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 18842;
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 18843;
DELETE FROM `creature_questrelation` WHERE `quest` = 10701;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 10701;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 10701;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (185035, 10701);
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (183811, 10701);
DELETE FROM `creature_involvedrelation` WHERE `quest` = 10701;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 10701;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (19570, 10701);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=19570;
DELETE FROM `creature_questrelation` WHERE `quest` = 10261;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 10261;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 10261;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (185035, 10261);
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (183811, 10261);
DELETE FROM `creature_involvedrelation` WHERE `quest` = 10261;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 10261;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (19645, 10261);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=19645;
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 18372;

# NeatElves
DELETE FROM `gameobject_questrelation` WHERE `id` in (68,69,142122,150075,156561,176115,177904,180448,181147,181153,183811,185166,181638,182165,182587,182588,184660,184945,184946,185035,182115,181889,183284,186426,188649);
REPLACE INTO `gameobject_questrelation` (`id`, `quest`) VALUES
(68, 176),
(156561, 176),
(150075, 2781),
(150075, 2875),
(176115, 5147),
(177904, 6284),
(180448, 8283),
(181147, 9156),
(181153, 9215),
(181638, 9466),
(181889, 9646),
(182115, 9730),
(182115, 9817),
(182165, 9820),
(182165, 10117),
(182587, 10033),
(182588, 10034),
(183284, 10116),
(183811, 10261),
(183811, 10701),
(184660, 10489),
(184945, 10647),
(184946, 10648),
(185035, 10690),
(185166, 10809),
(186426, 11184),
(142122, 2875),
(142122, 2781),
(188649, 12205);
DELETE FROM `gameobject` WHERE `guid` = 13879;
DELETE FROM `gameobject` WHERE `guid` = 19876;
DELETE FROM `gameobject` WHERE `guid` = 38694;
DELETE FROM `gameobject` WHERE `guid` = 38695;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(12232, 142122, 1, 1, 1, -6900.14, -4829.42, 7.99193, 2.53073, 0, 0, 0.953717, 0.300706, 300, 100, 1),
(8816, 156561, 0, 1, 1, -9750.33, 682.773, 27.071, -2.41728, 0.042439, -0.025885, 0.934403, -0.352732, 300, 100, 1),
(39381, 182165, 530, 1, 1, 281.859, 7866.53, 23.8576, -2.53073, 0, 0, 0.953717, -0.300706, 300, 100, 1),
(21750, 182588, 530, 1, 1, -2630.09, 4393.61, 34.8476, -1.15192, 0, 0, 0.544639, -0.838671, 300, 100, 1),
(38696, 183284, 530, 1, 1, 1022.22, 7376.59, 36.2678, 0.174533, 0, 0, 0.087156, 0.996195, 300, 100, 1),
(37379, 184660, 530, 1, 1, 2318.67, 6028.18, 142.615, 0.785398, 0, 0, 0.382683, 0.92388, 300, 100, 1),
(55227, 184945, 530, 1, 1, -3077.75, 2550.91, 63.0829, 3.08923, 0, 0, 0.999657, 0.026177, 300, 100, 1),
(55226, 184946, 530, 1, 1, -3926.44, 2123.04, 100.457, -1.50098, 0, 0, 0.681998, -0.731354, 300, 100, 1),
(55334, 185035, 530, 1, 1, 1974.51, 6859.62, 162.7, -2.51327, 0, 0, 0.951057, -0.309017, 300, 100, 1),
(55229, 185166, 530, 1, 1, -1294.99, 2378.99, 81.524, 0.802851, 0, 0, 0.390731, 0.920505, 300, 100, 1);
DELETE FROM `creature` WHERE `guid` = 104675;
DELETE FROM `creature` WHERE `guid` = 104676;
DELETE FROM `creature` WHERE `guid` = 104677;
DELETE FROM `creature` WHERE `guid` = 104678;
DELETE FROM `creature` WHERE `guid` = 104679;
DELETE FROM `creature` WHERE `guid` = 104680;
UPDATE `creature_template` SET `faction_A` = '1801',`faction_H` = '1801' WHERE `entry` in (35342,35343,35341,34685,34787,34684,34683);
UPDATE `creature_template` SET `faction_A` = '1802',`faction_H` = '1802' WHERE `entry` in (35337,35338,35340,34645,34681,34783,34682);
UPDATE `creature_template` SET `faction_A` = '1801',`faction_H` = '1801' WHERE `entry` in (34768,34678,34677,34714,34713,34712,34679);
UPDATE `creature_template` SET `faction_A` = '1802',`faction_H` = '1802' WHERE `entry` in (34675,34744,34676,34708,34711,34644,34710);
UPDATE `quest_template` SET `SpecialFlags` = 1 WHERE `entry` in (7927, 7928, 7929, 12518, 12798, 13311);
REPLACE INTO `creature_ai_scripts` VALUES ('1732651', '17326', '8', '0', '100', '1', '30877', '-1', '31000', '31000', '33', '17654', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q9629');
UPDATE `quest_template` SET `RequiredSkillValue` = '1' WHERE `entry` =12517;
UPDATE `creature_template` SET `flags_extra` = '2' WHERE `entry` =35507;
UPDATE `creature_template` SET `faction_A` = '190',`faction_H` = '190' WHERE `entry` in (36670,36669);
UPDATE `gameobject` SET `position_z` = '62.55' WHERE `guid` =39793;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(104390, 17887, 530, 1, 1, 0, 0, -2183.34, -10653.4, 58.4011, 1.91357, 300, 0, 0, 1, 97, 0, 0),
(104391, 17887, 530, 1, 1, 0, 0, -2155.94, -10655.8, 60.0574, 5.3866, 300, 0, 0, 1, 97, 0, 0),
(104392, 17887, 530, 1, 1, 0, 0, -2154.01, -10723.2, 59.0093, 4.80854, 300, 0, 0, 1, 97, 0, 0);
UPDATE `creature_template` SET `minlevel` = '70',`maxlevel` = '70',`faction_A` = '1956',`faction_H` = '1956',`mindmg` = '195',`maxdmg` = '293',`attackpower` = '73',`dmg_multiplier` = '0.9',`baseattacktime` = '1500',`rangeattacktime` = '1500',`minrangedmg` = '156',`maxrangedmg` = '234',`rangedattackpower` = '58' WHERE `entry` =37512;
UPDATE `creature_template` SET `minlevel` = '70',`maxlevel` = '70',`faction_A` = '1956',`faction_H` = '1956',`mindmg` = '142',`maxdmg` = '214',`attackpower` = '53',`dmg_multiplier` = '3',`baseattacktime` = '1500',`rangeattacktime` = '1500',`minrangedmg` = '114',`maxrangedmg` = '171',`rangedattackpower` = '42' WHERE `entry` =37510;
UPDATE `quest_template` SET `RequiredRaces` = '1024' WHERE `entry` in (9759,9762);
UPDATE `quest_template` SET `PrevQuestId` = '9740' WHERE `entry` =9759;
UPDATE `quest_template` SET `PrevQuestId` = '9694' WHERE `entry` =9706;
UPDATE `quest_template` SET `PrevQuestId` = '9706' WHERE `entry` =9711;
UPDATE `quest_template` SET `PrevQuestId` = '9694' WHERE `entry` =9779;
UPDATE `quest_template` SET `PrevQuestId` = '9700' WHERE `entry` =9703;
UPDATE `quest_template` SET `PrevQuestId` = '9703' WHERE `entry` =9748;
UPDATE `quest_template` SET `RequiredRaces` = '1101' WHERE `entry` in (9663,9666,9668,9693,9694,9706,9711,9779,9696,9698,9699,9700,9703,9748,9746,9740);
DELETE FROM `creature` WHERE `guid` = 100711;
REPLACE INTO `creature_ai_scripts` VALUES ('2497251', '24972', '8', '0', '100', '1', '44997', '-1', '2000', '2000', '41', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb');

# FIX
UPDATE `creature_template` SET `faction_A` = 31, `faction_H` = 31 WHERE `entry` = 17130;
UPDATE `quest_template` SET `RewChoiceItemId1` = 31492, `RewChoiceItemId2` = 31491, `RewChoiceItemId3` = 31490, `RewChoiceItemId4` = 31494, `RewChoiceItemId5` = 31493, `RewChoiceItemCount1` = 1, `RewChoiceItemCount2` = 1, `RewChoiceItemCount3` = 1, `RewChoiceItemCount4` = 1, `RewChoiceItemCount5` = 1 WHERE `entry` = 10870;
UPDATE `quest_template` SET `PrevQuestId` = 11063 WHERE `entry` = 11064;
UPDATE `quest_template` SET `PrevQuestId` = 11064 WHERE `entry` = 11067;
UPDATE `quest_template` SET `PrevQuestId` = 11067 WHERE `entry` = 11068;
UPDATE `quest_template` SET `PrevQuestId` = 11068 WHERE `entry` = 11069;
UPDATE `quest_template` SET `PrevQuestId` = 11069 WHERE `entry` = 11070;
UPDATE `quest_template` SET `PrevQuestId` = 11070 WHERE `entry` = 11071;
UPDATE `gameobject` SET `spawntimesecs` = 3600 WHERE `id` = 185915;
UPDATE `quest_template` SET `SpecialFlags` = 2 WHERE `entry` = 11064;
UPDATE `quest_template` SET `SpecialFlags` = 2 WHERE `entry` = 11070;
UPDATE `quest_template` SET `SpecialFlags` = 2 WHERE `entry` = 2936;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `guid` = 70536;
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` = 31216;
DELETE FROM `spell_scripts` WHERE `id`=43723;
INSERT INTO `spell_scripts` SET `id`=43723, `command`=15, `datalong`=43753;
UPDATE `creature_template` SET `flags_extra` = 64 WHERE `entry` = 2442;
UPDATE `creature_template` SET `flags_extra` = 64 WHERE `entry` = 32399;
UPDATE `creature_template` SET `flags_extra` = 64 WHERE `entry` = 32410;
UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14 WHERE `entry` IN (36899,38123);
UPDATE `creature_template` SET `trainer_type`='3' WHERE `entry` IN (543,2878,2879,3306,3545,3620,3622,3624,3688,3698,4320,10086,10088,10089,10090,16271,16675,16712,17484);
# NeatElves
DELETE FROM `creature` WHERE `guid` = 98170;
DELETE FROM `creature` WHERE `id` = 7550;
DELETE FROM `creature_involvedrelation` WHERE `id` = 27858 AND `quest` = 12474;
UPDATE `quest_template` SET `PrevQuestId` = '10917' WHERE `entry` =10918;
UPDATE `quest_template` SET `PrevQuestId` = '9989' WHERE `entry` =10196;
UPDATE `quest_template` SET `SpecialFlags` = '1' WHERE `entry` =10196;
UPDATE `quest_template` SET `PrevQuestId` = '9988' WHERE `entry` =10195;
UPDATE `quest_template` SET `SpecialFlags` = '1' WHERE `entry` =10195;
UPDATE `quest_template` SET `PrevQuestId` = '9992' WHERE `entry` =10028;
DELETE FROM `creature_questrelation` WHERE `quest` = 9988;
DELETE FROM `creature_questrelation` WHERE `quest` = 9989;
DELETE FROM `creature_questrelation` WHERE `quest` = 10196;
DELETE FROM `creature_questrelation` WHERE `quest` = 10195;
UPDATE `creature_template` SET `lootid` = '0' WHERE `entry` =22483;
DELETE FROM `creature_loot_template` WHERE `entry` = 22483;
DELETE FROM `creature` WHERE `id` = 22483;
DELETE FROM `creature` WHERE `id` = 22482;

# virusav
UPDATE `creature` SET `phasemask`=128 WHERE `guid` IN (88467,128069,128257,88469,128256,128070);
DELETE FROM `creature` WHERE `id`=18393;
UPDATE `quest_template` SET `reqspellcast1`=0 WHERE `entry`=9931;

# WDB
REPLACE INTO `npc_text` VALUES ('11965', 'I don\'t know why the Forsaken burn a wicker man every night of Hallow\'s End instead of a real one, but it\'s their holiday.', 'I don\'t know why the Forsaken burn a wicker man every night of Hallow\'s End instead of a real one, but it\'s their holiday.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0',12340);
REPLACE INTO `npc_text` VALUES ('13062', 'Welcome to Booty Bay, partner. Don\'t mind DeMeza and her crew... we let the hellion run riot one day a year, Pirates\' Day, and then she leaves us in peace to go plunder the South Seas again.$B$BNow then... what can this humble servant of the Steamwheedle Cartel do for you? Better still - what can you do for me, eh?', '', '0', '1', '0', '3', '0', '1', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0',12340);
REPLACE INTO `npc_text` VALUES ('13065', '', 'Ahoy! It\'s Pirates\' Day, ye know... and \'til the sun rises on the morrow, Booty Bay is MINE.', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0',12340);

# FIX
REPLACE INTO `creature_template_addon` (`entry`,`bytes2`,`auras`) VALUES
(31144,1, '61573 0'),
(31146,1, '61573 0'),
(32666,1, '61573 0'),
(32667,1, '61573 0');
INSERT INTO `quest_end_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(12657,0,10,28487,46000,0,2486.72,-5598.66,372.16,6.02),
(12657,0,10,28487,46000,0,2439.31,-5608.69,372.16,3.77),
(12657,0,10,28487,46000,0,2455.59,-5618.32,372.16,4.59),
(12657,0,10,28487,46000,0,2434.52,-5588.56,372.16,3.26),
(12657,0,10,28487,46000,0,2465.47,-5567.3,372.16,1.64);
DELETE FROM `spell_target_position` WHERE `id`=57535;
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES 
(57535,571,6204.58,-11.9635,410.2513,3.842147);
DELETE FROM `spell_target_position` WHERE `id`=57541;
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES 
(57541,1,7842.86,-2213.05,470.9303,2.507721);
DELETE FROM `spell_target_position` WHERE `id` IN (57677,57747,57746,57782,57786,57773);
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES 
(57677,530,-1892.043,5429.297,-12.4278,0.04932),
(57747,571,8138.4,436.835,574.7193,2.373648),
(57746,571,8152.51,407.96,596.4303,2.058445),
(57782,571,8134.81,416.529,588.3063,1.48353),
(57786,571,8156.95,429.846,591.2693,2.583087),
(57773,571,8138.4,436.835,574.7193,5.535897);
UPDATE `quest_template` SET `StartScript`=13074 WHERE `entry`=13074;
UPDATE `quest_template` SET `StartScript`=13082,`CompleteScript`=13082 WHERE `entry`=13082;
DELETE FROM `quest_start_scripts` WHERE `id` IN (13074,13082);
INSERT INTO `quest_start_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`) VALUES
(13074,1,15,57413,0),
(13082,1,15,53141,0);
DELETE FROM `quest_end_scripts` WHERE `id` IN (13082);
INSERT INTO `quest_end_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`) VALUES
(13082,0,15,57747,0),
(13082,0,15,57746,0),
(13082,0,15,57782,0),
(13082,0,15,57786,0),
(13082,0,15,57773,0);
DELETE FROM `spell_scripts` WHERE `id`=47097;
INSERT INTO `spell_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES 
(47097,0,15,47324,0,0,0,0,0,0),
(47097,0,15,47325,0,0,0,0,0,0);
DELETE FROM `spell_target_position` WHERE `id`=56679;
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES 
(56679,571,6115.63,-27.0768,385.5934,3.9334);
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 30090;
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 33403;

# NeatElves
UPDATE `gossip_menu_option` SET `option_text` = 'I would like to buy from you.' WHERE `menu_id` =10281 AND `id` =1;
UPDATE `creature_template` SET `gossip_menu_id` = '11383' WHERE `entry` =40441;
DELETE FROM `gossip_menu` WHERE `entry`=11383 AND `text_id`=15853;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11383,15853);
DELETE FROM `gossip_menu` WHERE `entry` = 10662 AND `text_id` = 14790;
DELETE FROM `creature_loot_template` WHERE `entry` = 26447 AND `item` = 38303;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '100' WHERE `item` =38303;
UPDATE `creature_template` SET `gossip_menu_id`=6232 WHERE `entry`=14866;
UPDATE `creature_template` SET `gossip_menu_id`=6582 WHERE `entry`=10445;
DELETE FROM `gossip_menu` WHERE `entry` in (10445,50008,50009,50014,50015,50026,50021,50022,6233);
DELETE FROM `gossip_menu_option` WHERE `menu_id` in (10445,50014,50015);
UPDATE `locales_gossip_menu_option` SET `menu_id` = '6582' WHERE `menu_id` =10445;
UPDATE `locales_gossip_menu_option` SET `menu_id` = '6579' WHERE `menu_id` =50014;
UPDATE `locales_gossip_menu_option` SET `menu_id` = '6581' WHERE `menu_id` =50015;
UPDATE `creature_template` SET `gossip_menu_id`=6489 WHERE `entry`=14846;
UPDATE `gossip_menu_option` SET `menu_id` = '6489' WHERE `menu_id` =6233;
UPDATE `gossip_menu_option` SET `option_text` = 'You mean to tell me you sell frogs?' WHERE `menu_id` =6231 AND `id` =0;
DELETE FROM `gossip_menu` WHERE `entry` in (5752,50035);
UPDATE `creature_template` SET `gossip_menu_id`=6024 WHERE `entry`=14392;
UPDATE `gossip_menu_option` SET `menu_id` = '6024' WHERE `menu_id` =5752;
UPDATE `creature_template` SET `gossip_menu_id`=9593 WHERE `entry`=27785;
UPDATE `creature_template` SET `gossip_menu_id`=10119 WHERE `entry`=31648;
UPDATE `creature_template` SET `gossip_menu_id`=10203 WHERE `entry`=32524;
DELETE FROM `gossip_menu` WHERE `entry` = 27785 AND `text_id` = 12946;
UPDATE `gossip_menu_option` SET `menu_id` = '9593' WHERE `menu_id` =27785;
UPDATE `gossip_menu_option` SET `option_text` = 'It''s a pleasure to meet you as well, Arch Druid. I am on a task from Tirion and time is short, might I trouble you for a portal to Moonglade?',`action_menu_id` = '9992' WHERE `menu_id` =9991 AND `id` =0;
UPDATE `creature_template` SET `gossip_menu_id`=4679 WHERE `entry`=837;
UPDATE `gossip_menu_option` SET `option_text` = 'I seek training in the ways of the Hunter.' WHERE `menu_id` =4675 AND `id` =1;
UPDATE `creature_template` SET `gossip_menu_id`=4686 WHERE `entry`=944;
UPDATE `gossip_menu_option` SET `option_text` = 'I require warrior training.' WHERE `menu_id` =7263 AND `id` =0;
UPDATE `gossip_menu_option` SET `option_text` = 'I am prepared to join the assault, Keritose. Do you have a skeletal gryphon ready for me?' WHERE `menu_id` =10110 AND `id` =1;
UPDATE `gossip_menu_option` SET `option_text` = 'I am prepared to join the assault, Keritose. Do you have a skeletal gryphon ready for me?' WHERE `menu_id` =10110 AND `id` =2;
UPDATE `creature_template` SET `gossip_menu_id`=8612 WHERE `entry`=16621;
UPDATE `creature_template` SET `gossip_menu_id`=7558 WHERE `entry`=17717;
UPDATE `creature_template` SET `gossip_menu_id`=10112 WHERE `entry`=30944;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=31078;
UPDATE `creature_template` SET `gossip_menu_id`=10135 WHERE `entry`=31737;
UPDATE `creature_template` SET `gossip_menu_id`=9877 WHERE `entry`=27928;
UPDATE `creature_template` SET `gossip_menu_id`=9765 WHERE `entry`=28406;
UPDATE `creature_template` SET `gossip_menu_id`=9751 WHERE `entry`=28908;
UPDATE `gossip_menu_option` SET `option_text` = 'Salanar, I must return to the Realm of Shadows.' WHERE `menu_id` =9739 AND `id` =0;
UPDATE `gossip_menu_option` SET `option_text` = 'I require warrior training.' WHERE `menu_id` =4525 AND `id` =1;
UPDATE `gossip_menu_option` SET `option_text` = 'I require warrior training.' WHERE `menu_id` =4526 AND `id` =1;
UPDATE `gossip_menu_option` SET `option_text` = 'I require warrior training.' WHERE `menu_id` =4527 AND `id` =1;
UPDATE `creature_template` SET `gossip_menu_id`=4159 WHERE `entry`=11066;
UPDATE `creature_template` SET `gossip_menu_id`=1681 WHERE `entry`=9076;
UPDATE `creature_template` SET `gossip_menu_id`=5856 WHERE `entry`=5759;
UPDATE `creature_template` SET `gossip_menu_id`=4202 WHERE `entry`=5695;
UPDATE `creature_template` SET `gossip_menu_id`=4015 WHERE `entry`=4773;
UPDATE `creature_template` SET `gossip_menu_id`=4168 WHERE `entry`=3345;
UPDATE `creature_template` SET `gossip_menu_id`=63 WHERE `entry`=2128;
UPDATE `creature_template` SET `gossip_menu_id`=4656 WHERE `entry`=2127;
UPDATE `creature_template` SET `gossip_menu_id`=3645 WHERE `entry`=2129;
UPDATE `creature_template` SET `gossip_menu_id`=85 WHERE `entry`=2130;
UPDATE `creature_template` SET `gossip_menu_id`=6461 WHERE `entry`=10360;
UPDATE `gossip_menu_option` SET `menu_id` = '6461' WHERE `menu_id`='50314';
DELETE FROM `gossip_menu` WHERE `entry` in (6461,50314);
UPDATE `locales_gossip_menu_option` set `menu_id`= '6461' WHERE `menu_id`='50314';
UPDATE `gossip_menu_option` SET `option_text` = 'I would like to go to the battleground.' WHERE `menu_id` =6461 AND `id` =0;
UPDATE `gossip_menu_option` SET `option_text` = 'I would like to go to the battleground.' WHERE `option_text` LIKE 'I want to join the Battle Ground';
UPDATE `creature_template` SET `gossip_menu_id`=6492 WHERE `entry`=15105;
UPDATE `creature_template` SET `gossip_menu_id`=6492 WHERE `entry`=20269;
DELETE FROM `gossip_menu` WHERE `entry` in (6492,50320);
UPDATE `gossip_menu_option` SET `menu_id` = '6492' WHERE `menu_id`='50320';
UPDATE `locales_gossip_menu_option` set `menu_id`= '6492' WHERE `menu_id`='50320';
UPDATE `gossip_menu_option` SET `option_text` = 'I wish to join the battle!' WHERE `menu_id` =6492 AND `id` =0;
UPDATE `creature_template` SET `gossip_menu_id`=6529 WHERE `entry`=15180;
UPDATE `creature_template` SET `gossip_menu_id`=6796 WHERE `entry`=15540;
UPDATE `creature_template` SET `gossip_menu_id`=6530 WHERE `entry`=15181;
UPDATE `creature_template` SET `gossip_menu_id`=6532 WHERE `entry`=15183;
UPDATE `creature_template` SET `gossip_menu_id`=6541 WHERE `entry`=15191;
UPDATE `creature_template` SET `gossip_menu_id`=6564 WHERE `entry`=15270;
UPDATE `creature_template` SET `gossip_menu_id`=6567 WHERE `entry`=15282;
UPDATE `creature_template` SET `gossip_menu_id`=6583 WHERE `entry`=15306;
UPDATE `creature_template` SET `gossip_menu_id`=6927 WHERE `entry`=15500;
UPDATE `creature_template` SET `gossip_menu_id`=6928 WHERE `entry`=15498;
UPDATE `creature_template` SET `gossip_menu_id`=5741 WHERE `entry`=14374;
UPDATE `creature_template` SET `gossip_menu_id`=6791 WHERE `entry`=15722;
UPDATE `creature_template` SET `gossip_menu_id`=6525 WHERE `entry`=15174;
UPDATE `creature_template` SET `gossip_menu_id`=1581 WHERE `entry`=16458;
UPDATE `creature_template` SET `gossip_menu_id`=342 WHERE `entry`=6272;
UPDATE `creature_template` SET `gossip_menu_id`=345 WHERE `entry`=7744;
UPDATE `creature_template` SET `gossip_menu_id`=6944 WHERE `entry`=4407;
UPDATE `creature_template` SET `gossip_menu_id`=6563 WHERE `entry`=15177;
UPDATE `creature_template` SET `gossip_menu_id`=6528 WHERE `entry`=15179;
UPDATE `creature_template` SET `gossip_menu_id`=4133 WHERE `entry`=7948;
UPDATE `creature_template` SET `gossip_menu_id`=4243 WHERE `entry`=11097;
DELETE FROM `gossip_menu` WHERE `entry` = 50243;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 50243;
UPDATE `locales_gossip_menu_option` set `menu_id`= '6525' WHERE `menu_id`='50243';
UPDATE `creature_template` SET `gossip_menu_id`=7386 WHERE `entry`=17223;
UPDATE `creature_template` SET `gossip_menu_id`=7418 WHERE `entry`=16543;
UPDATE `creature_template` SET `gossip_menu_id`=7175 WHERE `entry`=16284;
UPDATE `creature_template` SET `gossip_menu_id`=7174 WHERE `entry`=16283;
UPDATE `creature_template` SET `gossip_menu_id`=7103 WHERE `entry`=16134;
UPDATE `creature_template` SET `gossip_menu_id`=7105 WHERE `entry`=16133;
UPDATE `creature_template` SET `gossip_menu_id`=7157 WHERE `entry`=16212;
UPDATE `creature_template` SET `gossip_menu_id`=7100 WHERE `entry`=16114;
UPDATE `creature_template` SET `gossip_menu_id`=7098 WHERE `entry`=16113;
UPDATE `creature_template` SET `gossip_menu_id`=7045 WHERE `entry`=16091;

# FIX
UPDATE `creature_template` SET `mechanic_immune_mask` = 803160063 WHERE `entry` = 37133;
UPDATE `creature_template` SET `mechanic_immune_mask` = 803160063 WHERE `entry` = 38133;
UPDATE `creature_template` SET `mechanic_immune_mask` = 803160063 WHERE `entry` = 37890;
UPDATE `creature_template` SET `mechanic_immune_mask` = 803160063 WHERE `entry` = 38393;
UPDATE `creature_template` SET `mechanic_immune_mask` = 803160063 WHERE `entry` = 38628;
UPDATE `creature_template` SET `mechanic_immune_mask` = 803160063 WHERE `entry` = 38629;
UPDATE `quest_template` SET `NextQuestId` = 0 WHERE `entry` = 12841;
UPDATE `quest_template` SET `RequiredRaces` = 690 WHERE `entry` = 12905;
UPDATE `quest_template` SET `RequiredRaces` = 690 WHERE `entry` = 12906;
UPDATE `quest_template` SET `RequiredRaces` = 690 WHERE `entry` = 12907;
UPDATE `quest_template` SET `RequiredRaces` = 690, `NextQuestId` = 0 WHERE `entry` = 12908;
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 12921;
UPDATE `quest_template` SET `NextQuestId` = 0 WHERE `entry` = 12971;
UPDATE `quest_template` SET `RequiredRaces` = 690 WHERE `entry` = 12972;
UPDATE `quest_template` SET `RequiredRaces` = 690 WHERE `entry` = 12851;
UPDATE `quest_template` SET `RequiredRaces` = 690 WHERE `entry` = 12856;
UPDATE `quest_template` SET `RequiredRaces` = 690 WHERE `entry` = 13063;
UPDATE `quest_template` SET `RequiredRaces` = 690 WHERE `entry` = 12900;
DELETE FROM `creature_loot_template` WHERE (`entry`=12498) AND (`item`=21147);
DELETE FROM `creature_loot_template` WHERE (`entry`=14889) AND (`item`=21147);
DELETE FROM `creature_loot_template` WHERE (`entry`=5314) AND (`item`=21147);
UPDATE creature_loot_template SET ChanceOrQuestChance='-50' WHERE item = 21147;
DELETE FROM `creature_loot_template` WHERE (`entry`=14890) AND (`item`=21149);
UPDATE creature_loot_template SET ChanceOrQuestChance='-100' WHERE item = 21149;
UPDATE creature_loot_template SET ChanceOrQuestChance='-50' WHERE item = 21148;
DELETE FROM `creature_loot_template` WHERE (`entry`=12496) AND (`item`=21146);
DELETE FROM `creature_loot_template` WHERE (`entry`=5718) AND (`item`=21146);
DELETE FROM `creature_loot_template` WHERE (`entry`=14888) AND (`item`=21146);
UPDATE creature_loot_template SET ChanceOrQuestChance='-50' WHERE item = 21146;

# NeatElves
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 9014 AND `id` = 4;
DELETE FROM `gossip_menu` WHERE `entry` in (50290,50292,50286,50288,50244);
UPDATE `creature_template` SET `gossip_menu_id`=7096 WHERE `entry`=16116;
UPDATE `creature_template` SET `gossip_menu_id`=7099 WHERE `entry`=16112;
UPDATE `creature_template` SET `gossip_menu_id`=7101 WHERE `entry`=16131;
UPDATE `creature_template` SET `gossip_menu_id`=7102 WHERE `entry`=16132;
UPDATE `creature_template` SET `gossip_menu_id`=7173 WHERE `entry`=16256;
UPDATE `locales_gossip_menu_option` set `menu_id`= '7173' WHERE `menu_id`='50244';
UPDATE `gossip_menu_option` SET `menu_id` = '7173' WHERE `menu_id`='50244';
UPDATE `locales_gossip_menu_option` set `menu_id`= '7096' WHERE `menu_id`='50292';
UPDATE `gossip_menu_option` SET `menu_id` = '7096' WHERE `menu_id`='50292';
UPDATE `locales_gossip_menu_option` set `menu_id`= '7099' WHERE `menu_id`='50290';
UPDATE `gossip_menu_option` SET `menu_id` = '7099' WHERE `menu_id`='50290';
UPDATE `locales_gossip_menu_option` set `menu_id`= '7101' WHERE `menu_id`='50286';
UPDATE `gossip_menu_option` SET `menu_id` = '7101' WHERE `menu_id`='50286';
UPDATE `locales_gossip_menu_option` set `menu_id`= '7102' WHERE `menu_id`='50288';
UPDATE `gossip_menu_option` SET `menu_id` = '7102' WHERE `menu_id`='50288';
UPDATE `creature_template` SET `gossip_menu_id`=7587 WHERE `entry`=18008;
UPDATE `creature_template` SET `gossip_menu_id`=7712 WHERE `entry`=18542;
UPDATE `creature_template` SET `gossip_menu_id`=7481 WHERE `entry`=18914;
UPDATE `creature_template` SET `gossip_menu_id`=7481 WHERE `entry`=18908;
UPDATE `creature_template` SET `gossip_menu_id`=7855 WHERE `entry`=18907;
UPDATE `creature_template` SET `gossip_menu_id`=9476 WHERE `entry`=27052;
UPDATE `creature_template` SET `gossip_menu_id`=8806 WHERE `entry`=23731;
UPDATE `creature_template` SET `gossip_menu_id`=8375 WHERE `entry`=21110;
UPDATE `creature_template` SET `gossip_menu_id`=8352 WHERE `entry`=21691;
UPDATE `creature_template` SET `gossip_menu_id`=9511 WHERE `entry`=26673;
UPDATE `creature_template` SET `gossip_menu_id`=9851 WHERE `entry`=26973;
UPDATE `creature_template` SET `gossip_menu_id`=8560 WHERE `entry`=21766;
UPDATE `creature_template` SET `gossip_menu_id`=8057 WHERE `entry`=20080;
UPDATE `creature_template` SET `gossip_menu_id`=8058 WHERE `entry`=20081;
UPDATE `creature_template` SET `gossip_menu_id`=8059 WHERE `entry`=20082;
UPDATE `creature_template` SET `gossip_menu_id`=7879 WHERE `entry`=18993;
DELETE FROM `gossip_menu` WHERE `entry` in (50247,50250,50251,50254);
UPDATE `gossip_menu_option` SET `menu_id` = '7855' WHERE `menu_id`='50247';
UPDATE `gossip_menu_option` SET `menu_id` = '9476' WHERE `menu_id`='50250';
UPDATE `gossip_menu_option` SET `menu_id` = '8806' WHERE `menu_id`='50251';
UPDATE `gossip_menu_option` SET `menu_id` = '8375' WHERE `menu_id`='50254';
UPDATE `locales_gossip_menu_option` set `menu_id`= '7855' WHERE `menu_id`='50247';
UPDATE `locales_gossip_menu_option` set `menu_id`= '9476' WHERE `menu_id`='50250';
UPDATE `locales_gossip_menu_option` set `menu_id`= '8806' WHERE `menu_id`='50251';
UPDATE `locales_gossip_menu_option` set `menu_id`= '8375' WHERE `menu_id`='50254';
UPDATE `gossip_menu_option` SET `option_text` = 'Let me browse your goods.' WHERE `menu_id` =7173 AND `id` =3;
UPDATE `gossip_menu_option` SET `option_text` = 'I wish to browse your wares, Hazel.' WHERE `menu_id` =8806 AND `id` =3;
UPDATE `gossip_menu_option` SET `option_text` = 'I wish to browse your wares, Calandrath.' WHERE `menu_id` =6525 AND `id` =3;
UPDATE `gossip_menu_option` SET `option_text` = 'I would like to buy from you.' WHERE `menu_id` =3461 AND `id` =2;
UPDATE `gossip_menu_option` SET `option_text` = 'I need another Argent Dawn Commission.' WHERE `menu_id` =3461 AND `id` =1;
UPDATE `gossip_menu_option` SET `option_text` = 'Miranda, could you please tell me the insignia cost of items that you are offering for adventurers with other reputations?' WHERE `menu_id` =3461 AND `id` =3;
DELETE FROM `gossip_menu` WHERE `entry` in (50303,50293,50294,50295,50296,50297,50298,50299,50300,50301,50302,50291,50287,50289,50280);
DELETE FROM `gossip_menu_option` WHERE `menu_id` in (50293,50294,50295,50296,50297,50298,50299,50300,50301);
UPDATE `gossip_menu_option` SET `action_menu_id` = '7150' WHERE `menu_id` =7096 AND `id` =2;
UPDATE `gossip_menu_option` SET `action_menu_id` = '7135' WHERE `menu_id` =7096 AND `id` =1;
UPDATE `locales_gossip_menu_option` set `menu_id`= '7135' WHERE `menu_id`='50293';
UPDATE `locales_gossip_menu_option` set `menu_id`= '7134' WHERE `menu_id`='50294';
UPDATE `locales_gossip_menu_option` set `menu_id`= '7133' WHERE `menu_id`='50295';
UPDATE `locales_gossip_menu_option` set `menu_id`= '7132' WHERE `menu_id`='50296';
UPDATE `locales_gossip_menu_option` set `menu_id`= '7131' WHERE `menu_id`='50297';
UPDATE `locales_gossip_menu_option` set `menu_id`= '7130' WHERE `menu_id`='50298';
UPDATE `locales_gossip_menu_option` set `menu_id`= '7129' WHERE `menu_id`='50299';
UPDATE `locales_gossip_menu_option` set `menu_id`= '7128' WHERE `menu_id`='50300';
UPDATE `locales_gossip_menu_option` set `menu_id`= '7127' WHERE `menu_id`='50301';
UPDATE `gossip_menu_option` SET `option_text` = 'Korfax, where can I find Dark Iron scraps?',`action_menu_id` = '7151' WHERE `menu_id` =7099 AND `id` =1;
UPDATE `gossip_menu_option` SET `action_menu_id` = '7145' WHERE `menu_id` =7101 AND `id` =1;
UPDATE `gossip_menu_option` SET `option_text` = 'Where can I find crypt fiend parts, Leopold?',`action_menu_id` = '7144' WHERE `menu_id` =7102 AND `id` =1;
UPDATE `gossip_menu_option` SET `option_text` = 'Rayne, where should I look for savage fronds?',`action_menu_id` = '7152' WHERE `menu_id` =7104 AND `id` =1;
UPDATE `gameobject` SET `phaseMask` = 65 WHERE `id` = 193091;
UPDATE `gameobject` SET `phaseMask` = 65 WHERE `id` = 193092;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 81423;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 81308;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 81305;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 81307;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 126118;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 80928;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 63066;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 74669;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 61459;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 81405;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 49648;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 49421;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 81416;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 81451;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 81406;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 81201;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 81412;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40110;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40109;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 17347;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 17314;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 17408;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 33938;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 23994;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 23992;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 24093;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 23950;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 81274;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 81273;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 92236;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 23941;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 23931;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91711;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 23942;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91758;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 102566;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 95624;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 95621;
DELETE FROM gameobject WHERE guid = '49045';
INSERT INTO gameobject VALUES ( 49045, 182012, 530, 1,1,-1925.65, -11855.1, 50.4178, 2.10679, 0, 0, 0.869107, 0.494623, 120, 100, 1);
UPDATE `creature` SET `phaseMask` = 3 WHERE `id` = 29351;
UPDATE `creature` SET `phaseMask` = 3 WHERE `id` = 29358;
DELETE FROM `locales_gameobject` WHERE `entry` = 0;
DELETE FROM `creature_template_addon` WHERE `entry` = 28739;
DELETE FROM `locales_npc_text` WHERE `entry` = 0;
DELETE FROM `locales_gameobject` WHERE `entry` = 0;
UPDATE `creature_template` SET `gossip_menu_id` = '32346' WHERE `entry` =32346;
REPLACE INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES ('2000000423', 'Do not do anything that would the incite Horde. $N. The Warchief has agreed to see us on good faith.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (2655, 193948, 0, 1, 1, -8446.27, 331.013, 122.163, 1.4659, 0, 0, 0.669065, 0.743204, -120, 100, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(104393, 32346, 0, 1, 1, 0, 0, -8443.52, 331.658, 122.579, 2.36518, 300, 0, 0, 5907158, 746240, 0, 0);
REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(2873951, 28739, 8, 0, 100, 0, 52227, -1, 30000, 30000, 33, 28739, 6, 0, 11, 52231, 0, 31, 23, 1, 0, 0, 'ytdb-q12669'),
(2873952, 28739, 1, 1, 100, 1, 30000, 30000, 0, 0, 28, 0, 52231, 0, 41, 0, 0, 0, 0, 0, 0, 0, 'ytdb-q12669');
UPDATE `creature` SET `spawntimesecs` = '30' WHERE `id` =28739;
UPDATE `quest_template` SET `RequiredRaces` = '0' WHERE `entry` =12673;
UPDATE `gameobject` SET `animprogress` = 100 WHERE `guid` = 52980;
UPDATE `creature_template` SET `npcFlag` = '1' WHERE `entry` =32346;

# FIX
INSERT IGNORE INTO creature_onkill_reputation(creature_id, RewOnKillRepFaction1, RewOnKillRepFaction2, MaxStanding1, IsTeamAward1, RewOnKillRepValue1, MaxStanding2, IsTeamAward2, RewOnKillRepValue2, TeamDependent) VALUES
(31464,1037,1052,7,0,250,7,0,250,1),
(31469,1037,1052,7,0,250,7,0,250,1),
(31456,1037,1052,7,0,250,7,0,250,1),
(31465,1037,1052,7,0,250,7,0,250,1),
(31454,1037,1052,7,0,15,7,0,15,1),
(31452,1037,1052,7,0,15,7,0,15,1),
(31453,1037,1052,7,0,15,7,0,15,1),
(31475,1037,1052,7,0,15,7,0,15,1),
(31470,1037,1052,7,0,15,7,0,15,1),
(31472,1037,1052,7,0,15,7,0,15,1),
(31460,1037,1052,7,0,15,7,0,15,1),
(31457,1037,1052,7,0,15,7,0,15,1),
(31451,1037,1052,7,0,15,7,0,15,1),
(31466,1037,1052,7,0,15,7,0,15,1),
(31455,1037,1052,7,0,15,7,0,15,1),
(31443,1037,1052,7,0,15,7,0,15,1),
(31442,1037,1052,7,0,15,7,0,15,1),
(31450,1037,1052,7,0,15,7,0,15,1),
(31459,1037,1052,7,0,15,7,0,15,1),
(31471,1037,1052,7,0,15,7,0,15,1),
(31612,1037,1052,7,0,250,7,0,250,1),
(31611,1037,1052,7,0,250,7,0,250,1),
(31610,1037,1052,7,0,250,7,0,250,1),
(31604,1037,1052,7,0,15,7,0,15,1),
(31592,1037,1052,7,0,15,7,0,15,1),
(31609,1037,1052,7,0,15,7,0,15,1),
(31606,1037,1052,7,0,15,7,0,15,1),
(31605,1037,1052,7,0,15,7,0,15,1),
(31608,1037,1052,7,0,15,7,0,15,1),
(31617,1037,1052,7,0,15,7,0,15,1),
(31615,1037,1052,7,0,15,7,0,15,1),
(31616,1037,1052,7,0,15,7,0,15,1),
(31601,1037,1052,7,0,5,7,0,5,1),
(31594,1037,1052,7,0,5,7,0,5,1),
(31589,1037,1052,7,0,5,7,0,5,1),
(31362,1037,1052,7,0,250,7,0,250,1),
(31350,1037,1052,7,0,250,7,0,250,1),
(31349,1037,1052,7,0,250,7,0,250,1),
(31360,1037,1052,7,0,250,7,0,250,1),
(31357,1037,1052,7,0,15,7,0,15,1),
(31347,1037,1052,7,0,15,7,0,15,1),
(31339,1037,1052,7,0,15,7,0,15,1),
(31346,1037,1052,7,0,15,7,0,15,1),
(31352,1037,1052,7,0,15,7,0,15,1),
(31338,1037,1052,7,0,15,7,0,15,1),
(31340,1037,1052,7,0,15,7,0,15,1),
(31345,1037,1052,7,0,15,7,0,15,1),
(31351,1037,1052,7,0,15,7,0,15,1),
(31342,1037,1052,7,0,15,7,0,15,1),
(31354,1037,1052,7,0,15,7,0,15,1),
(31355,1037,1052,7,0,15,7,0,15,1),
(31343,1037,1052,7,0,15,7,0,15,1),
(31359,1037,1052,7,0,15,7,0,15,1),
(31336,1037,1052,7,0,15,7,0,15,1),
(31363,1037,1052,7,0,15,7,0,15,1),
(31337,1037,1052,7,0,5,7,0,5,1),
(31335,1037,1052,7,0,5,7,0,5,1),
(31370,1037,1052,7,0,250,7,0,250,1),
(30530,1037,1052,7,0,250,7,0,250,1),
(31368,1037,1052,7,0,250,7,0,250,1),
(31365,1037,1052,7,0,250,7,0,250,1),
(29932,1037,1052,7,0,250,7,0,250,1),
(30939,1037,1052,7,0,15,7,0,15,1),
(30935,1037,1052,7,0,15,7,0,15,1),
(30925,1037,1052,7,0,15,7,0,15,1),
(30930,1037,1052,7,0,15,7,0,15,1),
(30938,1037,1052,7,0,15,7,0,15,1),
(30926,1037,1052,7,0,15,7,0,15,1),
(30933,1037,1052,7,0,15,7,0,15,1),
(30927,1037,1052,7,0,15,7,0,15,1),
(30929,1037,1052,7,0,15,7,0,15,1),
(30932,1037,1052,7,0,15,7,0,15,1),
(30941,1037,1052,7,0,15,7,0,15,1),
(30942,1037,1052,7,0,15,7,0,15,1),
(30937,1037,1052,7,0,5,7,0,5,1),
(30931,1037,1052,7,0,5,7,0,5,1),
(30928,1037,1052,7,0,5,7,0,5,1),
(30934,1037,1052,7,0,5,7,0,5,1),
(32778,1037,1052,7,0,5,7,0,5,1),
(30510,1037,1052,7,0,250,7,0,250,1),
(30532,1037,1052,7,0,250,7,0,250,1),
(30540,1037,1052,7,0,250,7,0,250,1),
(30529,1037,1052,7,0,250,7,0,250,1),
(30522,1037,1052,7,0,15,7,0,15,1),
(30524,1037,1052,7,0,15,7,0,15,1),
(30526,1037,1052,7,0,15,7,0,15,1),
(30521,1037,1052,7,0,15,7,0,15,1),
(30519,1037,1052,7,0,15,7,0,15,1),
(30518,1037,1052,7,0,15,7,0,15,1),
(30517,1037,1052,7,0,15,7,0,15,1),
(30516,1037,1052,7,0,15,7,0,15,1),
(30473,1037,1052,7,0,15,7,0,15,1),
(30485,1037,1052,7,0,15,7,0,15,1),
(30478,1037,1052,7,0,15,7,0,15,1),
(30460,1037,1052,7,0,15,7,0,15,1),
(30457,1037,1052,7,0,15,7,0,15,1),
(30459,1037,1052,7,0,15,7,0,15,1),
(30525,1037,1052,7,0,15,7,0,15,1),
(30498,1037,1052,7,0,15,7,0,15,1),
(30509,1037,1052,7,0,15,7,0,15,1),
(30496,1037,1052,7,0,15,7,0,15,1),
(30528,1037,1052,7,0,5,7,0,5,1),
(30520,1037,1052,7,0,5,7,0,5,1),
(31559,1037,1052,7,0,250,7,0,250,1),
(31561,1037,1052,7,0,250,7,0,250,1),
(31560,1037,1052,7,0,250,7,0,250,1),
(31558,1037,1052,7,0,250,7,0,250,1),
(30905,1037,1052,7,0,15,7,0,15,1),
(30915,1037,1052,7,0,15,7,0,15,1),
(30916,1037,1052,7,0,15,7,0,15,1),
(30903,1037,1052,7,0,15,7,0,15,1),
(30904,1037,1052,7,0,15,7,0,15,1),
(30901,1037,1052,7,0,15,7,0,15,1),
(30991,1037,1052,7,0,15,7,0,15,1),
(30902,1037,1052,7,0,5,7,0,5,1),
(31628,1037,1052,7,0,5,7,0,5,1),
(31506,1037,1052,7,0,250,7,0,250,1),
(31510,1037,1052,7,0,250,7,0,250,1),
(31507,1037,1052,7,0,250,7,0,250,1),
(31512,1037,1052,7,0,250,7,0,250,1),
(31508,1037,1052,7,0,250,7,0,250,1),
(31509,1037,1052,7,0,250,7,0,250,1),
(31511,1037,1052,7,0,250,7,0,250,1),
(31513,1037,1052,7,0,15,7,0,15,1),
(31501,1037,1052,7,0,15,7,0,15,1),
(31487,1037,1052,7,0,15,7,0,15,1),
(31494,1037,1052,7,0,15,7,0,15,1),
(31483,1037,1052,7,0,15,7,0,15,1),
(31497,1037,1052,7,0,15,7,0,15,1),
(31486,1037,1052,7,0,15,7,0,15,1),
(31493,1037,1052,7,0,15,7,0,15,1),
(31490,1037,1052,7,0,15,7,0,15,1),
(31503,1037,1052,7,0,15,7,0,15,1),
(31485,1037,1052,7,0,15,7,0,15,1),
(31489,1037,1052,7,0,15,7,0,15,1),
(31496,1037,1052,7,0,15,7,0,15,1),
(31499,1037,1052,7,0,15,7,0,15,1),
(32192,1037,1052,7,0,15,7,0,15,1),
(31500,1037,1052,7,0,5,7,0,5,1),
(31536,1037,1052,7,0,250,7,0,250,1),
(31538,1037,1052,7,0,250,7,0,250,1),
(31537,1037,1052,7,0,250,7,0,250,1),
(31533,1037,1052,7,0,250,7,0,250,1),
(30972,1037,1052,7,0,15,7,0,15,1),
(30983,1037,1052,7,0,15,7,0,15,1),
(30964,1037,1052,7,0,15,7,0,15,1),
(30981,1037,1052,7,0,15,7,0,15,1),
(30974,1037,1052,7,0,15,7,0,15,1),
(30976,1037,1052,7,0,15,7,0,15,1),
(30977,1037,1052,7,0,15,7,0,15,1),
(30975,1037,1052,7,0,15,7,0,15,1),
(30968,1037,1052,7,0,15,7,0,15,1),
(30971,1037,1052,7,0,15,7,0,15,1),
(30966,1037,1052,7,0,15,7,0,15,1),
(30967,1037,1052,7,0,15,7,0,15,1),
(30978,1037,1052,7,0,15,7,0,15,1),
(30979,1037,1052,7,0,15,7,0,15,1),
(30982,1037,1052,7,0,15,7,0,15,1),
(30980,1037,1052,7,0,15,7,0,15,1),
(30973,1037,1052,7,0,15,7,0,15,1),
(30970,1037,1052,7,0,5,7,0,5,1),
(31386,1037,1052,7,0,250,7,0,250,1),
(31384,1037,1052,7,0,250,7,0,250,1),
(31381,1037,1052,7,0,250,7,0,250,1),
(31392,1037,1052,7,0,15,7,0,15,1),
(31383,1037,1052,7,0,15,7,0,15,1),
(31387,1037,1052,7,0,15,7,0,15,1),
(31385,1037,1052,7,0,15,7,0,15,1),
(31373,1037,1052,7,0,15,7,0,15,1),
(31371,1037,1052,7,0,15,7,0,15,1),
(31375,1037,1052,7,0,15,7,0,15,1),
(31374,1037,1052,7,0,15,7,0,15,1),
(31376,1037,1052,7,0,15,7,0,15,1),
(31372,1037,1052,7,0,15,7,0,15,1),
(31378,1037,1052,7,0,15,7,0,15,1),
(31377,1037,1052,7,0,15,7,0,15,1),
(31874,1037,1052,7,0,5,7,0,5,1),
(31369,1037,1052,7,0,5,7,0,5,1),
(31679,1037,1052,7,0,250,7,0,250,1),
(30748,1037,1052,7,0,250,7,0,250,1),
(31673,1037,1052,7,0,250,7,0,250,1),
(31656,1037,1052,7,0,250,7,0,250,1),
(31659,1037,1052,7,0,15,7,0,15,1),
(31658,1037,1052,7,0,15,7,0,15,1),
(31660,1037,1052,7,0,15,7,0,15,1),
(31661,1037,1052,7,0,15,7,0,15,1),
(31667,1037,1052,7,0,15,7,0,15,1),
(31676,1037,1052,7,0,15,7,0,15,1),
(31675,1037,1052,7,0,15,7,0,15,1),
(31669,1037,1052,7,0,15,7,0,15,1),
(31662,1037,1052,7,0,15,7,0,15,1),
(31668,1037,1052,7,0,15,7,0,15,1),
(31666,1037,1052,7,0,15,7,0,15,1),
(31663,1037,1052,7,0,15,7,0,15,1),
(30747,1037,1052,7,0,15,7,0,15,1),
(31665,1037,1052,7,0,15,7,0,15,1),
(31671,1037,1052,7,0,5,7,0,5,1),
(31681,1037,1052,7,0,5,7,0,5,1),
(31678,1037,1052,7,0,5,7,0,5,1),
(30788,1037,1052,7,0,250,7,0,250,1),
(30807,1037,1052,7,0,250,7,0,250,1),
(30774,1037,1052,7,0,250,7,0,250,1),
(30810,1037,1052,7,0,250,7,0,250,1),
(30803,1037,1052,7,0,15,7,0,15,1),
(30790,1037,1052,7,0,15,7,0,15,1),
(30770,1037,1052,7,0,15,7,0,15,1),
(30817,1037,1052,7,0,15,7,0,15,1),
(30816,1037,1052,7,0,15,7,0,15,1),
(30771,1037,1052,7,0,15,7,0,15,1),
(30764,1037,1052,7,0,15,7,0,15,1),
(30765,1037,1052,7,0,15,7,0,15,1),
(30766,1037,1052,7,0,15,7,0,15,1),
(30806,1037,1052,7,0,15,7,0,15,1),
(30820,1037,1052,7,0,15,7,0,15,1),
(30775,1037,1052,7,0,15,7,0,15,1),
(30821,1037,1052,7,0,15,7,0,15,1),
(30818,1037,1052,7,0,15,7,0,15,1),
(30762,1037,1052,7,0,15,7,0,15,1),
(30772,1037,1052,7,0,15,7,0,15,1),
(30791,1037,1052,7,0,5,7,0,5,1),
(30805,1037,1052,7,0,5,7,0,5,1),
(30767,1037,1052,7,0,5,7,0,5,1);
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` = 2442;
UPDATE `creature_template` SET `flags_extra` = 64 WHERE `entry` = 25534;

# TC
DELETE FROM `spell_script_names` WHERE `spell_id` IN (71756,72782,72783,72784) AND `ScriptName`='spell_taldaram_ball_of_inferno_flame';
DELETE FROM `spell_scripts` WHERE id=47701;
INSERT INTO `spell_scripts` VALUES (47701, 0, 0, 10, 26902, 30000, 0, 4647.22, -4860.69, 35.480, 0.153);
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 18840;
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 18841;
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 18842;
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 18843;
UPDATE `quest_template` SET `SkillOrClassMask` = '182', `RequiredSkillValue` = '350' WHERE `entry` = 11017;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(13,0,69508,0,18,1,37986,0,0, '', 'Rotface - Slime Spray'),
(13,0,69783,0,18,1,37013,0,0, '', 'Rotface - Ooze Flood'),
(13,0,69797,0,18,1,37013,0,0, '', 'Rotface - Ooze Flood'),
(13,0,69799,0,18,1,37013,0,0, '', 'Rotface - Ooze Flood'),
(13,0,69802,0,18,1,37013,0,0, '', 'Rotface - Ooze Flood'),
(13,0,69782,0,18,1,37013,0,0, '', 'Rotface - Ooze Flood'),
(13,0,69796,0,18,1,37013,0,0, '', 'Rotface - Ooze Flood'),
(13,0,69798,0,18,1,37013,0,0, '', 'Rotface - Ooze Flood'),
(13,0,69801,0,18,1,37013,0,0, '', 'Rotface - Ooze Flood'),
(13,0,69540,0,18,1,36897,0,0, '', 'Rotface - Summon Big Ooze'),
(13,0,69538,0,18,1,36897,0,0, '', 'Rotface - Small Ooze Combine'),
(13,0,69553,0,18,1,36899,0,0, '', 'Rotface - Large Ooze Combine'),
(13,0,69610,0,18,1,36897,0,0, '', 'Rotface - Large Ooze Buff Combine'),
(13,0,70079,0,18,1,36678,0,0, '', 'Rotface - Ooze Flood'),
(13,0,72401,0,18,1,37672,0,0, '', 'Putricide - Mutated Abomination'),
(13,0,72401,0,18,1,38285,0,0, '', 'Putricide - Mutated Abomination'),
(13,0,71617,0,18,1,38317,0,0, '', 'Putricide - Tear Gas'),
(13,0,71412,0,18,1,37824,0,0, '', 'Putricide - Unstable Experiment'),
(13,0,71415,0,18,1,37824,0,0, '', 'Putricide - Unstable Experiment'),
(13,0,71621,0,18,1,38309,1,0, '', 'Putricide - Green Bottle'),
(13,0,72850,0,18,1,38309,1,0, '', 'Putricide - Green Bottle'),
(13,0,72851,0,18,1,38309,1,0, '', 'Putricide - Green Bottle'),
(13,0,72852,0,18,1,38309,1,0, '', 'Putricide - Green Bottle'),
(13,0,71621,0,18,1,38308,2,0, '', 'Putricide - Orange Bottle'),
(13,0,72850,0,18,1,38308,2,0, '', 'Putricide - Orange Bottle'),
(13,0,72851,0,18,1,38308,2,0, '', 'Putricide - Orange Bottle'),
(13,0,72852,0,18,1,38308,2,0, '', 'Putricide - Orange Bottle'),
(13,0,71704,0,18,1,38309,1,0, '', 'Putricide - Green Bottle'),
(13,0,71704,0,18,1,38308,2,0, '', 'Putricide - Orange Bottle'),
(13,0,72745,0,18,1,36678,0,0, '', 'Putricide - Mutated Plague'),
(13,0,72746,0,18,1,36678,0,0, '', 'Putricide - Mutated Plague'),
(13,0,72747,0,18,1,36678,0,0, '', 'Putricide - Mutated Plague'),
(13,0,72748,0,18,1,36678,0,0, '', 'Putricide - Mutated Plague'),
(13,0,68861,0,18,1,36497,0,0, '', 'Bronjahm - Consume Soul'),
(21,37672,71516,0,3,49888,0,0,0, '', 'Mutated Abomination - Unholy Infusion'),
(21,38285,71516,0,3,49888,0,0,0, '', 'Mutated Abomination - Unholy Infusion'),
(13,0,70952,0,18,1,37970,0,0, '', 'Valanar - Invocation of Blood'),
(13,0,70982,0,18,1,37973,0,0, '', 'Taldaram - Invocation of Blood'),
(13,0,70981,0,18,1,37972,0,0, '', 'Keleseth - Invocation of Blood'),
(13,0,70983,0,18,1,37970,0,0, '', 'Valanar - Invocation of Blood beam'),
(13,0,70983,0,18,1,37973,0,0, '', 'Taldaram - Invocation of Blood beam'),
(13,0,70983,0,18,1,37972,0,0, '', 'Keleseth - Invocation of Blood beam'),
(13,0,71070,0,18,1,37970,0,0, '', 'Valanar - Invocation of Blood visual'),
(13,0,71081,0,18,1,37973,0,0, '', 'Taldaram - Invocation of Blood visual'),
(13,0,71080,0,18,1,37972,0,0, '', 'Keleseth - Invocation of Blood visual');
UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry`=23730;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=23730;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
(2373000,23730,11,0,100,0,0,0,0,0,11,44250,0,0,0,0,0,0,0,0,0,0, 'Harold Lagras Cast 44250 on Buoy');
UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry`=25465;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=25465;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
(2546500,25465,1,0,100,1,3000,6000,27000,29000,11,50312,0,32,4,8818,0,0,0,0,0,0, 'Kel''Thuzad Cast 50312 on self, Play sound');
UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry`=25466;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=25466;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
(2546600,25466,1,0,100,0,5000,5000,5000,5000,11,45615,0,0,0,0,0,0,0,0,0,0, 'Necropolis Beam (Target) Cast 45615 on self');
UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry`=28481;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=28481;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
(2848100,28481,8,0,100,1,51769,1,0,0,11,51738,0,2,0,0,0,0,0,0,0,0, 'Runeforge (SE) selfcast 51738 on spellhit 51769');
UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry`=28444;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=28444;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
(2844400,28444,1,0,100,1,60000,90000,60000,90000,4,12893,0,0,0,0,0,0,0,0,0,0, 'Highlord Darion Mograine play sound');
UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry`=28487;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=28487;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
(2848700,28487,11,0,100,0,0,0,0,0,5,402,0,0,4,3439,0,0,0,0,0,0, 'Val''kyr Battle-maiden play emote/sound on spawn');
UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry`=23487;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=23487;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
(2348700,23487,24,0,100,0,41621,1,0,0,23,1,0,0,0,0,0,0,0,0,0,0, 'Wolpertinger netted stun self, next phase'),
(2348701,23487,0,2,100,0,3000,3000,3000,3000,11,41622,1,7,23,1,0,0,0,0,0,0, 'wait 3 sec, quest item, next phase'),
(2348702,23487,0,1,100,0,1000,1000,1000,1000,28,0,41621,0,41,0,0,0,0,0,0,0, 'wait 1 sec, remove auras, despawn');
UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry` IN (23528,23507,23527,23529,23530,23531);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (23528,23507,23527,23529,23530,23531);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
(2352800,23528,8,0,100,0,44654,1,0,0,33,23528,6,0,41,0,0,0,0,0,0,0, 'Azuremyst Pink Elekk quest credit and despawn'),
(2350700,23507,8,0,100,0,44654,1,0,0,33,23507,6,0,41,0,0,0,0,0,0,0, 'Elwynn Pink Elekk quest credit and despawn'),
(2352700,23527,8,0,100,0,44654,1,0,0,33,23527,6,0,41,0,0,0,0,0,0,0, 'Teldrassil Pink Elekk quest credit and despawn'),
(2352900,23529,8,0,100,0,44654,1,0,0,33,23529,6,0,41,0,0,0,0,0,0,0, 'Mulgore Pink Elekk quest credit and despawn'),
(2353000,23530,8,0,100,0,44654,1,0,0,33,23530,6,0,41,0,0,0,0,0,0,0, 'Tirisfal Pink Elekk quest credit and despawn'),
(2353100,23531,8,0,100,0,44654,1,0,0,33,23531,6,0,41,0,0,0,0,0,0,0, 'Eversong Pink Elekk quest credit and despawn');
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|768,`AIName`= 'EventAI' WHERE `entry` IN (32790,32788);
UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry` IN (30712,30691,30692,30693,30694,30562);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (32790,32788,30712,30691,30692,30693,30694,30562);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
(3279000,32790,11,0,100,0,0,0,0,0,3,0,11686,0,11,61722,0,0,0,0,0,0, 'Moonglade Portal model & aura'),
(3278800,32788,11,0,100,0,0,0,0,0,3,0,11686,0,11,61722,0,0,0,0,0,0, 'Moonglade Return Portal model & aura'),
(3071200,30712,11,0,100,0,0,0,0,0,3,0,11686,0,0,0,0,0,0,0,0,0, 'Bridenbrad Light Bunny model'),
(3071201,30712,1,0,100,0,6000,6000,6000,6000,41,0,0,0,0,0,0,0,0,0,0,0, 'Bridenbrad Light Bunny despawn after 6 sec'),
(3069100,30691,1,0,100,0,6000,6000,6000,6000,41,0,0,0,0,0,0,0,0,0,0,0, 'A''dal despawn after 6 sec'),
(3069200,30692,1,0,100,0,6000,6000,6000,6000,41,0,0,0,0,0,0,0,0,0,0,0, 'M''ori despawn after 6 sec'),
(3069300,30693,1,0,100,0,6000,6000,6000,6000,41,0,0,0,0,0,0,0,0,0,0,0, 'K''uri despawn after 6 sec'),
(3069400,30694,1,0,100,0,3000,3000,3000,3000,11,57771,0,0,98,0,0,0,0,0,0,0, 'Spirit of Bridenbrad cast Holy Nova after 3 sec'),
(3069401,30694,1,0,100,0,6000,6000,6000,6000,41,0,0,0,0,0,0,0,0,0,0,0, 'Spirit of Bridenbrad despawn after 6 sec'),
(3056200,30562,11,0,100,0,0,0,0,0,11,57744,0,0,11,57626,0,0,0,0,0,0, 'Crusader Bridenbrad aura on spawn');
UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry` IN (30617,30627);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (30617,30627);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
(3061700,30617,11,0,100,0,0,0,0,0,11,41408,0,0,0,0,0,0,0,0,0,0, 'add aura on spawn'),
(3062700,30627,11,0,100,0,0,0,0,0,11,41408,0,0,0,0,0,0,0,0,0,0, 'add aura on spawn');
UPDATE `creature_ai_scripts` SET `event_flags`=2 WHERE `id`=1144201; -- 5 man N
UPDATE `creature_ai_scripts` SET `event_flags`=3 WHERE `id`=1144202; -- 5 man N + repeat
UPDATE `creature_ai_scripts` SET `event_flags`=2 WHERE `id`=1144203; -- 5 man N
UPDATE `creature_ai_scripts` SET `event_flags`=2 WHERE `id`=1314200; -- 5 man N
UPDATE `creature_ai_scripts` SET `event_flags`=30 WHERE `id`=1563100; -- everywhere
UPDATE `creature_ai_scripts` SET `event_flags`=6 WHERE `id`=1788500; -- 5 man N&H
UPDATE `creature_ai_scripts` SET `event_flags`=2 WHERE `id`=1834200; -- 10 man N
UPDATE `creature_ai_scripts` SET `event_flags`=6 WHERE `id`=1922400; -- 5 man N&H
UPDATE `creature_ai_scripts` SET `event_flags`=2 WHERE `id`=1952500; -- 10 man N
UPDATE `creature_ai_scripts` SET `event_flags`=2 WHERE `id`=2088200; -- 10 man N
UPDATE `creature_ai_scripts` SET `event_flags`=30 WHERE `id`=2115900; -- everywhere?, no idea where this is used
UPDATE `creature_ai_scripts` SET `event_flags`=30 WHERE `id`=2176100; -- everywhere?, no idea where this is used
UPDATE `creature_ai_scripts` SET `event_flags`=30 WHERE `id`=2801700; -- everywhere + repeat
UPDATE `creature_ai_scripts` SET `event_flags`=2 WHERE `id`=358601; -- 5 man N
UPDATE `creature_ai_scripts` SET `event_flags`=2 WHERE `id`=442000; -- 5 man N
UPDATE `creature_ai_scripts` SET `event_flags`=2 WHERE `id`=443600; -- 5 man N
UPDATE `creature_ai_scripts` SET `event_flags`=2 WHERE `id`=526301; -- 5 man N
UPDATE `creature_template` SET `AIName`='EventAI' WHERE `entry`=23652;
DELETE FROM `creature_ai_scripts` WHERE `id`=2365201;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
(2365201,23652,8,0,100,0,43381,-1,0,0,33,24281,1,0,0,0,0,0,0,0,0,0, 'Q: Field Test - Kill Credit');
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=27853; -- Cleanup
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`comment`) VALUES 
(2785301,27853,10,0,100,0,1,50,1,1,33,27853,6, 'Kill credit for quest Projections and Plans');
DELETE FROM `vehicle_accessory` WHERE `entry`=33113 AND `seat_id`=0;
DELETE FROM `vehicle_accessory` WHERE `entry`=33113 AND `seat_id`=1;
UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry`=32170;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=32170;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
(3217001,32170,11,0,100,0,0,0,0,0,11,12544,0,0,0,0,0,0,0,0,0,0, 'Magister Surdiel - Cast Frost Armor on spawn');
SET @ENTRY := 33303;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,75,45776,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Apply aura on spawn'),
(@ENTRY,0,1,2,8,0,100,0,62767,0,0,0,28,45776,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Remove aura on spell hit'),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 0 on spell hit'),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Face Player on spell hit'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Go to Next Phase'),
(@ENTRY,0,5,0,1,1,100,0,6000,6000,6000,6000,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text 1 after 6 sec'),
(@ENTRY,0,6,7,1,1,100,0,11000,11000,11000,11000,75,45776,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Aura after 5 sec'),
(@ENTRY,0,7,8,61,1,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.40339, 'Reset facing'),
(@ENTRY,0,8,0,61,1,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Reset Phase');
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'Thank you, mortal, for freeing me from this curse. I beg you, take this blade.',0,0,100,1,0,0, 'Maiden of Winter''s Breath Lake'),
(@ENTRY,1,0, 'It has brought me naught but ill. Mayhap you can find someone who will contain its power.',0,0,100,1,0,0, 'Maiden of Winter''s Breath Lake');
SET @Valkyr := 38391;
SET @id := 3839100;
UPDATE `creature_template` SET`AIName`= 'EventAI' WHERE `entry`=38391; -- set npc to use EventAI
-- EAI scripts
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=38391;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`COMMENT`) VALUES
(@id+1,@Valkyr,0,13,100,31,1000,2000,2300,2800,11,71841,1,0,0,0,0,0,0,0,0,0, 'Val''kyr Guardian - Cast Smite (Phase 1)'),
(@id+2,@Valkyr,4,0,100,30,0,0,0,0,11,71841,1,0,23,1,0,0,0,0,0,0, 'Val''kyr Guardian - Cast Smite and Set Phase 1 on Aggro'),
(@id+3,@Valkyr,1,0,100,30,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0, 'Val''kyr Guardian - Prevent Combat Movement on Spawn'),
(@id+4,@Valkyr,3,13,100,30,15,0,0,0,21,1,0,0,23,1,0,0,0,0,0,0, 'Val''kyr Guardian - Start Combat Movement and Set Phase 2 when Mana is at 15% (Phase 1)'),
(@id+5,@Valkyr,9,13,100,30,35,80,0,0,21,1,0,0,0,0,0,0,0,0,0,0, 'Val''kyr Guardian - Start Combat Movenemt at 35 Yards (Phase1)'),
(@id+6,@Valkyr,9,13,100,30,5,15,0,0,21,0,0,0,0,0,0,0,0,0,0,0, 'Val''kyr Guardian - Prevent Combat Movement at 15 Yards (Phase1)'),
(@id+7,@Valkyr,9,13,100,30,0,5,0,0,20,0,0,0,29,15,0,0,0,0,0,0, 'Val''kyr Guardian - Start Combat Movement Below 5 Yards'),
(@id+8,@Valkyr,3,11,100,31,100,30,100,100,23,-1,0,0,0,0,0,0,0,0,0,0, 'Val''kyr Guardian - Set Phase 1 when Mana is above 30% (Phase 2)'),
(@id+9,@Valkyr,7,0,100,30,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0, 'Val''kyr Guardian - Set Phase to 0 on Evade');
SET @creatureid:=28961;
DELETE FROM creature_ai_scripts WHERE creature_id=@creatureid; -- Remove Any Previous EventAI
INSERT INTO creature_ai_scripts (id,creature_id,event_type,event_inverse_phase_mask,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,action1_type,action1_param1,action1_param2,action1_param3,action2_type,action2_param1,action2_param2,action2_param3,action3_type,action3_param1,action3_param2,action3_param3,comment) VALUES
(2896101,@creatureid,11,0,100,6,0,0,0,0,21,0,0,0,20,0,0,0,31,1,2,0, 'Titanium Siegebreaker - Select Random Phase 1 (Statue) or 2 (Aggroable)'),
(2896102,@creatureid,1,6,100,6,0,0,0,0,11,16245,0,7,18,33554432,0,0,0,0,0,0, 'Titanium Siegebreaker - Set Flags and Cast Freeze Animation (Phase 1 Statue)'),
(2896103,@creatureid,1,5,100,6,0,0,0,0,2,35,0,0,18,33554432,0,0,11,16245,0,7, 'Titanium Siegebreaker - Set Flags and Faction and Cast Freeze Animation (Phase 2 Aggroable)'),
(2896104,@creatureid,4,5,100,6,0,0,0,0,22,3,0,0,21,1,0,0,20,1,0,0, 'Titanium Siegebreaker - On Aggro set Phase to 3 and set combat flags (Changes Phase 2 -> 3 on Aggro)'),
(2896105,@creatureid,0,3,100,6,0,0,0,0,28,0,16245,0,19,33554432,0,0,0,0,0,0, 'Titanium Siegebreaker - Remove Cast Freeze Animation and Set Selectable (Phase 3 Attacking)'),
(2896106,@creatureid,9,3,100,7,0,80,0,0,21,1,0,0,40,1,0,0,20,1,0,0, 'Titanium Siegebreaker - Start Combat Movement and Set Melee Weapon Model and Start Melee'),
(2896107,@creatureid,0,3,100,7,10000,13000,14000,17000,11,52890,1,7,0,0,0,0,0,0,0,0, 'Titanium Siegebreaker - Cast Penetrating Strike (Phase 3 Attacking)'),
(2896108,@creatureid,9,3,100,7,0,10,9000,14000,11,23600,0,7,0,0,0,0,0,0,0,0, 'Titanium Siegebreaker - Cast Piercing Howl (Phase 3 Attacking)'),
(2896109,@creatureid,2,3,100,6,50,0,0,0,11,19134,1,7,0,0,0,0,0,0,0,0, 'Titanium Siegebreaker - Cast Frightening Shout at 50% HP (Phase 3 Attacking)'),
(2896110,@creatureid,2,3,100,3,40,0,10000,15000,11,52891,0,7,0,0,0,0,0,0,0,0, 'Titanium Siegebreaker (Normal) - Cast Blade Turning at 40% HP (Phase 3 Attacking)'),
(2896111,@creatureid,2,3,100,5,50,0,10000,15000,11,59173,0,7,0,0,0,0,0,0,0,0, 'Titanium Siegebreaker (Heroic) - Cast Blade Turning at 50% HP (Phase 3 Attacking)'),
(2896112,@creatureid,7,3,100,6,0,0,0,0,22,5,0,0,40,1,0,0,0,0,0,0, 'Titanium Siegebreaker - If wipe occurs set back to Phase 2');
UPDATE creature_template SET ScriptName='EventAI' WHERE entry=@creatureid; -- Update Creature Template To Use EventAI
SET @creatureid:=28965;
DELETE FROM creature_ai_scripts WHERE creature_id=@creatureid; -- Remove Any Previous EventAI
INSERT INTO creature_ai_scripts (id,creature_id,event_type,event_inverse_phase_mask,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,action1_type,action1_param1,action1_param2,action1_param3,action2_type,action2_param1,action2_param2,action2_param3,action3_type,action3_param1,action3_param2,action3_param3,comment) VALUES
(2896501,@creatureid,11,0,100,6,0,0,0,0,21,0,0,0,20,0,0,0,31,1,2,0, 'Titanium Thunderer - Select Random Phase 1 (Statue) or 2 (Aggroable)'),
(2896502,@creatureid,1,6,100,6,0,0,0,0,11,16245,0,7,18,33554432,0,0,0,0,0,0, 'Titanium Thunderer - Set Flags and Cast Freeze Animation (Phase 1 Statue)'),
(2896503,@creatureid,1,5,100,6,0,0,0,0,2,35,0,0,18,33554432,0,0,11,16245,0,7, 'Titanium Thunderer - Set Flags and Faction and Cast Freeze Animation (Phase 2 Aggroable)'),
(2896504,@creatureid,4,5,100,2,0,0,0,0,22,3,0,0,0,0,0,0,0,0,0,0, 'Titanium Thunderer (Normal) - Cast Throw on Aggro (Changes Phase 2 -> 3 on Aggro)'),
(2896505,@creatureid,0,3,100,6,0,0,0,0,28,0,16245,0,19,33554432,0,0,0,0,0,0, 'Titanium Thunderer - Remove Cast Freeze Animation and Set Selectable (Phase 3 Attacking)'),
(2896506,@creatureid,9,3,100,3,5,30,2300,5000,11,52904,1,7,40,2,0,0,0,0,0,0, 'Titanium Thunderer (Normal) - Cast Throw and Set Ranged Weapon Model (Phase 3 Attacking)'),
(2896507,@creatureid,9,3,100,7,25,80,0,0,21,1,0,0,0,0,0,0,0,0,0,0, 'Titanium Thunderer - Start Combat Movement at 25 Yards (Phase 3 Attacking)'),
(2896508,@creatureid,9,3,100,7,0,8,0,0,21,1,0,0,40,1,0,0,20,1,0,0, 'Titanium Thunderer - Start Combat Movement and Set Melee Weapon Model Below 5 Yards (Phase 3 Attacking)'),
(2896509,@creatureid,9,3,100,7,8,15,0,0,21,0,0,0,0,0,0,0,0,0,0,0, 'Titanium Thunderer - Prevent Combat Movement at 15 Yards (Phase 3 Attacking)'),
(2896510,@creatureid,4,5,100,4,0,0,0,0,22,3,0,0,0,0,0,0,0,0,0,0, 'Titanium Thunderer (Heroic) - Cast Throw on Aggro (Changes Phase 2 -> 3 on Aggro)'),
(2896511,@creatureid,9,3,100,5,8,30,2300,5000,11,59179,1,7,40,2,0,0,0,0,0,0, 'Titanium Thunderer (Heroic) - Cast Throw and Set Ranged Weapon Model (Phase 3 Attacking)'),
(2896512,@creatureid,9,3,100,7,0,0,0,0,21,1,0,0,20,1,0,0,0,0,0,0, 'Titanium Thunderer - Start Combat Movement and Start Melee at 25 Yards'),
(2896513,@creatureid,9,3,100,7,0,8,0,0,21,1,0,0,40,1,0,0,20,1,0,0, 'Titanium Thunderer - Start Combat Movement and Set Melee Weapon Model and Start Melee Below 5 Yards'),
(2896514,@creatureid,9,3,100,7,5,15,0,0,21,1,1,0,20,1,0,0,0,0,0,0, 'Titanium Thunderer - Prevent Combat Movement and Prevent Melee at 15 Yards'),
(2896515,@creatureid,9,3,100,3,8,30,9700,12500,11,52885,4,7,0,0,0,0,0,0,0,0, 'Titanium Thunderer (Normal) - Cast Deadly Throw (Phase 3 Attacking)'),
(2896516,@creatureid,9,3,100,5,8,30,9700,12500,11,59180,4,7,0,0,0,0,0,0,0,0, 'Titanium Thunderer (Heroic) - Cast Deadly Throw  (Phase 3 Attacking)'),
(2896517,@creatureid,2,3,100,3,40,0,12000,18000,11,52879,0,7,0,0,0,0,0,0,0,0, 'Titanium Thunderer (Normal) - Cast Deflection at 40% HP (Phase 3 Attacking)'),
(2896518,@creatureid,2,3,100,5,65,0,12000,18000,11,59181,0,7,0,0,0,0,0,0,0,0, 'Titanium Thunderer (Heroic) - Cast Deflection at 65% HP (Phase 3 Attacking)'),
(2896519,@creatureid,7,3,100,6,0,0,0,0,22,5,0,0,40,1,0,0,0,0,0,0, 'Titanium Thunderer - If wipe occurs set back to Phase 2');
UPDATE creature_template SET ScriptName='EventAI' WHERE entry=@creatureid; -- Update Creature Template To Use EventAI
SET @ENTRY := 18103;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,75,18950,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Apply aura on spawn'),
(@ENTRY,0,1,0,1,0,100,0,120000,120000,120000,120000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Say text every 2 min');
DELETE FROM `creature_text` WHERE `entry`=18103;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(18103,0,0, 'Obey the laws of Silvermoon. Failure to do so will result in termination.',0,1,100,0,0,0, 'Arcane Guardian'),
(18103,0,1, 'Maintain order within these walls.',0,0,100,0,0,0, 'Arcane Guardian');
SET @creatureid := 28585;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@creatureid; -- Remove Any Previous EventAI
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
(2858501,@creatureid,0,0,100,3,5000,10000,25000,30000,11,61509,1,36,0,0,0,0,0,0,0,0, 'Melt Armor - Normal'),
(2858502,@creatureid,6,0,100,2,0,0,0,0,11,23113,0,7,0,0,0,0,0,0,0,0, 'Blast Wave - Normal'),
(2858504,@creatureid,0,0,100,5,5000,10000,25000,30000,11,61510,1,36,0,0,0,0,0,0,0,0, 'Melt Armor - Heroic'),
(2858505,@creatureid,6,0,100,4,0,0,0,0,11,22424,0,7,0,0,0,0,0,0,0,0, 'Blast Wave - Heroic');
UPDATE `creature_template` SET `ScriptName`= 'EventAI' WHERE `entry`=@creatureid; -- Update Creature Template To Use EventAI
SET @ENTRY := 30228;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,75,56682,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Apply aura to self on player entry');
SET @ENTRY := 30657;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,1,0,100,0,1000,1000,1000,1000,15,13070,0,0,0,0,0,18,1,0,0,0,0,0,0, 'Complete quest on player range');
SET @ENTRY := 30407;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,3,4,8,1,100,0,56683,0,0,0,11,56687,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Mount proto drake on spell hit, linking to id 4'),
(@ENTRY,0,0,1,11,0,100,0,0,0,0,0,75,56726,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Apply aura on spawn, linking to id 1'),
(@ENTRY,0,2,0,1,1,100,0,4000,4000,4000,4000,10,70,22,0,0,0,0,0,0,0,0,0,0,0,0, 'play emote OOC in phase 1'),
(@ENTRY,0,4,5,61,1,100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Say text , linking to id 5'),
(@ENTRY,0,7,8,23,2,100,0,56687,0,1000,1000,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0, 'say text if does not have ride aura(check every 1 sec), linking to id 8'),
(@ENTRY,0,5,0,61,1,100,0,0,0,0,0,22,2,0,0,0,0,0,0,0,0,0,0,0,0,0, 'set phasemask to 2'),
(@ENTRY,0,6,0,1,2,100,0,8000,8000,8000,8000,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Say text OOC in phase 1, starting with 8sec delay, then repeat every 8 secs'),
(@ENTRY,0,8,9,61,2,100,0,0,0,0,0,22,4,0,0,0,0,0,0,0,0,0,0,0,0,0, 'set phase to 4, linking to id 9'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0, 'set phasemask to 1'),
(@ENTRY,0,9,0,61,2,100,0,0,0,0,0,41,5000,0,0,0,0,0,0,0,0,0,0,0,0,0, 'set despawn timer for 5 secs');
DELETE FROM `creature_text` WHERE `entry`=30407;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(30407,0,0, 'Let''s get out of here! Quickly!',0,0,100,0,0,0, 'Captured Crusader Start'),
(30407,1,0, 'Faster, hero! We must get back to the Argent Vanguard and warn them of the impending attack!',0,0,100,0,0,0, 'Captured Crusader Middle'),
(30407,1,1, 'There are hundreds of them! Maybe thousands! They will attack at any moment! I''m sure of it!',0,0,100,0,0,0, 'Captured Crusader Middle'),
(30407,1,2, 'Had you not come along I would have died for sure!',0,0,100,0,0,0, 'Captured Crusader Middle'),
(30407,1,3, 'They''re planning a huge attack! We need to warn Highlord Fordring!',0,0,100,2,0,0, 'Captured Crusader Middle'),
(30407,2,0, 'Thank you, hero.',0,0,100,2,0,0, 'Captured Crusader End'),
(30407,2,1, 'Thank you, friend, but we''re not out of trouble yet!',0,0,100,2,0,0, 'Captured Crusader End');
SET @ENTRY := 30228;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,75,56682,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Apply aura to self on player entry');
DELETE FROM `creature_text` WHERE `entry`=39368;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(39368,0,0, 'All right, you twisted mess of broken gears, let''s get to work!',0,0,100,1,0,0, 'Drill Sergeant Steamcrank'),
(39368,1,0, 'I am going to teach you all what it takes to be a proper soldier!',0,0,100,5,0,0, 'Drill Sergeant Steamcrank'),
(39368,2,0, 'The first thing you need to learn is proper discipline.',0,0,100,1,0,0, 'Drill Sergeant Steamcrank'),
(39368,3,0, 'Show me that discipline with a proper salute when I say so!',0,0,100,5,0,0, 'Drill Sergeant Steamcrank'),
(39368,4,0, 'Okay, recruits, salute!',0,0,100,66,0,0, 'Drill Sergeant Steamcrank'),
(39368,5,0, 'Nice job!',0,0,100,273,0,0, 'Drill Sergeant Steamcrank'),
(39368,6,0, 'When you go into combat, it is important that you know how to intimidate the enemy with a deafening battle roar!',0,0,100,396,0,0, 'Drill Sergeant Steamcrank'),
(39368,7,0, 'When I give the signal, let loose your greatest roar!',0,0,100,1,0,0, 'Drill Sergeant Steamcrank'),
(39368,8,0, 'Let me hear that battle roar!',0,0,100,5,0,0, 'Drill Sergeant Steamcrank'),
(39368,9,0, 'Wow, nice and scary!',0,0,100,0,0,0, 'Drill Sergeant Steamcrank'),
(39368,10,0, 'Remember though, a key factor in winning any battle is positive reinforcement.',0,0,100,5,0,0, 'Drill Sergeant Steamcrank'),
(39368,11,0, 'Reward your fellow soldiers in battle with a resounding cheer.  Now, cheer at me when I tell you to!',0,0,100,1,0,0, 'Drill Sergeant Steamcrank'),
(39368,12,0, 'Everyone, cheer!',0,0,100,0,0,0, 'Drill Sergeant Steamcrank'),
(39368,13,0, 'Fantastic!',0,0,100,273,0,0, 'Drill Sergeant Steamcrank'),
(39368,14,0, 'However, the most important part of battle is how you celebrate a good hard earned victory!',0,0,100,396,0,0, 'Drill Sergeant Steamcrank'),
(39368,15,0, 'Show me your best victory dance when I give the signal!',0,0,100,5,0,0, 'Drill Sergeant Steamcrank'),
(39368,16,0, 'Now, dance!',0,0,100,10,5000,0, 'Drill Sergeant Steamcrank'),
(39368,17,0, 'Superb!',0,0,100,273,0,0, 'Drill Sergeant Steamcrank'),
(39368,18,0, 'You might be the best set of recruits I''ve ever seen!  Let''s go through all of that again!',0,0,100,396,0,0, 'Drill Sergeant Steamcrank');
DELETE FROM `creature_text` WHERE `entry`=30407;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(30407,0,0, 'Let''s get out of here! Quickly!',0,0,100,0,0,0, 'Captured Crusader Start'),
(30407,1,0, 'Faster, hero! We must get back to the Argent Vanguard and warn them of the impending attack!',0,0,100,0,0,0, 'Captured Crusader Middle'),
(30407,1,1, 'There are hundreds of them! Maybe thousands! They will attack at any moment! I''m sure of it!',0,0,100,0,0,0, 'Captured Crusader Middle'),
(30407,1,2, 'Had you not come along I would have died for sure!',0,0,100,0,0,0, 'Captured Crusader Middle'),
(30407,1,3, 'They''re planning a huge attack! We need to warn Highlord Fordring!',0,0,100,2,0,0, 'Captured Crusader Middle'),
(30407,2,0, 'Thank you, hero.',0,0,100,2,0,0, 'Captured Crusader End'),
(30407,2,1, 'Thank you, friend, but we''re not out of trouble yet!',0,0,100,2,0,0, 'Captured Crusader End');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=24714;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(24714,24750,1, 'Trick cast Trick');
DELETE FROM `creature_transport` WHERE `transport_entry`=187038;
INSERT INTO `creature_transport` (`guid`,`transport_entry`,`npc_entry`,`TransOffsetX`,`TransOffsetY`,`TransOffsetZ`,`TransOffsetO`,`emote`) VALUES
(1,187038,24910,34.6962,-0.27625,20.9157,3.44936,0),
(2,187038,25026,15.3122,6.40496,1.39596,4.24673,0),
(3,187038,25026,14.4097,-6.40611,1.39596,1.86383,0),
(4,187038,25026,5.51407,-5.26758,1.39596,4.38889,0),
(5,187038,25026,5.50506,5.17797,1.39596,1.53711,0),
(6,187038,25026,-3.34169,-4.92735,1.39595,4.70933,0),
(7,187038,25026,-2.64281,5.46732,1.39595,0.520802,0),
(8,187038,25026,6.52141,0.490373,1.39693,6.00288,0),
(9,187038,25026,23.0708,-2.7187,1.39595,5.37378,0),
(10,187038,25026,24.9381,4.10155,1.44058,1.07922,0),
(11,187038,24911,-1.47544,9.97225,8.72811,1.47291,0),
(12,187038,24911,0.568386,10.818,8.68709,1.24593,0),
(13,187038,24911,-3.08712,11.1947,8.6042,1.59543,0),
(14,187038,24911,-3.00336,-1.39497,8.72655,0.455023,0),
(15,187038,24911,-11.92,6.82298,8.72743,2.64628,0),
(16,187038,24911,5.55254,10.6903,14.0795,1.41713,0),
(17,187038,24911,19.1591,9.74589,14.7625,1.55457,0),
(18,187038,24911,-10.8992,6.36276,20.589,1.29146,0),
(19,187038,24911,-15.0531,6.78103,21.0344,1.54279,0),
(20,187038,24911,-16.544,7.01147,21.3668,1.52708,0),
(21,187038,24992,-13.669,5.23144,19.2894,1.4721,0),
(22,187038,24911,29.079,6.02911,19.504,1.29931,0),
(23,187038,24911,19.1465,-9.70741,14.7601,4.79434,0),
(24,187038,24911,5.53691,-10.9158,14.0808,4.59956,0);
INSERT IGNORE INTO `vehicle_accessory` (`entry`,`accessory_entry`,`seat_id`,`minion`,`description`) VALUES
(28614,28616,0,1, 'Scarlet Gryphon Rider');
INSERT IGNORE INTO `vehicle_accessory` (`entry`,`accessory_entry`,`seat_id`,`minion`,`description`) VALUES
(29931,29982,0,0, 'Drakkari Rider on Drakkari Rhino, not minion');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,44250,0,18,1,24707,0,0,0, 'Breathing Tube - Buoy');
UPDATE `creature_template` SET `VehicleId`=265 WHERE `entry`=31225;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,50312,0,18,1,25333,0,0,0, 'Unholy Fenzy - Undying Aggressor'),
(13,0,50312,0,18,1,25332,0,0,0, 'Unholy Fenzy - Stitched Warsong Horror'),
(13,0,50312,0,18,1,25469,0,0,0, 'Unholy Fenzy - Mindless Aberration'),
(13,0,45609,0,18,1,25466,0,0,0, 'Necropolis Beam - Necropolis Beam (Target)');
UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`&~8 WHERE `entry` IN (25465,25469,25332,25333,25349);
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,51769,0,18,1,28481,0,0,0, 'Emblazon Runeblade - Runeforge (SE)');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=41985;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ErrorTextId`,`Comment`) VALUES
(17,41985,1,19,23507,63, 'Elekk Dispersion Ray can be used on Elwynn Pink Elekk'),
(17,41985,2,19,23527,63, 'Elekk Dispersion Ray can be used on Teldrassil Pink Elekk'),
(17,41985,3,19,23528,63, 'Elekk Dispersion Ray can be used on Azuremyst Pink Elekk'),
(17,41985,4,19,23529,63, 'Elekk Dispersion Ray can be used on Mulgore Pink Elekk'),
(17,41985,5,19,23530,63, 'Elekk Dispersion Ray can be used on Tirisfal Pink Elekk'),
(17,41985,6,19,23531,63, 'Elekk Dispersion Ray can be used on Eversong Pink Elekk');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=41621;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ErrorTextId`,`Comment`) VALUES
(17,41621,1,19,23487,63, 'Wolpertinger Net can be used on a Wolpertinger');
DELETE FROM `trinity_string` WHERE `entry`=63;
INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES (63, 'Invalid target');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (41621);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(41621,52656,2, 'Stun if Wolpertinger net aura'),
(41621,63726,2, 'Pacify if Wolpertinger net aura');
DELETE FROM `spell_dbc` WHERE Id = 39707;
INSERT INTO `spell_dbc` (`Id`, `Attributes`, `CastingTimeIndex`, `ProcChance`, `DurationIndex`, `RangeIndex`, `Effect1`, `EffectDieSides1`, `EffectBasePoints1`, `EffectImplicitTargetA1`, `EffectApplyAuraName1`, `EffectMiscValue1`, `DmgMultiplier1`, `SchoolMask`, `Comment`)
VALUES (39707,384,1,101,21,1,6,1,49,1,18,6,1,1, 'Creature 23487 creature_addon serverside spell');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (-43883,42992,42993,42994,43332);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(-43883,-42146,0, 'Remove Brewfest Ram DND when Rental racing ram removed'),
(-43883,-43310,0, 'Remove Ram level Neutral when Rental racing ram removed'),
(-43883,-42992,0, 'Rental racing ram removed removes Trot'),
(-43883,-42993,0, 'Rental racing ram removed removes Canter'),
(-43883,-42994,0, 'Rental racing ram removed removes Gallop'),
(-43883,-43332,0, 'Rental racing ram removed removes Exhausted'),
(42992,-42993,0, 'Trot removes Canter'),
(42992,-42994,0, 'Trot removes Gallop'),
(42993,-42992,0, 'Canter removes Trot'),
(42993,-42994,0, 'Canter removes Gallop'),
(42994,-42992,0, 'Gallop removes Trot'),
(42994,-42993,0, 'Gallop removes Canter'),
(43332,-42992,0, 'Exhausted removes Trot'),
(43332,-42993,0, 'Exhausted removes Canter'),
(43332,-42994,0, 'Exhausted removes Gallop');
DELETE FROM `spell_dbc` WHERE `Id` IN (7056,45459,45460);
INSERT INTO `spell_dbc` (`Id`,`Effect1`,`EffectApplyAuraName1`,`Comment`) VALUES
(7056,6,4, 'Placeholder, Missing Aura'),
(45459,6,4, 'Placeholder, Missing Aura'),
(45460,6,4, 'Placeholder, Missing Aura');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ElseGroup`) VALUES
(20,13044,8,13008,0), -- Requires Quest 13008 Complete and
(20,13044,8,13039,0), -- Requires Quest 13039 Complete and
(20,13044,8,13040,0), -- Requires Quest 13040 Complete
(20,13086,8,13070,0), -- Requires Quest 13070 Complete
(20,13104,8,13086,0), -- Requires Quest 13086 Complete and
(20,13104,15,1,1),    -- Requires Class Warrior or
(20,13104,15,2,1),    -- Requires Class Paladin or
(20,13104,15,3,1),    -- Requires Class Hunter or
(20,13104,15,4,1),    -- Requires Class Rogue or
(20,13104,15,5,1),   -- Requires Class Priest or
(20,13104,15,7,1),   -- Requires Class Shaman or
(20,13104,15,8,1),  -- Requires Class Mage or
(20,13104,15,9,1),  -- Requires Class Warlock or
(20,13104,15,11,1), -- Requires Class Druid
(20,13105,8,13086,0), -- Requires Quest 13086 Complete and
(20,13105,15,6,0),   -- Requires Class DeathKnight
(20,13122,8,13104,1), -- Requires Quest 13104 Complete or
(20,13122,8,13105,1), -- Requires Quest 13105 Complete
(20,13120,8,13104,1), -- Requires Quest 13104 Complete or
(20,13120,8,13105,1), -- Requires Quest 13105 Complete
(20,13118,8,13122,1), -- Requires Quest 13122 Complete
(20,13125,8,13118,0),   -- Requires Quest 13118 Complete and
(20,13125,8,13110,0),   -- Requires Quest 13110 Complete
(20,13130,8,13118,0),   -- Requires Quest 13118 Complete and
(20,13130,8,13110,0),   -- Requires Quest 13110 Complete
(20,13135,8,13118,0),   -- Requires Quest 13118 Complete and
(20,13135,8,13110,0),   -- Requires Quest 13110 Complete
(20,13139,8,13125,0),   -- Requires Quest 13110 Complete and
(20,13139,8,13130,0),   -- Requires Quest 13110 Complete and
(20,13139,8,13135,0),   -- Requires Quest 13110 Complete
(20,13068,8,13139,0),   -- Requires Quest 13139 Complete
(20,13224,8,13157,0),   -- Requires Quest 13157 Complete
(20,13225,8,13157,0);   -- Requires Quest 13157 Complete
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (32790,32788);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`)VALUES
(32790,57654,13073,1,0,1,0,0,1),
(32788,57539,13075,1,0,1,0,0,1);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=57787;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(57787,-57745,1, 'Remove See Quest Invisibility 1 When hit by quest chain end spell');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `Comment`) VALUES
(13,0,8593,0,18,1,17542,0,0, 'Symbol of Life can be casted on Young Furbolg Shaman'),
(13,0,8593,1,18,1,6172,0,0, 'Symbol of Life can be casted on Henze Faulk'),
(13,0,8593,2,18,1,6177,0,0, 'Symbol of Life can be casted on Narm Faulk');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17,0,43381,0,19,23652,0,0,63,'', 'Plague Spray - Target Restriction');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(16,0,25334,0,23,4027,0,0,0, '', 'Dismount player when not in intended zone'), -- Horde Siege Tank - Coast of Echoes (BT)
(16,0,25596,0,23,3537,0,0,0, '', 'Dismount player when not in intended zone'), -- Infected Kodo Beast - Borean Thundra (BT)
(16,0,27258,0,23,4188,0,0,0, '', 'Dismount player when not in intended zone'), -- Wintergarde Gryphon - The Carrion Fields (DB)
(16,0,27258,1,23,4177,0,0,0, '', 'Dismount player when not in intended zone'), -- Wintergarde Gryphon - Wintergrasp Keep (DB)
(16,0,27661,0,23,4188,0,0,0, '', 'Dismount player when not in intended zone'), -- Wintergarde Gryphon - The Carrion Fields (DB)
(16,0,27661,1,23,4177,0,0,0, '', 'Dismount player when not in intended zone'), -- Wintergarde Gryphon - Wintergrasp Keep (DB)
(16,0,27292,0,23,4207,0,0,0, '', 'Dismount player when not in intended zone'), -- Flamebringer - Voldrune (GH)
(16,0,27587,0,23,4188,0,0,0, '', 'Dismount player when not in intended zone'), -- Alliance Steam Tank - The Carrion Fields (DB)
(16,0,32535,0,23,4120,0,0,0, '', 'Dismount player when not in intended zone'), -- Wyrmrest Skylaton - The Nexus (Coldarra, BT)
(16,0,32535,1,23,4641,0,0,0, '', 'Dismount player when not in intended zone'), -- Wyrmrest Skylaton - Band of Transmutation (Coldarra, BT)
(16,0,29414,0,23,4417,0,0,0, '', 'Dismount player when not in intended zone'), -- Bone Gryphon - Onslaught Harbor (IC)
(16,0,29648,0,23,4417,0,0,0, '', 'Dismount player when not in intended zone'), -- Bone Gryphon - Onslaught Harbor (IC)
(16,0,30403,0,23,4525,0,0,0, '', 'Dismount player when not in intended zone'), -- Nergeld - The Underhalls (IC)
(16,0,24418,0,4,394,0,0,0, '', 'Dismount player when not in intended zone'), -- Steel Gate Flying Machine - Grizzly Hills
(16,0,25743,0,4,3537,0,0,0, '', 'Dismount player when not in intended zone'), -- Wooly Mammoth Bull - Borean Thundra
(16,0,27213,0,4,65,0,0,0, '', 'Dismount player when not in intended zone'), -- Onslaught Warhorse - Dragonblight
(16,0,27629,0,4,65,0,0,0, '', 'Dismount player when not in intended zone'), -- Wyrmrest Defender - Dragonblight
(16,0,27996,0,4,65,0,0,0, '', 'Dismount player when not in intended zone'), -- Wyrmrest Vanquisher - Dragonblight
(16,0,29753,0,4,67,0,0,0, '', 'Dismount player when not in intended zone'); -- Stormpeak Wyrm - Storm Peaks
DELETE FROM `spell_dbc` WHERE `Id`=27488;
INSERT INTO `spell_dbc` (`Id`,`Dispel`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`Stances`,`StancesNot`,`Targets`,`CastingTimeIndex`,`AuraInterruptFlags`,`ProcFlags`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`RangeIndex`,`StackAmount`,`EquippedItemClass`,`EquippedItemSubClassMask`,`EquippedItemInventoryTypeMask`,`Effect1`,`Effect2`,`Effect3`,`EffectDieSides1`,`EffectDieSides2`,`EffectDieSides3`,`EffectRealPointsPerLevel1`,`EffectRealPointsPerLevel2`,`EffectRealPointsPerLevel3`,`EffectBasePoints1`,`EffectBasePoints2`,`EffectBasePoints3`,`EffectMechanic1`,`EffectMechanic2`,`EffectMechanic3`,`EffectImplicitTargetA1`,`EffectImplicitTargetA2`,`EffectImplicitTargetA3`,`EffectImplicitTargetB1`,`EffectImplicitTargetB2`,`EffectImplicitTargetB3`,`EffectRadiusIndex1`,`EffectRadiusIndex2`,`EffectRadiusIndex3`,`EffectApplyAuraName1`,`EffectApplyAuraName2`,`EffectApplyAuraName3`,`EffectAmplitude1`,`EffectAmplitude2`,`EffectAmplitude3`,`EffectMultipleValue1`,`EffectMultipleValue2`,`EffectMultipleValue3`,`EffectMiscValue1`,`EffectMiscValue2`,`EffectMiscValue3`,`EffectMiscValueB1`,`EffectMiscValueB2`,`EffectMiscValueB3`,`EffectTriggerSpell1`,`EffectTriggerSpell2`,`EffectTriggerSpell3`,`EffectSpellClassMaskA1`,`EffectSpellClassMaskA2`,`EffectSpellClassMaskA3`,`EffectSpellClassMaskB1`,`EffectSpellClassMaskB2`,`EffectSpellClassMaskB3`,`EffectSpellClassMaskC1`,`EffectSpellClassMaskC2`,`EffectSpellClassMaskC3`,`MaxTargetLevel`,`SpellFamilyName`,`SpellFamilyFlags1`,`SpellFamilyFlags2`,`SpellFamilyFlags3`,`MaxAffectedTargets`,`DmgClass`,`PreventionType`,`DmgMultiplier1`,`DmgMultiplier2`,`DmgMultiplier3`,`AreaGroupId`,`SchoolMask`,`Comment`) VALUES
(27488,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Grimoire of Blood Pack Rank 6: spell filler');
DELETE FROM `spell_scripts` WHERE `id`=42287;
INSERT INTO `spell_scripts` (`id`,`effIndex`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(42287,0,0,17,33041,1,0,0,0,0,0);
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`Comment`) VALUES 
(17,0,47324,0,23,4156,0,0,0, NULL), -- Cast only in Needle - To Gardens
(17,0,47325,0,23,4157,0,0,0, NULL); -- Cast only in Garderns - To Needle
DELETE FROM spell_scripts where id=49466;
INSERT INTO `spell_scripts` (`id`,`effIndex`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES 
(49466,1,1,15,47523,1,0,0,0,0,0);
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`) VALUES
(13,31225,18,1,17768, 'Target for Shimmering Vessel on Sangrias Stillblade'); 
DELETE FROM `trinity_string` WHERE `entry`=65;
INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES (65, 'You must reach level 58 to use this portal.');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`ElseGroup`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`Comment`) VALUES
(17,0,65728,27,0,58,3,0,65, 'Blasted Lands Portal level restriction for Alliance'),
(17,0,65729,27,0,58,3,0,65, 'Blasted Lands Portal level restriction for Horde');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`) VALUES
(19,11360,23,87), -- Goldshire
(19,11440,23,3576), -- Azure Watch
(19,11439,23,131), -- Kharanos
(19,11361,23,362), -- Razor Hill
(19,11449,23,159), -- Brill
(19,11450,23,3665); -- Falconwing Square
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`) VALUES
(13,56683,18,1,30407);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (56684);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`)VALUES 
(56684,-56687,0, 'remove passenger on spell cast');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (56683);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`)VALUES 
(56683,-56726,1, 'remove web on rescue spell hit');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (56684);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`)VALUES 
(56684,-56687,0, 'remove passenger on spell cast');
SET @NPC_BLACKSMITH_GOODMAN := 27234;
SET @NPC_LEAD_CANNONEER_ZIERHUT := 27235;
SET @NPC_STABLE_MASTER_MERCER := 27236;
SET @NPC_COMMANDER_JORDAN := 27237;
SET @EAI_BLACKSMITH_GOODMAN := @NPC_BLACKSMITH_GOODMAN*100;
SET @EAI_LEAD_CANNONEER_ZIERHUT := @NPC_LEAD_CANNONEER_ZIERHUT*100;
SET @EAI_STABLE_MASTER_MERCER := @NPC_STABLE_MASTER_MERCER*100;
SET @EAI_COMMANDER_JORDAN := @NPC_COMMANDER_JORDAN*100;
SET @ITEM_ROD_OF_COMPULSION := 37438;
SET @SPELL_COMPELLED := 48714;
SET @SPELL_COMMANDER_JORDAN_ONDEATH := 48724;
SET @SPELL_LEAD_CANNONEER_ZIERHUT_ONDEATH := 48726;
SET @SPELL_BLACKSMITH_GOODMAN_ONDEATH := 48728;
SET @SPELL_STABLE_MASTER_MERCER_ONDEATH := 48730;
SET @SAY_GOODMAN := -963; -- set me up before importing
SET @SAY_ZIERHUT := @SAY_GOODMAN-1;
SET @SAY_MERCER := @SAY_GOODMAN-2;
SET @SAY_JORDAN := @SAY_GOODMAN-3;
UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry` IN (@NPC_BLACKSMITH_GOODMAN,@NPC_LEAD_CANNONEER_ZIERHUT,@NPC_STABLE_MASTER_MERCER,@NPC_COMMANDER_JORDAN);
DELETE FROM `creature_ai_scripts` WHERE `id` BETWEEN @EAI_BLACKSMITH_GOODMAN+1 AND @EAI_BLACKSMITH_GOODMAN+5;
DELETE FROM `creature_ai_scripts` WHERE `id` BETWEEN @EAI_LEAD_CANNONEER_ZIERHUT+1 AND @EAI_LEAD_CANNONEER_ZIERHUT+5;
DELETE FROM `creature_ai_scripts` WHERE `id` BETWEEN @EAI_STABLE_MASTER_MERCER+1 AND @EAI_STABLE_MASTER_MERCER+5;
DELETE FROM `creature_ai_scripts` WHERE `id` BETWEEN @EAI_COMMANDER_JORDAN+1 AND @EAI_COMMANDER_JORDAN+5;
INSERT INTO `creature_ai_scripts`(`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
(@EAI_BLACKSMITH_GOODMAN+1,@NPC_BLACKSMITH_GOODMAN,8,0,100,1,@SPELL_COMPELLED,-1,0,0,22,1,0,0,0,0,0,0,0,0,0,0, 'Blacksmith Goodman - On Spell Hit by Compelled: go to phase 2'),
(@EAI_BLACKSMITH_GOODMAN+2,@NPC_BLACKSMITH_GOODMAN,6,1,100,0,0,0,0,0,11,@SPELL_BLACKSMITH_GOODMAN_ONDEATH,6,16,0,0,0,0,0,0,0,0, 'Blacksmith Goodman - On Death in phase 2: Give quest credit'),
(@EAI_BLACKSMITH_GOODMAN+3,@NPC_BLACKSMITH_GOODMAN,6,0,100,0,0,0,0,0,28,0,@SPELL_COMPELLED,0,0,0,0,0,0,0,0,0, 'Blacksmith Goodman - On Death in phase 1: Remove aura Compelled'),
(@EAI_BLACKSMITH_GOODMAN+4,@NPC_BLACKSMITH_GOODMAN,7,0,100,0,0,0,0,0,28,0,@SPELL_COMPELLED,0,22,0,0,0,0,0,0,0, 'Blacksmith Goodman - On Evade: remove aura from Compelled and reset phase'),
(@EAI_BLACKSMITH_GOODMAN+5,@NPC_BLACKSMITH_GOODMAN,8,0,100,1,@SPELL_BLACKSMITH_GOODMAN_ONDEATH,-1,0,0,1,@SAY_GOODMAN,0,0,0,0,0,0,0,0,0,0, 'Blacksmith Goodman - Say your denouncement'),
(@EAI_LEAD_CANNONEER_ZIERHUT+1,@NPC_LEAD_CANNONEER_ZIERHUT,8,0,100,1,@SPELL_COMPELLED,-1,0,0,22,1,0,0,0,0,0,0,0,0,0,0, 'Lead Cannoneer Zierhut - On Spell Hit by Compelled: go to phase 2'),
(@EAI_LEAD_CANNONEER_ZIERHUT+2,@NPC_LEAD_CANNONEER_ZIERHUT,6,1,100,0,0,0,0,0,11,@SPELL_LEAD_CANNONEER_ZIERHUT_ONDEATH,6,16,0,0,0,0,0,0,0,0, 'Lead Cannoneer Zierhut - On Death in phase 2: Give quest credit'),
(@EAI_LEAD_CANNONEER_ZIERHUT+3,@NPC_LEAD_CANNONEER_ZIERHUT,6,0,100,0,0,0,0,0,28,0,@SPELL_COMPELLED,0,0,0,0,0,0,0,0,0, 'Lead Cannoneer Zierhut - On Death in phase 1: Remove aura Compelled'),
(@EAI_LEAD_CANNONEER_ZIERHUT+4,@NPC_LEAD_CANNONEER_ZIERHUT,7,0,100,0,0,0,0,0,28,0,@SPELL_COMPELLED,0,22,0,0,0,0,0,0,0, 'Lead Cannoneer Zierhut - On Evade: remove aura from Compelled and reset phase'),
(@EAI_LEAD_CANNONEER_ZIERHUT+5,@NPC_LEAD_CANNONEER_ZIERHUT,8,0,100,1,@SPELL_LEAD_CANNONEER_ZIERHUT_ONDEATH,-1,0,0,1,@SAY_ZIERHUT,0,0,0,0,0,0,0,0,0,0, 'Lead Cannoneer Zierhut - Say your denouncement'),
(@EAI_STABLE_MASTER_MERCER+1,@NPC_STABLE_MASTER_MERCER,8,0,100,1,@SPELL_COMPELLED,-1,0,0,22,1,0,0,0,0,0,0,0,0,0,0, 'Stable Master Mercer - On Spell Hit by Compelled: go to phase 2'),
(@EAI_STABLE_MASTER_MERCER+2,@NPC_STABLE_MASTER_MERCER,6,1,100,0,0,0,0,0,11,@SPELL_STABLE_MASTER_MERCER_ONDEATH,6,16,0,0,0,0,0,0,0,0, 'Stable Master Mercer - On Death in phase 2: Give quest credit'),
(@EAI_STABLE_MASTER_MERCER+3,@NPC_STABLE_MASTER_MERCER,6,0,100,0,0,0,0,0,28,0,@SPELL_COMPELLED,0,0,0,0,0,0,0,0,0, 'Stable Master Mercer - On Death in phase 1: Remove aura Compelled'),
(@EAI_STABLE_MASTER_MERCER+4,@NPC_STABLE_MASTER_MERCER,7,0,100,0,0,0,0,0,28,0,@SPELL_COMPELLED,0,22,0,0,0,0,0,0,0, 'Stable Master Mercer - On Evade: remove aura from Compelled and reset phase'),
(@EAI_STABLE_MASTER_MERCER+5,@NPC_STABLE_MASTER_MERCER,8,0,100,1,@SPELL_STABLE_MASTER_MERCER_ONDEATH,-1,0,0,1,@SAY_MERCER,0,0,0,0,0,0,0,0,0,0, 'Stable Master Mercer - Say your denouncement'),
(@EAI_COMMANDER_JORDAN+1,@NPC_COMMANDER_JORDAN,8,0,100,1,@SPELL_COMPELLED,-1,0,0,22,1,0,0,0,0,0,0,0,0,0,0, 'Commander Jordan - On Spell Hit by Compelled: go to phase 2'),
(@EAI_COMMANDER_JORDAN+2,@NPC_COMMANDER_JORDAN,6,1,100,0,0,0,0,0,11,@SPELL_COMMANDER_JORDAN_ONDEATH,6,16,0,0,0,0,0,0,0,0, 'Commander Jordan - On Death in phase 2: Give quest credit'),
(@EAI_COMMANDER_JORDAN+3,@NPC_COMMANDER_JORDAN,6,0,100,0,0,0,0,0,28,0,@SPELL_COMPELLED,0,0,0,0,0,0,0,0,0, 'Commander Jordan - On Death in phase 1: Remove aura Compelled'),
(@EAI_COMMANDER_JORDAN+4,@NPC_COMMANDER_JORDAN,7,0,100,0,0,0,0,0,28,0,@SPELL_COMPELLED,0,22,0,0,0,0,0,0,0, 'Commander Jordan - On Evade: remove aura from Compelled and reset phase'),
(@EAI_COMMANDER_JORDAN+5,@NPC_COMMANDER_JORDAN,8,0,100,1,@SPELL_COMMANDER_JORDAN_ONDEATH,-1,0,0,1,@SAY_JORDAN,0,0,0,0,0,0,0,0,0,0, 'Commander Jordan - Say your denouncement');
DELETE FROM `spell_scripts` WHERE `id` IN (@SPELL_COMMANDER_JORDAN_ONDEATH,@SPELL_LEAD_CANNONEER_ZIERHUT_ONDEATH,@SPELL_BLACKSMITH_GOODMAN_ONDEATH,@SPELL_STABLE_MASTER_MERCER_ONDEATH);
INSERT INTO `spell_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(@SPELL_COMMANDER_JORDAN_ONDEATH,0,15,48723,1,0,0,0,0,0),       -- cast "The Denouncement: Commander Jordan Kill Credit" on player
(@SPELL_LEAD_CANNONEER_ZIERHUT_ONDEATH,0,15,48725,1,0,0,0,0,0), -- cast "The Denouncement: Lead Cannoneer Zierhut Kill Credit" on player
(@SPELL_BLACKSMITH_GOODMAN_ONDEATH,0,15,48727,1,0,0,0,0,0),     -- cast "The Denouncement: Blacksmith Goodman Kill Credit" on player
(@SPELL_STABLE_MASTER_MERCER_ONDEATH,0,15,48729,1,0,0,0,0,0);   -- cast "The Denouncement: Stable Master Mercer Kill Credit" on player
DELETE FROM `conditions` where `SourceEntry`=@SPELL_COMMANDER_JORDAN_ONDEATH AND `SourceTypeOrReferenceId`=13;
DELETE FROM `conditions` where `SourceEntry`=@SPELL_LEAD_CANNONEER_ZIERHUT_ONDEATH AND `SourceTypeOrReferenceId`=13;
DELETE FROM `conditions` where `SourceEntry`=@SPELL_BLACKSMITH_GOODMAN_ONDEATH AND `SourceTypeOrReferenceId`=13;
DELETE FROM `conditions` where `SourceEntry`=@SPELL_STABLE_MASTER_MERCER_ONDEATH AND `SourceTypeOrReferenceId`=13;
DELETE FROM `conditions` where `SourceEntry`=@ITEM_ROD_OF_COMPULSION AND `SourceTypeOrReferenceId`=18;
INSERT INTO `conditions`(`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`Comment`) VALUES
(13,0,@SPELL_COMMANDER_JORDAN_ONDEATH,0,18,1,@NPC_COMMANDER_JORDAN,0,0, ''),
(13,0,@SPELL_LEAD_CANNONEER_ZIERHUT_ONDEATH,0,18,1,@NPC_LEAD_CANNONEER_ZIERHUT,0,0, ''),
(13,0,@SPELL_BLACKSMITH_GOODMAN_ONDEATH,0,18,1,@NPC_BLACKSMITH_GOODMAN,0,0, ''),
(13,0,@SPELL_STABLE_MASTER_MERCER_ONDEATH,0,18,1,@NPC_STABLE_MASTER_MERCER,0,0, ''),
(18,0,@ITEM_ROD_OF_COMPULSION,0,24,1,@NPC_BLACKSMITH_GOODMAN,0,0, ''),
(18,0,@ITEM_ROD_OF_COMPULSION,0,24,1,@NPC_LEAD_CANNONEER_ZIERHUT,0,0, ''),
(18,0,@ITEM_ROD_OF_COMPULSION,0,24,1,@NPC_STABLE_MASTER_MERCER,0,0, ''),
(18,0,@ITEM_ROD_OF_COMPULSION,0,24,1,@NPC_COMMANDER_JORDAN,0,0, '');
DELETE FROM `creature_ai_texts` WHERE `entry` IN (@SAY_GOODMAN,@SAY_ZIERHUT,@SAY_MERCER,@SAY_JORDAN);
INSERT INTO `creature_ai_texts`(`entry`,`content_default`,`type`,`comment`) VALUES
(@SAY_GOODMAN, 'You are being misled! The Onslaught is all lies! The Scourge and the Forsaken are not our enemies! Wake up!',1, 'Blacksmith Goodman - Denouncement'),
(@SAY_ZIERHUT, 'Renounce the Scarlet Onslaught! Don''t listen to the lies of the high general and the grand admiral any longer!',1, 'Lead Cannoneer Zierhut - Denouncement'),
(@SAY_MERCER, 'Abbendis is nothing but a harlot and Grand Admiral Westwind is selling her cheap like he sold us out!',1, 'Lead Cannoneer Zierhut - Denouncement'),
(@SAY_JORDAN, 'High general Abbendis personally told me that it was a mistake to come north and that we''re doomed! I urge you all to lay down your weapons and leave before it''s too late!',1, 'Commander Jordan - Denouncement');

# Conditions
REPLACE INTO `conditions` VALUES ('13', '0', '39248', '0', '18', '2', '22105', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6461', '7654', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6492', '7689', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10215', '2', '0', '2', '44790', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4679', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4679', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4686', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4686', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '63', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '63', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4656', '1', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4656', '2', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3645', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3645', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '85', '2', '0', '27', '40', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '85', '3', '0', '27', '10', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6525', '0', '0', '12', '12', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '11211', '0', '0', '9', '25283', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '11211', '1', '0', '9', '25287', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7481', '0', '0', '12', '12', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '32346', '0', '0', '9', '13369', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10215', '2', '0', '9', '13075', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4679', '2', '0', '25', '63644', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4686', '2', '0', '25', '63644', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '63', '2', '0', '25', '63644', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4656', '1', '0', '25', '63644', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3645', '2', '0', '25', '63644', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '85', '2', '0', '25', '63644', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6525', '0', '0', '11', '24755', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7481', '0', '0', '11', '24755', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4679', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4686', '2', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '63', '2', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4656', '1', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3645', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '85', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `gossip_menu` VALUES ('63', '562');
REPLACE INTO `gossip_menu` VALUES ('85', '4796');
REPLACE INTO `gossip_menu` VALUES ('1681', '2333');
REPLACE INTO `gossip_menu` VALUES ('2501', '3193');
REPLACE INTO `gossip_menu` VALUES ('4015', '4873');
REPLACE INTO `gossip_menu` VALUES ('4133', '5104');
REPLACE INTO `gossip_menu` VALUES ('4159', '5199');
REPLACE INTO `gossip_menu` VALUES ('4168', '5238');
REPLACE INTO `gossip_menu` VALUES ('4202', '5233');
REPLACE INTO `gossip_menu` VALUES ('4243', '5403');
REPLACE INTO `gossip_menu` VALUES ('4461', '5673');
REPLACE INTO `gossip_menu` VALUES ('4525', '1218');
REPLACE INTO `gossip_menu` VALUES ('4526', '1218');
REPLACE INTO `gossip_menu` VALUES ('4527', '1218');
REPLACE INTO `gossip_menu` VALUES ('4528', '5006');
REPLACE INTO `gossip_menu` VALUES ('4529', '5006');
REPLACE INTO `gossip_menu` VALUES ('4530', '5006');
REPLACE INTO `gossip_menu` VALUES ('4656', '5720');
REPLACE INTO `gossip_menu` VALUES ('4675', '4999');
REPLACE INTO `gossip_menu` VALUES ('4679', '4435');
REPLACE INTO `gossip_menu` VALUES ('4686', '561');
REPLACE INTO `gossip_menu` VALUES ('6024', '7176');
REPLACE INTO `gossip_menu` VALUES ('6232', '7406');
REPLACE INTO `gossip_menu` VALUES ('6461', '7599');
REPLACE INTO `gossip_menu` VALUES ('6461', '7654');
REPLACE INTO `gossip_menu` VALUES ('6489', '7389');
REPLACE INTO `gossip_menu` VALUES ('6492', '7599');
REPLACE INTO `gossip_menu` VALUES ('6492', '7689');
REPLACE INTO `gossip_menu` VALUES ('6525', '7727');
REPLACE INTO `gossip_menu` VALUES ('6528', '7730');
REPLACE INTO `gossip_menu` VALUES ('6529', '7731');
REPLACE INTO `gossip_menu` VALUES ('6530', '7732');
REPLACE INTO `gossip_menu` VALUES ('6532', '7734');
REPLACE INTO `gossip_menu` VALUES ('6541', '7746');
REPLACE INTO `gossip_menu` VALUES ('6564', '7779');
REPLACE INTO `gossip_menu` VALUES ('6567', '7782');
REPLACE INTO `gossip_menu` VALUES ('6577', '7793');
REPLACE INTO `gossip_menu` VALUES ('6578', '7794');
REPLACE INTO `gossip_menu` VALUES ('6579', '7795');
REPLACE INTO `gossip_menu` VALUES ('6581', '7799');
REPLACE INTO `gossip_menu` VALUES ('6582', '7792');
REPLACE INTO `gossip_menu` VALUES ('6583', '7797');
REPLACE INTO `gossip_menu` VALUES ('6791', '8108');
REPLACE INTO `gossip_menu` VALUES ('6796', '8114');
REPLACE INTO `gossip_menu` VALUES ('6927', '8216');
REPLACE INTO `gossip_menu` VALUES ('6928', '8217');
REPLACE INTO `gossip_menu` VALUES ('7045', '8280');
REPLACE INTO `gossip_menu` VALUES ('7093', '8347');
REPLACE INTO `gossip_menu` VALUES ('7095', '8349');
REPLACE INTO `gossip_menu` VALUES ('7096', '8350');
REPLACE INTO `gossip_menu` VALUES ('7098', '8352');
REPLACE INTO `gossip_menu` VALUES ('7099', '8353');
REPLACE INTO `gossip_menu` VALUES ('7100', '8354');
REPLACE INTO `gossip_menu` VALUES ('7101', '8355');
REPLACE INTO `gossip_menu` VALUES ('7102', '8356');
REPLACE INTO `gossip_menu` VALUES ('7103', '8357');
REPLACE INTO `gossip_menu` VALUES ('7105', '8359');
REPLACE INTO `gossip_menu` VALUES ('7126', '8397');
REPLACE INTO `gossip_menu` VALUES ('7127', '8396');
REPLACE INTO `gossip_menu` VALUES ('7128', '8395');
REPLACE INTO `gossip_menu` VALUES ('7129', '8394');
REPLACE INTO `gossip_menu` VALUES ('7130', '8393');
REPLACE INTO `gossip_menu` VALUES ('7131', '8392');
REPLACE INTO `gossip_menu` VALUES ('7132', '8391');
REPLACE INTO `gossip_menu` VALUES ('7133', '8390');
REPLACE INTO `gossip_menu` VALUES ('7134', '8389');
REPLACE INTO `gossip_menu` VALUES ('7135', '8388');
REPLACE INTO `gossip_menu` VALUES ('7144', '8408');
REPLACE INTO `gossip_menu` VALUES ('7145', '8409');
REPLACE INTO `gossip_menu` VALUES ('7150', '8414');
REPLACE INTO `gossip_menu` VALUES ('7151', '8415');
REPLACE INTO `gossip_menu` VALUES ('7152', '8416');
REPLACE INTO `gossip_menu` VALUES ('7173', '8448');
REPLACE INTO `gossip_menu` VALUES ('7174', '8452');
REPLACE INTO `gossip_menu` VALUES ('7175', '8454');
REPLACE INTO `gossip_menu` VALUES ('7263', '8587');
REPLACE INTO `gossip_menu` VALUES ('7386', '8847');
REPLACE INTO `gossip_menu` VALUES ('7418', '8960');
REPLACE INTO `gossip_menu` VALUES ('7481', '9051');
REPLACE INTO `gossip_menu` VALUES ('7558', '9174');
REPLACE INTO `gossip_menu` VALUES ('7587', '9235');
REPLACE INTO `gossip_menu` VALUES ('7712', '9414');
REPLACE INTO `gossip_menu` VALUES ('7855', '9617');
REPLACE INTO `gossip_menu` VALUES ('7945', '9751');
REPLACE INTO `gossip_menu` VALUES ('8057', '9951');
REPLACE INTO `gossip_menu` VALUES ('8058', '9953');
REPLACE INTO `gossip_menu` VALUES ('8059', '9954');
REPLACE INTO `gossip_menu` VALUES ('8352', '10423');
REPLACE INTO `gossip_menu` VALUES ('8375', '10450');
REPLACE INTO `gossip_menu` VALUES ('8560', '7778');
REPLACE INTO `gossip_menu` VALUES ('8611', '10790');
REPLACE INTO `gossip_menu` VALUES ('8612', '10789');
REPLACE INTO `gossip_menu` VALUES ('8806', '11293');
REPLACE INTO `gossip_menu` VALUES ('8848', '11472');
REPLACE INTO `gossip_menu` VALUES ('9476', '12734');
REPLACE INTO `gossip_menu` VALUES ('9511', '12810');
REPLACE INTO `gossip_menu` VALUES ('9593', '12946');
REPLACE INTO `gossip_menu` VALUES ('9751', '13382');
REPLACE INTO `gossip_menu` VALUES ('9851', '13637');
REPLACE INTO `gossip_menu` VALUES ('9877', '13699');
REPLACE INTO `gossip_menu` VALUES ('9992', '13847');
REPLACE INTO `gossip_menu` VALUES ('9999', '13856');
REPLACE INTO `gossip_menu` VALUES ('10034', '13946');
REPLACE INTO `gossip_menu` VALUES ('10040', '13948');
REPLACE INTO `gossip_menu` VALUES ('10041', '13947');
REPLACE INTO `gossip_menu` VALUES ('10112', '14038');
REPLACE INTO `gossip_menu` VALUES ('10119', '14046');
REPLACE INTO `gossip_menu` VALUES ('10135', '14071');
REPLACE INTO `gossip_menu` VALUES ('10203', '14165');
REPLACE INTO `gossip_menu` VALUES ('10606', '14673');
REPLACE INTO `gossip_menu` VALUES ('10662', '14782');
REPLACE INTO `gossip_menu` VALUES ('10666', '14775');
REPLACE INTO `gossip_menu` VALUES ('34346', '14131');
REPLACE INTO `gossip_menu_option` VALUES ('6582', '0', '0', 'What can I purchase?', '1', '1', '6577', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6582', '1', '0', 'What are Darkmoon Faire Prize Tickets and how do I get them?', '1', '1', '6578', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6582', '2', '0', 'What are Darkmoon Cards?', '1', '1', '6579', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6582', '3', '0', 'What other things can I do at the faire?', '1', '1', '6581', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6579', '0', '0', '<more>', '1', '1', '8848', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6581', '0', '0', 'What are these Tonk Control Consoles?', '1', '1', '7093', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6581', '1', '0', 'Tell me about the cannon.', '1', '1', '7095', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10215', '2', '0', 'I wish to return to Arch Druid Lilliandra. Can you send me back to her?', '1', '1', '0', '0', '10215', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4679', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4679', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4679', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4686', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4686', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4686', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('8612', '0', '3', 'I\'d like some weapon training', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8612', '1', '0', 'What can other weapon masters teach?', '1', '1', '8611', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8611', '0', '0', 'Axe', '1', '1', '8592', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8611', '1', '0', 'Crossbow', '1', '1', '8594', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8611', '2', '0', 'Fist Weapon', '1', '1', '8596', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8611', '3', '0', 'Gun', '1', '1', '8597', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8611', '4', '0', 'Mace', '1', '1', '8598', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8611', '5', '0', 'Staff', '1', '1', '8600', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4159', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5856', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4202', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4168', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4015', '0', '3', 'I seek training to ride a steed.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('63', '1', '3', 'I am interested in mage training.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('63', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('63', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4656', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4656', '1', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4656', '2', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3645', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3645', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('3645', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('85', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('85', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('85', '3', '0', 'I wish to unlearn my talents.', '16', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6791', '0', '0', 'I\'d like to stable my pet here', '14', '4194304', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6525', '0', '0', 'Trick or Treat!', '1', '1', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6525', '1', '5', 'Make this inn your home.', '8', '65536', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6525', '2', '0', 'What can I do at an inn?', '1', '1', '1221', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('6525', '3', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6528', '0', '1', 'Let me browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4133', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4243', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('11211', '0', '0', 'Get in the Flying Machine.', '1', '1', '0', '0', '11211', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('11211', '1', '1', 'Take me to Mekkatorque!', '1', '1', '0', '0', '39396', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7712', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8057', '0', '1', 'Cheese, eh? Is it perhaps... aged cheese?', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8058', '0', '1', 'I need some reagents and poisons, lady.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7879', '0', '3', 'I would like to train.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7879', '1', '1', 'Let me browse your goods.', '3', '128', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('8059', '0', '1', 'I need to repair.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8560', '0', '2', 'Show me where I can fly.', '4', '8192', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7481', '0', '0', 'Trick or Treat!', '1', '1', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7481', '1', '5', 'Make this inn your home.', '8', '65536', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7481', '2', '0', 'What can I do at an inn?', '1', '1', '1221', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7481', '3', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7135', '1', '0', 'What Guardian? I don\'t understand any of this.', '1', '1', '7134', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7134', '1', '0', 'Please continue.', '1', '1', '7133', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7133', '1', '0', 'What corruption?', '1', '1', '7132', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7132', '1', '0', 'Please continue.', '1', '1', '7131', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7131', '1', '0', 'Please continue.', '1', '1', '7130', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7130', '1', '0', 'What?', '1', '1', '7129', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7129', '1', '0', 'This is disturbing. Please continue.', '1', '1', '7128', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7128', '1', '0', 'Please, tell me more.', '1', '1', '7127', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7127', '1', '0', 'Is there anything else?', '1', '1', '7126', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('32346', '0', '0', 'Lady Proudmoore. I am ready to go to Orgrimmar. Please open a portal.', '1', '1', '1', '0', '32346', '0', '0', null);
REPLACE INTO `gossip_scripts` VALUES ('10215', '0', '15', '57670', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('10215', '0', '15', '57670', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('11211', '0', '15', '73896', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('39396', '0', '15', '74166', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('32346', '0', '0', '0', '0', '2000000423', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('32346', '0', '16', '16124', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('32346', '5', '15', '60904', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('32346', '12', '0', '0', '0', '2000000027', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('32346', '0', '0', '0', '0', '2000000423', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('32346', '0', '16', '16124', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('32346', '5', '15', '60904', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('32346', '0', '0', '0', '0', '2000000423', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('32346', '0', '16', '16124', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('32346', '5', '15', '60904', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('32346', '0', '0', '0', '0', '2000000423', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('32346', '0', '16', '16124', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('32346', '5', '15', '60904', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('32346', '0', '0', '0', '0', '2000000423', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('32346', '0', '16', '16124', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('32346', '5', '15', '60904', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('32346', '12', '16', '16125', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('32346', '11', '9', '2655', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('32346', '5', '15', '60904', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('32346', '12', '0', '0', '0', '2000000027', '0', '0', '0', '0');

# FIX
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50314;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50314;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50320;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50320;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50243;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50243;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50244;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50244;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50247;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50247;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50250;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50250;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50251;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50251;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50254;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50254;
REPLACE INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
-- generic
(  6962, 'spell_gen_pet_summoned'),
( 24750, 'spell_gen_trick'),
( 24751, 'spell_gen_trick_or_treat'),
( 29266, 'spell_creature_permanent_feign_death'),
( 31261, 'spell_creature_permanent_feign_death'),
( 41337, 'spell_gen_aura_of_anger'),
( 45472, 'spell_gen_parachute'),
( 46394, 'spell_gen_burn_brutallus'),
( 57685, 'spell_creature_permanent_feign_death'),
( 58601, 'spell_gen_remove_flight_auras'),
( 66118, 'spell_gen_leeching_swarm'),
( 58951, 'spell_creature_permanent_feign_death'),
( 70592, 'spell_creature_permanent_feign_death'),
( 70628, 'spell_creature_permanent_feign_death'),
( 74490, 'spell_creature_permanent_feign_death'),
( 72752, 'spell_pvp_trinket_wotf_shared_cd'),
( 72757, 'spell_pvp_trinket_wotf_shared_cd'),
-- instances
-- Forge of Souls
( 68793, 'spell_bronjahm_magic_bane'),
( 69050, 'spell_bronjahm_magic_bane'),
( 68861, 'spell_bronjahm_consume_soul'),
( 69008, 'spell_bronjahm_soulstorm_channel'),
( 68870, 'spell_bronjahm_soulstorm_visual'),
-- Pit of Saron
( 69172, 'spell_tyrannus_overlord_brand'),
-- Icecrown Citadel
( 69057, 'spell_marrowgar_bone_spike_graveyard'),
( 69140, 'spell_marrowgar_coldflame'),
( 72705, 'spell_marrowgar_coldflame'),
( 69147, 'spell_marrowgar_coldflame_trigger'),
( 69075, 'spell_marrowgar_bone_storm'),
( 70834, 'spell_marrowgar_bone_storm'),
( 70835, 'spell_marrowgar_bone_storm'),
( 70836, 'spell_marrowgar_bone_storm'),
( 70842, 'spell_deathwhisper_mana_barrier'),
( 70903, 'spell_cultist_dark_martyrdrom'),
( 71236, 'spell_cultist_dark_martyrdrom'),
( 72202, 'spell_deathbringer_blood_link'),
( 72178, 'spell_deathbringer_blood_link_aura'),
( 72371, 'spell_deathbringer_blood_power'),
( 72409, 'spell_deathbringer_rune_of_blood'),
( 72447, 'spell_deathbringer_rune_of_blood'),
( 72448, 'spell_deathbringer_rune_of_blood'),
( 72449, 'spell_deathbringer_rune_of_blood'),
( 72380, 'spell_deathbringer_blood_nova'),
( 72438, 'spell_deathbringer_blood_nova'),
( 72439, 'spell_deathbringer_blood_nova'),
( 72440, 'spell_deathbringer_blood_nova'),
( 71123, 'spell_stinky_precious_decimate'),
( 73032, 'spell_festergut_pungent_blight'),
( 73031, 'spell_festergut_pungent_blight'),
( 71219, 'spell_festergut_pungent_blight'),
( 69195, 'spell_festergut_pungent_blight'),
( 72219, 'spell_festergut_gastric_bloat'),
( 72551, 'spell_festergut_gastric_bloat'),
( 72552, 'spell_festergut_gastric_bloat'),
( 72553, 'spell_festergut_gastric_bloat'),
( 69290, 'spell_festergut_blighted_spores'),
( 71222, 'spell_festergut_blighted_spores'),
( 73033, 'spell_festergut_blighted_spores'),
( 73034, 'spell_festergut_blighted_spores'),
( 69782, 'spell_rotface_ooze_flood'),
( 69796, 'spell_rotface_ooze_flood'),
( 69798, 'spell_rotface_ooze_flood'),
( 69801, 'spell_rotface_ooze_flood'),
( 69538, 'spell_rotface_little_ooze_combine'),
( 69553, 'spell_rotface_large_ooze_combine'),
( 69610, 'spell_rotface_large_ooze_buff_combine'),
( 69839, 'spell_rotface_unstable_ooze_explosion_init'),
( 69832, 'spell_rotface_unstable_ooze_explosion'),
( 71441, 'spell_rotface_unstable_ooze_explosion_suicide'),
( 70701, 'spell_putricide_expunged_gas'),
( 70343, 'spell_putricide_slime_puddle'),
( 70351, 'spell_putricide_unstable_experiment'),
( 71966, 'spell_putricide_unstable_experiment'),
( 71967, 'spell_putricide_unstable_experiment'),
( 71968, 'spell_putricide_unstable_experiment'),
( 71412, 'spell_putricide_ooze_summon'),
( 71415, 'spell_putricide_ooze_summon'),
( 70672, 'spell_putricide_gaseous_bloat'),
( 72455, 'spell_putricide_gaseous_bloat'),
( 72832, 'spell_putricide_gaseous_bloat'),
( 72833, 'spell_putricide_gaseous_bloat'),
( 70459, 'spell_putricide_ooze_eruption_searcher'),
( 71255, 'spell_putricide_choking_gas_bomb'),
( 70920, 'spell_putricide_unbound_plague'),
( 70360, 'spell_putricide_eat_ooze'),
( 72527, 'spell_putricide_eat_ooze'),
( 72451, 'spell_putricide_mutated_plague'),
( 72463, 'spell_putricide_mutated_plague'),
( 72671, 'spell_putricide_mutated_plague'),
( 72672, 'spell_putricide_mutated_plague'),
( 70308, 'spell_putricide_mutation_init'),
( 70311, 'spell_putricide_mutated_transformation'),
( 71503, 'spell_putricide_mutated_transformation'),
( 70405, 'spell_putricide_mutated_transformation_dismiss'),
( 72508, 'spell_putricide_mutated_transformation_dismiss'),
( 72509, 'spell_putricide_mutated_transformation_dismiss'),
( 72510, 'spell_putricide_mutated_transformation_dismiss'),
( 70539, 'spell_putricide_regurgitated_ooze'),
( 72457, 'spell_putricide_regurgitated_ooze'),
( 72875, 'spell_putricide_regurgitated_ooze'),
( 72876, 'spell_putricide_regurgitated_ooze'),
( 71598, 'spell_creature_permanent_feign_death'),
( 71806, 'spell_taldaram_glittering_sparks'),
( 71718, 'spell_taldaram_summon_flame_ball'),
( 72040, 'spell_taldaram_summon_flame_ball'),
( 55891, 'spell_taldaram_flame_ball_visual'),
( 55947, 'spell_taldaram_flame_ball_visual'),
( 71756, 'spell_taldaram_ball_of_inferno_flame'),
( 72782, 'spell_taldaram_ball_of_inferno_flame'),
( 72783, 'spell_taldaram_ball_of_inferno_flame'),
( 72784, 'spell_taldaram_ball_of_inferno_flame'),
( 72080, 'spell_valanar_kinetic_bomb'),
( 72087, 'spell_valanar_kinetic_bomb_knockback'),
( 73001, 'spell_blood_council_shadow_prison'),
( 72999, 'spell_blood_council_shadow_prison_damage'),
-- Ulduar
( 62717, 'spell_ignis_slag_pot'),
( 63477, 'spell_ignis_slag_pot'),
-- quest
(  8913, 'spell_q55_sacred_cleansing'),
( 17271, 'spell_q5206_test_fetid_skull'),
( 19512, 'spell_q6124_6129_apply_salve'),
( 34665, 'spell_q10255_administer_antidote'),
( 44936, 'spell_q11515_fel_siphon_dummy'),
( 45449, 'spell_q11587_arcane_prisoner_rescue'),
( 46023, 'spell_q11730_ultrasonic_screwdriver'),
( 49587, 'spell_q12459_seeds_of_natures_wrath'),
( 51840, 'spell_q12634_despawn_fruit_tosser'),
( 52308, 'spell_q12683_take_sputum_sample'),
( 55804, 'spell_q12937_relief_for_the_fallen'),
-- item
( 23074, 'spell_item_arcanite_dragonling'),
(  8063, 'spell_item_deviate_fish'),
( 67019, 'spell_item_flask_of_the_north'),
( 23133, 'spell_item_gnomish_battle_chicken'),
( 13280, 'spell_item_gnomish_death_ray'),
( 33060, 'spell_item_make_a_wish'),
( 23076, 'spell_item_mechanical_dragonling'),
( 40802, 'spell_item_mingos_fortune_generator'),
( 23075, 'spell_item_mithril_mechanical_dragonling'),
( 13120, 'spell_item_net_o_matic'),
( 16589, 'spell_item_noggenfogger_elixir'),
(  8213, 'spell_item_savory_deviate_delight'),
( 14537, 'spell_item_six_demon_bag'),
( 59640, 'spell_item_underbelly_elixir'),
( 71905, 'spell_item_shadowmourne'),
-- warrior
( 12975, 'spell_warr_last_stand'),
-- paladin
( 20425, 'spell_pal_judgement_of_command'),
( 63521, 'spell_pal_guarded_by_the_light'),
(-20473, 'spell_pal_holy_shock'),
( 20911, 'spell_pal_blessing_of_sanctuary'),
( 25899, 'spell_pal_blessing_of_sanctuary'),
( 37877, 'spell_pal_blessing_of_faith'),
-- hunter
( 53209, 'spell_hun_chimera_shot'),
( 53412, 'spell_hun_invigoration'),
( 53271, 'spell_hun_masters_call'),
( 53478, 'spell_hun_last_stand_pet'),
( 23989, 'spell_hun_readiness'),
( 37506, 'spell_hun_scatter_shot'),
(-53302, 'spell_hun_sniper_training'),
( 55709, 'spell_hun_pet_heart_of_the_phoenix'),
( 54044, 'spell_hun_pet_carrion_feeder'),
-- rogue
(  5938, 'spell_rog_shiv'),
( 14185, 'spell_rog_preparation'),
(-51685, 'spell_rog_prey_on_the_weak'),
-- priest
( 47948, 'spell_pri_pain_and_suffering_proc'),
(-47540, 'spell_pri_penance'),
-- death knight
(-49158, 'spell_dk_corpse_explosion'),
( 50524, 'spell_dk_runic_power_feed'),
(-55090, 'spell_dk_scourge_strike'),
-- shaman
( 39610, 'spell_sha_mana_tide_totem'),
( -1535, 'spell_sha_fire_nova'),
-- mage
(-11113, 'spell_mage_blast_wave'),
( 11958, 'spell_mage_cold_snap'),
( 31687, 'spell_mage_summon_water_elemental'),
( 32826, 'spell_mage_polymorph_visual'),
-- warlock
( -6201, 'spell_warl_create_healthstone'),
( 47193, 'spell_warl_demonic_empowerment'),
( 47422, 'spell_warl_everlasting_affliction'),
-- druid
( 54846, 'spell_dru_glyph_of_starfire'),
-- example
( 66244, 'spell_ex_66244'), 
( 5581,  'spell_ex_5581');


# WDB_Check
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=1921;

# Temp_FIX
update gossip_scripts set datalong2=3 where datalong2=2 AND command=15;
DELETE FROM conditions WHERE ConditionTypeOrReference=14 AND ConditionValue1=0;
UPDATE conditions SET ConditionValue2=0 WHERE ConditionTypeOrReference=25 AND ConditionValue2=1;
UPDATE conditions SET ConditionValue2=0 WHERE ConditionTypeOrReference=17 AND ConditionValue2=1;
UPDATE `creature_template` SET `gossip_menu_id` = 0 WHERE `npcflag` = `npcflag`|32;
UPDATE `gossip_menu_option` SET `box_text`='Are you sure you wish to purchase a Dual Talent Specialization?' WHERE `option_id` =18;
UPDATE creature_template_addon SET path_id=0;

# NPC_FIX
UPDATE
`creature_template_addon`, `creature_template`
SET
`creature_template`.`unit_flags`=IF(`creature_template`.`unit_flags` &  33554432=33554432,570721024,537166592),
`creature_template`.`dynamicflags`=`creature_template`.`dynamicflags` | 32
WHERE
`creature_template`.`entry`=`creature_template_addon`.`entry`
AND `creature_template_addon`.`auras`='29266 0 29266 1';
UPDATE `creature_template` SET `faction_A` = '1802' WHERE `faction_A` = '1732';
UPDATE `creature_template` SET `faction_A` = '1802' WHERE `faction_A` = '1733';
UPDATE `creature_template` SET `faction_A` = '1802' WHERE `faction_A` = '84';
UPDATE `creature_template` SET `faction_H` = '1802' WHERE `faction_H` = '1732';
UPDATE `creature_template` SET `faction_H` = '1802' WHERE `faction_H` = '1733';
UPDATE `creature_template` SET `faction_H` = '1802' WHERE `faction_H` = '84';
UPDATE `creature_template` SET `faction_A` = '1801' WHERE `faction_A` = '1735';
UPDATE `creature_template` SET `faction_A` = '1801' WHERE `faction_A` = '1734';
UPDATE `creature_template` SET `faction_A` = '1801' WHERE `faction_A` = '83';
UPDATE `creature_template` SET `faction_H` = '1801' WHERE `faction_H` = '1735';
UPDATE `creature_template` SET `faction_H` = '1801' WHERE `faction_H` = '1734';
UPDATE `creature_template` SET `faction_H` = '1801' WHERE `faction_H` = '83';
UPDATE `gameobject_template` SET `faction` = '1801' WHERE `faction` = '1735';
UPDATE `gameobject_template` SET `faction` = '1801' WHERE `faction` = '1734';
UPDATE `gameobject_template` SET `faction` = '1801' WHERE `faction` = '83';
UPDATE `gameobject_template` SET `faction` = '1802' WHERE `faction` = '1732';
UPDATE `gameobject_template` SET `faction` = '1802' WHERE `faction` = '1733';
UPDATE `gameobject_template` SET `faction` = '1802' WHERE `faction` = '84';
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`unit_class`=`creature_template`.`unit_class`,
`copy`.`unit_flags`=`creature_template`.`unit_flags`,
`copy`.`npcflag`=`creature_template`.`npcflag`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`equipment_id`=`creature_template`.`equipment_id`,
`copy`.`faction_A`=`creature_template`.`faction_A`,
`copy`.`faction_H`=`creature_template`.`faction_H`,
`copy`.`speed_run`=`creature_template`.`speed_run`,
`copy`.`speed_walk`=`creature_template`.`speed_walk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`dmgschool`=`creature_template`.`dmgschool`,
`copy`.`mingold`=`creature_template`.`mingold`,
`copy`.`maxgold`=`creature_template`.`maxgold`,
`copy`.`VehicleId`=`creature_template`.`VehicleId`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_1`;
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`unit_class`=`creature_template`.`unit_class`,
`copy`.`unit_flags`=`creature_template`.`unit_flags`,
`copy`.`npcflag`=`creature_template`.`npcflag`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`equipment_id`=`creature_template`.`equipment_id`,
`copy`.`faction_A`=`creature_template`.`faction_A`,
`copy`.`faction_H`=`creature_template`.`faction_H`,
`copy`.`speed_run`=`creature_template`.`speed_run`,
`copy`.`speed_walk`=`creature_template`.`speed_walk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`dmgschool`=`creature_template`.`dmgschool`,
`copy`.`mingold`=`creature_template`.`mingold`,
`copy`.`maxgold`=`creature_template`.`maxgold`,
`copy`.`VehicleId`=`creature_template`.`VehicleId`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_2`;
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`unit_class`=`creature_template`.`unit_class`,
`copy`.`unit_flags`=`creature_template`.`unit_flags`,
`copy`.`npcflag`=`creature_template`.`npcflag`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`equipment_id`=`creature_template`.`equipment_id`,
`copy`.`faction_A`=`creature_template`.`faction_A`,
`copy`.`faction_H`=`creature_template`.`faction_H`,
`copy`.`speed_run`=`creature_template`.`speed_run`,
`copy`.`speed_walk`=`creature_template`.`speed_walk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`dmgschool`=`creature_template`.`dmgschool`,
`copy`.`mingold`=`creature_template`.`mingold`,
`copy`.`maxgold`=`creature_template`.`maxgold`,
`copy`.`VehicleId`=`creature_template`.`VehicleId`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_3`;

# FINAL_ITEM_FIX
UPDATE `item_template` SET `StatsCount`=1 WHERE `stat_type1`>0 AND `stat_value1`<>0; 
UPDATE `item_template` SET `StatsCount`=2 WHERE `stat_type2`>0 AND `stat_value2`<>0; 
UPDATE `item_template` SET `StatsCount`=3 WHERE `stat_type3`>0 AND `stat_value3`<>0; 
UPDATE `item_template` SET `StatsCount`=4 WHERE `stat_type4`>0 AND `stat_value4`<>0; 
UPDATE `item_template` SET `StatsCount`=5 WHERE `stat_type5`>0 AND `stat_value5`<>0; 
UPDATE `item_template` SET `StatsCount`=6 WHERE `stat_type6`>0 AND `stat_value6`<>0; 
UPDATE `item_template` SET `StatsCount`=7 WHERE `stat_type7`>0 AND `stat_value7`<>0; 
UPDATE `item_template` SET `StatsCount`=8 WHERE `stat_type8`>0 AND `stat_value8`<>0; 
UPDATE `item_template` SET `StatsCount`=9 WHERE `stat_type9`>0 AND `stat_value9`<>0; 
UPDATE `item_template` SET `StatsCount`=10 WHERE `stat_type10`>0 AND `stat_value10`<>0;
UPDATE `item_template` SET `DisenchantID` = 0 WHERE `RequiredDisenchantSkill` = -1;

# Final_FIX
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE QuestFlags=QuestFlags|4096;
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE QuestFlags=QuestFlags|32768;
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_linked_respawn` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_linked_respawn` WHERE `linkedGuid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `npc_gossip` WHERE `npc_guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `game_event_gameobject` WHERE `guid` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
UPDATE creature_template SET unit_flags=unit_flags&~2048 WHERE unit_flags&2048=2048;
UPDATE creature_template SET unit_flags=unit_flags&~524288 WHERE unit_flags&524288=524288;
UPDATE creature_template SET unit_flags=unit_flags&~67108864 WHERE unit_flags&67108864=67108864;
UPDATE creature_template SET unit_flags=unit_flags&~8388608 WHERE unit_flags&8388608=8388608;
UPDATE `creature` SET `MovementType` = 0 WHERE `spawndist` = 0 AND `MovementType`=1;
UPDATE `creature` SET `spawndist`=0 WHERE `MovementType`=0;
UPDATE `creature` SET `spawntimesecs` = 300 WHERE `spawntimesecs` = 25;
UPDATE `gameobject` SET `spawntimesecs` = 300 WHERE `spawntimesecs` = 25;
UPDATE `creature_template` SET `scale` = 1 WHERE `scale` = 0;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 0;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 3;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 10;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 25;
UPDATE `gameobject` SET `state`=1 WHERE `state`=0 AND `id` IN (SELECT entry FROM `gameobject_template` WHERE `type`=3);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_questrelation`);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_involvedrelation`);
# UPDATE `gameobject` SET `state` = 0 WHERE `id` IN (SELECT `entry` FROM `gameobject_template` WHERE `type` = 0 AND `data0` = 1);
UPDATE `gameobject_template` SET `flags`=`flags`&~4 WHERE `type` IN (2,19,17);
DELETE FROM `gameobject_scripts` WHERE `id` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `gameobject_scripts` WHERE `command` in (11, 12) and `datalong` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE `spellid_2` = 0 AND `spelltrigger_2` = 6;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `AIName` = 'EventAI' AND `ScriptName` = 'generic_creature';
UPDATE `creature_template` SET npcflag = npcflag|1 WHERE `gossip_menu_id` > 0;

UPDATE
`creature`, `waypoint_data`
SET
`creature`.`spawndist`=0,
`creature`.`MovementType`=2
WHERE
`creature`.`guid`=`waypoint_data`.`id`;

DELETE
`waypoint_data`
FROM
`waypoint_data`
LEFT JOIN
(`creature`)
ON
(`creature`.`guid`=`waypoint_data`.`id`)
WHERE
`creature`.`guid` IS NULL;

ALTER TABLE `waypoint_data` ADD INDEX `temp_action` (`action`);
ALTER TABLE `waypoint_scripts` ADD INDEX `temp_id` (`id`);
DELETE
`waypoint_scripts`
FROM
`waypoint_scripts`
LEFT JOIN
(`waypoint_data`)
ON
(`waypoint_data`.`action`=`waypoint_scripts`.`id`)
WHERE
`waypoint_data`.`action` IS NULL;
ALTER TABLE `waypoint_data` DROP INDEX `temp_action`;
ALTER TABLE `waypoint_scripts` DROP INDEX `temp_id`;

update creature_addon set path_id=0;
UPDATE
`creature_addon`, `waypoint_data`
SET
`creature_addon`.`path_id`=`creature_addon`.`guid`
WHERE
`creature_addon`.`guid`=`waypoint_data`.`id`;

UPDATE version SET `cache_id`= '572';
UPDATE version SET `core_revision`= '10394';
UPDATE version SET `db_version`= 'YTDB_0.14.0_R572_TC_R10394_TDBAI_335.0.2_RuDB_R38.4';
