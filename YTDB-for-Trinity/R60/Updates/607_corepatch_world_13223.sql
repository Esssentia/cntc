DELETE FROM `disables` WHERE `sourceType`=0 AND `entry`=23789;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `comment`) VALUES
(0, 23789, 8, 'Stoneclaw Totem TEST - can crash client by spawning too many totems');
DELETE FROM `disables` WHERE `sourceType`=0 AND `entry`=61904;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `comment`) VALUES
(0, 61904, 8, 'Magma Totem TEST - can crash client by spawning too many totems');
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_rotface_mutated_infection';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(69674,'spell_rotface_mutated_infection'),
(71224,'spell_rotface_mutated_infection'),
(73022,'spell_rotface_mutated_infection'),
(73023,'spell_rotface_mutated_infection');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (67590,67602,67603,67604,65684,67176,67177,67178,65686,67222,67223,67224);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`)
VALUES
(67590, 'spell_powering_up'),
(67602, 'spell_powering_up'),
(67603, 'spell_powering_up'),
(67604, 'spell_powering_up'),
(65684, 'spell_valkyr_essences'),
(67176, 'spell_valkyr_essences'),
(67177, 'spell_valkyr_essences'),
(67178, 'spell_valkyr_essences'),
(67222, 'spell_valkyr_essences'),
(65686, 'spell_valkyr_essences'),
(67223, 'spell_valkyr_essences'),
(67224, 'spell_valkyr_essences');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (65879,65916,67244,67245,67246,67248,67249,67250);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(65879, 'spell_power_of_the_twins'),
(65916, 'spell_power_of_the_twins'),
(67244, 'spell_power_of_the_twins'),
(67245, 'spell_power_of_the_twins'),
(67246, 'spell_power_of_the_twins'),
(67248, 'spell_power_of_the_twins'),
(67249, 'spell_power_of_the_twins'),
(67250, 'spell_power_of_the_twins');
UPDATE `creature_template` SET `ScriptName`='npc_vereth_the_cunning' WHERE `entry`=30944;
DELETE FROM `spell_script_names` WHERE `spell_id` IN (59643,4338);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(59643, 'spell_q13280_13283_plant_battle_standard'),
(4338, 'spell_q13280_13283_plant_battle_standard');

-- ----------
-- Tank Class Passive Threat
-- ----------
DELETE FROM spell_linked_spell WHERE spell_effect IN (57340, 57339);
INSERT INTO spell_linked_spell VALUES
    (7376,  57339, 2, 'Defensive Stance Passive - Tank Class Passive Threat'),
    (21178, 57339, 2, 'Bear Form (Passive2) - Tank Class Passive Threat'),
    (25780, 57340, 2, 'Righteous Fury - Tank Class Passive Threat'),
    (48263, 57340, 2, 'Frost Presence - Tank Class Passive Threat');

-- ----------
-- restructure spell_threat
-- ----------
TRUNCATE TABLE `spell_threat`;
ALTER    TABLE `spell_threat` CHANGE `Threat` `flatMod` int(6);
ALTER    TABLE `spell_threat` ADD COLUMN `pctMod`   FLOAT NOT NULL DEFAULT 1.0 COMMENT 'threat multiplier for damage/healing' AFTER `flatMod`;
ALTER    TABLE `spell_threat` ADD COLUMN `apPctMod` FLOAT NOT NULL DEFAULT 0.0 COMMENT 'additional threat bonus from attack power' AFTER `pctMod`;
INSERT INTO `spell_threat` VALUES
-- Other
-- Src: SELECT id, SpellNameEN, RankEN FROM `Spell` WHERE `DescriptionEN` LIKE '%threat%' AND `SpellFamilyName` <> '0' AND NOT (Attributes & 0x40) GROUP BY SpellNameEN ORDER BY RankEN DESC;
    (5676,  0,   2.00, 0.0),  -- Searing Pain (Rank 1) (Warlock)
    (28176, 0,   0.00, 0.0),  -- Fel Armor - Heal (Rank 1) (Warlock) [Assumption]
    (8056,  0,   2.00, 0.0),  -- Frost Shock (Rank 1) (Shaman) [Assumption]
    (26688, 0,   0.00, 0.0),  -- Anesthetic Poison - Proc (Rank 1) (Rogue)
    (15237, 0,   0.00, 0.0),  -- Holy Nova - Heal (Rank 1) (Priest)
    (23455, 0,   0.00, 0.0),  -- Holy Nova - Damage (Rank 1) (Priest)
    (32546, 0,   0.50, 0.0),  -- Binding Heal (Rank 1) (Priest) [Assumption]
    (33619, 0,   0.00, 0.0),  -- Reflective Shield - Proc (Priest)
    (2139,  180, 1.00, 0.0),  -- Counterspell (Mage) [Assumption]
-- Death Knight
-- Src: http://www.tankspot.com/showthread.php?40485-Death-Knight-threat-values&p=113584#post113584
    (63611, 0,   0.00, 0.0),  -- Blood Presence - Heal
    (45524, 240, 1.00, 0.0),  -- Chains of Ice
    (43265, 0,   1.90, 0.0),  -- Death and Decay
    (49576, 110, 1.00, 0.0),  -- Death Grip
    (48743, 0,   0.00, 0.0),  -- Death Pact
    (65142, 0,   0.00, 0.0),  -- Ebon Plague
    (47568, 0,   0.00, 0.0),  -- Empower Rune Weapon
    (51209, 112, 1.00, 0.0),  -- Hungering Cold
    (49039, 110, 1.00, 0.0),  -- Lichborn
    (56815, 0,   1.75, 0.0),  -- Rune Strike
    (50422, 0,   0.00, 0.0),  -- Scent of Blood - Proc
    (55090, 51,  1.00, 0.0),  -- Scourge Strike (Rank 1)
    (55265, 63,  1.00, 0.0),  -- Scourge Strike (Rank 2)
    (55270, 98,  1.00, 0.0),  -- Scourge Strike (Rank 3)
    (55271, 120, 1.00, 0.0),  -- Scourge Strike (Rank 4)
    (49916, 138, 1.00, 0.0),  -- Strangulate
    (50181, 0,   0.00, 0.0),  -- Vendetta - Proc
-- Druid
-- Src: http://www.tankspot.com/showthread.php?47813-WOTLK-Bear-Threat-Values&p=200948#post200948
    (17057, 0,   0.00, 0.0),  -- Furor - Proc 
    (5211,  53,  1.00, 0.0),  -- Bash (Rank 3)
    (6798,  105, 1.00, 0.0),  -- Bash (Rank 2)
    (8983,  158, 1.00, 0.0),  -- Bash (Rank 1)
    (45334, 40,  1.00, 0.0),  -- Feral Charge (Bear) - Root
    (19675, 80,  1.00, 0.0),  -- Feral Charge (Bear) - Interrupt
    (34299, 0,   0.00, 0.0),  -- Improved Leader of the Pack - Heal
    (6807,  13,  1.00, 0.0),  -- Maul (Rank 1)
    (6808,  20,  1.00, 0.0),  -- Maul (Rank 2)
    (6809,  27,  1.00, 0.0),  -- Maul (Rank 3)
    (8972,  47,  1.00, 0.0),  -- Maul (Rank 4)
    (9745,  75,  1.00, 0.0),  -- Maul (Rank 5)
    (9880,  106, 1.00, 0.0),  -- Maul (Rank 6)
    (9881,  140, 1.00, 0.0),  -- Maul (Rank 7)
    (26996, 212, 1.00, 0.0),  -- Maul (Rank 8)
    (48479, 345, 1.00, 0.0),  -- Maul (Rank 9)
    (48480, 422, 1.00, 0.0),  -- Maul (Rank 10)
    (60089, 638, 1.00, 0.0),  -- Faerie Fire (Feral) - Proc
    (33745, 182, 0.50, 0.0),  -- Lacerate (Rank 1)
    (48567, 409, 0.50, 0.0),  -- Lacerate (Rank 2)
    (48568, 515, 0.50, 0.0),  -- Lacerate (Rank 3)
    (779,   0,   1.50, 0.0),  -- Swipe (Bear) (Rank 1)
    (5209,  98,  1.00, 0.0),  -- Challenging Roar
    (29166, 0,   10.0, 0.0),  -- Innervate [base is 5 per 1 mana]
-- Paladin
-- Src: http://www.tankspot.com/showthread.php?39761-Paladin-Threat-Values-(Updated-for-3.2.2)&p=103813#post103813
    (7294,  0,   2.00, 0.0),  -- Retribution Aura
    (20185, 0,   0.00, 0.0),  -- Judgement of Light
    (19742, 0,   0.00, 0.0),  -- Blessing of Wisdom (Rank 1)
    (25894, 0,   0.00, 0.0),  -- Greater Blessing of Wisdom (Rank 1)
    (20470, 0,   0.00, 0.0),  -- Righteous Fury
    (498,   0,   0.00, 0.0),  -- Divine Protection
-- Warrior
-- Src: http://www.tankspot.com/showthread.php?39775-WoW-3.0-Threat-Values-(Warrior)&p=103972#post103972
    (845,   8,   1.00, 0.0),  -- Cleave (Rank 1)
    (7369,  15,  1.00, 0.0),  -- Cleave (Rank 2)
    (11608, 25,  1.00, 0.0),  -- Cleave (Rank 3)
    (11609, 35,  1.00, 0.0),  -- Cleave (Rank 4)
    (20569, 48,  1.00, 0.0),  -- Cleave (Rank 5)
    (25231, 68,  1.00, 0.0),  -- Cleave (Rank 6)
    (47519, 95,  1.00, 0.0),  -- Cleave (Rank 7)
    (47520, 112, 1.00, 0.0),  -- Cleave (Rank 8)
    (78,    5,   1.00, 0.0),  -- Heroic Strike (Rank 1)
    (284,   10,  1.00, 0.0),  -- Heroic Strike (Rank 2)
    (285,   16,  1.00, 0.0),  -- Heroic Strike (Rank 3)
    (1608,  22,  1.00, 0.0),  -- Heroic Strike (Rank 4)
    (11564, 31,  1.00, 0.0),  -- Heroic Strike (Rank 5)
    (11565, 48,  1.00, 0.0),  -- Heroic Strike (Rank 6)
    (11566, 70,  1.00, 0.0),  -- Heroic Strike (Rank 7)
    (11567, 92,  1.00, 0.0),  -- Heroic Strike (Rank 8)
    (25286, 104, 1.00, 0.0),  -- Heroic Strike (Rank 9)
    (29707, 121, 1.00, 0.0),  -- Heroic Strike (Rank 10)
    (30324, 164, 1.00, 0.0),  -- Heroic Strike (Rank 11)
    (47449, 224, 1.00, 0.0),  -- Heroic Strike (Rank 12)
    (47450, 259, 1.00, 0.0),  -- Heroic Strike (Rank 13)
    (57755, 0,   1.50, 0.0),  -- Heroic Throw
    (6572,  7,   1.00, 0.0),  -- Revenge (Rank 1)
    (6574,  11,  1.00, 0.0),  -- Revenge (Rank 2)
    (7379,  15,  1.00, 0.0),  -- Revenge (Rank 3)
    (11600, 27,  1.00, 0.0),  -- Revenge (Rank 4)
    (11601, 41,  1.00, 0.0),  -- Revenge (Rank 5)
    (25288, 53,  1.00, 0.0),  -- Revenge (Rank 6)
    (25269, 58,  1.00, 0.0),  -- Revenge (Rank 7)
    (30357, 71,  1.00, 0.0),  -- Revenge (Rank 8)
    (57823, 121, 1.00, 0.0),  -- Revenge (Rank 9)
    (23922, 228, 1.00, 0.0),  -- Shield Slam (Rank 1)
    (23923, 268, 1.00, 0.0),  -- Shield Slam (Rank 2)
    (23924, 307, 1.00, 0.0),  -- Shield Slam (Rank 3)
    (23925, 347, 1.00, 0.0),  -- Shield Slam (Rank 4)
    (25258, 387, 1.00, 0.0),  -- Shield Slam (Rank 5)
    (30356, 426, 1.00, 0.0),  -- Shield Slam (Rank 6)
    (47487, 650, 1.00, 0.0),  -- Shield Slam (Rank 7)
    (47488, 770, 1.00, 0.0),  -- Shield Slam (Rank 8)
    (1464,  18,  1.00, 0.0),  -- Slam (Rank 1)
    (8820,  24,  1.00, 0.0),  -- Slam (Rank 2)
    (11604, 38,  1.00, 0.0),  -- Slam (Rank 3)
    (11605, 49,  1.00, 0.0),  -- Slam (Rank 4)
    (25241, 59,  1.00, 0.0),  -- Slam (Rank 5)
    (25242, 78,  1.00, 0.0),  -- Slam (Rank 6)
    (47474, 123, 1.00, 0.0),  -- Slam (Rank 7)
    (47475, 140, 1.00, 0.0),  -- Slam (Rank 8)
    (7386,  345, 1.00, 0.05), -- Sunder Armor
    (20243, 0,   1.00, 0.05), -- Devastate (Rank 1)
    (6343,  0,   1.85, 0.0);  -- Thunder Clap (Rank 1)

ALTER TABLE `spell_dbc` ADD COLUMN `AttributesEx6` INT UNSIGNED NOT NULL DEFAULT '0' AFTER `AttributesEx5`;
ALTER TABLE `spell_dbc` ADD COLUMN `AttributesEx7` INT UNSIGNED NOT NULL DEFAULT '0' AFTER `AttributesEx6`;
-- Dummy effect with caster as target
DELETE FROM `spell_dbc` WHERE `id` IN (68308);
INSERT INTO `spell_dbc` (`Id`, `Attributes`, `AttributesEx`, `AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`AttributesEx6`,`Effect1`,`EffectImplicitTargetA1`,`EffectImplicitTargetB1`,`comment`)
VALUES
(68308, 0x09800100, 0x00000420, 0x00004005, 0x10040000, 0x00000080, 0x00000008, 0x00001000, 3, 1, 0, 'Vault of Archavon - Earth, Wind & Fire - Achievement Check');
DELETE FROM `spell_dbc` WHERE `Id`=63975;
INSERT INTO `spell_dbc` (`Id`, `Dispel`, `Mechanic`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `Stances`, `StancesNot`, `Targets`, `CastingTimeIndex`, `AuraInterruptFlags`, `ProcFlags`, `ProcChance`, `ProcCharges`, `MaxLevel`, `BaseLevel`, `SpellLevel`, `DurationIndex`, `RangeIndex`, `StackAmount`, `EquippedItemClass`, `EquippedItemSubClassMask`, `EquippedItemInventoryTypeMask`, `Effect1`, `Effect2`, `Effect3`, `EffectDieSides1`, `EffectDieSides2`, `EffectDieSides3`, `EffectRealPointsPerLevel1`, `EffectRealPointsPerLevel2`, `EffectRealPointsPerLevel3`, `EffectBasePoints1`, `EffectBasePoints2`, `EffectBasePoints3`, `EffectMechanic1`, `EffectMechanic2`, `EffectMechanic3`, `EffectImplicitTargetA1`, `EffectImplicitTargetA2`, `EffectImplicitTargetA3`, `EffectImplicitTargetB1`, `EffectImplicitTargetB2`, `EffectImplicitTargetB3`, `EffectRadiusIndex1`, `EffectRadiusIndex2`, `EffectRadiusIndex3`, `EffectApplyAuraName1`, `EffectApplyAuraName2`, `EffectApplyAuraName3`, `EffectAmplitude1`, `EffectAmplitude2`, `EffectAmplitude3`, `EffectMultipleValue1`, `EffectMultipleValue2`, `EffectMultipleValue3`, `EffectMiscValue1`, `EffectMiscValue2`, `EffectMiscValue3`, `EffectMiscValueB1`, `EffectMiscValueB2`, `EffectMiscValueB3`, `EffectTriggerSpell1`, `EffectTriggerSpell2`, `EffectTriggerSpell3`, `EffectSpellClassMaskA1`, `EffectSpellClassMaskA2`, `EffectSpellClassMaskA3`, `EffectSpellClassMaskB1`, `EffectSpellClassMaskB2`, `EffectSpellClassMaskB3`, `EffectSpellClassMaskC1`, `EffectSpellClassMaskC2`, `EffectSpellClassMaskC3`, `MaxTargetLevel`, `SpellFamilyName`, `SpellFamilyFlags1`, `SpellFamilyFlags2`, `SpellFamilyFlags3`, `MaxAffectedTargets`, `DmgClass`, `PreventionType`, `DmgMultiplier1`, `DmgMultiplier2`, `DmgMultiplier3`, `AreaGroupId`, `SchoolMask`, `Comment`) VALUES
(63975,0,0,384,0,0,262144,128,0,0,0,0,1,0,0,0,0,0,0,0,0,13,0,-1,0,0,77,0,0,0,1,1,0,0,0,0,0,0,0,0,0,6,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,'Glyph of Blackstab - 3.2.2');
DELETE FROM `spell_dbc` WHERE `Id`=24677;
INSERT INTO `spell_dbc` (`Id`,`Dispel`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`AttributesEx6`,`AttributesEx7`,`Stances`,`StancesNot`,`Targets`,`CastingTimeIndex`,`AuraInterruptFlags`,`ProcFlags`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`RangeIndex`,`StackAmount`,`EquippedItemClass`,`EquippedItemSubClassMask`,`EquippedItemInventoryTypeMask`,`Effect1`,`Effect2`,`Effect3`,`EffectDieSides1`,`EffectDieSides2`,`EffectDieSides3`,`EffectRealPointsPerLevel1`,`EffectRealPointsPerLevel2`,`EffectRealPointsPerLevel3`,`EffectBasePoints1`,`EffectBasePoints2`,`EffectBasePoints3`,`EffectMechanic1`,`EffectMechanic2`,`EffectMechanic3`,`EffectImplicitTargetA1`,`EffectImplicitTargetA2`,`EffectImplicitTargetA3`,`EffectImplicitTargetB1`,`EffectImplicitTargetB2`,`EffectImplicitTargetB3`,`EffectRadiusIndex1`,`EffectRadiusIndex2`,`EffectRadiusIndex3`,`EffectApplyAuraName1`,`EffectApplyAuraName2`,`EffectApplyAuraName3`,`EffectAmplitude1`,`EffectAmplitude2`,`EffectAmplitude3`,`EffectMultipleValue1`,`EffectMultipleValue2`,`EffectMultipleValue3`,`EffectMiscValue1`,`EffectMiscValue2`,`EffectMiscValue3`,`EffectMiscValueB1`,`EffectMiscValueB2`,`EffectMiscValueB3`,`EffectTriggerSpell1`,`EffectTriggerSpell2`,`EffectTriggerSpell3`,`EffectSpellClassMaskA1`,`EffectSpellClassMaskA2`,`EffectSpellClassMaskA3`,`EffectSpellClassMaskB1`,`EffectSpellClassMaskB2`,`EffectSpellClassMaskB3`,`EffectSpellClassMaskC1`,`EffectSpellClassMaskC2`,`EffectSpellClassMaskC3`,`MaxTargetLevel`,`SpellFamilyName`,`SpellFamilyFlags1`,`SpellFamilyFlags2`,`SpellFamilyFlags3`,`MaxAffectedTargets`,`DmgClass`,`PreventionType`,`DmgMultiplier1`,`DmgMultiplier2`,`DmgMultiplier3`,`AreaGroupId`,`SchoolMask`,`Comment`) VALUES
(24677,0,0,256,0,4,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,6,0,-1,0,0,77,0,0,0,0,0,0,0,0,0,0,0,0,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,'GY Mid Trigger - 2.0.12 spell - AV Snowfall Graveyard');

DELETE FROM `trinity_string` WHERE `entry`=5030;
INSERT INTO `trinity_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(5030, '%s attempts to run away in fear!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
UPDATE `trinity_string` SET `content_default`='Faction %s (%u) can''t have reputation.' WHERE `entry`=326; -- can'nt -> can't
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=44572;
INSERT INTO `spell_linked_spell` VALUES
(44572,71757,0, 'Deep Freeze - Damage Proc');
DELETE FROM `spell_bonus_data` WHERE `entry`=71757;
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(71757,2.143,0,0,0, 'Mage - Deep Freeze');
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_baltharus_enervating_brand';
