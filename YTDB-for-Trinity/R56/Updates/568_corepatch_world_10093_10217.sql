DELETE FROM `spell_script_names` WHERE `spell_id` IN (-11113) AND `ScriptName` = 'spell_mage_blast_wave';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(-11113,'spell_mage_blast_wave');
DELETE FROM `spell_proc_event` WHERE `entry`=71903;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(71903,0x00,0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0,20,0); -- Item - Shadowmourne Legendary
DELETE FROM `spell_script_names` WHERE `spell_id`=71905 AND `ScriptName`='spell_item_shadowmourne';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES 
(71905,'spell_item_shadowmourne'); -- Item - Shadowmourne Legendary
-- Allow any mage spell to drop Fingers of Frost charge
UPDATE `spell_proc_event` SET `SchoolMask` = 0x54, `SpellFamilyMask0` = 0x28E212F7, `SpellFamilyMask1` = 0x00119048 WHERE `entry` = 74396;
-- Let Nature's Grace proc only from non-periodic magic spells
UPDATE `spell_proc_event` SET `SchoolMask` = 0x48, `SpellFamilyName` = 7, `SpellFamilyMask0` = 0x00000067, `SpellFamilyMask1` = 0x03800002 WHERE `entry` IN (16880, 61345, 61346);
DELETE FROM `command` WHERE `name` IN ('debug areatriggers');
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('debug areatriggers',1,'Syntax: .debug areatriggers\nToggle debug mode for areatriggers. In debug mode GM will be notified if reaching an areatrigger');
DELETE FROM `trinity_string` WHERE `entry` IN (1202,1203,1204);
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES
(1202, 'Areatrigger debugging turned on.'),
(1203, 'Areatrigger debugging turned off.'),
(1204, 'You have reached areatrigger %u.');
DELETE FROM `script_texts` WHERE `entry` IN (-1575015,-1575016,-1575017,-1575018,-1575022);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(29281,-1575015,'My liege! I have done as you asked, and now beseech you for your blessing!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Svala Sorrowgrave SAY_DIALOG_WITH_ARTHAS_1'),
(29281,-1575016,'The sensation is... beyond my imagining. I am yours to command, my king.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Svala Sorrowgrave SAY_DIALOG_WITH_ARTHAS_2'),
(29281,-1575017,'I will be happy to slaughter them in your name! Come, enemies of the Scourge! I will show you the might of the Lich King!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Svala Sorrowgrave SAY_DIALOG_WITH_ARTHAS_3'),
(26668,-1575018,'I will vanquish your soul!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Svala Sorrowgrave SAY_AGGRO'),
(26668,-1575022,'Nooo! I did not come this far... to...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Svala Sorrowgrave SAY_DEATH');

DELETE FROM `script_texts` WHERE `entry` IN (-1575000,-1575001,-1575002);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(26687,-1575000,'What this place? I will destroy you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Gortok Palehoof SAY_AGGRO'),
(26687,-1575001,'You die! That what master wants!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Gortok Palehoof SAY_SLAY_1'),
(26687,-1575002,'An easy task!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Gortok Palehoof SAY_SLAY_2');

DELETE FROM `script_texts` WHERE `entry` IN (-1599014);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(27978,-1599014,'Folvynn buul hrom onn!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Sjonnir The Ironshaper SAY_SLAY_3');

DELETE FROM `script_texts` WHERE `entry` IN (-1604018,-1604019,-1604020,-1604021,-1604022,-1604023);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(29304,-1604018,'Ye not breathin''! Good.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Slad''ran SAY_SLAY_1'),
(29304,-1604019,'You ssscared now?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Slad''ran SAY_SLAY_2'),
(29304,-1604020,'I''ll eat you next, mon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Slad''ran SAY_SLAY_3'),
(29304,-1604021,'I sssee now... Ssscourge wasss not... our greatessst enemy...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Slad''ran SAY_DEATH'),
(29304,-1604022,'Minionsss of the scale, heed my call!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Slad''ran SAY_SUMMON_SNAKES'),
(29304,-1604023,'A thousssand fangs gonna rend your flesh!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Slad''ran SAY_SUMMON_CONSTRICTORS');

DELETE FROM `script_texts` WHERE `entry` IN (-1604000,-1604001,-1604003,-1604004,-1604005,-1604006,-1604007,-1604008);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(29306,-1604000,'I''m gonna spill your guts, mon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Gal''darah SAY_AGGRO'),
(29306,-1604001,'What a rush!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Gal''darah SAY_SLAY_1'),
(29306,-1604003,'I told ya so!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Gal''darah SAY_SLAY_3'),
(29306,-1604004,'Even the mighty... can fall.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Gal''darah SAY_DEATH'),
(29306,-1604005,'Gut them! Impale them!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Gal''darah SAY_SUMMON_RHINO_1'),
(29306,-1604006,'KILL THEM ALL!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Gal''darah SAY_SUMMON_RHINO_2'),
(29306,-1604007,'Say hello to my BIG friend!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Gal''darah SAY_SUMMON_RHINO_3'),
(29306,-1604008,'Ain''t gonna be nottin'' left after this!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Gal''darah SAY_TRANSFORM_1');

DELETE FROM `script_texts` WHERE `entry` IN (-1619017,-1619018,-1619019);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(29309,-1619017,'Perhaps we will be allies soon.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Elder Nadox SAY_SLAY_3'),
(29309,-1619018,'Master, is my service complete?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Elder Nadox SAY_DEATH'),
(29309,-1619019,'The young must not grow hungry...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Elder Nadox SAY_EGG_SAC_1');

DELETE FROM `script_texts` WHERE `entry` IN (-1619000,-1619001,-1619002,-1619008,-1619009);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(29310,-1619000,'These are sacred halls! Your intrusion will be met with death.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Jedoga Shadowseeker SAY_AGGRO'),
(29310,-1619001,'Who among you is devoted?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Jedoga Shadowseeker SAY_SACRIFICE_1_1'),
(29310,-1619002,'You there! Step forward!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Jedoga Shadowseeker SAY_SACRIFICE_1_2'),
(29310,-1619008,'Do not expect your sacrilege... to go unpunished.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Jedoga Shadowseeker SAY_DEATH'),
(29310,-1619009,'The elements themselves will rise up against the civilized world! Only the faithful will be spared!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Jedoga Shadowseeker SAY_PREACHING_1');

DELETE FROM `script_texts` WHERE `entry` IN (-1619030,-1619034);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(29311,-1619030,'Shgla''yos plahf mh''naus.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Herald Volazj SAY_AGGRO'),
(29311,-1619034,'Iilth vwah, uhn''agth fhssh za.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Herald Volazj SAY_DEATH_1');
-- Add script name to boss ignis adds
UPDATE `creature_template` SET `ScriptName`='npc_iron_construct' WHERE `entry`=33121;
UPDATE `creature_template` SET `ScriptName`='npc_scorch_ground' WHERE `entry`=33221;
DELETE FROM `script_texts` WHERE `entry` IN (-1603229);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(33118,-1603229,'Ignis the Furnace Master begins to cast Flame Jets!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'IGNIS EMOTE_JETS');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (62717,63477) AND `ScriptName`='spell_ignis_slag_pot';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(62717, 'spell_ignis_slag_pot'), -- boss Ignis 10man
(63477, 'spell_ignis_slag_pot'); -- boss Ignis 25man
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1631103 AND -1631091;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36678,-1631091,'Great news, everyone! The slime is flowing again!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17126,1,0,1,'SAY_ROTFACE_OOZE_FLOOD1'),
(36678,-1631092,'Good news, everyone! I''ve fixed the poison slime pipes!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17123,1,0,1,'SAY_ROTFACE_OOZE_FLOOD2'),
(36678,-1631093,'Terrible news, everyone, Rotface is dead! But great news everyone, he left behind plenty of ooze for me to use! Whaa...? I''m a poet, and I didn''t know it? Astounding!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17146,1,0,0,'SAY_ROTFACE_DEATH'),
(36627,-1631094,'What? Precious? Noooooooooo!!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16993,1,0,0,'SAY_PRECIOUS_DIES'),
(36627,-1631095,'WEEEEEE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16986,1,0,0,'SAY_AGGRO'),
(36627,-1631096,'%s begins to cast Slime Spray!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_SLIME_SPRAY'),
(36627,-1631097,'Icky sticky.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16991,1,0,0,'SAY_SLIME_SPRAY'),
(36627,-1631098,'|TInterface\Icons\spell_shadow_unstableaffliction_2.blp:16|t%s begins to cast |cFFFF0000Unstable Ooze Explosion!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_UNSTABLE_EXPLOSION'),
(36627,-1631099,'I think I made an angry poo-poo. It gonna blow!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16992,1,0,0,'SAY_UNSTABLE_EXPLOSION'),
(36627,-1631100,'Daddy make toys out of you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16988,1,0,0,'SAY_KILL_1'),
(36627,-1631101,'I brokes-ded it...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16987,1,0,0,'SAY_KILL_2'),
(36627,-1631102,'Sleepy Time!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16990,1,0,0,'SAY_BERSERK'),
(36627,-1631103,'Bad news daddy...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16989,1,0,0,'SAY_DEATH');
UPDATE `creature_template` SET `ScriptName`='boss_rotface' WHERE `entry`=36627;
UPDATE `creature_template` SET `ScriptName`='npc_little_ooze' WHERE `entry`=36897;
UPDATE `creature_template` SET `ScriptName`='npc_big_ooze' WHERE `entry`=36899;
UPDATE `creature_template` SET `ScriptName`='npc_precious_icc' WHERE `entry`=37217;
DELETE FROM `spell_linked_spell` WHERE `spell_effect`=69706;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(-69674,69706,0, 'Rotface: Mutated Infection Summon'),
(-71224,69706,0, 'Rotface: Mutated Infection Summon'),
(-73022,69706,0, 'Rotface: Mutated Infection Summon'),
(-73023,69706,0, 'Rotface: Mutated Infection Summon');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (69782,69796,69798,69801) AND `ScriptName`='spell_rotface_ooze_flood';
DELETE FROM `spell_script_names` WHERE `spell_id`=69538 AND `ScriptName`='spell_rotface_little_ooze_combine';
DELETE FROM `spell_script_names` WHERE `spell_id`=69553 AND `ScriptName`='spell_rotface_large_ooze_combine';
DELETE FROM `spell_script_names` WHERE `spell_id`=69610 AND `ScriptName`='spell_rotface_large_ooze_buff_combine';
DELETE FROM `spell_script_names` WHERE `spell_id`=69839 AND `ScriptName`='spell_rotface_unstable_ooze_explosion_init';
DELETE FROM `spell_script_names` WHERE `spell_id`=69832 AND `ScriptName`='spell_rotface_unstable_ooze_explosion';
DELETE FROM `spell_script_names` WHERE `spell_id`=71441 AND `ScriptName`='spell_rotface_unstable_ooze_explosion_suicide';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(69782,'spell_rotface_ooze_flood'),
(69796,'spell_rotface_ooze_flood'),
(69798,'spell_rotface_ooze_flood'),
(69801,'spell_rotface_ooze_flood'),
(69538,'spell_rotface_little_ooze_combine'),
(69553,'spell_rotface_large_ooze_combine'),
(69610,'spell_rotface_large_ooze_buff_combine'),
(69839,'spell_rotface_unstable_ooze_explosion_init'),
(69832,'spell_rotface_unstable_ooze_explosion'),
(71441,'spell_rotface_unstable_ooze_explosion_suicide');
ALTER TABLE `creature`
 ADD COLUMN `npcflag` int(10) unsigned NOT NULL DEFAULT '0' AFTER `MovementType`,
 ADD COLUMN `unit_flags` int(10) unsigned NOT NULL DEFAULT '0' AFTER `npcflag`,
 ADD COLUMN `dynamicflags` int(10) unsigned NOT NULL DEFAULT '0' AFTER `unit_flags`;
DELETE FROM `script_texts` WHERE `entry` IN (-1575019,-1575020);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(26668,-1575019,'You were a fool to challenge the power of the Lich King!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Svala Sorrowgrave SAY_SLAY_1'),
(26668,-1575020,'Your will is done, my king.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Svala Sorrowgrave SAY_SLAY_2');

DELETE FROM `script_texts` WHERE `entry` IN (-1604002,-1604009);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(29306,-1604002,'Who needs gods, when WE ARE GODS!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Gal''darah SAY_SLAY_2'),
(29306,-1604009,'You wanna see power? I''m gonna show you power!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Gal''darah SAY_TRANSFORM_2');

DELETE FROM `script_texts` WHERE `entry` IN (-1619003,-1619004,-1619005,-1619007,-1619010,-1619011,-1619012,-1619013);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(29310,-1619003,'Yogg-Saron, grant me your power!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Jedoga Shadowseeker SAY_SACRIFICE_2_1'),
(29310,-1619004,'Master, a gift for you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Jedoga Shadowseeker SAY_SACRIFICE_2_2'),
(29310,-1619005,'Glory to Yogg-Saron!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Jedoga Shadowseeker SAY_SLAY_1'),
(29310,-1619007,'Get up! You haven''t suffered enough.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Jedoga Shadowseeker SAY_SLAY_3'),
(29310,-1619010,'Immortality can be yours. But only if you pledge yourself fully to Yogg-Saron!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Jedoga Shadowseeker SAY_PREACHING_2'),
(29310,-1619011,'Here on the very borders of his domain. You will experience powers you would never have imagined!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Jedoga Shadowseeker SAY_PREACHING_3'),
(29310,-1619012,'You have traveled long and risked much to be here. Your devotion shall be rewarded.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Jedoga Shadowseeker SAY_PREACHING_4'),
(29310,-1619013,'The faithful shall be exalted! But there is more work to be done. We will press on until all of Azeroth lies beneath his shadow!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Jedoga Shadowseeker SAY_PREACHING_5');

DELETE FROM `script_texts` WHERE `entry` IN (-1619020);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(29309,-1619020,'Shhhad ak kereeesshh chak-k-k!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Elder Nadox SAY_EGG_SAC_2');

DELETE FROM `script_texts` WHERE `entry` IN (-1619031,-1619032,-1619033);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(29311,-1619031,'Ywaq puul skshgn: on''ma yeh''glu zuq.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Herald Volazj SAY_SLAY_1'),
(29311,-1619032,'Ywaq ma phgwa''cul hnakf.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Herald Volazj SAY_SLAY_2'),
(29311,-1619033,'Ywaq maq oou; ywaq maq ssaggh. Ywaq ma shg''fhn.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Herald Volazj SAY_SLAY_3');
UPDATE `creature_classlevelstats` SET `basehp1`=4731 WHERE `class`=8 AND `level`=65;
UPDATE `creature_classlevelstats` SET `basehp1`=6906 WHERE `class`=2 AND `level`=66;
UPDATE `creature_classlevelstats` SET `basehp1`=4892 WHERE `class`=8 AND `level`=66;
UPDATE `creature_classlevelstats` SET `basehp1`=5060 WHERE `class`=8 AND `level`=67;
UPDATE `creature_classlevelstats` SET `basehp1`=11570 WHERE `class`=1 AND `level`=83;
-- Razorscale
UPDATE `creature_template` SET `ScriptName` = 'boss_razorscale' WHERE `entry`=33186;
UPDATE `creature_template` SET `ScriptName` = 'npc_devouring_flame' WHERE `entry`=34188;
UPDATE `creature_template` SET `ScriptName` = 'npc_mole_machine_trigger' WHERE `entry`=33245;
UPDATE `creature_template` SET `ScriptName` = 'npc_expedition_commander' WHERE `entry`=33210;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkrune_guardian' WHERE `entry`=33388;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkrune_sentinel' WHERE `entry`=33846;
UPDATE `creature_template` SET `ScriptName` = 'npc_darkrune_watcher' WHERE `entry`=33453;
DELETE FROM `script_texts` WHERE `entry` IN (-1603268,-1603267,-1603266);
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(33186, -1603268, 'Razorscale grounded permanently!', NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'EMOTE_PERMA'),
(33186, -1603267, 'Razorscale takes a deep breath...', NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'EMOTE_BREATH'),
(33287, -1603266, 'Harpoon Turret is ready for use!', NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'EMOTE_HARPOON');

DELETE FROM `script_texts` WHERE `entry` IN (-1603265,-1603264,-1603263,-1603262);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(33287, -1603265, 'Fires out! Let''s rebuild those turrets!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0, 'SAY_TURRETS'),
(33287, -1603264, 'Ready to move out, keep those dwarves off of our backs!', NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0, 'SAY_AGGRO_3'),
(33287, -1603263, 'Be on the lookout! Mole machines will be surfacing soon with those nasty Iron dwarves aboard!', NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0, 'SAY_AGGRO_2'),
(33287, -1603262, 'Give us a moment to prepare to build the turrets.', NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0, 'SAY_AGGRO_1');

-- Razorscale emotes
UPDATE `script_texts` SET `content_default` = "Welcome, champions! All of our attempts at grounding her have failed. We could use a hand in bring her down with these harpoon guns.", `type`=0  WHERE `entry`=-1603260;
UPDATE `script_texts` SET `content_default` = "Move! Quickly! She won't remain grounded for long.", `type`=1  WHERE `entry`=-1603261;
DELETE FROM `script_texts` WHERE `entry` IN (-1000002,-1000003);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(0,-1000002,'%s goes into a frenzy!',0,2,0,0,'EMOTE_GENERIC_FRENZY'),
(0,-1000003,'%s becomes enraged!',0,2,0,0,'EMOTE_GENERIC_ENRAGED');
 
DELETE FROM `script_texts` WHERE `entry` IN (-1575023,-1575024,-1575025,-1575026,-1575027);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(26668,-1575023,'Your death approaches.',13850,1,0,0,'svala SAY_SACRIFICE_1'),
(26668,-1575024,'Go now to my master.',13851,1,0,0,'svala SAY_SACRIFICE_2'),
(26668,-1575025,'Your end is inevitable.',13852,1,0,0,'svala SAY_SACRIFICE_3'),
(26668,-1575026,'Yor-guul mak!',13853,1,0,0,'svala SAY_SACRIFICE_4'),
(26668,-1575027,'Any last words?',13854,1,0,0,'svala SAY_SACRIFICE_5');
DELETE FROM `spell_script_names` WHERE `spell_id` = 31261 AND `ScriptName`='spell_creature_permanent_feign_death';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES 
(31261, 'spell_creature_permanent_feign_death');
UPDATE `creature_template` SET `Scriptname`='boss_tyrannus' WHERE `entry`=36658;
UPDATE `creature_template` SET `Scriptname`='boss_rimefang' WHERE `entry`=36661;
