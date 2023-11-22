
_code = {
	params ["_positionASL","_object"];

	if (isNull _object or !(_object isKindOf "Man")) exitWith { [objNull,"Attach To Unit"] call BIS_fnc_showCuratorFeedbackMessage; };

	[_object] call BAX_LOADOUTS_fnc_dialogSelectClass;
};

[
	"BAX Utilities",
	"[LOADOUT] Assign Class",
	_code
] call zen_custom_modules_fnc_register;
