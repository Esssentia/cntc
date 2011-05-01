-- Fix broken string
UPDATE `script_texts` SET `content_default`='%s goes into a berserker rage!' WHERE `entry`=-1000004;
-- Reuse unused
UPDATE `script_texts` SET `content_default`='%s goes into a berserker rage!',`type`=3,`comment`='EMOTE_GENERIC_BERSERK_RAID' WHERE `entry`=-1000005;
ALTER TABLE `version` CHANGE `core_revision` `core_revision` varchar(120) DEFAULT NULL;
DELETE FROM `spell_bonus_data` WHERE `entry` = 53600;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(53600, 0, 0, 0, 0 ,'Paladin - Shield of Righteousness');
DELETE FROM `spell_proc_event` WHERE `entry` IN (12281, 12812, 12813, 12814, 12815);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
( 12281, 0x00,   4, 0xAA600444, 0x00400105, 0x00000000, 0x00000000, 0x00000000,   0,   0,  6), -- Sword Specialization (Rank 1)
( 12812, 0x00,   4, 0xAA600444, 0x00400105, 0x00000000, 0x00000000, 0x00000000,   0,   0,  6), -- Sword Specialization (Rank 2)
( 12813, 0x00,   4, 0xAA600444, 0x00400105, 0x00000000, 0x00000000, 0x00000000,   0,   0,  6), -- Sword Specialization (Rank 3)
( 12814, 0x00,   4, 0xAA600444, 0x00400105, 0x00000000, 0x00000000, 0x00000000,   0,   0,  6), -- Sword Specialization (Rank 4)
( 12815, 0x00,   4, 0xAA600444, 0x00400105, 0x00000000, 0x00000000, 0x00000000,   0,   0,  6); -- Sword Specialization (Rank 5)
