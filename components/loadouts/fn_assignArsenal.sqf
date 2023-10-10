
#include "..\..\macros\loadoutAccessMacros.hpp"

// params ["_objects"];

_objects = VAR_ARSENAL_OBJECTS;

if !(_objects isEqualType []) then { _objects = [_objects]; };
if !(hasInterface) exitWith {};
_notUnits = _objects findIf { _x isKindOf "Man"; };
if (_notUnits != -1) exitWith {
	_rptMsg = format ['Unit "%1" has been designated as an arsenal.'];
};

_factionID = player getVariable [VARS_FACTION_ID,nil];
if (isNil "_factionID") exitWith { DEBUG_RPT_FULL("Player wasn't assigned a faction."); };

_whitelistItems = [];
_blacklistItems = [];

_factionArsenal = GET_FACTION_ARSENAL(_factionID);
(_factionArsenal#0) apply { _whitelistItems pushBackUnique _x; };
(_factionArsenal#1) apply { _blacklistItems pushBackUnique _x; };

_loadoutSuffix = GETVAR(player,VARS_LOADOUT_SUFFIX,"");
_loadoutArsenal = GET_LOADOUT_ARSENAL(_factionID,_loadoutSuffix);
(_loadoutArsenal#0) apply { _whitelistItems pushBackUnique _x; };
(_loadoutArsenal#1) apply { _blacklistItems pushBackUnique _x; };

_loadoutBaf = GET_LOADOUT_BAF(_loadoutSuffix,_factionID);
_loadoutArray = GET_LOADOUT_ARRAY(_loadoutBaf);
(flatten _loadoutArray) apply { _whitelistItems pushBackUnique _x; };

_classSuffix = GETVAR(player,VARS_CLASS_SUFFIX,nil);
if !(isNil _classSuffix) then {
	_classArray = GET_CLASS(_classSuffix,_factionID);
	_classArsenal = GET_CLASS_ARSENAL(_classArray);
	[_whitelistItems,_classArsenal#0,true] call BAF_fnc_appendElements;
	[_blacklistItems,_classArsenal#1,true] call BAF_fnc_appendElements;
};

_arsenalItems = (_whitelistItems + MISC_ITEMS) - _blacklistItems; // Remove blacklisted items from whitelisted items.

_objects apply {
	[_x,true] call ace_arsenal_fnc_removeVirtualItems;
	[_x,_arsenalItems] call ace_arsenal_fnc_initBox;
};
