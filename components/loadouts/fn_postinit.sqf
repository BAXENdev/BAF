
#include "_loadoutsMacros.hpp"

if (!hasInterface) exitWith {};

_role = [player] call bax_common_fnc_getUnitRole;

_loadout = [player, _role] call bax_loadouts_fnc_assignLoadout;
if !(isNil "_loadout") then {
	player setVariable [VAR_RESPAWN, _loadout, true];
};
