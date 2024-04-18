
#include "..\_commonMacros.hpp"

[
	// 0) Category - the drop down name of where the module goes
	"[BAX]",

	// 1) Module Name
	"End Mission",

	// 2) Function - code or function name
	// Passed Params: 0) Module Position ASL, 1) Attached object, objNull if not attached
	{		
		_cfgDebriefing = (missionConfigFile >> "CfgDebriefing");
		if (isNull _cfgDebriefing) exitWith {
			[objNull,"There is no CfgDebriefing config"] call BIS_fnc_showCuratorFeedbackMessage;
		};
		_cfgEndings = "true" configClasses _cfgDebriefing;
		if (count _cfgEndings == 0) exitWith {
			[objNull,"There are no registered endings"] call BIS_fnc_showCuratorFeedbackMessage;
		};

		// _classes = _cfgEndings apply { configName _x };
		// _titles = _cfgEndings apply { getText (_x >> "title") };
		_classes = [];
		_titles = [];
		{
			_classes pushBack (configName _x);
			_titles pushBack (format ["%1: %2",configName _x, getText (_x >> "title")]);
		} forEach _cfgEndings;

		_listBox = [
			"LIST",
			"Select Ending",
			[
				_classes,
				_titles,
				0,
				5
			],
			true
		];

		[
			"End Mission",
			[_listBox],
			{
				params ["_dialogValues","_args"];
				_dialogValues params ["_class"];

				[_class] remoteExec ["BIS_fnc_endMission"];
			},
			{},
			[]
		] call zen_dialog_fnc_create;

	},

	// 3) Icon file - Filepath, optional, default (shown below)
	"\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;
