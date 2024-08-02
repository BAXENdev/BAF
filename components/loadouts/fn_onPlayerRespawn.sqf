
#include "_loadoutsMacros.hpp"

params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

_loadout = player getVariable [VAR_RESPAWN,EMPTY_LOADOUT];
player setUnitLoadout _loadout;
