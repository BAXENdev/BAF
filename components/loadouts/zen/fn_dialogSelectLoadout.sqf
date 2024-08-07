
#include "..\_loadoutsMacros.hpp"

params ["_unit"];

_side = side group _unit;

private ["_loadoutNames"];
_loadoutRegistry = bax_loadouts_loadouts get _side;
_loadoutNames = keys _loadoutRegistry;

_loadoutName = _unit getVariable [LOADOUT_ID,""];
_defaultIndex = _loadoutNames find _loadoutName;
if (_defaultIndex == -1) then { _defaultIndex = 0 };

_listSelectLoadout = [
    "LIST",
    "Loadouts",
    [
        _loadoutNames,
        _loadoutNames,
        _defaultIndex,
        7
    ],
    true
];

_checkboxReloadRadios = [
    "CHECKBOX",
    "Reload Radios",
    true,
    false
];

[
    "Select Loadout",
    [_listSelectLoadout, _checkboxReloadRadios],
    {
        params ["_dialogValues","_arguments"];
        _dialogValues params ["_loadoutName", "_reloadRadios"];
        _arguments params ["_unit"];

        _loadout = [_unit,_loadoutName] call bax_loadouts_fnc_assignLoadout;
        
        _loadout = [_loadout] call acre_api_fnc_filterUnitLoadout;
        _unit setVariable [VAR_RESPAWN,_loadout,true];

        _unit setVariable [VARS_ROLE, _loadoutName, true];
        [_loadoutName] remoteExec ["bax_arsenals_fnc_initArsenals", _unit];

        _iconTexture = [_unit] call bax_mapMarkers_fnc_getUnitIcon;
        _unit setVariable [MARKER_TEXTURE, _iconTexture, true];

        if (_reloadRadios) then {
            [] call bax_radios_fnc_buildRadioPreset;
            [] call bax_radios_fnc_loadRadioPreset;
        };
    },
    {},
    [_unit]
] call zen_dialog_fnc_create;
