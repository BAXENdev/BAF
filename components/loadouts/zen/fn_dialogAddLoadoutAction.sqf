
#include "..\_loadoutsMacros.hpp"

params ["_object"];

_actionId = _object getVariable [LOCKER_ID,nil];
if (isNil "_actionId") exitWith {
    [_object] remoteExec ["bax_loadouts_fnc_addLoadoutAction",true];
};

_toolBox = [
    "TOOLBOX",
    "Loadout Action:",
    [
        0,
        1,
        2,
        ["Re-Add Action", "Remove Action"],
    ],
    true
];

[
    "Add Locker Actions",
    [_toolbox],
    {
        params ["_dialogValues","_arguments"];
        
    },
    {},
    [_object]
] call zen_dialog_fnc_create;
