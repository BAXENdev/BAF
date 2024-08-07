
#include "_mapMarkersMacros.hpp"

if !(hasInterface) exitWith {};

["bax_mapMarkers_groupMarkerSize", 32] call bax_settings_fnc_loadPLayerVar;
["bax_mapMarkers_unitMarkerSize", 32] call bax_settings_fnc_loadPLayerVar;
["bax_mapMarkers_groupMarkerTransparency", "Solid"] call bax_settings_fnc_loadPLayerVar;

[
	"framework",
	"Map Markers",
	{
		// return
		[
			"CHECKBOX",
			"Blufor Map Markers Enabled",
			bax_mapMarkers_enabledBlufor,
			true
		]
	},
	{
		params ["_showBluforMarkers"];
		missionNamespace setVariable ["bax_mapMarkers_enabledBlufor", _showBluforMarkers, true];
	}
] call bax_settings_fnc_registerSetting;

[
	"framework",
	"Map Markers",
	{
		// return
		[
			"CHECKBOX",
			"Opfor Map Markers Enabled",
			bax_mapMarkers_enabledOpfor,
			true
		]
	},
	{
		params ["_showBluforMarkers"];
		missionNamespace setVariable ["bax_mapMarkers_enabledOpfor", _showBluforMarkers, true];
	}
] call bax_settings_fnc_registerSetting;

[
	"framework",
	"Map Markers",
	{
		// return
		[
			"CHECKBOX",
			"Indfor Map Markers Enabled",
			bax_mapMarkers_enabledIndfor,
			true
		]
	},
	{
		params ["_showBluforMarkers"];
		missionNamespace setVariable ["bax_mapMarkers_enabledIndfor", _showBluforMarkers, true];
	}
] call bax_settings_fnc_registerSetting;

[
	"framework",
	"Map Markers",
	{
		// return
		[
			"CHECKBOX",
			"Civilian Map Markers Enabled",
			bax_mapMarkers_enabledCivilian,
			true
		]
	},
	{
		params ["_showBluforMarkers"];
		missionNamespace setVariable ["bax_mapMarkers_enabledCivilian", _showBluforMarkers, true];
	}
] call bax_settings_fnc_registerSetting;
