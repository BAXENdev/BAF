
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

params ["_unit",["_classSuffix","",[""]],["_factionId","",[""]]];

// Runtime Conditions
// TODO: Should this run in scheduled space to prevent stutters?

// TODO: Should this assume that all variables passed to you are valid?
if !(_unit isKindOf "CAManBase") exitWith { DEBUG_RPT_FULL("attempted to assign loadout to non-man object"); };
if !(_factionId in GET_REGISTRY_TAGS()) then { DEBUG_RPT_FULL("FactionId passed to assignLoadout is not available in the registry."); };

if (_factionId isEqualTo "") then {
	_factionId = [_unit] call BAF_fnc_getUnitFactionId;
};

if (_factionId isEqualTo "") exitWith {
	_rptMsg = format ["Failed to assign unit with class '%1' because there is not an available faction.", _classSuffix]; 
	DEBUG_RPT_FULL(_rptMsg);
};

_classBaf = GET_CLASS(_classSuffix,_factionId);
if !(_classBaf isEqualType []) exitWith {
	_rptMessage = format ["Failed to "]
};
