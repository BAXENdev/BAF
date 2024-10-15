
#include "..\_mapMarkersMacros.hpp"

_checkboxBluforMarkers = [
	"CHECKBOX",
	"Blufor Map Markers Enabled",
	bax_mapMarkers_enabledBlufor,
	true
];
_checkboxOpforMarkers = [
	"CHECKBOX",
	"Opfor Map Markers Enabled",
	bax_mapMarkers_enabledOpfor,
	true
];
_checkboxIndforMarkers = [
	"CHECKBOX",
	"Indfor Map Markers Enabled",
	bax_mapMarkers_enabledIndfor,
	true
];
_checkboxCivilianMarkers = [
	"CHECKBOX",
	"Civilian Map Markers Enabled",
	bax_mapMarkers_enabledCivilian,
	true
];

[
	"Update Map Marker Settings",
	[
		_checkboxBluforMarkers,
		_checkboxOpforMarkers,
		_checkboxIndforMarkers,
		_checkboxCivilianMarkers
	],
	{
		params ["_dialogValues","_args"];
		_dialogValues params ["_showBluforMarkers", "_showOpforMarkers", "_showIndforMarkers", "_showCivilianMarkers"];

		missionNamespace setVariable ["bax_mapMarkers_enabledBlufor", _showBluforMarkers, true];
		missionNamespace setVariable ["bax_mapMarkers_enabledOpfor", _showBluforMarkers, true];
		missionNamespace setVariable ["bax_mapMarkers_enabledIndfor", _showBluforMarkers, true];
		missionNamespace setVariable ["bax_mapMarkers_enabledCivilian", _showBluforMarkers, true];
	},
	{},
	[]
] call zen_dialog_fnc_create;
