
#include "..\_settingsMacros.hpp"

params ["_type","_componentKey"];

_componentSettings = bax_settings_settings get _type get _componentKey;

_dialogs = _componentSettings apply {
    [] call (_x select 0);
};
_onExecuteCodes = _componentSettings apply {
    _x select 1;
};

[
	(toUpper _componentKey + " Settings"),
	_dialogs,
	{
		params ["_dialogValues","_args"];
		_args params ["_onExecuteCodes"];
        {
			_dialogValue = _x;

            _onExecuteCode = _onExecuteCodes select _forEachIndex;
            [_dialogValue] call _onExecuteCode;
        } forEach _dialogValues;
	},
	{},
	[_onExecuteCodes]
] call zen_dialog_fnc_create;
