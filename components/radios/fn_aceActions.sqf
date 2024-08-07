
#include "_radiosMacros.hpp"

if !(hasInterface) exitWith {};

_actionReloadRadioPreset = [
	"baxReloadRadioPreset", // Variable name
	"Reload Radio Preset", // Display name
	"", //  Icon path
	{
		// [] call bax_radios_fnc_buildRadioPreset;
		[] call bax_radios_fnc_loadRadioPreset;
	}, // Action code. params ["_target","_player","_params"]
	{ true }, // Condition code
	{}, // Insert children code, Optional
	[] // Action Code parameters, Optional
	// More stuff https://ace3.acemod.org/wiki/framework/interactionmenu-framework#31-fnc_createaction
] call ace_interact_menu_fnc_createAction;
[
	player,
	1,
	["ACE_SelfActions", "framework_menus"],
	_actionReloadRadioPreset
] call ace_interact_menu_fnc_addActionToObject;
