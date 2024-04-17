
#include "..\_miscMacros.hpp"

params ["_posASLorObject"];

_checkboxLoadoutAction = [
    "CHECKBOX",
    "Add Loadout Action",
    true
];

_checkboxArsenalAction = [
    "CHECKBOX",
    "Add Arsenal Action",
    true
];

[
    "Add Locker Actions",
    [_checkboxLoadoutAction,_checkboxArsenalAction],
    {
        params ["_dialogValues","_arguments"];
        _dialogValues params ["_addLoadoutAction","_addArsenalAction"];
        _arguments params ["_object"];

        if (_addLoadoutAction) then {
            [_object] remoteExec ["bax_loadouts_fnc_addActionSelectLoadout",0,true];
        };

        if (_addArsenalAction) then {
            [_object] remoteExec ["bax_arsenals_fnc_addActionSelectArsenal",0,true];
        };
    },
    {},
    [_object]
] call zen_dialog_fnc_create;
