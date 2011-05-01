ALTER TABLE `corpse` CHANGE COLUMN `phaseMask` `phaseMask` smallint(5) unsigned NOT NULL DEFAULT '1';
ALTER TABLE `character_banned` CHANGE COLUMN `guid` `guid` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier';
