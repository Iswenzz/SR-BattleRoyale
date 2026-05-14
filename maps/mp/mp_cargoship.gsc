main()
{
	maps\mp\mp_cargoship_fx::main();
	maps\createart\mp_cargoship_art::main();
	maps\mp\_load::main();

	maps\mp\_compass::setupMiniMap("compass_map_mp_cargoship");

	ambientPlay("ambient_cargoshipmp_ext");

	game["allies"] = "sas";
	game["axis"] = "russian";
	game["attackers"] = "axis";
	game["defenders"] = "allies";
	game["allies_soldiertype"] = "woodland";
	game["axis_soldiertype"] = "woodland";

	setdvar("r_specularcolorscale", "1");
	setdvar("compassmaxrange","2100");

	sr\api\_battleroyale::removeAllMapTriggers();
	sr\api\_battleroyale::removeAllSpawns();
	sr\api\_battleroyale::createSpawn((2954, 133, 396), -39);

	sr\api\_battleroyale::createPlanePath((9316, 77, 2000), (-4684, 77, 2000), -180);
	sr\api\_battleroyale::createPlanePath((-4684, 77, 2000), (9316, 77, 2000), 0);
	sr\api\_battleroyale::createPlaneDrop((7, 8, 1000));
	sr\api\_battleroyale::createPlaneDropTrigger((7, 8, 1000), 6000);
	sr\api\_battleroyale::createPlaneDuration(10);

	sr\api\_battleroyale::createZoneLevels(3);
	sr\api\_battleroyale::createZone((2939, -1, 396));
	sr\api\_battleroyale::createZone((2276, -82, 76));
	sr\api\_battleroyale::createZone((1509, 56, 76));
	sr\api\_battleroyale::createZone((483, 54, 76));
	sr\api\_battleroyale::createZone((-434, 27, 76));
	sr\api\_battleroyale::createZone((-1255, 4, 76));
	sr\api\_battleroyale::createZone((-1948, 53, 76));
	sr\api\_battleroyale::createZone((-3482, 7, 124));
	sr\api\_battleroyale::createZone((-2476, -595, 284));
	sr\api\_battleroyale::createZone((-2502, 565, 284));
	sr\api\_battleroyale::createZone((432, -460, 76));
	sr\api\_battleroyale::createZone((1044, 503, 76));

	sr\api\_battleroyale::createLobbyBlocker((2955, 261, 396), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((2955, -262, 396), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((3045, -271, 396), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((3128, -255, 396), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((3196, -221, 396), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((3238, -177, 396), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((3273, -106, 396), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((3287, -35, 396), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((3287, 31, 396), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((3274, 105, 396), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((3241, 172, 396), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((3188, 225, 396), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((3120, 258, 396), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((3049, 271, 396), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((2869, 19, 396), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((2958, -246, 396), 150, 100);

	spawnEntities();
}

spawnEntities()
{
	sr\api\_battleroyale::createEntity("ak47", (-1449, -614, 29));
	sr\api\_battleroyale::createEntity("ak47", (-2374, 381, 284));
	sr\api\_battleroyale::createEntity("ak47", (2504, -451, 76));
	sr\api\_battleroyale::createEntity("ak47", (2879, -524, 236));
	sr\api\_battleroyale::createEntity("ak74u", (-1761, -146, 76));
	sr\api\_battleroyale::createEntity("at4", (1930, -74, 289));
	sr\api\_battleroyale::createEntity("beretta", (3710, 24, 272));
	sr\api\_battleroyale::createEntity("colt45", (1051, 355, 236));
	sr\api\_battleroyale::createEntity("colt45", (2918, 180, 396));
	sr\api\_battleroyale::createEntity("deserteagle", (2946, -163, 236));
	sr\api\_battleroyale::createEntity("deserteaglegold", (2822, -27, 236));
	sr\api\_battleroyale::createEntity("dragunov", (2721, -294, 396));
	sr\api\_battleroyale::createEntity("dragunov", (-605, -31, 236));
	sr\api\_battleroyale::createEntity("g36c", (-1471, 640, 29));
	sr\api\_battleroyale::createEntity("g36c", (1611, -631, 29));
	sr\api\_battleroyale::createEntity("g36c", (-2421, -578, 284));
	sr\api\_battleroyale::createEntity("m1014", (-3086, -307, 124));
	sr\api\_battleroyale::createEntity("m14", (2086, -491, 182));
	sr\api\_battleroyale::createEntity("m14", (2285, 203, 76));
	sr\api\_battleroyale::createEntity("m16", (3470, -438, 272));
	sr\api\_battleroyale::createEntity("m21", (1666, 14, 76));
	sr\api\_battleroyale::createEntity("m21", (-2655, -396, 284));
	sr\api\_battleroyale::createEntity("m60e4", (1913, 630, 29));
	sr\api\_battleroyale::createEntity("mp44", (-1128, -320, 289));
	sr\api\_battleroyale::createEntity("mp44", (-1140, 637, 29));
	sr\api\_battleroyale::createEntity("mp44", (-2669, 371, 284));
	sr\api\_battleroyale::createEntity("mp44", (2964, 36, 236));
	sr\api\_battleroyale::createEntity("mp44", (3088, -312, 396));
	sr\api\_battleroyale::createEntity("mp5", (1181, -591, 289));
	sr\api\_battleroyale::createEntity("p90", (-1840, 327, 76));
	sr\api\_battleroyale::createEntity("p90", (2717, -45, 396));
	sr\api\_battleroyale::createEntity("p90", (-581, -9, 76));
	sr\api\_battleroyale::createEntity("p90", (-860, -522, 289));
	sr\api\_battleroyale::createEntity("remington700", (-2589, -389, 124));
	sr\api\_battleroyale::createEntity("remington700", (-306, -179, 76));
	sr\api\_battleroyale::createEntity("rpg", (-1143, 424, 289));
	sr\api\_battleroyale::createEntity("rpg", (-2365, -162, 284));
	sr\api\_battleroyale::createEntity("rpg", (2970, -165, 396));
	sr\api\_battleroyale::createEntity("rpg", (3360, 135, 396));
	sr\api\_battleroyale::createEntity("saw", (-833, -325, 76));
	sr\api\_battleroyale::createEntity("skorpion", (1882, -636, 29));
	sr\api\_battleroyale::createEntity("usp", (292, 11, 76));
	sr\api\_battleroyale::createEntity("uzi", (2828, 306, 396));
	sr\api\_battleroyale::createEntity("uzi", (-3337, 44, 284));
	sr\api\_battleroyale::createEntity("winchester1200", (167, 363, 182));
	sr\api\_battleroyale::createEntity("winchester1200", (-2438, 199, 124));
	sr\api\_battleroyale::createEntity("winchester1200", (-2860, -306, 284));
	sr\api\_battleroyale::createEntity("winchester1200", (3871, -9, 272));

	sr\api\_battleroyale::createEntity("12_gauge", (-2859, 314, 284));
	sr\api\_battleroyale::createEntity("45", (-174, -539, 289));
	sr\api\_battleroyale::createEntity("45", (-2387, -376, 284));
	sr\api\_battleroyale::createEntity("45", (2949, 150, 236));
	sr\api\_battleroyale::createEntity("45", (3567, -367, 272));
	sr\api\_battleroyale::createEntity("5_45", (-1649, 77, 85));
	sr\api\_battleroyale::createEntity("5_45", (-2845, 308, 124));
	sr\api\_battleroyale::createEntity("5_45", (1026, -8, 236));
	sr\api\_battleroyale::createEntity("5_45", (2542, 1, 240));
	sr\api\_battleroyale::createEntity("7_62", (1211, 519, 289));
	sr\api\_battleroyale::createEntity("7_62", (985, -309, 236));
	sr\api\_battleroyale::createEntity("9mm", (-1581, 66, 289));
	sr\api\_battleroyale::createEntity("9mm", (-3107, 305, 124));
	sr\api\_battleroyale::createEntity("9mm", (2840, 131, 396));
	sr\api\_battleroyale::createEntity("rocket", (-186, 565, 288));
	sr\api\_battleroyale::createEntity("rocket", (1011, 2, 76));
	sr\api\_battleroyale::createEntity("rocket", (1645, 617, 29));
	sr\api\_battleroyale::createEntity("rocket", (2762, 342, 396));
	sr\api\_battleroyale::createEntity("rocket", (3121, 117, 396));
	sr\api\_battleroyale::createEntity("rocket", (3126, -105, 396));
	sr\api\_battleroyale::createEntity("rocket", (3184, 3, 396));

	sr\api\_battleroyale::createEntity("flash_grenade", (1495, -398, 289));
	sr\api\_battleroyale::createEntity("frag_grenade", (-1547, -437, 182));
	sr\api\_battleroyale::createEntity("frag_grenade", (-539, 342, 236));
	sr\api\_battleroyale::createEntity("smoke_grenade", (-1763, 112, 85));
	sr\api\_battleroyale::createEntity("smoke_grenade", (-2669, -425, 124));
	sr\api\_battleroyale::createEntity("smoke_grenade", (-523, -345, 236));
	sr\api\_battleroyale::createEntity("smoke_grenade", (-857, 505, 290));
	sr\api\_battleroyale::createEntity("smoke_grenade", (172, -586, 76));
	sr\api\_battleroyale::createEntity("smoke_grenade", (2120, -4, 86));
	sr\api\_battleroyale::createEntity("smoke_grenade", (3493, 392, 272));
	sr\api\_battleroyale::createEntity("smoke_grenade", (572, 555, 288));

	sr\api\_battleroyale::createEntity("bandage", (-1212, -627, 29));
	sr\api\_battleroyale::createEntity("bandage", (-1697, -437, 182));
	sr\api\_battleroyale::createEntity("bandage", (-2433, -157, 124));
	sr\api\_battleroyale::createEntity("bandage", (-3602, 5, 124));
	sr\api\_battleroyale::createEntity("bandage", (2009, -4, 86));
	sr\api\_battleroyale::createEntity("first_kit", (-1741, 2, 85));
	sr\api\_battleroyale::createEntity("first_kit", (-2392, 64, 284));
	sr\api\_battleroyale::createEntity("first_kit", (-2818, -431, 124));
	sr\api\_battleroyale::createEntity("first_kit", (1489, 392, 289));
	sr\api\_battleroyale::createEntity("first_kit", (192, 569, 76));
	sr\api\_battleroyale::createEntity("first_kit", (1923, -482, 182));
}
