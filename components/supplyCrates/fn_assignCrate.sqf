
#include "_supplyCratesMacros.hpp"

if !(isServer) exitWith {
	_this remoteExec ["bax_supplyCrates_fnc_assignCrate",2]
};

params ["_object","_side","_crateName"];

_crateArray = bax_supplyCrates_crates get _side get _crateName;
_crateArray params ["_objectClass","_itemsArray"];

if (_object isEqualType []) then {
	_object = _objectClass createVehicle _object;
};

if !(_object isEqualType objNull) exitWith {
	DEBUG_ERR("Invalid argument passed to _object: _object must be pos3D or object");
};

clearBackpackCargoGlobal _object;
clearItemCargoGlobal _object;
clearMagazineCargoGlobal _object;
clearWeaponCargoGlobal _object;

{
	_x params ["_itemClass","_itemAmount"];
	if ("Backpack" in ([_itemClass] call BIS_fnc_itemType)) then {
		_crateObject addBackpackCargoGlobal [_itemClass,_itemAmount];
	} else {
		_crateObject addItemCargoGlobal [_itemClass,_itemAmount];
	};
} forEach _itemsArray;

_load = loadAbs _object;
_maxLoad = maxLoad _object;
if (_load >= (floor (_maxLoad * 0.9))) then { 
	_object setMaxLoad (floor (_load * 1.2));
};
