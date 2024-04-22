
#include "_mapMarkersMacros.hpp"

if !(hasInterface) exitWith {};

["bax_mapMarkers_groupMarkerSize",32] call bax_settings_fnc_loadPLayerVar;
["bax_mapMarkers_unitMarkerSize",32] call bax_settings_fnc_loadPLayerVar;
["bax_mapMarkers_groupMarkerTransparency","Solid"] call bax_settings_fnc_loadPLayerVar;


[
	"player",
	[
		"SLIDER",
		"Group Marker Size",
		[
			1,
			100,
			round bax_mapMarkers_groupMarkerSize,
			0
		],
		true
	],
	{
		params ["_newValue"];
		["bax_mapMarkers_groupMarkerSize",_newValue] call bax_settings_fnc_updatePlayerVar;
	}
] call bax_settings_fnc_registerSetting;

[
	"player",
	[
		"SLIDER",
		"Unit Marker Size",
		[
			1,
			100,
			bax_mapMarkers_groupMarkerSize,
			0
		],
		true
	],
	{
		params ["_newValue"];
		["bax_mapMarkers_groupMarkerSize",round _newValue] call bax_settings_fnc_updatePlayerVar;
	}
] call bax_settings_fnc_registerSetting;

[
	"player",
	[
		"COMBO",
		"Group Marker Background",
		[
			["Transparent","Solid"],
			["Transparent","Solid"],
			bax_mapMarkers_groupMarkerTransparency find ["Transparent","Solid"]
		],
		true
	],
	{
		params ["_newValue"];
		["bax_mapMarkers_groupMarkerSize",_newValue] call bax_settings_fnc_updatePlayerVar;
	}
] call bax_settings_fnc_registerSetting;
