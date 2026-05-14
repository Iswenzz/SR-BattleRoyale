#include sr\sys\_events;
#include sr\utils\_common;

main()
{
	if (!level.dvar["debug"])
		return;

	event("map", ::bots);
}

bots()
{
	waitMapLoad(1);
	spawnBots(1);
}
