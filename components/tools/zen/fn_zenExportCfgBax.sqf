
#include "..\_toolsMacros.hpp"

[
	// 0) Category - the drop down name of where the module goes
	"[BAX] Tools",

	// 1) Module Name
	"Export CfgBax",

	// 2) Function - code or function name
	// Passed Params: 0) Module Position ASL, 1) Attached object, objNull if not attached
	bax_tools_fnc_dialogExportCfgBax,

	// 3) Icon file - Filepath, optional, default (shown below)
	"\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;