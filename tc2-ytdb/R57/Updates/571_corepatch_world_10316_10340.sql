DROP TABLE IF EXISTS smart_scripts;
CREATE TABLE `smart_scripts` (
  `entryorguid` mediumint(11) NOT NULL,
  `source_type` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `id` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `link` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `event_type` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `event_phase_mask` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `event_chance` mediumint(5) unsigned NOT NULL DEFAULT '100',
  `event_flags` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `event_param1` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `event_param2` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `event_param3` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `event_param4` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `action_type` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `action_param1` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `action_param2` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `action_param3` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `action_param4` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `action_param5` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `action_param6` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `target_type` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `target_param1` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `target_param2` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `target_param3` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `target_x` float NOT NULL DEFAULT '0',
  `target_y` float NOT NULL DEFAULT '0',
  `target_z` float NOT NULL DEFAULT '0',
  `target_o` float NOT NULL DEFAULT '0',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT 'Event Comment',
  PRIMARY KEY (`entryorguid`,`source_type`,`id`,`link`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
DROP TABLE IF EXISTS waypoints;
CREATE TABLE `waypoints` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pointid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `point_comment` text,
  PRIMARY KEY (`entry`,`pointid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature waypoints';
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (33299,33409,33301,33414,33418,33416,33297,33298,33300,33408);
UPDATE `creature_template` SET `ScriptName` = 'generic_vehicleAI_toc5' WHERE `entry` IN (33217,33323,33320,33316,33317,33324,33318,33319,33321,33322);
DELETE FROM `spell_bonus_data` WHERE `entry` = 46579;
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(46579, 0, 0, 0, 0, 'Deathfrost - Enchantment');
