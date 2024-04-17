
#include "_playerSettingsMacros.hpp"

params ["_setting","_value"];

missionNamespace setVariable [_setting,_value];
bax_playerSettings_profileSettings set [_setting,_value];
