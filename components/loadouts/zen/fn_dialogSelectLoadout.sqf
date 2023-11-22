
#include "..\..\..\macros\loadoutMacros.hpp"

// _onConfirm: _onConfirmCode, _onConfirmArgs
params ["_factionID","_onConfirm",["_loadoutSuffix",""],["_classSuffix",""]];
_onConfirm params ["_onConfirmCode","_onConfirmArgs"];

private ["_loadoutRegistry"];
if (_classSuffix isEqualTo "") then {
    _loadoutRegistry = GETVARM(VARS_LOADOUT_REGISTRY(_factionID));
} else {
    _classArray = GETVARM(VARS_CLASS(_factionID,_classSuffix),nil);
    _loadoutRegistry = _classArray select 1;
};

if (_loadoutRegistry isEqualTo []) exitWith {
    [[],[_factionID,_classSuffix]] call _onConfirm;
};

_loadoutSuffixes = _loadoutRegistry apply { _x select 0; };
_loadoutDisplayNames = _loadoutRegistry apply { _x select 1; };
_defaultIndex = _loadoutSuffixes find _loadoutSuffix;
if (_defaultIndex < 0) then { _defaultIndex = 0; };

_listSelectLoadout = [
    "LIST",
    "Loadouts",
    [
        _loadoutSuffixes,
        _loadoutDisplayNames,
        _defaultIndex,
        10
    ],
    true
];

[
    "Select Loadout",
    [_listSelectLoadout],
    _onConfirmCode, // params: [dialogValues:["_loadoutSuffix"], arguments:["_factionID","_classSuffix","_onConfirmArgs"]]
    {},
    [_factionID,_classSuffix,_onConfirmArgs]
] call zen_dialog_fnc_create;
