
_code = {
	params ["_positionASL","_object"];

	if (isNull _object or !(_object isKindOf "Man")) exitWith { [objNull,"Attach To Unit"] call BIS_fnc_showCuratorFeedbackMessage; };

	// TODO: Add factionId selection
	[_object] call BAF_fnc_dialogSelectLoadout;
};

[
	"BAF Utilities",
	"[LOADOUT] Assign Loadout",
	_code
] call zen_custom_modules_fnc_register;
