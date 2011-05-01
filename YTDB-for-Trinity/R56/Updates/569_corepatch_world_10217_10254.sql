-- Delete redundant data first
DELETE FROM `spelldifficulty_dbc` WHERE `id` IN (3042,3043,3044,3045,3046,3047,3048,3053,3055,3056,3057,3058,3059,3060,3061,3063,3073,3074,3075,3076,3077,3078,3079,3080,3081,3082,3083,3084,3085,3086,3087,3088,3089,3090,3091,3092,3093,3094,3095);
INSERT INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`, `spellid2`, `spellid3`) VALUES
-- Razorscale spells
(3042, 62796, 63815, 0, 0), -- SPELL_FIREBALL_10 / SPELL_FIREBALL_25
(3043, 64709, 64734, 0, 0), -- SPELL_FLAME_GROUND_10 / SPELL_FLAME_GROUND_25
(3044, 63317, 64021, 0, 0), -- SPELL_FLAMEBREATH_10 / SPELL_FLAMEBREATH_25
-- Ignis spells
(3045, 62680, 63472, 0, 0), -- SPELL_FLAME_JETS_10 / SPELL_FLAME_JETS_25
(3046, 62546, 63474, 0, 0), -- SPELL_SCORCH_10 / SPELL_SCORCH_25
(3047, 62717, 63477, 0, 0), -- SPELL_SLAG_POT_10 / SPELL_SLAG_POT_25
(3048, 62836, 63536, 0, 0), -- SPELL_SLAG_IMBUED_10 / SPELL_SLAG_IMBUED_25
(3053, 62548, 63476, 0, 0); -- SPELL_GROUND_10 / SPELL_GROUND_25
-- Crusader Strike proc Righteous Vengeance
UPDATE `spell_proc_event` SET `SpellFamilyMask1`=163840 WHERE `entry`=53380;
UPDATE `spell_proc_event` SET `SpellFamilyMask1`=163840 WHERE `entry`=53381;
UPDATE `spell_proc_event` SET `SpellFamilyMask1`=163840 WHERE `entry`=53382;
DELETE FROM `trinity_string` WHERE `entry` = 819;
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES (819, "City");
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1631114 AND -1631104;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36678,-1631104,'Good news, everyone! I think I perfected a plague that will destroy all life on Azeroth!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17114,1,0,0,'SAY_AGGRO'),
(36678,-1631105,'%s begins to cast Unstable Experiment!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_UNSTABLE_EXPERIMENT'),
(36678,-1631106,'Two oozes, one room! So many delightful possibilities...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17122,1,0,0,'SAY_PHASE_TRANSITION_HEROIC'),
(36678,-1631107,'Hmm. I don''t feel a thing. Whaa...? Where''d those come from?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17120,1,0,15,'SAY_TRANSFORM_1'),
(36678,-1631108,'Tastes like... Cherry! Oh! Excuse me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17121,1,0,15,'SAY_TRANSFORM_2'),
(36678,-1631109,'|TInterface\Icons\inv_misc_herb_evergreenmoss.blp:16|t%s cast |cFF00FF00Malleable Goo!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_MALLEABLE_GOO'),
(36678,-1631110,'%s cast |cFFFF7F00Choking Gas Bomb!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_CHOKING_GAS_BOMB'),
(36678,-1631111,'Hmm... Interesting...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17115,1,0,0,'SAY_KILL_1'),
(36678,-1631112,'That was unexpected!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17116,1,0,0,'SAY_KILL_2'),
(36678,-1631113,'Great news, everyone!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17118,1,0,0,'SAY_BERSERK'),
(36678,-1631114,'Bad news, everyone! I don''t think I''m going to make it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17117,1,0,0,'SAY_DEATH');
UPDATE `creature_template` SET `ScriptName`='npc_volatile_ooze' WHERE `entry`=37697;
DELETE FROM `spell_proc_event` WHERE `entry` IN (70215,72858,72859,72860);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(70215,0x00,0,0x00000000,0x00000000,0x00000000,0x00000004,0x00000000,0,100,0), -- Gaseous Bloat
(72858,0x00,0,0x00000000,0x00000000,0x00000000,0x00000004,0x00000000,0,100,0), -- Gaseous Bloat
(72859,0x00,0,0x00000000,0x00000000,0x00000000,0x00000004,0x00000000,0,100,0), -- Gaseous Bloat
(72860,0x00,0,0x00000000,0x00000000,0x00000000,0x00000004,0x00000000,0,100,0); -- Gaseous Bloat
DELETE FROM `spell_script_names` WHERE `spell_id`=70701 AND `ScriptName`='spell_putricide_expunged_gas';
DELETE FROM `spell_script_names` WHERE `spell_id`=70343 AND `ScriptName`='spell_putricide_slime_puddle';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70351,71966,71967,71968) AND `ScriptName`='spell_putricide_unstable_experiment';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (71412,71415) AND `ScriptName`='spell_putricide_ooze_summon';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70672,72455,72832,72833) AND `ScriptName`='spell_putricide_gaseous_bloat';
DELETE FROM `spell_script_names` WHERE `spell_id`=70459 AND `ScriptName`='spell_putricide_ooze_eruption_searcher';
DELETE FROM `spell_script_names` WHERE `spell_id`=71255 AND `ScriptName`='spell_putricide_choking_gas_bomb';
DELETE FROM `spell_script_names` WHERE `spell_id`=70920 AND `ScriptName`='spell_putricide_unbound_plague';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70360,72527) AND `ScriptName`='spell_putricide_eat_ooze';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (72451,72463,72671,72672) AND `ScriptName`='spell_putricide_mutated_plague';
DELETE FROM `spell_script_names` WHERE `spell_id`=70308 AND `ScriptName`='spell_putricide_mutation_init';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70311,71503) AND `ScriptName`='spell_putricide_mutated_transformation';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70405,72508,72509,72510) AND `ScriptName`='spell_putricide_mutated_transformation_dismiss';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70539,72457,72875,72876) AND `ScriptName`='spell_putricide_regurgitated_ooze';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(70701,'spell_putricide_expunged_gas'),
(70343,'spell_putricide_slime_puddle'),
(70351,'spell_putricide_unstable_experiment'),
(71966,'spell_putricide_unstable_experiment'),
(71967,'spell_putricide_unstable_experiment'),
(71968,'spell_putricide_unstable_experiment'),
(71412,'spell_putricide_ooze_summon'),
(71415,'spell_putricide_ooze_summon'),
(70672,'spell_putricide_gaseous_bloat'),
(72455,'spell_putricide_gaseous_bloat'),
(72832,'spell_putricide_gaseous_bloat'),
(72833,'spell_putricide_gaseous_bloat'),
(70459,'spell_putricide_ooze_eruption_searcher'),
(71255,'spell_putricide_choking_gas_bomb'),
(70920,'spell_putricide_unbound_plague'),
(70360,'spell_putricide_eat_ooze'),
(72527,'spell_putricide_eat_ooze'),
(72451,'spell_putricide_mutated_plague'),
(72463,'spell_putricide_mutated_plague'),
(72671,'spell_putricide_mutated_plague'),
(72672,'spell_putricide_mutated_plague'),
(70308,'spell_putricide_mutation_init'),
(70311,'spell_putricide_mutated_transformation'),
(71503,'spell_putricide_mutated_transformation'),
(70405,'spell_putricide_mutated_transformation_dismiss'),
(72508,'spell_putricide_mutated_transformation_dismiss'),
(72509,'spell_putricide_mutated_transformation_dismiss'),
(72510,'spell_putricide_mutated_transformation_dismiss'),
(70539,'spell_putricide_regurgitated_ooze'),
(72457,'spell_putricide_regurgitated_ooze'),
(72875,'spell_putricide_regurgitated_ooze'),
(72876,'spell_putricide_regurgitated_ooze');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=-68839;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(-68839,68846,0, 'Bronjahm: Corrupt Soul Summon');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (68793,69050) AND `ScriptName`='spell_bronjahm_magic_bane';
DELETE FROM `spell_script_names` WHERE `spell_id`=68861 AND `ScriptName`='spell_bronjahm_consume_soul';
DELETE FROM `spell_script_names` WHERE `spell_id`=69008 AND `ScriptName`='spell_bronjahm_soulstorm_channel';
DELETE FROM `spell_script_names` WHERE `spell_id`=68870 AND `ScriptName`='spell_bronjahm_soulstorm_visual';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(68793,'spell_bronjahm_magic_bane'),
(69050,'spell_bronjahm_magic_bane'),
(68861,'spell_bronjahm_consume_soul'),
(69008,'spell_bronjahm_soulstorm_channel'),
(68870,'spell_bronjahm_soulstorm_visual');
