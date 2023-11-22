
#include "..\..\..\macros\loadoutMacros.hpp"

_function = {
    params ["_posASL","_object"];

    if (isNull _object) exitWith {
        [objNull, "Place on unit!"] call BIS_fnc_showCuratorFeedbackMessage;
    };
    if !(_object isKindOf "Man") exitWith {
        [objNull, "Place on unit!"] call BIS_fnc_showCuratorFeedbackMessage;
    };

    [_object] call BAX_LOADOUT_fnc_dialogSelectLoadoutFull;
};

[
    "[BAX]",
    "[LOADOUT] Assign Loadout",

    // 2) Function - code or function name
    // Passed Params: 0) Module Position ASL, 1) Attached object, objNull if not attached
    _function
] call zen_custom_modules_fnc_register;
