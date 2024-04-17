
#include "..\_frameworkSettingsMacros.hpp"

params ["_componentKey"];

_componentSettings = bax_frameworkSettings_settings get _componentKey;

_dialogs = _componentSettings apply {
    params ["_dialogCode","_onExecuteCode"];

    [] call _dialogCode;
};
_executeCodes = _componentSettings apply {
    _x select 1;
};

[
	// 0) Title
	(toUpper _componentKey + " Settings"),
	
	// 1) Content Array of Zen Dialogs
	_dialogs,

	// 2) On Confirm, unscheduled
	// Passed Arguments:
	// 0) Dialog Values in order of Content
	// 1) Arguments, the same ones passed in arg4 for zen_dialog_fnc_create
	{
		params ["_dialogValues","_args"];
		_args params ["_onExecuteCodes"];

        {
            _onExecuteCode = _onExecuteCodes select _forEachIndex;
            [_x]  call _onExecuteCode;
        } forEach _dialogValues;
	},

	// 3) On Cancel, default: {}, unscheduled
	{}, 

	// 4) Arguments, default: []
	[_executeCodes]

] call zen_dialog_fnc_create;
