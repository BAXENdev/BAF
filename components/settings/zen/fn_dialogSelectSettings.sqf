
#include "..\_settingsMacros.hpp"

params ["_type"];

if !(_type in (keys bax_settings_settings)) exitWith {
	_msg = format ["Setting type %1 does not exist.",_type];
	DEBUG_ERR(_msg);
};

_componentKeys = keys (bax_settings_settings get _type);

_listBoxComponents = [
    "LIST",
    "Select Settings",
    [
        _componentKeys,
        _componentKeys apply { toUpper _x },
        0,
        10
    ],
    false
];

[
    "Update Settings",
    [_listBoxComponents],
    {
        params ["_dialogValues","_args"];
        _dialogValues params ["_componentKey"];

        [_componentKey] call bax_frameworkSettings_fnc_dialogSelectSettings;
    },
    {},
    []

] call zen_dialog_fnc_create;
