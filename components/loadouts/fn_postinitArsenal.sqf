
#include "..\..\macros\loadoutMacros.hpp"

// params ["_objects"];

// TODO: Add caching

_arsenalObjects = GETVARM(VARS_ARSENAL_OBJECTS,nil);
if (_arsenalObjects isEqualTo []) exitWith {};
if !(hasInterface) exitWith {};

// _arsenalBox = GETVARM(VARS_ARSENAL_BOX,nil);
if (isNil VARS_ARSENAL_BOX) then {
	_object = "I_supplyCrate_F" createVehicleLocal [0,0,0];
	_object enableSimulation false;
	_object hideObject true;
	_object allowDamage false;
	SETVARM(VARS_ARSENAL_BOX,_object);
};

_side = toLower str side group player;
_arsenalListSide = GETVARM(VARS_SIDE_ARSENAL(SIDE),nil);
_whitelistItems = _arsenalListSide select 0;
_blacklistItems = _arsenalListSide select 1;

_factionID = GETVAR(player,VARS_FACTION_ID,nil);
if !(_factionID isEqualTo "") then {
	_factionArsenal = GETVARM(VARS_FACTION_ARSENAL(_factionID),nil);
	_whitelistItems append (_factionArsenal select 0);
	_blacklistItems append (_factionArsenal select 1);

	_loadoutSuffix = GETVAR(player,VARS_LOADOUT_SUFFIX,nil);
	_loadoutArsenal = GETVARM(VARS_LOADOUT_ARSENAL(_factionID,_loadoutSuffix),nil);
	_whitelistItems append (_loadoutArsenal select 0);
	_blacklistItems append (_loadoutArsenal select 1);

	_classSuffix = GETVAR(player,VARS_CLASS_SUFFIX,nil);
	if !(_classSuffix isEqualTo "") then {
		_classArsenal = GETVARM(VARS_CLASS_ARSENAL(_factionID,_classSuffix),nil);
		_whitelistItems append (_classArsenal select 0);
		_blacklistItems append (_classArsenal select 1);
	};
};

_arsenalItems = _whitelistItems - _blacklistItems; // Remove blacklisted items from whitelisted items.
_arsenalBox = GETVARM(VARS_ARSENAL_BOX,nil);
[_arsenalBox,true] call ace_arsenal_fnc_removeVirtualItems;
[_arsenalBox,_arsenalItems] call ace_arsenal_fnc_initBox;

_arsenalObjects = GETVARM(VARS_ARSENAL_BOX,nil);
_arsenalObjects apply {
	[_x] call BAX_LOADOUTS_fnc_addOpenArsenalAction;
};
