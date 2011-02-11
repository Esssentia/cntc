# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 564_FIX_9910 565_FIX_10001 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('565_FIX_10001');

# TC
DELETE FROM spell_scripts WHERE `id`=51662 AND `effIndex`=0;
INSERT INTO spell_scripts (`id`,`effIndex`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(51662,0,0,15,63848,1,1,0,0,0,0);
DELETE FROM spell_scripts WHERE `id`=31231 AND `effIndex`=0;
INSERT INTO spell_scripts (`id`,`effIndex`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(31231,0,0,15,45182,1,1,0,0,0,0);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=25084);
INSERT INTO `creature_ai_scripts` VALUES 
(2508401, 25084, 8, 0, 100, 0, 45109, -1, 0, 0, 11, 45111, 0, 0, 11, 45110, 6, 0, 3, 25085, 0, 0, 'Greengill Slave - Cast Enrage and Morph into Freed Greengill Slave on Orb of Murloc Control Spellhit (Quest: 11541)');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 25084;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=26889);
INSERT INTO `creature_ai_scripts` VALUES 
(2688901, 26889, 10, 0, 100, 1, 1, 10, 2000, 2000, 33, 26889, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The End of the Line Area Trigger Kill Credit Bunny - Quest Credit on LOS (Quest: 12107 and 12110)');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 26889;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=28519);
INSERT INTO `creature_ai_scripts` VALUES 
(2851902, 28519, 6, 0, 100, 0, 0, 0, 0, 0, 11, 51869, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Withered Troll - Cast Summon Nass Target Bunny on Death (Quest: 12630)'),
(2851901, 28519, 9, 0, 100, 1, 0, 5, 7000, 11000, 11, 54345, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Withered Troll - Cast Withering Strike');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 28519;
UPDATE `creature_classlevelstats` SET `basehp1`=4731 WHERE `class`=8 AND `level`=65;
UPDATE `creature_classlevelstats` SET `basehp1`=6906 WHERE `class`=2 AND `level`=66;
UPDATE `creature_classlevelstats` SET `basehp1`=4892 WHERE `class`=8 AND `level`=66;
UPDATE `creature_classlevelstats` SET `basehp1`=5060 WHERE `class`=8 AND `level`=67;
UPDATE `creature_classlevelstats` SET `basehp1`=11570 WHERE `class`=1 AND `level`=83;
INSERT IGNORE INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, ElseGroup, ConditionTypeOrReference, ConditionValue1, ConditionValue2, ConditionValue3, ErrorTextId, COMMENT) VALUES  (13, 0, 56505, 0, 18, 1, 22517, 0, 0, "Surge of Power - cast only on World Trigger (Large AOI)"); 
UPDATE `creature_template` SET `spell1` = 4338, `spell2` = 4342, `spell3` = 4336, `VehicleId` = 282 WHERE `entry` = 31784;
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 10343, 0, 0, 3, 46069, 0, 0, 0, '', NULL),
(15, 10343, 1, 0, 3, 46069, 0, 0, 0, '', NULL),
(15, 10343, 2, 0, 3, 46070, 0, 0, 0, '', NULL),
(15, 10343, 3, 0, 3, 46070, 0, 0, 0, '', NULL),
(15, 10343, 4, 0, 3, 46069, 0, 0, 0, '', NULL),
(15, 10343, 5, 0, 3, 46069, 0, 0, 0, '', NULL),
(15, 10343, 6, 0, 3, 46069, 0, 0, 0, '', NULL),
(15, 10343, 7, 0, 3, 46070, 0, 0, 0, '', NULL),
(15, 10343, 8, 0, 3, 46070, 0, 0, 0, '', NULL),
(15, 10343, 9, 0, 3, 46070, 0, 0, 0, '', NULL),
(15, 10383, 0, 0, 3, 46069, 0, 0, 0, '', NULL),
(15, 10383, 1, 0, 3, 46070, 0, 0, 0, '', NULL),
(15, 33447, 0, 0, 3, 46069, 0, 0, 0, '', NULL),
(15, 33447, 2, 0, 3, 46070, 0, 0, 0, '', NULL);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`) VALUES
(10383, 1, 0, 'Ask Cavin to summon the Black Knight.', 1, 1, 0, 0, 33522, 0, 0, NULL);
SET @pool := 500;
INSERT INTO `pool_quest` (`entry`,`pool_entry`,`description`) VALUES
-- Sunreavers
(13673,@pool, 'A Blade Fit For A Champion Sunreavers'), -- A Blade Fit For A Champion (Sunreavers)
(13674,@pool, 'A Worthy Weapon Sunreavers'), -- A Worthy Weapon (Sunreavers)
(13675,@pool, 'The Edge of Winter Sunreavers'), -- The Edge of Winter (Sunreavers)
-- Orc
(13762,@pool+1, 'A Blade Fit For A Champion Orks'), -- A Blade Fit For A Champion (Orc)
(13763,@pool+1, 'A Worthy Weapon Orks'), -- A Worthy Weapon (Orc)
(13764,@pool+1, 'The Edge of Winter Orks'), -- The Edge of Winter (orc)
-- Troll
(13768,@pool+2, 'A Blade Fit For A Champion Trolls'), -- A Blade Fit For A Champion (Troll)
(13769,@pool+2, 'A Worthy Weapon Trolls'), -- A Worthy Weapon (Troll)
(13770,@pool+2, 'The Edge of Winter Trolls'), -- The Edge of Winter (Troll)
-- Tauren
(13773,@pool+3, 'A Blade Fit For A Champion Taurens'), -- A Blade Fit For A Champion (Taurens)
(13774,@pool+3, 'A Worthy Weapon Taurens'), -- A Worthy Weapon (Taurens)
(13775,@pool+3, 'The Edge of Winter Taurens'), -- The Edge of Winter (Taurens)
-- Undead
(13778,@pool+4, 'A Blade Fit For A Champion Undeads'), -- A Blade Fit For A Champion (Undead)
(13779,@pool+4, 'A Worthy Weapon Undeads'), -- A Worthy Weapon (Undead)
(13780,@pool+4, 'The Edge of Winter Undeads'), -- The Edge of Winter (Undead)
-- Blood Elf
(13783,@pool+5, 'A Blade Fit For A Champion Bloodelfs'), -- A Blade Fit For A Champion (Blood Elf)
(13784,@pool+5, 'A Worthy Weapon Bloodelfs'), -- A Worthy Weapon (Blood Elf)
(13785,@pool+5, 'The Edge of Winter Bloodelfs'), -- The Edge of Winter (Blood Elf)
-- Silver Convenant
(13666,@pool+6, 'A Blade Fit For A Champion Convenant'), -- A Blade Fit For A Champion (Silver Convenant)
(13669,@pool+6, 'A Worthy Weapon Convenant'), -- A Worthy Weapon (Silver Convenant)
(13670,@pool+6, 'The Edge of Winter Convenant'), -- The Edge of Winter (Silver Convenant)
-- Human
(13603,@pool+7, 'A Blade Fit For A Champion Humans'), -- A Blade Fit For A Champion (Human)
(13600,@pool+7, 'A Worthy Weapon Humans'), -- A Worthy Weapon (Human)
(13616,@pool+7, 'The Edge of Winter Humans'), -- The Edge of Winter (Human)
-- Dwarf
(13741,@pool+8, 'A Blade Fit For A Champion Dwarfs'), -- A Blade Fit For A Champion (Dwarf)
(13742,@pool+8, 'A Worthy Weapon Dwarfs'), -- A Worthy Weapon (Dwarf)
(13743,@pool+8, 'The Edge of Winter Dwarfs'), -- The Edge of Winter (Dwarf)
-- Gnome
(13746,@pool+9, 'A Blade Fit For A Champion Gnomes'), -- A Blade Fit For A Champion (Gnome)
(13747,@pool+9, 'A Worthy Weapon Gnomes'), -- A Worthy Weapon (Gnome)
(13748,@pool+9, 'The Edge of Winter Gnomes'), -- The Edge of Winter (Gnome)
-- Night Elf
(13757,@pool+10, 'A Blade Fit For A Champion Nightelfs'), -- A Blade Fit For A Champion (Night Elf)
(13758,@pool+10, 'A Worthy Weapon Nightelfs'), -- A Worthy Weapon (Night Elf)
(13759,@pool+10, 'The Edge of Winter Nightelfs'), -- The Edge of Winter (Night Elf)
-- Dranei
(13752,@pool+11, 'A Blade Fit For A Champion Dranei'), -- A Blade Fit For A Champion (Dranei)
(13753,@pool+11, 'A Worthy Weapon Dranei'), -- A Worthy Weapon (Dranei)
(13754,@pool+11, 'The Edge of Winter Dranei'), -- The Edge of Winter (Dranei)
-- Cooking Dailies:
-- alliance
(13100,@pool+12, 'Infused mushroom Meatloaf Ally'),
(13101,@pool+12, 'Convention at the Legerdemain Ally'),
(13102,@pool+12, 'Sewer Stew Ally'),
(13103,@pool+12, 'Cheese for Glowergold Ally'),
(13107,@pool+12, 'Mustard Dogs! Ally'),
-- horde
(13112,@pool+13, 'Infused mushroom Meatloaf Horde'),
(13113,@pool+13, 'Convention at the Legerdemain Horde'),
(13114,@pool+13, 'Sewer Stew Horde'),
(13115,@pool+13, 'Cheese for Glowergold Horde'),
(13116,@pool+13, 'Mustard Dogs! Horde'),
-- Fishing Dailies
(13830,@pool+14, 'The Ghostfish'),
(13832,@pool+14, 'Jewel Of The Sewers'),
(13833,@pool+14, 'Blood Is Thicker'),
(13834,@pool+14, 'Dangerously Delicious'),
(13836,@pool+14, 'Disarmed!'), 
-- Jewelcrafting Dailies
(12958,@pool+15, 'Shipment Blood Jade Amulet'),
(12962,@pool+15, 'Shipment Bright Armor Relic'),
(12959,@pool+15, 'Shipment Glowing Ivory Figurine'),
(12961,@pool+15, 'Shipment Intrincate Bone Figurine'),
(12963,@pool+15, 'Shipment Shifting Sun Curio'),
(12960,@pool+15, 'Shipment Wicked Sun Brooch'),
-- Raiding Weeklies:
(24579,@pool+16, 'Sartharion Must Die!'),
(24580,@pool+16, 'Anub Rekhan Must Die!'),
(24581,@pool+16, 'Noth the Plaguebringer Must Die!'),
(24582,@pool+16, 'Instructor Razuvious Must Die!'),
(24583,@pool+16, 'Patchwerk Must Die!'),
(24584,@pool+16, 'Malygos Must Die!'),
(24585,@pool+16, 'Flame Leviathan Must Die!'),
(24586,@pool+16, 'Razorscale Must Die!'),
(24587,@pool+16, 'Ignis the Furnace Master Must Die!'),
(24588,@pool+16, 'XT-002 Deconstructor Must Die!'),
(24589,@pool+16, 'Lord Jaraxxus Must Die!'),
(24590,@pool+16, 'Lord Marrowgar Must Die!'),
-- Icc Pools
(24874,@pool+18, 'Blood Quickening (10)'),
(24869,@pool+19, 'Deprogramming (10)'),
(24873,@pool+20, 'Residue Rendezvous (10)'),
(24872,@pool+21, 'Respite for a Tormented Soul (10)'),
(24870,@pool+22, 'Securing the Ramparts HORDE (10)'),
(24871,@pool+22, 'Securing the Ramparts ALLY (10)'),
(24879,@pool+18, 'Blood Quickening (25)'),
(24875,@pool+19, 'Deprogramming (25)'),
(24878,@pool+20, 'Residue Rendezvous (25)'),
(24880,@pool+21, 'Respite for a Tormented Soul (25)'),
(24876,@pool+22, 'Securing the Ramparts ALLY (25)'),
(24877,@pool+22, 'Securing the Ramparts HORDE (25)');
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES
(@pool+0,1, 'TournamentDaily Sunreavers'),
(@pool+1,1, 'TournamentDaily Orks'),
(@pool+2,1, 'TournamentDaily Trolls'),
(@pool+3,1, 'TournamentDaily Taurens'),
(@pool+4,1, 'TournamentDaily Undeads '),
(@pool+5,1, 'TournamentDaily Bloodelfs'),
(@pool+6,1, 'TournamentDaily Convenant'),
(@pool+7,1, 'TournamentDaily Humans'),
(@pool+8,1, 'TournamentDaily Dwarfs'),
(@pool+9,1, 'TournamentDaily Gnomes'),
(@pool+10,1, 'TournamentDaily Nightelfs'),
(@pool+11,1, 'TournamentDaily Dranei'),
(@pool+12,1, 'DalaranCookingDaily Ally'),
(@pool+13,1, 'DalaranCookingDaily Horde'),
(@pool+14,1, 'DalaranFishingDaily'),
(@pool+15,1, 'DalaranJewelcraftingDaily'),
(@pool+16,1, 'Raiding weeklies'),
(@pool+17,1, 'ICC weeklies'),
(@pool+18,2, 'Blood Quickening'),
(@pool+19,2, 'Deprogramming'),
(@pool+20,2, 'Residue Rendezvous'),
(@pool+21,2, 'Respite for a Tormented Soul'),
(@pool+22,4, 'Securing the Ramparts');
INSERT INTO `pool_pool` (`pool_id`,`mother_pool`,`chance`,`description`) VALUES
(@pool+18,@pool+17,0, 'Blood Quickening'),
(@pool+19,@pool+17,0, 'Deprogramming'),
(@pool+20,@pool+17,0, 'Residue Rendezvous'),
(@pool+21,@pool+17,0, 'Respite for a Tormented Soul'),
(@pool+22,@pool+17,0, 'Securing the Ramparts');
REPLACE INTO `battlemaster_entry` (`entry`, `bg_template`) VALUES
(29533, 6),
(29568, 6),
(32330, 6),
(32332, 6),
(32333, 6);

# WDB
INSERT INTO `item_template` SET `name`='Keg-Shaped Treasure Chest',`description`='',`entry`=54535,`class`=15,`subclass`=0,`unk0`=-1,`displayid`=47493,`Quality`=3,`Flags`=4,`BuyPrice`=0,`SellPrice`=0,`InventoryType`=0,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=80,`RequiredLevel`=0,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=0,`spelltrigger_1`=0,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=4,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0, `WDBVerified`=12340;
UPDATE `quest_template` SET `RewItemId1` = '54535', `RewItemCount1` = '1' WHERE `entry` = 25483;
DELETE FROM `item_loot_template` WHERE (`entry`=54535);
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(54535, 33977, 0, 1, 1, 1),
(54535, 37828, 0, 1, 1, 1),
(54535, 37863, 0, 1, 1, 1),
(54535, 48663, 0, 1, 1, 1),
(54535, 49120, 0, 1, 1, 1),
(54535, 49426, 100, 0, 2, 2);
INSERT INTO `gameobject_template` SET `name`='Serpent Offering',`IconName`='',`castbarcaption`='',`entry`=202931,`type`=5,`DisplayID`=9463,`data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0,`size`=0.17,`questItem1`=0,`questItem2`=0,`questItem3`=0,`questItem4`=0,`questItem5`=0,`questItem6`=0, `WDBVerified`=12340;

# FIX
DELETE FROM item_loot_template WHERE entry IN (19453,39355,44316,44317,44318);
UPDATE `creature_template` SET `unit_flags` = 33554688 WHERE `entry` IN (21419, 21786);
UPDATE `quest_template` SET `NextQuestId` = 0 WHERE `entry` = 11573;
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 11504;
UPDATE `quest_template` SET `ReqSpellCast1` = 29528 WHERE `entry` = 9303;
INSERT INTO `npc_text` VALUES ('15581', 'Need TXT YTDB', '', '0', '100', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0',1);
INSERT INTO `npc_text` VALUES ('15870', 'Need TXT YTDB', '', '0', '100', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0',1);

# NeatElves
DELETE FROM `waypoint_scripts` WHERE `id` = 781;
DELETE FROM `waypoint_scripts` WHERE `id` = 782;
INSERT INTO `waypoint_scripts` (`id`, `guid`, `command`, `datalong`) VALUES
(781, 1063, 15, 55796),
(782, 1064, 15, 54112);
DELETE FROM `gossip_scripts` WHERE `id` = 8672;
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(8672, 0, 15, 40964, 1, 0, 0, 0, 0, 0);
DELETE FROM `gossip_scripts` WHERE `id` = 8677;
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(8677, 0, 15, 40968, 1, 0, 0, 0, 0, 0);
DELETE FROM `gossip_scripts` WHERE `id` = 50141;
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(50141, 0, 15, 40965, 1, 0, 0, 0, 0, 0);
DELETE FROM `gossip_scripts` WHERE `id` = 50142;
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(50142, 0, 15, 40970, 1, 0, 0, 0, 0, 0);
DELETE FROM `game_event_creature` WHERE `guid` = 137823;
DELETE FROM `game_event_creature` WHERE `guid` = 137824;
DELETE FROM `game_event_creature` WHERE `guid` = 137837;
DELETE FROM `game_event_creature` WHERE `guid` = 137838;
DELETE FROM `creature` WHERE `guid` = 137824;
DELETE FROM `creature` WHERE `guid` = 137823;
DELETE FROM `creature` WHERE `guid` = 137838;
DELETE FROM `creature` WHERE `guid` = 137837;
UPDATE `spell_loot_template` SET `item` = '36909' WHERE `entry` =61500 AND `item` =45854;
DELETE FROM `game_event_gameobject` WHERE `guid` = 22536;
DELETE FROM `game_event_gameobject` WHERE `guid` = 22542;
DELETE FROM `game_event_gameobject` WHERE `guid` = 22544;
DELETE FROM `game_event_gameobject` WHERE `guid` = 504;
DELETE FROM `game_event_gameobject` WHERE `guid` = 518;
DELETE FROM `game_event_gameobject` WHERE `guid` = 711;
DELETE FROM `game_event_gameobject` WHERE `guid` = 716;
DELETE FROM `game_event_gameobject` WHERE `guid` = 718;
DELETE FROM gameobject WHERE guid = 504;
DELETE FROM gameobject WHERE guid = 518;
DELETE FROM gameobject WHERE guid = 711;
DELETE FROM gameobject WHERE guid = 716;
DELETE FROM gameobject WHERE guid = 718;
DELETE FROM gameobject WHERE guid = 22536;
DELETE FROM gameobject WHERE guid = 22542;
DELETE FROM gameobject WHERE guid = 22544;
DELETE FROM `gossip_scripts` WHERE `id` in (50137,50138);
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES ('50137', '0', '15', '60127', '0', '0', '0', '0', '0', '0'), ('50138', '0', '15', '60129', '0', '0', '0', '0', '0', '0');
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 7058;
REPLACE INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(38082, 1156, 0, 7, 0, 15, 0, 0, 0, 0);
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 1242 AND `type` = 11;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 1803 AND `type` = 11;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 1804 AND `type` = 11;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 1805 AND `type` = 11;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 1806 AND `type` = 11;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 1807 AND `type` = 11;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 1808 AND `type` = 11;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 1809 AND `type` = 11;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 1810 AND `type` = 11;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 1811 AND `type` = 11;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 1812 AND `type` = 11;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 1813 AND `type` = 11;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 1814 AND `type` = 11;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 1815 AND `type` = 11;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 1816 AND `type` = 11;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 1817 AND `type` = 11;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 1818 AND `type` = 11;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 1819 AND `type` = 11;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 1824 AND `type` = 11;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 1825 AND `type` = 11;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 1826 AND `type` = 11;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 3386 AND `type` = 11;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 3387 AND `type` = 11;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 3388 AND `type` = 11;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 3389 AND `type` = 11;

DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 6800 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 8839 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 9161 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 9162 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 9163 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 9164 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11086 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11088 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11089 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11090 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11118 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11119 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11120 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11121 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11122 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11123 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11124 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11125 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11126 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11127 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11128 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11142 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11158 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11159 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11160 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11161 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11162 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11163 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11164 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11165 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11167 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11168 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11178 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11179 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11180 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11181 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13236 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13238 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13239 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13240 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13243 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13244 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13245 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13246 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13247 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13133 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13134 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13135 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13136 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13137 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13138 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13163 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13164 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13166 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13167 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13168 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13169 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13170 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13172 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13173 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13174 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13175 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13176 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13177 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13178 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13179 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13182 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13185 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13186 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13189 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13190 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13191 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13192 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13193 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13195 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13091 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13092 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13093 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13096 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13097 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13098 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13100 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13101 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13102 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13103 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13104 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13105 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13106 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13107 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13108 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13115 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13116 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13117 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13118 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13119 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13120 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13121 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13122 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13123 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13127 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13128 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13129 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13130 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13131 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13132 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13196 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13197 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13200 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13201 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13202 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13203 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13204 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13206 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13234 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13235 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12989 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12990 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12991 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12992 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12993 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12996 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13011 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13012 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13013 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13032 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13033 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13034 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13039 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13040 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13043 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13044 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13045 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13046 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13047 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13049 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13050 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13051 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13054 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13055 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13056 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13057 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13058 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13060 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13089 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13090 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12988 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12987 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12986 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12985 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12984 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12983 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12982 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12981 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12977 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12976 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12972 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12969 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12968 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12967 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12966 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12962 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12955 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12953 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12952 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12951 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12950 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12949 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12948 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12945 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12909 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12828 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12827 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12826 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12825 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12823 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12822 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12818 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12809 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12808 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12807 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12806 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12805 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12804 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12803 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12802 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12800 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12799 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12798 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12780 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12775 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12773 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12770 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12764 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12763 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12762 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12761 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12760 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12759 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12758 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12752 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12750 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12749 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12748 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12747 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12746 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12745 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12744 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12742 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12741 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12740 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12739 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12738 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12689 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12688 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12687 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12686 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12685 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12684 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12683 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12682 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12680 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12679 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12678 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12667 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12666 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12665 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12664 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12663 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12662 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12661 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12660 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12659 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12658 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12360 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12359 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12358 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12350 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12349 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12348 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12347 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12346 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12345 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12344 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12343 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12342 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12341 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12340 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12339 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12338 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12258 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12247 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12246 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12245 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12244 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12243 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12242 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12241 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12240 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12235 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12234 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12233 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12232 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12231 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12230 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12229 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12228 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12208 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12207 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12205 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12204 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12203 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12202 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12200 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12199 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12132 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12067 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12066 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12065 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12064 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12063 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12062 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11903 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11902 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11862 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11861 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11860 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11839 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11838 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11818 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11802 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11801 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11780 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11779 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11778 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11718 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11693 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11692 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11690 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11689 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11688 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11687 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11685 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11684 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11683 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11682 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11680 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11679 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11549 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11547 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11546 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11542 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11479 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 11478 AND `type` = 0;
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES
(1803, 18, 0, 0),
(1242, 18, 0, 0),
(1804, 18, 0, 0),
(1805, 18, 0, 0),
(1806, 18, 0, 0),
(1807, 18, 0, 0),
(1808, 18, 0, 0),
(1809, 18, 0, 0),
(1810, 18, 0, 0),
(1811, 18, 0, 0),
(1812, 18, 0, 0),
(1813, 18, 0, 0),
(1814, 18, 0, 0),
(1815, 18, 0, 0),
(1816, 18, 0, 0),
(1817, 18, 0, 0),
(1818, 18, 0, 0),
(1819, 18, 0, 0),
(1824, 18, 0, 0),
(1825, 18, 0, 0),
(1826, 18, 0, 0),
(3386, 18, 0, 0),
(3387, 18, 0, 0),
(3388, 18, 0, 0),
(3389, 18, 0, 0);
UPDATE `creature_template_addon` SET `auras` = '16245 0 36804 0' WHERE `entry` =21404;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 1241 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 1240 AND `type` = 0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 1237 AND `type` = 0;
# DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 758 AND `type` = 0;
INSERT IGNORE INTO `npc_vendor` (`entry`,`item`,`maxcount`,`incrtime`,`extendedcost`) VALUES
(35498, 48386, 0, 0, 2686),
(35498, 48456, 0, 0, 2686),
(35498, 48387, 0, 0, 2687),
(35498, 48458, 0, 0, 2686),
(35498, 48457, 0, 0, 2687),
(35498, 48388, 0, 0, 2686),
(35498, 48459, 0, 0, 2686),
(35498, 48389, 0, 0, 2686),
(35498, 48460, 0, 0, 2687),
(35498, 48390, 0, 0, 2687),
(35498, 48501, 0, 0, 2686),
(35498, 48558, 0, 0, 2686),
(35498, 48560, 0, 0, 2686),
(35498, 48502, 0, 0, 2687),
(35498, 48559, 0, 0, 2687),
(35498, 48503, 0, 0, 2686),
(35498, 48561, 0, 0, 2686),
(35498, 48504, 0, 0, 2686),
(35498, 48562, 0, 0, 2687),
(35498, 48505, 0, 0, 2687),
(35498, 48631, 0, 0, 2686),
(35498, 48652, 0, 0, 2686),
(35498, 48654, 0, 0, 2686),
(35498, 48630, 0, 0, 2687),
(35498, 48598, 0, 0, 2687),
(35498, 48596, 0, 0, 2686),
(35498, 48653, 0, 0, 2687),
(35498, 48597, 0, 0, 2686),
(35498, 48629, 0, 0, 2686),
(35498, 48655, 0, 0, 2686),
(35498, 48628, 0, 0, 2686),
(35498, 48656, 0, 0, 2687),
(35498, 48627, 0, 0, 2687),
(35498, 48595, 0, 0, 2687),
(35498, 48599, 0, 0, 2686);
DELETE FROM `creature_ai_scripts` WHERE `id` = 1229852;
DELETE FROM `creature_ai_scripts` WHERE `id` = 1229652;
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES ('12298', '0', '0', '0', '0', '0', '19502 0'), ('12296', '0', '0', '0', '0', '0', '19502 0');
UPDATE `creature` SET `spawndist` = '0',`MovementType` = '0' WHERE `id` =11621;
UPDATE `creature` SET `DeathState` = '0' WHERE `id` in (17437,17438,28892,24196,20148,17542,21313,24280,24467,27457,27479,28260,31177,32155,28089,27356,26363);
UPDATE `creature` SET `spawntimesecs` = '300' WHERE `guid` =116631;
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES
(11621, 0, 0, 1, 0, 0, '29266 0 29266 1'),
(17437, 0, 0, 1, 0, 0, '29266 0 29266 1'),
(17438, 0, 0, 1, 0, 0, '29266 0 29266 1'),
(24196, 0, 7, 1, 0, 0, ''),
(24280, 0, 0, 1, 0, 0, '29266 0 29266 1'),
(27457, 0, 0, 1, 0, 0, '29266 0 29266 1'),
(28260, 0, 0, 1, 0, 0, '29266 0 29266 1'),
(31177, 0, 0, 1, 0, 0, '29266 0 29266 1'),
(32155, 0, 0, 1, 0, 0, '29266 0 29266 1'),
(21313, 0, 0, 1, 0, 0, '29266 0 29266 1'),
(22269, 0, 0, 1, 0, 0, '29266 0 29266 1'),
(24441, 0, 0, 1, 0, 0, '29266 0 29266 1'),
(24442, 0, 0, 1, 0, 0, '29266 0 29266 1'),
(24443, 0, 0, 1, 0, 0, '29266 0 29266 1'),
(24444, 0, 0, 1, 0, 0, '29266 0 29266 1'),
(26299, 0, 0, 1, 0, 0, '29266 0 29266 1'),
(28493, 0, 0, 1, 0, 0, '29266 0 29266 1'),
(32742, 0, 0, 1, 0, 0, '29266 0 29266 1'),
(21592, 0, 0, 1, 0, 0, '29266 0 29266 1'),
(21623, 0, 0, 1, 0, 0, '29266 0 29266 1'),
(28590, 0, 0, 1, 0, 0, '29266 0 29266 1'),
(24146, 0, 0, 1, 0, 0, '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES ('113470', '0', '0', '1', '0', '0', '29266 0 29266 1');
UPDATE `creature` SET `spawndist` = '0',`MovementType` = '0' WHERE `guid` =130264;
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES ('116631', '0', '0', '1', '0', '0', '29266 0 29266 1'), ('130255', '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES ('130256', '0', '0', '1', '0', '0', '29266 0 29266 1'), ('130263', '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES ('130270', '0', '0', '1', '0', '0', '29266 0 29266 1');

# timmit
DELETE FROM `creature_template_addon` WHERE (`entry`=39623);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (39623, 0, 0, 1, 0, 0, '');
DELETE FROM `creature_template_addon` WHERE (`entry`=39675);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (39675, 0, 0, 0, 0, 0, '73954 0');

# FIX
UPDATE `creature_template` SET `unit_flags` = 33088 WHERE `entry` = 37007;
UPDATE `creature_template` SET `unit_flags` = 33088 WHERE `entry` = 38031;
UPDATE `creature_template` SET `faction_A` = 21, `faction_H` = 21 WHERE `entry` IN (38010, 38397, 39000, 39001);
UPDATE `creature` SET `spawntimesecs` = 7200 WHERE `map` = 631 AND `spawntimesecs` < 7200;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(6400,31144,1,1,1,0,0,-1444.34241,-112.275063,161.184784,5.323254,120,0,0,1,0,0,0),
(7392,31144,1,1,1,0,0,-1447.72693,-116.770447,161.184784,5.81194639,120,0,0,1,0,0,0),
(8970,31146,1,1,1,0,0,-1428.87952,-86.90061,161.184784,0.05235988,120,0,0,1,0,0,0),
(9921,32666,1,1,1,0,0,-1407.81274,-82.24534,159.018112,0.9075712,120,0,0,1,0,0,0),
(9970,32666,1,1,1,0,0,-1415.51892,-77.17383,158.8914,0.9075712,120,0,0,1,0,0,0),
(10098,32667,1,1,1,0,0,-1423.83459,-72.54009,157.572067,1.04719758,120,0,0,1,0,0,0),
(10291,32667,1,1,1,0,0,-1431.28845,-68.5708542,156.9535,1.15191734,120,0,0,1,0,0,0);
UPDATE `creature_template` SET `unit_flags` = 393220 WHERE `entry` = 32547;
UPDATE `gameobject_template` SET `data3` = 15745 WHERE `entry` = 175124;
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` IN (28525,28542,28543,28544);
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `mindmg` = 420, `maxdmg` = 630, `attackpower` = 157 WHERE `entry` in (33298,33416,33297,33301,33408,33409,33418,33300,33414,33299,33298,33416,33297,33301,33408,35640,35638,35634,35635,35641,35633,35636,35768,35637,34658);
UPDATE `game_event` SET `start_time` = '2010-09-16 02:00:00',`length` = 10080 WHERE `entry` = 11;
UPDATE `gameobject` SET `spawntimesecs` = '-600' WHERE `guid` =19147;

# NeatElves
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES ('23730', '0', '0', '0', '0', '0', '44253 0');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES ('74699', '22'), ('74466', '22');
DELETE FROM `creature_loot_template` WHERE `item` = 33487;
UPDATE `creature_template` SET `lootid` = '0' WHERE `entry` =24196;
UPDATE `creature_template` SET `flags_extra` = '2' WHERE `entry` =24196;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `animprogress`, `state`) VALUES
(44445, 186619, 571, 1, 1, 2264.94, -4853.96, 238.724, 2.55561, 600, 100, 1),
(44446, 186619, 571, 1, 1, 2196.25, -4910.38, 237.343, 3.54127, 600, 100, 1),
(44447, 186619, 571, 1, 1, 2170.03, -4849.11, 226.816, 1.91157, 600, 100, 1),
(44448, 186619, 571, 1, 1, 2102.68, -4788.8, 214.989, 2.13148, 600, 100, 1),
(44449, 186619, 571, 1, 1, 2101.32, -4719.54, 216.024, 1.48353, 600, 100, 1),
(44450, 186619, 571, 1, 1, 2105.19, -4659.33, 217.922, 2.34354, 600, 100, 1),
(44451, 186619, 571, 1, 1, 2011.03, -4634.36, 210.662, 2.83834, 600, 100, 1),
(614, 186619, 571, 1, 1, 1976.48, -4695.37, 202.793, 4.53479, 600, 100, 1),
(663, 186619, 571, 1, 1, 1931.95, -4737.13, 195.09, 4.13031, 600, 100, 1),
(664, 186619, 571, 1, 1, 2000.67, -4795.47, 197.104, 5.33982, 600, 100, 1),
(774, 186619, 571, 1, 1, 2034.8, -4849.48, 206.073, 5.52046, 600, 100, 1),
(775, 186619, 571, 1, 1, 2058.64, -4910.08, 218.547, 5.32019, 600, 100, 1),
(793, 186619, 571, 1, 1, 2100.26, -4931.8, 230.849, 5.79142, 600, 100, 1),
(1057, 186619, 571, 1, 1, 2109.08, -4995.62, 239.141, 4.33844, 600, 100, 1),
(1059, 186619, 571, 1, 1, 1976.25, -5009.16, 199.236, 3.68656, 600, 100, 1),
(1997, 186619, 571, 1, 1, 1979.98, -5100.01, 196.923, 5.18274, 600, 100, 1),
(2028, 186619, 571, 1, 1, 1976.29, -5147.69, 196.116, 4.46017, 600, 100, 1),
(2321, 186619, 571, 1, 1, 2026.47, -5174.54, 217.578, 2.86189, 600, 100, 1);
DELETE FROM `creature` WHERE `id`=19222;
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES ('81332', '7'), ('81331', '7'), ('81330', '7'), ('81327', '7'), ('81328', '7'), ('81329', '7');
UPDATE `quest_template` SET `PrevQuestId` = '11434' WHERE `entry` =11464;
UPDATE `creature_template` SET `spell1` = 4338, `spell2` = 4342, `spell3` = 4336 WHERE `entry` = 31784;

# NeatElves
REPLACE INTO db_script_string (entry, content_default) VALUES 
(2000000324,'Corbett, you there? Harlan needs another load of knitted goods. Can you take it to him?');
UPDATE quest_template SET CompleteScript=333 WHERE entry=333;
DELETE FROM quest_end_scripts WHERE id=333;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(333, 1, 0, 0, 0, 2000000324, 0, 0, 0, 0),
(333, 5, 10, 1433, 600000, 0, -8765.4, 717.344, 99.5342, 3.88159),
(333, 10, 20, 2, 1433, 15, 0, 0, 0, 0);
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES
(2097, 0, 7, 1, 0, 0, ''),
(3891, 0, 7, 1, 0, 0, ''),
(3920, 0, 7, 1, 0, 0, ''),
(4444, 0, 7, 1, 0, 0, ''),
(6172, 0, 7, 1, 0, 0, ''),
(6177, 0, 7, 1, 0, 0, ''),
(6912, 0, 7, 1, 0, 0, ''),
(8417, 0, 7, 1, 0, 0, ''),
(11020, 0, 7, 1, 0, 0, ''),
(29811, 0, 7, 1, 0, 0, ''),
(29454, 0, 7, 1, 0, 0, ''),
(16183, 0, 7, 1, 0, 0, ''),
(16852, 0, 7, 1, 0, 0, ''),
(17062, 0, 7, 1, 0, 0, ''),
(17508, 0, 7, 1, 0, 0, ''),
(17600, 0, 7, 1, 0, 0, ''),
(17849, 0, 7, 1, 0, 0, ''),
(18035, 0, 7, 1, 0, 0, ''),
(21962, 0, 7, 1, 0, 0, ''),
(24122, 0, 7, 1, 0, 0, ''),
(24145, 0, 7, 1, 0, 0, ''),
(24822, 0, 7, 1, 0, 0, ''),
(25328, 0, 7, 1, 0, 0, ''),
(25385, 0, 7, 1, 0, 0, ''),
(25984, 0, 7, 1, 0, 0, ''),
(26514, 0, 7, 1, 0, 0, ''),
(26873, 0, 7, 1, 0, 0, ''),
(26896, 0, 7, 1, 0, 0, ''),
(27412, 0, 7, 1, 0, 0, ''),
(27828, 0, 7, 1, 0, 0, ''),
(27987, 0, 7, 1, 0, 0, ''),
(28464, 0, 7, 1, 0, 0, ''),
(29751, 0, 7, 1, 0, 0, ''),
(30562, 0, 7, 1, 0, 0, ''),
(16208, 0, 7, 1, 0, 0, ''),
(16206, 0, 7, 1, 0, 0, ''),
(16209, 0, 7, 1, 0, 0, ''),
(31240, 0, 7, 1, 0, 0, '');
UPDATE `creature_template` SET `difficulty_entry_1` = '38156',`difficulty_entry_2` = '38637',`difficulty_entry_3` = '38638' WHERE `entry` =36939;
UPDATE `creature_template` SET `difficulty_entry_1` = '0',`difficulty_entry_2` = '0',`difficulty_entry_3` = '0' WHERE `entry` =37187;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0 WHERE `id` IN (27449,25535,28307,28299,28333,27418,18560,18563);
DELETE FROM `fishing_loot_template` WHERE `entry` = 212 AND `item` = 4408;
DELETE FROM `item_loot_template` WHERE `entry` = 6307 AND `item` = 6303;
DELETE FROM `item_loot_template` WHERE `entry` = 6307 AND `item` = 6358;
DELETE FROM `item_loot_template` WHERE `entry` = 6307 AND `item` = 6359;
DELETE FROM `item_loot_template` WHERE `entry` = 6307 AND `item` = 6361;
DELETE FROM `item_loot_template` WHERE `entry` = 6307 AND `item` = 12238;
DELETE FROM `creature_loot_template` WHERE `entry` = 2231 AND `item` = 12238;
DELETE FROM `item_loot_template` WHERE `entry` = 6307 AND `item` = 6717;
UPDATE `fishing_loot_template` SET `ChanceOrQuestChance` = '-10' WHERE `entry` =148 AND `item` in (6717,6718);

# timmit
UPDATE `game_event` SET `start_time` = '2010-09-20 00:01:00', `end_time` = '2020-12-30 20:00:00', `length` = 24478 WHERE `entry` = 26;

# kyle1
UPDATE creature_loot_template SET ChanceOrQuestChance = -90 WHERE item = 15447;

# zergtmn
UPDATE creature_template SET npcflag = 0 WHERE entry = 24968;
DELETE FROM npc_vendor WHERE entry = 24968;

# NeatElves
UPDATE `creature_template` SET `gossip_menu_id` = 4016 WHERE `entry` = 7954;
UPDATE `creature_template` SET `gossip_menu_id` = 3186 WHERE `entry` = 7955;
UPDATE `creature_template` SET `gossip_menu_id` = 10281 WHERE `entry` = 32540;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 8707;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 8693;
UPDATE `creature_template` SET `gossip_menu_id` = 9922 WHERE `entry` = 30227;
UPDATE `creature_template` SET `gossip_menu_id` = 10109 WHERE `entry` = 30295;
UPDATE `creature_template` SET `gossip_menu_id` = 9999 WHERE `entry` = 30596;
UPDATE `creature_template` SET `gossip_menu_id` = 9995 WHERE `entry` = 30677;
UPDATE `creature_template` SET `gossip_menu_id` = 10122 WHERE `entry` = 31776;
UPDATE `creature_template` SET `gossip_menu_id` = 10125 WHERE `entry` = 31808;
UPDATE `creature_template` SET `gossip_menu_id` = 10172 WHERE `entry` = 32302;
UPDATE `creature_template` SET `gossip_menu_id` = 10930 WHERE `entry` = 36955;
UPDATE `creature_template` SET `gossip_menu_id` = 10906 WHERE `entry` = 36993;
UPDATE `creature_template` SET `gossip_menu_id` = 10925 WHERE `entry` = 37580;
UPDATE `creature_template` SET `gossip_menu_id` = 10923 WHERE `entry` = 37591;
UPDATE `creature_template` SET `gossip_menu_id` = 11192 WHERE `entry` = 39271;
UPDATE `creature_template` SET `gossip_menu_id` = 11323 WHERE `entry` = 39275;
UPDATE `creature_template` SET `gossip_menu_id` = 11393 WHERE `entry` = 40478;
UPDATE `creature_template` SET `gossip_menu_id` = 10215 WHERE `entry` = 11832;
UPDATE `gossip_menu_option` SET `menu_id` = '10215' WHERE `menu_id`='11832';
UPDATE `gossip_menu` SET `entry` = '10215' WHERE `entry` ='11832';
UPDATE `locales_gossip_menu_option` set `menu_id`= '10215' WHERE `menu_id`='11832';
UPDATE `creature_template` SET `gossip_menu_id` = 9871 WHERE `entry` = 29384;
UPDATE `gossip_menu_option` SET `menu_id` = '9871' WHERE `menu_id`='29384';
UPDATE `gossip_menu` SET `entry` = '9871' WHERE `entry` ='29384';
UPDATE `locales_gossip_menu_option` set `menu_id`= '9871' WHERE `menu_id`='29384';
UPDATE `creature_template` SET `gossip_menu_id` = 10023 WHERE `entry` = 31044;
UPDATE `gossip_menu_option` SET `menu_id` = '10023' WHERE `menu_id`='31044';
UPDATE `gossip_menu` SET `entry` = '10023' WHERE `entry` ='31044';
UPDATE `locales_gossip_menu_option` set `menu_id`= '10023' WHERE `menu_id`='31044';
UPDATE `creature_template` SET `gossip_menu_id` = 10040 WHERE `entry` = 31304;
UPDATE `gossip_menu_option` SET `menu_id` = '10040' WHERE `menu_id`='31304';
UPDATE `gossip_menu` SET `entry` = '10040' WHERE `entry` ='31304';
UPDATE `locales_gossip_menu_option` set `menu_id`= '10040' WHERE `menu_id`='31304';
UPDATE `creature_template` SET `gossip_menu_id` = 10340 WHERE `entry` = 33447;
UPDATE `gossip_menu_option` SET `menu_id` = '10340' WHERE `menu_id`='33447';
UPDATE `gossip_menu` SET `entry` = '10340' WHERE `entry` ='33447';
UPDATE `locales_gossip_menu_option` set `menu_id`= '10340' WHERE `menu_id`='33447';
UPDATE `creature_template` SET `gossip_menu_id` = 9853 WHERE `entry` = 29579;
UPDATE `gossip_menu_option` SET `menu_id` = '9853' WHERE `menu_id`='29579';
UPDATE `gossip_menu` SET `entry` = '9853' WHERE `entry` ='29579';
UPDATE `locales_gossip_menu_option` set `menu_id`= '9853' WHERE `menu_id`='29579';
UPDATE `creature_template` SET `gossip_menu_id` = 9844 WHERE `entry` = 29811;
UPDATE `gossip_menu_option` SET `menu_id` = '9844' WHERE `menu_id`='50145';
UPDATE `gossip_menu` SET `entry` = '9844' WHERE `entry` ='50145';
UPDATE `locales_gossip_menu_option` set `menu_id`= '9844' WHERE `menu_id`='50145';
UPDATE `creature_template` SET `gossip_menu_id` = 10925 WHERE `entry` = 37614;
UPDATE `creature_template` SET `gossip_menu_id` = 10923 WHERE `entry` = 37606;

# schmoozerd
UPDATE gameobject SET spawntimesecs = -spawntimesecs WHERE id =169243;

# NeatElves
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES
(28525, 0, 0, 1, 0, 0, '51939 0'),
(28542, 0, 0, 1, 0, 0, '51939 0'),
(28543, 0, 0, 1, 0, 0, '51939 0'),
(28544, 0, 0, 1, 0, 0, '51939 0');
UPDATE `creature_template` SET `lootid` = '0',`pickpocketloot` = '0' WHERE `entry` =36916;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '30' WHERE `entry` =30597 AND `item` =43242;
DELETE FROM `creature_questrelation` WHERE `quest` = 11117;
DELETE FROM `creature_questrelation` WHERE `quest` = 11118;
DELETE FROM `creature_questrelation` WHERE `quest` = 11120;
DELETE FROM `creature_questrelation` WHERE `quest` = 11431;
UPDATE `creature` SET `spawndist` = '5',`MovementType` = '1' WHERE `id` =23487;

# timmit
UPDATE `creature_template` SET `faction_A` = 2068, `faction_H` = 2068, `baseattacktime` = 1500, `rangeattacktime` = 1500 WHERE `entry` in (36853,38265,38266,38267);
UPDATE `creature_model_info` SET `bounding_radius` = 0.775000, `combat_reach` = 18.750000 WHERE `modelid` = 30362;
UPDATE `creature_template` SET `baseattacktime` = 1500, `rangeattacktime` = 1500 WHERE `entry` = 36597;
UPDATE `creature_template` SET `npcflag` = 1, `unit_flags` = 32832 WHERE `entry` = 38995;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('11453', '30298', '631', '15', '1', '11686', '0', '4396.241000', '2794.807000', '299.132800', '3.909538', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('15451', '30298', '631', '15', '1', '11686', '0', '4371.056000', '2716.414000', '299.138200', '2.443461', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('19065', '30298', '631', '15', '1', '11686', '0', '4391.995000', '2742.610000', '299.144200', '2.443461', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('19067', '30298', '631', '15', '1', '11686', '0', '4357.052000', '2769.421000', '356.136400', '3.141593', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('19068', '30298', '631', '15', '1', '11686', '0', '4308.511000', '2788.476000', '312.675000', '3.263766', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('19082', '30298', '631', '15', '1', '11686', '0', '4306.854000', '2752.771000', '299.138200', '0.820305', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('19083', '30298', '631', '15', '1', '11686', '0', '4331.980000', '2730.547000', '299.144200', '0.820305', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('19087', '30298', '631', '15', '1', '11686', '0', '4284.188000', '2735.236000', '299.137700', '0.820305', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('19093', '30298', '631', '15', '1', '11686', '0', '4308.430000', '2717.113000', '299.133300', '0.820305', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('19095', '30298', '631', '15', '1', '11686', '0', '4317.904000', '2743.047000', '299.132800', '0.820305', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('19114', '30298', '631', '15', '1', '11686', '0', '4336.760000', '2689.307000', '307.143100', '3.176499', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('19722', '30298', '631', '15', '1', '11686', '0', '4322.498000', '2704.592000', '299.137200', '0.820305', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('26185', '30298', '631', '15', '1', '11686', '0', '4336.049000', '2703.986000', '310.810100', '3.176499', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('26309', '30298', '631', '15', '1', '11686', '0', '4284.044000', '2753.073000', '299.146500', '0.820305', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('52673', '30298', '631', '15', '1', '11686', '0', '4295.093000', '2743.372000', '299.129400', '0.820305', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('52929', '30298', '631', '15', '1', '11686', '0', '4312.229000', '2735.825000', '299.125500', '0.820305', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('56549', '30298', '631', '15', '1', '11686', '0', '4342.194000', '2719.366000', '312.675000', '4.799655', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('56556', '30298', '631', '15', '1', '11686', '0', '4389.698000', '2694.647000', '299.137700', '2.443461', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('59612', '30298', '631', '15', '1', '11686', '0', '4380.205000', '2727.930000', '299.132800', '2.443461', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('59872', '30298', '631', '15', '1', '11686', '0', '4371.884000', '2693.614000', '299.146500', '2.443461', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('65963', '30298', '631', '15', '1', '11686', '0', '4381.028000', '2705.133000', '299.129400', '2.443461', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('65964', '30298', '631', '15', '1', '11686', '0', '4392.823000', '2719.806000', '299.125500', '2.443461', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('77370', '30298', '631', '15', '1', '11686', '0', '4399.571000', '2746.277000', '312.675000', '4.799655', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('77856', '30298', '631', '15', '1', '11686', '0', '4319.273000', '2799.125000', '299.144200', '5.567600', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86781', '30298', '631', '15', '1', '11686', '0', '4292.898000', '2793.981000', '310.810100', '1.640610', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86782', '30298', '631', '15', '1', '11686', '0', '4418.995000', '2793.132000', '299.129400', '3.909538', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86783', '30298', '631', '15', '1', '11686', '0', '4406.686000', '2784.457000', '299.138200', '3.909538', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86784', '30298', '631', '15', '1', '11686', '0', '4406.588000', '2719.758000', '299.133300', '2.443461', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86792', '30298', '631', '15', '1', '11686', '0', '4418.384000', '2734.435000', '299.137200', '2.443461', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86793', '30298', '631', '15', '1', '11686', '0', '4418.314000', '2747.997000', '310.810100', '4.799655', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86794', '30298', '631', '15', '1', '11686', '0', '4382.944000', '2808.139000', '299.144200', '3.909538', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86795', '30298', '631', '15', '1', '11686', '0', '4393.958000', '2833.470000', '299.137200', '3.909538', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86796', '30298', '631', '15', '1', '11686', '0', '4380.639000', '2849.595000', '307.143100', '6.265732', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86797', '30298', '631', '15', '1', '11686', '0', '4380.467000', '2834.892000', '310.810100', '6.265732', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86798', '30298', '631', '15', '1', '11686', '0', '4380.124000', '2816.074000', '312.675000', '6.265732', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86799', '30298', '631', '15', '1', '11686', '0', '4323.733000', '2819.085000', '299.125500', '5.567600', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86800', '30298', '631', '15', '1', '11686', '0', '4340.452000', '2825.148000', '299.138200', '5.567600', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86801', '30298', '631', '15', '1', '11686', '0', '4322.008000', '2847.075000', '299.137700', '5.567600', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86802', '30298', '631', '15', '1', '11686', '0', '4304.886000', '2822.116000', '299.133300', '5.567600', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86803', '30298', '631', '15', '1', '11686', '0', '4292.952000', '2807.547000', '299.137200', '5.567600', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86804', '30298', '631', '15', '1', '11686', '0', '4331.183000', '2813.701000', '299.132800', '5.567600', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86806', '30298', '631', '15', '1', '11686', '0', '4337.707000', '2850.425000', '299.146500', '5.567600', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86806', '30298', '631', '15', '1', '11686', '0', '4330.582000', '2836.512000', '299.129400', '5.567600', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86807', '30298', '631', '15', '1', '11686', '0', '4405.702000', '2806.464000', '299.125500', '3.909538', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86808', '30298', '631', '15', '1', '11686', '0', '4407.252000', '2820.139000', '299.133300', '3.909538', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86809', '30298', '631', '15', '1', '11686', '0', '4429.439000', '2782.781000', '299.146500', '3.909538', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86810', '30298', '631', '15', '1', '11686', '0', '4432.948000', '2749.438000', '307.143100', '4.799655', '300', '0', '0', '42', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86811', '30298', '631', '15', '1', '11686', '0', '4430.367000', '2800.603000', '299.137700', '3.909538', '300', '0', '0', '42', '0', '0', '0');
update creature set spawntimesecs=30 where id=30298;
-- 
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86812', '36171', '631', '15', '1', '16925', '0', '495.708300', '-2523.755000', '1049.948000', '3.141593', '300', '0', '0', '4120', '0', '0', '0');
-- 22515 на платформе лича
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86813', '36171', '631', '15', '1', '16925', '0', '514.553800', '-2523.158000', '1049.948000', '3.141593', '300', '0', '0', '4120', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86814', '22515', '631', '15', '1', '16925', '0', '494.024300', '-2172.170000', '840.940300', '0.000000', '300', '0', '0', '4120', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86815', '22515', '631', '15', '1', '16925', '0', '500.322900', '-2188.932000', '845.878100', '0.000000', '300', '0', '0', '4120', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86816', '22515', '631', '15', '1', '16925', '0', '477.041700', '-2164.195000', '840.940300', '0.000000', '300', '0', '0', '4120', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86817', '22515', '631', '15', '1', '16925', '0', '530.625000', '-2166.149000', '840.940300', '0.000000', '300', '0', '0', '4120', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86818', '22515', '631', '15', '1', '16925', '0', '470.720500', '-2183.839000', '845.878100', '0.000000', '300', '0', '0', '4120', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86819', '22515', '631', '15', '1', '16925', '0', '512.805500', '-2172.618000', '840.940300', '0.000000', '300', '0', '0', '4120', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86820', '22515', '631', '15', '1', '16925', '0', '530.697900', '-2182.859000', '845.878100', '0.000000', '300', '0', '0', '4120', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86821', '22515', '631', '15', '1', '16925', '0', '542.559000', '-2151.406000', '840.940300', '0.000000', '300', '0', '0', '4120', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86822', '22515', '631', '15', '1', '16925', '0', '567.836800', '-2144.413000', '845.878100', '0.000000', '300', '0', '0', '4120', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86837', '22515', '631', '15', '1', '16925', '0', '567.836800', '-2144.413000', '845.878100', '0.000000', '300', '0', '0', '4120', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86838', '22515', '631', '15', '1', '16925', '0', '554.196200', '-2166.766000', '845.878100', '0.000000', '300', '0', '0', '4120', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86839', '22515', '631', '15', '1', '16925', '0', '503.968800', '-2075.847000', '840.940300', '0.000000', '300', '0', '0', '4120', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86855', '22515', '631', '15', '1', '16925', '0', '466.250000', '-2071.300000', '845.878100', '0.000000', '300', '0', '0', '4120', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86856', '22515', '631', '15', '1', '16925', '0', '486.092000', '-2061.759000', '845.878100', '0.000000', '300', '0', '0', '4120', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86857', '22515', '631', '15', '1', '16925', '0', '482.923600', '-2078.253000', '840.940300', '0.000000', '300', '0', '0', '4120', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86858', '22515', '631', '15', '1', '16925', '0', '521.602400', '-2079.359000', '840.940300', '0.000000', '300', '0', '0', '4120', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86859', '22515', '631', '15', '1', '16925', '0', '515.104200', '-2058.464000', '845.878100', '0.000000', '300', '0', '0', '4120', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86860', '22515', '631', '15', '1', '16925', '0', '548.729200', '-2110.406000', '840.940300', '0.000000', '300', '0', '0', '4120', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86861', '22515', '631', '15', '1', '16925', '0', '568.533000', '-2106.957000', '845.878100', '0.000000', '300', '0', '0', '4120', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86862', '22515', '631', '15', '1', '16925', '0', '542.776100', '-2071.840000', '845.878100', '0.000000', '300', '0', '0', '4120', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86863', '22515', '631', '15', '1', '16925', '0', '539.628500', '-2089.509000', '840.940300', '0.000000', '300', '0', '0', '4120', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES ('86864', '22515', '631', '15', '1', '16925', '0', '550.619800', '-2132.887000', '840.940300', '0.000000', '300', '0', '0', '4120', '0', '0', '0');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 30298;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=30298);
INSERT INTO `creature_ai_scripts` VALUES 
(3029851, 30298, 11, 0, 100, 0, 0, 0, 0, 0, 11, 72585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `creature_template_addon` WHERE (`entry`=36597);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (36597, 0, 0, 0, 0, 0, '73878 0 73220 0 72846 0');
DELETE FROM `creature_addon` WHERE (`guid`=115782);
UPDATE `creature` SET `position_x` = 1181.412, `position_y` = -4355.846, `position_z` = 21.42109, `orientation` = 1.768271 WHERE `guid` = 84682;
DELETE FROM `waypoint_data` WHERE `id`=84682;
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`) VALUES
(84682, 1, 1181.60800, -4356.82700, 21.42109),
(84682, 2, 1181.41200, -4355.84600, 21.42109),
(84682, 3, 1182.00500, -4358.79200, 21.42109),
(84682, 4, 1182.00500, -4358.79200, 21.42109);
INSERT IGNORE INTO `creature_addon` SET `guid`= 84682, `path_id`= 84682;

# NeatElves
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES ('48631', '36'), ('52969', '37'), ('126772', '38'), ('51336', '35');

# Onfus
DELETE FROM gameobject WHERE guid=11218;

# FIX
UPDATE `creature_template` SET `difficulty_entry_1` = 30398, `faction_A` = 16, `faction_H` = 16, `flags_extra` = 1 WHERE `entry` = 26796;
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16, `flags_extra` = 1, `ScriptName` = '' WHERE `entry` = 30398;
UPDATE `creature_template` SET `difficulty_entry_1` = 30397, `faction_A` = 16, `faction_H` = 16, `flags_extra` = 1 WHERE `entry` = 26798;
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16, `flags_extra` = 1, `ScriptName` = '' WHERE `entry` = 30397;
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` = 116779;
DELETE FROM `waypoint_data` WHERE `id`=116779;
UPDATE `creature_template` SET `lootid` = 26798, `pickpocketloot` = 26798 WHERE `entry` = 30397;

# Lightunit
DELETE FROM `gameobject` WHERE `id` = 189990;
DELETE FROM `game_event_gameobject` WHERE `guid` = 25515;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 12020;
INSERT INTO `gameobject_questrelation` VALUES (189989, 12020);

# NeatElves
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 23872;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 11454;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12062;
DELETE FROM `creature_questrelation` WHERE `quest` = 12318;
DELETE FROM `creature_questrelation` WHERE `quest` = 12062;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12318;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12062;
UPDATE `creature_template` SET `npcflag` = '0' WHERE `entry` =26719;
DELETE FROM `creature` WHERE `guid` = 81631;
DELETE FROM `creature` WHERE `guid` = 81632;
DELETE FROM `game_event_creature` WHERE `guid` = 81631;
DELETE FROM `game_event_creature` WHERE `guid` = 81632;
UPDATE `creature_template` SET `faction_A` = '1801',`faction_H` = '1801' WHERE `entry` in (27216,23604,24495,24527,23605,24657,24499,24510,24493,24492,24498,24497,28329,24711,23606,23533,24501,23603);
UPDATE `creature_template` SET `faction_A` = '1802',`faction_H` = '1802' WHERE `entry` in (27215,23521,23522,23710,23525,23486,23628,27584,24710,23684,23481,23558,24468,23510,24364);
DELETE FROM `creature_questrelation` WHERE `quest` = 12193;
DELETE FROM `creature_questrelation` WHERE `quest` = 12194;
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES ('9038', '-26'), ('9046', '-26'), ('9067', '-26'), ('9114', '-26');
UPDATE `creature_template` SET `faction_A` = '1802',`faction_H` = '1802' WHERE `entry` in (23683,23627,23482);
UPDATE creature SET position_x = '-5176.696777', position_y = '-624.596252', position_z = '397.864532', orientation = '0.776175' WHERE guid = '84647';
UPDATE `creature` SET `position_z` = 84.83, `orientation` = 3.93 WHERE `guid` = 116836;
UPDATE `creature_template` SET `unit_flags` = 768 WHERE `entry` = 29173;
DELETE FROM `fishing_loot_template` WHERE `entry` = 148 AND `item` = 6717;
DELETE FROM `fishing_loot_template` WHERE `entry` = 148 AND `item` = 6718;
UPDATE `fishing_loot_template` SET `ChanceOrQuestChance` = '-100' WHERE `entry` =2078 AND `item` =6718;
UPDATE `fishing_loot_template` SET `ChanceOrQuestChance` = '-100' WHERE `entry` =2077 AND `item` =6718;
UPDATE `fishing_loot_template` SET `ChanceOrQuestChance` = '-100' WHERE `entry` =456 AND `item` =6718;
UPDATE `fishing_loot_template` SET `ChanceOrQuestChance` = '-100' WHERE `entry` =454 AND `item` =6718;
UPDATE `fishing_loot_template` SET `ChanceOrQuestChance` = '-100' WHERE `entry` =448 AND `item` =6718;

# FIX
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 0, `ReqCreatureOrGOCount1` = 0 WHERE `entry` = 24749;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 0, `ReqCreatureOrGOCount1` = 0 WHERE `entry` = 24756;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 0, `ReqCreatureOrGOCount1` = 0 WHERE `entry` = 24757;

# schmoozerd
UPDATE creature_loot_template SET ChanceOrQuestChance=100 WHERE item=21110 and entry=11502;

# FIX_Start_Ivent
REPLACE INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`) VALUES 
(1, '2010-06-21 02:00:00', '2020-12-30 02:00:00', 525600, 20160, 341, 'Midsummer Fire Festival'), 
(2, '2010-12-15 08:00:00', '2020-12-30 22:00:00', 525600, 25920, 141, 'Feast of Winter Veil'), 
(3, '2010-01-30 23:01:00', '2020-12-30 19:00:00', 131040, 10078, 376, 'Darkmoon Faire (Terokkar Forest)'), 
(4, '2010-02-27 23:01:00', '2020-12-30 19:00:00', 131040, 10078, 374, 'Darkmoon Faire (Elwynn Forest)'), 
(5, '2010-01-02 23:01:00', '2020-12-30 19:00:00', 131040, 10078, 375, 'Darkmoon Faire (Mulgore)'), 
(6, '2010-12-31 22:00:00', '2020-12-30 22:00:00', 525600, 120, 0, 'New Year''s Eve'), 
(7, '2011-01-23 08:00:00', '2020-12-30 22:00:00', 525600, 30240, 327, 'Lunar Festival'), 
(8, '2011-02-06 02:00:00', '2020-12-20 20:00:00', 525600, 18778, 335, 'Love is in the Air'), 
(9, '2011-04-24 02:00:00', '2020-12-30 22:00:00', 525600, 10078, 181, 'Noblegarden'), 
(10, '2011-05-01 02:00:00', '2020-12-30 22:00:00', 525600, 10078, 201, 'Children''s Week '), 
(11, '2010-09-16 02:00:00', '2020-12-30 02:00:00', 525600, 10080, 321, 'Harvest Festival'), 
(12, '2010-10-18 03:00:00', '2020-12-30 22:00:00', 525600, 20099, 324, 'Hallow''s End'), 
(13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 525600, 28800, 0, 'Elemental Invasions'), 
(14, '2010-09-26 13:50:00', '2020-12-30 16:00:00', 10080, 130, 0, 'Fishing Extravaganza Announce'), 
(15, '2010-09-26 14:00:00', '2020-12-27 16:00:00', 10080, 120, 301, 'Fishing Extravaganza'), 
(16, '2010-09-20 00:00:00', '2020-12-30 19:00:00', 180, 120, 0, 'Gurubashi Arena Booty Run'), 
(17, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 525600, 28800, 0, 'Scourge Invasion'), 
(18, '2010-10-22 00:01:00', '2020-12-30 22:00:00', 60480, 5758, 283, 'Call to Arms: Alterac Valley!'), 
(19, '2010-09-17 00:01:00', '2020-12-30 22:00:00', 60480, 5758, 284, 'Call to Arms: Warsong Gulch!'), 
(20, '2010-10-08 00:01:00', '2020-12-30 22:00:00', 60480, 5758, 285, 'Call to Arms: Arathi Basin!'), 
(21, '2010-10-15 00:01:00', '2020-12-30 22:00:00', 60480, 5758, 353, 'Call to Arms: Eye of the Storm!'), 
(22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 482400, 43200, 0, 'AQ War Effort'), 
(23, '2009-03-06 07:00:00', '2020-12-31 01:00:00', 1440, 60, 0, 'Wolfs Attack to the Orgrimmar (Wolfs Group One)'), 
(24, '2009-03-06 04:05:00', '2020-12-31 01:00:00', 7200, 60, 0, 'Wolfs Attack to the Orgrimmar (Wolfs Group Two)'), 
(25, '2007-08-12 16:00:07', '2020-12-31 01:00:00', 7200, 60, 0, 'Orgrimmar Grunts Start Defend'), 
(26, '2010-09-20 02:00:00', '2020-12-30 20:00:00', 525600, 24478, 372, 'Brewfest'), 
(27, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 7200, 60, 0, 'Death Legion Attack Stormwind City (Guards Defend)'), 
(28, '2007-08-12 21:59:59', '2020-12-31 01:00:00', 7200, 60, 0, 'Death Legion Attack Stormwind City (Undead Attack)'), 
(29, '2010-05-01 21:00:00', '2020-12-30 22:00:00', 1440, 720, 0, 'Nights'), 
(30, '2010-09-24 00:01:00', '2020-12-30 20:00:00', 60480, 5758, 400, 'Call to Arms: Strand of the Ancients!'), 
(31, '2010-12-05 20:01:00', '2020-12-30 22:00:00', 131040, 4320, 0, 'Darkmoon Faire Building (Elwynn Forest)'), 
(32, '2010-09-19 02:00:00', '2020-12-30 22:00:00', 525600, 1440, 0, 'Pirates'' Day'), 
(34, '2010-09-18 14:00:00', '2020-01-01 00:00:00', 10080, 5, 0, 'L70ETC Concert'), 
(35, '2010-09-06 00:01:00', '2020-12-30 22:00:00', 86400, 20160, 0, 'Edge of Madness, Gri''lek'), 
(36, '2010-09-20 00:01:00', '2020-12-30 22:00:00', 86400, 20160, 0, 'Edge of Madness, Hazza''rah'), 
(37, '2010-10-04 00:01:00', '2020-12-30 22:00:00', 86400, 20160, 0, 'Edge of Madness, Renataki'), 
(38, '2010-10-18 00:01:00', '2020-12-30 22:00:00', 86400, 20160, 0, 'Edge of Madness, Wushoolay'), 
(40, '2010-11-01 03:00:00', '2020-12-30 22:00:00', 525600, 1440, 409, 'Day of the Dead'), 
(41, '2010-11-21 03:00:00', '2020-12-30 22:00:00', 545760, 10019, 404, 'Pilgrim''s Bounty'), 
(42, '2010-10-01 00:01:00', '2020-12-30 22:00:00', 60480, 5758, 420, 'Call to Arms: Isle of Conquest!'), 
(43, '2010-09-20 00:15:00', '2020-12-30 22:00:00', 60, 5, 0, 'Hammerfall Under Attack'), 
(44, '2010-09-20 00:00:00', '2020-12-30 22:00:00', 5, 5, 0, 'Thrallmar Demon Attack'), 
(45, '2010-09-25 14:00:00', '2020-12-26 15:00:00', 10080, 60, 424, 'Kalu''ak Fishing Derby'), 
(46, '2010-09-08 00:00:01', '2011-09-08 00:00:01', 86400, 432000, 0, 'Zalazane''s Fall'), 
(47, '2010-09-08 00:00:01', '2011-09-08 00:00:01', 86400, 432000, 0, 'Operation: Gnomeregan'), 
(50, '2010-01-01 00:01:00', '2020-01-31 23:59:00', 525600, 44640, 0, 'January'), 
(51, '2010-02-01 00:01:00', '2020-02-29 23:59:00', 525600, 40320, 0, 'February'), 
(52, '2010-03-01 00:01:00', '2020-03-31 23:59:00', 525600, 44640, 0, 'March'), 
(53, '2010-04-01 00:01:00', '2020-04-30 23:59:00', 525600, 43200, 0, 'April'), 
(54, '2010-05-01 00:01:00', '2020-05-31 23:59:00', 525600, 44640, 0, 'May'), 
(55, '2010-06-01 00:01:00', '2020-06-30 23:59:00', 525600, 43200, 0, 'June'), 
(56, '2010-07-01 00:01:00', '2020-07-31 23:59:00', 525600, 44640, 0, 'July'), 
(57, '2010-08-01 00:01:00', '2020-08-31 23:59:00', 525600, 44640, 0, 'August'), 
(58, '2010-09-01 00:01:00', '2020-09-30 23:59:00', 525600, 43200, 0, 'September'), 
(59, '2010-10-01 00:01:00', '2020-10-31 23:59:00', 525600, 44640, 0, 'October'), 
(60, '2010-11-01 00:01:00', '2020-11-30 23:59:00', 525600, 43200, 0, 'November'), 
(61, '2010-12-01 00:01:00', '2020-12-31 23:59:00', 525600, 44640, 0, 'December'); 
UPDATE `gameobject` SET `spawntimesecs` = 120 WHERE `id` IN (41,164,263,271,276,337,1165,1673,1723,1760,2068,2087,2712,2714,2724,2743,2910,2912,3236,3237,3240,3290,3685,4406,4608,11713,12654,17282,18036,19016,19603,19868,19869,19870,19871,19872,19873,22245,22246,22550,24798,30854,30855,30856,37099,58369,86492,89634,89635,105174,124389,140971,142181,148513,148514,148515,148516,152622,152631,153239,154357,161527,161557,161752,164662,175264,175324,175384,175407,175565,175708,175802,176151,176751,176752,176793,177464,177750,177784,177926,178144,178184,178195,179644,179922,180436,180600,180917,180921,181053,181098,181107,181151,181283,181372,181385,181574,181620,181626,181637,181645,181683,181686,181687,181696,181697,181746,181770,181854,181871,181891,181892,181893,181894,181897,181916,181981,182031,182050,182116,182119,182128,182139,182185,182256,182265,182355,182520,182526,182541,182581,182583,182584,182797,182798,182799,182936,182937,182938,183394,183395,183396,183397,183767,183813,183814,183934,183935,183945,184031,184077,184607,184689,184796,184869,184870,184948,185130,185182,185497,185541,185911,185939,186301,186325,186390,186397,186427,186450,186468,186587,186591,186595,186619,186632,186684,186912,186954,186955,187367,187670,187677,187684,187689,187897,188015,188113,188140,188164,188236,188260,188262,188345,188359,188441,188442,188499,188501,188600,188601,188646,188658,188659,188670,188671,188691,188699,188702,188703,188705,189306,189976,189983,190459,190500,190533,190534,190540,190541,190558,190560,190561,190562,190563,190584,190633,190660,190691,190702,190717,190720,190778,190836,191179,191530,191568,191780,191782,191783,191814,191815,191843,192058,192081,192082,192187,192536,192556,192676,192823,192824,192825,192827,192908,192909,193199,194213,195022,195037,195274,195344);
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `mindmg` = 307, `maxdmg` = 459, `attackpower` = 115, `dmg_multiplier` = 2.7, `minrangedmg` = 246, `maxrangedmg` = 367, `rangedattackpower` = 92 WHERE `entry` = 38608;
UPDATE `creature_template` SET `dmg_multiplier` = 12.2 WHERE `entry` = 38609;

# Conditions
REPLACE INTO `gossip_menu` VALUES ('3186', '3945');
REPLACE INTO `gossip_menu` VALUES ('3186', '5857');
REPLACE INTO `gossip_menu` VALUES ('4016', '4881');
REPLACE INTO `gossip_menu` VALUES ('5062', '6104');
REPLACE INTO `gossip_menu` VALUES ('6620', '7872');
REPLACE INTO `gossip_menu` VALUES ('7357', '8785');
REPLACE INTO `gossip_menu` VALUES ('7361', '8821');
REPLACE INTO `gossip_menu` VALUES ('7633', '9316');
REPLACE INTO `gossip_menu` VALUES ('7634', '9318');
REPLACE INTO `gossip_menu` VALUES ('7635', '9319');
REPLACE INTO `gossip_menu` VALUES ('7637', '9321');
REPLACE INTO `gossip_menu` VALUES ('7638', '9322');
REPLACE INTO `gossip_menu` VALUES ('7639', '9320');
REPLACE INTO `gossip_menu` VALUES ('7640', '9323');
REPLACE INTO `gossip_menu` VALUES ('7641', '9324');
REPLACE INTO `gossip_menu` VALUES ('7642', '9325');
REPLACE INTO `gossip_menu` VALUES ('7643', '9326');
REPLACE INTO `gossip_menu` VALUES ('7644', '9327');
REPLACE INTO `gossip_menu` VALUES ('7645', '9328');
REPLACE INTO `gossip_menu` VALUES ('7646', '9329');
REPLACE INTO `gossip_menu` VALUES ('7647', '9330');
REPLACE INTO `gossip_menu` VALUES ('7648', '9332');
REPLACE INTO `gossip_menu` VALUES ('7649', '9331');
REPLACE INTO `gossip_menu` VALUES ('7650', '9333');
REPLACE INTO `gossip_menu` VALUES ('7651', '9334');
REPLACE INTO `gossip_menu` VALUES ('7652', '9335');
REPLACE INTO `gossip_menu` VALUES ('7653', '9336');
REPLACE INTO `gossip_menu` VALUES ('7654', '9337');
REPLACE INTO `gossip_menu` VALUES ('7655', '9339');
REPLACE INTO `gossip_menu` VALUES ('7656', '9340');
REPLACE INTO `gossip_menu` VALUES ('7657', '9341');
REPLACE INTO `gossip_menu` VALUES ('7658', '9342');
REPLACE INTO `gossip_menu` VALUES ('7659', '9343');
REPLACE INTO `gossip_menu` VALUES ('7660', '9344');
REPLACE INTO `gossip_menu` VALUES ('7661', '9345');
REPLACE INTO `gossip_menu` VALUES ('7662', '9346');
REPLACE INTO `gossip_menu` VALUES ('7663', '9347');
REPLACE INTO `gossip_menu` VALUES ('7664', '9348');
REPLACE INTO `gossip_menu` VALUES ('7665', '9349');
REPLACE INTO `gossip_menu` VALUES ('7666', '9350');
REPLACE INTO `gossip_menu` VALUES ('7667', '9338');
REPLACE INTO `gossip_menu` VALUES ('7668', '9317');
REPLACE INTO `gossip_menu` VALUES ('7777', '9551');
REPLACE INTO `gossip_menu` VALUES ('7778', '9528');
REPLACE INTO `gossip_menu` VALUES ('7779', '9529');
REPLACE INTO `gossip_menu` VALUES ('7780', '9530');
REPLACE INTO `gossip_menu` VALUES ('7781', '9539');
REPLACE INTO `gossip_menu` VALUES ('7782', '9545');
REPLACE INTO `gossip_menu` VALUES ('7783', '10254');
REPLACE INTO `gossip_menu` VALUES ('7784', '9558');
REPLACE INTO `gossip_menu` VALUES ('7785', '9565');
REPLACE INTO `gossip_menu` VALUES ('7786', '9531');
REPLACE INTO `gossip_menu` VALUES ('7787', '9533');
REPLACE INTO `gossip_menu` VALUES ('7788', '9555');
REPLACE INTO `gossip_menu` VALUES ('7789', '9534');
REPLACE INTO `gossip_menu` VALUES ('7790', '9544');
REPLACE INTO `gossip_menu` VALUES ('7791', '9550');
REPLACE INTO `gossip_menu` VALUES ('7792', '9553');
REPLACE INTO `gossip_menu` VALUES ('7793', '9554');
REPLACE INTO `gossip_menu` VALUES ('7794', '9556');
REPLACE INTO `gossip_menu` VALUES ('7795', '9562');
REPLACE INTO `gossip_menu` VALUES ('7796', '9527');
REPLACE INTO `gossip_menu` VALUES ('7797', '9532');
REPLACE INTO `gossip_menu` VALUES ('7798', '9535');
REPLACE INTO `gossip_menu` VALUES ('7799', '9536');
REPLACE INTO `gossip_menu` VALUES ('7800', '9537');
REPLACE INTO `gossip_menu` VALUES ('7801', '9538');
REPLACE INTO `gossip_menu` VALUES ('7802', '9543');
REPLACE INTO `gossip_menu` VALUES ('7803', '9547');
REPLACE INTO `gossip_menu` VALUES ('7804', '9549');
REPLACE INTO `gossip_menu` VALUES ('7805', '9552');
REPLACE INTO `gossip_menu` VALUES ('7806', '9557');
REPLACE INTO `gossip_menu` VALUES ('7807', '9559');
REPLACE INTO `gossip_menu` VALUES ('7844', '9603');
REPLACE INTO `gossip_menu` VALUES ('7845', '9602');
REPLACE INTO `gossip_menu` VALUES ('7859', '9622');
REPLACE INTO `gossip_menu` VALUES ('7860', '9624');
REPLACE INTO `gossip_menu` VALUES ('8129', '10066');
REPLACE INTO `gossip_menu` VALUES ('8130', '10067');
REPLACE INTO `gossip_menu` VALUES ('8133', '10071');
REPLACE INTO `gossip_menu` VALUES ('8134', '10073');
REPLACE INTO `gossip_menu` VALUES ('8135', '10074');
REPLACE INTO `gossip_menu` VALUES ('8136', '10075');
REPLACE INTO `gossip_menu` VALUES ('8137', '10076');
REPLACE INTO `gossip_menu` VALUES ('8138', '10087');
REPLACE INTO `gossip_menu` VALUES ('8139', '10077');
REPLACE INTO `gossip_menu` VALUES ('8141', '10078');
REPLACE INTO `gossip_menu` VALUES ('8142', '10081');
REPLACE INTO `gossip_menu` VALUES ('8143', '10083');
REPLACE INTO `gossip_menu` VALUES ('8144', '10084');
REPLACE INTO `gossip_menu` VALUES ('8145', '10085');
REPLACE INTO `gossip_menu` VALUES ('8146', '10086');
REPLACE INTO `gossip_menu` VALUES ('8147', '10088');
REPLACE INTO `gossip_menu` VALUES ('8148', '10089');
REPLACE INTO `gossip_menu` VALUES ('8149', '10090');
REPLACE INTO `gossip_menu` VALUES ('8150', '10091');
REPLACE INTO `gossip_menu` VALUES ('8152', '10093');
REPLACE INTO `gossip_menu` VALUES ('8153', '10094');
REPLACE INTO `gossip_menu` VALUES ('8154', '10095');
REPLACE INTO `gossip_menu` VALUES ('8155', '10096');
REPLACE INTO `gossip_menu` VALUES ('8156', '10097');
REPLACE INTO `gossip_menu` VALUES ('8157', '10098');
REPLACE INTO `gossip_menu` VALUES ('8158', '10099');
REPLACE INTO `gossip_menu` VALUES ('8159', '10100');
REPLACE INTO `gossip_menu` VALUES ('8184', '10181');
REPLACE INTO `gossip_menu` VALUES ('8185', '10180');
REPLACE INTO `gossip_menu` VALUES ('8186', '10182');
REPLACE INTO `gossip_menu` VALUES ('8187', '10183');
REPLACE INTO `gossip_menu` VALUES ('8188', '10184');
REPLACE INTO `gossip_menu` VALUES ('8189', '10185');
REPLACE INTO `gossip_menu` VALUES ('8190', '10186');
REPLACE INTO `gossip_menu` VALUES ('8191', '10187');
REPLACE INTO `gossip_menu` VALUES ('8192', '10189');
REPLACE INTO `gossip_menu` VALUES ('8193', '10190');
REPLACE INTO `gossip_menu` VALUES ('8194', '10191');
REPLACE INTO `gossip_menu` VALUES ('8195', '10192');
REPLACE INTO `gossip_menu` VALUES ('8196', '9331');
REPLACE INTO `gossip_menu` VALUES ('8197', '10193');
REPLACE INTO `gossip_menu` VALUES ('8198', '10194');
REPLACE INTO `gossip_menu` VALUES ('8199', '10195');
REPLACE INTO `gossip_menu` VALUES ('8200', '10196');
REPLACE INTO `gossip_menu` VALUES ('8201', '10197');
REPLACE INTO `gossip_menu` VALUES ('8202', '10198');
REPLACE INTO `gossip_menu` VALUES ('8203', '10199');
REPLACE INTO `gossip_menu` VALUES ('8204', '10200');
REPLACE INTO `gossip_menu` VALUES ('8205', '9338');
REPLACE INTO `gossip_menu` VALUES ('8208', '10203');
REPLACE INTO `gossip_menu` VALUES ('8209', '10204');
REPLACE INTO `gossip_menu` VALUES ('8210', '10205');
REPLACE INTO `gossip_menu` VALUES ('8211', '10206');
REPLACE INTO `gossip_menu` VALUES ('8212', '10207');
REPLACE INTO `gossip_menu` VALUES ('8226', '10223');
REPLACE INTO `gossip_menu` VALUES ('8282', '10321');
REPLACE INTO `gossip_menu` VALUES ('8313', '10380');
REPLACE INTO `gossip_menu` VALUES ('8314', '10381');
REPLACE INTO `gossip_menu` VALUES ('8315', '10379');
REPLACE INTO `gossip_menu` VALUES ('8316', '10383');
REPLACE INTO `gossip_menu` VALUES ('8317', '10382');
REPLACE INTO `gossip_menu` VALUES ('8318', '10384');
REPLACE INTO `gossip_menu` VALUES ('8319', '10385');
REPLACE INTO `gossip_menu` VALUES ('8320', '10386');
REPLACE INTO `gossip_menu` VALUES ('8321', '10387');
REPLACE INTO `gossip_menu` VALUES ('8323', '10388');
REPLACE INTO `gossip_menu` VALUES ('8324', '10389');
REPLACE INTO `gossip_menu` VALUES ('8325', '10390');
REPLACE INTO `gossip_menu` VALUES ('8326', '10391');
REPLACE INTO `gossip_menu` VALUES ('8327', '10392');
REPLACE INTO `gossip_menu` VALUES ('8328', '10393');
REPLACE INTO `gossip_menu` VALUES ('8329', '10394');
REPLACE INTO `gossip_menu` VALUES ('8330', '10395');
REPLACE INTO `gossip_menu` VALUES ('8331', '10396');
REPLACE INTO `gossip_menu` VALUES ('8332', '10397');
REPLACE INTO `gossip_menu` VALUES ('8333', '10398');
REPLACE INTO `gossip_menu` VALUES ('8334', '10399');
REPLACE INTO `gossip_menu` VALUES ('8335', '10400');
REPLACE INTO `gossip_menu` VALUES ('8399', '10501');
REPLACE INTO `gossip_menu` VALUES ('8401', '10502');
REPLACE INTO `gossip_menu` VALUES ('8402', '10503');
REPLACE INTO `gossip_menu` VALUES ('8546', '10696');
REPLACE INTO `gossip_menu` VALUES ('8547', '10698');
REPLACE INTO `gossip_menu` VALUES ('8548', '10697');
REPLACE INTO `gossip_menu` VALUES ('8549', '10699');
REPLACE INTO `gossip_menu` VALUES ('8762', '11136');
REPLACE INTO `gossip_menu` VALUES ('8851', '11492');
REPLACE INTO `gossip_menu` VALUES ('9206', '12510');
REPLACE INTO `gossip_menu` VALUES ('9853', '13642');
REPLACE INTO `gossip_menu` VALUES ('9922', '13797');
REPLACE INTO `gossip_menu` VALUES ('9995', '13851');
REPLACE INTO `gossip_menu` VALUES ('9999', '13857');
REPLACE INTO `gossip_menu` VALUES ('10016', '13887');
REPLACE INTO `gossip_menu` VALUES ('10022', '13893');
REPLACE INTO `gossip_menu` VALUES ('10109', '14034');
REPLACE INTO `gossip_menu` VALUES ('10122', '14052');
REPLACE INTO `gossip_menu` VALUES ('10125', '14055');
REPLACE INTO `gossip_menu` VALUES ('10161', '14109');
REPLACE INTO `gossip_menu` VALUES ('10163', '14109');
REPLACE INTO `gossip_menu` VALUES ('10164', '14111');
REPLACE INTO `gossip_menu` VALUES ('10165', '14111');
REPLACE INTO `gossip_menu` VALUES ('10172', '14116');
REPLACE INTO `gossip_menu` VALUES ('10845', '15037');
REPLACE INTO `gossip_menu` VALUES ('10906', '15152');
REPLACE INTO `gossip_menu` VALUES ('10923', '15172');
REPLACE INTO `gossip_menu` VALUES ('10925', '15174');
REPLACE INTO `gossip_menu` VALUES ('10930', '15189');
REPLACE INTO `gossip_menu` VALUES ('11192', '15581');
REPLACE INTO `gossip_menu` VALUES ('11323', '15779');
REPLACE INTO `gossip_menu` VALUES ('11393', '15870');
REPLACE INTO `gossip_menu` VALUES ('33477', '14408');
REPLACE INTO `gossip_menu` VALUES ('50023', '2013');
REPLACE INTO `gossip_menu` VALUES ('50166', '11956');
REPLACE INTO `gossip_menu` VALUES ('50167', '11963');
REPLACE INTO `gossip_menu` VALUES ('50168', '11966');
REPLACE INTO `gossip_menu_option` VALUES ('50006', '2', '0', 'Can you tell me about this shard?', '1', '1', '50023', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10502', '4', '0', 'Ask about the orphan.', '1', '1', '10505', '0', '50126', '0', '0', 'You may choose to care for an Wolvar orphan or a frenzyheart orphan. But you will not be able help both.');
REPLACE INTO `gossip_menu_option` VALUES ('9488', '0', '1', 'Do you have any items I can test?', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4016', '0', '0', 'GOSSIP_OPTION_QUESTGIVER', '2', '2', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4016', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3186', '0', '0', 'GOSSIP_OPTION_QUESTGIVER', '2', '2', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3186', '1', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10281', '0', '0', 'GOSSIP_OPTION_QUESTGIVER', '2', '2', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10281', '1', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9922', '0', '0', 'GOSSIP_OPTION_QUESTGIVER', '2', '2', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10109', '0', '0', 'GOSSIP_OPTION_QUESTGIVER', '2', '2', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9999', '0', '0', 'GOSSIP_OPTION_QUESTGIVER', '2', '2', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9995', '0', '0', 'GOSSIP_OPTION_QUESTGIVER', '2', '2', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10122', '0', '0', 'GOSSIP_OPTION_QUESTGIVER', '2', '2', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10122', '1', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10125', '0', '0', 'GOSSIP_OPTION_QUESTGIVER', '2', '2', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10172', '0', '0', 'GOSSIP_OPTION_QUESTGIVER', '2', '2', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10930', '0', '0', 'GOSSIP_OPTION_QUESTGIVER', '2', '2', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10906', '0', '0', 'GOSSIP_OPTION_QUESTGIVER', '2', '2', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10923', '0', '0', 'GOSSIP_OPTION_QUESTGIVER', '2', '2', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('11192', '0', '0', 'GOSSIP_OPTION_QUESTGIVER', '2', '2', '0', '0', '0', '0', '0', null);
REPLACE INTO `conditions` VALUES ('13', '0', '54160', '0', '18', '1', '29266', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '59474', '0', '18', '1', '29266', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50166', '11956', '0', '12', '12', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50167', '11963', '0', '12', '12', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50168', '11966', '0', '12', '12', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3186', '3945', '0', '5', '54', '7', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4016', '4881', '0', '5', '54', '7', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9853', '13642', '0', '8', '12928', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50006', '2', '0', '9', '6981', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10502', '4', '0', '9', '13927', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4016', '1', '0', '5', '54', '7', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3186', '1', '0', '5', '54', '7', '0', '0', '', null);
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=31304;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=11832;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=33447;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=29579;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=31304;


# WDB_Check
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=32631;


# Temp_FIX
UPDATE `gossip_scripts` SET `command` = '34' WHERE `command` =19;
update conditions set ConditionTypeOrReference='0' where ConditionTypeOrReference='13' AND SourceTypeOrReferenceId=15;
update conditions set ConditionTypeOrReference='0' where ConditionTypeOrReference='15' AND SourceTypeOrReferenceId=15;
update conditions set ConditionTypeOrReference='0' where ConditionTypeOrReference='16' AND SourceTypeOrReferenceId=15;
UPDATE `creature_template` SET `gossip_menu_id` = 0 WHERE `npcflag` = `npcflag`|32;
UPDATE `gossip_menu_option` SET `box_text`='Are you sure you wish to purchase a Dual Talent Specialization?' WHERE `option_id` =18;
DELETE FROM `gossip_menu_option` WHERE `option_text`= 'GOSSIP_OPTION_QUESTGIVER' AND `menu_id`>0;
UPDATE creature_template_addon SET path_id=0;

# timmit
UPDATE
`creature_template_addon`, `creature_template`
SET
`creature_template`.`unit_flags`=IF(`creature_template`.`unit_flags` &  33554432=33554432,570721024,537166592),
`creature_template`.`dynamicflags`=`creature_template`.`dynamicflags` | 32
WHERE
`creature_template`.`entry`=`creature_template_addon`.`entry`
AND `creature_template_addon`.`auras`='29266 0 29266 1';

# NPC_FIX
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

UPDATE version SET `cache_id`= '565';
UPDATE version SET `core_revision`= '10001';
UPDATE version SET `db_version`= 'YTDB_0.13.9_R565_TC_R10001_TDBAI_335.0.1_RuDB_R38.3';
