
_function = {
	params ["_positionASL","_object"];

	if (isNull _object or !(_object isKindOf "CAManBase")) exitWith { ["BafWarning", ["Attach to unit"]] call BIS_fnc_showNotification; };

	// TODO: Add factionId selection
	[_object] call BAF_fnc_selectLoadoutDialog;
};

[
	"BAF Loadout System",
	"Assign Loadout",
	_function
] call zen_custom_modules_fnc_register;
