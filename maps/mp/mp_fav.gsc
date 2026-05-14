main()
{
	maps\mp\_load::main();
	maps\mp\mp_fav_struct::main();
	maps\mp\mp_fav_rotate::main();

	maps\mp\_compass::setupMiniMap("compass_map_mp_fav");

	ambientPlay("ambient_backlot_ext");
	setExpFog(0, 13000, 0.33, 0.39, 0.545313, 1);

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
	setdvar("compassmaxrange","1800");

	level.airstrikeHeightScale = 1.8;

	sr\api\_battleroyale::removeAllMapTriggers();
	sr\api\_battleroyale::removeAllSpawns();
	sr\api\_battleroyale::createSpawn((997, 429, 233), -123);

	sr\api\_battleroyale::createPlanePath((-531, 1658, 600), (3127, -3553, 600), -50);
	sr\api\_battleroyale::createPlanePath((3486, -2128, 600), (-1036, 1734, 600), 139);
	sr\api\_battleroyale::createPlaneDrop((634, -421, 651));
	sr\api\_battleroyale::createPlaneDropTrigger((1421, -312, 651), 2000);
	sr\api\_battleroyale::createPlaneDuration(10);

	sr\api\_battleroyale::createZoneLevels(3);
	sr\api\_battleroyale::createZone((687, 11, 60));
	sr\api\_battleroyale::createZone((-133, -729, 58));
	sr\api\_battleroyale::createZone((-164, 63, 64));
	sr\api\_battleroyale::createZone((476, 896, 69));
	sr\api\_battleroyale::createZone((1513, 770, 114));
	sr\api\_battleroyale::createZone((2843, -500, 329));
	sr\api\_battleroyale::createZone((1859, -1556, 214));
	sr\api\_battleroyale::createZone((739, -1223, 192));
	sr\api\_battleroyale::createZone((13, -1744, 230));

	sr\api\_battleroyale::createLobbyBlocker((1109, 285, 412), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((888, 167, 259), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((795, 241, 259), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((872, 674, 257), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((1138, 546, 259), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((857, 673, 73), 150, 100);

	spawnEntities();
}

spawnEntities()
{
	sr\api\_battleroyale::createEntity("beretta", (170, 583, 65));
	sr\api\_battleroyale::createEntity("beretta", (93, -369, 208));
	sr\api\_battleroyale::createEntity("colt45", (1165, -187, 253));
	sr\api\_battleroyale::createEntity("colt45", (1603, -2060, 209));
	sr\api\_battleroyale::createEntity("colt45", (917, 242, 233));
	sr\api\_battleroyale::createEntity("colt45", (99, -683, 71));
	sr\api\_battleroyale::createEntity("deserteagle", (1678, 1046, 234));
	sr\api\_battleroyale::createEntity("dragunov", (3142, 878, 328));
	sr\api\_battleroyale::createEntity("g3", (1645, -1279, 364));
	sr\api\_battleroyale::createEntity("g3", (1948, -663, 244));
	sr\api\_battleroyale::createEntity("m1014", (227, -423, 208));
	sr\api\_battleroyale::createEntity("m1014", (2481, -821, 244));
	sr\api\_battleroyale::createEntity("m16", (2218, -121, 372));
	sr\api\_battleroyale::createEntity("m16", (2861, -1068, 327));
	sr\api\_battleroyale::createEntity("m16", (3115, -729, 268));
	sr\api\_battleroyale::createEntity("m16", (953, -101, 253));
	sr\api\_battleroyale::createEntity("m21", (1815, -48, 381));
	sr\api\_battleroyale::createEntity("m4", (135, -133, 80));
	sr\api\_battleroyale::createEntity("m4", (368, 634, 65));
	sr\api\_battleroyale::createEntity("m60e4", (913, -1568, 240));
	sr\api\_battleroyale::createEntity("mp44", (1256, -601, 253));
	sr\api\_battleroyale::createEntity("mp44", (1872, -100, 381));
	sr\api\_battleroyale::createEntity("mp44", (-19, -505, 80));
	sr\api\_battleroyale::createEntity("mp5", (1552, 42, 221));
	sr\api\_battleroyale::createEntity("mp5", (1599, -809, 360));
	sr\api\_battleroyale::createEntity("p90", (1474, 220, 220));
	sr\api\_battleroyale::createEntity("p90", (-339, -1857, 229));
	sr\api\_battleroyale::createEntity("remington700", (1854, 1365, 233));
	sr\api\_battleroyale::createEntity("remington700", (225, -938, 208));
	sr\api\_battleroyale::createEntity("rpd", (1785, -61, 221));
	sr\api\_battleroyale::createEntity("rpd", (2212, -341, 372));
	sr\api\_battleroyale::createEntity("rpg", (338, 1155, 74));
	sr\api\_battleroyale::createEntity("skorpion", (100, -1062, 344));
	sr\api\_battleroyale::createEntity("skorpion", (116, 439, 233));
	sr\api\_battleroyale::createEntity("skorpion", (1960, 221, 232));
	sr\api\_battleroyale::createEntity("usp", (10, 366, 233));
	sr\api\_battleroyale::createEntity("usp", (248, -1062, 208));
	sr\api\_battleroyale::createEntity("usp", (839, 637, 233));
	sr\api\_battleroyale::createEntity("usp", (862, 606, 73));
	sr\api\_battleroyale::createEntity("uzi", (1044, 257, 233));
	sr\api\_battleroyale::createEntity("uzi", (1634, 1092, 234));
	sr\api\_battleroyale::createEntity("uzi", (1651, -891, 364));
	sr\api\_battleroyale::createEntity("uzi", (239, -141, 344));
	sr\api\_battleroyale::createEntity("uzi", (853, 542, 233));

	sr\api\_battleroyale::createEntity("12_gauge", (1082, 526, 233));
	sr\api\_battleroyale::createEntity("12_gauge", (1742, -2054, 208));
	sr\api\_battleroyale::createEntity("12_gauge", (2431, -1850, 212));
	sr\api\_battleroyale::createEntity("12_gauge", (3085, -933, 268));
	sr\api\_battleroyale::createEntity("12_gauge", (964, -492, 253));
	sr\api\_battleroyale::createEntity("45", (-265, 448, 68));
	sr\api\_battleroyale::createEntity("45", (-72, -110, 208));
	sr\api\_battleroyale::createEntity("45", (3423, -1289, 337));
	sr\api\_battleroyale::createEntity("5_45", (-20, -544, 208));
	sr\api\_battleroyale::createEntity("5_45", (-8, -364, 344));
	sr\api\_battleroyale::createEntity("5_45", (1235, 1897, 74));
	sr\api\_battleroyale::createEntity("5_45", (1857, 138, 221));
	sr\api\_battleroyale::createEntity("5_45", (2347, -109, 372));
	sr\api\_battleroyale::createEntity("7_62", (-14, -569, 80));
	sr\api\_battleroyale::createEntity("7_62", (1468, -1344, 364));
	sr\api\_battleroyale::createEntity("7_62", (1552, 1387, 234));
	sr\api\_battleroyale::createEntity("7_62", (1677, 1443, 234));
	sr\api\_battleroyale::createEntity("7_62", (221, -1182, 340));
	sr\api\_battleroyale::createEntity("7_62", (268, 1559, 74));
	sr\api\_battleroyale::createEntity("7_62", (599, -482, 59));
	sr\api\_battleroyale::createEntity("9mm", (1080, -929, 348));
	sr\api\_battleroyale::createEntity("9mm", (80, -415, 344));
	sr\api\_battleroyale::createEntity("rocket", (1392, 1414, 234));
	sr\api\_battleroyale::createEntity("rocket", (2137, -246, 372));
	sr\api\_battleroyale::createEntity("rocket", (365, 639, 233));

	sr\api\_battleroyale::createEntity("flash_grenade", (1173, -607, 253));
	sr\api\_battleroyale::createEntity("flash_grenade", (17, -330, 118));
	sr\api\_battleroyale::createEntity("flash_grenade", (547, -642, 59));
	sr\api\_battleroyale::createEntity("flash_grenade", (949, -417, 368));
	sr\api\_battleroyale::createEntity("frag_grenade", (20, 430, 233));
	sr\api\_battleroyale::createEntity("frag_grenade", (2358, -307, 372));
	sr\api\_battleroyale::createEntity("frag_grenade", (3078, -1181, 268));
	sr\api\_battleroyale::createEntity("smoke_grenade", (233, -1380, 236));
	sr\api\_battleroyale::createEntity("smoke_grenade", (260, -243, 208));
	sr\api\_battleroyale::createEntity("smoke_grenade", (266, -1001, 208));
	sr\api\_battleroyale::createEntity("smoke_grenade", (3230, -26, 374));
	sr\api\_battleroyale::createEntity("smoke_grenade", (734, 328, 68));

	sr\api\_battleroyale::createEntity("bandage", (-299, 555, 66));
	sr\api\_battleroyale::createEntity("bandage", (1109, 1758, 74));
	sr\api\_battleroyale::createEntity("bandage", (1354, 1143, 234));
	sr\api\_battleroyale::createEntity("bandage", (1408, 1042, 234));
	sr\api\_battleroyale::createEntity("bandage", (1752, -1320, 364));
	sr\api\_battleroyale::createEntity("bandage", (1861, -33, 221));
	sr\api\_battleroyale::createEntity("bandage", (253, -556, 80));
	sr\api\_battleroyale::createEntity("bandage", (3232, 159, 373));
	sr\api\_battleroyale::createEntity("bandage", (69, -328, 344));
	sr\api\_battleroyale::createEntity("bandage", (71, -955, 208));
	sr\api\_battleroyale::createEntity("bandage", (837, -1574, 240));
	sr\api\_battleroyale::createEntity("first_kit", (1007, -565, 368));
	sr\api\_battleroyale::createEntity("first_kit", (1202, 1633, 74));
	sr\api\_battleroyale::createEntity("first_kit", (1463, -1237, 364));
	sr\api\_battleroyale::createEntity("first_kit", (1561, -100, 381));
	sr\api\_battleroyale::createEntity("first_kit", (1592, 263, 381));
	sr\api\_battleroyale::createEntity("first_kit", (1686, 256, 401));
	sr\api\_battleroyale::createEntity("first_kit", (1774, -1259, 364));
	sr\api\_battleroyale::createEntity("first_kit", (2662, -1108, 210));
	sr\api\_battleroyale::createEntity("first_kit", (270, -203, 80));
	sr\api\_battleroyale::createEntity("first_kit", (915, -1589, 248));
}
