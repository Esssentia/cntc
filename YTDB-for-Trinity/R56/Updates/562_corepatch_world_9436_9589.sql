DELETE FROM `spell_script_names` WHERE `spell_id`=63521 AND `ScriptName`='spell_warl_guarded_by_the_light';
DELETE FROM `spell_script_names` WHERE `spell_id`=63521 AND `ScriptName`='spell_pal_guarded_by_the_light';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (63521, 'spell_pal_guarded_by_the_light');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1631999 AND -1631000;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36612,-1631000,'This is the beginning AND the end, mortals. None may enter the master''s sanctum!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16950,1,0,0,'SAY_ENTER_ZONE'),
(36612,-1631001,'The Scourge will wash over this world as a swarm of death and destruction!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16941,1,0,0,'SAY_AGGRO'),
(36612,-1631002,'BONE STORM!',NULL,NULL, NULL,NULL,NULL,NULL,NULL,NULL,16946,1,0,0,'SAY_BONE_STORM'),
(36612,-1631003,'Bound by bone!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16947,1,0,0, 'SAY_BONESPIKE_1'),
(36612,-1631004,'Stick Around!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16948,1,0,0,'SAY_BONESPIKE_2'),
(36612,-1631005,'The only escape is death!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16949,1,0,0,'SAY_BONESPIKE_3'),
(36612,-1631006,'More bones for the offering!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16942,1,0,0,'SAY_KILL_1'),
(36612,-1631007,'Languish in damnation!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16943,1,0,0,'SAY_KILL_2'),
(36612,-1631008,'I see... only darkness...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16944,1,0,0,'SAY_DEATH'),
(36612,-1631009,'THE MASTER''S RAGE COURSES THROUGH ME!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16945,1,0,0,'SAY_BERSERK');
-- Lord Marrowgar
UPDATE `creature_template` SET `ScriptName`='boss_lord_marrowgar' WHERE `entry`=36612;
UPDATE `creature_template` SET `ScriptName`='npc_coldflame' WHERE `entry`=36672;
UPDATE `creature_template` SET `ScriptName`='npc_bone_spike' WHERE `entry`=38711;
-- Instance
UPDATE `instance_template` SET `script`='instance_icecrown_citadel' WHERE `map`=631;
DELETE FROM `spell_script_names` WHERE `spell_id`=69057 AND `ScriptName`='spell_marrowgar_bone_spike_graveyard';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (69140,72705) AND `ScriptName`='spell_marrowgar_coldflame';
DELETE FROM `spell_script_names` WHERE `spell_id`=69147 AND `ScriptName`='spell_marrowgar_coldflame_trigger';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (69075,70834,70835,70836) AND `ScriptName`='spell_marrowgar_bone_storm';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(69057,'spell_marrowgar_bone_spike_graveyard'),
(69140,'spell_marrowgar_coldflame'),
(72705,'spell_marrowgar_coldflame'),
(69147,'spell_marrowgar_coldflame_trigger'),
(69075,'spell_marrowgar_bone_storm'),
(70834,'spell_marrowgar_bone_storm'),
(70835,'spell_marrowgar_bone_storm'),
(70836,'spell_marrowgar_bone_storm');
DELETE FROM `script_texts` WHERE `entry`=-1631010;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36612,-1631010,'Lord Marrowgar creates a whirling storm of bone!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'SAY_BONE_STORM_EMOTE');
UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName`='npc_bone_spike';
UPDATE `creature_template` SET `ScriptName`='npc_bone_spike' WHERE `entry`=36619;
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1631028 AND -1631011;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36855,-1631011, 'You have found your way here, because you are among the few gifted with true vision in a world cursed with blindness.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17272,1,0,0, 'SAY_INTRO_1'),
(36855,-1631012, 'You can see through the fog that hangs over this world like a shroud, and grasp where true power lies.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17273,1,0,0, 'SAY_INTRO_2'),
(36855,-1631013, 'Fix your eyes upon your crude hands: the sinew, the soft meat, the dark blood coursing within.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16878,1,0,0, 'SAY_INTRO_3'),
(36855,-1631014, 'It is a weakness; a crippling flaw.... A joke played by the Creators upon their own creations.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17268,1,0,0, 'SAY_INTRO_4'),
(36855,-1631015, 'The sooner you come to accept your condition as a defect, the sooner you will find yourselves in a position to transcend it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17269,1,0,0, 'SAY_INTRO_5'),
(36855,-1631016, 'Through our Master, all things are possible. His power is without limit, and his will unbending.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17270,1,0,0, 'SAY_INTRO_6'),
(36855,-1631017, 'Those who oppose him will be destroyed utterly, and those who serve -- who serve wholly, unquestioningly, with utter devotion of mind and soul -- elevated to heights beyond your ken.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17271,1,0,0, 'SAY_INTRO_7'),
(36855,-1631018, 'What is this disturbance?! You dare trespass upon this hallowed ground? This shall be your final resting place.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16868,1,0,0, 'SAY_AGGRO'),
(36855,-1631019, 'Enough! I see I must take matters into my own hands!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16877,1,0,0, 'SAY_PHASE_2'),
(36855,-1631020, 'Lady Deathwhisper''s Mana Barrier shimmers and fades away!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0, 'SAY_PHASE_2_EMOTE'),
(36855,-1631021, 'You are weak, powerless to resist my will!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16876,1,0,0, 'SAY_DOMINATE_MIND'),
(36855,-1631022, 'Take this blessing and show these intruders a taste of our master''s power.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16873,1,0,0, 'SAY_DARK_EMPOWERMENT'),
(36855,-1631023, 'I release you from the curse of flesh!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16874,1,0,0, 'SAY_DARK_TRANSFORMATION'),
(36855,-1631024, 'Arise and exult in your pure form!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16875,1,0,0, 'SAY_ANIMATE_DEAD'),
(36855,-1631025, 'Do you yet grasp of the futility of your actions?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16869,1,0,0, 'SAY_KILL_1'),
(36855,-1631026, 'Embrace the darkness... Darkness eternal!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16870,1,0,0, 'SAY_KILL_2'),
(36855,-1631027, 'This charade has gone on long enough.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16872,1,0,0, 'SAY_BERSERK'),
(36855,-1631028, 'All part of the masters plan! Your end is... inevitable!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16871,1,0,0, 'SAY_DEATH');
UPDATE `creature_template` SET `ScriptName`='boss_lady_deathwhisper' WHERE `entry`=36855;
UPDATE `creature_template` SET `ScriptName`='npc_cult_fanatic' WHERE `entry` IN (37890,38009,38135);
UPDATE `creature_template` SET `ScriptName`='npc_cult_adherent' WHERE `entry` IN(37949,38010,38136);
UPDATE `creature_template` SET `ScriptName`='npc_vengeful_shade' WHERE `entry`=38222;
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70903,71236) AND `ScriptName`='spell_cultist_dark_martyrdom';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(70903,'spell_cultist_dark_martyrdom'),
(71236,'spell_cultist_dark_martyrdom');
-- TOC original texts/sounds (thanks to griffonheart)
-- english translation by Cristy
-- reworked by rsa
-- reworked by JohnHoliver
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1649999 AND -1649000;
INSERT INTO `script_texts`
(`comment`,`sound`, `entry`,`type`,`language`,`emote`,`content_default`) VALUES
-- Northrend Beasts
-- Gormok
('34796','0','-1649000','3','0','0','My slaves! Destroy the enemy!'),
-- Acidmaw & Dreadscale
('34564','0','-1649010','3','0','0','%s buries itself in the earth!'),
('34564','0','-1649011','3','0','0','%s getting out of the ground!'),
('34799','0','-1649012','3','0','0','After the death of sister %s goes berserk!'),
-- Icehowl
('34797','0','-1649020','3','0','0','%s looks at |3-3($n) and emits a guttural howl!'),
('34797','0','-1649021','3','0','0','%s crashes into a wall of the Colosseum and lose focus!'),
('34797','0','-1649022','3','0','0','|3-3(%s) covers boiling rage, and he tramples all in its path!'),
-- Jaraxxus
('34780','16143','-1649030','1','0','0','Trifling gnome, your arrogance will be your undoing!'),
('34780','16144','-1649031','1','0','0','You face Jaraxxus, eredar lord of the Burning Legion!'),
('34780','16147','-1649032','1','0','0','Another will take my place. Your world is doomed.'),
('34780','0','-1649033','3','0','0','$n has |cFF00FFFFIncinerate flesh!|R Heal $ghim:her;!'),
('34780','16149','-1649034','1','0','0','FLESH FROM BONE!'),
('34780','0','-1649035','3','0','0','|cFFFF0000Legion Flame|R on $n'),
('34780','0','-1649036','3','0','0','%s creates the gates of the Void!'),
('34780','16150','-1649037','1','0','0','Come forth, sister! Your master calls!'),
('34780','0','-1649038','3','0','0','%s creates an |cFF00FF00Infernal Volcano!|R'),
('34780','16151','-1649039','1','0','0','INFERNO!'),
-- Faction Champions
('34995','0','-1649115','1','0','0','Weakling!'),
('34995','0','-1649116','1','0','0','Pathetic!'),
('34995','0','-1649117','1','0','0','Overpowered.'),
('34995','0','-1649118','1','0','0','Lok\'tar!'),
('34990','0','-1649120','1','0','0','HAH!'),
('34990','0','-1649121','1','0','0','Hardly a challenge!'),
('34990','0','-1649122','1','0','0','Worthless scrub.'),
('34990','0','-1649123','1','0','0','Is this the best the Horde has to offer?'),
-- Twin Valkyrs
('34497','16272','-1649040','1','0','0','In the name of our dark master. For the Lich King. You. Will. Die.'),
('34496','16275','-1649041','1','0','0','The Scourge cannot be stopped...'),
('34497','16273','-1649042','1','0','0','YOU ARE FINISHED!'),
('34497','0','-1649043','3','0','0','%s begins to read the spell Treaty twins!'),
('34497','16274','-1649044','3','0','0','CHAOS!'),
('34496','16277','-1649045','1','0','0','UNWORTHY!'),
('34497','16276','-1649046','1','0','0','You appreciated and acknowledged nothing.'),
('34497','0','-1649047','3','0','0','%s begins to read a spell |cFFFFFFFFLight Vortex!|R switch to |cFFFFFFFFLight|r essence!'),
('34496','16279','-1649048','1','0','0','Let the light consume you!'),
('34496','0','-1649049','3','0','0','%s begins to read a spell |cFF9932CDBlack Vortex!|R switch to |cFF9932CDBlack|r essence!'),
('34496','16278','-1649050','1','0','0','Let the dark consume you!'),
-- Anub'arak
('34564','16235','-1649055','1','0','0','Ahhh... Our guests arrived, just as the master promised.'),
('34564','16234','-1649056','1','0','0','This place will serve as your tomb!'),
('34564','16236','-1649057','1','0','0','F-lakkh shir!'),
('34564','16237','-1649058','1','0','0','Another soul to sate the host.'),
('34564','16238','-1649059','1','0','0','I have failed you, master...'),
('34564','0','-1649060','3','0','0','%s spikes  pursuing $n!'),
('34564','16240','-1649061','1','0','0','Auum na-l ak-k-k-k, isshhh. Rise, minions. Devour...'),
('34564','0','-1649062','3','0','0','%s produces a swarm of beetles Peon to restore your health!'),
('34564','16241','-1649063','1','0','0','The swarm shall overtake you!'),
-- Event
-- Northrend Beasts
('34996','16036','-1649070','1','0','0','Welcome champions, you have heard the call of the Argent Crusade and you have boldly answered. It is here in the crusaders coliseum that you will face your greatest challenges. Those of you who survive the rigors of the coliseum will join the Argent Crusade on its marsh to ice crown citadel.'),
('34996','16038','-1649071','1','0','0','Hailing from the deepest, darkest carverns of the storm peaks, Gormok the Impaler! Battle on, heroes!'),
('34990','16069','-1649072','1','0','0','Your beast will be no match for my champions Tirion!'),
('34995','16026','-1649073','1','0','0','I have seen  more  worthy  challenges in the ring of blood, you waste our time paladin.'),
('34996','16039','-1649074','1','0','0','Steel yourselves, heroes, for the twin terrors Acidmaw and Dreadscale. Enter the arena!'),
('34996','16040','-1649075','1','0','0','The air freezes with the introduction of our next combatant, Icehowl! Kill or be killed, champions!'),
('34996','16041','-1649076','1','0','0','The monstrous menagerie has been vanquished!'),
('34996','16042','-1649077','1','0','0','Tragic... They fought valiantly, but the beasts of Northrend triumphed. Let us observe a moment of silence for our fallen heroes.'),
-- Jaraxxus
('34996','16043','-1649080','1','0','0','Grand Warlock Wilfred Fizzlebang will summon forth your next challenge. Stand by for his entry!'),
('35458','16268','-1649081','1','0','0','Thank you, Highlord! Now challengers, I will begin the ritual of summoning! When I am done, a fearsome Doomguard will appear!'),
('35458','16269','-1649082','1','0','0','Prepare for oblivion!'),
('35458','16270','-1649083','1','0','0','Ah ha! Behold the absolute power of Wilfred Fizzlebang, master summoner! You are bound to ME, demon!'),
('35458','16271','-1649084','1','0','0','But I am in charge here-'),
('35458','0','-1649085','1','0','0','...'),
('34996','16044','-1649086','1','0','0','Quickly, heroes! Destroy the demon lord before it can open a portal to its twisted demonic realm!'),
('34996','16045','-1649087','1','0','0','The loss of Wilfred Fizzlebang, while unfortunate, should be a lesson to those that dare dabble in dark magic. Alas, you are victorious and must now face the next challenge.'),
('34995','16021','-1649088','1','0','0','Treacherous Alliance dogs! You summon a demon lord against warriors of the Horde!? Your deaths will be swift!'),
('34990','16064','-1649089','1','0','0','The Alliance doesnt need the help of a demon lord to deal with Horde filth. Come, pig!'),
('34996','16046','-1649090','1','0','0','Everyone, calm down! Compose yourselves! There is no conspiracy at play here. The warlock acted on his own volition - outside of influences from the Alliance. The tournament must go on!'),
-- Faction Champions
('34996','16047','-1649091','1','0','0','The next battle will be against the Argent Crusades most powerful knights! Only by defeating them will you be deemed worthy...'),
('34990','16066','-1649092','1','0','0','Our honor has been besmirched! They make wild claims and false accusations against us. I demand justice! Allow my champions to fight in place of your knights, Tirion. We challenge the Horde!'),
('34995','16023','-1649093','1','0','0','The Horde demands justice! We challenge the Alliance. Allow us to battle in place of your knights, paladin. We will show these dogs what it means to insult the Horde!'),
('34996','16048','-1649094','1','0','0','Very well, I will allow it. Fight with honor!'),
('34990','16065','-1649095','1','0','0','Fight for the glory of the Alliance, heroes! Honor your king and your people!'),
('34995','16022','-1649096','1','0','0','Show them no mercy, Horde champions! LOK-TAR OGAR!'),
('34990','16067','-1649097','1','0','0','GLORY OF THE ALLIANCE!'),
('34995','16024','-1649098','1','0','0','LOK-TAR OGAR!'),
('34996','16049','-1649099','1','0','0','A shallow and tragic victory. We are weaker as a whole from the losses suffered today. Who but the Lich King could benefit from such foolishness? Great warriors have lost their lives. And for what? The true threat looms ahead - the Lich King awaits us all in death.'),
-- Twin Valkyrs
('34996','16050','-1649100','1','0','0','Only by working together will you overcome the final challenge. From the depths of Icecrown come two of the Scourges most powerful lieutenants: fearsome valkyr, winged harbingers of the Lich King!'),
('34996','16037','-1649101','1','0','0','Let the games begin!'),
('34990','16068','-1649102','1','0','0','Not even the Lich King most powerful minions can stand against the Alliance! All hail our victors!'),
('34995','16025','-1649103','1','0','0','Do you still question the might of the horde paladin? We will take on all comers.'),
-- Anub'arak
('34996','16051','-1649104','1','0','0','A mighty blow has been dealt to the Lich King! You have proven yourselves able bodied champions of the Argent Crusade. Together we will strike at Icecrown Citadel and destroy what remains of the Scourge! There is no challenge that we cannot face united!'),
('35877','16321','-1649105','1','0','0','You will have your challenge, Fordring.'),
('34996','16052','-1649106','1','0','0','Arthas! You are hopelessly outnumbered! Lay down Frostmourne and I will grant you a just death.'),
('35877','16322','-1649107','1','0','0','The Nerubians built an empire beneath the frozen wastes of Northrend. An empire that you so foolishly built your structures upon. MY EMPIRE.'),
('35877','16323','-1649108','1','0','0','The souls of your fallen champions will be mine, Fordring.'),
('36095','0','-1649109','1','0','0','Champions, you are alive! Not only have you defeated every challenge of the Trial of the Crusader, but thwarted Arthas directly! Your skill and cunning will prove to be a powerful weapon against the Scourge. Well done! Allow one of my mages to transport you back to the surface!'),
('36095','0','-1649110','1','0','0','Let me hand you the chests as a reward, and let its contents will serve you faithfully in the campaign against Arthas in the heart of the Icecrown Citadel!');
-- Scriptnames
-- NonAgressive NPCs
UPDATE `creature_template` SET `scriptname`='npc_announcer_toc10' WHERE `entry` in (34816);
UPDATE `creature_template` SET `scriptname`='boss_lich_king_toc' WHERE `entry`=35877;
UPDATE `creature_template` SET `scriptname`='npc_fizzlebang_toc' WHERE `entry`=35458;
UPDATE `creature_template` SET `scriptname`='npc_tirion_toc' WHERE `entry`=34996;
UPDATE `creature_template` SET `scriptname`='npc_garrosh_toc' WHERE `entry`=34995;
UPDATE `creature_template` SET `scriptname`='npc_varian_toc' WHERE `entry`=34990;
-- Northrend Beasts
UPDATE `creature_template` SET `scriptname`='boss_gormok', `AIName` ='' WHERE `entry`=34796;
UPDATE `creature_template` SET `scriptname`='mob_snobold_vassal', `AIName` ='' WHERE `entry`=34800;
UPDATE `creature_template` SET `scriptname`='boss_dreadscale', `AIName` ='' WHERE `entry`=34799;
UPDATE `creature_template` SET `scriptname`='boss_acidmaw', `AIName` ='' WHERE `entry`=35144;
UPDATE `creature_template` SET `scriptname`='mob_slime_pool', `AIName` ='' WHERE `entry` = 35176;
UPDATE `creature_template` SET `scriptname`='boss_icehowl', `AIName` ='' WHERE `entry`=34797;
-- Lord Jaraxxus
UPDATE `creature_template` SET `scriptname`='boss_jaraxxus', `AIName` ='' WHERE `entry`= 34780;
UPDATE `creature_template` SET `scriptname`='mob_legion_flame', `AIName` ='' WHERE `entry` = 34784;
UPDATE `creature_template` SET `scriptname`='mob_infernal_volcano', `AIName` ='' WHERE `entry` = 34813;
UPDATE `creature_template` SET `scriptname`='mob_nether_portal', `AIName` ='' WHERE `entry` = 34825;
UPDATE `creature_template` SET `scriptname`='mob_fel_infernal', `AIName` ='' WHERE `entry` = 34815;
UPDATE `creature_template` SET `scriptname`='mob_mistress_of_pain', `AIName` ='' WHERE `entry` = 34826;
-- Faction Champions
UPDATE `creature_template` SET `scriptname`='boss_toc_champion_controller', `AIName` ='' WHERE `entry` IN (34781);
UPDATE `creature_template` SET `scriptname`='mob_toc_warrior', `AIName` ='' WHERE `entry` IN (34475,34453);
UPDATE `creature_template` SET `scriptname`='mob_toc_mage', `AIName` ='' WHERE `entry` IN (34468,34449);
UPDATE `creature_template` SET `scriptname`='mob_toc_shaman', `AIName` ='' WHERE `entry` IN (34470,34444);
UPDATE `creature_template` SET `scriptname`='mob_toc_enh_shaman', `AIName` ='' WHERE `entry` IN (34463,34455);
UPDATE `creature_template` SET `scriptname`='mob_toc_hunter', `AIName` ='' WHERE `entry` IN (34467,34448);
UPDATE `creature_template` SET `scriptname`='mob_toc_rogue', `AIName` ='' WHERE `entry` IN (34472,34454);
UPDATE `creature_template` SET `scriptname`='mob_toc_priest', `AIName` ='' WHERE `entry` IN (34466,34447);
UPDATE `creature_template` SET `scriptname`='mob_toc_shadow_priest', `AIName` ='' WHERE `entry` IN (34473,34441);
UPDATE `creature_template` SET `scriptname`='mob_toc_dk', `AIName` ='' WHERE `entry` IN (34461,34458);
UPDATE `creature_template` SET `scriptname`='mob_toc_paladin', `AIName` ='' WHERE `entry` IN (34465,34445);
UPDATE `creature_template` SET `scriptname`='mob_toc_retro_paladin', `AIName` ='' WHERE `entry` IN (34471,34456);
UPDATE `creature_template` SET `scriptname`='mob_toc_druid', `AIName` ='' WHERE `entry` IN (34469,34459);
UPDATE `creature_template` SET `scriptname`='mob_toc_boomkin', `AIName` ='' WHERE `entry` IN (34460,34451);
UPDATE `creature_template` SET `scriptname`='mob_toc_warlock' WHERE `entry` IN (34474,34450);
UPDATE `creature_template` SET `scriptname`='mob_toc_pet_warlock', `AIName` ='' WHERE `entry` IN (35465);
UPDATE `creature_template` SET `scriptname`='mob_toc_pet_hunter', `AIName` ='' WHERE `entry` IN (35610);
-- Valkiries
UPDATE `creature_template` SET `scriptname`='boss_fjola', `AIName` ='' WHERE `entry`=34497;
UPDATE `creature_template` SET `scriptname`='boss_eydis', `AIName` ='' WHERE `entry`=34496;
UPDATE `creature_template` SET `scriptname`='mob_essence_of_twin', `AIName` ='' WHERE `entry` IN (34567,34568);
UPDATE `creature_template` SET `scriptname`='mob_unleashed_dark', `AIName` ='' WHERE entry = 34628;
UPDATE `creature_template` SET `scriptname`='mob_unleashed_light', `AIName` ='' WHERE entry = 34630;
-- Anub'arak
UPDATE `creature_template` SET `scriptname`='boss_anubarak_trial', `AIName` ='' WHERE `entry`=34564;
UPDATE `creature_template` SET `ScriptName`='mob_frost_sphere', `AIName` = '' WHERE `entry` = 34606;
UPDATE `creature_template` SET `scriptname`='mob_swarm_scarab', `AIName` ='' WHERE `entry`=34605;
UPDATE `creature_template` SET `scriptname`='mob_nerubian_burrower', `AIName` ='' WHERE `entry`=34607;
UPDATE `creature_template` SET `scriptname`='mob_anubarak_spike', `AIName` ='' WHERE `entry`=34660;
-- Instance
UPDATE `instance_template` SET `script`='instance_trial_of_the_crusader' WHERE `map`=649;
-- spell_linked_spell
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (66870,67621,67622,67623,-66683,-67661);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(66870,-66823,1, 'Remove Paralytic Toxin when hit by Burning Bite'),
(67621,-67618,1, 'Remove Paralytic Toxin when hit by Burning Bite'),
(67622,-67619,1, 'Remove Paralytic Toxin when hit by Burning Bite'),
(67623,-67620,1, 'Remove Paralytic Toxin when hit by Burning Bite'),
(-66683,68667,0, 'Icehowl - Surge of Adrenaline'),
(-67661,68667,0, 'Icehowl - Surge of Adrenaline');
DELETE FROM `spell_script_names` WHERE `spell_id`=6962 AND `ScriptName`='spell_gen_pet_summoned';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (6962, 'spell_gen_pet_summoned');
DELETE FROM `spell_proc_event` WHERE `entry` IN (70748);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(70748,0x00,3,0x00000000,0x00200000,0x00000000,0x00000400,0x00000000,0,0,0); -- Item - Mage T10 4P Bonus
DELETE FROM `spell_script_names` WHERE `spell_id` = 66244 AND `ScriptName` = "spell_ex_66244";
DELETE FROM `spell_script_names` WHERE `spell_id` = 5581 AND `ScriptName` = "spell_ex_5581";
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (66244, "spell_ex_66244"), (5581, "spell_ex_5581");
INSERT IGNORE INTO `spell_bonus_data` VALUES (70809, 0, 0, 0, 0, 'Item - Shaman T10 Restoration 4P Bonus');
-- Item - Shaman T10 Enhancement 2P Bonus
DELETE FROM `spell_proc_event` WHERE `entry` = 70830;
INSERT INTO `spell_proc_event` VALUES (70830, 0x00, 11, 0x00000000, 0x00020000, 0x00000000, 0x00000000, 0x00000000, 0, 0, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (70727,70730,70803,70805,70841);
INSERT INTO `spell_proc_event` VALUES 
( 70727, 0x00,   9, 0x00000000, 0x00000000, 0x00000000, 0x00000040, 0x00000000,   0,   0,   0), -- Item - Hunter T10 2P Bonus
( 70730, 0x00,   9, 0x00004000, 0x00001000, 0x00000000, 0x00040000, 0x00000000,   0,   0,   0), -- Item - Hunter T10 4P Bonus
( 70803, 0x00,   8, 0x003E0000, 0x00000008, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Item - Rogue T10 4P Bonus
( 70805, 0x00,   8, 0x00000000, 0x00020000, 0x00000000, 0x00004000, 0x00000000,   0,   0,   0), -- Item - Rogue T10 2P Bonus
( 70841, 0x00,   5, 0x00000004, 0x00000100, 0x00000000, 0x00040000, 0x00000000,   0,   0,   0); -- Item - Warlock T10 4P Bonus
-- Idols
-- Librams
-- Totems
-- Sigils
DELETE FROM `spell_proc_event` WHERE `entry` IN (71214, 71217, 67389, 67386, 67392, 71178, 67361, 71176, 71191, 71194, 71186, 67379, 67365, 67363, 64955, 71228, 71226, 67381, 67384);
INSERT INTO `spell_proc_event` VALUES 
( 64955, 0x00,  10, 0x00000000, 0x00000040, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Item - Paladin T8 Protection Relic
( 67361, 0x00,   7, 0x00000002, 0x00000000, 0x00000000, 0x00040000, 0x00000000,   0,   0,   0), -- Item - Druid T9 Balance Relic (Moonfire)
( 67363, 0x00,  10, 0x00000000, 0x80000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  10), -- Item - Paladin T9 Holy Relic (Judgement)
( 67365, 0x00,  10, 0x00000000, 0x00000800, 0x00000000, 0x00040000, 0x00000000,   0,   0,   6), -- Item - Paladin T9 Retribution Relic (Seal of Vengeance)
( 67379, 0x00,  10, 0x00000000, 0x00040000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Item - Paladin T9 Protection Relic (Hammer of The Righteous)
( 67381, 0x00,  15, 0x00000000, 0x20000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  10), -- Item - Death Knight T9 Tank Relic (Rune Strike)
( 67384, 0x00,  15, 0x00000010, 0x08020000, 0x00000000, 0x00000000, 0x00000000,   0,  80,  10), -- Item - Death Knight T9 Melee Relic (Rune Strike)
( 67386, 0x00,  11, 0x00000001, 0x00000000, 0x00000000, 0x00010000, 0x00000000,   0,   0,   6), -- Item - Shaman T9 Elemental Relic (Lightning Bolt)
( 67389, 0x00,  11, 0x00000100, 0x00000000, 0x00000000, 0x00004000, 0x00000000,   0,   0,   8), -- Item - Shaman T9 Restoration Relic (Chain Heal)
( 67392, 0x00,  11, 0x00000000, 0x00000000, 0x00000004, 0x00000010, 0x00000000,   0,   0,   0), -- Item - Shaman T9 Enhancement Relic (Lava Lash)
( 71176, 0x00,   7, 0x00200002, 0x00000000, 0x00000000, 0x00040000, 0x00000000,   0,   0,   0), -- Item - Druid T10 Balance Relic (Moonfire and Insect Swarm)
( 71178, 0x00,   7, 0x00000010, 0x00000000, 0x00000000, 0x00040000, 0x00000000,   0,   0,   0), -- Item - Druid T10 Restoration Relic (Rejuvenation)
( 71186, 0x00,  10, 0x00000000, 0x00008000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Item - Paladin T10 Retribution Relic (Crusader Strike)
( 71191, 0x00,  10, 0x00000000, 0x00010000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Item - Paladin T10 Holy Relic (Holy Shock)
( 71194, 0x00,  10, 0x00000000, 0x00100000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Item - Paladin T10 Protection Relic (Shield of Righteousness)
( 71214, 0x00,  11, 0x00001400, 0x00000010, 0x00000000, 0x00000010, 0x00000000,   0,   0,   6), -- Item - Shaman T10 Enhancement Relic (Stormstrike)
( 71217, 0x00,  11, 0x00000000, 0x00000000, 0x00000010, 0x00004000, 0x00000000,   0,   0,   0), -- Item - Shaman T10 Restoration Relic (Riptide)
( 71226, 0x00,  15, 0x00000010, 0x08020000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0), -- Item - Death Knight T10 DPS Relic (Obliterate, Scourge Strike, Death Strike)
( 71228, 0x00,  15, 0x00000000, 0x20000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0); -- Item - Death Knight T10 Tank Relic (Runestrike)
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=58875 AND `spell_effect`=58876 AND `type`=0;
INSERT INTO `spell_linked_spell` VALUES (58875, 58876, 0, 'Spirit Walk');
DELETE FROM `spell_proc_event` WHERE `entry`=70854;
INSERT INTO `spell_proc_event` VALUES 
( 70854, 0x00,   4, 0x00000000, 0x00000010, 0x00000000, 0x00000000, 0x00000000,   0,   0,   0); -- 	Item - Warrior T10 Melee 2P Bonus
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
DROP TABLE IF EXISTS `vehicle_scaling_info`;
CREATE TABLE `vehicle_scaling_info` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `baseItemLevel` float NOT NULL default '0',
  `scalingFactor` float NOT NULL default '0',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
DELETE FROM `spell_bonus_data` WHERE `entry` IN (54158, 20187, 31804);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(54158, 0.25, 0, 0.16, 0, 'Paladin - Judgement (Seal of Light, Seal of Wisdom, Seal of Justice)'),
(20187, 0.32, 0, 0.2, 0, 'Paladin - Judgement of Righteousness'),
(31804, 0.22, 0, 0.14, 0, 'Paladin - Judgement of Vengeance');
