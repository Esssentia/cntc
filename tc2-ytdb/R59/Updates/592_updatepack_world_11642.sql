# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 591_FIX_11600 592_FIX_11642 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('592_FIX_11642');

# TC
UPDATE waypoint_scripts SET datalong2=1 WHERE datalong=46400;
UPDATE `creature_template` SET `VehicleID` = '430' WHERE entry = 34658;
UPDATE `creature_template` SET `VehicleID` = '477' WHERE entry = 34705;
UPDATE `creature_template` SET `VehicleID` = '478' WHERE entry = 35633;
UPDATE `creature_template` SET `VehicleID` = '481' WHERE entry = 35636;
UPDATE `creature_template` SET `VehicleID` = '482' WHERE entry = 35637;
UPDATE `creature_template` SET `VehicleID` = '529' WHERE entry = 35644;
INSERT IGNORE INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(15214,0,0,1,0, NULL), -- Invisible Stalker
(25171,0,0,1,0, NULL), -- Invisible Stalker (Scale x0.5)
(30281,0,1,1,0, NULL), -- Silver Covenant Hippogryph
(30298,0,0,1,0, NULL), -- Invisible Stalker (Float, Uninteractible, LargeAOI)
(30342,0,0,1,0, NULL), -- Orgrim's Hammer
(30343,0,0,1,0, NULL), -- The Skybreaker
(31898,0,0,1,0, NULL), -- Asric
(31899,0,0,1,0, NULL), -- Jadaar
(32498,0,0,1,0, '51583 0'), -- Glacier Penguin; Aura: [DND] Creature Random Size (0 - 50)
(33222,0,0,1,0, '5301 0'), -- Sir Marcus Barlowe; Aura: Defensive State (DND)
(33223,0,0,1,0, '5301 0'), -- Captain Joseph Holley Aura: Defensive State (DND)
(33225,0,0,1,0, '5301 0 62594 0'), -- Marshal Jacob Alerius Aura: Defensive State (DND), Stormwind Champion's Pennant
(33229,0,0,1,0, '7056 0'); -- Melee Target
INSERT IGNORE INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(17539,0,0,257,0,NULL), -- Totem of Wrath I
(30652,0,0,257,0,NULL), -- Totem of Wrath II
(30653,0,0,257,0,NULL), -- Totem of Wrath III
(30654,0,0,1,0,NULL); -- Totem of Wrath IV
DELETE FROM `spell_group` WHERE `spell_id`=30708; -- Unneeded stack rules

# Chaosua
REPLACE INTO `waypoint_scripts` VALUES (233, 0, 15, 55244, 1, 0, 0, 0, 0, 0, 875);
REPLACE INTO `waypoint_scripts` VALUES (234, 0, 15, 55244, 1, 0, 0, 0, 0, 0, 876);
REPLACE INTO `waypoint_scripts` VALUES (235, 0, 15, 55244, 1, 0, 0, 0, 0, 0, 877);
REPLACE INTO `waypoint_scripts` VALUES (342, 0, 15, 29122, 1, 0, 0, 0, 0, 0, 878);
REPLACE INTO `waypoint_scripts` VALUES (343, 0, 15, 29122, 1, 0, 0, 0, 0, 0, 879);
REPLACE INTO `waypoint_scripts` VALUES (344, 0, 15, 29122, 1, 0, 0, 0, 0, 0, 880);
REPLACE INTO `waypoint_scripts` VALUES (345, 0, 15, 29122, 1, 0, 0, 0, 0, 0, 881);
REPLACE INTO `waypoint_scripts` VALUES (346, 0, 15, 29122, 1, 0, 0, 0, 0, 0, 882);
REPLACE INTO `waypoint_scripts` VALUES (347, 0, 15, 29120, 1, 0, 0, 0, 0, 0, 883);
REPLACE INTO `waypoint_scripts` VALUES (348, 0, 15, 29120, 1, 0, 0, 0, 0, 0, 884);
REPLACE INTO `waypoint_scripts` VALUES (349, 0, 15, 29120, 1, 0, 0, 0, 0, 0, 885);
REPLACE INTO `waypoint_scripts` VALUES (350, 0, 15, 29120, 1, 0, 0, 0, 0, 0, 886);
REPLACE INTO `waypoint_scripts` VALUES (361, 0, 15, 8293, 1, 0, 0, 0, 0, 0, 887);
REPLACE INTO `waypoint_scripts` VALUES (365, 0, 15, 8293, 1, 0, 0, 0, 0, 0, 888);
REPLACE INTO `waypoint_scripts` VALUES (374, 0, 15, 8293, 1, 0, 0, 0, 0, 0, 889);
REPLACE INTO `waypoint_scripts` VALUES (383, 0, 15, 8293, 1, 0, 0, 0, 0, 0, 890);
REPLACE INTO `waypoint_scripts` VALUES (407, 0, 15, 29121, 1, 0, 0, 0, 0, 0, 891);
REPLACE INTO `waypoint_scripts` VALUES (408, 0, 15, 29121, 1, 0, 0, 0, 0, 0, 892);
REPLACE INTO `waypoint_scripts` VALUES (409, 0, 15, 29121, 1, 0, 0, 0, 0, 0, 893);
REPLACE INTO `waypoint_scripts` VALUES (410, 0, 15, 29121, 1, 0, 0, 0, 0, 0, 894);
REPLACE INTO `waypoint_scripts` VALUES (411, 0, 15, 29121, 1, 0, 0, 0, 0, 0, 895);
REPLACE INTO `waypoint_scripts` VALUES (509, 0, 15, 33808, 1, 0, 0, 0, 0, 0, 898);
REPLACE INTO `waypoint_scripts` VALUES (510, 0, 15, 33808, 1, 0, 0, 0, 0, 0, 899);
REPLACE INTO `waypoint_scripts` VALUES (511, 0, 15, 33808, 1, 0, 0, 0, 0, 0, 900);
REPLACE INTO `waypoint_scripts` VALUES (512, 0, 15, 33808, 1, 0, 0, 0, 0, 0, 901);
REPLACE INTO `waypoint_scripts` VALUES (513, 0, 15, 33808, 1, 0, 0, 0, 0, 0, 902);
REPLACE INTO `waypoint_scripts` VALUES (514, 0, 15, 33808, 1, 0, 0, 0, 0, 0, 903);
REPLACE INTO `waypoint_scripts` VALUES (515, 0, 15, 33808, 1, 0, 0, 0, 0, 0, 904);
REPLACE INTO `waypoint_scripts` VALUES (516, 0, 15, 33808, 1, 0, 0, 0, 0, 0, 905);
REPLACE INTO `waypoint_scripts` VALUES (517, 0, 15, 33808, 1, 0, 0, 0, 0, 0, 906);
REPLACE INTO `waypoint_scripts` VALUES (518, 0, 15, 33808, 1, 0, 0, 0, 0, 0, 907);
REPLACE INTO `waypoint_scripts` VALUES (519, 0, 15, 33808, 1, 0, 0, 0, 0, 0, 908);
REPLACE INTO `waypoint_scripts` VALUES (520, 0, 15, 33808, 1, 0, 0, 0, 0, 0, 909);
REPLACE INTO `waypoint_scripts` VALUES (521, 0, 15, 33808, 1, 0, 0, 0, 0, 0, 910);
REPLACE INTO `waypoint_scripts` VALUES (522, 0, 15, 33808, 1, 0, 0, 0, 0, 0, 911);
REPLACE INTO `waypoint_scripts` VALUES (523, 0, 15, 33806, 1, 0, 0, 0, 0, 0, 912);
REPLACE INTO `waypoint_scripts` VALUES (524, 0, 15, 33806, 1, 0, 0, 0, 0, 0, 913);
REPLACE INTO `waypoint_scripts` VALUES (525, 0, 15, 33806, 1, 0, 0, 0, 0, 0, 914);
REPLACE INTO `waypoint_scripts` VALUES (526, 0, 15, 33806, 1, 0, 0, 0, 0, 0, 915);
REPLACE INTO `waypoint_scripts` VALUES (527, 0, 15, 33805, 1, 0, 0, 0, 0, 0, 916);
REPLACE INTO `waypoint_scripts` VALUES (528, 0, 15, 33805, 1, 0, 0, 0, 0, 0, 917);
REPLACE INTO `waypoint_scripts` VALUES (529, 0, 15, 33805, 1, 0, 0, 0, 0, 0, 918);
REPLACE INTO `waypoint_scripts` VALUES (593, 0, 15, 51256, 1, 0, 0, 0, 0, 0, 923);
REPLACE INTO `waypoint_scripts` VALUES (650, 0, 15, 55419, 1, 0, 0, 0, 0, 0, 924);
REPLACE INTO `waypoint_scripts` VALUES (651, 0, 15, 55419, 1, 0, 0, 0, 0, 0, 925);
REPLACE INTO `waypoint_scripts` VALUES (652, 0, 15, 55419, 1, 0, 0, 0, 0, 0, 926);
REPLACE INTO `waypoint_scripts` VALUES (653, 0, 15, 55419, 1, 0, 0, 0, 0, 0, 927);
REPLACE INTO `waypoint_scripts` VALUES (654, 0, 15, 55419, 1, 0, 0, 0, 0, 0, 928);
REPLACE INTO `waypoint_scripts` VALUES (655, 0, 15, 55419, 1, 0, 0, 0, 0, 0, 929);
REPLACE INTO `waypoint_scripts` VALUES (656, 0, 15, 55419, 1, 0, 0, 0, 0, 0, 930);
REPLACE INTO `waypoint_scripts` VALUES (657, 0, 15, 55419, 1, 0, 0, 0, 0, 0, 931);
REPLACE INTO `waypoint_scripts` VALUES (658, 0, 15, 51616, 1, 0, 0, 0, 0, 0, 932);
REPLACE INTO `waypoint_scripts` VALUES (659, 0, 15, 51616, 1, 0, 0, 0, 0, 0, 933);
REPLACE INTO `waypoint_scripts` VALUES (660, 0, 15, 51616, 1, 0, 0, 0, 0, 0, 934);
REPLACE INTO `waypoint_scripts` VALUES (661, 0, 15, 51616, 1, 0, 0, 0, 0, 0, 935);
REPLACE INTO `waypoint_scripts` VALUES (662, 0, 15, 51616, 1, 0, 0, 0, 0, 0, 936);
REPLACE INTO `waypoint_scripts` VALUES (663, 0, 15, 52837, 1, 0, 0, 0, 0, 0, 937);
REPLACE INTO `waypoint_scripts` VALUES (664, 0, 15, 51616, 1, 0, 0, 0, 0, 0, 938);
REPLACE INTO `waypoint_scripts` VALUES (665, 0, 15, 51616, 1, 0, 0, 0, 0, 0, 939);
REPLACE INTO `waypoint_scripts` VALUES (666, 0, 15, 51616, 1, 0, 0, 0, 0, 0, 940);
REPLACE INTO `waypoint_scripts` VALUES (667, 0, 15, 52833, 1, 0, 0, 0, 0, 0, 941);
REPLACE INTO `waypoint_scripts` VALUES (725, 0, 15, 52686, 1, 0, 0, 0, 0, 0, 981);
REPLACE INTO `waypoint_scripts` VALUES (726, 0, 15, 52686, 1, 0, 0, 0, 0, 0, 982);
REPLACE INTO `waypoint_scripts` VALUES (727, 0, 15, 52681, 1, 0, 0, 0, 0, 0, 983);
REPLACE INTO `waypoint_scripts` VALUES (728, 0, 15, 52686, 1, 0, 0, 0, 0, 0, 984);
REPLACE INTO `waypoint_scripts` VALUES (729, 0, 15, 52686, 1, 0, 0, 0, 0, 0, 985);
REPLACE INTO `waypoint_scripts` VALUES (730, 0, 15, 52681, 1, 0, 0, 0, 0, 0, 986);
REPLACE INTO `waypoint_scripts` VALUES (731, 0, 15, 52681, 1, 0, 0, 0, 0, 0, 987);
REPLACE INTO `waypoint_scripts` VALUES (732, 0, 15, 52681, 1, 0, 0, 0, 0, 0, 988);
REPLACE INTO `waypoint_scripts` VALUES (733, 0, 15, 51577, 1, 0, 0, 0, 0, 0, 989);
REPLACE INTO `waypoint_scripts` VALUES (734, 0, 15, 51579, 1, 0, 0, 0, 0, 0, 990);
REPLACE INTO `waypoint_scripts` VALUES (735, 0, 15, 52834, 1, 0, 0, 0, 0, 0, 991);
REPLACE INTO `waypoint_scripts` VALUES (736, 0, 15, 52838, 1, 0, 0, 0, 0, 0, 992);
REPLACE INTO `waypoint_scripts` VALUES (737, 0, 15, 51606, 1, 0, 0, 0, 0, 0, 993);
REPLACE INTO `waypoint_scripts` VALUES (738, 0, 15, 51607, 1, 0, 0, 0, 0, 0, 994);
REPLACE INTO `waypoint_scripts` VALUES (739, 0, 15, 48293, 1, 0, 0, 0, 0, 0, 995);
REPLACE INTO `waypoint_scripts` VALUES (740, 0, 15, 48293, 1, 0, 0, 0, 0, 0, 996);
REPLACE INTO `waypoint_scripts` VALUES (751, 0, 15, 46685, 1, 0, 0, 0, 0, 0, 1001);
REPLACE INTO `waypoint_scripts` VALUES (752, 0, 15, 51616, 1, 0, 0, 0, 0, 0, 1002);
REPLACE INTO `waypoint_scripts` VALUES (753, 0, 15, 51616, 1, 0, 0, 0, 0, 0, 1003);
REPLACE INTO `waypoint_scripts` VALUES (754, 0, 15, 55419, 1, 0, 0, 0, 0, 0, 1004);
REPLACE INTO `waypoint_scripts` VALUES (755, 0, 15, 55419, 1, 0, 0, 0, 0, 0, 1005);
REPLACE INTO `waypoint_scripts` VALUES (756, 0, 15, 55419, 1, 0, 0, 0, 0, 0, 1006);
REPLACE INTO `waypoint_scripts` VALUES (757, 0, 15, 55419, 1, 0, 0, 0, 0, 0, 1007);
REPLACE INTO `waypoint_scripts` VALUES (758, 0, 15, 48213, 1, 0, 0, 0, 0, 0, 1008);
REPLACE INTO `waypoint_scripts` VALUES (759, 0, 15, 48213, 1, 0, 0, 0, 0, 0, 1009);
REPLACE INTO `waypoint_scripts` VALUES (760, 0, 15, 48213, 1, 0, 0, 0, 0, 0, 1010);
REPLACE INTO `waypoint_scripts` VALUES (761, 0, 15, 48213, 1, 0, 0, 0, 0, 0, 1011);
REPLACE INTO `waypoint_scripts` VALUES (781, 0, 15, 55796, 1, 0, 0, 0, 0, 0, 1063);
REPLACE INTO `waypoint_scripts` VALUES (782, 0, 15, 54112, 1, 0, 0, 0, 0, 0, 1064);
REPLACE INTO `waypoint_scripts` VALUES (783, 0, 15, 51256, 1, 0, 0, 0, 0, 0, 1014);
REPLACE INTO `waypoint_scripts` VALUES (784, 0, 15, 46400, 1, 0, 0, 0, 0, 0, 1065);

# Broad
INSERT IGNORE INTO conditions (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(18, 0, 23485, 0, 24, 1, 17034, 0, 0, '', 'quest=9397');

# killradio_1337
UPDATE creature_template SET vehicleid = 0 WHERE entry = 31788;

# TC
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
-- Alliance
(19,0,13671,0,8,13835,0,0,0, '', NULL), -- Training In The Field - Mastery Of The Shield-Breaker
(20,0,13671,0,8,13835,0,0,0, '', NULL),
(19,0,13671,0,8,13837,0,0,0, '', NULL), -- Training In The Field - Mastery Of The Charge
(20,0,13671,0,8,13837,0,0,0, '', NULL),
(19,0,13671,0,8,13828,0,0,0, '', NULL), -- Training In The Field - Mastery Of Melee
(20,0,13671,0,8,13828,0,0,0, '', NULL),
(19,0,13625,0,8,13835,0,0,0, '', NULL), -- Learning The Reins - Mastery Of The Shield-Breaker
(20,0,13625,0,8,13835,0,0,0, '', NULL),
(19,0,13625,0,8,13837,0,0,0, '', NULL), -- Learning The Reins - Mastery Of The Charge
(20,0,13625,0,8,13837,0,0,0, '', NULL),
(19,0,13625,0,8,13828,0,0,0, '', NULL), -- Learning The Reins - Mastery Of Melee
(20,0,13625,0,8,13828,0,0,0, '', NULL),
(19,0,13670,0,8,13835,0,0,0, '', NULL), -- The Edge Of Winter - Mastery Of The Shield-Breaker
(20,0,13670,0,8,13835,0,0,0, '', NULL),
(19,0,13670,0,8,13837,0,0,0, '', NULL), -- The Edge Of Winter - Mastery Of The Charge
(20,0,13670,0,8,13837,0,0,0, '', NULL),
(19,0,13670,0,8,13828,0,0,0, '', NULL), -- The Edge Of Winter - Mastery Of Melee
(20,0,13670,0,8,13828,0,0,0, '', NULL),
(19,0,13669,0,8,13835,0,0,0, '', NULL), -- A Worthy Weapon - Mastery Of The Shield-Breaker
(20,0,13669,0,8,13835,0,0,0, '', NULL),
(19,0,13669,0,8,13837,0,0,0, '', NULL), -- A Worthy Weapon - Mastery Of The Charge
(20,0,13669,0,8,13837,0,0,0, '', NULL),
(19,0,13669,0,8,13828,0,0,0, '', NULL), -- A Worthy Weapon - Mastery Of Melee
(20,0,13669,0,8,13828,0,0,0, '', NULL),
(19,0,13666,0,8,13835,0,0,0, '', NULL), -- A Blade Fit For A Champion - Mastery Of The Shield-Breaker
(20,0,13666,0,8,13835,0,0,0, '', NULL),
(19,0,13666,0,8,13837,0,0,0, '', NULL), -- A Blade Fit For A Champion - Mastery Of The Charge
(20,0,13666,0,8,13837,0,0,0, '', NULL),
(19,0,13666,0,8,13828,0,0,0, '', NULL), -- A Blade Fit For A Champion - Mastery Of Melee
(20,0,13666,0,8,13828,0,0,0, '', NULL),
-- Horde
(19,0,13676,0,8,13838,0,0,0, '', NULL), -- Training In The Field - Mastery Of The Shield-Breaker
(20,0,13676,0,8,13838,0,0,0, '', NULL),
(19,0,13676,0,8,13839,0,0,0, '', NULL), -- Training In The Field - Mastery Of The Charge
(20,0,13676,0,8,13839,0,0,0, '', NULL),
(19,0,13676,0,8,13829,0,0,0, '', NULL), -- Training In The Field - Mastery Of Melee
(20,0,13676,0,8,13829,0,0,0, '', NULL),
(19,0,13677,0,8,13838,0,0,0, '', NULL), -- Learning The Reins - Mastery Of The Shield-Breaker
(20,0,13677,0,8,13838,0,0,0, '', NULL),
(19,0,13677,0,8,13839,0,0,0, '', NULL), -- Learning The Reins - Mastery Of The Charge
(20,0,13677,0,8,13839,0,0,0, '', NULL),
(19,0,13677,0,8,13829,0,0,0, '', NULL), -- Learning The Reins - Mastery Of Melee
(20,0,13677,0,8,13829,0,0,0, '', NULL),
(19,0,13675,0,8,13838,0,0,0, '', NULL), -- The Edge Of Winter - Mastery Of The Shield-Breaker
(20,0,13675,0,8,13838,0,0,0, '', NULL),
(19,0,13675,0,8,13839,0,0,0, '', NULL), -- The Edge Of Winter - Mastery Of The Charge
(20,0,13675,0,8,13839,0,0,0, '', NULL),
(19,0,13675,0,8,13829,0,0,0, '', NULL), -- The Edge Of Winter - Mastery Of Melee
(20,0,13675,0,8,13829,0,0,0, '', NULL),
(19,0,13674,0,8,13838,0,0,0, '', NULL), -- A Worthy Weapon - Mastery Of The Shield-Breaker
(20,0,13674,0,8,13838,0,0,0, '', NULL),
(19,0,13674,0,8,13839,0,0,0, '', NULL), -- A Worthy Weapon - Mastery Of The Charge
(20,0,13674,0,8,13839,0,0,0, '', NULL),
(19,0,13674,0,8,13829,0,0,0, '', NULL), -- A Worthy Weapon - Mastery Of Melee
(20,0,13674,0,8,13829,0,0,0, '', NULL),
(19,0,13673,0,8,13838,0,0,0, '', NULL), -- A Blade Fit For A Champion - Mastery Of The Shield-Breaker
(20,0,13673,0,8,13838,0,0,0, '', NULL),
(19,0,13673,0,8,13839,0,0,0, '', NULL), -- A Blade Fit For A Champion - Mastery Of The Charge
(20,0,13673,0,8,13839,0,0,0, '', NULL),
(19,0,13673,0,8,13829,0,0,0, '', NULL), -- A Blade Fit For A Champion - Mastery Of Melee
(20,0,13673,0,8,13829,0,0,0, '', NULL);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=25171; -- Invisible Stalker (Scale x0.5) (move to new file)
DELETE FROM `smart_scripts` WHERE `entryorguid`=25171 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(25171,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35469,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Gormok the Impaler (not repeteable)'),
(25171,0,1,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35470,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Icehowl (not repeteable)');
-- SAI for Gavin Gnarltree
SET @ENTRY := 225;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,1,2,40,0,100,0,1,@ENTRY,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gavin Gnarltree - Reach wp 1 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,5,25,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gavin Gnarltree - Reach wp 1 - ONESHOT_POINT'),
(@ENTRY,0,3,0,40,0,100,0,6,@ENTRY,0,0,54,50000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gavin Gnarltree - Reach wp 6 - pause path'),
(@ENTRY,0,4,5,40,0,100,0,10,@ENTRY,0,0,54,30000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gavin Gnarltree - Reach wp 10 - pause path'),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gavin Gnarltree - Reach wp 10 - STATE_WORK_MINING'),
(@ENTRY,0,6,0,56,0,100,0,10,@ENTRY,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Gavin Gnarltree - waypoint 10 resumed - STATE_NONE');
-- SAI for Joseph Wilson
SET @ENTRY := 33589;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,1,0,40,0,100,0,1,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Joseph Wilson - Reach wp 1 - run script'),
(@ENTRY,0,2,3,40,0,100,0,4,@ENTRY,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Joseph Wilson - Reach wp 4 - pause path'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.193953, 'Joseph Wilson - Reach wp 4 - turn to'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,54,22000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Joseph Wilson - Script - pause path'),
(@ENTRY*100,9,1,0,0,0,100,0,500,500,0,0,66,0,0,0,0,0,0,19,33479,0,0,0,0,0,0, 'Joseph Wilson - Script - turn to'),
(@ENTRY*100,9,2,0,0,0,100,0,500,500,0,0,11,61493,0,0,0,0,0,19,33479,0,0,0,0,0,0, 'Joseph Wilson - Script - cast'),
(@ENTRY*100,9,3,0,0,0,100,0,10000,10000,0,0,66,0,0,0,0,0,0,19,33460,0,0,0,0,0,0, 'Joseph Wilson - Script - turn to'),
(@ENTRY*100,9,4,0,0,0,100,0,500,500,0,0,11,61493,0,0,0,0,0,19,33460,0,0,0,0,0,0, 'Joseph Wilson - Script - cast');
-- SAI for Thomas Partridge
SET @ENTRY := 33854;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,1,2,40,0,100,0,1,@ENTRY,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Reach wp 1 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.01942, 'Thomas Partridge - Reach wp 1 - turn to'),
(@ENTRY,0,3,0,40,0,100,0,5,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Reach wp 5 - run script'),
(@ENTRY,0,4,0,40,0,100,0,9,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Reach wp 9 - run script'),
(@ENTRY,0,5,0,40,0,100,0,13,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Reach wp 13 - run script'),
(@ENTRY,0,6,0,40,0,100,0,16,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Reach wp 16 - run script'),
(@ENTRY,0,7,0,40,0,100,0,20,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Reach wp 20 - run script'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,54,8000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Script - pause path'),
(@ENTRY*100,9,1,0,0,0,100,0,500,500,0,0,5,273,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Thomas Partridge - Script - emote');
-- SAI for Brammold Deepmine
SET @ENTRY := 32509;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,1,2,40,0,100,0,2,@ENTRY,0,0,54,480000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Brammold Deepmine - Reach wp 2 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.321288, 'Brammold Deepmine - Reach wp 2 - turm to'),
(@ENTRY,0,3,4,40,0,100,0,8,@ENTRY,0,0,54,480000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Brammold Deepmine - Reach wp 8 - pause path'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.692969, 'Brammold Deepmine - Reach wp 8 - turn to');
-- SAI for Emi
SET @ENTRY := 32668;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,1,0,40,0,100,0,1,@ENTRY,0,0,54,18000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Emi - Reach wp 1 - pause path'),
(@ENTRY,0,2,3,40,0,100,0,2,@ENTRY,0,0,54,25000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Emi - Reach wp 2 - pause path'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.316126, 'Emi - Reach wp 2 - turm to');
-- SAI for Colin
SET @ENTRY := 32669;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,1,2,40,0,100,0,1,@ENTRY,0,0,54,4000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Colin - Reach wp 1 - pause path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.427974, 'Colin - Reach wp 1 - turm to'),
(@ENTRY,0,3,4,40,0,100,0,2,@ENTRY,0,0,54,28000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Colin - Reach wp 2 - pause path'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.2094395, 'Colin - Reach wp 2 - turm to'),
(@ENTRY,0,5,6,40,0,100,0,3,@ENTRY,0,0,54,23000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Colin - Reach wp 3 - pause path'),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.804818, 'Colin - Reach wp 3 - turm to');
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(-93682,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35469,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Gormok the Impaler'),
(-136629,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35469,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Gormok the Impaler'),
(-136630,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35469,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Gormok the Impaler'),
(-136631,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35469,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Gormok the Impaler'),
(-136632,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35470,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Icehowl'),
(-136633,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35470,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Icehowl'),
(-136634,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35470,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Icehowl'),
(-136635,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35470,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Icehowl'),
(-136636,0,0,0,1,0,100,1,500,500,0,0,11,63413,0,0,0,0,0,11,35470,10,0,0,0,0,0, 'Invisible Stalker (Scale x0.5) - OOC cast Rope Beam in Icehowl');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (19,20) AND `SourceEntry` IN (13593,13703,13704,13705,13706,13707,13708,13709,13710,13711);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(19,0,13593,0,8,13700,0,0,0,'','Valiant Of Stormwind - Alliance Champion Marker'),
(19,0,13703,0,8,13700,0,0,0,'','Valiant Of Ironforge - Alliance Champion Marker'),
(19,0,13704,0,8,13700,0,0,0,'','Valiant Of Gnomeregan - Alliance Champion Marker'),
(19,0,13705,0,8,13700,0,0,0,'','Valiant Of The Exodar - Alliance Champion Marker'),
(19,0,13706,0,8,13700,0,0,0,'','Valiant Of Darnassus - Alliance Champion Marker'),
(19,0,13707,0,8,13701,0,0,0,'','Valiant Of Orgrimmar - Horde Champion Marker'),
(19,0,13708,0,8,13701,0,0,0,'','Valiant Of Sen''jin - Horde Champion Marker'),
(19,0,13709,0,8,13701,0,0,0,'','Valiant Of Thunder Bluff - Horde Champion Marker'),
(19,0,13710,0,8,13701,0,0,0,'','Valiant Of Undercity - Horde Champion Marker'),
(19,0,13711,0,8,13701,0,0,0,'','Valiant Of Silvermoon - Horde Champion Marker'),
(20,0,13593,0,8,13700,0,0,0,'','Valiant Of Stormwind - Alliance Champion Marker'),
(20,0,13703,0,8,13700,0,0,0,'','Valiant Of Ironforge - Alliance Champion Marker'),
(20,0,13704,0,8,13700,0,0,0,'','Valiant Of Gnomeregan - Alliance Champion Marker'),
(20,0,13705,0,8,13700,0,0,0,'','Valiant Of The Exodar - Alliance Champion Marker'),
(20,0,13706,0,8,13700,0,0,0,'','Valiant Of Darnassus - Alliance Champion Marker'),
(20,0,13707,0,8,13701,0,0,0,'','Valiant Of Orgrimmar - Horde Champion Marker'),
(20,0,13708,0,8,13701,0,0,0,'','Valiant Of Sen''jin - Horde Champion Marker'),
(20,0,13709,0,8,13701,0,0,0,'','Valiant Of Thunder Bluff - Horde Champion Marker'),
(20,0,13710,0,8,13701,0,0,0,'','Valiant Of Undercity - Horde Champion Marker'),
(20,0,13711,0,8,13701,0,0,0,'','Valiant Of Silvermoon - Horde Champion Marker');
UPDATE `npc_spellclick_spells` SET `quest_end`=13687 WHERE `npc_entry`=33842; -- Sunreaver Hawkstrider - !Horde Tournament Eligibility Marker
UPDATE `npc_spellclick_spells` SET `quest_end`=13686 WHERE `npc_entry`=33843; -- Quel'dorei Steed - !Alliance Tournament Eligibility Marker

# FIX
DELETE FROM npc_spellclick_spells WHERE npc_entry=28202;
INSERT INTO `npc_spellclick_spells` VALUES ('28202', '50927', '12527', '1', '12527', '2', '0', '0', '0');
INSERT INTO `npc_spellclick_spells` VALUES ('28202', '50926', '12527', '1', '12527', '1', '0', '0', '0');
DELETE FROM npc_spellclick_spells WHERE npc_entry=28389;
INSERT INTO `npc_spellclick_spells` VALUES ('28389', '51592', '12605', '1', '12605', '1', '0', '0', '0');
INSERT INTO `npc_spellclick_spells` VALUES ('28389', '51593', '12605', '1', '12605', '3', '0', '0', '0');
DELETE FROM npc_spellclick_spells WHERE npc_entry=31269;
INSERT INTO `npc_spellclick_spells` VALUES ('31269', '46598', '0', '0', '0', '1', '0', '0', '0');
DELETE FROM npc_spellclick_spells WHERE npc_entry=33498;
INSERT INTO `npc_spellclick_spells` VALUES ('33498', '63126', '13654', '1', '13654', '3', '0', '0', '0');
DELETE FROM npc_spellclick_spells WHERE npc_entry=38431;
INSERT INTO `npc_spellclick_spells` VALUES ('38431', '47020', '0', '0', '0', '1', '0', '0', '0');
DELETE FROM npc_spellclick_spells WHERE npc_entry=38585;
INSERT INTO `npc_spellclick_spells` VALUES ('38585', '47020', '0', '0', '0', '1', '0', '0', '0');
DELETE FROM npc_spellclick_spells WHERE npc_entry=38586;
INSERT INTO `npc_spellclick_spells` VALUES ('38586', '47020', '0', '0', '0', '1', '0', '0', '0');

# NeatElves
UPDATE `creature_template` SET `gossip_menu_id` = 1186 WHERE `entry` = 4926;
UPDATE gossip_menu SET entry = 1186 WHERE entry = 50406;
UPDATE gossip_menu_option SET menu_id = 1186 WHERE menu_id = 50406;
UPDATE locales_gossip_menu_option SET menu_id = 1186 WHERE menu_id =50406;
UPDATE `gossip_menu` SET `entry` = '1187' WHERE `entry` =50407 AND `text_id` =1819;
UPDATE `gossip_menu_option` SET `action_menu_id` = '1187' WHERE `menu_id` =1186 AND `id` =1;
UPDATE `creature_template` SET `gossip_menu_id` = 8871 WHERE `entry` = 4501;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (8871, 11567);
UPDATE `creature_template` SET `npcflag` = '268435457' WHERE `entry` =9460;
UPDATE `creature_template` SET `pickpocketloot` = '0' WHERE `entry` =9460;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 9460;
UPDATE `creature_template` SET `npcflag` = '0' WHERE `entry` in (22014,16916,22016,22017,22018,22012,18950,22001);
UPDATE `creature_template` SET `npcflag` = '1' WHERE `entry` in (10578);
UPDATE `creature_template` SET `faction_A` = '1701',`faction_H` = '1701' WHERE `entry` in (22011,22012);
REPLACE INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`) VALUES ('10273', '0', '15', '62110');

# FIX
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 7485;
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 7483;

# NeatElves
REPLACE INTO `waypoint_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`, `guid`) VALUES 
('796', '0', '1', '69', '0', '0', '0', '0', '0', '0', '1074'), 
('797', '0', '1', '21', '0', '0', '0', '0', '0', '0', '1075'),
('798', '0', '1', '438', '0', '0', '0', '0', '0', '0', '1076'), 
('799', '0', '1', '11', '0', '0', '0', '0', '0', '0', '1077'),
('800', '0', '1', '233', '0', '0', '0', '0', '0', '0', '1078'), 
('801', '0', '1', '234', '0', '0', '0', '0', '0', '0', '1079'),
('793', '0', '1', '25', '0', '0', '0', '0', '0', '0', '1080'),
('794', '0', '0', '0', '0', '2000000456', '0', '0', '0', '0', '1081'), 
('794', '0', '1', '21', '0', '0', '0', '0', '0', '0', '1082'),
('795', '0', '0', '0', '0', '2000000457', '0', '0', '0', '0', '1083'), 
('795', '0', '1', '21', '0', '0', '0', '0', '0', '0', '1084'),
('802', '0', '15', '50036', '0', '0', '0', '0', '0', '0', '1085'), 
('803', '0', '15', '54324', '0', '0', '0', '0', '0', '0', '1086'),
('804', '0', '15', '37718', '0', '0', '0', '0', '0', '0', '1087'), 
('805', '0', '15', '39550', '0', '0', '0', '0', '0', '0', '1088'),
('806', '0', '15', '45940', '0', '0', '0', '0', '0', '0', '1089'), 
('807', '0', '15', '46400', '0', '0', '0', '0', '0', '0', '1090'),
('808', '0', '15', '46906', '0', '0', '0', '0', '0', '0', '1091'), 
('809', '0', '15', '46960', '0', '0', '0', '0', '0', '0', '1092'),
('810', '0', '15', '48310', '0', '0', '0', '0', '0', '0', '1093'), 
('811', '0', '15', '49119', '0', '0', '0', '0', '0', '0', '1094'),
('812', '0', '15', '51602', '0', '0', '0', '0', '0', '0', '1095'), 
('813', '0', '15', '55838', '0', '0', '0', '0', '0', '0', '1096'),
('814', '0', '15', '61615', '0', '0', '0', '0', '0', '0', '1097'), 
('815', '0', '15', '70153', '0', '0', '0', '0', '0', '0', '1098'),
('816', '0', '15', '70602', '0', '0', '0', '0', '0', '0', '1099'), 
('817', '0', '15', '76221', '0', '0', '0', '0', '0', '0', '1100');
UPDATE `waypoint_data` SET `action` = '796' WHERE `id` =136267 AND `point` =2;
UPDATE `waypoint_data` SET `action` = '796' WHERE `id` =98349 AND `point` =1;
UPDATE `waypoint_data` SET `action` = '796' WHERE `id` =98201 AND `point` =5;
UPDATE `waypoint_data` SET `action` = '796' WHERE `id` =95156 AND `point` =1;
UPDATE `waypoint_data` SET `action` = '796' WHERE `id` =95156 AND `point` =5;
UPDATE `waypoint_data` SET `action` = '796' WHERE `id` =98199 AND `point` =7;
UPDATE `waypoint_data` SET `action` = '796' WHERE `id` =98201 AND `point` =1;
UPDATE `waypoint_data` SET `action` = '797' WHERE `id` =65763 AND `point` =18;
UPDATE `waypoint_data` SET `action` = '797' WHERE `id` =65763 AND `point` =20;
UPDATE `waypoint_data` SET `action` = '797' WHERE `id` =65763 AND `point` =7;
UPDATE `waypoint_data` SET `action` = '799' WHERE `id` =65763 AND `point` =17;
UPDATE `waypoint_data` SET `action` = '798' WHERE `id` =96150 AND `point` =1;
UPDATE `waypoint_data` SET `action` = '798' WHERE `id` =96150 AND `point` =5;
UPDATE `waypoint_data` SET `action` = '800' WHERE `id` =136267 AND `point` =3;
UPDATE `waypoint_data` SET `action` = '801' WHERE `id` =98201 AND `point` =3;
UPDATE `waypoint_data` SET `action` = '793' WHERE `id` =65763 AND `point` =6;
UPDATE `waypoint_data` SET `action` = '794' WHERE `id` =65763 AND `point` =5;
UPDATE `waypoint_data` SET `action` = '795' WHERE `id` =65763 AND `point` =19;
UPDATE `waypoint_data` SET `action` = '803' WHERE `point` = '1' AND id in (104533,104532,104531,104530,104539,104538,104537,104535,104534);
UPDATE `waypoint_data` SET `action` = '802' WHERE `point` = '1' AND id in (86945,86946,86947,86948,86949,86950,86951,86954,86955,86956,86957,86958,86959);
UPDATE `waypoint_data` SET `action` = '804' WHERE `point` = '5' AND id in (78344,78345,78346,78347);
UPDATE `waypoint_data` SET `action` = '805' WHERE `point` = '1' AND id in (118385,118384);
UPDATE `waypoint_data` SET `action` = '807' WHERE `point` = '1' AND id in (136267);
UPDATE `waypoint_data` SET `action` = '806' WHERE `point` = '1' AND id in (102621,102622,102623,102624);
UPDATE `waypoint_data` SET `action` = '809' WHERE `point` = '1' AND id in (93643,93645);
UPDATE `waypoint_data` SET `action` = '808' WHERE `point` = '1' AND id in (51242,57385,78146,78147,78148,78149,78150,86615,97988,93640,93641,93642);
UPDATE `waypoint_data` SET `action` = '811' WHERE `point` = '1' AND id in (108583,108584,108585,108586,108587,108588,108589,108590);
UPDATE `waypoint_data` SET `action` = '810' WHERE `point` = '1' AND id in (96734,96735,96736);
UPDATE `waypoint_data` SET `action` = '813' WHERE `point` = '1' AND id in (112662,112658);
UPDATE `waypoint_data` SET `action` = '812' WHERE `point` = '1' AND id in (86823);
UPDATE `waypoint_data` SET `action` = '815' WHERE `point` = '1' AND id in (49042,49044);
UPDATE `waypoint_data` SET `action` = '814' WHERE `point` = '1' AND id in (88634);
UPDATE `waypoint_data` SET `action` = '817' WHERE `point` = '1' AND id in (93593);
UPDATE `waypoint_data` SET `action` = '816' WHERE `point` = '1' AND id in (61780,75886,77143,62056,47618,47622);
DELETE FROM `creature_addon` WHERE `guid` = 136760;
DELETE FROM `creature_addon` WHERE `guid` = 136757;
UPDATE `creature_template` SET `gossip_menu_id` = 4560 WHERE `entry` = 5143;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4560, 4435);
UPDATE `creature_template` SET `gossip_menu_id` = 4558 WHERE `entry` = 5142;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4558, 4435);
DELETE FROM `gossip_menu` WHERE `entry` = 4558 AND `text_id` = 4436;
UPDATE `creature_template` SET `gossip_menu_id` = 3642 WHERE `entry` = 11406;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (3642, 4435);
DELETE FROM `gossip_menu` WHERE `entry` = 3642 AND `text_id` = 4436;
UPDATE `creature_template` SET `gossip_menu_id` = 4559 WHERE `entry` = 5141;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4559, 4435);
UPDATE `creature_template` SET `gossip_menu_id` = 4553 WHERE `entry` = 7312;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4553, 561);
UPDATE `creature_template` SET `gossip_menu_id` = 4554 WHERE `entry` = 5145;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4554, 561);
UPDATE `creature_template` SET `gossip_menu_id` = 4556 WHERE `entry` = 5148;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4556, 3974);
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4556, 3975);
UPDATE `creature_template` SET `gossip_menu_id` = 4555 WHERE `entry` = 5146;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4555, 561);
UPDATE `creature_template` SET `gossip_menu_id` = 4557 WHERE `entry` = 5147;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4557, 3975);
UPDATE gossip_menu SET entry = 4557 WHERE entry = 50184;
UPDATE gossip_menu_option SET menu_id = 4557 WHERE menu_id = 50184;
UPDATE locales_gossip_menu_option SET menu_id = 4557 WHERE menu_id =50184;
UPDATE `creature_template` SET `gossip_menu_id` = 6565 WHERE `entry` = 2943;
DELETE FROM `gossip_menu` WHERE `entry` = 2943;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 2943;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 2943;
UPDATE `creature_template` SET `gossip_menu_id` = 4567 WHERE `entry` = 5171;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4567, 5723);
UPDATE `creature_template` SET `gossip_menu_id` = 2381 WHERE `entry` = 5172;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (2381, 5723);
UPDATE `creature_template` SET `gossip_menu_id` = 4566 WHERE `entry` = 5173;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4566, 5722);
UPDATE `creature_template` SET `gossip_menu_id` = 12670 WHERE `entry` = 6382;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (12670, 12549);
UPDATE `creature_template` SET `gossip_menu_id` = 4561 WHERE `entry` = 5167;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4561, 4833);
UPDATE `creature_template` SET `gossip_menu_id` = 411 WHERE `entry` = 5165;
UPDATE gossip_menu SET entry = 411 WHERE entry = 50204;
UPDATE gossip_menu_option SET menu_id = 411 WHERE menu_id = 50204;
UPDATE locales_gossip_menu_option SET menu_id = 411 WHERE menu_id =50204;
UPDATE `creature_template` SET `gossip_menu_id` = 4569 WHERE `entry` = 1901;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4569, 5724);
UPDATE `creature_template` SET `gossip_menu_id` = 4549 WHERE `entry` = 5115;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4549, 5000);
UPDATE `creature_template` SET `gossip_menu_id` = 10601 WHERE `entry` = 35025;
DELETE FROM `gossip_menu` WHERE `entry` = 50373;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 50373;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 50373;
UPDATE `creature_template` SET `gossip_menu_id` = 5462 WHERE `entry` = 5130;
UPDATE gossip_menu SET entry = 5462 WHERE entry = 50171;
UPDATE gossip_menu_option SET menu_id = 5462 WHERE menu_id = 50171;
UPDATE locales_gossip_menu_option SET menu_id = 5462 WHERE menu_id =50171;
UPDATE `creature_template` SET `gossip_menu_id` = 4182 WHERE `entry` = 1466;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4182, 5276);
UPDATE `creature_template` SET `gossip_menu_id` = 7357 WHERE `entry` = 23127;
DELETE FROM `gossip_menu` WHERE `entry` = 23127;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 23127;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 23127;
UPDATE `creature_template` SET `gossip_menu_id` = 4154 WHERE `entry` = 11065;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4154, 5184);
UPDATE `creature_template` SET `gossip_menu_id` = 4160 WHERE `entry` = 5157;
UPDATE `creature_template` SET `gossip_menu_id` = 4841 WHERE `entry` = 12997;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4841, 5894);
UPDATE `creature_template` SET `gossip_menu_id` = 4845 WHERE `entry` = 13018;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4845, 5920);
DELETE FROM `gossip_scripts` WHERE `id` in (50022,50023);
UPDATE `creature_template` SET `gossip_menu_id` = 682 WHERE `entry` = 1304;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (682, 6812);
UPDATE `creature_template` SET `gossip_menu_id` = 12670 WHERE `entry` = 5520;
UPDATE `creature_template` SET `gossip_menu_id` = 4503 WHERE `entry` = 461;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4503, 5715);
UPDATE locales_gossip_menu_option SET menu_id = 4503 WHERE menu_id =4603;
UPDATE `creature_template` SET `gossip_menu_id` = 4344 WHERE `entry` = 5567;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4344, 5519);
UPDATE `creature_template` SET `gossip_menu_id` = 683 WHERE `entry` = 5503;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (683, 1233);
UPDATE `creature_template` SET `gossip_menu_id` = 4112 WHERE `entry` = 5500;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4112, 5019);
UPDATE `creature_template` SET `gossip_menu_id` = 4201 WHERE `entry` = 5499;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4201, 5016);
UPDATE `creature_template` SET `gossip_menu_id` = 2943 WHERE `entry` = 10782;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (2943, 3657);
UPDATE `creature_template` SET `gossip_menu_id` = 691 WHERE `entry` = 1350;
UPDATE `creature_template` SET `gossip_menu_id` = 691 WHERE `entry` = 1349;
UPDATE `creature_template` SET `gossip_menu_id` = 4466 WHERE `entry` = 376;
UPDATE `creature_template` SET `gossip_menu_id` = 4467 WHERE `entry` = 5489;
UPDATE `creature_template` SET `gossip_menu_id` = 12093 WHERE `entry` = 4984;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (12093, 16981);
UPDATE `creature_template` SET `gossip_menu_id` = 12537 WHERE `entry` = 11397;
UPDATE gossip_menu SET entry = 12537 WHERE entry = 3643;
UPDATE gossip_menu_option SET menu_id = 12537 WHERE menu_id = 3643;
UPDATE locales_gossip_menu_option SET menu_id = 12537 WHERE menu_id =3643;
UPDATE `creature_template` SET `gossip_menu_id` = 4146 WHERE `entry` = 5518;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4146, 5147);
UPDATE `creature_template` SET `gossip_menu_id` = 693 WHERE `entry` = 5510;
UPDATE `creature_template` SET `gossip_menu_id` = 693 WHERE `entry` = 5509;
UPDATE `creature_template` SET `gossip_menu_id` = 4473 WHERE `entry` = 5516;
UPDATE `gossip_menu` SET `text_id` = '5000' WHERE `entry` =4474 AND `text_id` =4893;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4473, 5000);
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4472, 5000);
UPDATE `creature_template` SET `gossip_menu_id` = 4472 WHERE `entry` = 5517;
UPDATE `creature_template` SET `gossip_menu_id` = 11909 WHERE `entry` = 2439;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (11909, 16719);
UPDATE `creature_template` SET `gossip_menu_id` = 11874 WHERE `entry` = 1747;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (11874, 16641);
UPDATE `creature_template` SET `gossip_menu_id` = 10601 WHERE `entry` = 35024;
DELETE FROM `gossip_menu` WHERE `entry` = 50371;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 50371;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 50371;
UPDATE `creature_template` SET `gossip_menu_id` = 12129 WHERE `entry` = 15187;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (12129, 17035);
UPDATE `creature_template` SET `gossip_menu_id` = 690 WHERE `entry` = 1324;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (690, 1240);
UPDATE `creature_template` SET `gossip_menu_id` = 4482 WHERE `entry` = 5479;
UPDATE `creature_template` SET `gossip_menu_id` = 4481 WHERE `entry` = 5480;
UPDATE `creature_template` SET `gossip_menu_id` = 4475 WHERE `entry` = 914;
UPDATE `creature_template` SET `gossip_menu_id` = 5061 WHERE `entry` = 13283;
UPDATE `creature_template` SET `gossip_menu_id` = 706 WHERE `entry` = 1325;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (706, 1258);
UPDATE `creature_template` SET `gossip_menu_id` = 5763 WHERE `entry` = 7207;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (5763, 6948);
UPDATE `creature_template` SET `gossip_menu_id` = 4173 WHERE `entry` = 11096;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4173, 5260);
UPDATE `creature_template` SET `gossip_menu_id` = 8631 WHERE `entry` = 23050;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (8631, 10821);
UPDATE `creature_template` SET `gossip_menu_id` = 4203 WHERE `entry` = 5564;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4203, 5320);
UPDATE `creature_template` SET `gossip_menu_id` = 10649 WHERE `entry` = 35477;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (10649, 14752);
UPDATE `creature_template` SET `gossip_menu_id` = 703 WHERE `entry` = 1302;
UPDATE `creature_template` SET `gossip_menu_id` = 687 WHERE `entry` = 1298;
UPDATE `creature_template` SET `gossip_menu_id` = 687 WHERE `entry` = 1285;
UPDATE `creature_template` SET `gossip_menu_id` = 10392 WHERE `entry` = 5193;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (10392, 1259);
UPDATE `creature_template` SET `gossip_menu_id` = 12598 WHERE `entry` = 28572;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (12598, 17733);
UPDATE `creature_template` SET `gossip_menu_id` = 12600 WHERE `entry` = 28571;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (12600, 17735);
UPDATE `creature_template` SET `gossip_menu_id` = 4161 WHERE `entry` = 1317;
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4161, 5207);
UPDATE `creature_template` SET `npcflag` = '524417' WHERE `entry` =5193;
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(16719, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(14752, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `flags_extra` = 64 WHERE `entry` = 314;

# Lordronn
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 1122;
UPDATE `creature_model_info` SET `combat_reach` = '3.25' WHERE modelid = 2850;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 7098;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 7099;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 10742;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 10743;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 10746;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 11376;
UPDATE `creature_model_info` SET `combat_reach` = '1.25' WHERE modelid = 14273;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 15438;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 16890;
UPDATE `creature_model_info` SET `bounding_radius` = '0.3' WHERE modelid = 17054;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 17054;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 17138;
UPDATE `creature_model_info` SET `combat_reach` = '0.25' WHERE modelid = 17200;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 17612;
UPDATE `creature_model_info` SET `combat_reach` = '1.1' WHERE modelid = 17647;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 17685;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 17904;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 17907;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 18017;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 18018;
UPDATE `creature_model_info` SET `combat_reach` = '3' WHERE modelid = 18274;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 18646;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 18646;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 18659;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 18659;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 18660;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 18661;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 18903;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 18906;
UPDATE `creature_model_info` SET `combat_reach` = '0.375' WHERE modelid = 18920;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 18966;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 18967;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 18968;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 18969;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19004;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 19013;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19038;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 19043;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19046;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19047;
UPDATE `creature_model_info` SET `bounding_radius` = '0.306' WHERE modelid = 19076;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19076;
UPDATE `creature_model_info` SET `bounding_radius` = '0.306' WHERE modelid = 19077;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19077;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19079;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19084;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19099;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19100;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19101;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19102;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19103;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19104;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19106;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19107;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19151;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19161;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19167;
UPDATE `creature_model_info` SET `combat_reach` = '2' WHERE modelid = 19168;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 19168;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19189;
UPDATE `creature_model_info` SET `combat_reach` = '2' WHERE modelid = 19190;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19197;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19198;
UPDATE `creature_model_info` SET `combat_reach` = '3' WHERE modelid = 19285;
UPDATE `creature_model_info` SET `combat_reach` = '3' WHERE modelid = 19287;
UPDATE `creature_model_info` SET `combat_reach` = '3' WHERE modelid = 19288;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19416;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19417;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19421;
UPDATE `creature_model_info` SET `combat_reach` = '5' WHERE modelid = 19435;
UPDATE `creature_model_info` SET `combat_reach` = '1.65' WHERE modelid = 19443;
UPDATE `creature_model_info` SET `combat_reach` = '1.65' WHERE modelid = 19444;
UPDATE `creature_model_info` SET `combat_reach` = '1.65' WHERE modelid = 19445;
UPDATE `creature_model_info` SET `combat_reach` = '1.65' WHERE modelid = 19446;
UPDATE `creature_model_info` SET `bounding_radius` = '0.775' WHERE modelid = 19456;
UPDATE `creature_model_info` SET `combat_reach` = '3.75' WHERE modelid = 19456;
UPDATE `creature_model_info` SET `combat_reach` = '1.65' WHERE modelid = 19459;
UPDATE `creature_model_info` SET `combat_reach` = '1.65' WHERE modelid = 19460;
UPDATE `creature_model_info` SET `combat_reach` = '1.65' WHERE modelid = 19464;
UPDATE `creature_model_info` SET `combat_reach` = '1.65' WHERE modelid = 19465;
UPDATE `creature_model_info` SET `combat_reach` = '2' WHERE modelid = 19486;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 19486;
UPDATE `creature_model_info` SET `combat_reach` = '1.65' WHERE modelid = 19511;
UPDATE `creature_model_info` SET `combat_reach` = '1.65' WHERE modelid = 19512;
UPDATE `creature_model_info` SET `combat_reach` = '1.65' WHERE modelid = 19513;
UPDATE `creature_model_info` SET `combat_reach` = '1.65' WHERE modelid = 19514;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 19514;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19578;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19580;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 19586;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19593;
UPDATE `creature_model_info` SET `bounding_radius` = '0.3' WHERE modelid = 19645;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 19645;
UPDATE `creature_model_info` SET `bounding_radius` = '0.3' WHERE modelid = 19654;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 19654;
UPDATE `creature_model_info` SET `bounding_radius` = '0.3' WHERE modelid = 19655;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 19655;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19660;
UPDATE `creature_model_info` SET `bounding_radius` = '0.465' WHERE modelid = 19662;
UPDATE `creature_model_info` SET `combat_reach` = '2.25' WHERE modelid = 19662;
UPDATE `creature_model_info` SET `bounding_radius` = '1' WHERE modelid = 19672;
UPDATE `creature_model_info` SET `combat_reach` = '3' WHERE modelid = 19672;
UPDATE `creature_model_info` SET `combat_reach` = '5' WHERE modelid = 19690;
UPDATE `creature_model_info` SET `combat_reach` = '1.6' WHERE modelid = 19696;
UPDATE `creature_model_info` SET `bounding_radius` = '0.65' WHERE modelid = 19704;
UPDATE `creature_model_info` SET `combat_reach` = '1.3' WHERE modelid = 19704;
UPDATE `creature_model_info` SET `bounding_radius` = '0.62' WHERE modelid = 19705;
UPDATE `creature_model_info` SET `combat_reach` = '2.5' WHERE modelid = 19722;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 19722;
UPDATE `creature_model_info` SET `bounding_radius` = '0.455' WHERE modelid = 19771;
UPDATE `creature_model_info` SET `combat_reach` = '1.3' WHERE modelid = 19771;
UPDATE `creature_model_info` SET `combat_reach` = '2' WHERE modelid = 19775;
UPDATE `creature_model_info` SET `combat_reach` = '2' WHERE modelid = 19779;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19881;
UPDATE `creature_model_info` SET `combat_reach` = '4' WHERE modelid = 19899;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 19899;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19903;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 19904;
UPDATE `creature_model_info` SET `combat_reach` = '5' WHERE modelid = 19917;
UPDATE `creature_model_info` SET `bounding_radius` = '0.3' WHERE modelid = 19955;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 19955;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 19955;
UPDATE `creature_model_info` SET `bounding_radius` = '0.3' WHERE modelid = 19956;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 19956;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 19956;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 19957;
UPDATE `creature_model_info` SET `bounding_radius` = '0.39' WHERE modelid = 19959;
UPDATE `creature_model_info` SET `combat_reach` = '1.3' WHERE modelid = 19959;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 19959;
UPDATE `creature_model_info` SET `bounding_radius` = '0.39' WHERE modelid = 19960;
UPDATE `creature_model_info` SET `combat_reach` = '1.3' WHERE modelid = 19960;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 19960;
UPDATE `creature_model_info` SET `bounding_radius` = '0.403' WHERE modelid = 19979;
UPDATE `creature_model_info` SET `combat_reach` = '1.3' WHERE modelid = 19979;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 20034;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 20035;
UPDATE `creature_model_info` SET `combat_reach` = '1.65' WHERE modelid = 20060;
UPDATE `creature_model_info` SET `combat_reach` = '1.65' WHERE modelid = 20061;
UPDATE `creature_model_info` SET `combat_reach` = '1.95' WHERE modelid = 20095;
UPDATE `creature_model_info` SET `combat_reach` = '5' WHERE modelid = 20101;
UPDATE `creature_model_info` SET `bounding_radius` = '0.3672' WHERE modelid = 20171;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 20171;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 20326;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 20428;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 20429;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 20430;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 20438;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 20518;
UPDATE `creature_model_info` SET `combat_reach` = '2.4' WHERE modelid = 20606;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 20622;
UPDATE `creature_model_info` SET `combat_reach` = '1.05' WHERE modelid = 20905;
UPDATE `creature_model_info` SET `combat_reach` = '1.05' WHERE modelid = 20906;
UPDATE `creature_model_info` SET `bounding_radius` = '0.30556' WHERE modelid = 20987;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 20987;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 20987;
UPDATE `creature_model_info` SET `combat_reach` = '1' WHERE modelid = 20988;
UPDATE `creature_model_info` SET `bounding_radius` = '0.61112' WHERE modelid = 21019;
UPDATE `creature_model_info` SET `combat_reach` = '2' WHERE modelid = 21019;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 21019;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 21045;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 21051;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 21060;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 21061;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 21062;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 21132;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 21132;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 21462;
UPDATE `creature_model_info` SET `bounding_radius` = '0.306' WHERE modelid = 22393;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22393;
UPDATE `creature_model_info` SET `bounding_radius` = '0.306' WHERE modelid = 22780;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 22780;
UPDATE `creature_model_info` SET `bounding_radius` = '0.155' WHERE modelid = 22790;
UPDATE `creature_model_info` SET `combat_reach` = '0.5' WHERE modelid = 22790;
UPDATE `creature_model_info` SET `bounding_radius` = '0.3825' WHERE modelid = 23768;
UPDATE `creature_model_info` SET `combat_reach` = '1.875' WHERE modelid = 23768;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 25624;
UPDATE `creature_model_info` SET `bounding_radius` = '0.306' WHERE modelid = 27942;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 27942;
UPDATE `creature_model_info` SET `bounding_radius` = '0.306' WHERE modelid = 29078;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 29078;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 2334;
UPDATE `creature_template` SET `faction_A` = '12', `faction_H` = '12' WHERE entry = 2334;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 15384;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 16943;
UPDATE `creature_template` SET `speed_run` = '0.952381' WHERE entry = 16944;
UPDATE `creature_template` SET `speed_walk` = '0.944444' WHERE entry = 16944;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 16944;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 16948;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 16948;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 16949;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 17408;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 17636;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 18593;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 18858;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 18859;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 18860;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 18860;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 18860;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 18872;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 18873;
UPDATE `creature_template` SET `speed_walk` = '1.55556' WHERE entry = 18882;
UPDATE `creature_template` SET `faction_A` = '91', `faction_H` = '91' WHERE entry = 18882;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 18938;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 19217;
UPDATE `creature_template` SET `faction_A` = '954', `faction_H` = '954' WHERE entry = 19421;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 19468;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 19469;
UPDATE `creature_template` SET `faction_A` = '1836', `faction_H` = '1836' WHERE entry = 19529;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 19529;
UPDATE `creature_template` SET `faction_A` = '1731', `faction_H` = '1731' WHERE entry = 19531;
UPDATE `creature_template` SET `faction_A` = '1731', `faction_H` = '1731' WHERE entry = 19533;
UPDATE `creature_template` SET `faction_A` = '1731', `faction_H` = '1731' WHERE entry = 19534;
UPDATE `creature_template` SET `faction_A` = '1731', `faction_H` = '1731' WHERE entry = 19535;
UPDATE `creature_template` SET `faction_A` = '1731', `faction_H` = '1731' WHERE entry = 19536;
UPDATE `creature_template` SET `faction_A` = '1731', `faction_H` = '1731' WHERE entry = 19537;
UPDATE `creature_template` SET `faction_A` = '1731', `faction_H` = '1731' WHERE entry = 19538;
UPDATE `creature_template` SET `faction_A` = '1731', `faction_H` = '1731' WHERE entry = 19539;
UPDATE `creature_template` SET `faction_A` = '1731', `faction_H` = '1731' WHERE entry = 19540;
UPDATE `creature_template` SET `speed_run` = '1.42857' WHERE entry = 19541;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 19541;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 19582;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 19583;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 19583;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 19588;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 19589;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 19651;
UPDATE `creature_template` SET `faction_A` = '1772', `faction_H` = '1772' WHERE entry = 19686;
UPDATE `creature_template` SET `faction_A` = '1772', `faction_H` = '1772' WHERE entry = 19731;
UPDATE `creature_template` SET `faction_A` = '954', `faction_H` = '954' WHERE entry = 19939;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 19940;
UPDATE `creature_template` SET `faction_A` = '1731', `faction_H` = '1731' WHERE entry = 20066;
UPDATE `creature_template` SET `faction_A` = '1731', `faction_H` = '1731' WHERE entry = 20067;
UPDATE `creature_template` SET `faction_A` = '1731', `faction_H` = '1731' WHERE entry = 20068;
UPDATE `creature_template` SET `faction_A` = '1731', `faction_H` = '1731' WHERE entry = 20084;
UPDATE `creature_template` SET `faction_A` = '1701', `faction_H` = '1701' WHERE entry = 20139;
UPDATE `creature_template` SET `faction_A` = '1793', `faction_H` = '1793' WHERE entry = 20140;
UPDATE `creature_template` SET `faction_A` = '1744', `faction_H` = '1744' WHERE entry = 20162;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 20162;
UPDATE `creature_template` SET `faction_A` = '1731', `faction_H` = '1731' WHERE entry = 20194;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 20204;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 20205;
UPDATE `creature_template` SET `faction_A` = '1701', `faction_H` = '1701' WHERE entry = 20207;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 20210;
UPDATE `creature_template` SET `faction_A` = '1873', `faction_H` = '1873' WHERE entry = 20210;
UPDATE `creature_template` SET `faction_A` = '1731', `faction_H` = '1731' WHERE entry = 20242;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 20248;
UPDATE `creature_template` SET `faction_A` = '1701', `faction_H` = '1701' WHERE entry = 20248;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 20248;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 20281;
UPDATE `creature_template` SET `faction_A` = '1731', `faction_H` = '1731' WHERE entry = 20281;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 20285;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 20285;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 20285;
UPDATE `creature_template` SET `speed_run` = '0.952381' WHERE entry = 20326;
UPDATE `creature_template` SET `speed_walk` = '0.944444' WHERE entry = 20326;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 20326;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 20326;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 20404;
UPDATE `creature_template` SET `faction_A` = '1793', `faction_H` = '1793' WHERE entry = 20435;
UPDATE `creature_template` SET `faction_A` = '1731', `faction_H` = '1731' WHERE entry = 20470;
UPDATE `creature_template` SET `faction_A` = '1731', `faction_H` = '1731' WHERE entry = 20471;
UPDATE `creature_template` SET `speed_run` = '1.42857' WHERE entry = 20484;
UPDATE `creature_template` SET `faction_A` = '1857', `faction_H` = '1857' WHERE entry = 20484;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 20484;
UPDATE `creature_template` SET `speed_run` = '1.42857' WHERE entry = 20485;
UPDATE `creature_template` SET `faction_A` = '1857', `faction_H` = '1857' WHERE entry = 20485;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 20485;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 20515;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 20516;
UPDATE `creature_template` SET `faction_A` = '15', `faction_H` = '15' WHERE entry = 20610;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 20671;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 20671;
UPDATE `creature_template` SET `baseattacktime` = '1500' WHERE entry = 20671;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 20673;
UPDATE `creature_template` SET `faction_A` = '1793', `faction_H` = '1793' WHERE entry = 20685;
UPDATE `creature_template` SET `speed_run` = '0.952381' WHERE entry = 20800;
UPDATE `creature_template` SET `speed_walk` = '0.944444' WHERE entry = 20800;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 20800;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 20800;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 20801;
UPDATE `creature_template` SET `speed_walk` = '0.777776' WHERE entry = 20801;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 20801;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 20801;
UPDATE `creature_template` SET `speed_run` = '1.38889' WHERE entry = 20803;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 20803;
UPDATE `creature_template` SET `faction_A` = '1731', `faction_H` = '1731' WHERE entry = 20810;
UPDATE `creature_template` SET `faction_A` = '1731', `faction_H` = '1731' WHERE entry = 20811;
UPDATE `creature_template` SET `faction_A` = '1660', `faction_H` = '1660' WHERE entry = 20871;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 20920;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 20920;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 20921;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 20928;
UPDATE `creature_template` SET `faction_A` = '1731', `faction_H` = '1731' WHERE entry = 20980;
UPDATE `creature_template` SET `faction_A` = '1731', `faction_H` = '1731' WHERE entry = 20981;
UPDATE `creature_template` SET `faction_A` = '1731', `faction_H` = '1731' WHERE entry = 20989;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 21058;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 21089;
UPDATE `creature_template` SET `faction_A` = '1701', `faction_H` = '1701' WHERE entry = 21089;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 21089;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 21135;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 21135;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 21259;
UPDATE `creature_template` SET `speed_run` = '2.14286' WHERE entry = 21267;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 21267;
UPDATE `creature_template` SET `faction_A` = '1701', `faction_H` = '1701' WHERE entry = 21267;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 21267;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 21493;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 21732;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 21733;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 21734;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 21751;
UPDATE `creature_template` SET `speed_run` = '1.38889' WHERE entry = 21923;
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE entry = 21923;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 21974;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 21997;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 22063;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 22293;
UPDATE `creature_template` SET `faction_A` = '1730', `faction_H` = '1730' WHERE entry = 22427;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 22479;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 22491;
UPDATE `creature_template` SET `speed_run` = '1.42857' WHERE entry = 22494;
UPDATE `creature_template` SET `faction_A` = '1857', `faction_H` = '1857' WHERE entry = 22494;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 22494;

# NeatElves
UPDATE creature_template SET faction_A=21, faction_H=21 WHERE entry=24023;
UPDATE `gossip_menu_option` SET `option_id` = '16',`npc_option_npcflag` = '16',`action_menu_id` = '0' WHERE `menu_id` =4461 AND `id` =0;
UPDATE creature_template SET faction_A=1354, faction_H=1354 WHERE entry=11486;
UPDATE creature_template SET faction_A=1355, faction_H=1355 WHERE entry=14369;
UPDATE creature SET spawndist=0, MovementType=0 WHERE id IN (33134);
UPDATE `creature_template_addon` SET `auras` = '46077 0' WHERE `entry` in (25827,25828);
UPDATE creature_template_addon SET auras = NULL WHERE entry=22358;
UPDATE creature_template SET spell1=31983 WHERE entry=18176;
UPDATE creature_template SET spell1=31983 WHERE entry=19897;
UPDATE creature_template SET spell1=31986 WHERE entry=18177;
UPDATE creature_template SET spell1=31986 WHERE entry=19900;
UPDATE creature_template SET spell1=31992 WHERE entry=18179;
UPDATE creature_template SET spell1=31992 WHERE entry=19899;
UPDATE creature_template SET spell1=34978 WHERE entry=20208;
UPDATE creature_template SET spell1=38799 WHERE entry=22322;
DELETE FROM `pickpocketing_loot_template` WHERE `item` = 21877;
INSERT IGNORE INTO gossip_scripts (id, delay, command, datalong, datalong2) VALUES (85, 0, 15, 21100, 0x00);
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES (4562, 4834);
UPDATE creature_template SET gossip_menu_id=6829 WHERE entry=15576;
UPDATE gossip_menu SET entry = 6829 WHERE entry = 15576;
UPDATE gossip_menu_option SET menu_id = 6829 WHERE menu_id = 15576;
UPDATE locales_gossip_menu_option SET menu_id = 6829 WHERE menu_id =15576;
UPDATE creature_template SET gossip_menu_id=7849 WHERE entry=18887;
INSERT IGNORE INTO gossip_menu (entry,text_id) VALUES (7849,9610);
UPDATE creature_template SET MovementType=0 WHERE entry IN (4978, 4825, 4823,10439, 10394, 11030);
UPDATE creature_template SET gossip_menu_id=8833 WHERE entry=23937;
UPDATE gossip_menu SET entry = 8833 WHERE entry = 50252;
UPDATE gossip_menu_option SET menu_id = 8833 WHERE menu_id = 50252;
UPDATE locales_gossip_menu_option SET menu_id = 8833 WHERE menu_id =50252;
UPDATE creature_template SET gossip_menu_id=9955 WHERE entry=30531;
UPDATE gossip_menu SET entry = 9955 WHERE entry = 30531;
UPDATE gossip_menu_option SET menu_id = 9955 WHERE menu_id = 30531;
UPDATE locales_gossip_menu_option SET menu_id = 9955 WHERE menu_id =30531;
UPDATE `gossip_menu_option` SET `option_text` = 'What do you have to eat, Celeste?' WHERE `menu_id` =8833 AND `id` =3;
UPDATE `gossip_menu_option` SET `option_text` = 'I need another of your elixirs, Drakuru.' WHERE `menu_id` =9615 AND `id` =2;
INSERT IGNORE INTO gossip_menu (entry,text_id) VALUES (7829,9579);
INSERT IGNORE INTO gossip_menu (entry,text_id) VALUES (7830,9578);
INSERT IGNORE INTO gossip_menu (entry,text_id) VALUES (7831,9580);
INSERT IGNORE INTO gossip_menu (entry,text_id) VALUES (8391,10475);
INSERT IGNORE INTO gossip_menu (entry,text_id) VALUES (8929,11912);
INSERT IGNORE INTO gossip_menu (entry,text_id) VALUES (9930,13806);
INSERT IGNORE INTO gossip_menu (entry,text_id) VALUES (9934,13809);
DELETE FROM `gossip_menu` WHERE `entry` in (436,141,4576);
DELETE FROM gossip_scripts WHERE id=7939;
INSERT IGNORE INTO gossip_scripts (id, delay, command, datalong, datalong2) VALUES 
(7939, 0, 15, 34907, 0x00);
DELETE FROM gossip_scripts WHERE id=7938;
DELETE FROM gossip_scripts WHERE id=1323;
# INSERT IGNORE INTO gossip_scripts (id, delay, command, datalong, datalong2) VALUES 
# (1323, 0, 15, 19797, 0x00);
UPDATE `quest_template` SET `SpecialFlags` = '0' WHERE `entry` =5405;
UPDATE `gossip_scripts` SET `datalong` = '51864', `datalong2` = '2' WHERE `id` =28518;
DELETE FROM gossip_scripts WHERE id=1282;
INSERT IGNORE INTO gossip_scripts (id, delay, command, datalong, datalong2, dataint, x, y, z, o) VALUES 
(1282, 0, 10, 8391, 300000, 0, -6460.42,-1267.62,180.785,3.15905);
DELETE FROM `creature` WHERE `guid` = 7422;
DELETE FROM gossip_scripts WHERE id=10219;
INSERT IGNORE INTO gossip_scripts (id, delay, command, datalong, datalong2, dataint, x, y, z, o) VALUES 
(10219, 0, 10, 17085, 180000, 0, -1323.91,4042.45,116.626,0.296706);
UPDATE `gossip_scripts` SET `datalong` = '44364',`datalong2` = '0' WHERE `id` =24752;
INSERT IGNORE INTO gossip_menu (entry, text_id) VALUES (21493,10365);
INSERT IGNORE INTO gossip_menu (entry, text_id) VALUES (21494,10410);
UPDATE creature_template SET gossip_menu_id=21493 WHERE entry=21493;
UPDATE creature_template SET gossip_menu_id=21494 WHERE entry=21494;
DELETE FROM gossip_scripts WHERE id=21493;
INSERT IGNORE INTO gossip_scripts (id, delay, command, datalong, datalong2) VALUES 
(21493, 0, 15, 36956, 0x00);
DELETE FROM gossip_scripts WHERE id=21494;
INSERT IGNORE INTO gossip_scripts (id, delay, command, datalong, datalong2) VALUES 
(21494, 0, 15, 36957, 0x00);
UPDATE `gossip_menu_option` SET `option_text` = 'I''ve lost Nass...' WHERE `menu_id` =9709 AND `id` =1;
DELETE FROM gossip_scripts WHERE id=6092;
INSERT IGNORE INTO gossip_scripts (id, delay, command, datalong, datalong2) VALUES 
(6092, 0, 15, 23490, 0x00);
DELETE FROM gossip_scripts WHERE id=6094;
INSERT IGNORE INTO gossip_scripts (id, delay, command, datalong, datalong2) VALUES 
(6094, 0, 15, 23491, 0x00);
DELETE FROM gossip_scripts WHERE id=9732;
INSERT IGNORE INTO gossip_scripts (id, delay, command, datalong, datalong2) VALUES 
(9732, 0, 15, 52194, 0x00);
UPDATE `gossip_scripts` SET `datalong2` = '3' WHERE `id` =10273;
DELETE FROM gossip_scripts WHERE id=2208;
# INSERT IGNORE INTO gossip_scripts (id, delay, command, datalong, datalong2) VALUES 
# (2208, 0, 15, 15120, 0x00);
DELETE FROM gossip_scripts WHERE id=3228;
# INSERT IGNORE INTO gossip_scripts (id, delay, command, datalong, datalong2) VALUES 
# (3228, 0, 15, 17529, 0x00);
DELETE FROM gossip_scripts WHERE id=18715;
INSERT IGNORE INTO gossip_scripts (id, delay, command, datalong, datalong2) VALUES 
(18715, 0, 15, 48917, 0x00);
DELETE FROM gossip_scripts WHERE id=9812;
INSERT IGNORE INTO gossip_scripts (id, delay, command, datalong, datalong2) VALUES 
(9812, 0, 7, 12807, 0);
UPDATE `creature_template` SET `npcflag` = '3' WHERE `entry` =19409;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 7970 AND `id` = 1;
DELETE FROM gossip_scripts WHERE id=7970;
INSERT IGNORE INTO gossip_scripts (id, delay, command, datalong, datalong2) VALUES 
(7970, 0, 15, 35069, 0x00);
DELETE FROM gossip_scripts WHERE id=19409;
INSERT IGNORE INTO gossip_scripts (id, delay, command, datalong, datalong2) VALUES 
(19409, 0, 15, 33768, 0x00);
UPDATE `gossip_menu_option` SET `action_menu_id` = '9725' WHERE `menu_id` =9573 AND `id` =1;
UPDATE `creature` SET `phaseMask` = '1' WHERE `guid` =136467;
UPDATE `creature` SET `phaseMask` = '1' WHERE `guid` =136677;
DELETE FROM `spell_area` WHERE `spell` IN (60197,60194); 
INSERT INTO `spell_area` (`spell`,`area`,`racemask`,`gender`,`autocast`) VALUES (60197,4395,690,2,1),(60194,4395,1101,2,1);
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 98230;
INSERT IGNORE INTO `creature_addon` SET `guid`= 98230, `path_id`= 98230;
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`) VALUES
(98230, 1, 5820.21, 652.564, 609.158),
(98230, 2, 5826.15, 679.469, 609.886),
(98230, 3, 5838.97, 681.458, 609.886),
(98230, 4, 5820.23, 661.278, 609.886),
(98230, 5, 5814.1, 658.152, 609.158),
(98230, 6, 5805.83, 653.925, 609.887),
(98230, 7, 5792.85, 645.96, 609.887),
(98230, 8, 5790.32, 632.748, 609.887),
(98230, 9, 5789.29, 622.637, 609.158),
(98230, 10, 5788.23, 612.19, 609.887),
(98230, 11, 5777.64, 595.552, 609.887),
(98230, 12, 5763.87, 604.307, 609.887),
(98230, 13, 5780.04, 620.409, 609.887),
(98230, 14, 5790.06, 626.643, 609.158),
(98230, 15, 5795.34, 628.661, 609.887),
(98230, 16, 5808.41, 633.662, 609.887);

# FIX
INSERT IGNORE INTO gameobject VALUES (5698,2855,1,1,1,-403.13,1876.43,128.41,-1.44862,0.0,0.0,0.0,1.0,7200,255,1);
INSERT IGNORE INTO gameobject VALUES (5699,2855,1,1,1,-794.729,930.161,90.7574,2.16421,0.0,0.0,0.0,1.0,7200,255,1);
INSERT IGNORE INTO gameobject VALUES (5700,4149,0,1,1,-10897.3,-3712.66,8.76335,2.86233,0.0,0.0,0.0,1.0,7200,255,1);
INSERT IGNORE INTO gameobject VALUES (5705,2850,0,1,1,-2995.48,-2525.18,11.3921,0.541051,0.0,0.0,0.0,1.0,7200,255,1);
INSERT IGNORE INTO gameobject VALUES (5715,181800,530,1,1,-1114.6,5197.68,57.1982,0.488691,0.0,0.0,0.0,1.0,7200,255,1);
INSERT IGNORE INTO gameobject VALUES (5716,181804,530,1,1,-3204.25,431.446,103.931,-3.07177,0.0,0.0,0.0,1.0,7200,255,1);
UPDATE creature_template SET InhabitType=InhabitType|4 WHERE entry=17847;

# NeatElves
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0.2' WHERE `item` =48114;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0.2' WHERE `item` =48116;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0.3' WHERE `item` =48126;

# Lordronn
UPDATE `creature_model_info` SET `combat_reach` = '1.05' WHERE modelid = 850;
UPDATE `creature_model_info` SET `combat_reach` = '0.75' WHERE modelid = 4449;
UPDATE `creature_model_info` SET `bounding_radius` = '1.15' WHERE modelid = 14255;
UPDATE `creature_model_info` SET `combat_reach` = '2.3' WHERE modelid = 14255;
UPDATE `creature_model_info` SET `combat_reach` = '0.25' WHERE modelid = 17188;
UPDATE `creature_model_info` SET `combat_reach` = '0.25' WHERE modelid = 17200;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 21601;
UPDATE `creature_model_info` SET `bounding_radius` = '1' WHERE modelid = 22471;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 22474;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 24225;
UPDATE `creature_model_info` SET `combat_reach` = '1.15' WHERE modelid = 24997;
UPDATE `creature_model_info` SET `bounding_radius` = '0.18445' WHERE modelid = 25390;
UPDATE `creature_model_info` SET `combat_reach` = '0.595' WHERE modelid = 25390;
UPDATE `creature_model_info` SET `bounding_radius` = '0.2108' WHERE modelid = 25391;
UPDATE `creature_model_info` SET `combat_reach` = '0.68' WHERE modelid = 25391;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 27173;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 27177;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 27177;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 27183;
UPDATE `creature_model_info` SET `combat_reach` = '15' WHERE modelid = 27769;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28630;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28633;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 28674;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 28702;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28705;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28707;
UPDATE `creature_model_info` SET `combat_reach` = '1.725' WHERE modelid = 28714;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28715;
UPDATE `creature_model_info` SET `gender` = '1' WHERE modelid = 28715;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28716;
UPDATE `creature_model_info` SET `gender` = '1' WHERE modelid = 28716;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 28735;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28744;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28747;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28748;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28749;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 28749;
UPDATE `creature_model_info` SET `combat_reach` = '3.75' WHERE modelid = 28751;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28752;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28753;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28755;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28756;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 28842;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 28843;
UPDATE `creature_model_info` SET `gender` = '1' WHERE modelid = 28848;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 28849;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 28850;
UPDATE `creature_model_info` SET `bounding_radius` = '0.372' WHERE modelid = 28851;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 28851;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 28852;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 28853;
UPDATE `creature_model_info` SET `bounding_radius` = '0.8725' WHERE modelid = 28855;
UPDATE `creature_model_info` SET `combat_reach` = '3.75' WHERE modelid = 28855;
UPDATE `creature_model_info` SET `gender` = '1' WHERE modelid = 28855;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 28861;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 28864;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 28897;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 28898;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 28903;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 28908;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 28913;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 28914;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 28921;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28927;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 28930;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 28930;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 28932;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 28933;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 28976;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 29075;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 29146;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 29147;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 29148;
UPDATE `creature_model_info` SET `bounding_radius` = '1' WHERE modelid = 29255;
UPDATE `creature_model_info` SET `bounding_radius` = '0.818' WHERE modelid = 29258;
UPDATE `creature_model_info` SET `combat_reach` = '2' WHERE modelid = 29258;
UPDATE `creature_model_info` SET `combat_reach` = '1.8' WHERE modelid = 29283;
UPDATE `creature_model_info` SET `bounding_radius` = '0.2502' WHERE modelid = 29556;
UPDATE `creature_model_info` SET `combat_reach` = '0.9' WHERE modelid = 29556;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 29556;
UPDATE `creature_model_info` SET `bounding_radius` = '0.7344' WHERE modelid = 29570;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29570;
UPDATE `creature_model_info` SET `bounding_radius` = '0.7344' WHERE modelid = 29571;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29571;
UPDATE `creature_model_info` SET `bounding_radius` = '0.4992' WHERE modelid = 29572;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29572;
UPDATE `creature_model_info` SET `bounding_radius` = '0.8328' WHERE modelid = 29574;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29574;
UPDATE `creature_model_info` SET `bounding_radius` = '0.8328' WHERE modelid = 29575;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29575;
UPDATE `creature_model_info` SET `bounding_radius` = '2.4' WHERE modelid = 29576;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29576;
UPDATE `creature_model_info` SET `bounding_radius` = '2.4' WHERE modelid = 29577;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29577;
UPDATE `creature_model_info` SET `bounding_radius` = '0.8928' WHERE modelid = 29578;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29578;
UPDATE `creature_model_info` SET `bounding_radius` = '0.8928' WHERE modelid = 29579;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29579;
UPDATE `creature_model_info` SET `bounding_radius` = '0.9192' WHERE modelid = 29580;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29580;
UPDATE `creature_model_info` SET `bounding_radius` = '0.9192' WHERE modelid = 29581;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29581;
UPDATE `creature_model_info` SET `bounding_radius` = '2.33928' WHERE modelid = 29582;
UPDATE `creature_model_info` SET `combat_reach` = '9.72' WHERE modelid = 29582;
UPDATE `creature_model_info` SET `bounding_radius` = '2.33928' WHERE modelid = 29583;
UPDATE `creature_model_info` SET `combat_reach` = '9.72' WHERE modelid = 29583;
UPDATE `creature_model_info` SET `combat_reach` = '4.5' WHERE modelid = 29588;
UPDATE `creature_model_info` SET `combat_reach` = '3' WHERE modelid = 29589;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 29589;
UPDATE `creature_model_info` SET `combat_reach` = '4.5' WHERE modelid = 29591;
UPDATE `creature_model_info` SET `gender` = '0' WHERE modelid = 29614;
UPDATE `creature_model_info` SET `bounding_radius` = '0.8328' WHERE modelid = 29634;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29634;
UPDATE `creature_model_info` SET `bounding_radius` = '0.8328' WHERE modelid = 29635;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29635;
UPDATE `creature_model_info` SET `bounding_radius` = '0.7344' WHERE modelid = 29636;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29636;
UPDATE `creature_model_info` SET `bounding_radius` = '0.7344' WHERE modelid = 29637;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29637;
UPDATE `creature_model_info` SET `bounding_radius` = '0.4992' WHERE modelid = 29638;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29638;
UPDATE `creature_model_info` SET `bounding_radius` = '2.4' WHERE modelid = 29639;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29639;
UPDATE `creature_model_info` SET `bounding_radius` = '2.4' WHERE modelid = 29640;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29640;
UPDATE `creature_model_info` SET `bounding_radius` = '2.4' WHERE modelid = 29641;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29641;
UPDATE `creature_model_info` SET `bounding_radius` = '0.84456' WHERE modelid = 29643;
UPDATE `creature_model_info` SET `combat_reach` = '4.14' WHERE modelid = 29643;
UPDATE `creature_model_info` SET `bounding_radius` = '0.7344' WHERE modelid = 29644;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29644;
UPDATE `creature_model_info` SET `bounding_radius` = '2.33928' WHERE modelid = 29645;
UPDATE `creature_model_info` SET `combat_reach` = '9.72' WHERE modelid = 29645;
UPDATE `creature_model_info` SET `bounding_radius` = '2.33928' WHERE modelid = 29646;
UPDATE `creature_model_info` SET `combat_reach` = '9.72' WHERE modelid = 29646;
UPDATE `creature_model_info` SET `bounding_radius` = '2.094' WHERE modelid = 29647;
UPDATE `creature_model_info` SET `combat_reach` = '9' WHERE modelid = 29647;
UPDATE `creature_model_info` SET `bounding_radius` = '0.7344' WHERE modelid = 29648;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29648;
UPDATE `creature_model_info` SET `bounding_radius` = '0.7344' WHERE modelid = 29649;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29649;
UPDATE `creature_model_info` SET `bounding_radius` = '0.7344' WHERE modelid = 29650;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29650;
UPDATE `creature_model_info` SET `bounding_radius` = '0.9192' WHERE modelid = 29651;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29651;
UPDATE `creature_model_info` SET `bounding_radius` = '0.9192' WHERE modelid = 29652;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29652;
UPDATE `creature_model_info` SET `bounding_radius` = '0.9192' WHERE modelid = 29653;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29653;
UPDATE `creature_model_info` SET `bounding_radius` = '0.9192' WHERE modelid = 29655;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29655;
UPDATE `creature_model_info` SET `bounding_radius` = '0.5664' WHERE modelid = 29658;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29658;
UPDATE `creature_model_info` SET `bounding_radius` = '0.8928' WHERE modelid = 29659;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29659;
UPDATE `creature_model_info` SET `bounding_radius` = '0.8928' WHERE modelid = 29660;
UPDATE `creature_model_info` SET `combat_reach` = '3.6' WHERE modelid = 29660;
UPDATE `creature_model_info` SET `combat_reach` = '0' WHERE modelid = 29828;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 29881;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 29882;
UPDATE `creature_model_info` SET `combat_reach` = '1.5' WHERE modelid = 29883;
UPDATE `creature_template` SET `speed_run` = '0.857143' WHERE entry = 417;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 417;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 417;
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE entry = 417;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 6491;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 6491;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 8996;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 8996;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 10928;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 10928;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 12922;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 12922;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 17252;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 31702;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 32498;
UPDATE `creature_template` SET `scale` = '1.36' WHERE entry = 32498;
UPDATE `creature_template` SET `faction_A` = '1078', `faction_H` = '1078' WHERE entry = 33222;
UPDATE `creature_template` SET `faction_A` = '1078', `faction_H` = '1078' WHERE entry = 33223;
UPDATE `creature_template` SET `faction_A` = '1078', `faction_H` = '1078' WHERE entry = 33225;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 33229;
UPDATE `creature_template` SET `faction_A` = '1078', `faction_H` = '1078' WHERE entry = 33307;
UPDATE `creature_template` SET `faction_A` = '2155', `faction_H` = '2155' WHERE entry = 33310;
UPDATE `creature_template` SET `faction_A` = '2155', `faction_H` = '2155' WHERE entry = 33312;
UPDATE `creature_template` SET `faction_A` = '2155', `faction_H` = '2155' WHERE entry = 33315;
UPDATE `creature_template` SET `faction_A` = '64', `faction_H` = '64' WHERE entry = 33335;
UPDATE `creature_template` SET `faction_A` = '1074', `faction_H` = '1074' WHERE entry = 33361;
UPDATE `creature_template` SET `faction_A` = '1695', `faction_H` = '1695' WHERE entry = 33379;
UPDATE `creature_template` SET `faction_A` = '104', `faction_H` = '104' WHERE entry = 33403;
UPDATE `creature_template` SET `faction_A` = '1074', `faction_H` = '1074' WHERE entry = 33405;
UPDATE `creature_template` SET `faction_A` = '1695', `faction_H` = '1695' WHERE entry = 33538;
UPDATE `creature_template` SET `faction_A` = '104', `faction_H` = '104' WHERE entry = 33539;
UPDATE `creature_template` SET `faction_A` = '2123', `faction_H` = '2123' WHERE entry = 33542;
UPDATE `creature_template` SET `faction_A` = '1074', `faction_H` = '1074' WHERE entry = 33544;
UPDATE `creature_template` SET `faction_A` = '1604', `faction_H` = '1604' WHERE entry = 33548;
UPDATE `creature_template` SET `faction_A` = '104', `faction_H` = '104' WHERE entry = 33556;
UPDATE `creature_template` SET `faction_A` = '1604', `faction_H` = '1604' WHERE entry = 33557;
UPDATE `creature_template` SET `speed_walk` = '1' WHERE entry = 33561;
UPDATE `creature_template` SET `faction_A` = '1076', `faction_H` = '1076' WHERE entry = 33592;
UPDATE `creature_template` SET `faction_A` = '1694', `faction_H` = '1694' WHERE entry = 33593;
UPDATE `creature_template` SET `faction_A` = '2071', `faction_H` = '2071' WHERE entry = 33644;
UPDATE `creature_template` SET `faction_A` = '2027', `faction_H` = '2027' WHERE entry = 33646;
UPDATE `creature_template` SET `faction_A` = '64', `faction_H` = '64' WHERE entry = 33648;
UPDATE `creature_template` SET `faction_A` = '64', `faction_H` = '64' WHERE entry = 33649;
UPDATE `creature_template` SET `faction_A` = '64', `faction_H` = '64' WHERE entry = 33650;
UPDATE `creature_template` SET `faction_A` = '1076', `faction_H` = '1076' WHERE entry = 33652;
UPDATE `creature_template` SET `faction_A` = '1076', `faction_H` = '1076' WHERE entry = 33653;
UPDATE `creature_template` SET `faction_A` = '1076', `faction_H` = '1076' WHERE entry = 33654;
UPDATE `creature_template` SET `faction_A` = '1694', `faction_H` = '1694' WHERE entry = 33655;
UPDATE `creature_template` SET `faction_A` = '1694', `faction_H` = '1694' WHERE entry = 33656;
UPDATE `creature_template` SET `faction_A` = '1694', `faction_H` = '1694' WHERE entry = 33657;
UPDATE `creature_template` SET `faction_A` = '2123', `faction_H` = '2123' WHERE entry = 33658;
UPDATE `creature_template` SET `faction_A` = '2123', `faction_H` = '2123' WHERE entry = 33659;
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14' WHERE entry = 33738;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 33743;
UPDATE `creature_template` SET `speed_walk` = '1.2' WHERE entry = 33743;
UPDATE `creature_template` SET `speed_run` = '1.03929' WHERE entry = 33747;
UPDATE `creature_template` SET `speed_walk` = '0.75' WHERE entry = 33747;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 33842;
UPDATE `creature_template` SET `speed_run` = '1.28968' WHERE entry = 33843;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 33870;
UPDATE `creature_template` SET `faction_A` = '2025', `faction_H` = '2025' WHERE entry = 33970;
UPDATE `creature_template` SET `faction_A` = '2123', `faction_H` = '2123' WHERE entry = 33971;
UPDATE `creature_template` SET `faction_A` = '80', `faction_H` = '80' WHERE entry = 34657;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 34658;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 34658;
UPDATE `creature_template` SET `faction_A` = '875', `faction_H` = '875' WHERE entry = 34702;
UPDATE `creature_template` SET `speed_run` = '1.42857' WHERE entry = 34703;
UPDATE `creature_template` SET `faction_A` = '55', `faction_H` = '55' WHERE entry = 34703;
UPDATE `creature_template` SET `faction_A` = '12', `faction_H` = '12' WHERE entry = 34705;
UPDATE `creature_template` SET `faction_A` = '2123', `faction_H` = '2123' WHERE entry = 34771;
UPDATE `creature_template` SET `faction_A` = '2123', `faction_H` = '2123' WHERE entry = 34772;
UPDATE `creature_template` SET `faction_A` = '634', `faction_H` = '634' WHERE entry = 34788;
UPDATE `creature_template` SET `scale` = '2.4' WHERE entry = 34856;
UPDATE `creature_template` SET `scale` = '2.4' WHERE entry = 34857;
UPDATE `creature_template` SET `scale` = '2.4' WHERE entry = 34858;
UPDATE `creature_template` SET `scale` = '2.4' WHERE entry = 34859;
UPDATE `creature_template` SET `scale` = '2.4' WHERE entry = 34860;
UPDATE `creature_template` SET `scale` = '2.4' WHERE entry = 34861;
UPDATE `creature_template` SET `scale` = '2.4' WHERE entry = 34868;
UPDATE `creature_template` SET `scale` = '2.4' WHERE entry = 34869;
UPDATE `creature_template` SET `scale` = '2.4' WHERE entry = 34870;
UPDATE `creature_template` SET `scale` = '2.4' WHERE entry = 34871;
UPDATE `creature_template` SET `scale` = '1' WHERE entry = 34883;
UPDATE `creature_template` SET `scale` = '1' WHERE entry = 34887;
UPDATE `creature_template` SET `scale` = '1' WHERE entry = 34900;
UPDATE `creature_template` SET `scale` = '1' WHERE entry = 34901;
UPDATE `creature_template` SET `scale` = '1' WHERE entry = 34902;
UPDATE `creature_template` SET `scale` = '1' WHERE entry = 34903;
UPDATE `creature_template` SET `scale` = '1' WHERE entry = 34904;
UPDATE `creature_template` SET `scale` = '1' WHERE entry = 34905;
UPDATE `creature_template` SET `scale` = '1' WHERE entry = 34906;
UPDATE `creature_template` SET `scale` = '1' WHERE entry = 34908;
UPDATE `creature_template` SET `scale` = '1' WHERE entry = 34909;
UPDATE `creature_template` SET `scale` = '1' WHERE entry = 34910;
UPDATE `creature_template` SET `faction_A` = '2123', `faction_H` = '2123' WHERE entry = 34914;
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE entry = 34928;
UPDATE `creature_template` SET `scale` = '2.4' WHERE entry = 34966;
UPDATE `creature_template` SET `scale` = '2.4' WHERE entry = 34970;
UPDATE `creature_template` SET `scale` = '2.4' WHERE entry = 34974;
UPDATE `creature_template` SET `scale` = '2.4' WHERE entry = 34975;
UPDATE `creature_template` SET `scale` = '2.4' WHERE entry = 34977;
UPDATE `creature_template` SET `scale` = '2.4' WHERE entry = 34979;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 34990;
UPDATE `creature_template` SET `speed_run` = '1' WHERE entry = 34992;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 34995;
UPDATE `creature_template` SET `unit_class` = '1' WHERE entry = 34996;
UPDATE `creature_template` SET `scale` = '1' WHERE entry = 35016;
UPDATE `creature_template` SET `speed_run` = '1.42857' WHERE entry = 35029;
UPDATE `creature_template` SET `speed_walk` = '1.6' WHERE entry = 35029;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 35029;
UPDATE `creature_template` SET `scale` = '0.1' WHERE entry = 35029;
UPDATE `creature_template` SET `faction_A` = '2121', `faction_H` = '2121' WHERE entry = 35290;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 35305;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 35307;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 35309;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 35311;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 35328;
UPDATE `creature_template` SET `faction_A` = '21', `faction_H` = '21' WHERE entry = 35328;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 35329;
UPDATE `creature_template` SET `faction_A` = '21', `faction_H` = '21' WHERE entry = 35329;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 35331;
UPDATE `creature_template` SET `faction_A` = '21', `faction_H` = '21' WHERE entry = 35331;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 35332;
UPDATE `creature_template` SET `faction_A` = '21', `faction_H` = '21' WHERE entry = 35332;
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14' WHERE entry = 35451;
UPDATE `creature_template` SET `baseattacktime` = '1500' WHERE entry = 35451;
UPDATE `creature_template` SET `speed_run` = '0.992063' WHERE entry = 35545;
UPDATE `creature_template` SET `speed_walk` = '0.8' WHERE entry = 35545;
UPDATE `creature_template` SET `faction_A` = '2123', `faction_H` = '2123' WHERE entry = 35574;
UPDATE `creature_template` SET `faction_A` = '2123', `faction_H` = '2123' WHERE entry = 35576;
UPDATE `creature_template` SET `faction_A` = '2123', `faction_H` = '2123' WHERE entry = 35578;
UPDATE `creature_template` SET `faction_A` = '2123', `faction_H` = '2123' WHERE entry = 35580;
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE entry = 35590;
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14' WHERE entry = 35614;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 35633;
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14' WHERE entry = 35633;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 35636;
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14' WHERE entry = 35636;
UPDATE `creature_template` SET `speed_run` = '1.38571' WHERE entry = 35637;
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14' WHERE entry = 35637;
UPDATE `creature_template` SET `speed_run` = '1.57143' WHERE entry = 35644;
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14' WHERE entry = 35644;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 36108;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 36109;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 36114;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 36116;
UPDATE `creature_template` SET `faction_A` = '1732', `faction_H` = '1732' WHERE entry = 36118;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 36119;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 36120;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 36121;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 36122;
UPDATE `creature_template` SET `faction_A` = '1735', `faction_H` = '1735' WHERE entry = 36124;
UPDATE `creature_template` SET `speed_run` = '1.57143' WHERE entry = 36558;

# FIX
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35 WHERE `entry` = 14494;
DELETE FROM `creature` WHERE `id`=31205;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(111496, 31205, 571, 1, 1, 27576, 0, 6889.06, 1160.94, 285.754, 0, 300, 5, 0, 12600, 0, 0, 1),
(111497, 31205, 571, 1, 1, 27573, 0, 6924.86, 1226.06, 292.355, 6.14578, 300, 5, 0, 12600, 0, 0, 1),
(111498, 31205, 571, 1, 1, 27573, 0, 6910.49, 1180.66, 288.314, 0.630807, 300, 5, 0, 12600, 0, 0, 1),
(111499, 31205, 571, 1, 1, 27573, 0, 6908.2, 1192.08, 287.506, 0.354862, 300, 5, 0, 12600, 0, 0, 1),
(111500, 31205, 571, 1, 1, 27573, 0, 6894.27, 1170.31, 286.172, 5.03423, 300, 5, 0, 12600, 0, 0, 1),
(111501, 31205, 571, 1, 1, 27550, 0, 6955.77, 1121.55, 296.552, 0.383515, 300, 5, 0, 12600, 0, 0, 1),
(111502, 31205, 571, 1, 1, 27576, 0, 6945.07, 1165.73, 293.765, 3.96819, 300, 5, 0, 12600, 0, 0, 1),
(111503, 31205, 571, 1, 1, 27573, 0, 6934.02, 1154.08, 293.092, 2.30601, 300, 5, 0, 12600, 0, 0, 1),
(111504, 31205, 571, 1, 1, 27573, 0, 6926.3, 1128.2, 291.752, 6.22396, 300, 5, 0, 12600, 0, 0, 1),
(111505, 31205, 571, 1, 1, 27576, 0, 6945.22, 1122.28, 296.167, 1.39328, 300, 5, 0, 12600, 0, 0, 1),
(111506, 31205, 571, 1, 1, 27550, 0, 6906.41, 1124.97, 287.167, 1.5568, 300, 5, 0, 12600, 0, 0, 1),
(111507, 31205, 571, 1, 1, 27550, 0, 6911.78, 1052.34, 306.464, 3.25472, 300, 5, 0, 12600, 0, 0, 1),
(111508, 31205, 571, 1, 1, 27573, 0, 6826.46, 1275.12, 284.651, 1.05513, 300, 5, 0, 12600, 0, 0, 1),
(111509, 31205, 571, 1, 1, 27573, 0, 6837.71, 1244.11, 280.538, 2.95205, 300, 5, 0, 12600, 0, 0, 1),
(111510, 31205, 571, 1, 1, 27550, 0, 6840.59, 1258.47, 281.558, 5.92326, 300, 5, 0, 12600, 0, 0, 1),
(111511, 31205, 571, 1, 1, 27573, 0, 6865.24, 1280.96, 284.704, 4.856, 300, 5, 0, 12600, 0, 0, 1),
(111512, 31205, 571, 1, 1, 27550, 0, 6556.9, 996.463, 280.782, 3.69777, 300, 0, 0, 12600, 0, 0, 0),
(111513, 31205, 571, 1, 1, 27573, 0, 6882.8, 1184.79, 284.752, 0.285953, 300, 5, 0, 12600, 0, 0, 1),
(111514, 31205, 571, 1, 1, 27576, 0, 6877.92, 1181.75, 284.226, 3.39012, 300, 5, 0, 12600, 0, 0, 1),
(111515, 31205, 571, 1, 1, 27576, 0, 6911.42, 1185.32, 288.303, 1.40308, 300, 5, 0, 12600, 0, 0, 1),
(111516, 31205, 571, 1, 1, 27576, 0, 6904.12, 1189.34, 286.975, 0.507043, 300, 0, 0, 12600, 0, 0, 0),
(111517, 31205, 571, 1, 1, 27573, 0, 6656.22, 1256.13, 283.993, 4.24871, 300, 0, 0, 12600, 0, 0, 0),
(111518, 31205, 571, 1, 1, 27550, 0, 6902.58, 1176.97, 287.256, 1.3258, 300, 5, 0, 12600, 0, 0, 1),
(111519, 31205, 571, 1, 1, 27573, 0, 6846.73, 1177.08, 281.037, 0, 300, 5, 0, 12600, 0, 0, 1),
(111520, 31205, 571, 1, 1, 27550, 0, 6899.72, 1257.62, 286.566, 3.90904, 300, 5, 0, 12600, 0, 0, 1),
(111521, 31205, 571, 1, 1, 27573, 0, 6903.48, 1262.46, 288.006, 1.99229, 300, 5, 0, 12600, 0, 0, 1),
(111522, 31205, 571, 1, 1, 27550, 0, 6898.58, 1224, 286.868, 0.494947, 300, 5, 0, 12600, 0, 0, 1),
(111523, 31205, 571, 1, 1, 27576, 0, 6891.63, 1206.71, 285.118, 0.955149, 300, 5, 0, 12600, 0, 0, 1),
(111524, 31205, 571, 1, 1, 27573, 0, 6878.01, 1270.31, 285.607, 6.16294, 300, 5, 0, 12600, 0, 0, 1),
(111525, 31205, 571, 1, 1, 27573, 0, 6870.07, 1209.96, 283.493, 5.51601, 300, 5, 0, 12600, 0, 0, 1),
(111526, 31205, 571, 1, 1, 27573, 0, 6860.67, 1231.21, 282.805, 2.09952, 300, 5, 0, 12600, 0, 0, 1),
(111527, 31205, 571, 1, 1, 27576, 0, 6909.61, 1196.97, 288.12, 1.15257, 300, 5, 0, 12600, 0, 0, 1),
(111528, 31205, 571, 1, 1, 27573, 0, 6865.82, 1249.8, 283.816, 6.19518, 300, 5, 0, 12600, 0, 0, 1),
(111529, 31205, 571, 1, 1, 27576, 0, 6913.06, 1190.42, 288.284, 2.2307, 300, 5, 0, 12600, 0, 0, 1),
(111530, 31205, 571, 1, 1, 27576, 0, 6913.47, 1179.36, 288.131, 5.54587, 300, 5, 0, 12600, 0, 0, 1),
(111531, 31205, 571, 1, 1, 27576, 0, 6884.16, 1144.49, 287.064, 0.322986, 300, 5, 0, 12600, 0, 0, 1),
(111532, 31205, 571, 1, 1, 27573, 0, 6934.47, 1197.92, 290.783, 0, 300, 5, 0, 12600, 0, 0, 1),
(111535, 31205, 571, 1, 1, 27573, 0, 6882.06, 1180.95, 284.56, 3.46983, 300, 5, 0, 12600, 0, 0, 1),
(111536, 31205, 571, 1, 1, 27576, 0, 6922.12, 1073.65, 301.695, 0.070185, 300, 5, 0, 12600, 0, 0, 1),
(112065, 31205, 571, 1, 1, 27550, 0, 6922.19, 1068.92, 302.948, 3.70027, 300, 5, 0, 12600, 0, 0, 1),
(112815, 31205, 571, 1, 1, 27576, 0, 6889.58, 1093.75, 293.432, 4.54718, 300, 5, 0, 12600, 0, 0, 1),
(112816, 31205, 571, 1, 1, 27550, 0, 6893.29, 1088.37, 294.057, 2.56702, 300, 5, 0, 12600, 0, 0, 1),
(112817, 31205, 571, 1, 1, 27576, 0, 6909.35, 1211.73, 290.074, 5.94568, 300, 5, 0, 12600, 0, 0, 1),
(112818, 31205, 571, 1, 1, 27573, 0, 6856.2, 1172.07, 281.858, 1.16662, 300, 5, 0, 12600, 0, 0, 1),
(112819, 31205, 571, 1, 1, 27550, 0, 6621.46, 1130.97, 272.547, 0.588001, 300, 5, 0, 12600, 0, 0, 1),
(112820, 31205, 571, 1, 1, 27550, 0, 6570.07, 1123.97, 274.104, 5.7874, 300, 0, 0, 12600, 0, 0, 0),
(112821, 31205, 571, 1, 1, 27576, 0, 6569.72, 1186.09, 275.365, 3.89729, 300, 0, 0, 12600, 0, 0, 0);
UPDATE `gameobject_template` SET `data1` = 20 WHERE `entry` = 300244;
UPDATE `gameobject` SET `phaseMask` = 65535, `spawntimesecs` = 300 WHERE `guid` = 49763;
UPDATE `creature` SET `spawnMask` = 3, `phaseMask` = 65535 WHERE `id` = 33233;
INSERT IGNORE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(112822,30298,571,1,1,0,0,8440.007,793.1233,585.525,0,120,0,0,1,0,0,0); -- Invisible Stalker (Float, Uninteractible, LargeAOI)
UPDATE `creature_model_info` SET `bounding_radius`=1,`combat_reach`=0,`gender`=2 WHERE `modelid`=4589;
DELETE FROM `game_event` WHERE (`evententry`=31);
DELETE FROM `game_event_creature` WHERE abs(`evententry`) = 31;
DELETE FROM `game_event_gameobject` WHERE abs(`evententry`) = 31;
DELETE FROM `gameobject` WHERE guid IN (66074,66076,66080,66086,66379,66380,70233,70234,70241,66070,66081,66089,66072,66073,66077,66078,66084,66075,66079,66087,66377,70236,70239,70240,70243,66083,70238,70242,66085,70237,70244,66071,70235,66082);

# Conditions
REPLACE INTO `conditions` VALUES ('13', '0', '8898', '0', '18', '0', '101748', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '16447', '0', '18', '0', '175621', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17471', '0', '18', '1', '11197', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '31324', '0', '18', '1', '17845', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '32958', '0', '18', '1', '18793', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '34254', '0', '18', '1', '19557', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '34254', '0', '18', '1', '19608', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '34254', '0', '18', '1', '19920', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '34254', '0', '18', '1', '19958', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '34254', '0', '18', '1', '19962', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '34254', '0', '18', '1', '19964', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '34254', '0', '18', '1', '19969', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '37748', '0', '18', '1', '21867', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '38966', '0', '18', '1', '22358', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '50628', '0', '18', '1', '28009', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '54272', '0', '18', '1', '29328', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '61920', '0', '18', '1', '32857', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '61920', '0', '18', '1', '32867', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '61920', '0', '18', '1', '32927', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10274', '0', '0', '9', '13549', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10273', '0', '0', '9', '13549', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7939', '1', '0', '8', '10140', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7939', '0', '0', '9', '10140', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7938', '1', '0', '8', '10289', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7938', '0', '0', '9', '10289', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10478', '0', '0', '6', '469', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10478', '1', '0', '6', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1282', '0', '0', '9', '3566', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9007', '0', '0', '2', '34102', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10219', '0', '0', '9', '9418', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10024', '0', '0', '9', '12521', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '21493', '0', '0', '25', '20222', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '21494', '0', '0', '25', '20219', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9955', '0', '0', '14', '13013', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6092', '0', '0', '25', '20222', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6094', '0', '0', '25', '20219', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9937', '1', '0', '14', '13033', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9937', '2', '0', '14', '13016', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9937', '3', '0', '14', '13012', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9714', '0', '0', '9', '12638', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9732', '0', '0', '9', '12664', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9732', '1', '0', '9', '12663', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7771', '1', '0', '9', '10040', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9806', '0', '0', '9', '12807', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7970', '2', '0', '9', '10340', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7970', '3', '0', '9', '10146', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4560', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4560', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4558', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4558', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3642', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3642', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4559', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4559', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4553', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4553', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4554', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4554', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4556', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4556', '3', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4555', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4555', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4567', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4567', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2381', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2381', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4566', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4566', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4561', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4561', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4569', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4569', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4549', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4549', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4503', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4503', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4466', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4466', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4467', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4467', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4473', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4473', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4472', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4472', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4482', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4482', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4481', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4481', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4475', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4475', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5061', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5061', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4485', '1', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4664', '3', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9691', '1', '0', '14', '0', '32', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9692', '1', '0', '14', '0', '32', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9693', '1', '0', '14', '0', '32', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4517', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '436', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '410', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '141', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '523', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4515', '1', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '655', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4568', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50199', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '381', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7262', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50202', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7349', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '411', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50205', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7567', '3', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7265', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2304', '3', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7368', '5', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8110', '3', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4570', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '12537', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50214', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50216', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6647', '3', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50218', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4665', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4688', '3', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50223', '3', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50224', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50225', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9990', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4541', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4474', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1403', '4', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1503', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2383', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3644', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3921', '3', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3926', '3', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4010', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4011', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4012', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4017', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4023', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4103', '3', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4104', '3', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4463', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4469', '3', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4470', '3', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4471', '3', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4506', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4516', '3', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4524', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4525', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4526', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4527', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4528', '3', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4529', '3', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4530', '3', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4537', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4538', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4539', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4551', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4552', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4571', '3', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4576', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4606', '3', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4607', '3', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4609', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4641', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4645', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4647', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4649', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4650', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4657', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4659', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4660', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4661', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4663', '3', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4666', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4667', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4675', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4676', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4677', '3', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4678', '3', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4680', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4683', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4684', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4685', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4691', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4697', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5123', '3', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7357', '3', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7377', '4', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8111', '3', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4542', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4557', '3', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50185', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4533', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4652', '3', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4681', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50194', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4502', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4695', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3925', '3', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7260', '3', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7467', '3', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7522', '3', '0', '14', '0', '64', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7264', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7263', '1', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6648', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6649', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6650', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6652', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7566', '2', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4687', '3', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4605', '3', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6628', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7438', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4682', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4518', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4520', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4519', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4654', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4521', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4523', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4679', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4686', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '63', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4656', '2', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3645', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '85', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4651', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1522', '1', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4550', '2', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4008', '3', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4690', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4696', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4575', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4578', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4579', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4581', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4801', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4573', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4572', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7366', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4574', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4540', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4548', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4547', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4546', '1', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50187', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4511', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4509', '1', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4644', '3', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4531', '3', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4534', '3', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4512', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4603', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2384', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4604', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4653', '3', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4655', '3', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4484', '1', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4505', '1', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4508', '1', '0', '14', '0', '1024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4504', '1', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4662', '1', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4009', '1', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4562', '3', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '85', '4', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '141', '4', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '381', '4', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '410', '4', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '411', '4', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '436', '4', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4502', '4', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4512', '4', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4513', '4', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4540', '4', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4541', '4', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4542', '4', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4561', '4', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4562', '4', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4575', '4', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4576', '4', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4659', '4', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4676', '4', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4690', '4', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5061', '4', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6650', '4', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4562', '2', '0', '25', '63680', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10478', '0', '0', '14', '13667', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10478', '1', '0', '14', '13668', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9007', '0', '0', '9', '11460', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '21493', '0', '0', '25', '36954', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '21494', '0', '0', '25', '36955', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6092', '0', '0', '25', '23486', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6094', '0', '0', '25', '23489', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9732', '0', '0', '14', '12238', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9732', '1', '0', '8', '12238', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7771', '1', '0', '11', '32756', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4560', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4558', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3642', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4559', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4553', '2', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4554', '2', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4556', '2', '0', '14', '0', '2', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4555', '2', '0', '14', '0', '128', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4567', '2', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2381', '2', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4566', '2', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4561', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4569', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4549', '2', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4503', '2', '0', '14', '0', '256', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4466', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4467', '2', '0', '14', '0', '16', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4473', '2', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4472', '2', '0', '14', '0', '4', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4482', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4481', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4475', '2', '0', '14', '0', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5061', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '85', '4', '0', '14', '6681', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '141', '4', '0', '14', '6681', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '381', '4', '0', '14', '6681', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '410', '4', '0', '14', '6681', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '411', '4', '0', '14', '6681', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '436', '4', '0', '14', '6681', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4502', '4', '0', '14', '6681', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4512', '4', '0', '14', '6681', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4513', '4', '0', '14', '6681', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4540', '4', '0', '14', '6681', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4541', '4', '0', '14', '6681', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4542', '4', '0', '14', '6681', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4561', '4', '0', '14', '6681', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4562', '4', '0', '14', '6681', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4575', '4', '0', '14', '6681', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4576', '4', '0', '14', '6681', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4659', '4', '0', '14', '6681', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4676', '4', '0', '14', '6681', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4690', '4', '0', '14', '6681', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5061', '4', '0', '14', '6681', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6650', '4', '0', '14', '6681', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4562', '2', '0', '14', '0', '8', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '21493', '0', '0', '7', '202', '350', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '21494', '0', '0', '7', '202', '350', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6092', '0', '0', '7', '202', '260', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6094', '0', '0', '7', '202', '260', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('18', '0', '24501', '0', '24', '1', '17157', '0', '0', '', null);
REPLACE INTO `gossip_menu` VALUES ('141', '4793');
REPLACE INTO `gossip_menu` VALUES ('141', '4794');
REPLACE INTO `gossip_menu` VALUES ('381', '4795');
REPLACE INTO `gossip_menu` VALUES ('381', '4799');
REPLACE INTO `gossip_menu` VALUES ('410', '4795');
REPLACE INTO `gossip_menu` VALUES ('410', '4797');
REPLACE INTO `gossip_menu` VALUES ('436', '4793');
REPLACE INTO `gossip_menu` VALUES ('436', '4794');
REPLACE INTO `gossip_menu` VALUES ('840', '1451');
REPLACE INTO `gossip_menu` VALUES ('880', '1452');
REPLACE INTO `gossip_menu` VALUES ('881', '1456');
REPLACE INTO `gossip_menu` VALUES ('882', '1455');
REPLACE INTO `gossip_menu` VALUES ('883', '1454');
REPLACE INTO `gossip_menu` VALUES ('884', '1453');
REPLACE INTO `gossip_menu` VALUES ('1321', '1955');
REPLACE INTO `gossip_menu` VALUES ('1322', '1954');
REPLACE INTO `gossip_menu` VALUES ('4475', '1216');
REPLACE INTO `gossip_menu` VALUES ('4475', '5721');
REPLACE INTO `gossip_menu` VALUES ('4481', '1216');
REPLACE INTO `gossip_menu` VALUES ('4481', '5721');
REPLACE INTO `gossip_menu` VALUES ('4482', '1216');
REPLACE INTO `gossip_menu` VALUES ('4482', '5721');
REPLACE INTO `gossip_menu` VALUES ('4556', '3975');
REPLACE INTO `gossip_menu` VALUES ('4557', '3975');
REPLACE INTO `gossip_menu` VALUES ('4576', '4793');
REPLACE INTO `gossip_menu` VALUES ('4576', '4794');
REPLACE INTO `gossip_menu` VALUES ('4676', '4833');
REPLACE INTO `gossip_menu` VALUES ('4676', '4835');
REPLACE INTO `gossip_menu` VALUES ('4690', '4795');
REPLACE INTO `gossip_menu` VALUES ('4690', '4796');
REPLACE INTO `gossip_menu` VALUES ('5061', '4835');
REPLACE INTO `gossip_menu` VALUES ('5061', '4837');
REPLACE INTO `gossip_menu` VALUES ('8044', '9932');
REPLACE INTO `gossip_menu` VALUES ('12537', '4437');
REPLACE INTO `gossip_menu_option` VALUES ('10274', '0', '0', 'If you want to know is male or female, look Icepaw Bear by the tail.', '1', '1', '1', '0', '10273', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10273', '0', '0', 'If you want to know is male or female, look Frost Leopard by the tail.', '1', '1', '1', '0', '10273', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4560', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4560', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4560', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4558', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4558', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4558', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3642', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3642', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('3642', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4559', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4559', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4559', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4553', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4553', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4553', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4554', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4554', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4554', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4556', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4556', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4556', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4555', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4555', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4555', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4567', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4567', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4567', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('2381', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('2381', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('2381', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4566', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4566', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4566', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4561', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4561', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4561', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4569', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4569', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4569', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4549', '1', '3', 'I seek training in the ways of the Hunter.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4549', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4549', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4154', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4160', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4845', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('682', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('683', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4201', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4344', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4503', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4503', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4503', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4466', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4466', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4466', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4467', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4467', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4467', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4146', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4161', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4203', '0', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('690', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('10392', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('10392', '1', '8', 'I want to create a guild crest.', '11', '524288', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('706', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4473', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4473', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4473', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4472', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4472', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4472', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4482', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4482', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4482', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4481', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4481', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4481', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4475', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4475', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4475', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('5061', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('5061', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5061', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10649', '0', '0', 'Yes!', '1', '1', '1', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4485', '1', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4664', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9691', '1', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9692', '1', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9693', '1', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4517', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('436', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('410', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('141', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('523', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4515', '1', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('655', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4568', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50199', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('381', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7262', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50202', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7349', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('411', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50205', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7567', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7265', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('2304', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7368', '5', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('8110', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4570', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('12537', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50214', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50216', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6647', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50218', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4665', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50220', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4688', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50223', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50224', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50225', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9990', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4541', '2', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4474', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('1403', '4', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('1503', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('2383', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3644', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3921', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3926', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4010', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4011', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4012', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4017', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4023', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4103', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4104', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4463', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4469', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4470', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4471', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4506', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4516', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4524', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4525', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4526', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4527', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4528', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4529', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4530', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4537', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4538', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4539', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4551', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4552', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4571', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4576', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4606', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4607', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4609', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4641', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4645', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4647', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4649', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4650', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4657', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4659', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4660', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4661', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4663', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4666', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4667', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4675', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4676', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4677', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4678', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4680', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4683', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4684', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4685', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4691', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4697', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('5123', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7357', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7377', '4', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('8111', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4542', '2', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('2385', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4557', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50185', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4533', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4652', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4681', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50194', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4502', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4695', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3925', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7260', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7467', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7522', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7264', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7263', '1', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6648', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6649', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6650', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6652', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4486', '2', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7566', '2', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4687', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4605', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6628', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7438', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4682', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4518', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4520', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4519', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4654', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4521', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4522', '2', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4523', '2', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4679', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4686', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('63', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4656', '2', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3645', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('85', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4651', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('1522', '1', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4550', '2', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4008', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4690', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4696', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4575', '2', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4578', '2', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4579', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4581', '2', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4801', '2', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4573', '2', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4572', '2', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7366', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4574', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4540', '2', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4548', '2', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4547', '2', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4546', '1', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50187', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4511', '2', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4509', '1', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4644', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4531', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4534', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4512', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4603', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('2384', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4604', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4653', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4655', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4484', '1', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4505', '1', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4508', '1', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4504', '1', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4662', '1', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4009', '1', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4562', '3', '0', 'I wish to unlearn my talents.', '1', '1', '4461', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('85', '4', '0', '<Take the letter>', '1', '1', '1', '0', '85', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('141', '4', '0', '<Take the letter>', '1', '1', '1', '0', '85', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('381', '4', '0', '<Take the letter>', '1', '1', '1', '0', '85', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('410', '4', '0', '<Take the letter>', '1', '1', '1', '0', '85', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('411', '4', '0', '<Take the letter>', '1', '1', '1', '0', '85', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('436', '4', '0', '<Take the letter>', '1', '1', '1', '0', '85', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4502', '4', '0', '<Take the letter>', '1', '1', '1', '0', '85', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4512', '4', '0', '<Take the letter>', '1', '1', '1', '0', '85', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4513', '4', '0', '<Take the letter>', '1', '1', '1', '0', '85', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4540', '4', '0', '<Take the letter>', '1', '1', '1', '0', '85', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4541', '4', '0', '<Take the letter>', '1', '1', '1', '0', '85', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4542', '4', '0', '<Take the letter>', '1', '1', '1', '0', '85', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4561', '4', '0', '<Take the letter>', '1', '1', '1', '0', '85', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4562', '4', '0', '<Take the letter>', '1', '1', '1', '0', '85', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4575', '4', '0', '<Take the letter>', '1', '1', '1', '0', '85', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4576', '4', '0', '<Take the letter>', '1', '1', '1', '0', '85', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4659', '4', '0', '<Take the letter>', '1', '1', '1', '0', '85', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4676', '4', '0', '<Take the letter>', '1', '1', '1', '0', '85', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4690', '4', '0', '<Take the letter>', '1', '1', '1', '0', '85', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5061', '4', '0', '<Take the letter>', '1', '1', '1', '0', '85', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('6650', '4', '0', '<Take the letter>', '1', '1', '1', '0', '85', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4562', '1', '3', 'Train me.', '5', '16', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4562', '2', '0', 'Learn about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7849', '0', '0', 'Strange wizard?', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7939', '1', '2', 'I need a ride.', '4', '8192', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7939', '0', '0', 'Send me to Honor Hold!', '1', '1', '1', '0', '7939', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7938', '1', '2', 'Show me where I can fly.', '4', '8192', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7938', '0', '0', 'Send me to Thrallmar!', '1', '1', '1', '0', '7938', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7829', '0', '0', 'The situation is rather complicated, Thrall. It would be best for you to head into the mountains now, before more of Blackmoore\'s men show up. We\'ll make sure Taretha is safe.', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7830', '0', '0', 'Taretha cannot see you, Thrall.', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7831', '0', '0', 'Tarren Mill.', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8044', '0', '0', '<more>', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('1323', '0', '0', 'Tell me what drives this vengeance?', '1', '1', '1322', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('1323', '3', '0', 'Kalaran, please enchant the torch.', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('1321', '0', '0', 'Let me confer with my colleagues.', '1', '1', '1323', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('1322', '0', '0', 'Continue please.', '1', '1', '1321', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('10478', '0', '0', 'I\'ll take the flight.', '1', '1', '1', '0', '10478', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('10478', '1', '0', 'I\'ll take the flight.', '1', '1', '1', '0', '10478', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('1282', '0', '0', 'Touch the Suntara stone and call forth Lathoric the Black and his guardian, Obsidion.', '1', '1', '1', '0', '1282', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9007', '0', '0', '<To feed the worm rocky falcon>', '1', '1', '1', '0', '24752', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10219', '0', '0', 'Place Avruu\'s Orb on the altar.', '1', '1', '1', '0', '10219', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7820', '0', '3', 'I would like to train.', '5', '16', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('10024', '0', '0', 'I\'m ready to fly to Sholazar Basin.', '1', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('21493', '0', '0', '[PH] Learn Dimensional Ripper.', '1', '1', '1', '0', '21493', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('21494', '0', '0', '[PH] Learn Ultrasafe Transporter.', '1', '1', '1', '0', '21494', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9955', '0', '0', 'Where is Elder Beldak?', '1', '1', '50056', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('6092', '0', '0', 'This Dimensional Imploder sounds dangerous! How can I make one?', '1', '1', '1', '0', '6092', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('6094', '0', '0', 'I must build a beacon for this marvelous device!', '1', '1', '1', '0', '6094', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9937', '1', '0', 'Where is Elder Arp?', '1', '1', '50055', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9937', '2', '0', 'Where is Elder Northal?', '1', '1', '50093', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9937', '3', '0', 'Where is Elder Sardis?', '1', '1', '50104', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9714', '0', '0', 'Stefan told me you would demonstrate the purpose of this item.', '1', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9732', '0', '0', 'Uhh, can you send me on the tour of Zul\'Drak?', '1', '1', '1', '0', '9732', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9732', '1', '0', 'Uhh, can you send me on the tour of Zul\'Drak?', '1', '1', '1', '0', '9732', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7771', '1', '0', 'Private Weeks, I need a new disguise', '1', '1', '1', '0', '18715', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9806', '0', '0', 'Lord-Commander, I would hear your tale.', '1', '1', '9807', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9812', '0', '0', 'That\'s quite a tale, lord-commander.', '1', '1', '9806', '0', '9812', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7970', '2', '0', 'Send me to Shatter Point!', '1', '1', '1', '0', '7970', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7970', '3', '0', 'I\'m on a bombing mission for Forward Commander Kingston.  I need a gryphon destroyer!', '1', '1', '1', '0', '19409', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9573', '2', '0', 'I want to exchange my Amber Essence for Emerald Essence.', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('840', '1', '0', 'Please continue, Hero...', '1', '1', '880', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('880', '0', '0', 'What could be worse than death?', '1', '1', '884', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('881', '0', '0', 'I shall.', '1', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('882', '0', '0', 'You can count on me, Hero.', '1', '1', '881', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('883', '0', '0', 'What are the stones of binding?', '1', '1', '882', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('884', '0', '0', 'Subordinates?', '1', '1', '883', '0', '0', '0', '0', '');
REPLACE INTO `gossip_scripts` VALUES ('7938', '0', '15', '34924', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_scripts` VALUES ('7938', '0', '15', '34924', '0', '0', '0', '0', '0', '0');
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50371;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50371;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50373;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50373;
UPDATE conditions SET SourceGroup=8833 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50252;
UPDATE conditions SET SourceGroup=8833 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50252;
UPDATE conditions SET SourceGroup=1186 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50406;
UPDATE conditions SET SourceGroup=1186 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50406;
UPDATE conditions SET SourceGroup=4557 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50184;
UPDATE conditions SET SourceGroup=4557 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50184;
UPDATE conditions SET SourceGroup=411 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50204;
UPDATE conditions SET SourceGroup=411 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50204;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=23127;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=23127;
UPDATE conditions SET SourceGroup=6829 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=15576;
UPDATE conditions SET SourceGroup=6829 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=15576;
UPDATE conditions SET SourceGroup=9955 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=30531;
UPDATE conditions SET SourceGroup=9955 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=30531;
UPDATE conditions SET SourceGroup=12537 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=3643;
UPDATE conditions SET SourceGroup=12537 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=3643;
DELETE FROM `quest_start_scripts` WHERE `id`=1;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(1, 1, 0, 0, 0, '2000001200', 0, 0, 0, 0),
(1, 2, 0, 0, 0, '2000001201', 0, 0, 0, 0),
(1, 3, 0, 0, 0, '2000001202', 0, 0, 0, 0),
(1, 4, 0, 0, 0, '2000001204', 0, 0, 0, 0),
(1, 5, 0, 0, 0, '2000001214', 0, 0, 0, 0),
(1, 6, 0, 0, 0, '2000000021', 0, 0, 0, 0),
(1, 7, 0, 0, 0, '2000000022', 0, 0, 0, 0),
(1, 8, 0, 0, 0, '2000000056', 0, 0, 0, 0),
(1, 9, 0, 0, 0, '2000000057', 0, 0, 0, 0),
(1, 10, 0, 0, 0, '2000000063', 0, 0, 0, 0),
(1, 11, 0, 0, 0, '2000000064', 0, 0, 0, 0),
(1, 12, 0, 0, 0, '2000000065', 0, 0, 0, 0),
(1, 13, 0, 0, 0, '2000000066', 0, 0, 0, 0),
(1, 14, 0, 0, 0, '2000000075', 0, 0, 0, 0),
(1, 15, 0, 0, 0, '2000000078', 0, 0, 0, 0),
(1, 16, 0, 0, 0, '2000000080', 0, 0, 0, 0),
(1, 17, 0, 0, 0, '2000000081', 0, 0, 0, 0),
(1, 18, 0, 0, 0, '2000000082', 0, 0, 0, 0),
(1, 19, 0, 0, 0, '2000000083', 0, 0, 0, 0),
(1, 20, 0, 0, 0, '2000000084', 0, 0, 0, 0),
(1, 21, 0, 0, 0, '2000000085', 0, 0, 0, 0),
(1, 22, 0, 0, 0, '2000000086', 0, 0, 0, 0),
(1, 23, 0, 0, 0, '2000000093', 0, 0, 0, 0),
(1, 24, 0, 0, 0, '2000000095', 0, 0, 0, 0),
(1, 25, 0, 0, 0, '2000000096', 0, 0, 0, 0),
(1, 26, 0, 0, 0, '2000000097', 0, 0, 0, 0),
(1, 27, 0, 0, 0, '2000000100', 0, 0, 0, 0),
(1, 28, 0, 0, 0, '2000000101', 0, 0, 0, 0),
(1, 29, 0, 0, 0, '2000000105', 0, 0, 0, 0),
(1, 30, 0, 0, 0, '2000000106', 0, 0, 0, 0),
(1, 31, 0, 0, 0, '2000000140', 0, 0, 0, 0),
(1, 32, 0, 0, 0, '2000000323', 0, 0, 0, 0),
(1, 33, 0, 0, 0, '2000000349', 0, 0, 0, 0),
(1, 33, 0, 0, 0, '2000000325', 0, 0, 0, 0),
(1, 34, 0, 0, 0, '2000000350', 0, 0, 0, 0),
(1, 35, 0, 0, 0, '2000000450', 0, 0, 0, 0),
(1, 36, 0, 0, 0, '2000000456', 0, 0, 0, 0),
(1, 37, 0, 0, 0, '2000000451', 0, 0, 0, 0),
(1, 38, 0, 0, 0, '2000000457', 0, 0, 0, 0),
(1, 39, 0, 0, 0, '2000000458', 0, 0, 0, 0),
(1, 40, 0, 0, 0, '2000000459', 0, 0, 0, 0);


# FIX
# DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50314;
# DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50314;
# UPDATE conditions SET SourceGroup=9732 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=28666;
# UPDATE conditions SET SourceGroup=9732 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=28666;

# WDB_Check
UPDATE `npc_text` SET `WDBVerified`=1 WHERE `ID` IN (9516,14330,15608,15609,9842,9704,9708,6520,14451,14452,10955);

# Temp_FIX
update gossip_scripts set datalong2=3 where datalong2=2 AND command=15;
update quest_start_scripts set datalong2=3 where datalong2=2 AND command=15;
update quest_end_scripts set datalong2=3 where datalong2=2 AND command=15;
DELETE FROM conditions WHERE ConditionTypeOrReference=14 AND ConditionValue1=0;
UPDATE conditions SET ConditionValue2=0 WHERE ConditionTypeOrReference=25 AND ConditionValue2=1;
UPDATE conditions SET ConditionValue2=0 WHERE ConditionTypeOrReference=17 AND ConditionValue2=1;
UPDATE `creature_template` SET `gossip_menu_id` = 0 WHERE `npcflag` = `npcflag`|32;
UPDATE `gossip_menu_option` SET `box_text`='Are you sure you wish to purchase a Dual Talent Specialization?' WHERE `option_id` =18;
UPDATE creature_template_addon SET path_id=0;

# NPC_FIX
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenHealth`=`creature_template`.`RegenHealth`,
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
`copy`.`VehicleId`=`creature_template`.`VehicleId`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_1`;
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenHealth`=`creature_template`.`RegenHealth`,
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
`copy`.`VehicleId`=`creature_template`.`VehicleId`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_2`;
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenHealth`=`creature_template`.`RegenHealth`,
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
`copy`.`VehicleId`=`creature_template`.`VehicleId`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_3`;

# Final_FIX
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE QuestFlags=QuestFlags|4096;
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE QuestFlags=QuestFlags|32768;
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `linked_respawn` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `linked_respawn` WHERE `linkedGuid` NOT IN (SELECT `guid` FROM `creature`);
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
UPDATE `gameobject` SET `state` = 0 WHERE `id` IN (SELECT `entry` FROM `gameobject_template` WHERE `type` = 0 AND `data0` = 1);
UPDATE `gameobject_template` SET `flags`=`flags`&~4 WHERE `type` IN (2,19,17);
DELETE FROM `gameobject_scripts` WHERE `id` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `gameobject_scripts` WHERE `command` in (11, 12) and `datalong` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE `spellid_2` = 0 AND `spelltrigger_2` = 6;
UPDATE `creature_template` SET npcflag = npcflag|1 WHERE `gossip_menu_id` > 0;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `AIName` = 'EventAI' AND `ScriptName` = 'generic_creature';
UPDATE `creature_template` SET `ScriptName` = '' WHERE `AIName` = 'SmartAI' AND `ScriptName` = 'generic_creature';

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

UPDATE version SET `cache_id`= '592';
UPDATE version SET `core_revision`= '11642';
UPDATE version SET `db_version`= 'YTDB_0.14.2_R592_TC_R11642_TDBAI_335.0.3_RuDB_R38.8';
