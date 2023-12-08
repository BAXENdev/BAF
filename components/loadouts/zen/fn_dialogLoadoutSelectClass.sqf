
#include "..\..\..\macros\loadoutMacros.hpp"

params ["_unit","_factionID"];

_classRegistry = GETVARM(VARS_CLASS_REGISTRY(_factionID),nil);

_classSuffix = GETVAR(_unit,VARS_CLASS_SUFFIX,"");
_classSuffixes = _classRegistry apply { _x select 0; };
_classDisplayNames = _classRegistry apply { _x select 1; };
_defaultIndex = _classSuffixes find _classSuffix;
if (_defaultIndex < 0) then { _defaultIndex = 0; };

_listSelectClass = [
    "LIST",
    "Classes",
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
    {
        params ["_dialogValues","_arguments"];
        _dialogValues params ["_classSuffix"];
        _arguments params ["_unit","_factionID"];

        [_unit,_factionID,_classSuffix] call BAX_LOADOUTS_fnc_dialogLoadoutSelectLoadout;
    },
    {},
    [_unit,_factionID]
] call zen_dialog_fnc_create;
