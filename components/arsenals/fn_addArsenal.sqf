
#include "_arsenalsMacros.hpp"

if !(hasInterface) exitWith {};

params ["_object"];

_side = side group player;
_role = player getVariable [VARS_ARSENAL_ROLE, VARS_DEFAULT];

_arsenalSideList = bax_arsenals_arsenalLists get _side;
_arsenalItems = _arsenalSideList get _role;

if (isNil "_arsenalItems") exitWith {
    _msg = format ["Role does not exist (%1:%2)", _side, _role];
    DEBUG_RPT(_msg);
};

[_object,false] call ace_arsenal_fnc_removeBox;
[_object,_arsenalItems,false] call ace_arsenal_fnc_initBox;

_actionID = _object getVariable [VARS_ACTION_ID,nil];
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
    _object setVariable [VARS_ACTION_ID,_actionID];
};
