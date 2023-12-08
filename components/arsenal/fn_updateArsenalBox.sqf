
#include "..\..\..\macros\loadoutMacros.hpp"

// TODO: Add caching

if !(hasInterface) exitWith {};

if (isNil VARS_ARSENAL_BOX) then {
	_object = "I_supplyCrate_F" createVehicleLocal [0,0,0];
	_object enableSimulation false;
	_object hideObject true;
	_object allowDamage false;
	SETVARM(VARS_ARSENAL_BOX,_object);
};

_whitelistItems = MISC_ITEMS;
_blacklistItems = [];



_arsenalItems = _whitelistItems - _blacklistItems; // Remove blacklisted items from whitelisted items.
_arsenalBox = GETVARM(VARS_ARSENAL_BOX,nil);
[_arsenalBox,true] call ace_arsenal_fnc_removeVirtualItems;
[_arsenalBox,_arsenalItems] call ace_arsenal_fnc_initBox;
