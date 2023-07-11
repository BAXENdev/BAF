
/*
 * Author: BAXENATOR
 * Assigns a loadout to the unit. 
 * Exits if _unit is not a unit.
 * Exits if _loadout is nil. (this is done to allow for a parent init method to init radios without a loadout.)
 * 
 * Arguments:
 * 0: _unit
 * 1: _loadout <ace loadout array>
 *
 * Return Value:
 * -
 *
 * Example:
 * [_this,"rif"] call baf_fnc_assignLoadout;
 *
 * Public: Yes
 */

#include "loadoutAccessMacros.hpp"

params ["_unit","_loadoutSuffix","_factionId"];

// Runtime Conditions
// TODO: Should this run in scheduled space to prevent stutters?

// TODO: Should this assume that all variables passed to you are valid?
if (isNil _unit) exitWith { DEBUG_RPT("attempted to assign loadout to nil _unit"); };
if (!_unit isKindOf "CAManBase") exitWith { DEBUG_RPT("attempted to assign loadout to non-man object"); };

if (isNil _factionId or _factionId isEqualTo "") then {
	_factionId = [_unit] call BAF_fnc_unitSideToFactionID;
};

_loadout = GET_LOADOUT(_factionId,_loadoutSuffix);
if (isNil _loadout) exitWith { DEBUG_RPT(format ["%1 is not initialized",GET_LOADOUT_VARIABLE(_factionId,_loadoutSuffix)]); };

// Loadout Stucture
// 0) Display Name,1) Loadout Array,2) Traits Array
_unit setUnitLoadout _loadout;

_traits = GET_LOADOUT_TRAITS(_loadout);

_medicalTrait = GET_TRAIT_MEDICAL(_traits);
SETVARG(_unit,"ace_medical_medicclass",_medicalTrait);
_unit setUnitTrait ["Medic",_medicalTrait > 0];

_engineerTrait = GET_TRAIT_ENGINEERING(_traits);
SETVARG(_unit,"ACE_isEngineer",_engineerTrait);
_unit setUnitTrait ["Engineer",_engineerTrait > 0];
// TODO: EOD
// TODO: Uav Hacker?

// TODO: Assign Loadout as Variable to unit?
SETVARG(_unit, BAF_FACTION_ID_VAR, _factionId);
SETVARG(_unit, BAF_LOADOUT_SUFFIX_VAR, _factionId);
