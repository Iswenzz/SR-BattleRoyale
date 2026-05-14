main()
{
	maps\mp\mp_vacant_fx::main();
	maps\createart\mp_vacant_art::main();
	maps\mp\_load::main();

	maps\mp\_compass::setupMiniMap("compass_map_mp_vacant");

	ambientPlay("ambient_middleeast_ext");

	game["allies"] = "sas";
	game["axis"] = "russian";
	game["attackers"] = "axis";
	game["defenders"] = "allies";
	game["allies_soldiertype"] = "woodland";
	game["axis_soldiertype"] = "woodland";

	setdvar("r_specularcolorscale", "1");
	setdvar("r_glowbloomintensity0", ".1");
	setdvar("r_glowbloomintensity1", ".1");
	setdvar("r_glowskybleedintensity0", ".1");
	setdvar("compassmaxrange", "1500");

	sr\api\_battleroyale::removeAllMapTriggers();
	sr\api\_battleroyale::removeAllSpawns();
	sr\api\_battleroyale::createSpawn((537, 842, 12), 41);

	sr\api\_battleroyale::createPlanePath((739, 1837, 726), (-2270, -450, 726), -143);
	sr\api\_battleroyale::createPlanePath((613, -1624, 718), (-2410, 1771, 718), 131);
	sr\api\_battleroyale::createPlaneDrop((-1031, 222, 731));
	sr\api\_battleroyale::createPlaneDropTrigger((-406, 203, 731), 1500);
	sr\api\_battleroyale::createPlaneDuration(10);

	sr\api\_battleroyale::createZoneLevels(3);
	sr\api\_battleroyale::createZone((-698, 1074, -56));
	sr\api\_battleroyale::createZone((-1608, 285, -51));
	sr\api\_battleroyale::createZone((-124, -1167, -43));
	sr\api\_battleroyale::createZone((-93, -191, 13));
	sr\api\_battleroyale::createZone((1214, -57, 13));
	sr\api\_battleroyale::createZone((678, 973, 13));

	sr\api\_battleroyale::createLobbyBlocker((77, 908, 13), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((462, 681, 13), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((1083, 1101, 13), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((1103, 980, 13), 150, 100);

	spawnEntities();
}

spawnEntities()
{
	sr\api\_battleroyale::createEntity("ak47", (1265, 1091, 13));
	sr\api\_battleroyale::createEntity("ak74u", (726, -781, 13));
	sr\api\_battleroyale::createEntity("at4", (1358, 387, 13));
	sr\api\_battleroyale::createEntity("at4", (-1837, 1322, -59));
	sr\api\_battleroyale::createEntity("at4", (-53, -633, 13));
	sr\api\_battleroyale::createEntity("beretta", (-845, -2, -51));
	sr\api\_battleroyale::createEntity("colt45", (288, 1629, -51));
	sr\api\_battleroyale::createEntity("colt45", (502, -1336, -42));
	sr\api\_battleroyale::createEntity("deserteagle", (1152, -424, 13));
	sr\api\_battleroyale::createEntity("deserteaglegold", (-304, -889, 1));
	sr\api\_battleroyale::createEntity("deserteaglegold", (-688, -939, 1));
	sr\api\_battleroyale::createEntity("g3", (389, 306, 13));
	sr\api\_battleroyale::createEntity("g3", (480, -725, 13));
	sr\api\_battleroyale::createEntity("g36c", (1138, -674, 13));
	sr\api\_battleroyale::createEntity("m14", (-259, 954, 13));
	sr\api\_battleroyale::createEntity("m14", (-622, -661, 13));
	sr\api\_battleroyale::createEntity("m16", (-667, -277, 13));
	sr\api\_battleroyale::createEntity("m4", (398, 1568, -51));
	sr\api\_battleroyale::createEntity("m40a3", (177, 762, 13));
	sr\api\_battleroyale::createEntity("m60e4", (-1064, 962, -56));
	sr\api\_battleroyale::createEntity("m60e4", (-1565, 36, -55));
	sr\api\_battleroyale::createEntity("m60e4", (-72, -192, 13));
	sr\api\_battleroyale::createEntity("mp44", (1599, 530, 13));
	sr\api\_battleroyale::createEntity("mp44", (937, 981, 13));
	sr\api\_battleroyale::createEntity("mp5", (-250, 751, 13));
	sr\api\_battleroyale::createEntity("p90", (-200, -600, 13));
	sr\api\_battleroyale::createEntity("remington700", (-1700, 561, -42));
	sr\api\_battleroyale::createEntity("rpg", (1212, -31, 13));
	sr\api\_battleroyale::createEntity("skorpion", (-726, 748, 13));
	sr\api\_battleroyale::createEntity("skorpion", (-950, -1175, -46));
	sr\api\_battleroyale::createEntity("usp", (-186, -1202, -43));
	sr\api\_battleroyale::createEntity("usp", (395, 1045, 13));
	sr\api\_battleroyale::createEntity("usp", (-500, 325, 53));
	sr\api\_battleroyale::createEntity("usp", (68, -1281, -43));
	sr\api\_battleroyale::createEntity("winchester1200", (-1349, 383, -42));
	sr\api\_battleroyale::createEntity("winchester1200", (262, -467, 13));
	sr\api\_battleroyale::createEntity("winchester1200", (-465, 586, 13));
	sr\api\_battleroyale::createEntity("winchester1200", (687, 81, 13));

	sr\api\_battleroyale::createEntity("12_gauge", (-1799, 189, -42));
	sr\api\_battleroyale::createEntity("12_gauge", (-422, -597, 13));
	sr\api\_battleroyale::createEntity("12_gauge", (459, 1585, -51));
	sr\api\_battleroyale::createEntity("12_gauge", (784, 1082, 56));
	sr\api\_battleroyale::createEntity("45", (-174, -144, 13));
	sr\api\_battleroyale::createEntity("45", (1238, -143, 13));
	sr\api\_battleroyale::createEntity("5_45", (226, 1554, -53));
	sr\api\_battleroyale::createEntity("7_62", (-47, 549, 13));
	sr\api\_battleroyale::createEntity("7_62", (1171, -740, 13));
	sr\api\_battleroyale::createEntity("7_62", (716, 1734, -51));
	sr\api\_battleroyale::createEntity("9mm", (1626, 162, 33));
	sr\api\_battleroyale::createEntity("rocket", (1321, 1206, 45));
	sr\api\_battleroyale::createEntity("rocket", (1508, -905, 13));

	sr\api\_battleroyale::createEntity("flash_grenade", (1138, 975, 13));
	sr\api\_battleroyale::createEntity("flash_grenade", (252, 381, 13));
	sr\api\_battleroyale::createEntity("flash_grenade", (486, 339, 13));
	sr\api\_battleroyale::createEntity("flash_grenade", (887, 857, 68));
	sr\api\_battleroyale::createEntity("frag_grenade", (-1189, -568, -43));
	sr\api\_battleroyale::createEntity("frag_grenade", (-1944, -166, -51));
	sr\api\_battleroyale::createEntity("frag_grenade", (1533, 596, 13));
	sr\api\_battleroyale::createEntity("frag_grenade", (233, 1305, -45));
	sr\api\_battleroyale::createEntity("frag_grenade", (491, -659, 13));
	sr\api\_battleroyale::createEntity("frag_grenade", (702, -798, 13));
	sr\api\_battleroyale::createEntity("smoke_grenade", (-559, -926, 2));
	sr\api\_battleroyale::createEntity("smoke_grenade", (85, -258, 13));

	sr\api\_battleroyale::createEntity("bandage", (-1610, -134, -51));
	sr\api\_battleroyale::createEntity("bandage", (-1772, 518, -42));
	sr\api\_battleroyale::createEntity("bandage", (-1794, 1695, -43));
	sr\api\_battleroyale::createEntity("bandage", (-749, -786, 20));
	sr\api\_battleroyale::createEntity("bandage", (-799, -224, 13));
	sr\api\_battleroyale::createEntity("bandage", (153, 1092, 13));
	sr\api\_battleroyale::createEntity("bandage", (219, 1173, 13));
	sr\api\_battleroyale::createEntity("bandage", (274, -712, 13));
	sr\api\_battleroyale::createEntity("bandage", (461, -1003, 13));
	sr\api\_battleroyale::createEntity("bandage", (540, 228, 13));
	sr\api\_battleroyale::createEntity("first_kit", (-1011, 1717, -46));
	sr\api\_battleroyale::createEntity("first_kit", (-1166, -911, -43));
	sr\api\_battleroyale::createEntity("first_kit", (-1434, 396, -42));
	sr\api\_battleroyale::createEntity("first_kit", (-1714, 200, -42));
	sr\api\_battleroyale::createEntity("first_kit", (1150, 767, 13));
	sr\api\_battleroyale::createEntity("first_kit", (247, -787, 13));
	sr\api\_battleroyale::createEntity("first_kit", (402, -623, 13));
	sr\api\_battleroyale::createEntity("first_kit", (678, 519, 13));
	sr\api\_battleroyale::createEntity("first_kit", (768, 539, 13));
	sr\api\_battleroyale::createEntity("first_kit", (874, 816, 68));
	sr\api\_battleroyale::createEntity("first_kit", (952, 77, 13));
}
