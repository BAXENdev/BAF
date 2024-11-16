
#include "..\_loadoutsMacros.hpp"
// #include "..\..\radios\_radiosMacros.hpp"

params ["_unit"];

_side = side group _unit;

private ["_loadoutNames"];
_loadoutRegistry = bax_loadouts_loadouts get _side;
_loadoutNames = keys _loadoutRegistry;

_loadoutName = _unit getVariable [LOADOUT_ID,""];
_defaultIndex = _loadoutNames find _loadoutName;
if (_defaultIndex == -1) then { _defaultIndex = 0 };

_listSelectLoadout = [
    "LIST",
    "Loadouts",
    [
        _loadoutNames,
        _loadoutNames,
        _defaultIndex,
        7
    ],
    true
];

// _checkboxReloadRadios = [
//     "CHECKBOX",
//     "Reload Radios",
//     true,
//     false
// ];

[
    "Select Loadout",
    [_listSelectLoadout],
    {
        params ["_dialogValues","_arguments"];
        _dialogValues params ["_loadoutName"];
        _arguments params ["_unit"];

        _loadout = [_unit,_loadoutName] call bax_loadouts_fnc_assignLoadout;
        
        _loadout = [_loadout] call acre_api_fnc_filterUnitLoadout;
        #ifdef DO_DEBUG
        _msg = format ["Respawn player (%1) loadout: %2", name player, _loadout];
        #endif
        _unit setVariable [VAR_RESPAWN, _loadout, true];

        _unit setVariable [VARS_ROLE, _loadoutName, true];

        [EVENT_LOADOUT_UPDATED, [_loadoutName], _unit] call CBA_fnc_targetEvent;
    },
    {},
    [_unit]
] call zen_dialog_fnc_create;
