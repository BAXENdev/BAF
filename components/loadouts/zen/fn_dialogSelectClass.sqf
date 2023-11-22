
#include "..\..\..\macros\loadoutMacros.hpp"

// _onConfirm: _onConfirmCode, _onConfirmArgs
params ["_factionID","_onConfirm",["_classSuffix",""]];
_onConfirm params ["_onConfirmCode","_onConfirmArgs"];

_classRegistry = GETVARM(VARSVARS_CLASS_REGISTRY(_factionID),nil);
if (_classRegistry isEqualTo []) exitWith {
    [[],[_factionID]] call _onConfirm;
};

_classSuffixes = _classRegistry apply { _x select 0; };
_classDisplayNames = _classRegistry apply { _x select 1; };
_defaultIndex = _classSuffixes find _classSuffix;
if (_defaultIndex < 0) then { _defaultIndex = 0; };

_listSelectClass = [
    "LIST",
    "Loadouts",
    [
        _classSuffixes,
        _classDisplayNames,
        _defaultIndex,
        10
    ],
    true
];

[
    "Select Class",
    [_listSelectClass],
    _onConfirmCode, // params: [dialogValues:["_classSuffix"], arguments:["_factionID","_onConfirmArgs]]
    {},
    [_factionID,_onConfirmArgs]
] call zen_dialog_fnc_create;
