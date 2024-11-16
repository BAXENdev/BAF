
#include "_respawnVanillaMacros.hpp"

params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

_respawnLoadout = player getVariable [VAR_RESPAWN, EMPTY_LOADOUT];

#ifdef DO_DEBUG
_msg = format ["Respawn player (%1) loadout: %2", name player, _respawnLoadout];
#endif
player setUnitLoadout _respawnLoadout;
