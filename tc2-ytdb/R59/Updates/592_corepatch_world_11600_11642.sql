UPDATE `creature_template` SET `ScriptName` ='' WHERE `entry`=35473; -- Argent Tournament Post
--
-- Table structure for table `achievement_dbc`
--

DROP TABLE IF EXISTS `achievement_dbc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achievement_dbc` (
  `ID` int(10) unsigned NOT NULL,
  `requiredFaction` int(11) NOT NULL DEFAULT '-1',
  `mapID` int(11) NOT NULL DEFAULT '-1',
  `points` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `refAchievement` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievement_dbc`
--

LOCK TABLES `achievement_dbc` WRITE;
/*!40000 ALTER TABLE `achievement_dbc` DISABLE KEYS */;
INSERT INTO `achievement_dbc` VALUES
(3696,-1,-1,0,2,1,0), -- Earned the right to represent a city in the Argent Tournament
(4788,-1,-1,0,2,1,0), -- Is exalted with The Aldor or has any of exalted rewards
(4789,-1,-1,0,2,1,0); -- Is exalted with The Scryers or has any of exalted rewards
/*!40000 ALTER TABLE `achievement_dbc` ENABLE KEYS */;
UNLOCK TABLES;

-- Add spell script
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_symbol_of_life_dummy';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(8593, 'spell_symbol_of_life_dummy');

-- Add spell script
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_ulduar_proximity_mines';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(63027, 'spell_ulduar_proximity_mines');

DELETE FROM `script_texts` WHERE `npc_entry` IN (18445,20812,18369);
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(18445,-1800071, 'Thanks, $C! I''m sure my dad will reward you greatly! Bye!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(20812,-1800072, 'This is the last time I get caught!I promise! Bye!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(18369,-1800073, 'Thank you for saving me again!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);

UPDATE `creature_template` SET `ScriptName` = 'npc_corki' WHERE `entry` IN (18445,20812,18369);
UPDATE `gameobject_template` SET `ScriptName` = 'go_corkis_prison' WHERE `entry` IN (182349,182350,182521);

DELETE FROM `script_texts` WHERE `npc_entry` =17682;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(17682,-1800074,'Go to the west',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);

UPDATE `creature_template` SET `ScriptName`='npc_princess_stillpine' WHERE `entry`=17682;
UPDATE `gameobject_template` SET `ScriptName`='go_princess_stillpines_cage' WHERE `entry`=181928;

DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_valanar_kinetic_bomb_absorb';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(72054, 'spell_valanar_kinetic_bomb_absorb');
