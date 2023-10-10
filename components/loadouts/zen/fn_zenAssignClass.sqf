
_code = {
	params ["_positionASL","_object"];

	if (isNull _object or !(_object isKindOf "Man")) exitWith { [objNull,"Attach To Unit"] call BIS_fnc_showCuratorFeedbackMessage; };

	[_object] call BAF_fnc_dialogSelectClass;
};

[
	"BAF Utilities",
	"[LOADOUT] Assign Class",
	_code
] call zen_custom_modules_fnc_register;
