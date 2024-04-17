
#include "..\supplyCratesMacros.hpp"

params ["_name","_crateObject","_deleteDefaultCargo"];

if (isNull (configFile >> "CfgVehicles" >> _crateObject)) then {
	throw "Invalid Vehicle Class";
};

// _inventory = _inventory select { !(([_x] call BIS_fnc_itemType) isEqualTo [[],[]]) };

BVAR(supplyCrates,crates) set [_name, [_crateObject,[],_deleteDefaultCargo]];
