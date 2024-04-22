
#include "..\_supplyCrateMacros.hpp"

params ["_posASLorObject"];

_sides = bax_supplyCrates_crates apply {

};

_listFactionIDs = [
    "LIST",
    "Factions",
    [
        _factionIDs,
        _factionNames,
        0,
        10
    ]
];

[
    "Select Faction",
    [_listFactionIDs],
    {
        params ["_dialogValues","_arguments"];
        _dialogValues params ["_factionID"];
        _arguments params ["_posASLOrObject"];

		[_posASLorObject,_factionID] call BAX_LOADOUTS_fnc_dialogCrateSelectCrate;
    },
    {},
    [_posASLorObject]
] call zen_dialog_fnc_create;
