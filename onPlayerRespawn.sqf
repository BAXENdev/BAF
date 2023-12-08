
#include "macros\loadoutMacros.hpp"

params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

_loadout = GETVAR(player,VARS_LOADOUT_RESPAWN,EMPTY_LOADOUT);
player setUnitLoadout _loadout;
