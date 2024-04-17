
_action = [
	"action_var_name", // Variable name
	"action name", // Display name
	"", //  Icon path
	{}, // Action code. params ["_target","_player","_params"]
	{}, // Condition code
	{}, // Insert children code, Optional
	[] // Action Code parameters, Optional
	// More stuff https://ace3.acemod.org/wiki/framework/interactionmenu-framework#31-fnc_createaction
] call ace_interact_menu_fnc_createAction;

[
	_obj, // Object to add action to
	0, // Type of action. 0 = action, 1 = self-actions
	["ACE_MainActions"],
	_action
] call ace_interact_menu_fnc_addActionToObject;

[
	_obj,
	0,
	["ACE_MainActions","action_var_name"]
] call ace_interact_menu_fnc_removeActionFromObject;
