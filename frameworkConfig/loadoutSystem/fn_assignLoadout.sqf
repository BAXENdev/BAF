
/*
 * Author: BAXENATOR
 * Assigns a loadout to the unit. 
 * Exits if _unit is not a unit.
 * Exits if _loadoutSuffix is nil.
 * 
 * Arguments:
 * 0: _unit
 * 1: _loadoutSuffix
 * 2: _factionId
 * 
 * Return Value:
 * -
 *
 * Example:
 * [_this,"rifleman"] call baf_fnc_assignLoadout;
 * [_this,"rifleman","mercenary_faction"] call baf_fnc_assignLoadout;
 *
 * Public: Yes
 */

#include "..\..\macros\loadoutAccessMacros.hpp"

params ["_unit",["_loadoutSuffix","",[""]],["_factionId","",[""]]];

// Runtime Conditions
// TODO: Should this run in scheduled space to prevent stutters?

// TODO: Should this assume that all variables passed to you are valid?
if !(_unit isKindOf "CAManBase") exitWith { DEBUG_RPT("attempted to assign loadout to non-man object"); };
if !(_factionId in GET_REGISTRY_TAGS()) then { DEBUG_RPT("(loadout) FactionId passed to assignLoadout is not available in the registry."); };

if (_factionId isEqualTo "") then {
	_factionId = [_unit] call BAF_fnc_getUnitFactionId;
};

if (_factionId isEqualTo "") exitWith {
	_rptMsg = format ["(loadout) Failed to assign unit with %1 loadout because there is not an available faction.", _loadoutSuffix]; 
	DEBUG_RPT(_rptMsg);
};

_loadoutBaf = GET_LOADOUT_BAF(_loadoutSuffix,_factionId);
if !(_loadoutBaf isEqualType []) exitWith { 
	_rptMsg = format ["(loadout) %1 is not initialized",GET_LOADOUT_VARIABLE(_loadoutSuffix,_factionId)];
	DEBUG_RPT(_rptMsg);
};

_loadoutArray = GET_LOADOUT_ARRAY(_loadoutBaf);

// Loadout Stucture
// 0) Display Name,1) Loadout Array,2) Traits Array
_unit setUnitLoadout _loadoutArray;

_traits = GET_LOADOUT_TRAITS(_loadoutBaf);

_medicalTrait = GET_TRAIT_MEDICAL(_traits);
SETVARG(_unit,"ace_medical_medicclass",_medicalTrait);
_unit setUnitTrait ["Medic",_medicalTrait > 0];

_engineerTrait = GET_TRAIT_ENGINEERING(_traits);
SETVARG(_unit,"ACE_isEngineer",_engineerTrait);
_unit setUnitTrait ["Engineer",_engineerTrait > 0];
// TODO: EOD
// TODO: Uav Hacker?

// TODO: Assign Loadout as Variable to unit?
SETVARG(_unit,UNIT_FACTION_ID,_factionId);
SETVARG(_unit,UNIT_LOADOUT_SUFFIX,_loadoutSuffix);
SETVARG(_unit,UNIT_LOADOUT_ARRAY,_loadoutArray);
// TODO: Set unit radio key
