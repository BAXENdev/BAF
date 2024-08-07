
[
	// 0) Category - the drop down name of where the module goes
	"[BAX]",

	// 1) Module Name
	"Update Respawn Settings",

	// 2) Function - code or function name
	// Passed Params: 0) Module Position ASL, 1) Attached object, objNull if not attached
	{
		_listboxSide = [
			"LIST",
			"Select Side",
			[
				[west, east, independent, civilian],
				["BLUFOR", "OPFOR", "INDFOR", "CIVILIAN"],
				0,
				4
			],
			true
		];

		[
			"Update Settings: Select Side",
			[_listboxSide],
			{
				params ["_dialogValues", "_args"];

				_dialogValues params ["_side"];

				[_side] call bax_respawn_fnc_dialogUpdateRespawnSettings;
			}
		] call zen_dialog_fnc_create;
	},

	// 3) Icon file - Filepath, optional, default (shown below)
	"\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;
