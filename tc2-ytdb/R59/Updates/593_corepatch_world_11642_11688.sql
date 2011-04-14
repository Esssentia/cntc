DELETE FROM `command` WHERE name = 'learn all';
DELETE FROM `spell_linked_spell` WHERE `spell_effect`=70530;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(-70447,70530,0, 'Putricide: Volatile Ooze Adhesive Protection'),
(-72836,70530,0, 'Putricide: Volatile Ooze Adhesive Protection'),
(-72837,70530,0, 'Putricide: Volatile Ooze Adhesive Protection'),
(-72838,70530,0, 'Putricide: Volatile Ooze Adhesive Protection');
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_putricide_ooze_channel';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(70447, 'spell_putricide_ooze_channel'),
(72836, 'spell_putricide_ooze_channel'),
(72837, 'spell_putricide_ooze_channel'),
(72838, 'spell_putricide_ooze_channel'),
(70672, 'spell_putricide_ooze_channel'),
(72455, 'spell_putricide_ooze_channel'),
(72832, 'spell_putricide_ooze_channel'),
(72833, 'spell_putricide_ooze_channel');
UPDATE `instance_template` SET `script`='instance_blackrock_spire' WHERE `map`=229;
