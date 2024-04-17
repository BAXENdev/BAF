
#include "..\_mapMarkersMacros.hpp"

[
	// 0) Category - the drop down name of where the module goes
	"[BAX]",

	// 1) Module Name
	"Update Group Marker",

	// 2) Function - code or function name
	// Passed Params: 0) Module Position ASL, 1) Attached object, objNull if not attached
	{
		params ["_posASL","_object"];
		
		if (isNull _object) exitWith {
			[objNull, "Place on unit"] call BIS_fnc_showCuratorFeedbackMessage;
		};

		if !(_object isKindOf "Man") exitWith {
			[objNull, "Place on unit"] call BIS_fnc_showCuratorFeedbackMessage;
		};

		if !(alive _object) exitWith {
			[objNull, "Place on a living unit"] call BIS_fnc_showCuratorFeedbackMessage;
		};

		[_object,true] call bax_mapMarkers_fnc_dialogUpdateGroupMarker;
	},

	// 3) Icon file - Filepath, optional, default (shown below)
	"\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;

