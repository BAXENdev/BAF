
#include "_respawnVanillaMacros.hpp"

params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

_respawnLoadout = player getVariable [VAR_RESPAWN, EMPTY_LOADOUT];
player setUnitLoadout _respawnLoadout;
