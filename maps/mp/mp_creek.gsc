#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;
#include common_scripts\utility;

main()
{
	setExpFog(612, 25000, 0.613, 0.671, 0.75, 0);
	visionSetNaked("mp_creek", 0);

	maps\mp\mp_creek_fx::main();
	maps\mp\_load::main();
	maps\mp\_compass::setupMiniMap("compass_map_mp_creek");

	ambientPlay("ambient_creek_ext0");

	game["allies"] = "sas";
	game["axis"] = "russian";
	game["attackers"] = "axis";
	game["defenders"] = "allies";
	game["allies_soldiertype"] = "woodland";
	game["axis_soldiertype"] = "woodland";

	sr\api\_battleroyale::removeAllMapTriggers();
	sr\api\_battleroyale::removeAllSpawns();
	sr\api\_battleroyale::createSpawn((-3127, 7024, 232), -80);

	sr\api\_battleroyale::createPlanePath((-6588, 7764, 960), (2000, 6029, 960), -10);
	sr\api\_battleroyale::createPlanePath((2089, 3007, 960), (-4328, 9038, 960), 137);
	sr\api\_battleroyale::createPlaneDrop((-748, 6798, 800));
	sr\api\_battleroyale::createPlaneDropTrigger((-748, 6798, 900), 3000);
	sr\api\_battleroyale::createPlaneDuration(15);

	sr\api\_battleroyale::createZoneLevels(3);
	sr\api\_battleroyale::createZone((988, 5978, -400));
	sr\api\_battleroyale::createZone((-288, 4596, -400));
	sr\api\_battleroyale::createZone((-2372, 7277, -400));
	sr\api\_battleroyale::createZone((-4168, 6531, -400));
	sr\api\_battleroyale::createZone((-3468, 8351, -400));

	sr\api\_battleroyale::createLobbyBlocker((-2889, 6700, 232), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((-3227, 6944, 232), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((-3227, 7018, 232), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((-3288, 7230, 232), 150, 100);
	sr\api\_battleroyale::createLobbyBlocker((-2880, 6929, 295), 150, 100);

	spawnEntities();
}

spawnEntities()
{
	sr\api\_battleroyale::createEntity("ak47", (-3492, 6939, 223));
	sr\api\_battleroyale::createEntity("ak47", (-888, 7431, 99));
	sr\api\_battleroyale::createEntity("ak74u", (-3276, 7048, 232));
	sr\api\_battleroyale::createEntity("at4", (-588, 5145, 357));
	sr\api\_battleroyale::createEntity("beretta", (-2837, 6792, 232));
	sr\api\_battleroyale::createEntity("colt45", (-964, 5207, 239));
	sr\api\_battleroyale::createEntity("deserteagle", (-2053, 7076, 372));
	sr\api\_battleroyale::createEntity("deserteagle", (-3879, 7755, 256));
	sr\api\_battleroyale::createEntity("deserteaglegold", (407, 4950, 50));
	sr\api\_battleroyale::createEntity("dragunov", (178, 3720, 90));
	sr\api\_battleroyale::createEntity("dragunov", (-3776, 6170, 244));
	sr\api\_battleroyale::createEntity("dragunov", (-3868, 8071, 256));
	sr\api\_battleroyale::createEntity("g3", (-4326, 6229, 218));
	sr\api\_battleroyale::createEntity("g36c", (-2555, 7587, 294));
	sr\api\_battleroyale::createEntity("g36c", (-609, 5372, 353));
	sr\api\_battleroyale::createEntity("m1014", (53, 7562, -12));
	sr\api\_battleroyale::createEntity("m1014", (597, 3869, 90));
	sr\api\_battleroyale::createEntity("m14", (-3236, 7035, 385));
	sr\api\_battleroyale::createEntity("m16", (572, 4873, 187));
	sr\api\_battleroyale::createEntity("m21", (-132, 7842, 81));
	sr\api\_battleroyale::createEntity("m21", (-2185, 6262, 112));
	sr\api\_battleroyale::createEntity("m4", (-2968, 6728, 384));
	sr\api\_battleroyale::createEntity("m40a3", (-2762, 7071, 232));
	sr\api\_battleroyale::createEntity("m40a3", (-31, 4854, 102));
	sr\api\_battleroyale::createEntity("m60e4", (-1811, 5711, 336));
	sr\api\_battleroyale::createEntity("m60e4", (-3273, 7620, 234));
	sr\api\_battleroyale::createEntity("m60e4", (-4260, 5799, 244));
	sr\api\_battleroyale::createEntity("m60e4", (918, 5820, 106));
	sr\api\_battleroyale::createEntity("mp44", (-1380, 5537, 41));
	sr\api\_battleroyale::createEntity("mp44", (-1425, 6299, -59));
	sr\api\_battleroyale::createEntity("remington700", (-375, 4112, 122));
	sr\api\_battleroyale::createEntity("rpd", (-2999, 7110, 242));
	sr\api\_battleroyale::createEntity("rpg", (-1240, 5971, 264));
	sr\api\_battleroyale::createEntity("rpg", (-2652, 5693, 325));
	sr\api\_battleroyale::createEntity("rpg", (-3802, 7801, 256));
	sr\api\_battleroyale::createEntity("rpg", (458, 4106, 196));
	sr\api\_battleroyale::createEntity("saw", (-1610, 5765, 345));
	sr\api\_battleroyale::createEntity("skorpion", (-192, 6069, 351));
	sr\api\_battleroyale::createEntity("skorpion", (-2254, 6041, 64));
	sr\api\_battleroyale::createEntity("skorpion", (665, 4060, 188));
	sr\api\_battleroyale::createEntity("uzi", (-3505, 5515, 236));
	sr\api\_battleroyale::createEntity("uzi", (-3757, 5596, 244));
	sr\api\_battleroyale::createEntity("uzi", (678, 6890, 216));

	sr\api\_battleroyale::createEntity("12_gauge", (-1330, 5242, 53));
	sr\api\_battleroyale::createEntity("12_gauge", (42, 3927, 90));
	sr\api\_battleroyale::createEntity("45", (-2893, 7163, 232));
	sr\api\_battleroyale::createEntity("45", (-3015, 7277, 268));
	sr\api\_battleroyale::createEntity("45", (-3254, 5857, 276));
	sr\api\_battleroyale::createEntity("5_45", (-1418, 5188, 47));
	sr\api\_battleroyale::createEntity("5_45", (-158, 5990, 338));
	sr\api\_battleroyale::createEntity("5_45", (-2549, 7529, 294));
	sr\api\_battleroyale::createEntity("5_45", (414, 4985, 187));
	sr\api\_battleroyale::createEntity("7_62", (-1150, 6022, 253));
	sr\api\_battleroyale::createEntity("7_62", (-2105, 5755, 329));
	sr\api\_battleroyale::createEntity("7_62", (-3668, 8197, 256));
	sr\api\_battleroyale::createEntity("7_62", (-4058, 6024, 244));
	sr\api\_battleroyale::createEntity("7_62", (-4782, 6357, 232));
	sr\api\_battleroyale::createEntity("7_62", (280, 3727, 90));
	sr\api\_battleroyale::createEntity("7_62", (454, 4145, 90));
	sr\api\_battleroyale::createEntity("9mm", (-3020, 5516, 231));
	sr\api\_battleroyale::createEntity("9mm", (-3541, 5607, 270));
	sr\api\_battleroyale::createEntity("9mm", (-3737, 6212, 244));
	sr\api\_battleroyale::createEntity("9mm", (-813, 7441, 98));
	sr\api\_battleroyale::createEntity("rocket", (-2026, 7156, 377));
	sr\api\_battleroyale::createEntity("rocket", (-2339, 5985, 54));
	sr\api\_battleroyale::createEntity("rocket", (-2772, 6940, 384));
	sr\api\_battleroyale::createEntity("rocket", (-3616, 8231, 293));
	sr\api\_battleroyale::createEntity("rocket", (-3712, 5731, 280));
	sr\api\_battleroyale::createEntity("rocket", (-5304, 6811, 252));
	sr\api\_battleroyale::createEntity("rocket", (-992, 5700, 400));

	sr\api\_battleroyale::createEntity("flash_grenade", (-1508, 5339, 36));
	sr\api\_battleroyale::createEntity("flash_grenade", (-2994, 6660, 232));
	sr\api\_battleroyale::createEntity("flash_grenade", (-3, 7692, -23));
	sr\api\_battleroyale::createEntity("flash_grenade", (-3326, 5751, 10));
	sr\api\_battleroyale::createEntity("flash_grenade", (-3595, 8151, 256));
	sr\api\_battleroyale::createEntity("flash_grenade", (-4092, 5655, 244));
	sr\api\_battleroyale::createEntity("flash_grenade", (-4285, 5714, 244));
	sr\api\_battleroyale::createEntity("flash_grenade", (486, 4962, 50));
	sr\api\_battleroyale::createEntity("frag_grenade", (-2245, 5298, 15));
	sr\api\_battleroyale::createEntity("frag_grenade", (-3034, 7149, 242));
	sr\api\_battleroyale::createEntity("frag_grenade", (-3398, 6845, 224));
	sr\api\_battleroyale::createEntity("frag_grenade", (253, 3569, 103));
	sr\api\_battleroyale::createEntity("smoke_grenade", (-2848, 6460, 287));
	sr\api\_battleroyale::createEntity("smoke_grenade", (-3059, 8065, 254));
	sr\api\_battleroyale::createEntity("smoke_grenade", (-3132, 7469, 232));
	sr\api\_battleroyale::createEntity("smoke_grenade", (-3263, 6925, 232));
	sr\api\_battleroyale::createEntity("smoke_grenade", (-3964, 6046, 244));
	sr\api\_battleroyale::createEntity("smoke_grenade", (-939, 3413, 152));
	sr\api\_battleroyale::createEntity("smoke_grenade", (933, 4400, 110));

	sr\api\_battleroyale::createEntity("bandage", (-1444, 5537, 34));
	sr\api\_battleroyale::createEntity("bandage", (-2208, 5594, 6));
	sr\api\_battleroyale::createEntity("bandage", (-2420, 5753, 325));
	sr\api\_battleroyale::createEntity("bandage", (-2946, 7266, 232));
	sr\api\_battleroyale::createEntity("bandage", (-2985, 7186, 384));
	sr\api\_battleroyale::createEntity("bandage", (-3046, 7204, 386));
	sr\api\_battleroyale::createEntity("bandage", (-3061, 6661, 232));
	sr\api\_battleroyale::createEntity("bandage", (-3901, 7868, 256));
	sr\api\_battleroyale::createEntity("bandage", (-3969, 7889, 256));
	sr\api\_battleroyale::createEntity("bandage", (-67, 4729, 102));
	sr\api\_battleroyale::createEntity("bandage", (77, 7651, -23));
	sr\api\_battleroyale::createEntity("first_kit", (-1533, 5874, 322));
	sr\api\_battleroyale::createEntity("first_kit", (-1997, 7786, 295));
	sr\api\_battleroyale::createEntity("first_kit", (-3130, 6780, 232));
	sr\api\_battleroyale::createEntity("first_kit", (-3194, 7824, 235));
	sr\api\_battleroyale::createEntity("first_kit", (-3424, 5488, -58));
	sr\api\_battleroyale::createEntity("first_kit", (-3500, 7991, 256));
	sr\api\_battleroyale::createEntity("first_kit", (-3689, 5648, 244));
	sr\api\_battleroyale::createEntity("first_kit", (-4172, 5735, 244));
	sr\api\_battleroyale::createEntity("first_kit", (1280, 6646, 210));
	sr\api\_battleroyale::createEntity("first_kit", (296, 5919, 131));
}
