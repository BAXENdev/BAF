
#include "..\_supplyCratesMacros.hpp"

_function = {
    params ["_posASL","_object"];

    if (_object isKindOf "Man") exitWith {
        [objNull,"You can not turn a man into a crate!"] call BIS_fnc_showCuratorFeedbackMessage;
    };

    if !(isNull _object) then {
        _className = typeOf _object;
        _tb = getNumber (configFile >> "CfgVehicles" >> _className >> "transportmaxbackpacks");
        _tm = getNumber (configFile >> "CfgVehicles" >> _className >> "transportmaxmagazines");
        _tw = getNumber (configFile >> "CfgVehicles" >> _className >> "transportmaxweapons");
        _hasInventory = _tb > 0 || _tm > 0 || _tw > 0;

        if !(_hasInventory) exitWith {
            [objNull, "Place on object with inventory!"] call BIS_fnc_showCuratorFeedbackMessage;
        };
    };

    if (isNull _object) then {
        [_posASL] call bax_supplyCrates_fnc_dialogSelectCrateFaction;
    } else {
        [_object] call bax_supplyCrates_fnc_dialogSelectCrateFaction;
    };
};

[
    "[BAX]",
    "Assign/Create Crate",
    _function
] call zen_custom_modules_fnc_register;
