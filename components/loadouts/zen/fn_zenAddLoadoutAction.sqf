
#include "..\_commonMacros.hpp"

_function = {
    params ["_posASL","_object"];

    if (isNull _object) exitWith {
        [objNull, "Select object"] call BIS_fnc_showCuratorFeedbackMessage;
    };
    if (_object isKindOf "Man") exitWith {
        [objNull, "Do not place on unit!"] call BIS_fnc_showCuratorFeedbackMessage;
    };

    [_object] call bax_loadout_fnc_dialogLockerAddAction;
};

[
    "[BAX]",
    "Add Loadout Action",
    _function
] call zen_custom_modules_fnc_register;