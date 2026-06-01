# SR BattleRoyale

![](https://i.imgur.com/HOTSmrJ.png)

Call of Duty 4 Battle Royale is a first-person shooter that blends survival, exploration, and intense last-man-standing gameplay. Search the map for equipment and weaponry to gain the edge over your enemies — every match is a fight for survival. Built on top of [SR-Core](https://github.com/Iswenzz/SR-Core), the mod draws inspiration from titles like H1Z1, PlayerUnknown's Battlegrounds, and Fortnite.

The mod comes with its own custom map, ``MP_BR_BLACKOUT``, designed for over 30 players. The map pushes the Call of Duty 4 engine to its limits, making full use of everything the engine has to offer.

Each match begins with all players aboard a plane, ready to drop into the map by parachute. Once on the ground, you must scavenge for weapons and gear — grenades, smokes, flashbangs, med kits, and bandages are all scattered across the map. After some time an objective point appears on the minimap, which can also be opened as a full-screen map. The safe zone progressively closes in, and staying outside it will cost you health. The last player standing wins.

## Documentation
* [API](https://github.com/Iswenzz/SR-Dev/blob/master/docs/battleroyale.md)
* [Example](https://github.com/Iswenzz/SR-BattleRoyale/blob/master/maps/mp/mp_creek.gsc)

## Installation
Download the repository and extract it to your CoD4 ``/mods/sr_battleroyale`` directory. Then navigate to ``scripts`` and run ``build_iwds.sh`` to build the IWDs, followed by ``build.sh`` to compile mod.ff.

## Requirements
Before running the mod, install ``SR-CoD4x`` with ``gsclib`` and set up a ``MariaDB`` database. Once all three are in place, launch the server with start.sh.

## Building
_Pre-Requisites:_
1. [CoD4 Mod Tools](https://github.com/promod/CoD4-Mod-Tools)

## Server
1. [SR-CoD4x](https://github.com/Iswenzz/SR-CoD4x)
2. [gsclib](https://github.com/Iswenzz/gsclib)

## Contributors:
***Note:*** If you would like to contribute to this repository, feel free to send a pull request, and I will review your code. Also feel free to post about any problems that may arise in the issues section of the repository.

<a href="https://github.com/SheepWizard"><img src="https://avatars3.githubusercontent.com/u/8878844?s=100&v=4" height=64 style="border-radius: 50%"></a>
<a href="https://github.com/DavidMRyan"><img src="https://avatars2.githubusercontent.com/u/39206040?s=460&v=4" height=64 style="border-radius: 50%"></a>
<a href="https://github.com/CoteArthur"><img src="https://avatars3.githubusercontent.com/u/57949230?s=460&u=290da1b139e2acc823bbc6db0fc5f95a411cd60a&v=4" height=64 style="border-radius: 50%"></a>
<a href="https://github.com/BraXi"><img src="https://avatars1.githubusercontent.com/u/6434152?s=460&u=875493cee09d81c6ecbf1190e7c2a9a878b0b9d8&v=4" height=64 style="border-radius: 50%"></a>
