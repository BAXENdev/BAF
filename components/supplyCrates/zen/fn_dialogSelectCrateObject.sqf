
#include "..\_supplyCratesMacros.hpp"

params ["_posASL","_side"];

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

_objectClasses = [
    "B_supplyCrate_F",
    "C_IDAP_supplyCrate_F",
    "Box_NATO_Wps_F",
    "Box_NATO_WpsSpecial_F",
    "Box_Syndicate_Wps_F",
    "Box_Syndicate_Ammo_F",
    "Box_Syndicate_WpsLaunch_F"
];
_objectNames = _objectClasses apply { getText (configFile >> "CfgVehicles" >> _x >> "displayName"); };
// TODO: update list names to include object images from the config
_listSelectObject = [
    "LIST",
    "Crates",
    [
        _objectClasses,
        _objectNames,
        0,
        7
    ]
];

[
    "Select Crate",
    [_listCrates, _listSelectObject],
    {
        params ["_dialogValues","_arguments"];
        _dialogValues params ["_crateName", "_crateObjectClass"];
        _arguments params ["_posASL","_side"];

        _posATL = ASLToATL _posASL;
        _object = createVehicle [_crateObjectClass, _posATL];
        [[_object], false] call bax_common_fnc_addObjectsToCurators;
		[_object,_side,_crateName] call bax_supplyCrates_fnc_assignCrate;
    },
    {},
    [_posASL,_side]
] call zen_dialog_fnc_create;
