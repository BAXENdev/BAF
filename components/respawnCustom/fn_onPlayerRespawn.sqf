
#include "_respawnCustomMacros.hpp"

params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

_respawnLoadout = player getVariable [VAR_RESPAWN, EMPTY_LOADOUT];
player setUnitLoadout _respawnLoadout;

[player, bax_respawn_respawnPosition select 0] call BIS_fnc_moveToRespawnPosition;
