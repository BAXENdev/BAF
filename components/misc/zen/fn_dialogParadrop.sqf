
params ["_position","_object"];

// TODO: Add position selection

_heightSlider = [
	// 0) Content Type
	// SLIDER:PERCENT takes the value, multiplies by 100, and appends a % sign
	// SLIDER:RADIUS draws a circle on the map
	"SLIDER",

	// 1) Display Name and Tooltip
	"Title", // or  ["Title", "Tooltip"],

	// 2) Control Specific Arguments
	[
		// 0) Minimum Value
		0,

		// 1) Maximum Value
		1,

		// 2) Default Value
		0.5,

		// 3) Formatting, NUMBER or CODE. 
		// Number represents number of decimals (0, 1, 2)
		// Code formats a number passed as argument, and returns it as string
		2, // or { param["_number"]; str _number; }

		// 4) Radius Center, OBJECT or ARRAY (AGL Position)
		// https://community.bistudio.com/wiki/ASLToAGL
		[0, 0, 0],

		// 5) Radius Color RGBA
		[1, 1, 1, 1]
	],

	// 3) Force Default, default: false
	true
];

_markers = [
	// 0) Content Type
	"LIST",

	// 1) Display Name and Tooltip
	["Select Marker","Adds a grenade to the top as a marker."], // or  ["Title", "Tooltip"],

	// 2) Control Specific Arguments
	[
		// 0) Values to be returned
		[0,1,2,3,4,5,6,7,8,9,10,11],

		// 1) Pretty Names for Corresponding Return Value
		// Pretty Names can be a list of strings or a list complex data 
		[
			"None",
			"Smoke (White)",
			"Smoke (Yellow)",
			"Smoke (Green)",
			"Smoke (Red)",
			"Smoke (Blue)",
			"Smoke (Purple)",
			"Smoke (Orange)",
			"Flare (White_",
			"Flare (Yellow)",
			"FlarE (Green)",
			"Flare (Red)"
		],

		// 2) Default Index
		0, // TODO: Determine if its 0 index

		// 3) List Height
		5
	]
];

_code = {
	params ["_dialogValues","_arguments"];
	_dialogValues params ["_height","_addSmoke"];
	_arguments params ["_position","_object"];

	if (isNull _object) exitWith { [objNull,"Place on object."] call BIS_fnc_showCuratorFeedbackMessage; };

	[_object,_position,_height,_addSmoke,_smokeTime] call BAF_fnc_paradrop;
};

[
	"Paradrop Object",
	[_heightSlider,_markers],

	// 2) On Confirm, unscheduled
	// Passed Arguments:
	// 0) Dialog Values in order of Content
	// 1) Arguments, the same ones passed in arg4 for zen_dialog_fnc_create
	_code, // TODO: Finish code

	// 3) On Cancel, default: {}, unscheduled
	{}, 

	// 4) Arguments, default: []
	[_position,_object]

] call zen_dialog_fnc_create;
