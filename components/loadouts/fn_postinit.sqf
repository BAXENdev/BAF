
#include "_loadoutsMacros.hpp"

if (!hasInterface) exitWith {};

_role = [player] call bax_common_fnc_getUnitRole;

_loadoutId = player getVariable [LOADOUT_ID, nil];
// If assign loadout was run from object init on player, it is already set, so we dont re-set.
if (isNil "_loadoutId") then {
	_role = [player] call bax_common_fnc_getUnitRole;
	
	_loadout = [player, _role] call bax_loadouts_fnc_assignLoadout;
	if !(isNil "_loadout") then {
		player setVariable [VAR_RESPAWN, _loadout, true];
	};
};