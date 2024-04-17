
#include "_respawnMacros.hpp"

params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

_loadout = player getVariable [VAR_RESPAWN,EMPTY_LOADOUT];
player setUnitLoadout _loadout;

// TODO: Use respawn tickets here or in on respawn function?

// TODO: Move player to selected respawn
