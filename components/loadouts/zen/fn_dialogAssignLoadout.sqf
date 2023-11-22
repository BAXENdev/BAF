
#include "..\..\..\macros\loadoutMacros.hpp"

params ["_unit"];

_factionID = GETVAR(_unit,VARS_FACTION_ID,"");
_factionRegistry = GETVARM(VARS_FACTION_REGISTRY,nil);

_factionIDs = _factionRegistry apply { _x select 0; };
_factionNames = _factionRegistry apply { _x select 1; };
_defaultIndex = _factionIDs find _factionID;
if (_defaultIndex < 0) then { _defaultIndex = 0; };

_factionList = [
    "LIST",
    "Select Faction",
    [
        _factionIDs,
        _factionNames,
        _defaultIndex,
        10
    ],
    true
];

_factionOrClasses = [
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

// Create Dialog Function
[
	// 0) Title
	"Select Faction",
	
	// 1) Content Array of Zen Dialogs
	[_factionList,_factionOrClasses],

	// 2) On Confirm, unscheduled
	// Passed Arguments:
	// 0) Dialog Values in order of Content
	// 1) Arguments, the same ones passed in arg4 for zen_dialog_fnc_create
	{
        params ["_dialogValues","_arguments"];
        _dialogValues params ["_factionID","_factionOrClasses"];
        _arguments params ["_unit"];

        _codeAssignLoadout = {
            params ["_dialogValues","_arguments"];
            _dialogValues params ["_loadoutSuffix"];
            _arguments params ["_factionID","_classSuffix","_onConfirmArgs"];
            _onConfirmArgs params ["_unit"];

            [_unit,_factionID,_loadoutSuffix,_classSuffix] call BAX_LOADOUT_fnc_assignLoadout;
        }

        if (_factionOrClasses == 0) then {
            _loadoutSuffix = GETVAR(_unit,VARS_LOADOUT_SUFFIX,nil);
            [_factionID,[_codeAssignLoadout,[_unit]],_loadoutSuffix] call BAX_LOADOUT_fnc_dialogSelectLoadout;
        } else {
            _codeSelectLoadout = {
                params ["_dialogValues","_arguments"];
                _dialogValues params ["_classSuffix"];
                _arguments params ["_factionID","_onConfirmArgs"];
                _onConfirmArgs params ["_unit","_codeAssignLoadout"];

                _loadoutSuffix = GETVAR(_unit,VARS_LOADOUT_SUFFIX,nil);
                [_factionID,[_codeAssignLoadout,[_unit]],_loadoutSuffix] call BAX_LOADOUT_fnc_dialogSelectLoadout;
            };
            _classSuffix = GETVAR(_unit,VARS_CLASS_SUFFIX,nil);
            [_factionID,[_codeSelectLoadout,[_unit,_codeSelectLoadout]],_classSuffix] call BAX_LOADOUT_fnc_dialogSelectClass;
        }
    },
    {}, 

	// 4) Arguments, default: []
	[_unit]

] call zen_dialog_fnc_create;
