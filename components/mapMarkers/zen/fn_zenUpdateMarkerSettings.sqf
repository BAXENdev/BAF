
#include "..\_mapMarkersMacros.hpp"

[
	// 0) Category - the drop down name of where the module goes
	"[BAX]",

	// 1) Module Name
	"Toggle Map Markers",

	// 2) Function - code or function name
	// Passed Params: 0) Module Position ASL, 1) Attached object, objNull if not attached
	{
		[] call bax_mapMarkers_fnc_dialogUpdateMarkerSettings;
	},

	// 3) Icon file - Filepath, optional, default (shown below)
	"\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;
