#include sr\sys\_events;
#include sr\utils\_common;

playerConnect()
{
	self endon("connect");
	self endon("disconnect");
	level notify("connected", self);

	self.enable3DWaypoints = true;
	self.enableDeathIcons = true;
	self.classType = undefined;
	self.selectedClass = false;
	self.teamKill = true;
	self.hidden = false;

	if (game["state"] == "end")
		return;

	if (!self isFirstConnection())
	{
		self.score = self.pers["score"];
		self.kills = self.pers["kills"];
		self.assists = self.pers["assists"];
		self.deaths = self.pers["deaths"];

		self sr\core\_teams::setTeam("allies");
		return;
	}
	self.pers["score"] = 0;
	self.pers["kills"] = 0;
	self.pers["deaths"] = 0;
	self.pers["assists"] = 0;
	self.pers["lifes"] = 0;
	self.pers["headshots"] = 0;
	self.pers["knifes"] = 0;
	self.pers["activator"] = 0;
	self.pers["isDog"] = false;

	self openMenu("main_mp");
	self thread serverDvars();
}

playerDisconnect()
{
	level notify("disconnected", self);
	self cleanUp();
}

playerLastStand(eInflictor, attacker, iDamage, sMeansOfDeath, sWeapon, vDir, sHitLoc, psOffsetTime, deathAnimDuration)
{
	self suicide();
}

playerDamage(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, sWeapon, vPoint, vDir, sHitLoc, psOffsetTime)
{
	if (self.sessionteam == "spectator" || game["state"] == "end")
		return;

	level notify("player_damage", self, eAttacker, iDamage, iDFlags, sMeansOfDeath, sWeapon, vPoint, vDir, sHitLoc, psOffsetTime);

	if (isPlayer(eAttacker) && sMeansOfDeath == "MOD_MELEE" && isWallbang(eAttacker, self))
		return;

	if (isPlayer(eAttacker) && eAttacker != self)
		eAttacker maps\mp\gametypes\_weapons::checkHit(sWeapon);

	iDFlags |= level.iDFLAGS_NO_KNOCKBACK;

	self doPlayerDamage(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, sWeapon, vPoint, vDir, sHitLoc, psOffsetTime);
}

playerKilled(eInflictor, attacker, iDamage, sMeansOfDeath, sWeapon, vDir, sHitLoc, psOffsetTime, deathAnimDuration)
{
	self endon("spawned");
	self notify("killed_player");
	self notify("death");

	if (self.sessionteam == "spectator" || game["state"] == "end")
		return;

	level notify("player_killed", self, eInflictor, attacker, iDamage, sMeansOfDeath, sWeapon, vDir, sHitLoc, psOffsetTime, deathAnimDuration);

	if (sHitLoc == "head" && sMeansOfDeath != "MOD_MELEE")
		sMeansOfDeath = "MOD_HEAD_SHOT";

	if (game["state"] != "playing")
	{
		self eventSpawn();
		return;
	}
	if (sMeansOfDeath != "MOD_SUICIDE")
	{
		deaths = self maps\mp\gametypes\_persistence::statGet("DEATHS");
		self maps\mp\gametypes\_persistence::statSet("DEATHS", deaths + 1);
		self.deaths++;
		self.pers["deaths"]++;
		obituary(self, attacker, sWeapon, sMeansOfDeath);
	}

	self thread battleroyale\core\_game::dropWeapon();
	self sr\core\_teams::setTeam("axis");
	self sr\core\_teams::setSpectatePermissions();
	self eventSpectator();
	self thread ragdoll(sHitLoc, vDir, sWeapon, eInflictor, sMeansOfDeath, deathAnimDuration);

	if (!isPlayer(attacker) || attacker == self)
		return;

	attacker.kills++;
	attacker.pers["kills"]++;
	sr\core\_rank::processXpReward(sMeansOfDeath, attacker, self);

	self cleanUp();
	attacker setLowerMessage("^7You killed ^9" + self.name);
	attacker thread clearLowerMessageAfterTime();

	self thread sr\core\_killcam::killcam(attacker.number, -1, sWeapon, 1.5, 0, 0, 0, 6, undefined, attacker);
}

playerSpawn()
{
	if (game["state"] == "end")
		return;

	level notify("jumper", self);
	self cleanUp();

	self sr\core\_teams::setHealth();
	self detachAll();

	self setMoveSpeed(190);
	self setMoveSpeedScale(1.0);

	self.pers["weapons"] = [];

	self setModel("body_mp_usmc_cqb");
	self setViewModel("viewmodel_hands_zombie");

	self spawnPlayer();

	self giveWeapon("dog_mp");
	self setSpawnWeapon("dog_mp");
	self setActionSlot(4, "weapon", "flash_grenade_mp");

	if (game["state"] != "playing")
		self disableWeapons();

	self notify("spawned_player");
	level notify("player_spawn", self);
}

playerSpectator()
{
	self endon("disconnect");
	self cleanUp();
	level notify("player_spectator", self);
}

serverDvars()
{
	self endon("disconnect");

	wait 3;
	self setClientDvars(
		"ui_3dwaypointtext", "1",
		"ui_deathicontext", "1",
		"cl_maxpackets", 125,
		"rate", 100000,
		"ip", getDvar("net_ip"),
		"port", getDvar("net_port")
	);
	wait 0.05;
	self setClientDvars(
		"show_hud", "true",
		"hud_enable", 1,
		"cg_drawSpectatorMessages", 1,
		"player_sprintTime", 4,
		"ui_hud_hardcore", 1,
		"ui_uav_client", 0
	);
	wait 0.05;
	self setClientDvars(
		"cef_url", "https://sr-speedrun.com/media",
		"fx_enable", 1,
		"ragdoll_enable", 1,
		"cg_drawThroughWalls", 0
	);
}
