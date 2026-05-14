main()
{
	maps\mp\_load::main();
	maps\mp\mp_inv_rotate::main();
	maps\mp\mp_inv_struct::main();
	maps\mp\mp_inv_soundfx::main();
	maps\mp\phone_sound::main();

	maps\mp\_compass::setupMiniMap("compass_map_mp_inv");

	setExpFog(100, 10000, 0.613, 0.621, 0.609, 0);
	ambientPlay("ambient_crash");

	game["allies"] = "marines";
	game["axis"] = "opfor";
	game["attackers"] = "axis";
	game["defenders"] = "allies";
	game["allies_soldiertype"] = "desert";
	game["axis_soldiertype"] = "desert";

	setdvar("compassmaxrange", "2200");

	level.airstrikeHeightScale = 1.8;

	sr\api\_battleroyale::removeAllMapTriggers();
	sr\api\_battleroyale::removeAllSpawns();
	sr\api\_battleroyale::createSpawn((-1063, 1495, 68), -80);

	sr\api\_battleroyale::createPlanePath((1278, 1212, 1025), (-1546, -2264, 1025), -129);
	sr\api\_battleroyale::createPlanePath((405, -3021, 1061), (-111, 2479, 1061), 95);
	sr\api\_battleroyale::createPlaneDrop((-169, -69, 638));
	sr\api\_battleroyale::createPlaneDropTrigger((-99, -805, 800), 2000);
	sr\api\_battleroyale::createPlaneDuration(10);

	sr\api\_battleroyale::createZoneLevels(3);
	sr\api\_battleroyale::createZone((-593, 1131, 60));
	sr\api\_battleroyale::createZone((-1000, -653, 58));
	sr\api\_battleroyale::createZone((-249, -39, 60));
	sr\api\_battleroyale::createZone((174, -1074, 60));
	sr\api\_battleroyale::createZone((899, -1035, 54));
	sr\api\_battleroyale::createZone((938, -10, 67));
	sr\api\_battleroyale::createZone((943, -1875, 58));
	sr\api\_battleroyale::createZone((50, -2442, 60));
	sr\api\_battleroyale::createZone((-770, -1743, 60));
	sr\api\_battleroyale::createZone((-510, -1239, 60));

	sr\api\_battleroyale::createLobbyBlocker((-921, 1102, 68), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((-795, 1278, 68), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((-702, 1398, 68), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((-995, 1541, 68), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((-1159, 1028, 169), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((-1221, 977, 169), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((-1081, 1150, 201), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((-1009, 1261, 196), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((-924, 1374, 201), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((-789, 1404, 169), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((-931, 1496, 196), 150, 100);

	spawnEntities();
}

spawnEntities()
{
	sr\api\_battleroyale::createEntity("ak74u", (1113, -848, 194));
	sr\api\_battleroyale::createEntity("ak74u", (-356, -2264, 68));
	sr\api\_battleroyale::createEntity("ak74u", (389, -552, 65));
	sr\api\_battleroyale::createEntity("at4", (-2374, -118, 60));
	sr\api\_battleroyale::createEntity("at4", (279, -2090, 188));
	sr\api\_battleroyale::createEntity("beretta", (749, -1616, 188));
	sr\api\_battleroyale::createEntity("colt45", (-753, -1022, 60));
	sr\api\_battleroyale::createEntity("deserteagle", (318, 227, 63));
	sr\api\_battleroyale::createEntity("deserteagle", (-625, 1768, 169));
	sr\api\_battleroyale::createEntity("deserteaglegold", (1180, -988, 194));
	sr\api\_battleroyale::createEntity("deserteaglegold", (-401, 1577, 169));
	sr\api\_battleroyale::createEntity("deserteaglegold", (-712, 1694, 68));
	sr\api\_battleroyale::createEntity("deserteaglegold", (-925, -314, 80));
	sr\api\_battleroyale::createEntity("dragunov", (-831, 796, 169));
	sr\api\_battleroyale::createEntity("dragunov", (-893, 559, 64));
	sr\api\_battleroyale::createEntity("g3", (-306, 9, 60));
	sr\api\_battleroyale::createEntity("m1014", (-220, -1624, 63));
	sr\api\_battleroyale::createEntity("m14", (-385, -2549, 68));
	sr\api\_battleroyale::createEntity("m14", (504, -651, 65));
	sr\api\_battleroyale::createEntity("m14", (-94, -2107, 188));
	sr\api\_battleroyale::createEntity("m16", (489, 1028, 84));
	sr\api\_battleroyale::createEntity("m16", (-727, 1133, 60));
	sr\api\_battleroyale::createEntity("m4", (685, -1264, 206));
	sr\api\_battleroyale::createEntity("m40a3", (-451, 1260, 169));
	sr\api\_battleroyale::createEntity("m40a3", (676, -1482, 60));
	sr\api\_battleroyale::createEntity("m60e4", (-1786, 18, 60));
	sr\api\_battleroyale::createEntity("m60e4", (616, -1372, 60));
	sr\api\_battleroyale::createEntity("m60e4", (-881, 1299, 169));
	sr\api\_battleroyale::createEntity("mp44", (1229, 276, 61));
	sr\api\_battleroyale::createEntity("mp44", (1254, -841, 194));
	sr\api\_battleroyale::createEntity("mp5", (-347, -815, 60));
	sr\api\_battleroyale::createEntity("mp5", (-547, -970, 60));
	sr\api\_battleroyale::createEntity("mp5", (-569, -1697, 63));
	sr\api\_battleroyale::createEntity("remington700", (-1984, -271, 60));
	sr\api\_battleroyale::createEntity("rpd", (200, -338, 157));
	sr\api\_battleroyale::createEntity("rpd", (-772, 1411, 68));
	sr\api\_battleroyale::createEntity("rpg", (-279, 2104, 68));
	sr\api\_battleroyale::createEntity("rpg", (594, 1284, 84));
	sr\api\_battleroyale::createEntity("saw", (-1254, -1302, 86));
	sr\api\_battleroyale::createEntity("usp", (-153, -1473, 63));
	sr\api\_battleroyale::createEntity("usp", (544, -551, 65));
	sr\api\_battleroyale::createEntity("uzi", (761, -1668, 60));
	sr\api\_battleroyale::createEntity("winchester1200", (1168, -217, 180));
	sr\api\_battleroyale::createEntity("winchester1200", (-995, -296, 80));

	sr\api\_battleroyale::createEntity("12_gauge", (-1110, -1266, 86));
	sr\api\_battleroyale::createEntity("12_gauge", (-273, -809, 60));
	sr\api\_battleroyale::createEntity("12_gauge", (502, -558, 65));
	sr\api\_battleroyale::createEntity("45", (-46, -2029, 188));
	sr\api\_battleroyale::createEntity("45", (1140, -280, 83));
	sr\api\_battleroyale::createEntity("45", (680, -1647, 188));
	sr\api\_battleroyale::createEntity("45", (873, -1319, 199));
	sr\api\_battleroyale::createEntity("5_45", (1307, -2054, 63));
	sr\api\_battleroyale::createEntity("5_45", (694, 1194, 84));
	sr\api\_battleroyale::createEntity("5_45", (770, -1694, 188));
	sr\api\_battleroyale::createEntity("7_62", (-1203, -1724, 86));
	sr\api\_battleroyale::createEntity("7_62", (-784, 790, 169));
	sr\api\_battleroyale::createEntity("7_62", (681, -2621, 64));
	sr\api\_battleroyale::createEntity("7_62", (783, -726, 65));
	sr\api\_battleroyale::createEntity("9mm", (-1078, 979, 169));
	sr\api\_battleroyale::createEntity("9mm", (-335, -2534, 68));
	sr\api\_battleroyale::createEntity("9mm", (-485, 1982, 68));
	sr\api\_battleroyale::createEntity("rocket", (271, -2069, 188));

	sr\api\_battleroyale::createEntity("flash_grenade", (-834, -508, 65));
	sr\api\_battleroyale::createEntity("flash_grenade", (-843, 1983, 68));
	sr\api\_battleroyale::createEntity("flash_grenade", (1121, -741, 194));
	sr\api\_battleroyale::createEntity("flash_grenade", (217, -258, 157));
	sr\api\_battleroyale::createEntity("frag_grenade", (-13, -2027, 68));
	sr\api\_battleroyale::createEntity("frag_grenade", (-850, -2513, 60));
	sr\api\_battleroyale::createEntity("frag_grenade", (364, -2074, 68));
	sr\api\_battleroyale::createEntity("frag_grenade", (378, -757, 65));
	sr\api\_battleroyale::createEntity("smoke_grenade", (-1283, -1660, 86));
	sr\api\_battleroyale::createEntity("smoke_grenade", (-1289, -1241, 86));
	sr\api\_battleroyale::createEntity("smoke_grenade", (-388, 2128, 68));
	sr\api\_battleroyale::createEntity("smoke_grenade", (-598, 1689, 169));
	sr\api\_battleroyale::createEntity("smoke_grenade", (1200, -748, 194));
	sr\api\_battleroyale::createEntity("smoke_grenade", (1245, -798, 194));
	sr\api\_battleroyale::createEntity("smoke_grenade", (1422, -803, 61));
	sr\api\_battleroyale::createEntity("smoke_grenade", (340, -2034, 188));
	sr\api\_battleroyale::createEntity("smoke_grenade", (410, 1005, 84));
	sr\api\_battleroyale::createEntity("smoke_grenade", (441, 926, 84));

	sr\api\_battleroyale::createEntity("bandage", (-240, -150, 60));
	sr\api\_battleroyale::createEntity("bandage", (-400, -1513, 63));
	sr\api\_battleroyale::createEntity("bandage", (-828, 714, 169));
	sr\api\_battleroyale::createEntity("bandage", (-949, 1133, 68));
	sr\api\_battleroyale::createEntity("bandage", (1094, -436, 180));
	sr\api\_battleroyale::createEntity("bandage", (1371, 336, 61));
	sr\api\_battleroyale::createEntity("bandage", (187, -1451, 63));
	sr\api\_battleroyale::createEntity("bandage", (262, -2076, 68));
	sr\api\_battleroyale::createEntity("bandage", (619, -1326, 203));
	sr\api\_battleroyale::createEntity("bandage", (624, -551, 65));
	sr\api\_battleroyale::createEntity("bandage", (778, -1228, 60));
	sr\api\_battleroyale::createEntity("first_kit", (-1357, 1088, 169));
	sr\api\_battleroyale::createEntity("first_kit", (-271, 2137, 169));
	sr\api\_battleroyale::createEntity("first_kit", (-372, -2373, 68));
	sr\api\_battleroyale::createEntity("first_kit", (-696, 500, 60));
	sr\api\_battleroyale::createEntity("first_kit", (-937, 1200, 169));
	sr\api\_battleroyale::createEntity("first_kit", (1337, -976, 194));
	sr\api\_battleroyale::createEntity("first_kit", (206, 97, 62));
}
