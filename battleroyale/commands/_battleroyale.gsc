#include sr\sys\_admins;
#include sr\sys\_events;
#include sr\sys\_file;
#include sr\utils\_common;

main()
{
	cmd("br_origin_random",    "owner", ::cmd_OriginRandom,    "Save the current position into the origin file and assign a random item");
	cmd("br_origin",           "owner", ::cmd_Origin,          "Save the current position into the origin file");
	cmd("br_weapons_teleport", "owner", ::cmd_WeaponsTeleport, "Teleport to each weapons");
	cmd("br_weapons",          "owner", ::cmd_Weapons,         "Display the number of weapons");
}

cmd_Origin(args)
{
	file = FILE_Open(PATH_Mod(fmt("sr/data/debug/origins/%s", level.map)), "a");

	x = int(self.origin[0]);
	y = int(self.origin[1]);
	z = int(self.origin[2]) + 60;

	FILE_WriteLine(file, fmt("%d/%d/%d", x, y, z));
	FILE_Close(file);

	self pm(fmt("Saved origin: ^5%d %d %d", x, y, z));
}

cmd_OriginRandom(args)
{
	if (args.size < 1)
		return self pm("Usage: br_origin_random <type>");

	type = args[0];

	items = battleroyale\core\_game::getItemsByType("weapon");
	item = items[randomInt(items.size)];
	file = FILE_Open(PATH_Mod(fmt("sr/data/debug/origins/%s", level.map)), "a");

	x = int(self.origin[0]);
	y = int(self.origin[1]);
	z = int(self.origin[2]) + 60;

	FILE_WriteLine(file, fmt("sr\\core\\_api::createEntity(\"%s\", (%d, %d, %d));", item.id, x, y, z));
	FILE_Close(file);

	self pm(fmt("Saved %s: %s ^5%d %d %d", item.type, item.id, x, y, z));
}

cmd_Weapons(args)
{
	entities = battleroyale\core\_game::getEntitiesByType("weapon");
	message(fmt("^5Weapons: %d", entities.size));
}

cmd_WeaponsTeleport(args)
{
	entities = battleroyale\core\_game::getEntitiesByType("weapon");
	message(fmt("^5Weapons: %d", entities.size));

	for (i = 0; i < entities.size; i++)
	{
		self setOrigin(entities[i].origin);
		wait 1;
	}
}
