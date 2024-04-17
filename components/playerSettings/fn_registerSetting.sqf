
#include "_frameworkSettingsMacros.hpp"

/*
_uiCode:
	Returns: ZenDialog UI array element

_onExecuteCode:
	Params: dialogValue
*/

params ["_componentKey","_dialogCode","_onExecuteCode"];

_componentSettings = bax_frameworkSettings_settings get _componentKey;
if (isNil "_componentSettings") then {
	_componentSettings = [];
	bax_frameworkSettings_settings set [_componentKey,_componentSettings];
	_msg = format ["Creating component %1 in framework settings.", _componentKey];
	DEBUG_LOG(_msg);
};

_msg = format ["Adding setting %1 to %2 framework settings",_variableName,_componentKey];
DEBUG_LOG(_msg);
_componentSettings pushBack [
	_dialogCode,
	_onExecuteCode
];

