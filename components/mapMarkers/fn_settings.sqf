
#include "_mapMarkersMacros.hpp"

if !(hasInterface) exitWith {};

["bax_mapMarkers_groupMarkerSize", 32] call bax_settings_fnc_loadPLayerVar;
["bax_mapMarkers_unitMarkerSize", 32] call bax_settings_fnc_loadPLayerVar;
["bax_mapMarkers_groupMarkerTransparency", "Solid"] call bax_settings_fnc_loadPLayerVar;

// [
// 	"player",
// 	"map markers",
// 	[
// 		"SLIDER",
// 		"Group Marker Size",
// 		[
// 			1,
// 			100,
// 			round bax_mapMarkers_groupMarkerSize,
// 			0
// 		],
// 		true
// 	],
// 	{
// 		params ["_newValue"];
// 		["bax_mapMarkers_groupMarkerSize",_newValue] call bax_settings_fnc_updatePlayerVar;
// 	}
// ] call bax_settings_fnc_registerSetting;

// [
// 	"player",
// 	"map markers",
// 	[
// 		"SLIDER",
// 		"Unit Marker Size",
// 		[
// 			1,
// 			100,
// 			bax_mapMarkers_groupMarkerSize,
// 			0
// 		],
// 		true
// 	],
// 	{
// 		params ["_newValue"];
// 		["bax_mapMarkers_groupMarkerSize",round _newValue] call bax_settings_fnc_updatePlayerVar;
// 	}
// ] call bax_settings_fnc_registerSetting;

// [
// 	"player",
// 	"map markers",
// 	[
// 		"COMBO",
// 		"Group Marker Background",
// 		[
// 			["Transparent","Solid"],
// 			["Transparent","Solid"],
// 			["Transparent","Solid"] find bax_mapMarkers_groupMarkerTransparency
// 		],
// 		true
// 	],
// 	{
// 		params ["_newValue"];
// 		["bax_mapMarkers_groupMarkerSize",_newValue] call bax_settings_fnc_updatePlayerVar;
// 	}
// ] call bax_settings_fnc_registerSetting;
