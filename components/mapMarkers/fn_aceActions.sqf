
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
	player,
	1,
	["ACE_SelfActions","framework_menus"],
	_actionUpdateGroupMarker
] call ace_interact_menu_fnc_addActionToObject;

_actionUpdateMapMarkersSettings = [
	"baxUpdateMapMarkersSettings", // Variable name
	"Map Marker Settings", // Display name
	"", //  Icon path
	{
		[] call bax_mapMarkers_fnc_dialogMarkerSettings;
	}, // Action code. params ["_target","_player","_params"]
	{ true }, // Condition code
	{}, // Insert children code, Optional
	[] // Action Code parameters, Optional
	// More stuff https://ace3.acemod.org/wiki/framework/interactionmenu-framework#31-fnc_createaction
] call ace_interact_menu_fnc_createAction;
[
	player,
	1,
	["ACE_SelfActions","framework_menus"],
	_actionUpdateMapMarkersSettings
] call ace_interact_menu_fnc_addActionToObject;
