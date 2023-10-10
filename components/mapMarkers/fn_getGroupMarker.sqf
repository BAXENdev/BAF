
params ["_group"];

_unit = leader group;

_vehicle = objectParent _unit;

if (isNull _vehicle) exitWith { 
	ICON_B_INFANTRY;
};

_type = ([_vehicle] call BIS_fnc_objectType)#1;

if (_type in ["Tank","TrackedAPC","WheeledAPC"]) exitWith {
	ICON_B_ARMOR;
};

if (_type isEqualTo "Car") exitWith {
	ICON_B_MECHANIZED;
};

if (_type isEqualTo "Helicopter") exitWith {
	ICON_B_AIR;
};

if (_type isEqualTo "Plane") exitWith {
	ICON_B_PLANE;
};

if (_type in ["Ship","Submarine"]) exitWith {
	ICON_B_NAVAL;
};

ICON_B_INFANTRY;


