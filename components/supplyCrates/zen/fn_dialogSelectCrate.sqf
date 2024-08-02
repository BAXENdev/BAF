
#include "..\_supplyCratesMacros.hpp"

params ["_object","_side"];

_crateSideRegistry = bax_supplyCrates_crates get _side;
_crates = (keys _crateSideRegistry);
_crateNames = _crates apply { toUpper _x };
_listCrates = [
    "LIST",
    "Crates",
    [
        _crates,
        _crateNames,
        0,
        7
    ]
];

[
    "Select Crate",
    [_listCrates],
    {
        params ["_dialogValues","_arguments"];
        _dialogValues params ["_crateName"];
        _arguments params ["_object","_side"];

		[_object,_side,_crateName] call bax_supplyCrates_fnc_assignCrate;
    },
    {},
    [_object,_side]
] call zen_dialog_fnc_create;
