
#include "..\_loadoutsMacros.hpp"

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

[
    "Select Loadout",
    [_listSelectLoadout],
    {
        params ["_dialogValues","_arguments"];
        _dialogValues params ["_loadoutName"];
        _arguments params ["_unit","_className"];

        [_unit,_loadoutName,_className] call bax_loadouts_fnc_assignLoadout;
    },
    {},
    [_unit,_className]
] call zen_dialog_fnc_create;
