
#include "..\_supplyCrateMacros.hpp"

params ["_posASLorObject","_side"];

_crateSideRegistry = bax_supplyCrates_crates get _side;
_crateNames = [];
_crateDisplayNames = [];
{
    _crateName = _x;
    _crateArray = _y;
    _crateArray params ["_objectClass","_itemsArray"];
    _crateObjectName = getText (configFile >> "CfgVehicles" >> _objectClass >> "displayName");

    _crateNames pushback _crateName;
    _crateDisplayNames pushBack (format ["%1 (Crate: %2)", _crateName, _crateObjectName]);
} forEach _crateSideRegistry;

_listCrates = [
    "LIST",
    "Crates",
    [
        _crateNames,
        _crateDisplayNames,
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
        _arguments params ["_posASLOrObject","_side"];

		[_posASLorObject,_side,_crateName] call bax_supplyCrates_fnc_assignCrate;
    },
    {},
    [_posASLorObject,_side]
] call zen_dialog_fnc_create;
