DELETE FROM `script_texts` WHERE `npc_entry`=14507;
DELETE FROM `creature_text` WHERE `entry`=14507;
INSERT INTO `creature_text` (`entry`,`groupid`,`text`,`type`,`sound`,`comment`) VALUES
(14507,1,'Let the coils of hate unfurl!',14,8421,'venoxis SAY_VENOXIS_TRANSFORM'),
(14507,2,'Ssserenity..at lassst!',14,0,'venoxis SAY_VENOXIS_DEATH');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (63317,64021);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`)
VALUES
(63317,'spell_razorscale_flame_breath'),
(64021,'spell_razorscale_flame_breath');
DELETE FROM `areatrigger_scripts` WHERE `entry`=5718;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5718,'at_frozen_throne_teleport');
UPDATE `script_texts` SET `content_default`='%s hugs her father.' WHERE `entry`=-1000116;
UPDATE `script_texts` SET `content_default`='Be gone, trifling elf. I am in control now!' WHERE `entry`=-1548010;
UPDATE `script_texts` SET `content_default`='It would appear that I''ve made a slight miscalculation. I allowed my mind to be corrupted by the fiend in the prison, overriding my primary directive. All systems seem to be functional now. Clear.' WHERE `entry`=-1603257;
UPDATE `script_texts` SET `content_default`='Rin''ji will tell you secret now... $n, should go to the Overlook Cliffs. Rin''ji hid something on island there' WHERE `entry`=-1000408;
UPDATE `trinity_string` SET `content_default`='id: %d %s effmask: %d charges: %d stack: %d slot %d duration: %d maxduration: %d %s %s caster: %s guid: %d' WHERE `entry`=468;
UPDATE `gameobject_template` SET `ScriptName`='go_wind_stone' WHERE `entry` IN (180456,180461,180466,180518,180529,180534,180539,180544,180549,180554,180559,180564);
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_venture_co_straggler' WHERE `entry`=27570; -- Wrongly deleted in a recent commit
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_voodoo';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(17009, 'spell_voodoo');
