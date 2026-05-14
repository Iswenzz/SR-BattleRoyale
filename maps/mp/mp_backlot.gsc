main()
{
	maps\mp\mp_backlot_fx::main();
	maps\createart\mp_backlot_art::main();
	maps\mp\_load::main();

	maps\mp\_compass::setupMiniMap("compass_map_mp_backlot");

	ambientPlay("ambient_backlot_ext");

	game["allies"] = "marines";
	game["axis"] = "opfor";
	game["attackers"] = "axis";
	game["defenders"] = "allies";
	game["allies_soldiertype"] = "desert";
	game["axis_soldiertype"] = "desert";

	setdvar("r_specularcolorscale", "1");
	setdvar("r_glowbloomintensity0", ".25");
	setdvar("r_glowbloomintensity1", ".25");
	setdvar("r_glowskybleedintensity0", ".3");
	setdvar("compassmaxrange", "1800");

	sr\api\_battleroyale::removeAllMapTriggers();
	sr\api\_battleroyale::removeAllSpawns();
	sr\api\_battleroyale::createSpawn((-906, 1277, 140), -38);

	sr\api\_battleroyale::createPlanePath((-991, 2925, 920), (1362, -2461, 920), 293);
	sr\api\_battleroyale::createPlanePath((2193, 1502, 804), (-1218, -563, 804), 211);
	sr\api\_battleroyale::createPlaneDrop((-86, -31, 500));
	sr\api\_battleroyale::createPlaneDropTrigger((-86, -31, 500), 2000);
	sr\api\_battleroyale::createPlaneDuration(10);

	sr\api\_battleroyale::createZoneLevels(3);
	sr\api\_battleroyale::createZone((-496, 1834, 124));
	sr\api\_battleroyale::createZone((591, 1293, 90));
	sr\api\_battleroyale::createZone((1209, -12, 118));
	sr\api\_battleroyale::createZone((103, -38, 126));
	sr\api\_battleroyale::createZone((-911, -142, 166));
	sr\api\_battleroyale::createZone((283, -1064, 124));

	sr\api\_battleroyale::createLobbyBlocker((-745, 1099, 140), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((-927, 1408, 140), 150, 100);

	spawnEntities();
}

spawnEntities()
{
	sr\api\_battleroyale::createEntity("ak47", (235, 524, 129));
	sr\api\_battleroyale::createEntity("at4", (1481, -346, 300));
	sr\api\_battleroyale::createEntity("at4", (232, 1673, 292));
	sr\api\_battleroyale::createEntity("at4", (836, -1540, 132));
	sr\api\_battleroyale::createEntity("at4", (-843, 1533, 140));
	sr\api\_battleroyale::createEntity("at4", (982, -1426, 268));
	sr\api\_battleroyale::createEntity("beretta", (-1170, -417, 166));
	sr\api\_battleroyale::createEntity("beretta", (498, -1084, 132));
	sr\api\_battleroyale::createEntity("colt45", (1148, -1471, 268));
	sr\api\_battleroyale::createEntity("deserteagle", (38, 542, 129));
	sr\api\_battleroyale::createEntity("deserteaglegold", (-839, 973, 124));
	sr\api\_battleroyale::createEntity("dragunov", (133, 183, 118));
	sr\api\_battleroyale::createEntity("dragunov", (291, -314, 264));
	sr\api\_battleroyale::createEntity("dragunov", (526, -477, 128));
	sr\api\_battleroyale::createEntity("dragunov", (-820, 161, 318));
	sr\api\_battleroyale::createEntity("g3", (1217, -1449, 132));
	sr\api\_battleroyale::createEntity("g3", (299, 1685, 292));
	sr\api\_battleroyale::createEntity("g36c", (-650, -2549, 124));
	sr\api\_battleroyale::createEntity("g36c", (-964, -1017, 124));
	sr\api\_battleroyale::createEntity("m1014", (106, 1317, 128));
	sr\api\_battleroyale::createEntity("m1014", (-1227, -451, 318));
	sr\api\_battleroyale::createEntity("m14", (-1215, -286, -21));
	sr\api\_battleroyale::createEntity("m14", (-791, 115, 15));
	sr\api\_battleroyale::createEntity("m16", (1816, -903, 136));
	sr\api\_battleroyale::createEntity("m16", (-910, 1099, 140));
	sr\api\_battleroyale::createEntity("m21", (268, -307, 128));
	sr\api\_battleroyale::createEntity("m4", (-1146, -133, 166));
	sr\api\_battleroyale::createEntity("m40a3", (1062, 1366, 124));
	sr\api\_battleroyale::createEntity("m40a3", (493, 295, 258));
	sr\api\_battleroyale::createEntity("m40a3", (-805, -319, 166));
	sr\api\_battleroyale::createEntity("m40a3", (847, -1534, 268));
	sr\api\_battleroyale::createEntity("m60e4", (-1147, -1032, 124));
	sr\api\_battleroyale::createEntity("mp44", (-385, 584, 128));
	sr\api\_battleroyale::createEntity("mp44", (851, -1351, 268));
	sr\api\_battleroyale::createEntity("remington700", (-1234, 152, 15));
	sr\api\_battleroyale::createEntity("remington700", (1668, 1134, 124));
	sr\api\_battleroyale::createEntity("remington700", (174, 943, 128));
	sr\api\_battleroyale::createEntity("remington700", (1907, 304, 300));
	sr\api\_battleroyale::createEntity("rpd", (139, 2450, 124));
	sr\api\_battleroyale::createEntity("saw", (-366, -929, 124));
	sr\api\_battleroyale::createEntity("saw", (-989, -511, 166));
	sr\api\_battleroyale::createEntity("skorpion", (753, 1351, 124));
	sr\api\_battleroyale::createEntity("skorpion", (-795, 2249, 124));
	sr\api\_battleroyale::createEntity("usp", (1074, -1558, 268));
	sr\api\_battleroyale::createEntity("usp", (-1258, 84, 15));
	sr\api\_battleroyale::createEntity("uzi", (-1246, 1076, 124));
	sr\api\_battleroyale::createEntity("uzi", (689, 376, 258));
	sr\api\_battleroyale::createEntity("winchester1200", (1439, 391, 300));

	sr\api\_battleroyale::createEntity("12_gauge", (761, 1675, 124));
	sr\api\_battleroyale::createEntity("45", (-1162, 1079, 124));
	sr\api\_battleroyale::createEntity("45", (-1249, -458, -53));
	sr\api\_battleroyale::createEntity("5_45", (-474, -1937, 125));
	sr\api\_battleroyale::createEntity("5_45", (-744, -208, -22));
	sr\api\_battleroyale::createEntity("5_45", (263, -272, 456));
	sr\api\_battleroyale::createEntity("5_45", (443, -273, 264));
	sr\api\_battleroyale::createEntity("5_45", (546, -458, 128));
	sr\api\_battleroyale::createEntity("7_62", (-732, 2250, 124));
	sr\api\_battleroyale::createEntity("9mm", (-777, 1477, 140));
	sr\api\_battleroyale::createEntity("rocket", (-856, 1731, 140));
	sr\api\_battleroyale::createEntity("rocket", (849, -1218, 268));

	sr\api\_battleroyale::createEntity("flash_grenade", (-773, 1337, 140));
	sr\api\_battleroyale::createEntity("flash_grenade", (240, 2404, 124));
	sr\api\_battleroyale::createEntity("flash_grenade", (282, -490, 264));
	sr\api\_battleroyale::createEntity("flash_grenade", (288, 571, 129));
	sr\api\_battleroyale::createEntity("flash_grenade", (573, -353, 456));
	sr\api\_battleroyale::createEntity("frag_grenade", (-1210, -39, 320));
	sr\api\_battleroyale::createEntity("frag_grenade", (-1245, 1046, 124));
	sr\api\_battleroyale::createEntity("frag_grenade", (-334, 590, 128));
	sr\api\_battleroyale::createEntity("frag_grenade", (1663, 529, 126));
	sr\api\_battleroyale::createEntity("smoke_grenade", (-1056, -534, 166));
	sr\api\_battleroyale::createEntity("smoke_grenade", (-1102, -546, -53));
	sr\api\_battleroyale::createEntity("smoke_grenade", (-1227, -178, 318));
	sr\api\_battleroyale::createEntity("smoke_grenade", (-1262, -392, 166));
	sr\api\_battleroyale::createEntity("smoke_grenade", (-270, -211, 241));
	sr\api\_battleroyale::createEntity("smoke_grenade", (-830, 193, 15));
	sr\api\_battleroyale::createEntity("smoke_grenade", (1767, -188, 359));
	sr\api\_battleroyale::createEntity("smoke_grenade", (249, -460, 456));
	sr\api\_battleroyale::createEntity("smoke_grenade", (820, -1561, 268));
	sr\api\_battleroyale::createEntity("smoke_grenade", (91, 394, 129));

	sr\api\_battleroyale::createEntity("bandage", (-565, 591, 128));
	sr\api\_battleroyale::createEntity("bandage", (-741, 100, 15));
	sr\api\_battleroyale::createEntity("bandage", (-920, 7, 166));
	sr\api\_battleroyale::createEntity("bandage", (1215, -1562, 132));
	sr\api\_battleroyale::createEntity("bandage", (1234, -1563, 268));
	sr\api\_battleroyale::createEntity("bandage", (1496, 469, 300));
	sr\api\_battleroyale::createEntity("bandage", (1904, 529, 300));
	sr\api\_battleroyale::createEntity("bandage", (208, 502, 129));
	sr\api\_battleroyale::createEntity("bandage", (508, -300, 456));
	sr\api\_battleroyale::createEntity("first_kit", (-101, -224, 241));
	sr\api\_battleroyale::createEntity("first_kit", (-1216, -1018, 124));
	sr\api\_battleroyale::createEntity("first_kit", (-128, 556, 129));
	sr\api\_battleroyale::createEntity("first_kit", (-488, -2001, 126));
	sr\api\_battleroyale::createEntity("first_kit", (-633, -2156, 125));
	sr\api\_battleroyale::createEntity("first_kit", (-932, 1172, 140));
	sr\api\_battleroyale::createEntity("first_kit", (-940, 1667, 140));
	sr\api\_battleroyale::createEntity("first_kit", (1561, 110, 124));
	sr\api\_battleroyale::createEntity("first_kit", (265, -1796, 136));
	sr\api\_battleroyale::createEntity("first_kit", (401, -319, 264));
	sr\api\_battleroyale::createEntity("first_kit", (508, -373, 264));
	sr\api\_battleroyale::createEntity("first_kit", (757, 1193, 124));
	sr\api\_battleroyale::createEntity("first_kit", (813, 1503, 124));
	sr\api\_battleroyale::createEntity("first_kit", (866, -1299, 132));
	sr\api\_battleroyale::createEntity("first_kit", (935, -1198, 164));
}
