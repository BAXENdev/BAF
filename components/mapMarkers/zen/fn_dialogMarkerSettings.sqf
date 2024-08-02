
#include "..\_mapMarkersMacros.hpp"

_sliderGroupMarkerSize = [
	"SLIDER",
	"Group Marker Size",
	[
		1,
		100,
		round bax_mapMarkers_groupMarkerSize,
		0
	],
	true
];

_sliderUnitMarkerSize = [
	"SLIDER",
	"Unit Marker Size",
	[
		1,
		100,
		round bax_mapMarkers_unitMarkerSize,
		0
	],
	true
];

_defaultIndex = ["Transparent","Solid"] find bax_mapMarkers_groupMarkerTransparency;
_comboBoxMarkerTransparency = [
	"COMBO",
	"Group Marker Background",
	[
		["Transparent","Solid"],
		["Transparent","Solid"],
		_defaultIndex
	],
	true
];

[
	// 0) Title
	"Update Group Marker",
	
	// 1) Content Array of Zen Dialogs
	[_sliderGroupMarkerSize, _sliderUnitMarkerSize, _comboBoxMarkerTransparency],

	// 2) On Confirm, unscheduled
	// Passed Arguments:
	// 0) Dialog Values in order of Content
	// 1) Arguments, the same ones passed in arg4 for zen_dialog_fnc_create
	{
		params ["_dialogValues","_args"];
		_dialogValues params ["_groupMarkerSize","_unitMarkerSize","_iconTransparency"];

		["bax_mapMarkers_groupMarkerSize", _groupMarkerSize] call bax_settings_fnc_updatePlayerVar;
		["bax_mapMarkers_unitMarkerSize", _unitMarkerSize] call bax_settings_fnc_updatePlayerVar;
		["bax_mapMarkers_groupMarkerTransparency", _iconTransparency] call bax_settings_fnc_updatePlayerVar;
		// [] call bax_settings_fnc_pushPlayerSettings;
	},
	{},
	[]
] call zen_dialog_fnc_create;
