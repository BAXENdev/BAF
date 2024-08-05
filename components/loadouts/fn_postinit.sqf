
#include "_loadoutsMacros.hpp"

if (!hasInterface) exitWith {};

if (isMultiplayer) then {
    _side = side group player;
    _loadoutRegistryRoles = keys (bax_loadouts_loadouts get _side);

    _role = [player] call bax_common_fnc_getUnitRole;

    if !(_role in _loadoutRegistryRoles) then {
        _role = VARS_DEFAULT;
    };

    _loadout = [player,_role] call bax_loadouts_fnc_assignLoadout;
    player setVariable [VAR_RESPAWN,_loadout,true];
} else {
    _side = side group player;

    _loadoutRegistryRoles = keys (bax_loadouts_loadouts get _side);

    _loadout = [player,VARS_DEFAULT] call bax_loadouts_fnc_assignLoadout;
    player setVariable [VAR_RESPAWN,_loadout,true];
};
