
params ["_object"];

if (isNull _object) exitWith { false; };

_className = typeOf _object;
_tb = getNumber (configFile >> "CfgVehicles" >> _className >> "transportmaxbackpacks");
_tm = getNumber (configFile >> "CfgVehicles" >> _className >> "transportmaxmagazines");
_tw = getNumber (configFile >> "CfgVehicles" >> _className >> "transportmaxweapons");

// Return
_isCrate = _tb > 0 || _tm > 0 || _tw > 0;
_isCrate;
