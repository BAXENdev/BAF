
_zenCode = {
	params ["_positionASL","_object"];

	if (isNull _object or !(_object isKindOf "CAManBase")) exitWith { ["BafWarning", ["Attach to unit"]] call BIS_fnc_showNotification; };

	// TODO: Add factionID selection
	[_object] call BAF_fnc_openLoadoutDialog;
};

[
	"BAF Loadout System",
	"Assign Loadout",
	_zenCode
] call zen_custom_modules_fnc_register;
