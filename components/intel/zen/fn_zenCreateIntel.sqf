
_code = {
	params ["_posASL","_object"];
	if (isNull _object or {isPlayer _object}) exitWith { [objNull, "Place module on object"] call BIS_fnc_showCuratorFeedbackMessage; };
	[] call BAF_fnc_dialogCreateIntel;
};

[
	"BAF Utilities",
	"[INTEL] Create Intel",
	_code	
] call zen_custom_modules_fnc_register;
