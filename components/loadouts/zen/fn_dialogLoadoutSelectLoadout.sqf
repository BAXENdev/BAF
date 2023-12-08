
#include "..\..\..\macros\loadoutMacros.hpp"

params ["_unit","_factionID","_classSuffix"];

private ["_loadoutRegistry"];
if !(_classSuffix isEqualTo "") then {
    _classArray = GETVARM(VARS_CLASS(_factionID,_classSuffix),nil);
    _loadoutRegistry = _classArray select 1;
} else {
    _loadoutRegistry = GETVARM(VARS_LOADOUT_REGISTRY(_factionID),nil);
};

_loadoutSuffix = GETVAR(_unit,VARS_LOADOUT_SUFFIX,"");
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
    {
        params ["_dialogValues","_arguments"];
        _dialogValues params ["_loadoutSuffix"];
        _arguments params ["_unit","_factionID","_classSuffix"];

        [_unit,_factionID,_loadoutSuffix,_classSuffix] call BAX_LOADOUTS_fnc_assignLoadout;
    },
    {},
    [_unit,_factionID,_classSuffix]
] call zen_dialog_fnc_create;
