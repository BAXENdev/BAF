
#include "_settingsMacros.hpp"

/*
_type:
	"framework" | use for adding a framework (usable in zeus)
	"player" | use for adding a player setting

_componentKey:
	String value for sub-grouping settings together

_uiCode:
	Returns: ZenDialog UI array element

_onExecuteCode:
	Params: dialogValue
*/

params ["_type","_componentKey","_dialogArray","_onExecuteCode"];

if !(_type in ["framework","player"]) exitWith {
	_msg = format ["Setting type %1 does not exist.",_type];
	DEBUG_ERR(_msg);
};

_typeSettings = bax_settings_settings get _type;
_componentSettings = _typeSettings get _componentKey;
if (isNil "_componentSettings") then {
	_componentSettings = [];
	_typeSettings set [_componentKey,_componentSettings];
};

_componentSettings pushBack [
	_dialogArray,
	_onExecuteCode
];

