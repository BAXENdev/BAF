
#include "..\..\..\macros\loadoutMacros.hpp"

params ["_posASLorObject"];

_factionRegistry = GETVARM(VARS_FACTION_REGISTRY,nil);
_factionIDs = _factionRegistry apply { _x select 0; };
_factionNames = _factionRegistry apply { _x select 1; };

_listFactionIDs = [
    "LIST",
    "Factions",
    [
        _factionIDs,
        _factionNames,
        0,
        10
    ]
];

[
    "Select Faction",
    [_listFactionIDs],
    {
        params ["_dialogValues","_arguments"];
        _dialogValues params ["_factionID"];
        _arguments params ["_posASLOrObject"];

		[_posASLorObject,_factionID] call BAX_LOADOUTS_fnc_dialogCrateSelectCrate;
    },
    {},
    [_posASLorObject]
] call zen_dialog_fnc_create;
