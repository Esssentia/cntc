ALTER TABLE corpse
    DROP PRIMARY KEY,
    DROP KEY `idx_type`,
    DROP KEY `instance`,
    DROP KEY `Idx_player`,
    DROP KEY `Idx_time`;

ALTER TABLE corpse
    ADD PRIMARY KEY (`corpseGuid`),
    ADD KEY `idx_type`(`corpseType`),
    ADD KEY `idx_instance`(`instanceId`),
    ADD KEY `idx_player`(`guid`),
    ADD KEY `idx_time`(`time`);

ALTER TABLE creature_respawn
    DROP PRIMARY KEY,
    DROP KEY `instance`;

ALTER TABLE creature_respawn
    ADD PRIMARY KEY (`guid`, `instanceId`),
    ADD KEY `idx_instance`(`instanceId`);

ALTER TABLE gameobject_respawn
    DROP PRIMARY KEY,
    DROP KEY `instance`;

ALTER TABLE gameobject_respawn
    ADD PRIMARY KEY (`guid`, `instanceId`),
    ADD KEY `idx_instance`(`instanceId`);

-- append extra zeros, only if the string is properly formatted (has 38 tokens)
UPDATE `characters` SET `equipmentCache`=CONCAT(`equipmentCache`,"0 0 0 0 0 0 0 0 ") WHERE (CHAR_LENGTH(`equipmentCache`) - CHAR_LENGTH(REPLACE(`equipmentCache`, ' ', ''))) = 38;

ALTER TABLE gm_subsurveys
    CHANGE `surveyid` `surveyId` int(10) unsigned NOT NULL AUTO_INCREMENT,
    CHANGE `subsurveyid` `subsurveyId` int(10) unsigned NOT NULL DEFAULT '0';

ALTER TABLE gm_subsurveys
    DROP PRIMARY KEY,
    ADD PRIMARY KEY(`surveyId`,`subsurveyId`);

ALTER TABLE gm_surveys
    CHANGE `surveyid` `surveyId` int(10) unsigned NOT NULL AUTO_INCREMENT,
    CHANGE `player` `guid` int(10) unsigned NOT NULL DEFAULT '0',
    CHANGE `overall_comment` `overallComment` longtext NOT NULL,
    CHANGE `timestamp` `createTime` int(10) unsigned NOT NULL DEFAULT '0';

ALTER TABLE gm_surveys
    DROP PRIMARY KEY,
    ADD PRIMARY KEY (`surveyId`);

ALTER TABLE gm_tickets
    CHANGE `guid` `ticketId` int(10) unsigned NOT NULL AUTO_INCREMENT,
    CHANGE `playerGuid` `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier of ticket creator',
    CHANGE `name` `name` varchar(12) NOT NULL COMMENT 'Name of ticket creator',
    CHANGE `createtime` `createTime` int(10) unsigned NOT NULL DEFAULT '0',
    CHANGE `map` `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
    CHANGE `timestamp` `lastModifiedTime` int(10) unsigned NOT NULL DEFAULT '0',
    CHANGE `closed` `closedBy` int(10) NOT NULL DEFAULT '0',
    CHANGE `assignedto` `assignedTo` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'GUID of admin to whom ticket is assigned';

ALTER TABLE gm_tickets
    DROP PRIMARY KEY,
    ADD PRIMARY KEY (`ticketId`);

ALTER TABLE lag_reports
    CHANGE `report_id` `reportId` int(10) unsigned NOT NULL AUTO_INCREMENT,
    CHANGE `player` `guid` int(10) unsigned NOT NULL DEFAULT '0',
    CHANGE `lag_type` `lagType` tinyint(3) unsigned NOT NULL DEFAULT '0',
    CHANGE `map` `mapId` smallint(5) unsigned NOT NULL DEFAULT '0';

ALTER TABLE lag_reports
    DROP PRIMARY KEY,
    ADD PRIMARY KEY (`reportId`);
