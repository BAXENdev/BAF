
#include "..\_arsenalsMacros.hpp"

params ["_object"];

_actionId = _object getVariable [LOCKER_ID,nil];
if (isNil "_actionId") exitWith {
    [_object] remoteExec ["bax_arsenals_fnc_addArsenal",true,true];
    [objNull,"Arsenal added to object"] call BIS_fnc_showCuratorFeedbackMessage;
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
        [_object] remoteExec ["bax_arsenals_fnc_removeArsenal",true,true];
        [objNull,"Arsenal removed from object"] call BIS_fnc_showCuratorFeedbackMessage;
    },
    {},
    [_object]
] call zen_dialog_fnc_create;
