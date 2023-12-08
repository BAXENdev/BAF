
#include "..\..\..\macros\loadoutMacros.hpp"

_function = {
    params ["_posASL","_object"];

    diag_log _object;

    if (isNull _object) exitWith {
        [objNull, "Select object"] call BIS_fnc_showCuratorFeedbackMessage;
    };
    if (_object isKindOf "Man") exitWith {
        [objNull, "Do not place on unit!"] call BIS_fnc_showCuratorFeedbackMessage;
    };

    [_object] call BAX_LOADOUTS_fnc_dialogLockerAddAction;
};

[
    "[BAX]",
    "[LOADOUT] Add Select Loadout",
    _function
] call zen_custom_modules_fnc_register;
