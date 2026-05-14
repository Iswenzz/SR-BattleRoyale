main()
{
	maps\mp\mp_farm_fx::main();
	maps\createart\mp_farm_art::main();
	maps\mp\_load::main();

	maps\mp\_compass::setupMiniMap("compass_map_mp_farm");

	ambientPlay("ambient_farm");

	game["allies"] = "sas";
	game["axis"] = "russian";
	game["attackers"] = "allies";
	game["defenders"] = "axis";
	game["allies_soldiertype"] = "woodland";
	game["axis_soldiertype"] = "woodland";

	setdvar("r_specularcolorscale", "5");
	setdvar("compassmaxrange","2000");

	sr\api\_battleroyale::removeAllMapTriggers();
	sr\api\_battleroyale::removeAllSpawns();
	sr\api\_battleroyale::createSpawn((317, 1061, 277), 47);

	sr\api\_battleroyale::createPlanePath((1842, 4725, 1000), (-1185, -2800, 1000), -111);
	sr\api\_battleroyale::createPlaneDrop((932, 1719, 900));
	sr\api\_battleroyale::createPlaneDropTrigger((932, 1719, 900), 1600);
	sr\api\_battleroyale::createPlaneDuration(10);

	sr\api\_battleroyale::createZoneLevels(3);
	sr\api\_battleroyale::createZone((899, 1624, 276));
	sr\api\_battleroyale::createZone((-234, 1979, 287));
	sr\api\_battleroyale::createZone((147, 3383, 278));
	sr\api\_battleroyale::createZone((1610, 3761, 272));
	sr\api\_battleroyale::createZone((1417, 2410, 276));
	sr\api\_battleroyale::createZone((908, 1516, 276));
	sr\api\_battleroyale::createZone((466, 466, 259));
	sr\api\_battleroyale::createZone((-405, -195, 249));
	sr\api\_battleroyale::createZone((133, -947, 184));
	sr\api\_battleroyale::createZone((513, -1394, 196));
	sr\api\_battleroyale::createZone((-661, -1606, 184));
	sr\api\_battleroyale::createZone((-1159, -2242, 209));

	sr\api\_battleroyale::createLobbyBlocker((250, 1607, 276), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((707, 1137, 277), 150, 100);

	spawnEntities();
}

spawnEntities()
{
	sr\api\_battleroyale::createEntity("ak74u", (1266, 3495, 279));
	sr\api\_battleroyale::createEntity("ak74u", (1406, 2833, 276));
	sr\api\_battleroyale::createEntity("ak74u", (330, 1532, 276));
	sr\api\_battleroyale::createEntity("beretta", (1230, -526, 192));
	sr\api\_battleroyale::createEntity("beretta", (445, 489, 260));
	sr\api\_battleroyale::createEntity("colt45", (1766, 2764, 277));
	sr\api\_battleroyale::createEntity("colt45", (-219, -698, 200));
	sr\api\_battleroyale::createEntity("deserteagle", (1777, 3176, 277));
	sr\api\_battleroyale::createEntity("deserteaglegold", (1354, -1189, 192));
	sr\api\_battleroyale::createEntity("deserteaglegold", (610, 1372, 277));
	sr\api\_battleroyale::createEntity("dragunov", (979, 4216, 277));
	sr\api\_battleroyale::createEntity("g3", (-274, -774, 352));
	sr\api\_battleroyale::createEntity("g36c", (-825, -2283, 215));
	sr\api\_battleroyale::createEntity("m1014", (-595, -842, 196));
	sr\api\_battleroyale::createEntity("m16", (-1134, -1637, 322));
	sr\api\_battleroyale::createEntity("m16", (1593, 885, 281));
	sr\api\_battleroyale::createEntity("m16", (640, 2067, 276));
	sr\api\_battleroyale::createEntity("m21", (-121, 2627, 279));
	sr\api\_battleroyale::createEntity("m4", (1051, 848, 281));
	sr\api\_battleroyale::createEntity("m4", (1370, 1188, 281));
	sr\api\_battleroyale::createEntity("m4", (1923, 4472, 290));
	sr\api\_battleroyale::createEntity("m4", (-585, 1171, 306));
	sr\api\_battleroyale::createEntity("m40a3", (305, 1070, 445));
	sr\api\_battleroyale::createEntity("m40a3", (919, 2714, 429));
	sr\api\_battleroyale::createEntity("m60e4", (-752, -2122, 214));
	sr\api\_battleroyale::createEntity("mp44", (2491, 891, 277));
	sr\api\_battleroyale::createEntity("mp44", (-512, -696, 200));
	sr\api\_battleroyale::createEntity("mp44", (817, 668, 274));
	sr\api\_battleroyale::createEntity("mp5", (-1056, -1230, 216));
	sr\api\_battleroyale::createEntity("p90", (346, -1362, 190));
	sr\api\_battleroyale::createEntity("remington700", (1463, 1610, 281));
	sr\api\_battleroyale::createEntity("rpg", (-907, -1600, 322));
	sr\api\_battleroyale::createEntity("skorpion", (1208, 375, 240));
	sr\api\_battleroyale::createEntity("skorpion", (33, -1715, 196));
	sr\api\_battleroyale::createEntity("skorpion", (-784, 1678, 298));
	sr\api\_battleroyale::createEntity("uzi", (1625, 3226, 276));
	sr\api\_battleroyale::createEntity("uzi", (-738, 1949, 313));
	sr\api\_battleroyale::createEntity("winchester1200", (347, 1028, 277));
	sr\api\_battleroyale::createEntity("winchester1200", (547, -776, 193));

	sr\api\_battleroyale::createEntity("12_gauge", (-787, 1458, 299));
	sr\api\_battleroyale::createEntity("12_gauge", (1059, 2715, 429));
	sr\api\_battleroyale::createEntity("45", (-1097, -1746, 314));
	sr\api\_battleroyale::createEntity("45", (-1103, -1749, 212));
	sr\api\_battleroyale::createEntity("45", (-356, -751, 352));
	sr\api\_battleroyale::createEntity("45", (1962, 4398, 289));
	sr\api\_battleroyale::createEntity("5_45", (616, 1079, 277));
	sr\api\_battleroyale::createEntity("7_62", (-962, -1614, 216));
	sr\api\_battleroyale::createEntity("7_62", (1205, 3558, 279));
	sr\api\_battleroyale::createEntity("9mm", (1033, -430, 192));
	sr\api\_battleroyale::createEntity("rocket", (1786, 3184, 277));

	sr\api\_battleroyale::createEntity("flash_grenade", (-161, 3206, 282));
	sr\api\_battleroyale::createEntity("flash_grenade", (1362, 2850, 276));
	sr\api\_battleroyale::createEntity("flash_grenade", (1620, 4379, 274));
	sr\api\_battleroyale::createEntity("flash_grenade", (2518, 1633, 274));
	sr\api\_battleroyale::createEntity("flash_grenade", (343, 1594, 276));
	sr\api\_battleroyale::createEntity("frag_grenade", (-1313, -2414, 209));
	sr\api\_battleroyale::createEntity("frag_grenade", (-780, 884, 305));
	sr\api\_battleroyale::createEntity("frag_grenade", (1308, -522, 192));
	sr\api\_battleroyale::createEntity("frag_grenade", (1370, 1487, 281));
	sr\api\_battleroyale::createEntity("frag_grenade", (1567, 1606, 281));
	sr\api\_battleroyale::createEntity("frag_grenade", (1568, 1451, 281));
	sr\api\_battleroyale::createEntity("frag_grenade", (1909, 3187, 277));
	sr\api\_battleroyale::createEntity("frag_grenade", (318, 1462, 445));
	sr\api\_battleroyale::createEntity("frag_grenade", (834, 2730, 429));
	sr\api\_battleroyale::createEntity("smoke_grenade", (340, -887, 193));
	sr\api\_battleroyale::createEntity("smoke_grenade", (380, 1359, 277));
	sr\api\_battleroyale::createEntity("smoke_grenade", (445, 2581, 277));

	sr\api\_battleroyale::createEntity("bandage", (-1192, -1222, 216));
	sr\api\_battleroyale::createEntity("bandage", (-172, -751, 352));
	sr\api\_battleroyale::createEntity("bandage", (1199, -292, 187));
	sr\api\_battleroyale::createEntity("bandage", (1438, 3489, 279));
	sr\api\_battleroyale::createEntity("bandage", (1492, 3547, 279));
	sr\api\_battleroyale::createEntity("bandage", (1888, 2700, 277));
	sr\api\_battleroyale::createEntity("bandage", (298, -390, 193));
	sr\api\_battleroyale::createEntity("bandage", (324, 1219, 445));
	sr\api\_battleroyale::createEntity("bandage", (600, 2335, 276));
	sr\api\_battleroyale::createEntity("first_kit", (-1115, -2535, 206));
	sr\api\_battleroyale::createEntity("first_kit", (-1186, -1626, 216));
	sr\api\_battleroyale::createEntity("first_kit", (-329, -1786, 198));
	sr\api\_battleroyale::createEntity("first_kit", (-344, -1568, 198));
	sr\api\_battleroyale::createEntity("first_kit", (-584, -751, 352));
	sr\api\_battleroyale::createEntity("first_kit", (-922, -1155, 216));
	sr\api\_battleroyale::createEntity("first_kit", (1605, 1065, 281));
	sr\api\_battleroyale::createEntity("first_kit", (1785, 3031, 315));
	sr\api\_battleroyale::createEntity("first_kit", (206, -1693, 196));
	sr\api\_battleroyale::createEntity("first_kit", (489, 817, 424));
	sr\api\_battleroyale::createEntity("first_kit", (597, -624, 193));
}
