
#include "..\..\..\macros\loadoutMacros.hpp"

params ["_unit"];

_factionRegistry = GETVARM(VARS_FACTION_REGISTRY,nil);
_factionID = GETVAR(_unit,VARS_FACTION_ID,"");
_factionIDs = _factionRegistry apply { _x select 0; };
_factionNames = _factionRegistry apply { _x select 1; };
_defaultIndex = _factionIDs find _factionID;
if (_defaultIndex < 0) then { _defaultIndex = 0; };

_listFactionIDs = [
    "LIST",
    "Factions",
    [
        _factionIDs,
        _factionNames,
        _defaultIndex,
        10
    ],
    true
];

_toolboxFactionOrClass = [
	"TOOLBOX",
	"Pick Loadout From:",
	[
		0,
		1,
		2, 
		["Faction", "Class"],
		1
	]
];

[
    "Select Faction",
    [_listFactionIDs,_toolboxFactionOrClass],
    {
        params ["_dialogValues","_arguments"];
        _dialogValues params ["_factionID","_factionOrClass"];
        _arguments params ["_unit"];

        if (_factionOrClass == 0) then {
            // Passing an empty classSuffix (third param) to selectLoadout will indicate to pick from all loadouts rather than a class
            [_unit,_factionID,""] call BAX_LOADOUTS_fnc_dialogLoadoutSelectLoadout;
        } else {
            [_unit,_factionID] call BAX_LOADOUTS_fnc_dialogLoadoutSelectClass;
        };
    },
    {},
    [_unit]
] call zen_dialog_fnc_create;
