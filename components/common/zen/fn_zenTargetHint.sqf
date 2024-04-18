
#include "..\_commonMacros.hpp"

[
	// 0) Category - the drop down name of where the module goes
	"[BAX]",

	// 1) Module Name
	"Hint Targets",

	// 2) Function - code or function name
	// Passed Params: 0) Module Position ASL, 1) Attached object, objNull if not attached
	{
		params ["_posASL","_object"];
		
		[] call bax_common_fnc_dialogTargetHint;
	},

	// 3) Icon file - Filepath, optional, default (shown below)
	"\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;
