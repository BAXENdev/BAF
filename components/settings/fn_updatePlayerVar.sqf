
#include "_settingsMacros.hpp"

params ["_setting","_value"];

missionNamespace setVariable [_setting,_value];
bax_settings_profileVars set [_setting,_value];
