DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (48810,-48809,48143,-48143);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(48810,48809,0,'Cast Binding Life when cast Death''s Door'),
(-48809,-48143,0,'Removing Binding Life removes Forgotten Aura'),
(48143,48357,0,'Aura Wintergarde Invisibility Type B when aura Forgotten Aura'),
(-48143,-48357,0,'Removing Binding Forgotten Aura removes Aura Wintergarde Invisibility Type B');
INSERT IGNORE INTO `trinity_string` (`entry`, `content_default`) VALUES ('1225', 'Alliance');
INSERT IGNORE INTO `trinity_string` (`entry`, `content_default`) VALUES ('1226', 'Horde');
DELETE FROM spell_script_names WHERE ScriptName = 'spell_gen_lifeblood';
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES
(-55428, 'spell_gen_lifeblood');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (61990,61969,65280);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`)
VALUES 
(61990,-62457,2,'Hodir - Ice Shards Immunity'),
(61990,-65370,2,'Hodir - Ice Shards Immunity'),
(65280,-62469,2,'Toasty fire - Freeze imunity'),
(65280,-62039,2,'Toasty fire - Biting cold imunity'),
(61969,7940,2,'Hodir - Flash Freeze immunity'),
(61990,7940,2,'Hodir - Flash Freeze immunity');
DELETE FROM `script_texts` WHERE `entry` IN (-1603209,-1603219);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`)
VALUES
(32845,-1603209,'Hodir begins to cast Flash Freeze!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Hodir - EMOTE_FREEZE'),
(32845,-1603219,'Hodir gains Frozen Blows!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Hodir - EMOTE_BLOW');
UPDATE `creature_template` SET `ScriptName`='npc_hodir_priest' WHERE `entry` IN (32897,33326,32948,33330);
UPDATE `creature_template` SET `ScriptName`='npc_hodir_shaman' WHERE `entry` IN (33328,32901,33332,32950);
UPDATE `creature_template` SET `ScriptName`='npc_hodir_druid' WHERE `entry` IN (33325,32900,32941,33333);
UPDATE `creature_template` SET `ScriptName`='npc_hodir_mage' WHERE `entry` IN (32893,33327,33331,32946);
UPDATE `creature_template` SET `ScriptName`='npc_toasty_fire' WHERE `entry`=33342;
UPDATE `creature_template` SET `ScriptName`='npc_flash_freeze' WHERE `entry`=32926;
UPDATE `creature_template` SET `ScriptName`='npc_icicle' WHERE `entry` IN (33169,33173);
UPDATE `creature_template` SET `ScriptName`='npc_snowpacked_icicle' WHERE `entry`=33174;
UPDATE `creature_template` SET `ScriptName`='npc_ice_block' WHERE `entry`=32938;
UPDATE `creature_template` SET `ScriptName`='boss_hodir' WHERE `entry`=32845;
DELETE FROM `spell_script_names` WHERE `spell_id` IN (62038,62039);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`)
VALUES
(62038,'spell_biting_cold'),
(62039,'spell_biting_cold_dot');
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (37945,38430,38186,38429);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(37945,70766,0,0,0,3,0,0,0), -- Dream Portal
(38430,70766,0,0,0,3,0,0,0), -- Nightmare Portal
(38186,70766,0,0,0,3,0,0,0), -- Dream Portal (Pre-effect)
(38429,70766,0,0,0,3,0,0,0); -- Nightmare Portal (Pre-effect)
UPDATE `creature_template` SET `ScriptName`='boss_valithria_dreamwalker' WHERE `entry`=36789;
UPDATE `creature_template` SET `ScriptName`='npc_green_dragon_combat_trigger' WHERE `entry`=38752;
UPDATE `creature_template` SET `ScriptName`='npc_the_lich_king_controller' WHERE `entry`=16980;
UPDATE `creature_template` SET `ScriptName`='npc_risen_archmage' WHERE `entry`=37868;
UPDATE `creature_template` SET `ScriptName`='npc_blazing_skeleton' WHERE `entry`=36791;
UPDATE `creature_template` SET `ScriptName`='npc_suppresser' WHERE `entry`=37863;
UPDATE `creature_template` SET `ScriptName`='npc_blistering_zombie' WHERE `entry`=37934;
UPDATE `creature_template` SET `ScriptName`='npc_gluttonous_abomination' WHERE `entry`=37886;
UPDATE `creature_template` SET `ScriptName`='npc_dream_portal' WHERE `entry` IN (37945,38430);
UPDATE `creature_template` SET `ScriptName`='npc_dream_cloud' WHERE `entry` IN (37985,38421);
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dreamwalker_mana_void';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dreamwalker_decay_periodic_timer';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dreamwalker_summoner';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dreamwalker_summon_suppresser';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dreamwalker_summon_dream_portal';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dreamwalker_summon_nightmare_portal';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_dreamwalker_nightmare_cloud';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_putricide_slime_puddle_aura';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(71085,'spell_dreamwalker_mana_void'),
(70915,'spell_dreamwalker_decay_periodic_timer'),
(70912,'spell_dreamwalker_decay_periodic_timer'),
(70916,'spell_dreamwalker_decay_periodic_timer'),
(70913,'spell_dreamwalker_decay_periodic_timer'),
(70921,'spell_dreamwalker_summoner'),
(70912,'spell_dreamwalker_summon_suppresser'),
(71032,'spell_dreamwalker_summoner'),
(71078,'spell_dreamwalker_summoner'),
(70933,'spell_dreamwalker_summoner'),
(72224,'spell_dreamwalker_summon_dream_portal'),
(72480,'spell_dreamwalker_summon_nightmare_portal'),
(71970,'spell_dreamwalker_nightmare_cloud'),
-- bind only on heroic modes, normal does not need this replacement
(72868,'spell_putricide_slime_puddle_aura'),
(72869,'spell_putricide_slime_puddle_aura');
DELETE FROM `spelldifficulty_dbc` WHERE `id` BETWEEN 3240 AND 3250;
INSERT INTO `spelldifficulty_dbc` (`id`,`spellid0`,`spellid1`,`spellid2`,`spellid3`)
VALUES
(3240,63169,63549,0,0), -- Ulduar: Corrupted Servitor - Petrify Joints
(3241,63082,63559,0,0), -- Ulduar: Misguided Nymph - Bind Life
(3242,63111,63562,0,0), -- Ulduar: Misguided Nymph - Frost Spear
(3243,63136,63564,0,0), -- Ulduar: Misguided Nymph - Winter's Embrace
(3244,63047,63550,0,0), -- Ulduar: Guardian Lasher - Guardian's Lash
(3245,63242,63556,0,0), -- Ulduar: Mangrove Ent - Nourish
(3246,63241,63554,0,0), -- Ulduar: Mangrove Ent - Tranquility
(3247,63240,63553,0,0), -- Ulduar: Ironroot Lasher - Ironroot Thorns
(3248,63247,63568,0,0), -- Ulduar: Nature's Blade - Living Tsunami
(3249,63226,63551,0,0), -- Ulduar: Guardian of Life - Poison Breath
(3250,64587,34650,0,0); -- Ulduar: Nature Bomb - Nature Bomb
UPDATE `creature_template` SET `ScriptName`='boss_freya' WHERE `entry`=32906;
UPDATE `creature_template` SET `ScriptName`='boss_elder_brightleaf' WHERE `entry`=32915;
UPDATE `creature_template` SET `ScriptName`='boss_elder_ironbranch' WHERE `entry`=32913;
UPDATE `creature_template` SET `ScriptName`='boss_elder_stonebark' WHERE `entry`=32914;
UPDATE `creature_template` SET `ScriptName`='npc_ancient_conservator' WHERE `entry`=33203;
UPDATE `creature_template` SET `ScriptName`='npc_snaplasher' WHERE `entry`=32916;
UPDATE `creature_template` SET `ScriptName`='npc_storm_lasher' WHERE `entry`=32919;
UPDATE `creature_template` SET `ScriptName`='npc_ancient_water_spirit' WHERE `entry`=33202;
UPDATE `creature_template` SET `ScriptName`='npc_detonating_lasher' WHERE `entry`=32918;
UPDATE `creature_template` SET `ScriptName`='npc_sun_beam' WHERE `entry`=33170;
UPDATE `creature_template` SET `ScriptName`='npc_nature_bomb' WHERE `entry`=34129;
UPDATE `creature_template` SET `ScriptName`='npc_eonars_gift' WHERE `entry`=33228;
UPDATE `creature_template` SET `ScriptName`='npc_healthy_spore' WHERE `entry`=33215;
UPDATE `creature_template` SET `ScriptName`='npc_unstable_sun_beam' WHERE `entry`=33050;
UPDATE `creature_template` SET `ScriptName`='npc_iron_roots' WHERE `entry` IN (33088,33168);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (62519,65158,65160);
INSERT INTO `spell_script_names`
VALUES
(62519, 'spell_freya_attuned_to_nature'),
(65158, 'spell_freya_iron_roots'),
(65160, 'spell_freya_iron_roots');
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_icc_stoneform';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_icc_sprit_alarm';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(70733, 'spell_icc_stoneform'),
(70546, 'spell_icc_sprit_alarm'),
(70536, 'spell_icc_sprit_alarm'),
(70545, 'spell_icc_sprit_alarm'),
(70547, 'spell_icc_sprit_alarm');
UPDATE `spell_proc_event` SET `Cooldown`=0 WHERE `entry` IN (47195,47196,47197); 
DELETE FROM `spell_dbc` WHERE `Id`=25042;
INSERT INTO `spell_dbc` (`Id`,`Dispel`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`Stances`,`StancesNot`,`Targets`,`CastingTimeIndex`,`AuraInterruptFlags`,`ProcFlags`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`RangeIndex`,`StackAmount`,`EquippedItemClass`,`EquippedItemSubClassMask`,`EquippedItemInventoryTypeMask`,`Effect1`,`Effect2`,`Effect3`,`EffectDieSides1`,`EffectDieSides2`,`EffectDieSides3`,`EffectRealPointsPerLevel1`,`EffectRealPointsPerLevel2`,`EffectRealPointsPerLevel3`,`EffectBasePoints1`,`EffectBasePoints2`,`EffectBasePoints3`,`EffectMechanic1`,`EffectMechanic2`,`EffectMechanic3`,`EffectImplicitTargetA1`,`EffectImplicitTargetA2`,`EffectImplicitTargetA3`,`EffectImplicitTargetB1`,`EffectImplicitTargetB2`,`EffectImplicitTargetB3`,`EffectRadiusIndex1`,`EffectRadiusIndex2`,`EffectRadiusIndex3`,`EffectApplyAuraName1`,`EffectApplyAuraName2`,`EffectApplyAuraName3`,`EffectAmplitude1`,`EffectAmplitude2`,`EffectAmplitude3`,`EffectMultipleValue1`,`EffectMultipleValue2`,`EffectMultipleValue3`,`EffectMiscValue1`,`EffectMiscValue2`,`EffectMiscValue3`,`EffectMiscValueB1`,`EffectMiscValueB2`,`EffectMiscValueB3`,`EffectTriggerSpell1`,`EffectTriggerSpell2`,`EffectTriggerSpell3`,`EffectSpellClassMaskA1`,`EffectSpellClassMaskA2`,`EffectSpellClassMaskA3`,`EffectSpellClassMaskB1`,`EffectSpellClassMaskB2`,`EffectSpellClassMaskB3`,`EffectSpellClassMaskC1`,`EffectSpellClassMaskC2`,`EffectSpellClassMaskC3`,`MaxTargetLevel`,`SpellFamilyName`,`SpellFamilyFlags1`,`SpellFamilyFlags2`,`SpellFamilyFlags3`,`MaxAffectedTargets`,`DmgClass`,`PreventionType`,`DmgMultiplier1`,`DmgMultiplier2`,`DmgMultiplier3`,`AreaGroupId`,`SchoolMask`,`Comment`) VALUES
(25042,0,0,384,268435592,4,0,0,0,0,0,0,1,0,0,101,0,0,0,0,29,1,0,-1,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,22,0,0,15,0,0,12,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0, 'Triggerspell - Mark of Nature');
UPDATE `spell_proc_event` SET `ppmRate`=0,`CustomChance`=6,`Cooldown`=10 WHERE `entry`=16864;
DELETE FROM `script_waypoint` WHERE `entry`=27316;
DELETE FROM `script_texts` WHERE `npc_entry`=27316;
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`exp`=2,`unit_class`=1,`faction_A`=35,`faction_H`=35,`npcflag`=`npcflag`|16777216 WHERE `entry` IN (37945,38430); -- Dream Portal and Nightmare Portal
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`faction_A`=35,`faction_H`=35,`unit_flags`=`unit_flags`|33554432,`npcflag`=`npcflag`|16777216,`baseattacktime`=2000 WHERE `entry`=38186; -- Dream Portal (Pre-effect)
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`faction_A`=35,`faction_H`=35,`unit_flags`=`unit_flags`|33554432,`npcflag`=`npcflag`|16777216,`baseattacktime`=2000 WHERE `entry`=38429; -- Nightmare Portal (Pre-effect)
