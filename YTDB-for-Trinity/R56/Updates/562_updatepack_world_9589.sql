# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 561_FIX_9436 562_FIX_9589 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('562_FIX_9589');

# TC
# Silinoron
-- vehicle scaling data for Ulduar vehicles
DELETE FROM `vehicle_scaling_info` WHERE `entry` IN (336, 335, 338);
INSERT INTO `vehicle_scaling_info` (`entry`,`baseItemLevel`,`scalingFactor`) VALUES 
(336,170.0,0.01),
(335,170.0,0.01),
(338,170.0,0.01);
# Shocker
DELETE FROM `spell_group` WHERE `id` IN (1108, 1109, 1110);
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES
(1108, 1126), -- Mark of the Wild
(1108, 21849), -- Gift of the Wild
(1109, 1243), -- Power Word: Fortitude
(1109, 21562), -- Prayer of Fortitude
(1110, 976), -- Shadow Protection
(1110, 27683); -- Prayer of Shadow Protection
DELETE FROM `spell_group_stack_rules` WHERE `group_id` IN (1108, 1109, 1110);
INSERT INTO `spell_group_stack_rules` (`group_id`, `stack_rule`) VALUES
(1108, 1), -- Mark/Gift of the Wild
(1109, 1), -- Power Word/Prayer of Fortitude
(1110, 1); -- Prayer of/Shadow protection
DELETE FROM `spell_group` WHERE `spell_id` IN (72586, 72588, 72590);
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES
(1006, 72586), -- Blessing of Forgotten Kings (Drums)
(1108, 72588), -- Gift of the Wild (Drums)
(1109, 72590); -- Fortitude (Scroll)

DELETE FROM `creature_template_addon` WHERE `entry` = 32638;
DELETE FROM `creature_template_addon` WHERE `entry` = 32642;
# INSERT INTO `spell_scripts` VALUES ('53428', '0', '1', '7', '12842', '0', '0', '0', '0', '0', '0');
REPLACE INTO `conditions` VALUES ('18', '0', '33621', '0', '24', '1', '23564', '0', '0', '', null);
REPLACE INTO `gossip_menu_option` VALUES ('30364', '1', '0', 'Where is Elder Pamuya?', '1', '1', '50097', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30364', '2', '0', 'Where is Elder Sardis?', '1', '1', '50104', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30357', '1', '0', 'Where is Elder Lunaro?', '1', '1', '50083', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30357', '2', '0', 'Where is Elder Whurain?', '1', '1', '50124', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30357', '3', '0', 'Where is Elder Kilias?', '1', '1', '50082', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30357', '4', '0', 'Where is Elder Tauros?', '1', '1', '50119', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15563', '1', '0', 'Where is Elder Starsong?', '1', '1', '50113', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15595', '1', '0', 'Where is Elder Bladeswift?', '1', '1', '50060', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15595', '2', '0', 'Where is Elder Skygleam?', '1', '1', '50107', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15599', '1', '0', 'Where is Elder Primestone?', '1', '1', '50098', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15599', '2', '0', 'Where is Elder Thunderhorn?', '1', '1', '50121', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15598', '1', '0', 'Where is Elder Bladeleaf?', '1', '1', '50058', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15598', '2', '0', 'Where is Elder Bronzebeard?', '1', '1', '50064', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15598', '3', '0', 'Where is Elder Hammershout?', '1', '1', '50076', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15598', '4', '0', 'Where is Elder Skygleam?', '1', '1', '50107', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15598', '5', '0', 'Where is Elder Starweave?', '1', '1', '50114', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15575', '1', '0', 'Where is Elder High Mountain?', '1', '1', '50077', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15575', '2', '0', 'Where is Elder Moonwarden?', '1', '1', '50087', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15575', '3', '0', 'Where is Elder Wheathoof?', '1', '1', '50123', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15575', '4', '0', 'Where is Elder Windtotem?', '1', '1', '50127', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30368', '1', '0', 'Where is Elder Pamuya?', '1', '1', '50097', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30368', '2', '0', 'Where is Elder Wanikaya?', '1', '1', '50122', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30368', '3', '0', 'Where is Elder Sandrene?', '1', '1', '50103', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30368', '4', '0', 'Where is Elder Morthie?', '1', '1', '50090', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15606', '1', '0', 'Where is Elder Nightwind?', '1', '1', '50092', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15606', '2', '0', 'Where is Elder Stonespire?', '1', '1', '50117', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15871', '1', '0', 'Where is Elder Bladeswift?', '1', '1', '50060', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15871', '2', '0', 'Where is Elder Hammershout?', '1', '1', '50076', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15871', '3', '0', 'Where is Elder Goldwell?', '1', '1', '50072', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15871', '4', '0', 'Where is Elder Ironband?', '1', '1', '50080', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30538', '1', '0', 'Where is Elder Jarten?', '1', '1', '50081', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30538', '2', '0', 'Where is Elder Lunaro?', '1', '1', '50083', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30538', '3', '0', 'Where is Elder Whurain?', '1', '1', '50124', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15564', '1', '0', 'Where is Elder Darkhorn?', '1', '1', '50067', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15564', '2', '0', 'Where is Elder Graveborn?', '1', '1', '50073', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15564', '3', '0', 'Where is Elder Ironband?', '1', '1', '50080', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15564', '4', '0', 'Where is Elder Moonstrike?', '1', '1', '50086', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15564', '5', '0', 'Where is Elder Wheathoof?', '1', '1', '50123', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15579', '1', '0', 'Where is Elder Darkcore?', '1', '1', '50066', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15579', '2', '0', 'Where is Elder Ironband?', '1', '1', '50080', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15579', '3', '0', 'Where is Elder Wheathoof?', '1', '1', '50123', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15579', '4', '0', 'Where is Elder Runetotem?', '1', '1', '50132', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15579', '5', '0', 'Where is Elder Windtotem?', '1', '1', '50127', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15585', '1', '0', 'Where is Elder Rumblerock?', '1', '1', '50131', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15586', '1', '0', 'Where is Elder Ragetotem?', '1', '1', '50099', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15586', '2', '0', 'Where is Elder Skyseer?', '1', '1', '50108', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15586', '3', '0', 'Where is Elder Thunderhorn?', '1', '1', '50121', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15586', '4', '0', 'Where is Elder Wildmane?', '1', '1', '50125', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30359', '1', '0', 'Where is Elder Yurauk?', '1', '1', '50129', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30359', '2', '0', 'Where is Elder Stonebeard?', '1', '1', '50115', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30359', '3', '0', 'Where is Elder Muraco?', '1', '1', '50091', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30359', '4', '0', 'Where is Elder Graymane?', '1', '1', '50074', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15607', '1', '0', 'Where is Elder Snowcrown?', '1', '1', '50110', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15607', '2', '0', 'Where is Elder Windrun?', '1', '1', '50126', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15569', '1', '0', 'Where is Elder Bronzebeard?', '1', '1', '50064', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15569', '2', '0', 'Where is Elder Ironband?', '1', '1', '50080', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15569', '3', '0', 'Where is Elder Silvervein?', '1', '1', '50105', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15568', '1', '0', 'Where is Elder Darkcore?', '1', '1', '50066', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15568', '2', '0', 'Where is Elder Meadowrun?', '1', '1', '50084', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15568', '3', '0', 'Where is Elder Moonstrike?', '1', '1', '50086', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15568', '4', '0', 'Where is Elder Obsidian?', '1', '1', '50095', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15568', '5', '0', 'Where is Elder Snowcrown?', '1', '1', '50110', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30370', '1', '0', 'Where is Elder Ohanzee?', '1', '1', '50096', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30370', '2', '0', 'Where is Elder Stonebeard?', '1', '1', '50115', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30370', '3', '0', 'Where is Elder Fargal?', '1', '1', '50070', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30370', '4', '0', 'Where is Elder Kilias?', '1', '1', '50082', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30370', '5', '0', 'Where is Elder Tauros?', '1', '1', '50119', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30370', '6', '0', 'Where is Elder Yurauk?', '1', '1', '50129', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30370', '7', '0', 'Where is Elder Thoim?', '1', '1', '50120', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15581', '1', '0', 'Where is Elder Mistwalker?', '1', '1', '50085', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15581', '2', '0', 'Where is Elder Morningdew?', '1', '1', '50089', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15581', '3', '0', 'Where is Elder Splitrock?', '1', '1', '50111', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15562', '1', '0', 'Where is Elder Bladeswift?', '1', '1', '50060', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15562', '2', '0', 'Where is Elder Bronzebeard?', '1', '1', '50064', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15562', '3', '0', 'Where is Elder Rumblerock?', '1', '1', '50131', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15562', '4', '0', 'Where is Elder Stormbrow?', '1', '1', '50118', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15588', '1', '0', 'Where is Elder Bloodhoof?', '1', '1', '50061', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15588', '2', '0', 'Where is Elder Moonwarden?', '1', '1', '50087', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15588', '3', '0', 'Where is Elder Morningdew?', '1', '1', '50089', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15588', '4', '0', 'Where is Elder Runetotem?', '1', '1', '50132', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15588', '5', '0', 'Where is Elder Windtotem?', '1', '1', '50127', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15559', '1', '0', 'Where is Elder Moonstrike?', '1', '1', '50086', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30536', '1', '0', 'Where is Elder Arp?', '1', '1', '50055', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30536', '2', '0', 'Where is Elder Pamuya?', '1', '1', '50097', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30536', '3', '0', 'Where is Elder Sardis?', '1', '1', '50104', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15567', '1', '0', 'Where is Elder Bronzebeard?', '1', '1', '50064', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15567', '2', '0', 'Where is Elder Goldwell?', '1', '1', '50072', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15567', '3', '0', 'Where is Elder Morndeep?', '1', '1', '50088', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15567', '4', '0', 'Where is Elder Silvervein?', '1', '1', '50105', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15567', '5', '0', 'Where is Elder Stonefort?', '1', '1', '50116', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30531', '1', '0', 'Where is Elder Chogan\'gada?', '1', '1', '50065', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30531', '2', '0', 'Where is Elder Lunaro?', '1', '1', '50083', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30531', '3', '0', 'Where is Elder Whurain?', '1', '1', '50124', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30534', '1', '0', 'Where is Elder Ohanzee?', '1', '1', '50096', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30534', '2', '0', 'Where is Elder Tauros?', '1', '1', '50119', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30534', '3', '0', 'Where is Elder Nurgen?', '1', '1', '50094', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30534', '4', '0', 'Where is Elder Graymane?', '1', '1', '50074', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30367', '1', '0', 'Where is Elder Jarten?', '1', '1', '50081', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30367', '2', '0', 'Where is Elder Chogan\'gada?', '1', '1', '50065', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30367', '3', '0', 'Where is Elder Skywarden?', '1', '1', '50109', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30367', '4', '0', 'Where is Elder Beldak?', '1', '1', '50056', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30367', '5', '0', 'Where is Elder Kilias?', '1', '1', '50082', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15602', '1', '0', 'Where is Elder Graveborn?', '1', '1', '50073', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15602', '2', '0', 'Where is Elder Moonstrike?', '1', '1', '50086', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15602', '3', '0', 'Where is Elder Snowcrown?', '1', '1', '50110', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15602', '4', '0', 'Where is Elder Windrun?', '1', '1', '50126', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15587', '1', '0', 'Where is Elder Grimtotem?', '1', '1', '50075', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15587', '2', '0', 'Where is Elder Morningdew?', '1', '1', '50089', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15587', '3', '0', 'Where is Elder Splitrock?', '1', '1', '50111', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15594', '1', '0', 'Where is Elder Darkcore?', '1', '1', '50066', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15594', '2', '0', 'Where is Elder Graveborn?', '1', '1', '50073', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15594', '3', '0', 'Where is Elder Highpeak?', '1', '1', '50078', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15594', '4', '0', 'Where is Elder Meadowrun?', '1', '1', '50084', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15594', '5', '0', 'Where is Elder Obsidian?', '1', '1', '50095', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15594', '6', '0', 'Where is Elder Snowcrown?', '1', '1', '50110', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15594', '7', '0', 'Where is Elder Windrun?', '1', '1', '50126', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15597', '1', '0', 'Where is Elder Bloodhoof?', '1', '1', '50061', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15597', '2', '0', 'Where is Elder High Mountain?', '1', '1', '50077', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15597', '3', '0', 'Where is Elder Morningdew?', '1', '1', '50089', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15597', '4', '0', 'Where is Elder Runetotem?', '1', '1', '50132', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15597', '5', '0', 'Where is Elder Windtotem?', '1', '1', '50127', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15549', '1', '0', 'Where is Elder Ironband?', '1', '1', '50080', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15604', '1', '0', 'Where is Elder Grimtotem?', '1', '1', '50075', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15604', '2', '0', 'Where is Elder High Mountain?', '1', '1', '50077', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15604', '3', '0', 'Where is Elder Mistwalker?', '1', '1', '50085', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15604', '4', '0', 'Where is Elder Moonwarden?', '1', '1', '50087', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15604', '5', '0', 'Where is Elder Skyseer?', '1', '1', '50108', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15604', '6', '0', 'Where is Elder Windtotem?', '1', '1', '50127', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30358', '1', '0', 'Where is Elder Nurgen?', '1', '1', '50094', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30358', '2', '0', 'Where is Elder Thoim?', '1', '1', '50120', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30358', '3', '0', 'Where is Elder Skywarden?', '1', '1', '50109', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30358', '4', '0', 'Where is Elder Pamuya?', '1', '1', '50097', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30358', '5', '0', 'Where is Elder Whurain?', '1', '1', '50124', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30374', '1', '0', 'Where is Elder Ohanzee?', '1', '1', '50096', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30374', '2', '0', 'Where is Elder Stonebeard?', '1', '1', '50115', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30374', '3', '0', 'Where is Elder Fargal?', '1', '1', '50070', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30374', '4', '0', 'Where is Elder Kilias?', '1', '1', '50082', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30374', '5', '0', 'Where is Elder Graymane?', '1', '1', '50074', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30374', '6', '0', 'Where is Elder Yurauk?', '1', '1', '50129', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15603', '1', '0', 'Where is Elder Brightspear?', '1', '1', '50063', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15603', '2', '0', 'Where is Elder Riversong?', '1', '1', '50130', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15603', '3', '0', 'Where is Elder Skygleam?', '1', '1', '50107', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15603', '4', '0', 'Where is Elder Starweave?', '1', '1', '50114', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15603', '5', '0', 'Where is Elder Stonespire?', '1', '1', '50117', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30360', '1', '0', 'Where is Elder Igasho?', '1', '1', '50079', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30360', '2', '0', 'Where is Elder Arp?', '1', '1', '50055', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30360', '3', '0', 'Where is Elder Sardis?', '1', '1', '50104', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30533', '1', '0', 'Where is Elder Fargal?', '1', '1', '50070', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30533', '2', '0', 'Where is Elder Stonebeard?', '1', '1', '50115', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30533', '3', '0', 'Where is Elder Graymane?', '1', '1', '50074', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30533', '4', '0', 'Where is Elder Yurauk?', '1', '1', '50129', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15561', '1', '0', 'Where is Elder Graveborn?', '1', '1', '50073', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15561', '2', '0', 'Where is Elder Highpeak?', '1', '1', '50078', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15561', '3', '0', 'Where is Elder Moonstrike?', '1', '1', '50086', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30537', '1', '0', 'Where is Elder Stonebeard?', '1', '1', '50115', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30537', '2', '0', 'Where is Elder Muraco?', '1', '1', '50091', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30537', '3', '0', 'Where is Elder Yurauk?', '1', '1', '50129', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30371', '1', '0', 'Where is Elder Arp?', '1', '1', '50055', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30371', '2', '0', 'Where is Elder Sardis?', '1', '1', '50104', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30371', '3', '0', 'Where is Elder Bluewolf?', '1', '1', '50062', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15570', '1', '0', 'Where is Elder Bladesing?', '1', '1', '50059', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15570', '2', '0', 'Where is Elder Thunderhorn?', '1', '1', '50121', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15573', '1', '0', 'Where is Elder Dreamseer?', '1', '1', '50069', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15573', '2', '0', 'Where is Elder Skyseer?', '1', '1', '50108', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15573', '3', '0', 'Where is Elder Thunderhorn?', '1', '1', '50121', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15573', '4', '0', 'Where is Elder Wildmane?', '1', '1', '50125', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15605', '1', '0', 'Where is Elder Nightwind?', '1', '1', '50092', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15605', '2', '0', 'Where is Elder Skygleam?', '1', '1', '50107', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15605', '3', '0', 'Where is Elder Starweave?', '1', '1', '50114', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15605', '4', '0', 'Where is Elder Stonespire?', '1', '1', '50117', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15557', '1', '0', 'Where is Elder Dawnstrider?', '1', '1', '50068', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15557', '2', '0', 'Where is Elder Hammershout?', '1', '1', '50076', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15557', '3', '0', 'Where is Elder Stormbrow?', '1', '1', '50118', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15557', '4', '0', 'Where is Elder Winterhoof?', '1', '1', '50128', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15572', '1', '0', 'Where is Elder Darkhorn?', '1', '1', '50067', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15572', '2', '0', 'Where is Elder High Mountain?', '1', '1', '50077', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15572', '3', '0', 'Where is Elder Moonwarden?', '1', '1', '50087', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15572', '4', '0', 'Where is Elder Windtotem?', '1', '1', '50127', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30362', '1', '0', 'Where is Elder Wanikaya?', '1', '1', '50122', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30362', '2', '0', 'Where is Elder Bluewolf?', '1', '1', '50062', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30362', '3', '0', 'Where is Elder Arp?', '1', '1', '50055', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30348', '1', '0', 'Where is Elder Arp?', '1', '1', '50055', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30348', '2', '0', 'Where is Elder Pamuya?', '1', '1', '50097', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30348', '3', '0', 'Where is Elder Igasho?', '1', '1', '50079', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30348', '4', '0', 'Where is Elder Northal?', '1', '1', '50093', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15558', '1', '0', 'Where is Elder Goldwell?', '1', '1', '50072', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15558', '2', '0', 'Where is Elder Ironband?', '1', '1', '50080', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15577', '1', '0', 'Where is Elder Starsong?', '1', '1', '50113', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15577', '2', '0', 'Where is Elder Stormbrow?', '1', '1', '50118', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15577', '3', '0', 'Where is Elder Winterhoof?', '1', '1', '50128', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15600', '1', '0', 'Where is Elder Bladeleaf?', '1', '1', '50058', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15600', '2', '0', 'Where is Elder Bladeswift?', '1', '1', '50060', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15600', '3', '0', 'Where is Elder Nightwind?', '1', '1', '50092', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15600', '4', '0', 'Where is Elder Riversong?', '1', '1', '50130', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15584', '1', '0', 'Where is Elder Dreamseer?', '1', '1', '50069', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15584', '2', '0', 'Where is Elder Morningdew?', '1', '1', '50089', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15584', '3', '0', 'Where is Elder Ragetotem?', '1', '1', '50099', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15584', '4', '0', 'Where is Elder Wildmane?', '1', '1', '50125', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30373', '1', '0', 'Where is Elder Morthie?', '1', '1', '50090', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30373', '2', '0', 'Where is Elder Thoim?', '1', '1', '50120', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30373', '3', '0', 'Where is Elder Nurgen?', '1', '1', '50094', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30373', '4', '0', 'Where is Elder Whurain?', '1', '1', '50124', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15566', '1', '0', 'Where is Elder Graveborn?', '1', '1', '50073', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15566', '2', '0', 'Where is Elder Farwhisper?', '1', '1', '50071', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15566', '3', '0', 'Where is Elder Meadowrun?', '1', '1', '50084', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15566', '4', '0', 'Where is Elder Moonstrike?', '1', '1', '50086', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15566', '5', '0', 'Where is Elder Windrun?', '1', '1', '50126', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15556', '1', '0', 'Where is Elder Grimtotem?', '1', '1', '50075', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15556', '2', '0', 'Where is Elder Mistwalker?', '1', '1', '50085', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15596', '1', '0', 'Where is Elder Starsong?', '1', '1', '50113', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15596', '2', '0', 'Where is Elder Winterhoof?', '1', '1', '50128', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15593', '1', '0', 'Where is Elder Bellowrage?', '1', '1', '50057', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15593', '2', '0', 'Where is Elder Starglade?', '1', '1', '50112', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15593', '3', '0', 'Where is Elder Skychaser?', '1', '1', '50106', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15593', '4', '0', 'Where is Elder Stormbrow?', '1', '1', '50118', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15593', '5', '0', 'Where is Elder Winterhoof?', '1', '1', '50128', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15601', '1', '0', 'Where is Elder Bladeswift?', '1', '1', '50060', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15601', '2', '0', 'Where is Elder Nightwind?', '1', '1', '50092', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15601', '3', '0', 'Where is Elder Riversong?', '1', '1', '50130', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30375', '1', '0', 'Where is Elder Fargal?', '1', '1', '50070', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30375', '2', '0', 'Where is Elder Yurauk?', '1', '1', '50129', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30375', '3', '0', 'Where is Elder Muraco?', '1', '1', '50091', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30375', '4', '0', 'Where is Elder Graymane?', '1', '1', '50074', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30375', '5', '0', 'Where is Elder Tauros?', '1', '1', '50119', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30375', '6', '0', 'Where is Elder Ohanzee?', '1', '1', '50096', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15560', '1', '0', 'Where is Elder Ironband?', '1', '1', '50080', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15574', '1', '0', 'Where is Elder Brightspear?', '1', '1', '50063', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15574', '2', '0', 'Where is Elder Nightwind?', '1', '1', '50092', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15574', '3', '0', 'Where is Elder Riversong?', '1', '1', '50130', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15565', '1', '0', 'Where is Elder Hammershout?', '1', '1', '50076', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15565', '2', '0', 'Where is Elder Rumblerock?', '1', '1', '50131', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15565', '3', '0', 'Where is Elder Skychaser?', '1', '1', '50106', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15565', '4', '0', 'Where is Elder Starsong?', '1', '1', '50113', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30369', '1', '0', 'Where is Elder Lunaro?', '1', '1', '50083', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30369', '2', '0', 'Where is Elder Ohanzee?', '1', '1', '50096', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30369', '3', '0', 'Where is Elder Skywarden?', '1', '1', '50109', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30369', '4', '0', 'Where is Elder Beldak?', '1', '1', '50056', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30369', '5', '0', 'Where is Elder Kilias?', '1', '1', '50082', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30369', '6', '0', 'Where is Elder Graymane?', '1', '1', '50074', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30369', '7', '0', 'Where is Elder Muraco?', '1', '1', '50091', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30363', '1', '0', 'Where is Elder Nurgen?', '1', '1', '50094', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30363', '2', '0', 'Where is Elder Morthie?', '1', '1', '50090', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30363', '3', '0', 'Where is Elder Skywarden?', '1', '1', '50109', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30363', '4', '0', 'Where is Elder Whurain?', '1', '1', '50124', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15583', '1', '0', 'Where is Elder Bladesing?', '1', '1', '50059', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15583', '2', '0', 'Where is Elder Dreamseer?', '1', '1', '50069', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15583', '3', '0', 'Where is Elder Primestone?', '1', '1', '50098', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15583', '4', '0', 'Where is Elder Ragetotem?', '1', '1', '50099', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15583', '5', '0', 'Where is Elder Wildmane?', '1', '1', '50125', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30365', '1', '0', 'Where is Elder Sandrene?', '1', '1', '50103', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30365', '2', '0', 'Where is Elder Bluewolf?', '1', '1', '50062', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30365', '3', '0', 'Where is Elder Arp?', '1', '1', '50055', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30365', '4', '0', 'Where is Elder Pamuya?', '1', '1', '50097', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15580', '1', '0', 'Where is Elder Bloodhoof?', '1', '1', '50061', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15580', '2', '0', 'Where is Elder Darkcore?', '1', '1', '50066', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15580', '3', '0', 'Where is Elder Darkhorn?', '1', '1', '50067', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15580', '4', '0', 'Where is Elder Ironband?', '1', '1', '50080', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15580', '5', '0', 'Where is Elder Windtotem?', '1', '1', '50127', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30372', '1', '0', 'Where is Elder Jarten?', '1', '1', '50081', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30372', '2', '0', 'Where is Elder Chogan\'gada?', '1', '1', '50065', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30372', '3', '0', 'Where is Elder Lunaro?', '1', '1', '50083', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30372', '4', '0', 'Where is Elder Beldak?', '1', '1', '50056', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30372', '5', '0', 'Where is Elder Kilias?', '1', '1', '50082', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15578', '1', '0', 'Where is Elder Dreamseer?', '1', '1', '50069', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15578', '2', '0', 'Where is Elder Ragetotem?', '1', '1', '50099', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15578', '3', '0', 'Where is Elder Skyseer?', '1', '1', '50108', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15578', '4', '0', 'Where is Elder Thunderhorn?', '1', '1', '50121', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15592', '1', '0', 'Where is Elder Farwhisper?', '1', '1', '50071', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15592', '2', '0', 'Where is Elder Meadowrun?', '1', '1', '50084', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15592', '3', '0', 'Where is Elder Moonstrike?', '1', '1', '50086', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15592', '4', '0', 'Where is Elder Snowcrown?', '1', '1', '50110', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15582', '1', '0', 'Where is Elder Bloodhoof?', '1', '1', '50061', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15582', '2', '0', 'Where is Elder Darkhorn?', '1', '1', '50067', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15582', '3', '0', 'Where is Elder High Mountain?', '1', '1', '50077', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15582', '4', '0', 'Where is Elder Moonwarden?', '1', '1', '50087', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15582', '5', '0', 'Where is Elder Morningdew?', '1', '1', '50089', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15582', '6', '0', 'Where is Elder Wheathoof?', '1', '1', '50123', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15582', '7', '0', 'Where is Elder Runetotem?', '1', '1', '50132', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15576', '1', '0', 'Where is Elder Rumblerock?', '1', '1', '50131', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15576', '2', '0', 'Where is Elder Skychaser?', '1', '1', '50106', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15576', '3', '0', 'Where is Elder Starglade?', '1', '1', '50112', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('15576', '4', '0', 'Where is Elder Starsong?', '1', '1', '50113', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30535', '1', '0', 'Where is Elder Fargal?', '1', '1', '50070', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30535', '2', '0', 'Where is Elder Stonebeard?', '1', '1', '50115', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30535', '3', '0', 'Where is Elder Nurgen?', '1', '1', '50094', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('30535', '4', '0', 'Where is Elder Muraco?', '1', '1', '50091', '0', '0', '0', '0', null);
REPLACE INTO `conditions` VALUES ('15', '30364', '1', '0', '14', '13029', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30364', '2', '0', '14', '13012', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30357', '1', '0', '14', '13025', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30357', '2', '0', '14', '13030', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30357', '3', '0', '14', '13023', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30357', '4', '0', '14', '13027', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15563', '1', '0', '14', '8713', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15595', '1', '0', '14', '8718', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15595', '2', '0', '14', '8720', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15599', '1', '0', '14', '8654', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15599', '2', '0', '14', '8681', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15598', '1', '0', '14', '8715', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15598', '2', '0', '14', '8866', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15598', '3', '0', '14', '8646', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15598', '4', '0', '14', '8720', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15598', '5', '0', '14', '8721', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15575', '1', '0', '14', '8686', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15575', '2', '0', '14', '8717', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15575', '3', '0', '14', '8678', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15575', '4', '0', '14', '8680', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30368', '1', '0', '14', '13029', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30368', '2', '0', '14', '13024', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30368', '3', '0', '14', '13018', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30368', '4', '0', '14', '13014', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15606', '1', '0', '14', '8723', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15606', '2', '0', '14', '8672', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15871', '1', '0', '14', '8718', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15871', '2', '0', '14', '8646', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15871', '3', '0', '14', '8653', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15871', '4', '0', '14', '8651', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30538', '1', '0', '14', '13017', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30538', '2', '0', '14', '13025', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30538', '3', '0', '14', '13030', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15564', '1', '0', '14', '8677', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15564', '2', '0', '14', '8652', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15564', '3', '0', '14', '8651', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15564', '4', '0', '14', '8714', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15564', '5', '0', '14', '8678', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15579', '1', '0', '14', '8648', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15579', '2', '0', '14', '8651', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15579', '3', '0', '14', '8678', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15579', '4', '0', '14', '8670', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15579', '5', '0', '14', '8680', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15585', '1', '0', '14', '8636', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15586', '1', '0', '14', '8671', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15586', '2', '0', '14', '8682', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15586', '3', '0', '14', '8681', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15586', '4', '0', '14', '8676', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30359', '1', '0', '14', '13066', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30359', '2', '0', '14', '13020', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30359', '3', '0', '14', '13032', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30359', '4', '0', '14', '13028', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15607', '1', '0', '14', '8650', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15607', '2', '0', '14', '8688', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15569', '1', '0', '14', '8866', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15569', '2', '0', '14', '8651', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15569', '3', '0', '14', '8642', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15568', '1', '0', '14', '8648', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15568', '2', '0', '14', '8722', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15568', '3', '0', '14', '8714', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15568', '4', '0', '14', '8645', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15568', '5', '0', '14', '8650', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30370', '1', '0', '14', '13035', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30370', '2', '0', '14', '13020', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30370', '3', '0', '14', '13028', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30370', '4', '0', '14', '13023', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30370', '5', '0', '14', '13027', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30370', '6', '0', '14', '13066', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30370', '7', '0', '14', '13019', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15581', '1', '0', '14', '8685', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15581', '2', '0', '14', '8724', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15581', '3', '0', '14', '8635', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15562', '1', '0', '14', '8718', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15562', '2', '0', '14', '8866', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15562', '3', '0', '14', '8636', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15562', '4', '0', '14', '8649', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15588', '1', '0', '14', '8673', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15588', '2', '0', '14', '8717', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15588', '3', '0', '14', '8724', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15588', '4', '0', '14', '8670', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15588', '5', '0', '14', '8680', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15559', '1', '0', '14', '8714', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30536', '1', '0', '14', '13033', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30536', '2', '0', '14', '13029', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30536', '3', '0', '14', '13012', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15567', '1', '0', '14', '8866', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15567', '2', '0', '14', '8653', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15567', '3', '0', '14', '8619', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15567', '4', '0', '14', '8642', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15567', '5', '0', '14', '8644', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30531', '1', '0', '14', '13067', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30531', '2', '0', '14', '13025', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30531', '3', '0', '14', '13030', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30534', '1', '0', '14', '13035', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30534', '2', '0', '14', '13027', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30534', '3', '0', '14', '13022', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30534', '4', '0', '14', '13028', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30367', '1', '0', '14', '13017', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30367', '2', '0', '14', '13067', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30367', '3', '0', '14', '13031', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30367', '4', '0', '14', '13013', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30367', '5', '0', '14', '13023', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15602', '1', '0', '14', '8652', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15602', '2', '0', '14', '8714', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15602', '3', '0', '14', '8650', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15602', '4', '0', '14', '8688', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15587', '1', '0', '14', '8679', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15587', '2', '0', '14', '8724', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15587', '3', '0', '14', '8635', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15594', '1', '0', '14', '8648', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15594', '2', '0', '14', '8652', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15594', '3', '0', '14', '8643', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15594', '4', '0', '14', '8722', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15594', '5', '0', '14', '8645', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15594', '6', '0', '14', '8650', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15594', '7', '0', '14', '8688', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15597', '1', '0', '14', '8673', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15597', '2', '0', '14', '8686', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15597', '3', '0', '14', '8724', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15597', '4', '0', '14', '8670', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15597', '5', '0', '14', '8680', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15549', '1', '0', '14', '8651', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15604', '1', '0', '14', '8679', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15604', '2', '0', '14', '8686', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15604', '3', '0', '14', '8685', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15604', '4', '0', '14', '8717', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15604', '5', '0', '14', '8682', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15604', '6', '0', '14', '8680', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30358', '1', '0', '14', '13022', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30358', '2', '0', '14', '13019', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30358', '3', '0', '14', '13031', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30358', '4', '0', '14', '13029', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30358', '5', '0', '14', '13030', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30374', '1', '0', '14', '13035', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30374', '2', '0', '14', '13020', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30374', '3', '0', '14', '13028', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30374', '4', '0', '14', '13023', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30374', '5', '0', '14', '13028', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30374', '6', '0', '14', '13066', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15603', '1', '0', '14', '8726', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15603', '2', '0', '14', '8725', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15603', '3', '0', '14', '8720', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15603', '4', '0', '14', '8721', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15603', '5', '0', '14', '8672', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30360', '1', '0', '14', '13021', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30360', '2', '0', '14', '13033', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30360', '3', '0', '14', '13012', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30533', '1', '0', '14', '13028', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30533', '2', '0', '14', '13020', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30533', '3', '0', '14', '13028', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30533', '4', '0', '14', '13066', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15561', '1', '0', '14', '8652', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15561', '2', '0', '14', '8643', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15561', '3', '0', '14', '8714', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30537', '1', '0', '14', '13020', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30537', '2', '0', '14', '13032', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30537', '3', '0', '14', '13066', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30371', '1', '0', '14', '13033', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30371', '2', '0', '14', '13012', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30371', '3', '0', '14', '13026', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15570', '1', '0', '14', '8719', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15570', '2', '0', '14', '8681', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15573', '1', '0', '14', '8684', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15573', '2', '0', '14', '8682', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15573', '3', '0', '14', '8681', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15573', '4', '0', '14', '8676', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15605', '1', '0', '14', '8723', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15605', '2', '0', '14', '8720', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15605', '3', '0', '14', '8721', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15605', '4', '0', '14', '8672', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15557', '1', '0', '14', '8683', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15557', '2', '0', '14', '8646', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15557', '3', '0', '14', '8649', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15557', '4', '0', '14', '8674', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15572', '1', '0', '14', '8677', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15572', '2', '0', '14', '8686', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15572', '3', '0', '14', '8717', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15572', '4', '0', '14', '8680', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30362', '1', '0', '14', '13024', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30362', '2', '0', '14', '13026', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30362', '3', '0', '14', '13033', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30348', '1', '0', '14', '13033', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30348', '2', '0', '14', '13029', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30348', '3', '0', '14', '13021', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30348', '4', '0', '14', '13016', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15558', '1', '0', '14', '8653', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15558', '2', '0', '14', '8651', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15577', '1', '0', '14', '8713', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15577', '2', '0', '14', '8649', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15577', '3', '0', '14', '8674', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15600', '1', '0', '14', '8715', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15600', '2', '0', '14', '8718', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15600', '3', '0', '14', '8723', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15600', '4', '0', '14', '8725', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15584', '1', '0', '14', '8684', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15584', '2', '0', '14', '8724', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15584', '3', '0', '14', '8671', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15584', '4', '0', '14', '8676', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30373', '1', '0', '14', '13014', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30373', '2', '0', '14', '13019', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30373', '3', '0', '14', '13022', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30373', '4', '0', '14', '13030', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15566', '1', '0', '14', '8652', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15566', '2', '0', '14', '8727', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15566', '3', '0', '14', '8722', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15566', '4', '0', '14', '8714', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15566', '5', '0', '14', '8688', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15556', '1', '0', '14', '8679', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15556', '2', '0', '14', '8685', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15596', '1', '0', '14', '8713', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15596', '2', '0', '14', '8674', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15593', '1', '0', '14', '8647', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15593', '2', '0', '14', '8716', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15593', '3', '0', '14', '8675', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15593', '4', '0', '14', '8649', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15593', '5', '0', '14', '8674', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15601', '1', '0', '14', '8718', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15601', '2', '0', '14', '8723', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15601', '3', '0', '14', '8725', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30375', '1', '0', '14', '13028', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30375', '2', '0', '14', '13066', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30375', '3', '0', '14', '13032', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30375', '4', '0', '14', '13028', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30375', '5', '0', '14', '13027', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30375', '6', '0', '14', '13035', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15560', '1', '0', '14', '8651', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15574', '1', '0', '14', '8726', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15574', '2', '0', '14', '8723', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15574', '3', '0', '14', '8725', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15565', '1', '0', '14', '8646', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15565', '2', '0', '14', '8636', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15565', '3', '0', '14', '8675', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15565', '4', '0', '14', '8713', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30369', '1', '0', '14', '13025', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30369', '2', '0', '14', '13035', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30369', '3', '0', '14', '13031', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30369', '4', '0', '14', '13013', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30369', '5', '0', '14', '13023', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30369', '6', '0', '14', '13028', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30369', '7', '0', '14', '13032', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30363', '1', '0', '14', '13022', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30363', '2', '0', '14', '13014', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30363', '3', '0', '14', '13031', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30363', '4', '0', '14', '13030', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15583', '1', '0', '14', '8719', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15583', '2', '0', '14', '8684', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15583', '3', '0', '14', '8654', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15583', '4', '0', '14', '8671', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15583', '5', '0', '14', '8676', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30365', '1', '0', '14', '13018', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30365', '2', '0', '14', '13026', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30365', '3', '0', '14', '13033', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30365', '4', '0', '14', '13029', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15580', '1', '0', '14', '8673', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15580', '2', '0', '14', '8648', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15580', '3', '0', '14', '8677', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15580', '4', '0', '14', '8651', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15580', '5', '0', '14', '8680', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30372', '1', '0', '14', '13017', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30372', '2', '0', '14', '13067', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30372', '3', '0', '14', '13025', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30372', '4', '0', '14', '13013', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30372', '5', '0', '14', '13023', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15578', '1', '0', '14', '8684', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15578', '2', '0', '14', '8671', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15578', '3', '0', '14', '8682', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15578', '4', '0', '14', '8681', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15592', '1', '0', '14', '8727', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15592', '2', '0', '14', '8722', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15592', '3', '0', '14', '8714', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15592', '4', '0', '14', '8650', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15582', '1', '0', '14', '8673', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15582', '2', '0', '14', '8677', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15582', '3', '0', '14', '8686', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15582', '4', '0', '14', '8717', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15582', '5', '0', '14', '8724', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15582', '6', '0', '14', '8678', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15582', '7', '0', '14', '8670', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15576', '1', '0', '14', '8636', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15576', '2', '0', '14', '8675', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15576', '3', '0', '14', '8716', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '15576', '4', '0', '14', '8713', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30535', '1', '0', '14', '13028', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30535', '2', '0', '14', '13020', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30535', '3', '0', '14', '13022', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '30535', '4', '0', '14', '13032', '0', '0', '0', '', null);

# Shauren
-- Make Lord Marrowgar and Lady Deathwhisper bind players to instance
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|0x1 WHERE `entry` IN (36612,36855);
-- Add trigger flag
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|0x80 WHERE `entry`=37948;
-- Unclickable flag for doors
UPDATE `gameobject_template` SET `flags`=`flags`|0x1 WHERE `entry` IN (201910,201911,201857,201563);
-- Hungering Cold
DELETE FROM `spell_scripts` WHERE `id`=49203;
INSERT INTO `spell_scripts`(`id`,`effIndex`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES (49203,0,0,15,51209,3,1,0,0,0,0);
UPDATE `creature_template` SET `vehicleId`=533 WHERE `entry`=36619 AND `vehicleId`=0;
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|128,minlevel=80,maxlevel=80 WHERE `entry`=36672;
-- Achievements
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (12775,12775,13393,13393,12962,12962,13394,13394,12770,12771,12772,12773,12945,12946,12947,12948,13039,13040,13041,13042,13050,13051,13052,13053);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`) VALUES
(12775,12,0,0), -- Boned (10 player) mode requirement (10N)
(12775,18,0,0), -- Boned (10 player) script requirement
(13393,12,2,0), -- Boned (10 player) mode requirement (10H)
(13393,18,0,0), -- Boned (10 player) script requirement
(12962,12,1,0), -- Boned (25 player) mode requirement (25N)
(12962,18,0,0), -- Boned (25 player) script requirement
(13394,12,3,0), -- Boned (25 player) mode requirement (25H)
(13394,18,0,0), -- Boned (25 player) script requirement
(12770,12,0,0), -- Storming the Citadel (10 player), Lord Marrowgar, mode requirement (10N)
(12771,12,0,0), -- Storming the Citadel (10 player), Claim victory in the Gunship Battle, mode requirement (10N)
(12772,12,0,0), -- Storming the Citadel (10 player), The Deathbringer, mode requirement (10N)
(12773,12,0,0), -- Storming the Citadel (10 player), Lady Deathwhisper, mode requirement (10N)
(12945,12,1,0), -- Storming the Citadel (25 player), Lord Marrowgar, mode requirement (25N)
(12946,12,1,0), -- Storming the Citadel (25 player), The Deathbringer, mode requirement (25N)
(12947,12,1,0), -- Storming the Citadel (25 player), Claim victory in the Gunship Battle, mode requirement (25N)
(12948,12,1,0), -- Storming the Citadel (25 player), Lady Deathwhisper, mode requirement (25N)
(13039,12,2,0), -- Heroic: Storming the Citadel (10 player), Lord Marrowgar, mode requirement (10H)
(13040,12,2,0), -- Heroic: Storming the Citadel (10 player), Lady Deathwhisper, mode requirement (10H)
(13041,12,2,0), -- Heroic: Storming the Citadel (10 player), Claim victory in the Gunship Battle, mode requirement (10H)
(13042,12,2,0), -- Heroic: Storming the Citadel (10 player), The Deathbringer, mode requirement (10H)
(13050,12,3,0), -- Heroic: Storming the Citadel (25 player), Lord Marrowgar, mode requirement (25H)
(13051,12,3,0), -- Heroic: Storming the Citadel (25 player), Lady Deathwhisper, mode requirement (25H)
(13052,12,3,0), -- Heroic: Storming the Citadel (25 player), Claim victory in the Gunship Battle, mode requirement (25H)
(13053,12,3,0); -- Heroic: Storming the Citadel (25 player), The Deathbringer, mode requirement (25H)

# John Holiver
-- Trial of the Crusader 
-- achievement_reward
DELETE FROM achievement_reward WHERE `entry` IN (4078,4080,4156,4079);
INSERT INTO achievement_reward
(`entry`,`title_A`,`title_H`,`item`,`sender`,`subject`,`text`)
VALUES
(4078,170,170,0,0, '', ''),
(4080,171,171,0,0, '', ''),
(4156,0,0,49096,36095, 'A Tribute to Immortality', 'Dear $N,$B$BTales of your recent performance in the Trial of the Grand Crusader will be told,and retold,for ages to come. As the Argent Crusade issued its call for the greatest champions of Azeroth to test their mettle in the crucible of the Coliseum,I hoped against hope that beacons of light such as you and your companions might emerge from the fray.$B$BWe will need you direly in the coming battle against the Lich King. But on this day,rejoice and celebrate your glorious accomplishment and accept this gift of one of our very finest warhorses. When the Scourge see its banner looming on the horizon,hero,their end shall be nigh!$B$BYours with Honor,$BTirion Fordring'),
(4079,0,0,49098,36095, 'A Tribute to Immortality', 'Dear $N,$B$BTales of your recent performance in the Trial of the Grand Crusader will be told,and retold,for ages to come. As the Argent Crusade issued its call for the greatest champions of Azeroth to test their mettle in the crucible of the Coliseum,I hoped against hope that beacons of light such as you and your companions might emerge from the fray.$B$BWe will need you direly in the coming battle against the Lich King. But on this day,rejoice and celebrate your glorious accomplishment and accept this gift of one of our very finest warhorses. When the Scourge see its banner looming on the horizon,hero,their end shall be nigh!$B$BYours with Honor,$BTirion Fordring');
-- achievement_criteria_data
DELETE FROM achievement_criteria_data WHERE `criteria_id` IN (11542,11546,11547,11549,11678,11679,11680,11681,11682,11683,11684,11685,11686,11687,11688,11689,11690,11691,11692,11693,11778,11779,11780,11799,11800,11801,11802,11803,11804,11818,11838,11839,11860,11861,11862,12116,12198,12258,12278,12279,12280,12281,12338,12339,12340,12341,12342,12343,12344,12345,12346,12347,12348,12349,12350,12358,12359,12360);
INSERT INTO achievement_criteria_data
(`criteria_id`,`type`,`value1`,`value2`)
VALUES
(11779,12,0,0),-- Upper Back Pain (10 player); Icehowl - mode check
(11779,18,0,0),-- Upper Back Pain (10 player); Icehowl - script requirement
(11802,12,2,0),-- Upper Back Pain (10 player); Icehowl - mode check
(11802,18,0,0),-- Upper Back Pain (10 player); Icehowl - script requirement
(11803,12,0,0),-- Resilience Will Fix It (10 player); Faction Champions - mode check
(11804,12,2,0),-- Resilience Will Fix It (10 player); Faction Champions - mode check
(11778,12,0,0),-- Salt and Pepper (10 player); Val'kyr Twins - mode check
(12258,12,2,0),-- Salt and Pepper (10 player); Val'kyr Twins - mode check
(12116,12,0,0),-- The Traitor King (10 player); Swarm Scarabs Slain - mode check
(12344,12,2,0),-- A Tribute to Skill (10 player); Complete the Trial of the Grand Crusader - mode check
(12344,18,0,0),-- A Tribute to Skill (10 player); Complete the Trial of the Grand Crusader - script requirement
(12347,12,2,0),-- A Tribute to Mad Skill (10 player); Complete the Trial of the Grand Crusader - mode check
(12347,18,0,0),-- A Tribute to Mad Skill (10 player); Complete the Trial of the Grand Crusader - script requirement
(12349,12,2,0),-- A Tribute to Insanity (10 player); Complete the Trial of the Grand Crusader - mode check
(12349,18,0,0),-- A Tribute to Insanity (10 player); Complete the Trial of the Grand Crusader - script requirement
(11542,12,3,0),-- Call of the Grand Crusade (25 player); Defeat the Beasts of Northrend - mode check
(11546,12,3,0),-- Call of the Grand Crusade (25 player); Defeat Lord Jaraxxus - mode check
(11547,12,3,0),-- Call of the Grand Crusade (25 player); Defeat the Twin Val'kyr - mode check
(11549,12,3,0),-- Call of the Grand Crusade (25 player); Complete the Trial of the Grand Crusader - mode check
(11678,12,3,0),-- Call of the Grand Crusade (25 player); Defeat the Faction Champions - mode check
(11780,12,1,0),-- Upper Back Pain (25 player); Icehowl - mode check
(11780,18,0,0),-- Upper Back Pain (25 player); Icehowl - script requirement
(11801,12,3,0),-- Upper Back Pain (25 player); Icehowl - mode check
(11801,18,0,0),-- Upper Back Pain (25 player); Icehowl - script requirement
(11799,12,1,0),-- Resilience Will Fix It (25 player); Faction Champions - mode check
(11800,12,3,0),-- Resilience Will Fix It (25 player); Faction Champions - mode check
(11818,12,1,0),-- Salt and Pepper (25 player); Val'kyr Twins - mode check
(11860,12,3,0),-- Salt and Pepper (25 player); Val'kyr Twins - mode check
(12198,12,1,0),-- The Traitor King (25 player); Swarm Scarabs Slain - mode check
(12338,12,3,0),-- A Tribute to Skill (25 player); Complete the Trial of the Grand Crusader - mode check
(12338,18,0,0),-- A Tribute to Skill (25 player); Complete the Trial of the Grand Crusader - script requirement
(12341,12,3,0),-- A Tribute to Mad Skill (25 player); Complete the Trial of the Grand Crusader - mode check
(12341,18,0,0),-- A Tribute to Mad Skill (25 player); Complete the Trial of the Grand Crusader - script requirement
(12343,12,3,0),-- A Tribute to Insanity (25 player); Complete the Trial of the Grand Crusader - mode check
(12343,18,0,0),-- A Tribute to Insanity (25 player); Complete the Trial of the Grand Crusader - script requirement
(11679,12,2,0),-- Call of the Crusade (25 player); Defeat the Beasts of Northrend - mode check
(11680,12,2,0),-- Call of the Crusade (25 player); Defeat Lord Jaraxxus - mode check
(11681,12,2,0),-- Call of the Crusade (25 player); Defeat the Faction Champions - mode check
(11682,12,2,0),-- Call of the Crusade (25 player); Defeat the Twin Val'kyr - mode check
(11683,12,2,0),-- Call of the Crusade (25 player); Complete the Trial of the Crusader - mode check
(11684,12,0,0),-- Call of the Crusade (10 player); Defeat the Beasts of Northrend - mode check
(11685,12,0,0),-- Call of the Crusade (10 player); Defeat Lord Jaraxxus - mode check
(11686,12,0,0),-- Call of the Crusade (10 player); Defeat the Faction Champions - mode check
(11687,12,0,0),-- Call of the Crusade (10 player); Defeat the Twin Val'kyr - mode check
(11688,12,0,0),-- Call of the Crusade (10 player); Complete the Trial of the Crusader - mode check
(11689,12,2,0),-- Call of the Grand Crusade (10 player); Defeat the Beasts of Northrend - mode check
(11690,12,2,0),-- Call of the Grand Crusade (10 player); Defeat Lord Jaraxxus - mode check
(11691,12,2,0),-- Call of the Grand Crusade (10 player); Defeat the Faction Champions - mode check
(11692,12,2,0),-- Call of the Grand Crusade (10 player); Defeat the Twin Val'kyr - mode check
(11693,12,2,0),-- Call of the Grand Crusade (10 player); Complete the Trial of the Grand Crusader - mode check
(12280,12,0,0),-- Not One,But Two Jormungars (10 player); Kill Acidmaw & Dreadscale within 10sec - mode check
(12281,12,2,0),-- Not One,But Two Jormungars (10 player); Kill Acidmaw & Dreadscale within 10sec - mode check
(12278,12,1,0),-- Not One,But Two Jormungars (25 player); Kill Acidmaw & Dreadscale within 10sec - mode check
(12279,12,3,0),-- Not One,But Two Jormungars (25 player); Kill Acidmaw & Dreadscale within 10sec - mode check
(11838,12,0,0),-- Three Sixty Pain Spike (10 player); Lord Jaraxxus - mode check
(11838,18,0,0),-- Three Sixty Pain Spike (10 player); Lord Jaraxxus - script requirement
(11861,12,2,0),-- Three Sixty Pain Spike (10 player); Lord Jaraxxus - mode check
(11861,18,0,0),-- Three Sixty Pain Spike (10 player); Lord Jaraxxus - script requirement
(11839,12,1,0),-- Three Sixty Pain Spike (25 player); Lord Jaraxxus - mode check
(11839,18,0,0),-- Three Sixty Pain Spike (25 player); Lord Jaraxxus - script requirement
(11862,12,3,0),-- Three Sixty Pain Spike (25 player); Lord Jaraxxus - mode check
(11862,18,0,0),-- Three Sixty Pain Spike (25 player); Lord Jaraxxus - script requirement
(12350,12,3,0),-- Realm First! Grand Crusader; Complete the Trial of the Grand Crusader - mode check
(12350,18,0,0),-- Realm First! Grand Crusader; Complete the Trial of the Grand Crusader - script requirement
(12358,12,3,0),-- A Tribute to Immortality; Complete the Trial of the Grand Crusader - mode check
(12358,14,67,0),-- A Tribute to Immortality; Complete the Trial of the Grand Crusader - faction check
(12358,18,0,0),-- A Tribute to Immortality; Complete the Trial of the Grand Crusader - script requirement
(12360,12,2,0),-- A Tribute to Dedicated Insanity; Complete the Trial of the Grand Crusader - mode check
(12360,18,0,0),-- A Tribute to Dedicated Insanity; Complete the Trial of the Grand Crusader - script requirement
(12359,12,3,0),-- A Tribute to Immortality; Complete the Trial of the Grand Crusader - mode check
(12359,14,469,0),-- A Tribute to Immortality; Complete the Trial of the Grand Crusader - faction check
(12359,18,0,0); -- A Tribute to Immortality; Complete the Trial of the Grand Crusader - script requirement
-- disables
DELETE FROM `disables` WHERE `entry` IN (12345,12346,12348,12340,12342,12339) AND `sourceType`=4;
INSERT INTO `disables` (`sourceType`,`entry`,`flags`,`comment`) VALUES
(4,12345,0, 'A Tribute to Skill (10 player)'),
(4,12346,0, 'A Tribute to Skill (10 player)'),
(4,12348,0, 'A Tribute to Mad Skill (10 player)'),
(4,12339,0, 'A Tribute to Skill (25 player)'),
(4,12340,0, 'A Tribute to Skill (25 player)'),
(4,12342,0, 'A Tribute to Mad Skill (25 player)');
-- conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (67888,66332,67755,67756,67757,66129,66170,66181);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`) VALUES
(13,67888,18,1,35458, 'Target for Jaraxxus Lightning killing Fizzlebang'),
(13,66332,18,1,34862, 'Target for Anub\'arak summon Nerubian Burrowers'),
(13,67755,18,1,34862, 'Target for Anub\'arak summon Nerubian Burrowers'),
(13,67756,18,1,34862, 'Target for Anub\'arak summon Nerubian Burrowers'),
(13,67757,18,1,34862, 'Target for Anub\'arak summon Nerubian Burrowers'),
(13,66129,18,1,34607, 'Target for Nerubian Burrower\'s Spider Frenzy'),
(13,66170,18,1,34660, 'Target for Anub\'arak to teleport to Spike'),
(13,66181,18,1,34606, 'Target for Anub\'arak Impale Fail');
-- Miscellaneous
-- Gossip options for Toc Announcer
UPDATE `creature_template` SET `npcflag`=1 WHERE `entry` in (34816,3481601,3481602,3481603);
-- Mob_slime_pool
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80 WHERE `entry`=35176;
-- Model and level for Legion Flame Effect
UPDATE `creature_template` SET `minlevel`=82,`maxlevel`=82,`modelid1`=11686,`modelid2`=11686,`modelid3`=11686,`modelid4`=11686 WHERE `entry`=34784;
-- Faction Champions
UPDATE `creature_template` SET `modelid1`=11686,`modelid2`=11686,`modelid3`=11686,`modelid4`=11686 WHERE `entry`=34781;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16  WHERE `creature_template`.`entry` IN ( 34458,34451,34459,34448,34449,34445,34456,34447,34441,34454,34455,34444,34450,34453,3445801,3445101,3445901,3444801,3444901,3444501,3445601,3444701,3444101,3445401,3445501,3444401,3445001,3445301,3445802,3445102,3445902,3444802,3444902,3444502,3445602,3444702,3444102,3445402,3445502,3444402,3445002,3445302,3445803,3445103,3445903,3444803,3444903,3444503,3445603,3444703,3444103,3445403,3445503,3444403,3445003,3445303);
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16  WHERE `creature_template`.`entry` IN ( 34461,34460,34469,34467,34468,34465,34471,34466,34473,34472,34463,34470,34474,34475,3446101,3446001,3446901,3446701,3446801,3446501,3447101,3446601,3447301,3447201,3446301,3447001,3447401,3447501,3446102,3446002,3446902,3446702,3446802,3446502,3447102,3446602,3447302,3447202,3446302,3447002,3447402,3447502,3446103,3446003,3446903,3446703,3446803,3446503,3447103,3446603,3447303,3447203,3446303,3447003,3447403,3447503);
UPDATE `creature_template` SET `mindmg`=388,`maxdmg`=583,`attackpower`=146,`dmg_multiplier`=12 WHERE `entry`=34454;
UPDATE `creature_template` SET `mindmg`=468,`maxdmg`=702,`attackpower`=175,`dmg_multiplier`=10 WHERE `entry`=34472;
-- Valkiries Portal
UPDATE `creature_template` SET `npcflag`=1,`unit_flags`=258 WHERE `entry` IN (34567,34568);
-- Valkiries Balls
UPDATE `creature_template` SET `faction_A`=14,`minlevel`=82,`maxlevel`=82,`faction_H`=14 WHERE entry IN (34628,34630);
-- PROBABLY ERRONEOUS (but that will make it work)
-- Lich King unrooted (he needs to move,so why is he rooted?)
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=35877;
-- Frost Sphere & Nerubian Burrower && Anubarak Spike Faction (so Permafrost can hit players and creatures)
UPDATE `creature_template` SET `faction_A`=1925,`faction_H`=1925 WHERE `creature_template`.`entry` IN (34606,3460601,3460602,3460603);
UPDATE `creature_template` SET `modelid1`=29325,`faction_A`=16,`faction_H`=16 WHERE `creature_template`.`entry` IN (34660,34607,3460701,3460702,3460703);
UPDATE `creature_template` SET `modelid1`=11686 WHERE `creature_template`.`entry` IN (34862,34660);
-- Text for gossips (obviously wrong!)
DELETE FROM `npc_text` WHERE `ID` IN (724001,724002,724003,724004,724005,724006); 
INSERT INTO `npc_text` (`ID`,`Text0_0`) VALUES
(724001, 'Greetings $N! Are you ready to be tested in Crusaders Coliseum?'),
(724002, 'Are you ready for the next stage?'),
(724003, 'Are you ready to fight the champions of the Silver vanguard?'),
(724004, 'Are you ready for the next stage?'),
(724005, 'Are you ready to continue battle with Anub-Arak?');
-- UNSURE
-- Wilfred Fizzlebang Faction
UPDATE `creature_template` SET  `faction_A`=1770,`faction_H`=1770 WHERE `entry`=35458;

# Forum_FIX
DELETE FROM `creature_questrelation` WHERE `quest` = 25199;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25199;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25199;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (39675, 25199);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 39675;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25199;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25199;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (39675, 25199);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=39675;
UPDATE `quest_template` SET `OfferRewardText` = 'You made it through in one piece? You have more gears then I thought, $N!' WHERE `entry` = 25199;
DELETE FROM `creature_questrelation` WHERE `quest` = 25212;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25212;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25212;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (39386, 25212);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 39386;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25212;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25212;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (39386, 25212);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=39386;
UPDATE `quest_template` SET `OfferRewardText` = 'Fantastic work!$B$BThe data I received shows the radiation levels are fully within safety range of our suits. That is excellent news!' WHERE `entry` = 25212;
DELETE FROM `creature_questrelation` WHERE `quest` = 25229;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25229;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25229;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (7937, 25229);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 7937;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25229;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25229;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (39675, 25229);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=39675;
UPDATE `quest_template` SET `Details` = 'Our engineers have been working on getting our battle machines ready for our assault on Gnomeregan, but we''re out of pilots!$B$BWe''ve developed a device called the Motivate-a-Tron, which prevents distraction from other sources and gives the gnome the courage to enlist.$B$BAfter motivating a few Gnome Citizens, lead them out to Captain Tread Sparknozzle out at Steelgrill''s Depot, just south of Ironforge.$B$BOh, and be careful. The device is still a little experimental.$B$B', `OfferRewardText` = 'This is the best group of potential pilots you could find?$B$BOkay, well, I''ll see what I can do.  I''ve been known to turn even the biggest pile of gnarled gears into a smooth-runnin'' fightin'' machine and I expect no less with this lot.$B$BWell, I guess it''s time to work!' WHERE `entry` = 25229;
DELETE FROM `creature_questrelation` WHERE `quest` = 25283;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25283;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25283;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (39678, 25283);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 39678;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25283;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25283;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (39678, 25283);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=39678;
UPDATE `quest_template` SET `OfferRewardText` = 'Oh my.  Their reactions were that different?$B$BNot completely what I was expecting, but I think I have a speech that will do.$B$BJust let me find where I put it...' WHERE `entry` = 25283;
DELETE FROM `creature_questrelation` WHERE `quest` = 25285;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25285;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25285;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (39675, 25285);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 39675;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25285;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25285;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (39675, 25285);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=39675;
UPDATE `quest_template` SET `OfferRewardText` = 'Hey, look at that!  You weren''t blown to bits!' WHERE `entry` = 25285;
DELETE FROM `creature_questrelation` WHERE `quest` = 25286;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25286;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25286;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (39678, 25286);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 39678;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25286;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25286;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (39675, 25286);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=39675;
UPDATE `quest_template` SET `OfferRewardText` = 'Toby is all done with the speech?  Let me see...$B$B<Reads the speech> Pumping pistons! What a fantastic speech! I knew Toby was a good writer, but this is perhaps the best he''s ever written.$B$BI think it''s time to get you out to the battle.' WHERE `entry` = 25286;
DELETE FROM `creature_questrelation` WHERE `quest` = 25287;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25287;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25287;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (39675, 25287);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 39675;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25287;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25287;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (39271, 25287);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=39271;
UPDATE `quest_template` SET `OfferRewardText` = 'This is the final draft, then?  Let me have a look...' WHERE `entry` = 25287;
DELETE FROM `creature_questrelation` WHERE `quest` = 25289;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25289;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25289;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (39675, 25289);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 39675;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25289;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25289;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (39675, 25289);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=39675;
UPDATE `quest_template` SET `OfferRewardText` = 'Hmm... so the left leg servo was activating the right leg?  But I saw the left leg moving...$B$BEh, details.  I''ll get to that later, but two out of three things worked: That isn''t half bad!$B$BThanks for checking this out for me, $N.' WHERE `entry` = 25289;
DELETE FROM `creature_questrelation` WHERE `quest` = 25295;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25295;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25295;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (39675, 25295);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 39675;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25295;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25295;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (39675, 25295);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=39675;
UPDATE `quest_template` SET `OfferRewardText` = 'Hmm... so the bullets had quite a bit of spread?$B$BTo some people that may be a problem... me, though, I see it as a blessing in disguise!$B$BOur enemies will be running all over the place, so with a bit of a spread, the tank drivers won''t need to lead the target!' WHERE `entry` = 25295;
DELETE FROM `creature_questrelation` WHERE `quest` = 25393;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25393;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25393;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (39271, 25393);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 39271;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25393;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25393;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (7937, 25393);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=7937;
UPDATE `quest_template` SET `OfferRewardText` = 'Curses! We had to fall back. But Thermaplugg''s lost, and he knows it... he''s only bought himself time. We hold the surface, and when the radiation clears we''ll assault and recapture Gnomeregan with a force twice this size.' WHERE `entry` = 25393;
DELETE FROM `creature_questrelation` WHERE `quest` = 25444;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25444;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25444;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (40184, 25444);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 40184;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25444;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25444;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (40184, 25444);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=40184;
UPDATE `quest_template` SET `OfferRewardText` = 'These be enough for me purposes. Now comes de hard part.' WHERE `entry` = 25444;
DELETE FROM `creature_questrelation` WHERE `quest` = 25445;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25445;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25445;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (40391, 25445);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 40391;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25445;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25445;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (40391, 25445);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=40391;
UPDATE `quest_template` SET `OfferRewardText` = '$N, you''d be a mighty warrior and a fierce commrade to da Darkspear trolls.  De Echo Isles are OURS now and we couldn''ta done it wit''out ya.$B$BTake dis cloak. Wear it wit pride.  You''d be a member of da tribe now!$B$BIn no time, da trolls will have a home again and we have you to thank for dat.' WHERE `entry` = 25445;
DELETE FROM `creature_questrelation` WHERE `quest` = 25446;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25446;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25446;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (40184, 25446);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 40184;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25446;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25446;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (40184, 25446);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=40184;
UPDATE `quest_template` SET `OfferRewardText` = 'I''m already beginnin'' to see what de frogs are seein''. Ya done it perfectly, $N. Now Vol''jin and I will see what Zalazane be plannin''.' WHERE `entry` = 25446;
DELETE FROM `creature_questrelation` WHERE `quest` = 25461;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25461;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25461;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (40253, 25461);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 40253;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25461;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25461;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (40253, 25461);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=40253;
UPDATE `quest_template` SET `OfferRewardText` = 'Ya found some good ones. I be trainin'' them hard and we won''t stop until we''ve driven Zalazane from our islands.' WHERE `entry` = 25461;
DELETE FROM `creature_questrelation` WHERE `quest` = 25470;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25470;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25470;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (40184, 25470);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 40184;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25470;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25470;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (40391, 25470);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=40391;
UPDATE `quest_template` SET `OfferRewardText` = 'Vanira''s frogs be tellin'' de truth, den? Dis tiger be a druid and an ally? We couldn''t be hopin'' for a better outcome. Dis be a good omen for de coming battle.' WHERE `entry` = 25470;
DELETE FROM `creature_questrelation` WHERE `quest` = 25480;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25480;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25480;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (40391, 25480);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 40391;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25480;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25480;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (40391, 25480);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=40391;
UPDATE `quest_template` SET `OfferRewardText` = 'I will take de spirits'' advice to heart. Wit'' dem behind us and de power of de ancient loas of de Darkspear Tribe, we be ready to reclaim what''s ours!' WHERE `entry` = 25480;
DELETE FROM `creature_questrelation` WHERE `quest` = 25495;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25495;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25495;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (40253, 25495);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 40253;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25495;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25495;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (39654, 25495);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=39654;
UPDATE `quest_template` SET `OfferRewardText` = 'At last, everythin'' be ready. Now, we show Zalazane what happen to dose who defy de Darkspears!' WHERE `entry` = 25495;
DELETE FROM `creature_questrelation` WHERE `quest` = 25500;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 25500;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 25500;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (39678, 25500);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 39678;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 25500;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 25500;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (39675, 25500);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=39675;
UPDATE `quest_template` SET `OfferRewardText` = 'This is the speech from Toby?  Fantastic!$B$BRecruit, you''ve done all we could possibly ask for and the Gnomeregan Army thanks you!$B$BWe''ve got a strike team heading to Gnomeregan now and that wouldn''t have been possible without your assistance.  For all of your help, we''d like you to join the Gnomeregan Reserves!$B$BIt doesn''t pay very well, but you do get this snazzy helmet.  Hang on to that, you might need it someday!' WHERE `entry` = 25500;
DELETE FROM `creature_loot_template` WHERE (`entry`=39945) AND (`item`=54590);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (39945, 54590, 1, 0, 1, 1);
DELETE FROM `creature_loot_template` WHERE (`entry`=39945) AND (`item`=54588);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (39945, 54588, 1, 0, 1, 1);
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|128,minlevel=80,maxlevel=80 WHERE `entry`=36672;
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` IN (27756, 27692);
UPDATE `creature_template` SET `speed_walk` = 1.6, `speed_run` = 1.2 WHERE `entry` IN (27756, 27692);
DELETE FROM `creature_template` WHERE (`entry`=2);
DELETE FROM `creature_template` WHERE (`entry`=1704);
DELETE FROM `creature_template` WHERE (`entry`=1705);
DELETE FROM `creature_template` WHERE (`entry`=1709);
DELETE FROM `creature_template` WHERE (`entry`=1710);
DELETE FROM `creature_template` WHERE (`entry`=1712);
DELETE FROM `creature_template` WHERE (`entry`=10001);
DELETE FROM `creature_template` WHERE (`entry`=10087);
DELETE FROM `creature_template` WHERE (`entry`=10091);
DELETE FROM `creature_template` WHERE (`entry`=10092);
DELETE FROM `creature_template` WHERE (`entry`=11206);
DELETE FROM `creature_template` WHERE (`entry`=12879);
DELETE FROM `creature_template` WHERE (`entry`=14570);
DELETE FROM `creature_template` WHERE (`entry`=14571);
DELETE FROM `creature_template` WHERE (`entry`=14572);
DELETE FROM `creature_template` WHERE (`entry`=14655);
DELETE FROM `creature_template` WHERE (`entry`=14656);
DELETE FROM `creature_template` WHERE (`entry`=19834);
DELETE FROM `creature_template` WHERE (`entry`=20147);
DELETE FROM `creature_template` WHERE (`entry`=21745);
DELETE FROM `creature_template` WHERE (`entry`=23848);
DELETE FROM `creature_template` WHERE (`entry`=27124);
UPDATE `creature_template` SET `difficulty_entry_2` = 0, `difficulty_entry_3` = 0 WHERE `entry` = 10404;
UPDATE `creature_template` SET `KillCredit1` = 0 WHERE `KillCredit1` = 27124;
DELETE FROM `event_scripts` WHERE id=12607 AND datalong=195800;
DELETE FROM `creature_template` WHERE (`entry`=195800);
UPDATE `event_scripts` SET datalong=19549 WHERE id=12608 AND datalong=195801;
DELETE FROM `creature_template` WHERE (`entry`=195801);
UPDATE `creature_template` SET `KillCredit2` = 26096 WHERE `entry` = 25814;

# NeatElves
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(99741, 27806, 0, 1, 1, 0, 357, -4843.8, -861.921, 501.914, 4.87919, 600, 0, 0, 2215, 0, 0, 0),
(99740, 27818, 0, 1, 1, 0, 357, -4843.8, -861.921, 501.914, 4.87919, 600, 0, 0, 2215, 0, 0, 0),
(137960, 27814, 0, 1, 1, 0, 357, -4843.8, -861.921, 501.914, 4.87919, 600, 0, 0, 2215, 0, 0, 0),
(102399,27817, 0, 1, 1, 0, 357, -4843.8, -861.921, 501.914, 4.87919, 600, 0, 0, 2215, 0, 0, 0),
(128283, 27813, 0, 1, 1, 0, 357, -4843.8, -861.921, 501.914, 4.87919, 600, 0, 0, 2215, 0, 0, 0),
(81627, 27820, 0, 1, 1, 0, 357, -4843.8, -861.921, 501.914, 4.87919, 600, 0, 0, 2215, 0, 0, 0),
(81628, 27812, 0, 1, 1, 0, 357, -4843.8, -861.921, 501.914, 4.87919, 600, 0, 0, 2215, 0, 0, 0),
(81629, 27816, 0, 1, 1, 0, 357, -4843.8, -861.921, 501.914, 4.87919, 600, 0, 0, 2215, 0, 0, 0),
(81630, 27819, 0, 1, 1, 0, 357, -4843.8, -861.921, 501.914, 4.87919, 600, 0, 0, 2215, 0, 0, 0),
(119991, 27811, 0, 1, 1, 0, 357, -4843.8, -861.921, 501.914, 4.87919, 600, 0, 0, 2215, 0, 0, 0),
(112262, 27815, 0, 1, 1, 0, 357, -4843.8, -861.921, 501.914, 4.87919, 600, 0, 0, 2215, 0, 0, 0),
(10968, 27810, 0, 1, 1, 0, 357, -4843.8, -861.921, 501.914, 4.87919, 600, 0, 0, 2215, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(102187, 27806, 1, 1, 1, 0, 0, 1475.8, -4210.23, 43.1424, 4.11898, 600, 0, 0, 2215, 0, 0, 0),
(10973, 27818, 1, 1, 1, 0, 0, 1475.8, -4210.23, 43.1424, 4.11898, 600, 0, 0, 2215, 0, 0, 0),
(10977, 27814, 1, 1, 1, 0, 0, 1475.8, -4210.23, 43.1424, 4.11898, 600, 0, 0, 2215, 0, 0, 0),
(11550, 27817, 1, 1, 1, 0, 0, 1475.8, -4210.23, 43.1424, 4.11898, 600, 0, 0, 2215, 0, 0, 0),
(11660, 27813, 1, 1, 1, 0, 0, 1475.8, -4210.23, 43.1424, 4.11898, 600, 0, 0, 2215, 0, 0, 0),
(11755, 27820, 1, 1, 1, 0, 0, 1475.8, -4210.23, 43.1424, 4.11898, 600, 0, 0, 2215, 0, 0, 0),
(13363, 27812, 1, 1, 1, 0, 0, 1475.8, -4210.23, 43.1424, 4.11898, 600, 0, 0, 2215, 0, 0, 0),
(14050, 27816, 1, 1, 1, 0, 0, 1475.8, -4210.23, 43.1424, 4.11898, 600, 0, 0, 2215, 0, 0, 0),
(14053, 27819, 1, 1, 1, 0, 0, 1475.8, -4210.23, 43.1424, 4.11898, 600, 0, 0, 2215, 0, 0, 0),
(14074, 27811, 1, 1, 1, 0, 0, 1475.8, -4210.23, 43.1424, 4.11898, 600, 0, 0, 2215, 0, 0, 0),
(14075, 27815, 1, 1, 1, 0, 0, 1475.8, -4210.23, 43.1424, 4.11898, 600, 0, 0, 2215, 0, 0, 0),
(14077, 27810, 1, 1, 1, 0, 0, 1475.8, -4210.23, 43.1424, 4.11898, 600, 0, 0, 2215, 0, 0, 0);
DELETE FROM `npc_vendor` WHERE `item` = 37497;
DELETE FROM `npc_vendor` WHERE `item` = 37493;
DELETE FROM `npc_vendor` WHERE `item` = 37496;
DELETE FROM `npc_vendor` WHERE `item` = 37498;
UPDATE `npc_vendor` SET `item` = '37898' WHERE `entry` =27806 AND `item` =37488;
UPDATE `npc_vendor` SET `item` = '37902' WHERE `entry` =27813 AND `item` =37492;
UPDATE `npc_vendor` SET `item` = '37905' WHERE `entry` =27816 AND `item` =37495;
UPDATE `npc_vendor` SET `item` = '37909' WHERE `entry` =27820 AND `item` =37499;
UPDATE `npc_vendor` SET `item` = '37901' WHERE `entry` =27812 AND `item` =37491;
UPDATE `npc_vendor` SET `item` = '37899' WHERE `entry` =27810 AND `item` =37489;
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES ('27815', '37904', '0', '0', '0');
UPDATE `creature_template` SET `npcflag` = '128' WHERE `entry` =27815;
UPDATE `creature_template` SET `gossip_menu_id` = '27806' WHERE `entry` in (27806,27818,27816,27814,27817,27813,27820,27812,27819,27811,27815,27810);
REPLACE INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`) VALUES
(50, '2010-01-01 00:01:00', '2020-01-31 23:59:00', 525600, 43200, 0, 'January'),
(51, '2010-02-01 00:01:00', '2020-02-29 23:59:00', 525600, 40320, 0, 'February'),
(52, '2010-03-01 00:01:00', '2020-03-31 23:59:00', 525600, 43200, 0, 'March'),
(53, '2010-04-01 00:01:00', '2020-04-30 23:59:00', 525600, 43200, 0, 'April'),
(54, '2010-05-01 00:01:00', '2020-05-31 23:59:00', 525600, 43200, 0, 'May'),
(55, '2010-06-01 00:01:00', '2020-06-30 23:59:00', 525600, 43200, 0, 'June'),
(56, '2010-07-01 00:01:00', '2020-07-31 23:59:00', 525600, 43200, 0, 'July'),
(57, '2010-08-01 00:01:00', '2020-08-31 23:59:00', 525600, 43200, 0, 'August'),
(58, '2010-09-01 00:01:00', '2020-09-30 23:59:00', 525600, 43200, 0, 'September'),
(59, '2010-10-01 00:01:00', '2020-10-31 23:59:00', 525600, 43200, 0, 'October'),
(60, '2010-11-01 00:01:00', '2020-11-30 23:59:00', 525600, 43200, 0, 'November'),
(61, '2010-12-01 00:01:00', '2020-12-31 23:59:00', 525600, 43200, 0, 'December');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES ('99741', '50'), ('102187', '50');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES ('99741', '59'), ('10973', '59');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES ('137960', '55'), ('10977', '55');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES ('102399', '58'), ('11550', '58');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES ('128283', '54'), ('11660', '54');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES ('81627', '61'), ('11755', '61');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES ('81628', '53'), ('13363', '53');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES ('81629', '57'), ('14050', '57');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES ('81630', '60'), ('14053', '60');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES ('119991', '52'), ('14074', '52');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES ('10968', '51'), ('14077', '51');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES ('112262', '56'), ('14075', '56');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('3517', '0', '42263', '0'), ('3518', '0', '43961', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('3519', '0', '42261', '0'), ('3520', '0', '42255', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('3521', '0', '42264', '0'), ('3522', '0', '42257', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('3523', '0', '42259', '0'), ('3524', '0', '42258', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('3525', '0', '42260', '0'), ('3526', '0', '42254', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('3515', '0', '42256', '0'), ('3516', '0', '43959', '0');
DELETE FROM gameobject WHERE guid = '72051';
DELETE FROM game_event_gameobject WHERE guid = '72051';
DELETE FROM gameobject WHERE guid = '72048';
DELETE FROM game_event_gameobject WHERE guid = '72048';
DELETE FROM gameobject WHERE guid = '72054';
DELETE FROM game_event_gameobject WHERE guid = '72054';
DELETE FROM gameobject WHERE guid = '72055';
DELETE FROM game_event_gameobject WHERE guid = '72055';
DELETE FROM gameobject WHERE guid = '72034';
DELETE FROM game_event_gameobject WHERE guid = '72034';
DELETE FROM gameobject WHERE guid = '72052';
DELETE FROM game_event_gameobject WHERE guid = '72052';
DELETE FROM gameobject WHERE guid = '72032';
DELETE FROM game_event_gameobject WHERE guid = '72032';
DELETE FROM gameobject WHERE guid = '73384';
DELETE FROM game_event_gameobject WHERE guid = '73384';

# Herurg
UPDATE `creature_template` SET `spell1`=50328 WHERE `entry` IN (27692);
UPDATE `creature_template` SET `spell1`=50232 WHERE `entry` IN (27756);
UPDATE `creature_template` SET `spell1`=49840, `spell2`=49838, `spell3`=49592 WHERE `entry` IN (27755);
UPDATE `gameobject_template` SET `flags` = 48 WHERE `entry` IN (188526, 188527, 188528);

# timmit
Insert into spell_scripts (id,delay,command,datalong,datalong2) values (50630,0,15,52203,1);
Insert into spell_scripts (id,delay,command,datalong,datalong2) values (50630,1,15,52220,1);
UPDATE `creature_ai_scripts` SET `action1_type` = 11, `action1_param1` = 52228 WHERE `id` = 2873951;
UPDATE `creature_ai_scripts` SET `action2_type` = 11, `action2_param1` = 52231, `action3_type` = 41, `action3_param1` = 500 WHERE `id` = 2873951;
DELETE FROM `creature_template_addon` WHERE (`entry`=28745);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (28745, 0, 0, 0, 0, 0, '8279 0');
UPDATE `creature_template` SET `AIName` = 'EventAI', `ScriptName` = '' WHERE `entry` = 28745;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=28745);
INSERT INTO `creature_ai_scripts` VALUES 
(2874551, 28745, 4, 0, 100, 0, 0, 0, 0, 0, 11, 52069, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast on aggro');
UPDATE `creature_template` SET `AIName` = 'EventAI', `ScriptName` = '' WHERE `entry` = 28603;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=28603);
INSERT INTO `creature_ai_scripts` VALUES 
(2860351, 28603, 4, 0, 100, 0, 0, 0, 0, 0, 11, 52069, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast on aggro');

# NeatElves
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `value1`, `value2`) VALUES
(1243, 48171, 0),
(1245, 48950, 0),
(1246, 49277, 0),
(1247, 48477, 0),
(3815, 50763, 0),
(4966, 25435, 0),
(4967, 20770, 0),
(4968, 10881, 0),
(4969, 10880, 0),
(4970, 2010, 0),
(4971, 2006, 0),
(4972, 26994, 0),
(4973, 20748, 0),
(4974, 20747, 0),
(4975, 20742, 0),
(4976, 20739, 0),
(4977, 20484, 0),
(4978, 50764, 0),
(4979, 50765, 0),
(4980, 50766, 0),
(4981, 50767, 0),
(4982, 50768, 0),
(4983, 50769, 0),
(7850, 25590, 0),
(7851, 20777, 0),
(7852, 20776, 0),
(7853, 20610, 0),
(7854, 20609, 0),
(7855, 2008, 0),
(7856, 48949, 0),
(7857, 20773, 0),
(7858, 20772, 0),
(7859, 10324, 0),
(7860, 10324, 0),
(7861, 10322, 0),
(7862, 7328, 0),
(7863, 27240, 0),
(7864, 20761, 0),
(7865, 20760, 0),
(7866, 20759, 0),
(7867, 20758, 0),
(7868, 3026, 0);
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('3209', '16', '324', '0'), ('3210', '16', '324', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('3211', '16', '324', '0'), ('3212', '16', '324', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('3213', '16', '324', '0'), ('3214', '16', '324', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('3215', '16', '324', '0');

# WDB
UPDATE `creature_template` SET `modelid1`=936,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=2014;
UPDATE `creature_template` SET `modelid1`=6821,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=2169;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=2523;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=2630;
UPDATE `creature_template` SET `modelid1`=3821,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=2947;
UPDATE `creature_template` SET `modelid1`=2084,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3019;
UPDATE `creature_template` SET `modelid1`=2085,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3020;
UPDATE `creature_template` SET `modelid1`=2089,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3021;
UPDATE `creature_template` SET `modelid1`=2124,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3022;
UPDATE `creature_template` SET `modelid1`=2106,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3033;
UPDATE `creature_template` SET `modelid1`=2121,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3034;
UPDATE `creature_template` SET `modelid1`=2103,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3041;
UPDATE `creature_template` SET `modelid1`=2096,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3042;
UPDATE `creature_template` SET `modelid1`=2113,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3043;
UPDATE `creature_template` SET `modelid1`=3820,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3064;
UPDATE `creature_template` SET `modelid1`=3817,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3233;
UPDATE `creature_template` SET `modelid1`=3914,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3448;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3527;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3573;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3579;
UPDATE `creature_template` SET `modelid1`=6821,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3750;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3902;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3903;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3904;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3906;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3907;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3908;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3909;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3911;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3912;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3913;
UPDATE `creature_template` SET `modelid1`=6803,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3922;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=3968;
UPDATE `creature_template` SET `modelid1`=4510,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=4046;
UPDATE `creature_template` SET `modelid1`=4511,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=4309;
UPDATE `creature_template` SET `modelid1`=4512,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=4310;
UPDATE `creature_template` SET `modelid1`=6112,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=4440;
UPDATE `creature_template` SET `modelid1`=4519,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=5769;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=5873;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=5874;
UPDATE `creature_template` SET `modelid1`=4683,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=5879;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=5913;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=5919;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=5920;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=5921;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=5922;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=5923;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=5924;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=5925;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=5926;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=5927;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=5929;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=5950;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=6012;
UPDATE `creature_template` SET `modelid1`=2419,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=6016;
UPDATE `creature_template` SET `modelid1`=1421,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=6017;
UPDATE `creature_template` SET `modelid1`=2420,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=6066;
UPDATE `creature_template` SET `modelid1`=4683,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=6110;
UPDATE `creature_template` SET `modelid1`=4683,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=6111;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=6112;
UPDATE `creature_template` SET `modelid1`=1999,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=6186;
UPDATE `creature_template` SET `modelid1`=5371,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=6393;
UPDATE `creature_template` SET `modelid1`=5373,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=6394;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7366;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7367;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7368;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7398;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7399;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7400;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7402;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7403;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7412;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7413;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7414;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7415;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7416;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7423;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7424;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7425;
UPDATE `creature_template` SET `modelid1`=6208,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7427;
UPDATE `creature_template` SET `modelid1`=6818,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7441;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7464;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7465;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7466;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7467;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7468;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7469;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7483;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7484;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7486;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7487;
UPDATE `creature_template` SET `modelid1`=6835,`modelid2`=6836,`modelid3`=0,`modelid4`=0 WHERE `entry`=7725;
UPDATE `creature_template` SET `modelid1`=6831,`modelid2`=6832,`modelid3`=0,`modelid4`=0 WHERE `entry`=7726;
UPDATE `creature_template` SET `modelid1`=6833,`modelid2`=6834,`modelid3`=0,`modelid4`=0 WHERE `entry`=7727;
UPDATE `creature_template` SET `modelid1`=4683,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7844;
UPDATE `creature_template` SET `modelid1`=4683,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=7845;
UPDATE `creature_template` SET `modelid1`=7615,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=8385;
UPDATE `creature_template` SET `modelid1`=2420,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=8510;
UPDATE `creature_template` SET `modelid1`=8356,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=9087;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=9637;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=9687;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=9688;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=9689;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=10183;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=10217;
UPDATE `creature_template` SET `modelid1`=9770,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=10379;
UPDATE `creature_template` SET `modelid1`=9772,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=10380;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=10467;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=10557;
UPDATE `creature_template` SET `modelid1`=9936,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=10599;
UPDATE `creature_template` SET `modelid1`=10223,`modelid2`=10225,`modelid3`=10224,`modelid4`=10226 WHERE `entry`=10758;
UPDATE `creature_template` SET `modelid1`=10238,`modelid2`=10240,`modelid3`=10239,`modelid4`=10241 WHERE `entry`=10759;
UPDATE `creature_template` SET `modelid1`=10227,`modelid2`=10230,`modelid3`=10228,`modelid4`=10231 WHERE `entry`=10760;
UPDATE `creature_template` SET `modelid1`=10233,`modelid2`=10235,`modelid3`=10234,`modelid4`=10236 WHERE `entry`=10761;
UPDATE `creature_template` SET `modelid1`=10243,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=10896;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=11100;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=11101;
UPDATE `creature_template` SET `modelid1`=11755,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=11834;
UPDATE `creature_template` SET `modelid1`=11878,`modelid2`=11879,`modelid3`=11880,`modelid4`=11881 WHERE `entry`=11910;
UPDATE `creature_template` SET `modelid1`=11882,`modelid2`=11883,`modelid3`=11884,`modelid4`=11885 WHERE `entry`=11911;
UPDATE `creature_template` SET `modelid1`=11874,`modelid2`=11875,`modelid3`=11876,`modelid4`=11877 WHERE `entry`=11912;
UPDATE `creature_template` SET `modelid1`=11886,`modelid2`=11888,`modelid3`=11887,`modelid4`=11889 WHERE `entry`=11913;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=12141;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=13838;
UPDATE `creature_template` SET `modelid1`=11686,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=13916;
UPDATE `creature_template` SET `modelid1`=14233,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=14186;
UPDATE `creature_template` SET `modelid1`=14495,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=14441;
UPDATE `creature_template` SET `modelid1`=4683,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=14662;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=14663;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=14664;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=14666;
UPDATE `creature_template` SET `modelid1`=11686,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=14667;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=14870;
UPDATE `creature_template` SET `modelid1`=15291,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15112;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15304;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15363;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15430;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15439;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15447;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15463;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15464;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15470;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15474;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15478;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15479;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15480;
UPDATE `creature_template` SET `modelid1`=4683,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15482;
UPDATE `creature_template` SET `modelid1`=4683,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15483;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15484;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15485;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15486;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15487;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15488;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15489;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15490;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15492;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15496;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15497;
UPDATE `creature_template` SET `modelid1`=15631,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15572;
UPDATE `creature_template` SET `modelid1`=15628,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15573;
UPDATE `creature_template` SET `modelid1`=15613,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15581;
UPDATE `creature_template` SET `modelid1`=15647,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15582;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=15803;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=16385;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=17061;
UPDATE `creature_template` SET `modelid1`=16997,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=17360;
UPDATE `creature_template` SET `modelid1`=16998,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=17361;
UPDATE `creature_template` SET `modelid1`=16986,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=17362;
UPDATE `creature_template` SET `modelid1`=16987,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=17363;
UPDATE `creature_template` SET `modelid1`=16988,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=17364;
UPDATE `creature_template` SET `modelid1`=16989,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=17365;
UPDATE `creature_template` SET `modelid1`=16990,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=17366;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=17539;
UPDATE `creature_template` SET `modelid1`=20230,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=18176;
UPDATE `creature_template` SET `modelid1`=16997,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=18177;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=18178;
UPDATE `creature_template` SET `modelid1`=20231,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=18179;
UPDATE `creature_template` SET `modelid1`=15221,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=18186;
UPDATE `creature_template` SET `modelid1`=17566,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=18189;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=18235;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=18236;
UPDATE `creature_template` SET `modelid1`=11686,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=18491;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=18691;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=18795;
UPDATE `creature_template` SET `modelid1`=1421,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=19222;
UPDATE `creature_template` SET `modelid1`=16998,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=19225;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=19430;
UPDATE `creature_template` SET `modelid1`=19074,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=19636;
UPDATE `creature_template` SET `modelid1`=19073,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=19637;
UPDATE `creature_template` SET `modelid1`=19075,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=19638;
UPDATE `creature_template` SET `modelid1`=19071,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=19639;
UPDATE `creature_template` SET `modelid1`=20230,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=19897;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=19898;
UPDATE `creature_template` SET `modelid1`=20231,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=19899;
UPDATE `creature_template` SET `modelid1`=16997,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=19900;
UPDATE `creature_template` SET `modelid1`=15291,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=20343;
UPDATE `creature_template` SET `modelid1`=15221,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=20455;
UPDATE `creature_template` SET `modelid1`=15291,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=20687;
UPDATE `creature_template` SET `modelid1`=15231,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=21071;
UPDATE `creature_template` SET `modelid1`=19075,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=21420;
UPDATE `creature_template` SET `modelid1`=16724,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=21468;
UPDATE `creature_template` SET `modelid1`=19074,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=21703;
UPDATE `creature_template` SET `modelid1`=19073,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=21704;
UPDATE `creature_template` SET `modelid1`=19071,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=21705;
UPDATE `creature_template` SET `modelid1`=19073,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=21992;
UPDATE `creature_template` SET `modelid1`=19073,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=21994;
UPDATE `creature_template` SET `modelid1`=19074,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=21995;
UPDATE `creature_template` SET `modelid1`=20231,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=22091;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=22209;
UPDATE `creature_template` SET `modelid1`=19075,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=22236;
UPDATE `creature_template` SET `modelid1`=2418,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=22318;
UPDATE `creature_template` SET `modelid1`=1421,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=22333;
UPDATE `creature_template` SET `modelid1`=16997,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=22486;
UPDATE `creature_template` SET `modelid1`=21049,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=22487;
UPDATE `creature_template` SET `modelid1`=14233,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=22569;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=22894;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=22895;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=22896;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=22897;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=22970;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=22971;
UPDATE `creature_template` SET `modelid1`=21656,`modelid2`=21657,`modelid3`=0,`modelid4`=0 WHERE `entry`=23592;
UPDATE `creature_template` SET `modelid1`=21653,`modelid2`=21654,`modelid3`=21655,`modelid4`=0 WHERE `entry`=23593;
UPDATE `creature_template` SET `modelid1`=21663,`modelid2`=21664,`modelid3`=0,`modelid4`=0 WHERE `entry`=23594;
UPDATE `creature_template` SET `modelid1`=21658,`modelid2`=21660,`modelid3`=0,`modelid4`=0 WHERE `entry`=23595;
UPDATE `creature_template` SET `modelid1`=21653,`modelid2`=21654,`modelid3`=21655,`modelid4`=0 WHERE `entry`=23714;
UPDATE `creature_template` SET `modelid1`=16988,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=23811;
UPDATE `creature_template` SET `modelid1`=22015,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=24033;
UPDATE `creature_template` SET `modelid1`=19075,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=24045;
UPDATE `creature_template` SET `modelid1`=19074,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=24046;
UPDATE `creature_template` SET `modelid1`=22116,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=24129;
UPDATE `creature_template` SET `modelid1`=22130,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=24133;
UPDATE `creature_template` SET `modelid1`=22523,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=24224;
UPDATE `creature_template` SET `modelid1`=4683,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=24320;
UPDATE `creature_template` SET `modelid1`=22552,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=24649;
UPDATE `creature_template` SET `modelid1`=22611,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=24758;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=25444;
UPDATE `creature_template` SET `modelid1`=16998,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=25455;
UPDATE `creature_template` SET `modelid1`=23229,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=25494;
UPDATE `creature_template` SET `modelid1`=22130,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=25731;
UPDATE `creature_template` SET `modelid1`=20231,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=25961;
UPDATE `creature_template` SET `modelid1`=16998,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=25987;
UPDATE `creature_template` SET `modelid1`=16988,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=26048;
UPDATE `creature_template` SET `modelid1`=22130,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=26111;
UPDATE `creature_template` SET `modelid1`=2418,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=26534;
UPDATE `creature_template` SET `modelid1`=24003,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=26707;
UPDATE `creature_template` SET `modelid1`=23123,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=27606;
UPDATE `creature_template` SET `modelid1`=23773,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=27716;
UPDATE `creature_template` SET `modelid1`=20229,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=28938;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=29360;
UPDATE `creature_template` SET `modelid1`=26509,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=29758;
UPDATE `creature_template` SET `modelid1`=26513,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=29759;
UPDATE `creature_template` SET `modelid1`=26514,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=29760;
UPDATE `creature_template` SET `modelid1`=26515,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=29761;
UPDATE `creature_template` SET `modelid1`=26517,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=29763;
UPDATE `creature_template` SET `modelid1`=26518,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=29764;
UPDATE `creature_template` SET `modelid1`=26519,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=29765;
UPDATE `creature_template` SET `modelid1`=26521,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=29766;
UPDATE `creature_template` SET `modelid1`=27341,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=30444;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=30647;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=30652;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=30653;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=30654;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=31120;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=31121;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=31122;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=31129;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=31132;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=31133;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=31158;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=31162;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=31164;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=31165;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=31166;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=31167;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=31169;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=31170;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=31171;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=31172;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=31173;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=31174;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=31175;
UPDATE `creature_template` SET `modelid1`=4588,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=31176;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=31181;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=31182;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=31185;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=31186;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=31189;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=31190;
UPDATE `creature_template` SET `modelid1`=14233,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=32053;
UPDATE `creature_template` SET `modelid1`=4590,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=32304;
UPDATE `creature_template` SET `modelid1`=4683,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=32775;
UPDATE `creature_template` SET `modelid1`=4683,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=32776;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=32887;
UPDATE `creature_template` SET `modelid1`=28671,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=33539;
UPDATE `creature_template` SET `modelid1`=4587,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=34686;
UPDATE `creature_template` SET `modelid1`=4589,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=34687;
UPDATE `creature_template` SET `modelid1`=30166,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=36532;
UPDATE `creature_template` SET `modelid1`=30171,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=36542;
UPDATE `creature_template` SET `modelid1`=30172,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=36550;
UPDATE `creature_template` SET `modelid1`=30173,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=36556;
UPDATE `creature_template` SET `modelid1`=14233,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=37374;
UPDATE `creature_template` SET `modelid1`=30736,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=37749;
UPDATE `creature_template` SET `modelid1`=30753,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=37750;
UPDATE `creature_template` SET `modelid1`=30754,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=37751;
UPDATE `creature_template` SET `modelid1`=30755,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=37752;
UPDATE `creature_template` SET `modelid1`=30756,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=37766;
UPDATE `creature_template` SET `modelid1`=30757,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=37767;
UPDATE `creature_template` SET `modelid1`=30761,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=37768;
UPDATE `creature_template` SET `modelid1`=30760,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=37769;
UPDATE `creature_template` SET `modelid1`=30758,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=37770;
UPDATE `creature_template` SET `modelid1`=30762,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=37771;
UPDATE `creature_template` SET `modelid1`=30759,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=37772;
UPDATE `creature_template` SET `modelid1`=30763,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=37773;
UPDATE `creature_template` SET `modelid1`=19075,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=37810;
UPDATE `creature_template` SET `modelid1`=30171,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=38180;
UPDATE `creature_template` SET `modelid1`=11875,`modelid2`=11877,`modelid3`=11874,`modelid4`=11876 WHERE `entry`=38830;
UPDATE `creature_template` SET `modelid1`=11875,`modelid2`=11877,`modelid3`=11874,`modelid4`=11876 WHERE `entry`=38843;
UPDATE `creature_template` SET `modelid1`=11883,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=38905;
UPDATE `creature_template` SET `modelid1`=11878,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=38919;
UPDATE `creature_template` SET `modelid1`=11878,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=38920;
UPDATE `creature_template` SET `modelid1`=11878,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=38921;
UPDATE `creature_template` SET `modelid1`=31720,`modelid2`=0,`modelid3`=0,`modelid4`=0 WHERE `entry`=40187;

# Totem
UPDATE creature_template SET modelid1=19075, modelid2=30759, modelid3=4587, modelid4=30763 WHERE entry IN (
3527, -- Healing Stream Totem
3573, -- Mana Spring Totem
3907, -- Healing Stream Totem III
3909, -- Healing Stream Totem V
5927, -- Fire Resistance Totem
7414, -- Mana Spring Totem II
7415, -- Mana Spring Totem III
7416, -- Mana Spring Totem IV
7424, -- Fire Resistance Totem II
7425, -- Fire Resistance Totem III
10467, -- Mana Tide Totem
15489, -- Mana Spring Totem V
15488, -- Healing Stream Totem VI
31186, -- Mana Spring Totem VI
31169, -- Fire Resistance Totem V
31170, -- Fire Resistance Totem VI
31181, -- Healing Stream Totem VII
31182, -- Healing Stream Totem VIII
31185, -- Healing Stream Totem IX
31189, -- Mana Spring Totem VII
31190, -- Mana Spring Totem VIII
3906, -- Healing Stream Totem II
3908, -- Healing Stream Totem IV
5923, -- Poison Cleansing Totem
5924, -- Cleansing Totem
11100, -- Mana Tide Totem II
11101, -- Mana Tide Totem III
15487, -- Fire Resistance Totem IV
17061); -- Mana Tide Totem IV);
-- Earth totems:               draenei          orc             tauren          troll
UPDATE creature_template SET modelid1=19073, modelid2=30757, modelid3=4588, modelid4=30761 WHERE entry IN (
2630, -- Earthbind Totem
3579, -- Stoneclaw Totem
3911, -- Stoneclaw Totem II
3912, -- Stoneclaw Totem III
3913, -- Stoneclaw Totem IV
7398, -- Stoneclaw Totem V
7399, -- Stoneclaw Totem VI
15478, -- Stoneclaw Totem VII
31120, -- Stoneclaw Totem VIII
31121, -- Stoneclaw Totem IX
31122, -- Stoneclaw Totem X
5873, -- Stoneskin Totem
5919, -- Stoneskin Totem II
5920, -- Stoneskin Totem III
7366, -- Stoneskin Totem IV
7367, -- Stoneskin Totem V
7368, -- Stoneskin Totem VI
15470, -- Stoneskin Totem VII
15474, -- Stoneskin Totem VIII
31175, -- Stoneskin Totem IX
31176, -- Stoneskin Totem X
15430, -- Earth Elemental Totem
5874, -- Strength of Earth Totem
5921, -- Strength of Earth Totem II
5922, -- Strength of Earth Totem III
7403, -- Strength of Earth Totem IV
15464, -- Strength of Earth Totem V
15479, -- Strength of Earth Totem VI
30647, -- Strength of Earth Totem VII
31129, -- Strength of Earth Totem VIII
5913); -- Tremor Totem);
-- Fire totems:               draenei          orc             tauren          troll
UPDATE creature_template SET modelid1=19074, modelid2=30758, modelid3=4589, modelid4=30762 WHERE entry IN (
5929, -- Magma Totem
7464, -- Magma Totem II
7465, -- Magma Totem III
7466, -- Magma Totem IV
15484, -- Magma Totem V
31166, -- Magma Totem VI
31167, -- Magma Totem VII
2523, -- Searing Totem
3902, -- Searing Totem II
3903, -- Searing Totem III
3904, -- Searing Totem IV
7400, -- Searing Totem V
7402, -- Searing Totem VI
15480, -- Searing Totem VII
31162, -- Searing Totem VIII
31164, -- Searing Totem IX
31165, -- Searing Totem X
5926, -- Frost Resistance Totem
7412, -- Frost Resistance Totem II
7413, -- Frost Resistance Totem III
15486, -- Frost Resistance Totem IV
31171, -- Frost Resistance Totem V
31172, -- Frost Resistance Totem VI
5950, -- Flametongue Totem
6012, -- Flametongue Totem II
7423, -- Flametongue Totem III
10557, -- Flametongue Totem IV
15485, -- Flametongue Totem V
31132, -- Flametongue Totem VI
31133, -- Flametongue Totem VIII
31158, -- Flametongue Totem VII
15439, -- Fire Elemental Totem
17539, -- Totem of Wrath I
30652, -- Totem of Wrath II
30653, -- Totem of Wrath III
30654, -- Totem of Wrath IV
5879, -- Fire Nova Totem
6110, -- Fire Nova Totem II
6111, -- Fire Nova Totem III
7844, -- Fire Nova Totem IV
7845, -- Fire Nova Totem V
15482, -- Fire Nova Totem VI
32775, -- Fire Nova Totem IX
32776); -- Fire Nova Totem VIII);
-- Air totems:               draenei            orc             tauren         troll
UPDATE creature_template SET modelid1=19071, modelid2=30756, modelid3=4590, modelid4=30760 WHERE entry IN (
3968, -- Sentry Totem
6112, -- Windfury Totem
7467, -- Nature Resistance Totem
7468, -- Nature Resistance Totem II
15447, -- Wrath of Air Totem
15490, -- Nature Resistance Totem IV
31173, -- Nature Resistance Totem V
31174, -- Nature Resistance Totem VI
5925, -- Grounding Totem
7469, -- Nature Resistance Totem III
7483, -- Windfury Totem II
7484, -- Windfury Totem III
15496, -- Windfury Totem IV
15497); -- Windfury Totem V);
DELETE FROM creature_model_info WHERE modelid IN (
-- orco
30756, 30757, 30758, 30759,
-- troll
30760, 30761, 30762, 30763);
INSERT INTO creature_model_info VALUES
-- orco
(30756, 1, 1, 2, 0),
(30757, 1, 1, 2, 0),
(30758, 1, 1, 2, 0),
(30759, 1, 1, 2, 0),
-- troll
(30760, 1, 1, 2, 0),
(30761, 1, 1, 2, 0),
(30762, 1, 1, 2, 0),
(30763, 1, 1, 2, 0);
INSERT IGNORE INTO `vehicle_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`) VALUES
(32640,32642,1,0, 'Traveler Mammoth (H) - Vendor'),
(32640,32641,2,0, 'Traveler Mammoth (H) - Vendor & Repairer'),
(32633,32638,1,0, 'Traveler Mammoth (A) - Vendor'),
(32633,32639,2,0, 'Traveler Mammoth (A) - Vendor & Repairer');

# KiriX
UPDATE creature SET position_x = '-3411.121582', position_y = '2319.425781', position_z = '37.287189', orientation = '4.490865' WHERE guid = '77751';
UPDATE `creature_template` SET `unit_flags` = 0 WHERE `entry` = 15990;

# NeatElves
REPLACE INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES ('1249', '616', '0');
UPDATE `achievement_criteria_data` SET `value1` = '2' WHERE `criteria_id` =13393 AND `type` =12;
UPDATE `achievement_criteria_data` SET `value1` = '3' WHERE `criteria_id` =13394 AND `type` =12;
UPDATE `creature_template` SET `npcflag` = '66177' WHERE `entry` =27069;
UPDATE `gossip_scripts` SET `command` = '18',`datalong` = '0' WHERE `id` =25841 AND `delay` =1 AND `command` =15 AND `datalong` =19822;
UPDATE `gossip_scripts` SET `command` = '18',`datalong` = '0' WHERE `id` =50028 AND `delay` =1 AND `command` =15 AND `datalong` =19822;
DELETE FROM `creature_ai_scripts` WHERE `id` = 2584151;
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` =25841;
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('11838', '12', '0', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('11861', '12', '2', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('11839', '12', '1', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('11862', '12', '3', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('11779', '12', '0', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('11802', '12', '2', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('11780', '12', '1', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('11801', '12', '3', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('12347', '12', '0', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('12348', '12', '2', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('12341', '12', '1', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('12342', '12', '3', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('12280', '12', '0', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('12281', '12', '2', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('12278', '12', '1', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('12279', '12', '3', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('11778', '12', '0', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('12258', '12', '2', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('11818', '12', '1', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('11860', '12', '3', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('11803', '12', '0', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('11804', '12', '2', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('11799', '12', '1', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('11800', '12', '3', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('12777', '12', '0', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('13079', '12', '2', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('13080', '12', '1', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('13081', '12', '3', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('12776', '12', '0', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('12995', '12', '2', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('12997', '12', '1', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('12998', '12', '3', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('12778', '12', '0', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('13035', '12', '2', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('13036', '12', '1', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('13037', '12', '3', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('12978', '12', '0', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('12979', '12', '2', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('12971', '12', '1', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('12980', '12', '3', '0');
UPDATE `achievement_criteria_data` SET `value1` = '3' WHERE `criteria_id` =13394 AND `type` =12;
UPDATE `achievement_criteria_data` SET `value1` = '2' WHERE `criteria_id` =13393 AND `type` =12;
UPDATE `achievement_criteria_data` SET `value1` = '2' WHERE `criteria_id` =13247 AND `type` =12;
UPDATE `achievement_criteria_data` SET `value1` = '3' WHERE `criteria_id` =13245 AND `type` =12;
UPDATE `achievement_criteria_data` SET `value1` = '2' WHERE `criteria_id` =13163 AND `type` =12;
UPDATE `achievement_criteria_data` SET `value1` = '3' WHERE `criteria_id` =13164 AND `type` =12;
UPDATE `achievement_criteria_data` SET `value1` = '3' WHERE `criteria_id` =13032 AND `type` =12;
UPDATE `achievement_criteria_data` SET `value1` = '2' WHERE `criteria_id` =13034 AND `type` =12;
UPDATE `achievement_criteria_data` SET `value1` = '2' WHERE `criteria_id` =12996 AND `type` =12;
UPDATE `achievement_criteria_data` SET `value1` = '3' WHERE `criteria_id` =12989 AND `type` =12;
UPDATE `achievement_criteria_data` SET `value1` = '2' WHERE `criteria_id` =12988 AND `type` =12;
UPDATE `achievement_criteria_data` SET `value1` = '3' WHERE `criteria_id` =12981 AND `type` =12;
UPDATE `achievement_criteria_data` SET `value1` = '3' WHERE `criteria_id` =12983 AND `type` =12;
UPDATE `achievement_criteria_data` SET `value1` = '2' WHERE `criteria_id` =12985 AND `type` =12;
UPDATE `achievement_criteria_data` SET `value1` = '2' WHERE `criteria_id` =12986 AND `type` =12;
UPDATE `achievement_criteria_data` SET `value1` = '3' WHERE `criteria_id` =12982 AND `type` =12;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13013 AND `type` = 12;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 13012 AND `type` = 12;
UPDATE `creature` SET `id` = '25701' WHERE `guid` =97682;
UPDATE `creature` SET `id` = '25701' WHERE `guid` =97688;
UPDATE `creature` SET `id` = '25701' WHERE `guid` =97691;
UPDATE `creature` SET `id` = '25701' WHERE `guid` =97696;
UPDATE `creature` SET `id` = '25701' WHERE `guid` =97701;
UPDATE `creature` SET `id` = '25687' WHERE `guid` =97711;
UPDATE `creature` SET `id` = '25687' WHERE `guid` =97713;
UPDATE `creature` SET `id` = '25687' WHERE `guid` =97719;
UPDATE `creature` SET `id` = '25687' WHERE `guid` =97720;
UPDATE `creature` SET `id` = '25687' WHERE `guid` =97729;
UPDATE `creature` SET `id` = '25700' WHERE `guid` =97678;
UPDATE `creature` SET `id` = '25700' WHERE `guid` =97679;
UPDATE `creature` SET `id` = '25700' WHERE `guid` =97680;
UPDATE `creature` SET `id` = '25700' WHERE `guid` =97681;
UPDATE `creature` SET `id` = '25700' WHERE `guid` =97684;
UPDATE `creature` SET `id` = '25700' WHERE `guid` =97685;
UPDATE `creature` SET `id` = '25700' WHERE `guid` =97686;
UPDATE `creature` SET `id` = '25700' WHERE `guid` =97687;
UPDATE `creature` SET `id` = '25700' WHERE `guid` =97690;
UPDATE `creature` SET `id` = '25700' WHERE `guid` =97692;
UPDATE `creature` SET `id` = '25700' WHERE `guid` =97693;
UPDATE `creature` SET `id` = '25700' WHERE `guid` =97694;
UPDATE `creature` SET `id` = '25700' WHERE `guid` =97695;
UPDATE `creature` SET `id` = '25700' WHERE `guid` =97698;
UPDATE `creature` SET `id` = '25700' WHERE `guid` =97699;
UPDATE `creature` SET `id` = '25700' WHERE `guid` =97700;
UPDATE `creature` SET `id` = '25700' WHERE `guid` =97703;
UPDATE `creature` SET `id` = '25686' WHERE `guid` =97704;
UPDATE `creature` SET `id` = '25686' WHERE `guid` =97705;
UPDATE `creature` SET `id` = '25686' WHERE `guid` =97706;
UPDATE `creature` SET `id` = '25686' WHERE `guid` =97708;
UPDATE `creature` SET `id` = '25686' WHERE `guid` =97710;
UPDATE `creature` SET `id` = '25686' WHERE `guid` =97712;
UPDATE `creature` SET `id` = '25686' WHERE `guid` =97714;
UPDATE `creature` SET `id` = '25686' WHERE `guid` =97715;
UPDATE `creature` SET `id` = '25686' WHERE `guid` =97716;
UPDATE `creature` SET `id` = '25686' WHERE `guid` =97717;
UPDATE `creature` SET `id` = '25686' WHERE `guid` =97718;
UPDATE `creature` SET `id` = '25686' WHERE `guid` =97721;
UPDATE `creature` SET `id` = '25686' WHERE `guid` =97723;
UPDATE `creature` SET `id` = '25686' WHERE `guid` =97724;
UPDATE `creature` SET `id` = '25686' WHERE `guid` =97725;
UPDATE `creature` SET `id` = '25686' WHERE `guid` =97728;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(20369, 25687, 571, 1, 1, 0, 0, 3331.13, 4819.12, 28.93, 5.5977, 25, 5, 0, 8982, 3155, 0, 1),
(22781, 25687, 571, 1, 1, 0, 0, 3321.48, 4854.17, 28.9085, 1.92675, 600, 5, 0, 8982, 3155, 0, 1),
(22869, 25687, 571, 1, 1, 0, 0, 3148.11, 5020.08, 26.3966, 2.11995, 600, 5, 0, 8982, 3155, 0, 1),
(27349, 25687, 571, 1, 1, 0, 0, 3110.44, 5054.67, 26.8169, 2.39484, 600, 5, 0, 8982, 3155, 0, 1),
(31807, 25687, 571, 1, 1, 0, 0, 3055.72, 5073.3, 28.7066, 3.34203, 600, 5, 0, 8982, 3155, 0, 1),
(40246, 25687, 571, 1, 1, 0, 0, 3037.73, 5044.56, 28.3115, 2.64539, 600, 5, 0, 8982, 3155, 0, 1),
(40249, 25687, 571, 1, 1, 0, 0, 2919.94, 5051.84, 25.9773, 2.94541, 600, 5, 0, 8982, 3155, 0, 1),
(47628, 25687, 571, 1, 1, 0, 0, 2870.51, 5058.65, 26.1727, 2.77026, 600, 5, 0, 8982, 3155, 0, 1),
(47633, 25687, 571, 1, 1, 0, 0, 2784.92, 5081.62, 25.1652, 3.26035, 600, 5, 0, 8982, 3155, 0, 1),
(47636, 25686, 571, 1, 1, 0, 0, 3360.39, 4819.29, 29.1127, 3.42843, 600, 5, 0, 8982, 3155, 0, 1),
(47637, 25686, 571, 1, 1, 0, 0, 3150.93, 5052.92, 26.5781, 3.67426, 600, 5, 0, 8982, 3155, 0, 1),
(47642, 25686, 571, 1, 1, 0, 0, 3066.31, 5046.58, 28.4736, 2.50244, 600, 5, 0, 9291, 3231, 0, 1),
(47643, 25686, 571, 1, 1, 0, 0, 3011.41, 5081.77, 28.907, 4.19498, 600, 5, 0, 9291, 3231, 0, 1),
(47646, 25686, 571, 1, 1, 0, 0, 2882.75, 5036.78, 27.728, 1.03139, 600, 5, 0, 8982, 3155, 0, 1),
(47647, 25686, 571, 1, 1, 0, 0, 2848.82, 5050.82, 25.8056, 0.0598536, 600, 5, 0, 9291, 3231, 0, 1),
(47653, 25686, 571, 1, 1, 0, 0, 2781.46, 5053.87, 25.3375, 2.28567, 600, 5, 0, 8982, 3155, 0, 1),
(47655, 25686, 571, 1, 1, 0, 0, 2730.51, 5069.82, 25.5425, 0.315893, 600, 5, 0, 9291, 3231, 0, 1);
UPDATE creature SET position_x = '3332.015869', position_y = '5054.260742', position_z = '13.037834', orientation = '0.408574' WHERE guid = '96159';
UPDATE creature SET position_x = '3312.821289', position_y = '5146.994629', position_z = '13.038846', orientation = '5.528585' WHERE guid = '96160';
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(47656, 25841, 571, 1, 1, 0, 0, 3569.47, 4782.53, 0.357959, 1.46257, 600, 0, 0, 7185, 7196, 0, 0),
(47665, 25841, 571, 1, 1, 0, 0, 3604.73, 4892.13, -0.110023, 2.13173, 600, 0, 0, 7185, 7196, 0, 0),
(47702, 25841, 571, 1, 1, 0, 0, 3459.26, 5075.38, 11.3703, 0.301751, 600, 0, 0, 7185, 7196, 0, 0);
UPDATE `creature_template` SET `faction_A` = '91',`faction_H` = '91' WHERE `entry` =24229;
UPDATE `creature` SET `DeathState` = '0' WHERE `id` =24678;
UPDATE `creature_template_addon` SET `auras` = '29266 0 29266 1' WHERE `entry` =24678;
UPDATE `creature_template_addon` SET `auras` = '29266 0 29266 1' WHERE `entry` =25384;
UPDATE `creature_template` SET `flags_extra` = '2' WHERE `entry` =25384;
UPDATE `quest_template` SET `SpecialFlags` = 1 WHERE `entry` = 14203;
UPDATE `creature_template` SET `gossip_menu_id` = '7525' WHERE `entry` =17894;
UPDATE `creature_template` SET `gossip_menu_id` = '0',`npcflag`='0' WHERE `entry` =17827;
UPDATE `creature_template` SET `gossip_menu_id` = '7489' WHERE `entry` =17843;
UPDATE `quest_template` SET `RequiredRaces` = '1101' WHERE `entry` =13403;
DELETE FROM `creature_addon` WHERE `guid` = 56240;
DELETE FROM `creature_addon` WHERE `guid` = 56241;
DELETE FROM `creature_addon` WHERE `guid` = 66841;
DELETE FROM `creature_addon` WHERE `guid` = 66842;
DELETE FROM `creature_addon` WHERE `guid` = 66843;
DELETE FROM `creature_addon` WHERE `guid` = 66844;
DELETE FROM `creature_addon` WHERE `guid` = 66854;
DELETE FROM `creature_addon` WHERE `guid` = 66856;
DELETE FROM `creature_addon` WHERE `guid` = 68837;
DELETE FROM `creature_addon` WHERE `guid` = 68838;
DELETE FROM `creature_addon` WHERE `guid` = 68839;
DELETE FROM `creature_addon` WHERE `guid` = 68840;
DELETE FROM `creature_addon` WHERE `guid` = 68843;
DELETE FROM `creature_addon` WHERE `guid` = 68844;
DELETE FROM `creature_addon` WHERE `guid` = 68861;
DELETE FROM `creature_addon` WHERE `guid` = 68862;
DELETE FROM `creature_addon` WHERE `guid` = 76651;
DELETE FROM `creature_addon` WHERE `guid` = 76652;
DELETE FROM `creature_addon` WHERE `guid` = 71587;
DELETE FROM `creature_addon` WHERE `guid` = 71590;
DELETE FROM `creature_addon` WHERE `guid` = 71595;
DELETE FROM `creature_addon` WHERE `guid` = 71599;
DELETE FROM `creature_addon` WHERE `guid` = 71600;
DELETE FROM `creature_addon` WHERE `guid` = 71605;
DELETE FROM `creature_addon` WHERE `guid` = 71610;
UPDATE `creature` SET `DeathState` = '0' WHERE `id` in (28390,28391,28392,28393);
UPDATE `creature_template_addon` SET `bytes1` = '0',`bytes2` = '1',`auras` = '29266 0 29266 1' WHERE `entry` in (28390,28391,28392,28393);
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask`|12584976 WHERE `rank` = 3;
UPDATE `creature` SET `DeathState` = '0' WHERE `id` in (28390,28391,28392,28393);
UPDATE `creature_template_addon` SET `bytes1` = '0',`bytes2` = '1',`auras` = '29266 0 29266 1' WHERE `entry` in (28390,28391,28392,28393);
UPDATE `creature` SET `DeathState` = '0' WHERE `id` in (16804,18397,21303,21304,21846,21859,23705,23716,24365,24808,27613,30493,17731,18420,18421,18422,19486,19505,19507,19508,19509,26620,31094,31098);
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES ('16804', '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES ('18397', '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES ('21303', '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES ('21304', '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES ('21846', '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES ('21859', '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES ('23705', '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES ('23716', '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES ('24365', '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES ('24808', '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES ('27613', '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES ('30493', '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (80221, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (80220, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (80228, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (80227, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (80226, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (80224, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (80219, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (80218, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (80217, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (80767, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (80770, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (80763, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (80765, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (80764, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (80766, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (80769, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (80756, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (80768, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (79319, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (79318, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (79317, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (79316, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (79315, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (79312, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (79311, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (79309, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (79303, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (79302, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (79301, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (79300, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (79299, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (79295, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (79294, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (79289, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (79287, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (79286, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (79282, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89910, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89911, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89912, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89913, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89914, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89918, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89919, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89920, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89922, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89758, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89759, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89760, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89761, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89763, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89764, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89765, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89766, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89767, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89772, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89773, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89774, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89775, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89776, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89777, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89778, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89779, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89780, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89781, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89762, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89757, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89756, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (89755, '0', '0', '1', '0', '0', '29266 0 29266 1');
UPDATE `creature` SET `equipment_id` = '0' WHERE `id` =28782;
UPDATE `creature` SET `DeathState` = '0' WHERE `id` in (28576,28660,28891,28893,28896,28898,28577,27530);
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES ('28576', '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES ('28660', '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES ('28891', '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES ('28893', '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES ('28896', '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES ('28898', '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (88550, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (88541, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (88539, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (88535, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (88534, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (88526, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (88527, '0', '0', '1', '0', '0', '29266 0 29266 1');
UPDATE `creature_template_addon` SET `auras` = '49132 0 29266 0 29266 1' WHERE `entry` =27530;
UPDATE `creature_template_addon` SET `bytes1` = '0',`auras` = '29266 0 29266 1' WHERE `entry` =26682;
UPDATE `creature_template_addon` SET `bytes1` = '0',`auras` = '29266 0 29266 1' WHERE `entry` =24112;
UPDATE `creature_template_addon` SET `bytes1` = '0',`auras` = '29266 0 29266 1' WHERE `entry` =24113;
UPDATE `creature_template_addon` SET `bytes1` = '0',`auras` = '29266 0 29266 1' WHERE `entry` =24114;
UPDATE `creature_template_addon` SET `bytes1` = '0',`auras` = '29266 0 29266 1' WHERE `entry` =24115;
UPDATE `creature_template_addon` SET `bytes2` = '1' WHERE `entry` =32569;
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (11621, '0', '0', '1', '0', '0', '29266 0 29266 1');
UPDATE `creature_template` SET `faction_A` = '7',`faction_H` = '7' WHERE `entry` =11621;
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (21592, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (21623, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (22269, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (24146, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (24441, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (24442, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (24443, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (24444, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (26299, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (28493, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (28590, '0', '0', '1', '0', '0', '29266 0 29266 1');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (32742, '0', '0', '1', '0', '0', '29266 0 29266 1');
UPDATE `creature_template_addon` SET `bytes1` = '0',`bytes2` = '1' WHERE `entry` =21725;
UPDATE `creature_template_addon` SET `bytes1` = '0',`bytes2` = '1' WHERE `entry` =27787;
UPDATE `creature_template_addon` SET `bytes1` = '0' WHERE `entry` =40628;
UPDATE `creature_template_addon` SET `bytes1` = '0' WHERE `entry` =40627;
UPDATE `creature_template_addon` SET `bytes2` = '1' WHERE `entry` =29914;
UPDATE `creature_template_addon` SET `bytes2` = '1' WHERE `entry` =30674;
UPDATE `creature_template_addon` SET `bytes2` = '1' WHERE `entry` =30673;
UPDATE `creature_template_addon` SET `bytes2` = '1' WHERE `entry` =30292;
UPDATE `creature_template_addon` SET `bytes2` = '1' WHERE `entry` =29515;
UPDATE `creature_template_addon` SET `path_id` = '0' WHERE `entry` =35097;
REPLACE INTO `creature_template_addon` (`entry`,  `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (25546, '0', '0', '1', '0', '0', '29266 0 29266 1');

# jwo
UPDATE quest_template SET RequiredRaces=130 WHERE entry IN (6365, 6384, 6385, 6386);
UPDATE creature SET curhealth=328 WHERE id=3632;

# FIX
DELETE FROM `creature_loot_template` WHERE (`entry`=39945) AND (`item`=54578);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (39945, 54578, 0, 1, 1, 1);
DELETE FROM `creature_loot_template` WHERE (`entry`=39945) AND (`item`=54582);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (39945, 54582, 0, 2, 1, 1);
DELETE FROM `creature_loot_template` WHERE (`entry`=39945) AND (`item`=54583);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (39945, 54583, 0, 3, 1, 1);
DELETE FROM `creature_loot_template` WHERE (`entry`=39945) AND (`item`=54590);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (39945, 54590, 0, 1, 1, 1);

# virusav
UPDATE creature SET position_x = '1312.430664', position_y = '-1307.681519', position_z = '64.185188', orientation = '4.106761' WHERE guid = '65963';
UPDATE creature SET position_x = '1470.851807', position_y = '-1405.960571', position_z = '67.633499', orientation = '5.557402' WHERE guid = '15451';
UPDATE creature SET position_x = '1554.576660', position_y = '-1484.208862', position_z = '68.287743', orientation = '1.314671' WHERE guid = '52673';
UPDATE creature SET position_x = '1326.030762', position_y = '-1588.046753', position_z = '61.742928', orientation = '3.226674' WHERE guid = '65964';
UPDATE `gameobject` SET `position_x`=1312.43, `position_y`=-1307.68, `position_z`=64.1852 WHERE `guid`=26850;
UPDATE `gameobject` SET `position_x`=1470.85, `position_y`=-1405.96, `position_z`=67.6335 WHERE `guid`=26851;
UPDATE `gameobject` SET `position_x`=1554.58, `position_y`=-1484.21, `position_z`=68.2877 WHERE `guid`=26848;
UPDATE `gameobject` SET `position_x`=1326.03, `position_y`=-1588.05, `position_z`=61.7429 WHERE `guid`=26849;
UPDATE `gameobject_template` SET `data1` = 20 WHERE `entry` = 300030;

# FIX
DELETE FROM `item_loot_template` WHERE (`entry`=21042);
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(21042, 21037, 100, 0, 1, 1),
(21042, 21039, 100, 0, 1, 1),
(21042, 21040, 100, 0, 1, 1),
(21042, 21041, 100, 0, 1, 1);

# NeatElves
UPDATE `creature_template` SET `InhabitType`=7 WHERE `entry`=25762;
UPDATE `creature` SET `spawndist`=8,`MovementType`=1 WHERE `id`=23740; 
UPDATE `creature_template` SET `InhabitType`=6 WHERE `entry`=26452;
UPDATE `creature_template` SET `InhabitType`=6 WHERE `entry`=5936;
UPDATE `creature_template` SET `InhabitType`=6 WHERE `entry`=24899;
UPDATE `creature_template` SET `InhabitType`=2 WHERE `entry`=23785; 
UPDATE `creature_template` SET `InhabitType`=6 WHERE `entry`=24707;
UPDATE `creature_template` SET `InhabitType`=7 WHERE `entry`=15214;
UPDATE `creature_template_addon` SET `auras` = '44385 0' WHERE `entry` =24812;
DELETE FROM `creature` WHERE `guid` = 106766;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1422.228,`position_y`=-5739.741,`position_z`=262.6032 WHERE `guid`=106765; 
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`) VALUES
(106765,1,1412.253,-5803.864,273.5552,0), 
(106765,2,1396.361,-5828.387,282.2562,0), 
(106765,3,1399.518,-5870.827,286.0124,0), 
(106765,4,1450.674,-5934.61,281.299,0), 
(106765,5,1428.72,-5961.047,282.0927,0), 
(106765,6,1402.206,-5980.48,284.0603,0), 
(106765,7,1369.086,-5981.297,286.6758,0), 
(106765,8,1337.725,-5984.292,288.1377,0), 
(106765,9,1314.008,-5979.167,284.4052,0), 
(106765,10,1267.932,-5977.622,285.8651,0), 
(106765,11,1226.736,-5973.903,285.553,0), 
(106765,12,1203.962,-5950.514,281.403,0), 
(106765,13,1172.891,-5922.125,280.0587,0), 
(106765,14,1144.713,-5910.242,277.5775,0), 
(106765,15,1126.403,-5921.647,280.1049,0), 
(106765,16,1101.533,-5933.961,278.0404,0), 
(106765,17,1081.227,-5940.601,278.1838,0), 
(106765,18,1061.18,-5928.239,273.4557,0), 
(106765,19,1041.271,-5912.919,273.8307,0), 
(106765,20,1024.101,-5892.596,276.3493,0), 
(106765,21,1004.643,-5877.667,276.7243,0), 
(106765,22,979.4108,-5875.375,277.3129,0), 
(106765,23,961.1776,-5890.69,283.2782,0), 
(106765,24,928.4913,-5903.635,281.7114,0), 
(106765,25,896.2833,-5908.186,281.6858,0), 
(106765,26,865.5819,-5902.102,283.0341,0), 
(106765,27,832.1648,-5899.013,279.7785,0), 
(106765,28,795.4492,-5910.462,281.4339,0), 
(106765,29,767.3643,-5917.822,284.6839,0), 
(106765,30,718.8433,-5923.66,288.0694,0), 
(106765,31,702.4808,-5953.268,292.973,0), 
(106765,32,675.7963,-5976.116,299.1664,0), 
(106765,33,637.6224,-5997.167,304.183,0), 
(106765,34,613.2578,-6002.881,306.8732,0), 
(106765,35,579.6126,-5984.155,306.944,0), 
(106765,36,569.217,-5951.726,304.421,0), 
(106765,37,560.6622,-5920.568,302.4529,0), 
(106765,38,583.3626,-5882.451,293.3154,0), 
(106765,39,594.6022,-5849.927,290.4872,0), 
(106765,40,580.1247,-5831.726,292.7705,0), 
(106765,41,544.3041,-5823.025,297.1746,0), 
(106765,42,508.911,-5800.888,300.9591,0), 
(106765,43,496.7964,-5756.505,301.1577,0), 
(106765,44,490.846,-5714.954,295.575,0), 
(106765,45,471.9233,-5684.464,291.7284,0), 
(106765,46,450.7267,-5659.586,289.305,0), 
(106765,47,437.2937,-5647.319,293.305,0), 
(106765,48,414.847,-5639.487,293.4699,0), 
(106765,49,391.6521,-5631.603,296.4735,0), 
(106765,50,368.5234,-5632.647,300.7235,0), 
(106765,51,340.0841,-5643.889,306.4324,0), 
(106765,52,317.1987,-5635.141,313.5356,0), 
(106765,53,306.9678,-5610.359,315.9263,0), 
(106765,54,292.0006,-5594.881,319.9669,0), 
(106765,55,267.1758,-5588.725,328.3419,0), 
(106765,56,237.2915,-5602.323,338.6695,0), 
(106765,57,218.7972,-5615.681,345.067,0), 
(106765,58,186.5289,-5623.821,362.3655,0), 
(106765,59,173.8314,-5625.129,369.6155,0), 
(106765,60,152.8633,-5618.469,380.9314,0), 
(106765,61,161.4112,-5596.208,377.8716,0), 
(106765,62,162.8286,-5563.692,376.684,0), 
(106765,63,134.8796,-5523.516,380.7457,0), 
(106765,64,117.3401,-5506.631,383.5353,150000), 
(106765,65,102.5721,-5486.114,385.2253,0), 
(106765,66,117.2642,-5453.976,375.4499,0), 
(106765,67,132.2456,-5444.522,369.4499,0), 
(106765,68,161.3176,-5437.454,354.9995,0), 
(106765,69,187.799,-5422.568,337.0727,0), 
(106765,70,205.1849,-5411.735,330.7125,0), 
(106765,71,240.3393,-5408.624,316.4078,0), 
(106765,72,273.7674,-5393.394,309.7301,0), 
(106765,73,311.4521,-5392.046,304.0436,0), 
(106765,74,342.4512,-5392.408,296.6713,0), 
(106765,75,378.6964,-5379.678,285.2323,0), 
(106765,76,403.1624,-5356.639,277.912,0), 
(106765,77,424.5204,-5361.746,275.662,0), 
(106765,78,452.5195,-5377.309,267.4185,0), 
(106765,79,475.168,-5396.057,268.5739,0), 
(106765,80,491.5289,-5428.523,270.2776,0), 
(106765,81,514.9224,-5458.965,266.3191,0), 
(106765,82,543.3873,-5475.916,266.9517,0), 
(106765,83,573.827,-5507.358,266.7101,0), 
(106765,84,573.7318,-5526.017,269.4601,0), 
(106765,85,571.1917,-5547.088,270.6234,0), 
(106765,86,570.2197,-5568.276,277.5863,0), 
(106765,87,573.9792,-5595.286,279.3363,0), 
(106765,88,594.5449,-5628.42,282.4048,0), 
(106765,89,599.9312,-5664.769,285.8932,0), 
(106765,90,602.5952,-5700.259,286.7901,0), 
(106765,91,600.2249,-5710.03,286.9151,0), 
(106765,92,614.451,-5730.68,282.5401,0), 
(106765,93,638.0155,-5753.443,280.9352,0), 
(106765,94,642.3651,-5777.468,282.2691,0), 
(106765,95,634.1559,-5803.342,285.4301,0), 
(106765,96,622.6512,-5826.227,287.6883,0), 
(106765,97,604.54,-5862.236,291.7136,0), 
(106765,98,575.5275,-5897.89,295.6904,0), 
(106765,99,564.2798,-5931.147,303.3279,0), 
(106765,100,571.1604,-5956.26,305.171,0), 
(106765,101,601.688,-5987.629,306.7942,0), 
(106765,102,639.1151,-5976.257,300.433,0), 
(106765,103,672.6286,-5954.94,295.8178,0), 
(106765,104,703.9697,-5935.614,287.848,0), 
(106765,105,729.6803,-5921.363,287.8194,0), 
(106765,106,758.6394,-5915.706,286.6399,0), 
(106765,107,801.3763,-5911.261,281.8266,0), 
(106765,108,829.8934,-5906.914,280.5766,0), 
(106765,109,866.1371,-5905.908,282.4091,0), 
(106765,110,902.1426,-5915.167,282.0864,0), 
(106765,111,931.32,-5909.499,282.4614,0), 
(106765,112,975.2076,-5901.494,279.8707,0), 
(106765,113,975.7309,-5876.588,277.5629,0), 
(106765,114,978.7693,-5839.024,263.7001,0), 
(106765,115,993.9783,-5804.497,254.9814,0), 
(106765,116,1009.25,-5800.796,253.1916,0), 
(106765,117,1041.182,-5815.064,253.9918,0), 
(106765,118,1063.489,-5818.675,252.6168,0), 
(106765,119,1076.499,-5796.738,242.0571,0), 
(106765,120,1094.551,-5768.911,233.4321,0), 
(106765,121,1096.775,-5745.697,231.0954,0), 
(106765,122,1104.765,-5724.511,231.2988,0), 
(106765,123,1111.172,-5698.571,223.6633,0), 
(106765,124,1118.027,-5666.451,219.8953,0), 
(106765,125,1122.281,-5632.291,215.4083,0), 
(106765,126,1142.234,-5604.729,210.9409,0), 
(106765,127,1164.727,-5594.601,209.9553,0), 
(106765,128,1190.078,-5584.507,208.7966,0), 
(106765,129,1209.057,-5567.39,207.1079,0), 
(106765,130,1219.742,-5530.55,198.9219,0), 
(106765,131,1216.791,-5497.049,197.3518,0), 
(106765,132,1226.24,-5457.447,189.2728,0), 
(106765,133,1270.411,-5438.652,183.4649,43000), 
(106765,134,1279.54,-5444.132,184.8399,0), 
(106765,135,1285.865,-5478.409,189.8102,0), 
(106765,136,1277.791,-5518.891,195.8421,0), 
(106765,137,1271.197,-5540.667,200.7146,0), 
(106765,138,1272.327,-5557.027,202.8396,0), 
(106765,139,1275.729,-5570.335,203.7362,0), 
(106765,140,1301.448,-5592.19,211.4009,0), 
(106765,141,1333.026,-5608.529,212.5897,0), 
(106765,142,1363.088,-5635.721,221.4577,0), 
(106765,143,1380.455,-5670.684,233.9421,0), 
(106765,144,1394.964,-5700.539,244.5264,0), 
(106765,145,1412.665,-5726.687,254.9367,0), 
(106765,146,1422.228,-5739.741,262.6032,29000);
INSERT IGNORE INTO `creature_addon` SET `guid`= 106765, `path_id`= 106765;
UPDATE `item_template` SET `ammo_type` = '0' WHERE `class` =6 AND `subclass` =3;
UPDATE `item_template` SET `ammo_type` = '0' WHERE `class` =6 AND `subclass` =2;

# WDB
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=8069;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=23773;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=25861;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=2515;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=2519;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=3030;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=3033;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=3465;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=8069;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=11284;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=11285;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=12654;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=13377;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=19316;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=19317;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=23773;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=24417;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=25861;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=30611;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=30612;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=2515;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=2519;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=3030;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=3033;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=8069;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=11284;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=11285;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=23773;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=25861;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=2519;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=3030;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=3033;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=8069;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=11284;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=25861;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=2515;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=2519;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=3030;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=3033;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=3465;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=8069;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=11284;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=11285;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=13377;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=19316;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=19317;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=23773;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=24417;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=25861;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=30611;
UPDATE `item_template` SET `ammo_type`=0 WHERE `entry`=30612;

# FIX
DELETE FROM `creature_template_addon` WHERE `entry` = 32638;
DELETE FROM `creature_template_addon` WHERE `entry` = 32642;

# timmit
UPDATE `creature_template` SET `faction_A` = 2050, `faction_H` = 2050 WHERE `entry` = 28486;
UPDATE `creature_template` SET `faction_A` = 2050, `faction_H` = 2050 WHERE `entry` = 27928;
UPDATE `creature_template` SET `unit_flags` = 33554944 WHERE `entry` in (29588,29589);
UPDATE `creature_template` SET `npcflag` = 3, `unit_flags` = 33536 WHERE `entry` = 28914;
DELETE FROM `creature_template_addon` WHERE (`entry`=28936);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (28936, 2404, 0, 4097, 0, 0, '');
UPDATE `creature_template` SET `faction_A` = 1802 WHERE `entry` = 30400;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 30849;
UPDATE `gameobject_template` SET `faction` = 0 WHERE `entry` = 190763;
UPDATE `gameobject` SET `phaseMask` = 65, `position_x` = 5311.445, `position_y` = 2618.931, `position_z` = 409.0916, `orientation` = -2.373644, `rotation2` = 0, `rotation3` = 1 WHERE `guid` = 37579;
-- Крепость после победы Орды 65 фаза
DELETE FROM `creature_template_addon` WHERE (`entry`=30739);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (30739, 0, 0, 257, 375, 0, '');
UPDATE `creature_template` SET `faction_A` = 2135, `faction_H` = 2135 WHERE `entry` = 27869;
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 27869;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(47707, '27869', '571', '1', '65', '11686', '0', '5335.971000', '2566.218000', '396.156500', '0.017453', '300', '0', '0', '5342', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(47780, '27869', '571', '1', '65', '11686', '0', '5335.527000', '2706.806000', '409.250200', '4.782202', '300', '0', '0', '5342', '0', '0', '0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(47801, '27869', '571', '1', '65', '11686', '0', '5333.178000', '2840.276000', '409.322500', '3.145856', '300', '0', '0', '5342', '0', '0', '0');
UPDATE `creature` SET `phaseMask` = 65, `position_x` = 5296.32, `position_y` = 2728.603, `position_z` = 409.3163, `orientation` = 1.441746 WHERE `guid` = 86523;
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 86523;
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`) VALUES
(86523, 1, 5295.80300, 2724.62100, 409.31630),
(86523, 2, 5295.93200, 2725.61300, 409.31630),
(86523, 3, 5296.64500, 2731.10600, 409.31630),
(86523, 4, 5297.87400, 2738.15500, 409.31630),
(86523, 5, 5297.87400, 2738.15500, 409.31630);
INSERT IGNORE INTO `creature_addon` SET `guid`= 86523, `path_id`= 86523;
UPDATE `creature` SET `phaseMask` = 65, `position_x` = 5296.564, `position_y` = 2789.874, `position_z` = 409.2747, `orientation` = 0.733038 WHERE `guid` = 121101;
UPDATE `gameobject_template` SET `faction` = 114, `flags` = 0 WHERE `entry` in (193141,193140,193139,193145,193146,193144,192951,193143,192378,192362,192368,188215,192379,192363,193160,192339,192285,192032,192358,192372,193161,192371,192359,192284,192338,193118,193119,193114,193122,193120,193121,193123,193112,193113,193115,193116,193117,193110,193111,192376,192361,192360);
UPDATE `gameobject` SET `phaseMask` = 65 WHERE `id` in (193141,193140,193139,193145,193146,193144,192951,193143,192378,192362,192368,188215,192379,192363,193160,192339,192285,192032,192358,192372,193161,192371,192359,192284,192338,193118,193119,193114,193122,193120,193121,193123,193112,193113,193115,193116,193117,193110,193111,192376,192361,192360);
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 23472;
UPDATE `creature` SET `phaseMask` = `phaseMask`|65|128 WHERE `guid` = 131655;
UPDATE `creature` SET `phaseMask` = `phaseMask`|65|128 WHERE `guid` = 131656;
UPDATE `creature` SET `phaseMask` = `phaseMask`|65|128 WHERE `id` = 27852;
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7 WHERE `entry` = 27852;
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 27852;
UPDATE `creature` SET `phaseMask` = 65 WHERE `guid` = 90095;
UPDATE `creature_template` SET `unit_flags` = 768 WHERE `entry` = 32296;
DELETE FROM `creature_template_addon` WHERE (`entry`=32296);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (32296, 27245, 0, 1, 0, 0, '');
UPDATE `creature` SET `phaseMask` = 65, `position_x` = 5374.568, `position_y` = 2790.784, `position_z` = 409.3225, `orientation` = 2.722714 WHERE `guid` = 121119;
UPDATE `creature_template` SET `faction_A` = 1981, `faction_H` = 1981, `unit_flags` = 768 WHERE `entry` = 39173;
DELETE FROM `creature_template_addon` WHERE (`entry`=39173);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (39173, 29261, 0, 1, 0, 0, '');
DELETE FROM `creature_model_info` WHERE (`modelid`=31347);
INSERT INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES (31347, 0.3366, 1.65, 0, 0);
UPDATE `creature` SET `phaseMask` = 65 WHERE `guid` = 116002;
DELETE FROM `creature_model_info` WHERE (`modelid`=27121);
INSERT INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES (27121, 0.3, 1, 2, 0);
UPDATE `creature_template` SET `faction_A` = 2059, `faction_H` = 2059, `flags_extra` = 2 WHERE `entry` = 30560;
UPDATE `creature` SET `phaseMask` = 65 WHERE `id` = 30560;
UPDATE `creature_template` SET `unit_flags` = 0 WHERE `entry` = 30739;
UPDATE `creature` SET `phaseMask` = 65, `position_x` = 5407.837, `position_y` = 2819.29, `orientation` = 0.471239 WHERE `guid` = 77307;
UPDATE `creature_template` SET `faction_A` = 714, `faction_H` = 714 WHERE `entry` = 32620;
UPDATE `creature_template` SET `faction_A` = 714, `faction_H` = 714 WHERE `entry` = 32617;
UPDATE `creature` SET `phaseMask` = 65, `position_x` = 5415.116, `position_y` = 811.424, `orientation` = 2.321288 WHERE `guid` = 77310;
DELETE FROM `creature_model_info` WHERE (`modelid`=26494);
INSERT INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES (26494, 1, 0, 2, 0);
UPDATE `gameobject_template` SET `faction` = 0 WHERE `entry` = 190356;
UPDATE `gameobject` SET `phaseMask` = 65, `position_x` = 5452.708, `position_y` = 2855.019, `position_z` = 418.6749, `orientation` = 0.698131, `rotation2` = 0, `rotation3` = 1 WHERE `guid` = 13369;
UPDATE `gameobject` SET `phaseMask` = 65, `position_x` = 5401.634, `position_y` = 2853.667, `position_z` = 418.6748, `orientation` = 2.635444, `rotation2` = 0, `rotation3` = 1 WHERE `guid` = 37578;
UPDATE `creature_template` SET `unit_flags` = 64 WHERE `entry` = 31091;
UPDATE `creature` SET `phaseMask` = 65 WHERE `guid` = 88691;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(42, '192903', '571', '1', '65', '5489.804000', '2839.925000', '423.592400', '3.132858', '0.000000', '0.000000', '0.999991', '0.004363', '300', '255', '1');
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(46, '192904', '571', '1', '65', '5489.804000', '2839.925000', '423.592400', '3.132858', '0.000000', '0.000000', '0.999991', '0.004363', '300', '255', '1');
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(216, '195013', '571', '1', '65', '5476.189000', '2861.765000', '418.674700', '0.000000', '0.000000', '0.000000', '0.000000', '1.000000', '300', '255', '1');
UPDATE `creature_template` SET `faction_A` = 714, `faction_H` = 714 WHERE `entry` = 32623;
UPDATE `creature` SET `phaseMask` = 65, `position_x` = 5468.271, `position_y` = 2871.142, `position_z` = 418.7581, `orientation` = 0 WHERE `guid` = 77308;
UPDATE `creature_template` SET `faction_A` = 714, `faction_H` = 714 WHERE `entry` = 32625;
UPDATE `creature` SET `phaseMask` = 65, `position_x` = 5476.095, `position_y` = 2818.045, `position_z` = 418.7581, `orientation` = 4.380776 WHERE `guid` = 77309;
UPDATE `creature_template` SET `faction_A` = 714, `faction_H` = 714 WHERE `entry` = 32619;
UPDATE `creature` SET `phaseMask` = 65, `position_x` = 5467.565, `position_y` = 2810.079, `position_z` = 418.7581, `orientation` = 0.837758 WHERE `guid` = 77311;
UPDATE `creature_template` SET `unit_flags` = 64 WHERE `entry` = 31053;
UPDATE `creature` SET `phaseMask` = 65, `position_x` = 5390.624, `position_y` = 3027.994, `position_z` = 409.206, `orientation` = 3.056415 WHERE `guid` = 86524;
UPDATE `creature` SET `phaseMask` = 65 WHERE `guid` = 90097;
UPDATE `creature_template` SET `faction_A` = 834, `faction_H` = 834 WHERE `entry` = 29124;
UPDATE `creature_template` SET `faction_A` = 2081, `faction_H` = 2081, `unit_flags` = 526336 WHERE `entry` = 28320;
UPDATE `creature_template` SET `unit_flags` = 64 WHERE `entry` = 27801;
UPDATE `creature_template` SET `faction_A` = 1984, `faction_H` = 1984 WHERE `entry` = 25419;
UPDATE `creature_template` SET `faction_A` = 1984, `faction_H` = 1984, `unit_flags` = 512 WHERE `entry` = 25418;
UPDATE `creature_template` SET `faction_A` = 1983, `faction_H` = 1983, `unit_flags` = 526336 WHERE `entry` = 25417;
UPDATE `creature_template` SET `faction_A` = 834, `faction_H` = 834 WHERE `entry` = 25415;

# NeatElves
DELETE FROM `npc_vendor` WHERE `item` = 33978;
DELETE FROM `npc_vendor` WHERE `item` = 34028;
DELETE FROM `creature_questrelation` WHERE `id` = 23872 AND `quest` = 11486;
DELETE FROM `creature_questrelation` WHERE `id` = 23872 AND `quest` = 11487;
DELETE FROM `gameobject` WHERE `guid` = 41936;
DELETE FROM `gameobject` WHERE `guid` = 41928;
DELETE FROM `gameobject` WHERE `guid` = 71786;
DELETE FROM `game_event_gameobject` WHERE `guid` = 41928;
DELETE FROM `game_event_gameobject` WHERE `guid` = 41936;
DELETE FROM `game_event_gameobject` WHERE `guid` = 71786;
UPDATE `quest_template` SET `RequiredMaxRepValue` = '1' WHERE `RequiredMaxRepFaction` >0 and `RequiredMaxRepValue` = '0';

# timmit
DELETE FROM `creature_template_addon` WHERE (`entry`=31689);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (31689, 0, 33554432, 1, 0, 0, '59562 0');
DELETE FROM `creature_template_addon` WHERE (`entry`=32335);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (32335, 0, 0, 0, 0, 0, '60190 0');
DELETE FROM `creature_template_addon` WHERE (`entry`=31851);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (31851, 0, 0, 0, 0, 0, '60190 0');
DELETE FROM `creature_template_addon` WHERE (`entry`=32206);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (32206, 0, 0, 0, 0, 0, '60190 0');
DELETE FROM `creature_template_addon` WHERE (`entry`=32342);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (32342, 0, 0, 0, 0, 0, '35775 0');
DELETE FROM `creature_template_addon` WHERE (`entry`=31091);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (31091, 0, 0, 0, 0, 0, '18950 0 18950 1');
DELETE FROM `creature_template_addon` WHERE (`entry`=31053);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (31053, 0, 0, 0, 0, 0, '18950 0 18950 1');
DELETE FROM `creature_template_addon` WHERE (`entry`=29124);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (29124, 0, 0, 1, 0, 0, '53213 0 54189 0 ');
DELETE FROM `creature_template_addon` WHERE (`entry`=28113);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (28113, 0, 0, 0, 0, 0, '45801 0 52165 0 29266 0 29266 1 ');
DELETE FROM `creature_template_addon` WHERE (`entry`=28667);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (28667, 0, 0, 0, 0, 0, '52119 0 52182 0 50726 0');
DELETE FROM `creature_template_addon` WHERE (`entry`=28320);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (28320, 0, 0, 1, 429, 0, '52948 0');
DELETE FROM `creature_template_addon` WHERE (`entry`=29027);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (29027, 0, 0, 0, 0, 0, '52948 0 61750 0 61751 0');
DELETE FROM `creature_template_addon` WHERE (`entry`=28217);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (28217, 0, 0, 1, 0, 0, '51329 0 51329 1');
DELETE FROM `creature_template_addon` WHERE (`entry`=28095);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (28095, 0, 0, 1, 333, 0, '52162 0'); -- тригерится спелл, надо фразы
DELETE FROM `creature_template_addon` WHERE (`entry`=28097);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (28097, 0, 0, 1, 0, 0, '51344 0');
DELETE FROM `creature_template_addon` WHERE (`entry`=29036);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (29036, 0, 0, 1, 0, 0, '52948 0 61750 0 61751 0');
DELETE FROM `creature_template_addon` WHERE (`entry`=25428);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (25428, 0, 0, 1, 0, 0, '45579 0');
DELETE FROM `creature_template_addon` WHERE (`entry`=26112);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `path_id`, `auras`) VALUES (26112, 0, 0, 257, 0, 0, '46583 0');

# NeatElves
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(96579, 23984, 571, 1, 1, 0, 0, 1449.06, -3322.42, 168.821, 4.32397, 600, 0, 0, 46, 0, 0, 0),
(96580, 23984, 571, 1, 1, 0, 0, 1446.79, -3321.07, 168.821, 4.46299, 600, 0, 0, 46, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(14081,23842,571,1,1,0,0,1333.6532,-3155.84082,163.387131,3.700098,120,0,0,42540,0,0,0),
(14083,23842,571,1,1,0,0,1328.51221,-3158.509,165.5484,3.71755123,120,0,0,42540,0,0,0),
(14093,23842,571,1,1,0,0,1333.17688,-3166.75513,165.546646,3.61283159,120,0,0,42540,0,0,0),
(14099,23842,571,1,1,0,0,1356.70667,-3143.38,165.644669,3.50811172,120,0,0,42540,0,0,0),
(14410,23842,571,1,1,0,0,1346.59692,-3150.12427,163.418121,1.93731546,120,0,0,42540,0,0,0),
(18450,23842,571,1,1,0,0,1349.62915,-3156.68066,163.478943,2.05948853,120,0,0,42540,0,0,0),
(19062,23842,571,1,1,0,0,1356.83508,-3153.95825,165.591446,3.63028479,120,0,0,42540,0,0,0);
REPLACE INTO `creature_addon` (`guid`,`bytes1`,`bytes2`,`auras`) VALUES  
(14081,3,2,'46769 0'),
(14083,3,2,'46769 0'),
(14093,3,2,'46769 0'),
(14099,3,2,'46769 0'),
(14410,3,2,'46769 0'),
(18450,3,2,'46769 0'),
(19062,3,2,'46769 0');
DELETE FROM `creature` WHERE `guid` = 77856;
DELETE FROM `creature` WHERE `guid` = 77370;
DELETE FROM `creature` WHERE `guid` = 126468;
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=21403;

# conditions
REPLACE INTO `gossip_menu_option` VALUES ('27806', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu` VALUES ('27806', '12869');
REPLACE INTO `gossip_menu` VALUES ('27806', '13155');
REPLACE INTO `conditions` VALUES ('18', '0', '33621', '0', '24', '1', '23564', '0', '0', '', null);


# WDB_Check
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=1911;


# Temp_FIX
UPDATE `gossip_scripts` SET `command` = '34' WHERE `command` =19;
update conditions set ConditionTypeOrReference='0' where ConditionTypeOrReference='13' AND SourceTypeOrReferenceId=15;
update conditions set ConditionTypeOrReference='0' where ConditionTypeOrReference='15' AND SourceTypeOrReferenceId=15;
update conditions set ConditionTypeOrReference='0' where ConditionTypeOrReference='16' AND SourceTypeOrReferenceId=15;
UPDATE `creature_template` SET `gossip_menu_id` = 0 WHERE `npcflag` = `npcflag`|32;
UPDATE `gossip_menu_option` SET `box_text`='Are you sure you wish to purchase a Dual Talent Specialization?' WHERE `option_id` =18;
DELETE FROM `gossip_menu_option` WHERE `option_text`= 'GOSSIP_OPTION_QUESTGIVER' AND `menu_id`>0;
UPDATE creature_template_addon SET path_id=0;

# NPC_FIX
UPDATE `creature_template` SET `faction_A` = '1802' WHERE `faction_A` = '1732';
UPDATE `creature_template` SET `faction_A` = '1802' WHERE `faction_A` = '1733';
UPDATE `creature_template` SET `faction_A` = '1802' WHERE `faction_A` = '84';
UPDATE `creature_template` SET `faction_H` = '1802' WHERE `faction_H` = '1732';
UPDATE `creature_template` SET `faction_H` = '1802' WHERE `faction_H` = '1733';
UPDATE `creature_template` SET `faction_H` = '1802' WHERE `faction_H` = '84';
UPDATE `creature_template` SET `faction_A` = '1801' WHERE `faction_A` = '1735';
UPDATE `creature_template` SET `faction_A` = '1801' WHERE `faction_A` = '1734';
UPDATE `creature_template` SET `faction_A` = '1801' WHERE `faction_A` = '83';
UPDATE `creature_template` SET `faction_H` = '1801' WHERE `faction_H` = '1735';
UPDATE `creature_template` SET `faction_H` = '1801' WHERE `faction_H` = '1734';
UPDATE `creature_template` SET `faction_H` = '1801' WHERE `faction_H` = '83';
UPDATE `gameobject_template` SET `faction` = '1801' WHERE `faction` = '1735';
UPDATE `gameobject_template` SET `faction` = '1801' WHERE `faction` = '1734';
UPDATE `gameobject_template` SET `faction` = '1801' WHERE `faction` = '83';
UPDATE `gameobject_template` SET `faction` = '1802' WHERE `faction` = '1732';
UPDATE `gameobject_template` SET `faction` = '1802' WHERE `faction` = '1733';
UPDATE `gameobject_template` SET `faction` = '1802' WHERE `faction` = '84';
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`unit_class`=`creature_template`.`unit_class`,
`copy`.`unit_flags`=`creature_template`.`unit_flags`,
`copy`.`npcflag`=`creature_template`.`npcflag`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`equipment_id`=`creature_template`.`equipment_id`,
`copy`.`faction_A`=`creature_template`.`faction_A`,
`copy`.`faction_H`=`creature_template`.`faction_H`,
`copy`.`speed_run`=`creature_template`.`speed_run`,
`copy`.`speed_walk`=`creature_template`.`speed_walk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`dmgschool`=`creature_template`.`dmgschool`,
`copy`.`mingold`=`creature_template`.`mingold`,
`copy`.`maxgold`=`creature_template`.`maxgold`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_1`;
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`unit_class`=`creature_template`.`unit_class`,
`copy`.`unit_flags`=`creature_template`.`unit_flags`,
`copy`.`npcflag`=`creature_template`.`npcflag`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`equipment_id`=`creature_template`.`equipment_id`,
`copy`.`faction_A`=`creature_template`.`faction_A`,
`copy`.`faction_H`=`creature_template`.`faction_H`,
`copy`.`speed_run`=`creature_template`.`speed_run`,
`copy`.`speed_walk`=`creature_template`.`speed_walk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`dmgschool`=`creature_template`.`dmgschool`,
`copy`.`mingold`=`creature_template`.`mingold`,
`copy`.`maxgold`=`creature_template`.`maxgold`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_2`;
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`unit_class`=`creature_template`.`unit_class`,
`copy`.`unit_flags`=`creature_template`.`unit_flags`,
`copy`.`npcflag`=`creature_template`.`npcflag`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`equipment_id`=`creature_template`.`equipment_id`,
`copy`.`faction_A`=`creature_template`.`faction_A`,
`copy`.`faction_H`=`creature_template`.`faction_H`,
`copy`.`speed_run`=`creature_template`.`speed_run`,
`copy`.`speed_walk`=`creature_template`.`speed_walk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`dmgschool`=`creature_template`.`dmgschool`,
`copy`.`mingold`=`creature_template`.`mingold`,
`copy`.`maxgold`=`creature_template`.`maxgold`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_3`;

# FINAL_ITEM_FIX
UPDATE `item_template` SET `StatsCount`=1 WHERE `stat_type1`>0 AND `stat_value1`<>0; 
UPDATE `item_template` SET `StatsCount`=2 WHERE `stat_type2`>0 AND `stat_value2`<>0; 
UPDATE `item_template` SET `StatsCount`=3 WHERE `stat_type3`>0 AND `stat_value3`<>0; 
UPDATE `item_template` SET `StatsCount`=4 WHERE `stat_type4`>0 AND `stat_value4`<>0; 
UPDATE `item_template` SET `StatsCount`=5 WHERE `stat_type5`>0 AND `stat_value5`<>0; 
UPDATE `item_template` SET `StatsCount`=6 WHERE `stat_type6`>0 AND `stat_value6`<>0; 
UPDATE `item_template` SET `StatsCount`=7 WHERE `stat_type7`>0 AND `stat_value7`<>0; 
UPDATE `item_template` SET `StatsCount`=8 WHERE `stat_type8`>0 AND `stat_value8`<>0; 
UPDATE `item_template` SET `StatsCount`=9 WHERE `stat_type9`>0 AND `stat_value9`<>0; 
UPDATE `item_template` SET `StatsCount`=10 WHERE `stat_type10`>0 AND `stat_value10`<>0;
UPDATE `item_template` SET `DisenchantID` = 0 WHERE `RequiredDisenchantSkill` = -1;

# Final_FIX
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE QuestFlags=QuestFlags|4096;
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE QuestFlags=QuestFlags|32768;
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_linked_respawn` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_linked_respawn` WHERE `linkedGuid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `npc_gossip` WHERE `npc_guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `game_event_gameobject` WHERE `guid` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
UPDATE creature_template SET unit_flags=unit_flags&~2048 WHERE unit_flags&2048=2048;
UPDATE creature_template SET unit_flags=unit_flags&~524288 WHERE unit_flags&524288=524288;
UPDATE creature_template SET unit_flags=unit_flags&~67108864 WHERE unit_flags&67108864=67108864;
UPDATE creature_template SET unit_flags=unit_flags&~8388608 WHERE unit_flags&8388608=8388608;
UPDATE `creature` SET `MovementType` = 0 WHERE `spawndist` = 0 AND `MovementType`=1;
UPDATE `creature` SET `spawndist`=0 WHERE `MovementType`=0;
UPDATE `creature` SET `spawntimesecs` = 300 WHERE `spawntimesecs` = 25;
UPDATE `gameobject` SET `spawntimesecs` = 300 WHERE `spawntimesecs` = 25;
UPDATE `creature_template` SET `scale` = 1 WHERE `scale` = 0;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 0;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 3;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 10;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 25;
UPDATE `gameobject` SET `state`=1 WHERE `state`=0 AND `id` IN (SELECT entry FROM `gameobject_template` WHERE `type`=3);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_questrelation`);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_involvedrelation`);
# UPDATE `gameobject` SET `state` = 0 WHERE `id` IN (SELECT `entry` FROM `gameobject_template` WHERE `type` = 0 AND `data0` = 1);
UPDATE `gameobject_template` SET `flags`=`flags`&~4 WHERE `type` IN (2,19,17);
DELETE FROM `gameobject_scripts` WHERE `id` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `gameobject_scripts` WHERE `command` in (11, 12) and `datalong` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE `spellid_2` = 0 AND `spelltrigger_2` = 6;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `AIName` = 'EventAI' AND `ScriptName` = 'generic_creature';
UPDATE `creature_template` SET npcflag = npcflag|1 WHERE `gossip_menu_id` > 0;

UPDATE
`creature`, `waypoint_data`
SET
`creature`.`spawndist`=0,
`creature`.`MovementType`=2
WHERE
`creature`.`guid`=`waypoint_data`.`id`;

DELETE
`waypoint_data`
FROM
`waypoint_data`
LEFT JOIN
(`creature`)
ON
(`creature`.`guid`=`waypoint_data`.`id`)
WHERE
`creature`.`guid` IS NULL;

ALTER TABLE `waypoint_data` ADD INDEX `temp_action` (`action`);
ALTER TABLE `waypoint_scripts` ADD INDEX `temp_id` (`id`);
DELETE
`waypoint_scripts`
FROM
`waypoint_scripts`
LEFT JOIN
(`waypoint_data`)
ON
(`waypoint_data`.`action`=`waypoint_scripts`.`id`)
WHERE
`waypoint_data`.`action` IS NULL;
ALTER TABLE `waypoint_data` DROP INDEX `temp_action`;
ALTER TABLE `waypoint_scripts` DROP INDEX `temp_id`;

update creature_addon set path_id=0;
UPDATE
`creature_addon`, `waypoint_data`
SET
`creature_addon`.`path_id`=`creature_addon`.`guid`
WHERE
`creature_addon`.`guid`=`waypoint_data`.`id`;

UPDATE version SET `cache_id`= '562';
UPDATE version SET `core_revision`= '9589';
UPDATE version SET `db_version`= 'YTDB_0.13.8_R562_TC_R9589_ACID_R304_RuDB_R38.2';
