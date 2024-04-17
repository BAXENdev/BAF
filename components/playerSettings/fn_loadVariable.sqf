
#include "_playerSettingsMacros.hpp"

params ["_componentKey",];

_value = bax_playerSettings_profileSettings get _setting;
if (isNil "_value") then {
	bax_playerSettings_profileSettings set [_setting,_defaultValue];
	_value = _defaultValue;
};
missionNamespace setVariable [_setting,_value];
