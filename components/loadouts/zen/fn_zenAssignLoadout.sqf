
#include "..\..\..\macros\loadoutMacros.hpp"

_function = {
    params ["_posASL","_object"];

    if (isNull _object) exitWith {
        [objNull, "Place on unit!"] call BIS_fnc_showCuratorFeedbackMessage;
    };
    if !(_object isKindOf "Man") exitWith {
        [objNull, "Place on unit!"] call BIS_fnc_showCuratorFeedbackMessage;
    };

    [_object] call BAX_LOADOUTS_fnc_dialogLoadoutSelectFaction;
};

[
    "[BAX]",
    "[LOADOUT] Assign Loadout",
    _function
] call zen_custom_modules_fnc_register;
