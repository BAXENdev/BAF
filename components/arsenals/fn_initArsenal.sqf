
#include "_arsenalMacros.hpp"

if !(hasInterface) exitWith {};

params ["_object"];

private ["_role"];
_side = side group player;
if (isMultiplayer) then {
    _role = roleDescription player;
} else {
    _role = "default";
};

_arsenalSideList = bax_arsenals_arsenalLists get _side;
_arsenalItems = _arsenalSideList get _role;

[_object,false] call ace_arsenal_fnc_removeBox;
[_object,_arsenalItems,false] call ace_arsenal_fnc_initBox;

_actionID = _object getVariable [VARS_ARSENAL_ACTION,nil];
// _trigger = _object getVariable ["bax_arsenals_actionTrigger",nil];

if (isNil "_actionID") then {
    _actionID = _object addAction [
        "Open Arsenal",
        {
            params ["_target", "_caller", "_actionId", "_arguments"];
            [_target,player] call ace_arsenal_fnc_openBox;
        },
        [],		// arguments
        1.5,		// priority
        true,		// showWindow
        true,		// hideOnUse
        "",			// shortcut
        "true",     // condition
        3.5,        // radius
        false
    ];
    _object setVariable [VARS_ARSENAL_ACTION,_actionID];
};
