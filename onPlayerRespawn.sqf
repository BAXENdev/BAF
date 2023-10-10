
#include "macros\utilityMacros.hpp"

params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

_loadoutArray = _newUnit getVariable [, EMPTY_LOADOUT];
_newUnit setUnitLoadout _loadoutArray;
