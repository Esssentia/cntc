DELETE FROM `script_texts` WHERE `npc_entry` IN (25828,25248,25827);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(25248,-1571044,'Well...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_hidden_cultist SAY_HIDDEN_CULTIST_1'),
(25828,-1571045,'Finally! This charade is over... Arthas give me strength!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_hidden_cultist SAY_HIDDEN_CULTIST_2'),
(25827,-1571046,'You don''t know who you''re messing with! Death beckons!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_hidden_cultist SAY_HIDDEN_CULTIST_3'),
(25248,-1571047,'I suppose this is it, then? I won''t go down quietly!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'npc_hidden_cultist SAY_HIDDEN_CULTIST_4');
UPDATE `creature_template` SET `ScriptName`='npc_hidden_cultist' WHERE `entry` IN (25828,25248,25827);
DELETE FROM `command` WHERE `name` LIKE 'channel set public';
DELETE FROM `command` WHERE `name` LIKE 'channel set ownership';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('channel set ownership', 3, 'Syntax: .channel set ownership $channel [on/off]\n\n\Grant ownership to the first person that joins the channel.');
DELETE FROM `trinity_string` WHERE `entry` IN (5022, 5023);
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES 
(5022, 'Granting ownership to first person that joins the channel \"%s\": Enabled.'),
(5023, 'Granting ownership to first person that joins the channel \"%s\": Disabled.');
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (12780,13012,13011,13013) AND `type` IN (0,11);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(12780,11,0,0, 'achievement_once_bitten_twice_shy_n'),
(13012,11,0,0, 'achievement_once_bitten_twice_shy_n'),
(13011,11,0,0, 'achievement_once_bitten_twice_shy_v'),
(13013,11,0,0, 'achievement_once_bitten_twice_shy_v');
UPDATE `creature_template` SET `ScriptName`='boss_blood_queen_lana_thel' WHERE `entry`=37955;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (70867,71473,71532,71533,70879,71525,71530,71531,70877,71474,70923,71446,71478,71479,71480,71952,71390);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(70867,70871,2, 'Blood-Queen: Essence of the Blood Queen'),
(71473,70871,2, 'Blood-Queen: Essence of the Blood Queen'),
(71532,70871,2, 'Blood-Queen: Essence of the Blood Queen'),
(71533,70871,2, 'Blood-Queen: Essence of the Blood Queen'),
(70879,70871,2, 'Blood-Queen: Essence of the Blood Queen'),
(71525,70871,2, 'Blood-Queen: Essence of the Blood Queen'),
(71530,70871,2, 'Blood-Queen: Essence of the Blood Queen'),
(71531,70871,2, 'Blood-Queen: Essence of the Blood Queen'),
(70877,72649,2, 'Blood-Queen: Frenzied Bloodthirst 10man'),
(70877,72151,2, 'Blood-Queen: Frenzied Bloodthirst 10man'),
(71474,72648,2, 'Blood-Queen: Frenzied Bloodthirst 25man'),
(71474,72650,2, 'Blood-Queen: Frenzied Bloodthirst 25man'),
(70923,70924,2, 'Blood-Queen: Uncontrollable Frenzy'),
(71446,71447,1, 'Blood-Queen: Bloodbolt Splash'),
(71478,71481,1, 'Blood-Queen: Bloodbolt Splash'),
(71479,71482,1, 'Blood-Queen: Bloodbolt Splash'),
(71480,71483,1, 'Blood-Queen: Bloodbolt Splash'),
(71952,70995,1, 'Blood-Queen: Presence of the Darkfallen'),
(71390,71341,0, 'Blood-Queen: Pact of the Darkfallen');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70877,71474) AND `ScriptName`='spell_blood_queen_frenzied_bloodthirst';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70946,71475,71476,71477) AND `ScriptName`='spell_blood_queen_vampiric_bite';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (71899,71900,71901,71902) AND `ScriptName`='spell_blood_queen_bloodbolt';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(70877, 'spell_blood_queen_frenzied_bloodthirst'),
(71474, 'spell_blood_queen_frenzied_bloodthirst'),
(70946, 'spell_blood_queen_vampiric_bite'),
(71475, 'spell_blood_queen_vampiric_bite'),
(71476, 'spell_blood_queen_vampiric_bite'),
(71477, 'spell_blood_queen_vampiric_bite'),
(71899, 'spell_blood_queen_bloodbolt'),
(71900, 'spell_blood_queen_bloodbolt'),
(71901, 'spell_blood_queen_bloodbolt'),
(71902, 'spell_blood_queen_bloodbolt');
UPDATE `creature_template` SET `ScriptName`='npc_daegarn' WHERE `entry`=24151;
ALTER TABLE `disables` 
ADD COLUMN params_0 varchar (255) NOT NULL default '' AFTER flags,
ADD COLUMN params_1 VARCHAR (255) NOT NULL default '' AFTER params_0;
