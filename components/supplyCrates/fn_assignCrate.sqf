
#include "_supplyCratesMacros.hpp"

if !(isServer) exitWith {
	_this remoteExec ["bax_supplyCrates_fnc_assignCrate",2]
};

params ["_object","_side","_crateName"];

if (_object isEqualType []) then {
	_object = _objectClass createVehicle _object;
};

if !(_object isEqualType objNull) exitWith {
	DEBUG_ERR("Invalid argument passed to _object: _object must be pos3D or object");
};

_crateItems = bax_supplyCrates_crates get _side get _crateName;

if (isNil "_crateItems") exitWith {
	_msg = format ["Invalid crateName passed: %1", _crateName];
	DEBUG_ERR(_msg);
};

clearBackpackCargoGlobal _object;
clearItemCargoGlobal _object;
clearMagazineCargoGlobal _object;
clearWeaponCargoGlobal _object;

{
	_x params ["_itemClass","_itemAmount"];
	if ("Backpack" in ([_itemClass] call BIS_fnc_itemType)) then {
		_object addBackpackCargoGlobal [_itemClass,_itemAmount];
	} else {
		_object addItemCargoGlobal [_itemClass,_itemAmount];
	};
} forEach _crateItems;

_load = loadAbs _object;
_maxLoad = maxLoad _object;
if (_load >= (floor (_maxLoad * 0.9))) then { 
	_object setMaxLoad (floor (_load * 1.2));
};
