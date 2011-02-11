DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_marrowgar_coldflame_trigger';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (69146,70823,70824,70825) AND `ScriptName`='spell_marrowgar_coldflame_damage';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(69146,'spell_marrowgar_coldflame_damage'),
(70823,'spell_marrowgar_coldflame_damage'),
(70824,'spell_marrowgar_coldflame_damage'),
(70825,'spell_marrowgar_coldflame_damage');
UPDATE `creature_template` SET `ScriptName`='boss_varos' WHERE `entry`=27447;
UPDATE `creature_template` SET `ScriptName`='npc_azure_ring_captain' WHERE `entry`=27638;
DELETE FROM `spell_script_names` WHERE `spell_id`=50053;
INSERT INTO `spell_script_names` (spell_id,ScriptName) VALUES (50053,'spell_varos_centrifuge_shield');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (72378,73058) AND `ScriptName`='spell_deathbringer_blood_nova_targeting';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (68921,69049) AND `ScriptName`='spell_bronjahm_soulstorm_targeting';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70402,72511,72512,72513) AND `ScriptName`='spell_putricide_mutated_transformation_dmg';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (72255,72444,72445,72446) AND `ScriptName`='spell_deathbringer_mark_of_the_fallen_champion';
DELETE FROM `spell_script_names` WHERE `spell_id`=71390 AND `ScriptName`='spell_blood_queen_pact_of_the_darkfallen';
DELETE FROM `spell_script_names` WHERE `spell_id`=48743 AND `ScriptName`='spell_dk_death_pact';
DELETE FROM `spell_script_names` WHERE `spell_id`=59725 AND `ScriptName`='spell_warr_improved_spell_reflection';
DELETE FROM `spell_script_names` WHERE `spell_id`=-49821 AND `ScriptName`='spell_pri_mind_sear';
DELETE FROM `spell_script_names` WHERE `spell_id`=-27285 AND `ScriptName`='spell_warl_seed_of_corruption';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(72378,'spell_deathbringer_blood_nova_targeting'),
(73058,'spell_deathbringer_blood_nova_targeting'),
(68921,'spell_bronjahm_soulstorm_targeting'),
(69049,'spell_bronjahm_soulstorm_targeting'),
(70402,'spell_putricide_mutated_transformation_dmg'),
(72511,'spell_putricide_mutated_transformation_dmg'),
(72512,'spell_putricide_mutated_transformation_dmg'),
(72513,'spell_putricide_mutated_transformation_dmg'),
(72255,'spell_deathbringer_mark_of_the_fallen_champion'),
(72444,'spell_deathbringer_mark_of_the_fallen_champion'),
(72445,'spell_deathbringer_mark_of_the_fallen_champion'),
(72446,'spell_deathbringer_mark_of_the_fallen_champion'),
(71390,'spell_blood_queen_pact_of_the_darkfallen'),
(48743,'spell_dk_death_pact'),
(59725,'spell_warr_improved_spell_reflection'),
(-49821,'spell_pri_mind_sear'),
(-27285,'spell_warl_seed_of_corruption');
UPDATE `creature_template` SET `ScriptName`='' WHERE `entry`=27638;
UPDATE `creature_template` SET `ScriptName`='npc_azure_ring_captain' WHERE `entry`=28236;
DELETE FROM `spell_script_names` WHERE `spell_id` IN (61407,62136,54069,56251,50785,59372);
INSERT INTO `spell_script_names` (spell_id,ScriptName) VALUES 
(61407,'spell_varos_energize_core_area_entry'),
(62136,'spell_varos_energize_core_area_entry'),
(54069,'spell_varos_energize_core_area_entry'),
(56251,'spell_varos_energize_core_area_entry'),
(50785,'spell_varos_energize_core_area_enemy'),
(59372,'spell_varos_energize_core_area_enemy');
UPDATE `creature_template` SET `ScriptName`='boss_eregos' WHERE `entry`=27656;
DELETE FROM `spell_script_names` WHERE `spell_id`=51162 AND `ScriptName`='spell_eregos_planar_shift';
INSERT INTO `spell_script_names`(`spell_id`,`ScriptName`) VALUES
(51162,'spell_eregos_planar_shift');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=71390;
DELETE FROM `spell_script_names` WHERE `spell_id`=71340 AND `ScriptName`='spell_blood_queen_pact_of_the_darkfallen_dmg';
INSERT INTO `spell_script_names`(`spell_id`,`ScriptName`) VALUES
(71340,'spell_blood_queen_pact_of_the_darkfallen_dmg');
DELETE FROM `spell_script_names` WHERE `spell_id`=71341 AND `ScriptName`='spell_blood_queen_pact_of_the_darkfallen_dmg_target';
INSERT INTO `spell_script_names`(`spell_id`,`ScriptName`) VALUES
(71341,'spell_blood_queen_pact_of_the_darkfallen_dmg_target');
-- Lunar Fireworks
DELETE FROM `spell_linked_spell` WHERE `spell_effect` IN (44430,44429);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(26286,44430,0,'Small Red Rocket - questcredit'),
(26292,44430,0,'Small Green Rocket - questcredit'),
(26291,44430,0,'Small Blue Rocket - questcredit'),
(26327,44429,0,'Red Firework Cluster - questcredit'),
(26325,44429,0,'Green Firework Cluster - questcredit'),
(26304,44429,0,'Blue Firework Cluster - questcredit');
DELETE FROM `spell_proc_event` WHERE `entry` IN (53695,53696);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(53695,0x00,10,0x00800000,0x00000000,0x00000008,0x00000000,0x00000000,0,0,0), -- Judgements of the Just (Rank 1)
(53696,0x00,10,0x00800000,0x00000000,0x00000008,0x00000000,0x00000000,0,0,0); -- Judgements of the Just (Rank 2)
DELETE FROM `spell_script_names` WHERE `spell_id` = 54798 AND `ScriptName`='spell_q12851_going_bearback';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(54798,'spell_q12851_going_bearback');
UPDATE `creature_template` SET `ScriptName`='npc_icefang' WHERE `entry`=29602;
DELETE FROM `spell_bonus_data` WHERE `entry`=70691;
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(70691,0,0,0,0, 'Druid - Rejuvenation T10 4P proc');
DELETE FROM `spell_proc_event` WHERE `entry`=71585;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(71585,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,0,45); -- Purified Lunar Dust
DELETE FROM `spell_script_names` WHERE `spell_id`=70691 AND `ScriptName`='spell_dru_t10_restoration_4p_bonus';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(70691,'spell_dru_t10_restoration_4p_bonus');
DELETE FROM `spell_proc_event` WHERE `entry`=70664;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(70664,0x00,7,0x00000010,0x00000000,0x00000000,0x00000000,0x00000000,0,0,0); -- Item - Druid T10 Restoration 4P Bonus (Rejuvenation)
DELETE FROM `spell_script_names` WHERE `spell_id`=70292 AND `ScriptName`='spell_trash_mob_glacial_strike';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(70292,'spell_trash_mob_glacial_strike');
