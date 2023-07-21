
#include "..\..\macros\loadoutAccessMacros.hpp"

params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];


_factionId = GETVAR(_oldUnit,UNIT_FACTION_ID,nil);
// _classSuffix = GETVAR(_oldUnit,UNIT_CLASS_SUFFIX,nil);
_loadoutSuffix = GETVAR(_oldUnit,UNIT_LOADOUT_SUFFIX,nil);
_loadoutArray = GETVAR(_oldUnit,UNIT_LOADOUT_ARRAY,nil);

if !(isNil "_factionId") then {
	if !(isNil "_classSuffix") then {
		if (isNil "_loadoutSuffix") then { _loadoutSuffix = 0; };
		[_newUnit,_classSuffix,_loadoutSuffix,_factionId] call BAF_fnc_assignClass;
	} else {
		if !(isNil "_loadoutSuffix") then {
			[_newUnit,_loadoutSuffix,_factionId] call BAF_fnc_assignLoadout;
		};
	};
};
if !(isNil "_loadoutArray") then { 
	_newUnit setUnitLoadout _loadoutArray;
	SETVARG(_newUnit,_UNIT_LOADOUT_ARRAY,_loadoutArray);
};

// TODO: RADIOS
// _radioGroupKey = GETVAR(_oldUnit,UNIT_RADIO_GROUP,nil);
// _radioUnitKey = GETVAR(_oldUnit,UNIT_RADIO_GROUP,nil);

