main()
{
	maps\mp\mp_crossfire_fx::main();
	maps\createart\mp_crossfire_art::main();
	maps\mp\_load::main();

	maps\mp\_compass::setupMiniMap("compass_map_mp_crossfire");

	ambientPlay("ambient_crossfire");

	game["allies"] = "marines";
	game["axis"] = "opfor";
	game["attackers"] = "axis";
	game["defenders"] = "allies";
	game["allies_soldiertype"] = "desert";
	game["axis_soldiertype"] = "desert";

	setdvar("r_specularcolorscale", "1.85");
	setdvar("compassmaxrange", "2100");

	sr\api\_battleroyale::removeAllMapTriggers();
	sr\api\_battleroyale::removeAllSpawns();
	sr\api\_battleroyale::createSpawn((5163, -668, 76), 107);

	sr\api\_battleroyale::createPlanePath((3662, -5396, 883), (5526, -791, 883), 68);
	sr\api\_battleroyale::createPlanePath((3283, 18, 843), (5586, -4465, 843), -64);
	sr\api\_battleroyale::createPlaneDrop((4691, -3031, 778));
	sr\api\_battleroyale::createPlaneDropTrigger((4691, -3031, 778), 2000);
	sr\api\_battleroyale::createPlaneDuration(10);

	sr\api\_battleroyale::createZoneLevels(4);
	sr\api\_battleroyale::createZone((4868, -962, 84));
	sr\api\_battleroyale::createZone((3737, -1107, 57));
	sr\api\_battleroyale::createZone((5713, -2136, 81));
	sr\api\_battleroyale::createZone((3924, -2332, -6));
	sr\api\_battleroyale::createZone((3958, -3752, -84));
	sr\api\_battleroyale::createZone((4905, -4525, -91));
	sr\api\_battleroyale::createZone((6028, -4305, -94));

	sr\api\_battleroyale::createLobbyBlocker((5021, -698, 76), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((4838, -619, 76), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((4448, -448, 84), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((4377, -264, 76), 150, 100);

	spawnEntities();
}

spawnEntities()
{
	sr\api\_battleroyale::createEntity("beretta", (4281, -3083, 132));
	sr\api\_battleroyale::createEntity("beretta", (4333, -2324, 9));
	sr\api\_battleroyale::createEntity("beretta", (5425, -3621, -11));
	sr\api\_battleroyale::createEntity("beretta", (6597, -4584, 15));
	sr\api\_battleroyale::createEntity("colt45", (3380, -3379, -83));
	sr\api\_battleroyale::createEntity("colt45", (3469, -1307, 86));
	sr\api\_battleroyale::createEntity("colt45", (3747, -3962, 53));
	sr\api\_battleroyale::createEntity("colt45", (4195, -2832, -3));
	sr\api\_battleroyale::createEntity("colt45", (5131, -679, 76));
	sr\api\_battleroyale::createEntity("deserteagle", (5644, -4122, -93));
	sr\api\_battleroyale::createEntity("deserteaglegold", (4647, -1910, 220));
	sr\api\_battleroyale::createEntity("deserteaglegold", (5318, -763, 148));
	sr\api\_battleroyale::createEntity("g3", (4805, -4970, -77));
	sr\api\_battleroyale::createEntity("g3", (5903, -1497, 84));
	sr\api\_battleroyale::createEntity("g36c", (3083, -449, 68));
	sr\api\_battleroyale::createEntity("g36c", (3812, -1606, 86));
	sr\api\_battleroyale::createEntity("g36c", (5505, -1149, 84));
	sr\api\_battleroyale::createEntity("g36c", (5917, -1549, 220));
	sr\api\_battleroyale::createEntity("m1014", (3163, -1060, 79));
	sr\api\_battleroyale::createEntity("m1014", (3703, -2090, -1));
	sr\api\_battleroyale::createEntity("m14", (4472, -5096, 84));
	sr\api\_battleroyale::createEntity("m16", (4235, -3050, -3));
	sr\api\_battleroyale::createEntity("m16", (6047, -2513, 88));
	sr\api\_battleroyale::createEntity("m21", (3167, -4034, 53));
	sr\api\_battleroyale::createEntity("m4", (4090, -4725, 84));
	sr\api\_battleroyale::createEntity("m4", (5403, -3574, -11));
	sr\api\_battleroyale::createEntity("m4", (6666, -4337, 100));
	sr\api\_battleroyale::createEntity("m40a3", (6241, -2183, 105));
	sr\api\_battleroyale::createEntity("m60e4", (3639, -1333, 86));
	sr\api\_battleroyale::createEntity("m60e4", (3983, -2696, 132));
	sr\api\_battleroyale::createEntity("m60e4", (5524, -1133, 220));
	sr\api\_battleroyale::createEntity("mp44", (3270, -3334, -83));
	sr\api\_battleroyale::createEntity("mp5", (3169, -3775, -83));
	sr\api\_battleroyale::createEntity("mp5", (5192, -992, 220));
	sr\api\_battleroyale::createEntity("p90", (3952, -3678, -83));
	sr\api\_battleroyale::createEntity("remington700", (3611, -3601, -83));
	sr\api\_battleroyale::createEntity("remington700", (6461, -4401, 108));
	sr\api\_battleroyale::createEntity("rpd", (3514, -4274, 78));
	sr\api\_battleroyale::createEntity("rpd", (5641, -3178, -13));
	sr\api\_battleroyale::createEntity("rpg", (3060, -376, 68));
	sr\api\_battleroyale::createEntity("rpg", (6345, -1365, 70));
	sr\api\_battleroyale::createEntity("saw", (4826, -1983, 220));
	sr\api\_battleroyale::createEntity("saw", (5318, -2511, 81));
	sr\api\_battleroyale::createEntity("skorpion", (4565, -1763, 92));
	sr\api\_battleroyale::createEntity("skorpion", (4809, -1855, 220));
	sr\api\_battleroyale::createEntity("skorpion", (5897, -2722, 88));
	sr\api\_battleroyale::createEntity("usp", (4123, -4581, 85));
	sr\api\_battleroyale::createEntity("usp", (4385, -4908, -51));
	sr\api\_battleroyale::createEntity("usp", (4446, -214, 76));
	sr\api\_battleroyale::createEntity("usp", (5633, -2913, 88));
	sr\api\_battleroyale::createEntity("winchester1200", (4278, -4913, 84));
	sr\api\_battleroyale::createEntity("winchester1200", (4507, -362, 76));
	sr\api\_battleroyale::createEntity("winchester1200", (5224, -3142, -11));
	sr\api\_battleroyale::createEntity("winchester1200", (5481, -4849, -77));
	sr\api\_battleroyale::createEntity("winchester1200", (5655, -4207, -96));
	sr\api\_battleroyale::createEntity("winchester1200", (5756, -1803, 84));

	sr\api\_battleroyale::createEntity("12_gauge", (3360, -3720, -79));
	sr\api\_battleroyale::createEntity("12_gauge", (4401, -2170, 9));
	sr\api\_battleroyale::createEntity("12_gauge", (5025, -4960, -77));
	sr\api\_battleroyale::createEntity("12_gauge", (5030, -3092, -11));
	sr\api\_battleroyale::createEntity("12_gauge", (5596, -1009, 84));
	sr\api\_battleroyale::createEntity("12_gauge", (5865, -1491, 220));
	sr\api\_battleroyale::createEntity("12_gauge", (6526, -4507, 13));
	sr\api\_battleroyale::createEntity("45", (4331, -1903, 196));
	sr\api\_battleroyale::createEntity("45", (4460, -1880, 227));
	sr\api\_battleroyale::createEntity("45", (4487, -4914, -51));
	sr\api\_battleroyale::createEntity("45", (4705, -265, 76));
	sr\api\_battleroyale::createEntity("45", (6422, -2064, 105));
	sr\api\_battleroyale::createEntity("5_45", (4306, -46, 71));
	sr\api\_battleroyale::createEntity("5_45", (4402, -2763, 132));
	sr\api\_battleroyale::createEntity("5_45", (4501, -4839, 84));
	sr\api\_battleroyale::createEntity("5_45", (5124, -413, 76));
	sr\api\_battleroyale::createEntity("5_45", (5772, -4882, -77));
	sr\api\_battleroyale::createEntity("5_45", (5952, -2655, 88));
	sr\api\_battleroyale::createEntity("7_62", (3244, -1354, 86));
	sr\api\_battleroyale::createEntity("7_62", (4017, -1577, 86));
	sr\api\_battleroyale::createEntity("7_62", (4413, -2911, 132));
	sr\api\_battleroyale::createEntity("7_62", (5479, -1284, 220));
	sr\api\_battleroyale::createEntity("7_62", (5703, -852, 84));
	sr\api\_battleroyale::createEntity("7_62", (6010, -2164, 105));
	sr\api\_battleroyale::createEntity("7_62", (6013, -1342, 84));
	sr\api\_battleroyale::createEntity("9mm", (3625, -4643, -78));
	sr\api\_battleroyale::createEntity("9mm", (4629, -303, 76));
	sr\api\_battleroyale::createEntity("rocket", (3755, -3524, -83));
	sr\api\_battleroyale::createEntity("rocket", (4463, -2415, 9));
	sr\api\_battleroyale::createEntity("rocket", (5889, -1558, 84));
	sr\api\_battleroyale::createEntity("rocket", (6201, -1171, 220));

	sr\api\_battleroyale::createEntity("flash_grenade", (3052, -3958, 78));
	sr\api\_battleroyale::createEntity("flash_grenade", (5586, -821, 256));
	sr\api\_battleroyale::createEntity("flash_grenade", (5673, -4865, -77));
	sr\api\_battleroyale::createEntity("flash_grenade", (5792, -3050, 88));
	sr\api\_battleroyale::createEntity("frag_grenade", (3068, -4004, 78));
	sr\api\_battleroyale::createEntity("frag_grenade", (3713, -4749, -78));
	sr\api\_battleroyale::createEntity("frag_grenade", (4069, -2704, -3));
	sr\api\_battleroyale::createEntity("frag_grenade", (6024, -2693, 88));
	sr\api\_battleroyale::createEntity("frag_grenade", (6138, -1107, 84));
	sr\api\_battleroyale::createEntity("frag_grenade", (6241, -2336, 105));
	sr\api\_battleroyale::createEntity("smoke_grenade", (3543, -4229, 78));
	sr\api\_battleroyale::createEntity("smoke_grenade", (3558, -4279, -71));
	sr\api\_battleroyale::createEntity("smoke_grenade", (3595, -3559, 53));
	sr\api\_battleroyale::createEntity("smoke_grenade", (4737, -1924, 92));
	sr\api\_battleroyale::createEntity("smoke_grenade", (5728, -3146, -12));
	sr\api\_battleroyale::createEntity("smoke_grenade", (6318, -1757, 105));

	sr\api\_battleroyale::createEntity("bandage", (3166, -1129, 80));
	sr\api\_battleroyale::createEntity("bandage", (3215, -1286, 86));
	sr\api\_battleroyale::createEntity("bandage", (3989, -2703, -3));
	sr\api\_battleroyale::createEntity("bandage", (3995, -1846, 86));
	sr\api\_battleroyale::createEntity("bandage", (4083, -4922, -51));
	sr\api\_battleroyale::createEntity("bandage", (4128, -3029, 152));
	sr\api\_battleroyale::createEntity("bandage", (4446, -1859, 92));
	sr\api\_battleroyale::createEntity("bandage", (4469, -4967, -17));
	sr\api\_battleroyale::createEntity("bandage", (4484, -1835, 227));
	sr\api\_battleroyale::createEntity("bandage", (5249, -476, 76));
	sr\api\_battleroyale::createEntity("bandage", (5330, -4979, -77));
	sr\api\_battleroyale::createEntity("bandage", (5605, -2635, 88));
	sr\api\_battleroyale::createEntity("first_kit", (3291, -3248, -83));
	sr\api\_battleroyale::createEntity("first_kit", (4088, -2758, 132));
	sr\api\_battleroyale::createEntity("first_kit", (4551, -2004, 92));
	sr\api\_battleroyale::createEntity("first_kit", (5182, -3410, -11));
	sr\api\_battleroyale::createEntity("first_kit", (5479, -2251, 103));
	sr\api\_battleroyale::createEntity("first_kit", (5934, -1302, 220));
	sr\api\_battleroyale::createEntity("first_kit", (6448, -1751, 105));
}
