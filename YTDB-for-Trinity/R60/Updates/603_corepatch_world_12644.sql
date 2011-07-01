DELETE FROM `spell_proc_event` WHERE `entry` = 63251;
INSERT INTO `spell_proc_event` VALUES
(63251,0,0,0,0,0,0,0,0,0,45);
DELETE FROM `script_texts` WHERE `entry` IN (-1603055,-1603056);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`)
VALUES
(33515,-1603055,'Auriaya begins to cast Terrifying Screech.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Auriaya - EMOTE_FEAR'),
(33515,-1603056,'Auriaya begins to activate the Feral Defender!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Auriaya - EMOTE_DEFENDER');
DELETE FROM `spelldifficulty_dbc` WHERE `id` BETWEEN 3200 AND 3206;
INSERT INTO `spelldifficulty_dbc` (`id`,`spellid0`,`spellid1`,`spellid2`,`spellid3`)
VALUES
(3200,64389,64678,0,0), -- Auriaya - Sentinel Blast
(3201,64422,64688,0,0), -- Auriaya - Sonic Screech
(3202,64496,64674,0,0), -- Auriaya/Feral Defender - Feral Rush
(3203,64478,64669,0,0), -- Auriaya/Feral Defender - Feral Pounce
(3204,64458,64676,0,0), -- Auriaya/Feral Defender - Seeping Essence
(3205,64666,64374,0,0), -- Auriaya/Sanctum Sentry - Savage Pounce
(3206,64375,64667,0,0); -- Auriaya/Sanctum Sentry - Rip Flesh
UPDATE `creature_template` SET `ScriptName`='npc_feral_defender' WHERE `entry`=34035; -- Feral Defender
UPDATE `creature_template` SET `ScriptName`='npc_sanctum_sentry' WHERE `entry`=34014; -- Sanctum Sentry
UPDATE `creature_template` SET `ScriptName`='npc_auriaya_seeping_trigger',`unit_flags`=33554692,`flags_extra`=130 WHERE `entry` =34098; -- Seeping Trigger
UPDATE `creature_template` SET `ScriptName`='',`unit_flags`=33554692,`flags_extra`=128 WHERE `entry` =34096; -- Feral Defender Trigger
DELETE FROM `spell_script_names` WHERE `spell_id`=64381;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`)
VALUES
(64381,'spell_auriaya_strenght_of_the_pack');
DELETE FROM `spell_proc_event` WHERE `entry` = 32216;
INSERT INTO `spell_proc_event` VALUES
(32216,0,4,0,0x100,0,0x10,0,0,0,0);
-- Innkeeper Shaussiy does not require script
UPDATE `creature_template` SET `ScriptName`= '' WHERE `entry` IN (6737);
DELETE FROM `spell_script_names` WHERE `ScriptName`= 'spell_gen_shroud_of_death';
UPDATE `command` SET `help` = 'Syntax: .reload all gossips\nReload gossip_menu, gossip_menu_option, gossip_scripts, points_of_interest tables.' WHERE `name`='reload all gossips';
DELETE FROM `command` WHERE `name` = 'reload gossip_scripts';
DROP TABLE IF EXISTS `gossip_scripts`;
ALTER TABLE `gossip_menu_option` DROP `action_script_id`;
DELETE FROM `spell_script_names` WHERE `spell_id`=29371;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`)
VALUES
(29371,'spell_heigan_eruption');
UPDATE `spell_proc_event` SET `procFlags`=0x14000,`ppmRate`=0 WHERE `entry`=65007;
DELETE FROM `spell_script_names` WHERE `spell_id` IN(63720,64004);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(63720,'spell_kologarn_stone_shout'),
(64004,'spell_kologarn_stone_shout');
DELETE FROM `spell_script_names` WHERE `spell_id` = -50294;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(-50294,'spell_dru_starfall_aoe');
DELETE FROM `spell_dbc` WHERE `id`=65074;
INSERT INTO `spell_dbc` (`Id`,`Effect1`,`EffectRadiusIndex1`,`EffectImplicitTargetA1`,`EffectImplicitTargetB1`,`comment`)
VALUES
(65074,3,28,22,30,'Knock on Wood Achievements - Criteria Marker');
UPDATE `spell_dbc` SET `comment`='Freya Achievement spell - Criteria Marker' WHERE `id`=65074;
DELETE FROM `spell_script_names` WHERE `spell_id` IN (64679,64392);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`)
VALUES
(64679,'spell_auriaya_sentinel_blast'),
(64392,'spell_auriaya_sentinel_blast');
DELETE FROM `spell_bonus_data` WHERE `entry` = 64891;
INSERT INTO `spell_bonus_data` VALUES
(64891, -1, 0, -1, -1, 'Paladin - T8 Holy 2P - Holy Mending');
DELETE FROM `spell_script_names` WHERE `spell_id` IN(4073,19804,12749,13258,13166);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(4073,'spell_gen_allow_cast_from_item_only'),
(19804,'spell_gen_allow_cast_from_item_only'),
(12749,'spell_gen_allow_cast_from_item_only'),
(13258,'spell_gen_allow_cast_from_item_only'),
(13166,'spell_gen_allow_cast_from_item_only');
DELETE FROM `spell_dbc` WHERE `id`=59046;
INSERT INTO `spell_dbc` (`Id`,`Effect1`,`EffectRadiusIndex1`,`EffectImplicitTargetA1`,`EffectImplicitTargetB1`,`comment`)
VALUES
(59046,3,28,22,30,'Tribunal of Ages - Criteria Marker');
DELETE FROM `spell_dbc` WHERE `Id`=24308;
INSERT INTO `spell_dbc`(`Id`,`Dispel`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`Stances`,`StancesNot`,`Targets`,`CastingTimeIndex`,`AuraInterruptFlags`,`ProcFlags`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`RangeIndex`,`StackAmount`,`EquippedItemClass`,`EquippedItemSubClassMask`,`EquippedItemInventoryTypeMask`,`Effect1`,`Effect2`,`Effect3`,`EffectDieSides1`,`EffectDieSides2`,`EffectDieSides3`,`EffectRealPointsPerLevel1`,`EffectRealPointsPerLevel2`,`EffectRealPointsPerLevel3`,`EffectBasePoints1`,`EffectBasePoints2`,`EffectBasePoints3`,`EffectMechanic1`,`EffectMechanic2`,`EffectMechanic3`,`EffectImplicitTargetA1`,`EffectImplicitTargetA2`,`EffectImplicitTargetA3`,`EffectImplicitTargetB1`,`EffectImplicitTargetB2`,`EffectImplicitTargetB3`,`EffectRadiusIndex1`,`EffectRadiusIndex2`,`EffectRadiusIndex3`,`EffectApplyAuraName1`,`EffectApplyAuraName2`,`EffectApplyAuraName3`,`EffectAmplitude1`,`EffectAmplitude2`,`EffectAmplitude3`,`EffectMultipleValue1`,`EffectMultipleValue2`,`EffectMultipleValue3`,`EffectMiscValue1`,`EffectMiscValue2`,`EffectMiscValue3`,`EffectMiscValueB1`,`EffectMiscValueB2`,`EffectMiscValueB3`,`EffectTriggerSpell1`,`EffectTriggerSpell2`,`EffectTriggerSpell3`,`EffectSpellClassMaskA1`,`EffectSpellClassMaskA2`,`EffectSpellClassMaskA3`,`EffectSpellClassMaskB1`,`EffectSpellClassMaskB2`,`EffectSpellClassMaskB3`,`EffectSpellClassMaskC1`,`EffectSpellClassMaskC2`,`EffectSpellClassMaskC3`,`MaxTargetLevel`,`SpellFamilyName`,`SpellFamilyFlags1`,`SpellFamilyFlags2`,`SpellFamilyFlags3`,`MaxAffectedTargets`,`DmgClass`,`PreventionType`,`DmgMultiplier1`,`DmgMultiplier2`,`DmgMultiplier3`,`AreaGroupId`,`SchoolMask`,`Comment`) VALUES
('24308','0','0','256','0','0','0','0','0','0','0','0','1','0','0','101','0','0','0','0','26','1','0','-1','0','0','41','0','0','1','0','0','0','0','0','0','0','0','0','0','0','18','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','14986','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','Summon Shade of Jin''Do');
UPDATE `script_texts` SET `content_default`='MY PATIENCE IS DWINDLING! COME, GNATS, TO YOUR DEATH!' WHERE `npc_entry`=11502 AND `entry`='-1409018';
DELETE FROM `spell_script_names` WHERE `spell_id`=48095;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`)
VALUES
(48095,'spell_intense_cold');
UPDATE `creature_template` SET `ScriptName`='npc_pool_of_tar' WHERE `entry`=33090;
UPDATE `trinity_string` SET `content_default`='You try to view cinematic %u but it doesn\'t exist.' WHERE entry='1200';
DELETE FROM `spell_proc_event` WHERE `entry` = 70817;
INSERT INTO `spell_proc_event` VALUES
(70817,0,11,0,0x1000,0,0x10000,0,0,0,0);
DELETE FROM `spell_proc_event` WHERE `entry` = 63086;
INSERT INTO `spell_proc_event` VALUES 
(63086, 0x00, 9, 0x00000000, 0x00000000, 0x00010000, 0x00000000, 0x00000000, 0, 0, 0);
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_deathbringer_mark_of_the_fallen_champion';
DELETE FROM `command` WHERE `name`='pet tp';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_deathbringer_boiling_blood';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(72385,'spell_deathbringer_boiling_blood'),
(72441,'spell_deathbringer_boiling_blood'),
(72442,'spell_deathbringer_boiling_blood'),
(72443,'spell_deathbringer_boiling_blood');
UPDATE `spell_dbc` SET `Effect1`=28, `EffectMiscValueB1`=64 WHERE `Id`=24308;
DROP TABLE IF EXISTS `spell_proc`;
CREATE TABLE `spell_proc` (
  `spellId` mediumint(8) NOT NULL DEFAULT '0',
  `schoolMask` tinyint(4) NOT NULL DEFAULT '0',
  `spellFamilyName` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spellFamilyMask0` int(10) unsigned NOT NULL DEFAULT '0',
  `spellFamilyMask1` int(10) unsigned NOT NULL DEFAULT '0',
  `spellFamilyMask2` int(10) unsigned NOT NULL DEFAULT '0',
  `typeMask` int(10) unsigned NOT NULL DEFAULT '0',
  `spellTypeMask` int(10) unsigned NOT NULL DEFAULT '0',
  `spellPhaseMask` int(10) NOT NULL DEFAULT '0',
  `hitMask` int(10) NOT NULL DEFAULT '0',
  `attributesMask` int(10) unsigned NOT NULL DEFAULT '0',
  `ratePerMinute` float NOT NULL DEFAULT '0',
  `chance` float NOT NULL DEFAULT '0',
  `cooldown` float unsigned NOT NULL DEFAULT '0',
  `charges` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`spellId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DELETE FROM `command` WHERE `name` = 'reload spell_proc';
INSERT INTO `command` VALUES
('reload spell_proc',3,'Syntax: .reload spell_proc\nReload spell_proc table.');
DELETE FROM `spell_script_names` WHERE `spell_id`=66218;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (66218,'spell_gen_launch');
DELETE FROM `spell_script_names` WHERE `spell_id` IN(65266,65635,65636,66666,66667,66668);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(65266,'spell_gen_vehicle_scaling'),
(65635,'spell_gen_vehicle_scaling'),
(65636,'spell_gen_vehicle_scaling'),
(66666,'spell_gen_vehicle_scaling'),
(66667,'spell_gen_vehicle_scaling'),
(66668,'spell_gen_vehicle_scaling');
DROP TABLE `vehicle_scaling_info`;
DELETE FROM `command` WHERE `name`= 'npc set deathstate';
ALTER TABLE `creature` DROP COLUMN `DeathState`;
DELETE FROM `script_texts` WHERE `npc_entry`=10096;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(10096,-1230003,'You have been sentenced to death for crimes against the Dark Iron nation!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'npc_grimstone SCRIPT_TEXT1'),
(10096,-1230004,'The Sons of Thaurissan shall watch you perish in the Ring of the Law!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'npc_grimstone SCRIPT_TEXT2'),
(10096,-1230005,'Unleash the fury and let it be done!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'npc_grimstone SCRIPT_TEXT3'),
(10096,-1230006,'Haha! I bet you thought you were done!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'npc_grimstone SCRIPT_TEXT4'),
(10096,-1230007,'But your real punishment lies ahead.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'npc_grimstone SCRIPT_TEXT5'),
(10096,-1230008,'Good riddance!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'npc_grimstone SCRIPT_TEXT6');
DELETE FROM `spelldifficulty_dbc` WHERE `id` BETWEEN 3251 AND 3261;
INSERT INTO `spelldifficulty_dbc` (`id`,`spellid0`,`spellid1`,`spellid2`,`spellid3`)
VALUES
-- Steelbreaker
(3251,61980,63498,0,0),
(3252,61903,63493,0,0),
(3253,44008,63494,0,0),
(3254,64637,61888,0,0),
-- Runemaster Molgeim
(3255,62274,63489,0,0),
(3256,62277,63967,0,0),
(3257,62052,63492,0,0),
-- Stormcaller Brundir
(3258,61879,63479,0,0),
(3259,61869,63481,0,0),
(3260,61915,63483,0,0),
(3261,61887,63486,0,0);
DELETE FROM `command` WHERE `name` = 'wpgps';
INSERT INTO `command` VALUES
('wpgps', '3', 'Syntax: .wpgps\n\nOutput current position to sql developer log as partial SQL query to be used in pathing');
