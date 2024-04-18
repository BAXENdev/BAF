
#include "_commonMacros.hpp"

if !(hasInterface) exitWith {};

_menuActions = [
	"framework_settings", // Variable name
	"BAX Menus", // Display name
	"", //  Icon path
	{}, // Action code. params ["_target","_player","_params"]
	{}, // Condition code
	{}, // Insert children code, Optional
	[] // Action Code parameters, Optional
	// More stuff https://ace3.acemod.org/wiki/framework/interactionmenu-framework#31-fnc_createaction
] call ace_interact_menu_fnc_createAction;
[
	"CAManBase",
	1,
	["ACE_SelfActions"],
	_menuActions,
	true
] call ace_interact_menu_fnc_addActionToClass;
