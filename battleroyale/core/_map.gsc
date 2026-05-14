#include sr\sys\_events;
#include sr\sys\_file;
#include sr\utils\_common;

main()
{
	level.spawn = [];
	level.colliders = [];
	level.tempEntity = spawn("script_model", (0, 0, 0));
	level.files["rotation"] = PATH_Mod("data/match/rotation.txt");
	level.files["maps"] = PATH_Mod("data/match/maps.txt");
	level.rotation = sr\core\_map::getRotation(false);
	level.randomizedMaps = [];

	thread sr\core\_map::randomizeMaps(5);

	event("map", ::placeSpawns);
}

placeSpawns()
{
	level.spawn["allies"] = getEntArray("mp_dm_spawn", "classname");
	level.spawn["axis"] = getEntArray("mp_tdm_spawn", "classname");

	if (getEntArray("mp_global_intermission", "classname").size == 0)
	{
		level.spawn["spectator"] = spawn("script_origin", (0, 0, 0));
		level.spawn["spectator"].angles = (0, 0, 0);
	}
	else
		level.spawn["spectator"] = getEntArray("mp_global_intermission", "classname")[0];

	for (i = 0; i < level.spawn["allies"].size; i++)
		level.spawn["allies"][i] placeSpawnPoint();
	for (i = 0; i < level.spawn["axis"].size; i++)
		level.spawn["axis"][i] placeSpawnPoint();

	x = 0;
	y = 0;
	z = 0;

	angles = (0, 180, 0);

	for (i = 0; i < level.spawn["allies"].size; i++)
	{
		x += level.spawn["allies"][i].origin[0];
		y += level.spawn["allies"][i].origin[1];
	}
	if (level.spawn["allies"].size)
	{
		x /= level.spawn["allies"].size;
		y /= level.spawn["allies"].size;
		z = level.spawn["allies"][0].origin[2];

		angles = level.spawn["allies"][0].angles;
	}
	if (!isDefined(level.spawn["player"]))
	{
		level.spawn["player"] = spawn("script_origin", (x, y, z));
		level.spawn["player"].angles = angles;
		level.spawn["player"] placeSpawnPoint();
	}
}

end(map)
{
	if (game["state"] == "end")
		return;

	game["state"] = "end";
	level notify("intermission");
	level notify("game over");
	level notify("game_ended");

	// Sequence
	endMusic();
	endSpectate();

	if (IsNullOrEmpty(map))
		map = voteNextMap();

	credits();
	intermission();

	// Next map
	setDvar("sv_maprotationcurrent", "gametype " + getDvar("g_gametype") + " map " + map);
	levelExit(false);
}

endMusic()
{
	ambientPlay("end_map");
}

endSpectate()
{
	setDvar("g_deadChat", 1);

	players = getAllPlayers();
	for (i = 0; i < players.size; i++)
	{
		players[i] closeMenu();
		players[i] closeInGameMenu();
		players[i] freezeControls(true);
		players[i] cleanUp();
	}
	wait 0.05;

	players = getAllPlayers();
	for (i = 0; i < players.size; i++)
	{
		players[i] sr\core\_teams::setSpectator();
		players[i] allowSpectateTeam("allies", false);
		players[i] allowSpectateTeam("axis", false);
		players[i] allowSpectateTeam("freelook", false);
		players[i] allowSpectateTeam("none", true);
	}
}

voteNextMap()
{
	maps = level.randomizedMaps;
	autoPick = maps[randomInt(maps.size)];

	if (level.dvar["map_vote"])
	{
		result = sr\core\_poll::poll("Next map", maps);
		if (isDefined(result))
		{
			level sr\huds\_notifications::show(fmt("^5Next map: ^7%s", result.label));
			return result.label;
		}
		return autoPick;
	}
	wait 18;
	return autoPick;
}

credits()
{
	sr\huds\_credits::start();
}

intermission()
{
	players = getAllPlayers();
	for (i = 0; i < players.size; i++)
		players[i].sessionstate = "intermission";
	wait 10;
}
