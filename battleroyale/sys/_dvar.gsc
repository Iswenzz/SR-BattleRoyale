#include sr\sys\_dvar;

main()
{
	addDvar("mod", "mod_id", "battleroyale");
	addDvar("allies_health", "dr_allies_health", 200, 1, 1000, "int");
	addDvar("axis_health", "dr_axis_health", 200, 1, 1000, "int");
	addDvar("match_need_players", "br_match_need_players", 2, 1, 10, "int");
	addDvar("rounds", "br_rounds", 4, 1, 10, "int");
	addDvar("map_vote", "br_map_vote", 1, 0, 1, "int");
	addDvar("event", "br_event", 0, 0, 1, "int");
	addDvar("debug", "br_debug", 0, 0, 1, "int");
	addDvar("votemap", "br_votemap", 1, 0, 1, "int");
	addDvar("lobby_countdown", "br_lobby_countdown", 10, 0, 60, "int");
	addDvar("spawn_time", "br_spawn_time", 4, 1, 30, "int");
	addDvar("zone_time", "br_zone_time", 90, 1, 1000, "int");
	addDvar("zone_levels", "br_zone_levels", 0, 0, 4, "int");
	addDvar("plane_duration", "br_plane_seconds", 15, 1, 120, "int");
	addDvar("randomize", "br_randomize", 1, 0, 1, "int");

	addDvar("demos", "sr_demos", 1, 0, 1, "int");
	addDvar("demos_timeout", "sr_demos_timeout", 120, 20, 1200, "int");
	addDvar("map_edition", "sr_map_edition", 0, 0, 1, "int");

	setDvar("g_friendlyPlayerCanBlock", 0);
	setDvar("g_deadChat", 1);
	setDvar("g_knockback", 1000);
	setDvar("g_speed", 190);
	setDvar("g_gravity", 800);
	setDvar("jump_height", 39);
	setDvar("jump_slowdownEnable", 0);
	setDvar("bullet_penetrationEnabled", 1);

	makeDvarServerInfo("mod_author", "Iswenzz");
	setDvar("mod_author", "Iswenzz");
}
