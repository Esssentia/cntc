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
DELETE FROM `spell_script_names` WHERE `spell_id`=41475 AND `ScriptName`='spell_boss_lady_malande_shield';
DELETE FROM `spell_script_names` WHERE `spell_id`=-31850 AND `ScriptName`='spell_pal_ardent_defender';
DELETE FROM `spell_script_names` WHERE `spell_id`=50462 AND `ScriptName`='spell_dk_anti_magic_shell_raid';
DELETE FROM `spell_script_names` WHERE `spell_id`=48707 AND `ScriptName`='spell_dk_anti_magic_shell_self';
DELETE FROM `spell_script_names` WHERE `spell_id`=50461 AND `ScriptName`='spell_dk_anti_magic_zone';
DELETE FROM `spell_script_names` WHERE `spell_id`=-52284 AND `ScriptName`='spell_dk_will_of_the_necropolis';
DELETE FROM `spell_script_names` WHERE `spell_id`=39228 AND `ScriptName`='spell_gen_absorb0_hitlimit1';
DELETE FROM `spell_script_names` WHERE `spell_id`=60218 AND `ScriptName`='spell_gen_absorb0_hitlimit1';
DELETE FROM `spell_script_names` WHERE `spell_id`=-543 AND `ScriptName`='spell_mage_frost_warding_trigger';
DELETE FROM `spell_script_names` WHERE `spell_id`=-6143 AND `ScriptName`='spell_mage_frost_warding_trigger';
DELETE FROM `spell_script_names` WHERE `spell_id`=-17 AND `ScriptName`='spell_pri_reflective_shield_trigger';
DELETE FROM `spell_script_names` WHERE `spell_id`=-47788 AND `ScriptName`='spell_pri_guardian_spirit';
DELETE FROM `spell_script_names` WHERE `spell_id`=-31228 AND `ScriptName`='spell_rog_cheat_death';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
( 41475, 'spell_boss_lady_malande_shield'),
(-31850, 'spell_pal_ardent_defender'),
( 50462, 'spell_dk_anti_magic_shell_raid'),
( 48707, 'spell_dk_anti_magic_shell_self'),
( 50461, 'spell_dk_anti_magic_zone'),
(-52284, 'spell_dk_will_of_the_necropolis'),
( 39228, 'spell_gen_absorb0_hitlimit1'),
( 60218, 'spell_gen_absorb0_hitlimit1'),
(  -543, 'spell_mage_frost_warding_trigger'),
( -6143, 'spell_mage_frost_warding_trigger'),
(   -17, 'spell_pri_reflective_shield_trigger'),
(-47788, 'spell_pri_guardian_spirit'),
(-31228, 'spell_rog_cheat_death');
DELETE FROM `spell_script_names` WHERE `spell_id`=-543 AND `ScriptName`='spell_mage_incanters_absorbtion_absorb';
DELETE FROM `spell_script_names` WHERE `spell_id`=-6143 AND `ScriptName`='spell_mage_incanters_absorbtion_absorb';
DELETE FROM `spell_script_names` WHERE `spell_id`=-11426 AND `ScriptName`='spell_mage_incanters_absorbtion_absorb';
DELETE FROM `spell_script_names` WHERE `spell_id`=-1463 AND `ScriptName`='spell_mage_incanters_absorbtion_manashield';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(  -543, 'spell_mage_incanters_absorbtion_absorb'),
( -6143, 'spell_mage_incanters_absorbtion_absorb'),
(-11426, 'spell_mage_incanters_absorbtion_absorb'),
( -1463, 'spell_mage_incanters_absorbtion_manashield');
DELETE FROM `spell_script_names` WHERE `spell_id` IN ( 66118, 67630, 68646, 68647 );
INSERT INTO `spell_script_names` VALUES 
(66118, 'spell_gen_leeching_swarm'),
(67630, 'spell_gen_leeching_swarm'),
(68646, 'spell_gen_leeching_swarm'),
(68647, 'spell_gen_leeching_swarm');
DELETE FROM `achievement_criteria_data` WHERE `criteria_id`=12993 AND `type`=11;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(12993,11,0,0, 'achievement_doesnt_go_to_eleven');
DELETE FROM `areatrigger_scripts` where `entry`=5633;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5633,'at_tyrannus_event_starter');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1658070 AND -1658050;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36658,-1658050,'Your pursuit shall be in vain, adventurers, for the Lich King has placed an army of undead at my command! Behold!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16755,1,0,0,'Tyrannus SAY_AMBUSH_1'),
(36658,-1658051,'Persistent whelps! You will not reach the entrance of my lord\'s lair! Soldiers, destroy them!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16756,1,0,0,'Tyrannus SAY_AMBUSH_2'),
(36658,-1658052,'Rimefang! Trap them within the tunnel! Bury them alive!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16757,1,0,0,'Tyrannus SAY_GAUNTLET_START'),
(36658,-1658053,'Alas, brave, brave adventurers, your meddling has reached its end. Do you hear the clatter of bone and steel coming up the tunnel behind you? That is the sound of your impending demise.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16758,1,0,0,'Tyrannus SAY_TYRANNUS_INTRO_1'),
(37592,-1658054,'Heroes! We will hold off the undead as long as we can, even to our dying breath. Deal with the Scourgelord!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17150,1, 0,0,'Gorkun SAY_GORKUN_INTRO_2'),
(36658,-1658055,'Ha, such an amusing gesture from the rabble. When I have finished with you, my master\'s blade will feast upon your souls. Die!', NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16759,1,0,0,'Tyrannus SAY_TYRANNUS_INTRO_3'),
(36658,-1658056,'I shall not fail The Lich King! Come and meet your end!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16760,1, 0,0,'Tyrannus SAY_AGGRO'),
(36658,-1658057,'Such a shameful display... You are better off dead!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16761,1,0,0,'Tyrannus SAY_SLAY_1'),
(36658,-1658058,'Perhaps you should have stayed in the mountains!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16762,1,0,0,'Tyrannus SAY_SLAY_2'),
(36658,-1658059,'Impossible! Rimefang... Warn...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16763,1,0,0,'Tyrannus SAY_DEATH'),
(36658,-1658060,'Rimefang, destroy this fool!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16764,1,0,0,'Tyrannus SAY_MARK_RIMEFANG_1'),
(36658,-1658061,'The frostwyrm Rimefang gazes at $N and readies an icy attack!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3, 0,0,'Tyrannus SAY_MARK_RIMEFANG_2'),
(36658,-1658062,'Power... overwhelming!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16765,1,0,0,'Tyrannus SAY_DARK_MIGHT_1'),
(36658,-1658063,'Scourgelord Tyrannus roars and swells with dark might!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3, 0,0,'Tyrannus SAY_DARK_MIGHT_2'),
(37592,-1658064,'Brave champions, we owe you our lives, our freedom... Though it be a tiny gesture in the face of this enormous debt, I pledge that from this day forth, all will know of your deeds, and the blazing path of light you cut through the shadow of this dark citadel.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1, 0,0,'Gorkun SAY_GORKUN_OUTRO_1'),
(37592,-1658065,'This day will stand as a testament not only to your valor, but to the fact that no foe, not even the Lich King himself, can stand when Alliance and Horde set aside their differences and ---',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1, 0,0,'Gorkun SAY_GORKUN_OUTRO_2'),
(36993,-1658066,'Heroes, to me!', NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16614,1,0,0,'Jaina SAY_JAYNA_OUTRO_3'),
(36990,-1658067,'Take cover behind me! Quickly!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17037,1,0,0,'Sylvanas SAY_SYLVANAS_OUTRO_3'),
(36993,-1658068,'The Frost Queen is gone. We must keep moving - our objective is near.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16615, 0,0,0,'Jaina SAY_JAYNA_OUTRO_4'),
(36990,-1658069,'I thought he\'d never shut up. At last, Sindragosa silenced that long-winded fool. To the Halls of Reflection, champions! Our objective is near... I can sense it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17036, 0,0,0,'Sylvanas SAY_SYLVANAS_OUTRO_4'),
(36993,-1658070,'I... I could not save them... Damn you, Arthas! DAMN YOU!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16616, 0,0,0,'Jaina SAY_JAYNA_OUTRO_5');
UPDATE `creature_template` SET `Scriptname`='' WHERE `entry` IN (36840,31260,36892,36842,37728,36896,37713,37712,36788,36879,37711,38487,36841);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (68786,70336) AND `ScriptName`='spell_garfrost_permafrost';
DELETE FROM `spell_script_names` WHERE `spell_id`=69012 AND `ScriptName`='spell_krick_explosive_barrage';
DELETE FROM `spell_script_names` WHERE `spell_id`=69263 AND `ScriptName`='spell_ick_explosive_barrage';
DELETE FROM `spell_script_names` WHERE `spell_id`=44851 AND `ScriptName`='spell_exploding_orb_hasty_grow';
DELETE FROM `spell_script_names` WHERE `spell_id`=68987 AND `ScriptName`='spell_krick_pursuit';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (69029,70850) AND `ScriptName`='spell_krick_pursuit_confusion';
DELETE FROM `spell_script_names` WHERE `spell_id`=69275 AND `ScriptName`='spell_tyrannus_mark_of_rimefang';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(68786,'spell_garfrost_permafrost'),
(70336,'spell_garfrost_permafrost'),
(69012,'spell_krick_explosive_barrage'),
(69263,'spell_ick_explosive_barrage'),
(44851,'spell_exploding_orb_hasty_grow'),
(68987,'spell_krick_pursuit'),
(69029,'spell_krick_pursuit_confusion'),
(70850,'spell_krick_pursuit_confusion'),
(69275,'spell_tyrannus_mark_of_rimefang');
DELETE FROM `vehicle_accessory` WHERE `entry` IN (36476,36661,36891);
INSERT INTO `vehicle_accessory` (`entry`,`accessory_entry`,`seat_id`,`minion`,`description`) VALUES
(36476,36477,0,0,'Krick and Ick'),
(36661,36658,0,0,'Scourgelord Tyrannus and Rimefang'),
(36891,31260,0,0,'Ymirjar Skycaller on Drake');
DELETE FROM `spell_script_names` WHERE `spell_id`=70769 AND `ScriptName`='spell_gen_divine_storm_cd_reset';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(70769, 'spell_gen_divine_storm_cd_reset');
UPDATE `creature_template` SET `ScriptName`='mob_SonOfFlame' WHERE `entry`=12143;
UPDATE `creature_template` SET `ScriptName`='npc_brunnhildar_prisoner' WHERE `entry`=29639;
UPDATE `creature_template` SET `ScriptName`='npc_jungle_punch_target' WHERE `entry` IN(27986,28047,28568);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (62521,62524,62525);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(62521,'spell_attuned_to_nature_dose_reduction'),
(62524,'spell_attuned_to_nature_dose_reduction'),
(62525,'spell_attuned_to_nature_dose_reduction');
UPDATE `creature_template` SET `ScriptName`='npc_right_arm' WHERE `entry`=32934;
UPDATE `creature_template` SET `ScriptName`='npc_left_arm' WHERE `entry`=32933;
DELETE FROM spell_script_names WHERE spell_id IN (66630,66637,66656);
INSERT INTO spell_script_names (spell_id,ScriptName) VALUES 
(66630,'spell_gen_gunship_portal'),
(66637,'spell_gen_gunship_portal'),
(66656,'spell_gen_parachute_ic');
-- Achievement Mine
DELETE FROM `achievement_criteria_data` WHERE criteria_id IN (12062,12063,12064,12065);
INSERT INTO `achievement_criteria_data` (criteria_id,type,ScriptName) VALUES
(12062,11,'achievement_bg_control_all_nodes'),
(12063,11,'achievement_bg_control_all_nodes'),
(12064,11,'achievement_bg_control_all_nodes'),
(12065,11,'achievement_bg_control_all_nodes');
-- Achievement Four Car Garage
UPDATE `creature_template` SET `ScriptName`='npc_four_car_garage' WHERE `entry` IN (34802,34793,34775,35069,34776);
-- Achievement Glaive Grave
DELETE FROM `achievement_criteria_data` WHERE `criteria_id`=12183;
INSERT INTO `achievement_criteria_data` (criteria_id,type,ScriptName) VALUES (12183,11,'achievement_bg_ic_glaive_grave');
-- Achievement Mowed Down
DELETE FROM `achievement_criteria_data` WHERE `criteria_id`=12068;
INSERT INTO `achievement_criteria_data` (criteria_id,type,ScriptName) VALUES (12068,11,'achievement_bg_ic_mowed_down');
-- Achievement Resource Glut
DELETE FROM `achievement_criteria_data` WHERE criteria_id IN (12060,12061);
INSERT INTO `achievement_criteria_data` (criteria_id,type,ScriptName) VALUES
(12060,11,'achievement_bg_ic_resource_glut'),
(12061,11,'achievement_bg_ic_resource_glut');
-- strings used by the BG
DELETE FROM trinity_string WHERE entry > 1204 AND entry <1225;
INSERT INTO trinity_string (`entry`,`content_default`) VALUES
(1205,'The battle will begin in two minutes.'),
(1206,'The battle will begin in 1 minute.'),
(1208,'The battle has begun!'),
(1207,'The battle will begin in 30 seconds!'),
(1209,'the alliance keep'),
(1210,'the horde keep'),
(1211,'%s wins!'),
(1212,'The west gate of %s is destroyed!'),
(1213,'The east gate of %s is destroyed!'),
(1214,'The south gate of %s is destroyed!'),
(1215,'The north gate of %s is destroyed!'),
(1216,'$n has assaulted the %s'),
(1217,'$n has defended the %s'),
(1218,'$n claims the %s! If left unchallenged, the %s will control it in 1 minute!'),
(1219,'The %s has taken the %s'),
(1220,'Workshop'),
(1221,'Docks'),
(1222,'Refinery'),
(1223,'Quarry'),
(1224,'Hangar');
-- Spells from teleporters
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (66548, 66549, 66550, 66551);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(66548, 66550, 0, 'Isle of Conquest (IN>OUT)'),
(66549, 66551, 0, 'Isle of Conquest (OUT>IN)'),
(66551, -66548, 2, 'Isle of Conquest Teleport (OUT>IN) Debuff limit'),
(66550, -66549, 2, 'Isle of Conquest Teleport (IN>OUT) Debuff limit');
UPDATE `creature_template` SET `ScriptName`='npc_four_car_garage' WHERE `entry`=35273;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=58875 AND `spell_effect`=58876;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(58875,58876,1, 'Spirit Walk');
