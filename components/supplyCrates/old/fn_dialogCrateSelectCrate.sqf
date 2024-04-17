
#include "..\..\..\macros\loadoutMacros.hpp"

params ["_posASLorObject","_factionID"];

_dialogElements = [];

_crateRegistry = GETVARM(VARS_CRATE_REGISTRY(_factionID),nil);
_crateSuffixes = _crateRegistry apply { _x select 0; };
_crateDisplayNames = _crateRegistry apply { _x select 1; };

_listSelectCrate = [
    "LIST",
    "Crates",
    [
        _crateSuffixes,
        _crateDisplayNames,
        0,
        10
    ]
];
_dialogElements pushBack _listSelectCrate;

if (_posASLorObject isEqualType []) then {
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
    _listSelectObject = [
        "LIST",
        "Crates",
        [
            _objectClasses,
            _objectNames,
            0,
            10
        ]
    ];
    _dialogElements pushBack _listSelectObject;
};

[
    "Select Crate",
    _dialogElements,
    {
        params ["_dialogValues","_arguments"];
        _dialogValues params ["_crateSuffix",["_crateClass",""]];
        _arguments params ["_posASLorObject","_factionID"];

        if (_posASLorObject isEqualType []) then {
            // Creates a crate and assigns the object to the variable, guaranteeing that the variable is an object
            _posASLorObject = _crateClass createVehicle _posASLorObject;
            [[_posASLorObject]] call BAX_MISC_fnc_addObjectsToCurators;
        };

        [_posASLorObject,_factionID,_crateSuffix] call BAX_LOADOUTS_fnc_assignCrate;
    },
    {},
    [_posASLorObject,_factionID]
] call zen_dialog_fnc_create;
