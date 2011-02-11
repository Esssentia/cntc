UPDATE `creature_template` SET `ScriptName`= 'mob_rune_of_power' WHERE entry = 33705;
DELETE FROM spell_dbc WHERE `Id`=3617;
INSERT INTO spell_dbc (`Id`, `Effect1`, `Comment`) VALUES (3617, 1, 'NPC 32958 suicide spell');
ALTER table `creature_linked_respawn`
RENAME TO `linked_respawn`,
ADD COLUMN linkType tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
DROP PRIMARY KEY,
ADD PRIMARY KEY(`guid`, `linkType`);
UPDATE `creature_template` SET `ScriptName`='' WHERE `entry`=3216; -- Neeru Fireblade
DELETE FROM `spell_script_names` WHERE `spell_id`=67533 AND `ScriptName`='spell_item_red_rider_air_rifle';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(67533, 'spell_item_red_rider_air_rifle');
UPDATE `gameobject_template` SET `ScriptName`='go_strange_pool' WHERE `entry`=184956;
DELETE FROM `script_texts` WHERE `entry` IN (-1603289,-1603297,-1603298,-1603299);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`)
VALUES
(33271,-1603289,'A cloud of saronite vapors coalesces nearby!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'General Vezax - Emote1'),
(33271,-1603297,'The saronite vapors mass and swirl violently, merging into a monstrous form!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'General Vezax - Emote2'),
(33271,-1603298,'A saronite barrier appears around General Vezax!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'General Vezax - Emote3'),
(33271,-1603299,'General Vezax roars and surges with dark might!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'General Vezax - Emote4');
UPDATE `creature_template` SET `ScriptName`='boss_general_vezax' WHERE `entry`=33271; -- General Vezax
UPDATE `creature_template` SET `ScriptName`='npc_saronite_vapors' WHERE `entry`=33488; -- Saronite Vapors
UPDATE `creature_template` SET `ScriptName`='npc_saronite_animus' WHERE `entry`=33524; -- Saronite Animus
DELETE FROM `spell_script_names` WHERE `spell_id`=-51474 AND `ScriptName`='spell_sha_astral_shift';
DELETE FROM `spell_script_names` WHERE `spell_id`=-49145 AND `ScriptName`='spell_dk_spell_deflection';
DELETE FROM `spell_script_names` WHERE `spell_id`=-31130 AND `ScriptName`='spell_rog_nerves_of_steel';
DELETE FROM `spell_script_names` WHERE `spell_id`=62606 AND `ScriptName`='spell_dru_savage_defense';
DELETE FROM `spell_script_names` WHERE `spell_id`=69366 AND `ScriptName`='spell_dru_moonkin_form_passive';
DELETE FROM `spell_script_names` WHERE `spell_id`=-33851 AND `ScriptName`='spell_dru_primal_tenacity';
DELETE FROM `spell_script_names` WHERE `spell_id`=47299 AND `ScriptName`='spell_ex_absorb_aura';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(-51474, 'spell_sha_astral_shift'),
(-49145, 'spell_dk_spell_deflection'),
(-31130, 'spell_rog_nerves_of_steel'),
(62606, 'spell_dru_savage_defense'),
(69366, 'spell_dru_moonkin_form_passive'),
(-33851, 'spell_dru_primal_tenacity'),
(47299, 'spell_ex_absorb_aura');
