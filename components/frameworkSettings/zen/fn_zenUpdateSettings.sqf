
#include "..\_frameworkSettings.sqf"

[
    // 0) Category - the drop down name of where the module goes
    "[BAX]",

    // 1) Module Name
    "Update Framework Settings",

    // 2) Function - code or function name
    // Passed Params: 0) Module Position ASL, 1) Attached object, objNull if not attached
    {
		if (keys bax_frameworkSettings_settings isEqualTo []) exitWith {
			[objNull,"No settings available"] call BIS_fnc_showCuratorFeedbackMessage;
		};

		[] call bax_frameworkSettings_fnc_dialogSelectSettings;
	},

    // 3) Icon file - Filepath, optional, default (shown below)
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;
