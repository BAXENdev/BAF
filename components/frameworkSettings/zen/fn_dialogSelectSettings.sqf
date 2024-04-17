
#include "..\_frameworkSettingsMacros.hpp"

_componentKeys = keys bax_frameworkSettings_settings;

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
