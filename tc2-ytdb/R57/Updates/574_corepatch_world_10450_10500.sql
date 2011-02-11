-- Quest ...Or Maybe We Don't (12138, 12198)
UPDATE `creature_template` SET `ScriptName`='npc_lightning_sentry' WHERE `entry`=26407; -- Lightning Sentry
-- Quest Smoke 'Em Out (12323, 12324)
UPDATE `creature_template` SET `ScriptName`='npc_venture_co_straggler',`AIName`='' WHERE `entry`=27570;
-- Quest Smoke Em Out
DELETE FROM `script_texts` WHERE `entry` BETWEEN (-1603539) AND (-1603535);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
   (27570,-1603535,'We\'re all gonna die!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Smoke \'Em Out - Say1'),
   (27570,-1603536,'Gotta get out of here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Smoke \'Em Out - Say2'),
   (27570,-1603537,'No way I\'m stickin\' around!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Smoke \'Em Out - Say3'),
   (27570,-1603538,'Forget this! I\'m going home!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Smoke \'Em Out - Say4'),
   (27570,-1603539,'I didn\'t sign up for this!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Smoke \'Em Out - Say5');
-- Rename changed gobject commands
DELETE FROM `command` WHERE `name` IN ('gobject setphase','gobject tempadd','gobject set phase','gobject add temp');
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('gobject set phase',2,'Syntax: .gobject set phase #guid #phasemask\r\n\r\nGameobject with DB guid #guid phasemask changed to #phasemask with related world vision update for players. Gameobject state saved to DB and persistent.'),
('gobject add temp',2,'Adds a temporary gameobject that is not saved to DB.');

-- Rename changed honor commands
DELETE FROM `command` WHERE `name` IN ('honor addkill','honor add kill');
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('honor add kill',2,'Syntax: .honor add kill\r\n\r\nAdd the targeted unit as one of your pvp kills today (you only get honor if it''s a racial leader or a player)');

-- Add wp add command
DELETE FROM `command` WHERE `name` IN ('wp add','wp addwp');
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('wp add',2,'Syntax: .wp add\r\n\r\nAdd a waypoint for the selected creature at your current position.');

-- Rename changed loadpath command and move it to wp reload
DELETE FROM `command` WHERE `name` IN ('loadpath','wp reload');
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('wp reload',3,'Syntax: .wp reload $pathid\nLoad path changes ingame - IMPORTANT: must be applied first for new paths before .wp load #pathid ');

DELETE FROM `command` WHERE `name` LIKE 'reload all%';
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('reload all',3,'Syntax: .reload all\r\n\r\nReload all tables with reload support added and that can be _safe_ reloaded.'),
('reload all gossips',3,'Syntax: .reload all gossips\nReload gossip_menu, gossip_menu_option, gossip_scripts, npc_gossip, points_of_interest tables.'),
('reload all item',3,'Syntax: .reload all item\nReload page_text, item_enchantment_table tables.'),
('reload all locales',3,'Syntax: .reload all locales\r\n\r\nReload all `locales_*` tables with reload support added and that can be _safe_ reloaded.'),
('reload all loot',3,'Syntax: .reload all loot\r\n\r\nReload all `*_loot_template` tables. This can be slow operation with lags for server run.'),
('reload all npc',3,'Syntax: .reload all npc\nReload npc_gossip, npc_option, npc_trainer, npc vendor, points of interest tables.'),
('reload all quest',3,'Syntax: .reload all quest\r\n\r\nReload all quest related tables if reload support added for this table and this table can be _safe_ reloaded.'),
('reload all scripts',3,'Syntax: .reload all scripts\nReload gameobject_scripts, event_scripts, quest_end_scripts, quest_start_scripts, spell_scripts, db_script_string, waypoint_scripts tables.'),
('reload all spell',3,'Syntax: .reload all spell\r\n\r\nReload all `spell_*` tables with reload support added and that can be _safe_ reloaded.');

DELETE FROM `command` WHERE `name` IN ('titles setmask','titles set mask');
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('titles set mask',2,'Syntax: .titles set mask #mask\r\n\r\nAllows user to use all titles from #mask.\r\n\r\n #mask=0 disables the title-choose-field');
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (6474, 'spell_sha_earthbind_totem');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1631139 AND -1631000;
DELETE FROM `spell_script_names` WHERE `spell_id` IN (69057,70826,72088,72089) AND `ScriptName`='spell_marrowgar_bone_spike_graveyard';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70903,72498,72499,72500,71236,72495,72496,72497) AND `ScriptName`='spell_cultist_dark_martyrdrom';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(69057,'spell_marrowgar_bone_spike_graveyard'),
(70826,'spell_marrowgar_bone_spike_graveyard'),
(72088,'spell_marrowgar_bone_spike_graveyard'),
(72089,'spell_marrowgar_bone_spike_graveyard'),
(70903,'spell_cultist_dark_martyrdrom'),
(72498,'spell_cultist_dark_martyrdrom'),
(72499,'spell_cultist_dark_martyrdrom'),
(72500,'spell_cultist_dark_martyrdrom'),
(71236,'spell_cultist_dark_martyrdrom'),
(72495,'spell_cultist_dark_martyrdrom'),
(72496,'spell_cultist_dark_martyrdrom'),
(72497,'spell_cultist_dark_martyrdrom');
DELETE FROM `command` WHERE `name` LIKE 'server togglequerylog';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('server togglequerylog',4,'Toggle SQL driver query logging.');
DELETE FROM `trinity_string` WHERE `entry` IN (1027, 1028);
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES 
(1027, 'SQL driver query logging enabled.'),
(1028, 'SQL driver query logging disabled.');
-- ScriptName for Captured Frog
UPDATE `item_template` SET `ScriptName`= 'item_captured_frog' WHERE `entry`=53510;
