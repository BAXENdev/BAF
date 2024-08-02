
#include "_settingsMacros.hpp"

params ["_variableName","_defaultValue"];

_value = bax_settings_profileVars get _variableName;
if (isNil "_value") then {
	_value = _defaultValue;
	bax_settings_profileVars set [_variableName,_value];
};
missionNamespace setVariable [_variableName,_value];
