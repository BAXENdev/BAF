
_code1 = {

	_code2 = {
		params ["_dialogValues","_arguments"];
		_dialogValues params ["_height","_addSmoke"];
		_arguments params ["_object","_position"];
	};

	[
		"Paradrop Object",
		[_checkBox],

		// 2) On Confirm, unscheduled
		// Passed Arguments:
		// 0) Dialog Values in order of Content
		// 1) Arguments, the same ones passed in arg4 for zen_dialog_fnc_create
		,

		// 3) On Cancel, default: {}, unscheduled
		{}, 

		// 4) Arguments, default: []
		[]

	] call zen_dialog_fnc_create;
};

[
	// 0) Category - the drop down name of where the module goes
	"BAF Utilities",
	"Paradrop Object",
	_code1
] call zen_custom_modules_fnc_register;
