ALTER TABLE db_version CHANGE COLUMN required_10017_01_mangos_spell_proc_event required_10036_01_mangos_spell_chain bit;

DELETE FROM  `spell_chain` WHERE `spell_id` IN (30881,30883,30884,30885,30886);

INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES
/*Nature's Guardian*/
(30881,0,30881,1,0),
(30883,30881,30881,2,0),
(30884,30883,30881,3,0),
(30885,30884,30881,4,0),
(30886,30885,30881,5,0);

ALTER TABLE db_version CHANGE COLUMN required_10036_01_mangos_spell_chain required_10036_01_mangos_spell_proc_event bit;

DELETE FROM  `spell_proc_event` WHERE `entry` IN (30881,30883,30884,30885,30886);
INSERT INTO `spell_proc_event` VALUES 
(30881, 0x00,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  30);

ALTER TABLE db_version CHANGE COLUMN required_10036_01_mangos_spell_proc_event required_10044_01_mangos_spell_chain bit;

DELETE FROM  `spell_chain` WHERE `spell_id` IN (
 62908, 62905, 50371, 50365, 63506, 63505, 63504,
 31785, 33776, 53427, 53429, 53430, 63351, 63350,
 63349, 63411, 63410, 63372, 63370, 63374, 63373,
 63123, 63121, 63117, 63158, 63156, 62762, 62758,
 62765, 62764, 62760, 62759, 63650, 63649, 63648,
 63647, 63646, 63627, 63626, 63625, 48985, 49488,
 49489, 49015, 50154, 55136, 63737, 63733, 63730,
 63543, 63542, 50880, 50884, 50885, 50886, 50887,
 49175, 50031, 51456, 63534, 64129, 64127, 64357,
 64353, 49013, 55236, 55237, 50384, 50385, 50391,
 50392, 49224, 49610, 49611, 47535, 47536, 47537,
 49188, 53530, 53527, 31245, 31244, 55667, 55666,
 32385, 32387, 32392, 32393, 32394, 51528, 51529,
 51530, 51531, 51532, 47569, 47570, 65661, 66191,
 66192, 20335, 20336, 20337, 56636, 56637, 56638,
 34506, 34507, 34508, 34838, 34839, 53290, 53291,
 53292, 46913, 46914, 46915, 19184, 19387, 19388,
 35100, 35102, 51521, 51522, 48539, 48544, 48545,
 53380, 53381, 53382, 53486, 53488, 56822, 59057,
 53709, 53710, 53711, 30881, 30883, 30884, 30885,
 30886
);

ALTER TABLE db_version CHANGE COLUMN required_10044_01_mangos_spell_chain required_10044_02_mangos_spell_proc_event bit;

DELETE FROM  `spell_proc_event` WHERE `entry` IN (
 11120, 12487, 12488, 12598, 12668, 12724, 12725,
 12726, 12727, 12799, 12812, 12813, 12814, 12815,
 12846, 12847, 12848, 12849, 12867, 12872, 12873,
 12958, 12971, 12972, 12973, 12974, 13045, 13046,
 13047, 13048, 13867, 14070, 14071, 14160, 14161,
 14190, 14193, 14194, 14195, 14774, 15338, 15362,
 15363, 16196, 16198, 16235, 16240, 16281, 16282,
 16283, 16284, 16489, 16492, 16923, 16924, 17107,
 17108, 17796, 17801, 17802, 17803, 18073, 18095,
 18120, 19573, 20056, 20057, 20182, 20212, 20213,
 20214, 20215, 20235, 20501, 23695, 25988, 27815,
 27816, 28592, 28593, 29075, 29076, 29179, 29180,
 29444, 29594, 29838, 30295, 30296, 30301, 30302,
 30678, 30679, 31126, 31570, 31835, 31836, 31872,
 31877, 31878, 33145, 33146, 33154, 33192, 33193,
 33882, 33883, 34498, 34499, 34502, 34503, 34859,
 34860, 34938, 34939, 34954, 44443, 44446, 44448,
 44469, 44470, 44471, 44472, 44548, 44549, 45243,
 45244, 46855, 46952, 46953, 47196, 47197, 47202,
 47203, 47204, 47205, 47246, 47247, 47259, 47260,
 47511, 47515, 47517, 47581, 47582, 48484, 48485,
 48499, 48500, 48510, 48511, 48521, 48525, 49503,
 49504, 49529, 49530, 51127, 51128, 51129, 51130,
 51470, 51478, 51479, 51485, 51486, 51557, 51558,
 51563, 51564, 51565, 51566, 51626, 51628, 51629,
 51635, 51636, 51665, 51667, 51668, 51669, 51674,
 51679, 51696, 51700, 51701, 52797, 52798, 52799,
 52800, 53216, 53217, 53222, 53224, 53232, 53237,
 53238, 53259, 53260, 53502, 53503, 53552, 53553,
 53576, 53673, 54151, 54154, 54155, 54486, 54488,
 54489, 54490, 54749, 56343, 56344, 56611, 56612,
 56613, 56614, 56834, 56835, 57472, 57880, 57881,
 58874, 61345, 61346, 63245
);


ALTER TABLE db_version CHANGE COLUMN required_10044_02_mangos_spell_proc_event required_10045_01_mangos_spell_proc_event bit;

DELETE FROM  `spell_proc_event` WHERE `entry` IN (26016);


# SD2_1708
