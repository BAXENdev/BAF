
#include "_mapMarkersMacros.hpp"

if (!hasInterface) exitWith {};

_actionUpdateGroupMarker = [
	"baxUpdateGroupMarker", // Variable name
	"Update Group Marker", // Display name
	"", //  Icon path
	{
		[player] call bax_mapMarkers_fnc_dialogUpdateGroupMarker;
	}, // Action code. params ["_target","_player","_params"]
	{ true }, // Condition code
	{}, // Insert children code, Optional
	[] // Action Code parameters, Optional
	// More stuff https://ace3.acemod.org/wiki/framework/interactionmenu-framework#31-fnc_createaction
] call ace_interact_menu_fnc_createAction;
[
	"CAManBase",
	1,
	["ACE_SelfActions","framework_settings"],
	_actionUpdateGroupMarker,
	true
] call ace_interact_menu_fnc_addActionToClass;

_actionUpdateMapMarkersSettings = [
	"baxUpdateMapMarkersSettings", // Variable name
	"Map Marker Settings", // Display name
	"", //  Icon path
	{
		[player] call bax_mapMarkers_fnc_dialogMarkerSettings;
	}, // Action code. params ["_target","_player","_params"]
	{ true }, // Condition code
	{}, // Insert children code, Optional
	[] // Action Code parameters, Optional
	// More stuff https://ace3.acemod.org/wiki/framework/interactionmenu-framework#31-fnc_createaction
] call ace_interact_menu_fnc_createAction;
[
	"CAManBase",
	1,
	["ACE_SelfActions","framework_settings"],
	_actionUpdateMapMarkersSettings,
	true
] call ace_interact_menu_fnc_addActionToClass;
