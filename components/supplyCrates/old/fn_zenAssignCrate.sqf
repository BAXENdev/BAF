
#include "..\..\..\macros\loadoutMacros.hpp"

_function = {
    params ["_posASL","_object"];

    if (isNull _object) exitWith {
        [_posASL] call BAX_LOADOUTS_fnc_dialogCrateSelectFaction;
    };

    _className = typeOf _object;
    _tb = getNumber (configFile >> "CfgVehicles" >> _className >> "transportmaxbackpacks");
    _tm = getNumber (configFile >> "CfgVehicles" >> _className >> "transportmaxmagazines");
    _tw = getNumber (configFile >> "CfgVehicles" >> _className >> "transportmaxweapons");
    _hasInventory = _tb > 0 || _tm > 0 || _tw > 0;

    if !(_hasInventory) exitWith {
        [objNull, "Place on object with inventory!"] call BIS_fnc_showCuratorFeedbackMessage;
    };

    [_object] call BAX_LOADOUTS_fnc_dialogCrateSelectFaction;
};

[
    "[BAX]",
    "[LOADOUT] Assign Crate",
    _function
] call zen_custom_modules_fnc_register;
