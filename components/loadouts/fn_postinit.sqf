
#include "_loadoutsMacros.hpp"

if (!hasInterface) exitWith {};

if (isMultiplayer) then {
    _side = side group player;
    _loadoutRegistryRoles = keys (bax_loadouts_loadouts get _side);

    _role = [player] call bax_common_fnc_getUnitRole;

    if !(_role in _loadoutRegistryRoles) then {
        _role = bax_loadouts_defaultLoadout get _side;
    };

    if !(_role in _loadoutRegistryRoles) exitWith {};

    [player,_role] call bax_loadouts_fnc_assignLoadout;
    _loadout = getUnitLoadout player;
    player setVariable [VAR_RESPAWN,_loadout,true];
} else {
    _side = side group player;

    _role = bax_loadouts_defaultLoadout get _side;

    if !(_role in _loadoutRegistryRoles) exitWith {};

    [player,_role] call bax_loadouts_fnc_assignLoadout;
    _loadout = getUnitLoadout player;
    player setVariable [VAR_RESPAWN,_loadout,true];
};
