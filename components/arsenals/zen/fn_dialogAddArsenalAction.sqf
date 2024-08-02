
#include "..\_arsenalsMacros.hpp"

params ["_object"];

_actionId = _object getVariable [VARS_ACTION_ID,nil];
if (isNil "_actionId") exitWith {
    [_object] remoteExec ["bax_arsenals_fnc_addArsenal",0,true];
    ["Arsenal added to object"] call bax_common_fnc_hintDialog;
};

_toolBox = [
    "CHECKBOX",
    "Remove Arsenal:",
    false,
    true
];

[
    "Remove Arsenal",
    [_toolbox],
    {
        params ["_dialogValues","_arguments"];
        _dialogValues params ["_doRemoveAction"];
        if !(_doRemoveAction) exitWith {};
        _arguments params ["_object"];
        [_object] remoteExec ["bax_arsenals_fnc_removeArsenal",0,true];
        ["Arsenal removed from object"] call bax_common_fnc_dialogHint;
    },
    {},
    [_object]
] call zen_dialog_fnc_create;
