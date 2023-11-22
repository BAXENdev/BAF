
#include "..\..\..\macros\loadoutMacros.hpp"

params ["_object"];

_actionID = GETVAR(_object,VARS_ARSENAL_OBJ_ACTION_ID,nil);
_trigger = GETVAR(_object,VARS_ARSENAL_OBJ_TRIGGER,nil);

if !(isNil "_actionID") then {
    _actionID = _object addAction [
        "Open Arsenal",
        {
            _loadoutArray = GETVAR(player,VARS_LOADOUT_RESPAWN,EMPTY_LOADOUT);
            player setUnitLoadout _loadoutArray;
            _arsenalBox = GETVARM(VARS_ARSENAL_BOX,nil);
            if (isNil "_arsenalBox") exitWith { hint "Arsenal box doesn't exist. Ask zeus to re-initialize your arsenal."; };
            [_arsenalBox, player] call ace_arsenal_fnc_openBox;
        },
        nil,		// arguments
        1.5,		// priority
        true,		// showWindow
        true,		// hideOnUse
        "",			// shortcut
        "true",     // condition
        3.5,        // radius
        false
    ];
    SETVAR(_object,VARS_ARSENAL_OBJ_ACTION_ID,_actionID);
};

if (isNil "_trigger") then {
    _trigger = createTrigger ["EmptyDetector", _object, false];
    _trigger setTriggerArea [5, 5, 0, false, 8];
    _trigger setTriggerActivation ["ANYPLAYER", "PRESENT", true];
    _trigger setTriggerStatements [
		"player in thisList",
		"hint 'Opening the arsenal resets your loadout.'; [] spawn { sleep 7; hint ''; };",
		""
	];
    _trigger attachTo _object;
    SETVAR(_object,VARS_ARSENAL_OBJ_TRIGGER,_trigger);
};
