
/*
 * Author: BAXENATOR
 * Assigns a loadout to the unit. 
 * Exits if _unit is not a unit.
 * Exits if _loadoutSuffix is nil.
 * 
 * Arguments:
 * 0: _unit
 * 1: _classSuffix
 * 2: _factionId
 * 
 * Return Value:
 * -
 *
 * Example:
 * [_this,"infantry"] call baf_fnc_assignClass;
 * [_this,"command","mercenary_faction"] call baf_fnc_assignClass;
 *
 * Public: Yes
 */

#include "..\..\macros\loadoutAccessMacros.hpp"

params ["_unit",["_classSuffix","",[""]],["_index",0,["",0]],["_factionId","",[""]]];

// Runtime Conditions
// TODO: Should this run in scheduled space to prevent stutters?

// TODO: Should this assume that all variables passed to you are valid?
if !(_unit isKindOf "CAManBase") exitWith { DEBUG_RPT_FULL("attempted to assign loadout to non-man object"); };
if !(_factionId in GET_REGISTRY_TAGS()) then { DEBUG_RPT_FULL("FactionId passed to assignLoadout is not available in the registry."); };

_classBaf = GET_CLASS(_classSuffix,_factionId);
if !(_classBaf isEqualType []) exitWith {
	_rptMessage = format ["Given class suffix '%1' does not exist",_classSuffix];
};

_loadouts = GET_CLASS_LOADOUTS(_classBaf);
private ["_loadoutSuffix"];
if (_index isEqualType "") then {
	_index = _loadouts findIf { _x#0 isEqualTo _index; };
	if (_index != -1) then { _loadoutSuffix = _loadouts#_index#0; }
	else { _loadoutSuffix = _loadouts#0#0; };
} else {
	if (_index >= count _loadouts) then { _index = 0; };
	_loadoutSuffix = _loadouts#_index#0;
};

SETVARG(_unit,UNIT_CLASS_SUFFIX,_classSuffix);
[_unit,_loadoutSuffix,_factionId] call BAF_fnc_assignLoadout;
