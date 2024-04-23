
#include "..\_supplyCrateMacros.hpp"

params ["_posASLorObject"];

_sides = [];
{
    _side = _x;
    _registry = _y;
    if !(_reigstry isEqualTo []) then {
        _sides pushback _side;
    }
} forEach bax_supplyCrates_crates;

if (_sides isEqualTo []) exitWith {
    ["There no registered crates on any side"] call bax_common_fnc_dialogHint;
};

_listSides = [
    "LIST",
    "Sides",
    [
        _sides,
        _sides apply { toUpper str _side },
        0,
        4
    ]
];

[
    "Select Faction",
    [_listSides],
    {
        params ["_dialogValues","_arguments"];
        _dialogValues params ["_side"];
        _arguments params ["_posASLOrObject"];

		[_posASLorObject,_side] call bax_supplyCrates_fnc_dialogSelectCrate;
    },
    {},
    [_posASLorObject]
] call zen_dialog_fnc_create;
