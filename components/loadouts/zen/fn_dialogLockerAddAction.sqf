
params ["_posASLorObject"];

_checkboxLockerAction = [
    "CHECKBOX",
    "Add Locker Action",
    true
];

[
    "Add Locker Actions",
    [_checkboxLockerAction],
    {
        params ["_dialogValues","_arguments"];
        _dialogValues params ["_addLockerAction"];
        _arguments params ["_object"];

        if (_addLockerAction) then {
            [_object] call BAX_LOADOUTS_fnc_addActionSelectLoadout;
        };
    },
    {},
    [_object]
] call zen_dialog_fnc_create;
