
#include "_arsenalMacros.hpp"

params ["_object"];

_actionID = _object getVariable ["bax_arsenals_actionId",nil];
// _trigger = _object getVariable ["bax_arsenals_actionTrigger",nil];

if (isNil "_actionID") then {
    _actionID = _object addAction [
        "Open Arsenal",
        {
            // _loadoutArray = player getVariable [VAR_RESPAWN,EMPTY_LOADOUT];
            // player setUnitLoadout _loadoutArray;
            if (isNull bax_arsenals_arsenalBox) exitWith {
                // hint "Arsenal box doesn't exist. Ask zeus to re-initialize your arsenal system.";
                [
                    "ace_common_displayTextStructured",
                    ["Arsenal box doesn't exist. Ask zeus to re-initialize your arsenal system.",1.5,player],
                    player
                ] call CBA_fnc_targetEvent;
            };
            [bax_arsenals_arsenalBox, player] call ace_arsenal_fnc_openBox;
            player setVariable ["bax_arsenals_arsenalOpened",true];
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
    _object setVariable ["bax_arsenals_actionId",_actionID];
};
