
#include "..\_loadoutsMacros.hpp"

params ["_object"];

_actionId = _object getVariable [LOCKER_ID,nil];
if (isNil "_actionId") exitWith {
    [_object] remoteExec ["bax_loadouts_fnc_addLoadoutAction",true,true];
    ["Loadout action added to object"] call bax_common_fnc_dialogHint;
};

_toolBox = [
    "CHECKBOX",
    "Remove Loadout Action:",
    false,
    true
];

[
    "Remove Loadout Action",
    [_toolbox],
    {
        params ["_dialogValues","_arguments"];
        _dialogValues params ["_doRemoveAction"];
        if !(_doRemoveAction) exitWith {};
        _arguments params ["_object"];
        [_object] remoteExec ["bax_loadouts_fnc_removeLoadoutAction",true,true];
        ["Loadout action removed from object"] call bax_common_fnc_dialogHint;
    },
    {},
    [_object]
] call zen_dialog_fnc_create;
