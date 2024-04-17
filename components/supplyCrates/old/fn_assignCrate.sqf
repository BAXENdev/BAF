
if !(isServer) exitWith {
	_this remoteExec ["BAX_LOADOUTS_fnc_assignCrate",2];
};

params ["_crateObject","_factionID","_crateSuffix"];

clearBackpackCargoGlobal _crateObject;
clearItemCargoGlobal _crateObject;
clearMagazineCargoGlobal _crateObject;
clearWeaponCargoGlobal _crateObject;

_crateArray = GETVARM(VARS_CRATE(_factionID,_crateSuffix),nil);
_crateItems = _crateArray select 1;

{
	_itemName = _x select 0;
	if ("Backpack" in ([_itemName] call BIS_fnc_itemType)) then {
		_crateObject addBackpackCargoGlobal _x;
	} else {
		_crateObject addItemCargoGlobal _x;
	};

} forEach _crateItems;

_load = loadAbs _crateObject;
_maxLoad = maxLoad _crateObject;
if (_load >= (floor (_maxLoad * 0.9))) then { 
	_crateObject setMaxLoad (floor (_load * 1.2));
};
