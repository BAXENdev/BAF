
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
 * 3: _classSuffix - for use by assign class. should be a class that contains the given loadout
 * 
 * Return Value:
 * -
 *
 * Example:
 * [_this,"rifleman"] call BAX_LOADOUTS_fnc_assignLoadout;
 * [_this,"rifleman","mercenary_faction"] call BAX_LOADOUTS_fnc_assignLoadout;
 * [_this,"rifleman","mercenary_faction","infantry_class"] call BAX_LOADOUTS_fnc_assignLoadout;
 *
 * Public: Yes
 */

#include "..\..\macros\loadoutAccessMacros.hpp"

params ["_unit",["_loadoutSuffix",""],["_factionId",""],["_classSuffix",""]];

if !(_unit isKindOf "Man") exitWith { DEBUG_RPT_FULL("attempted to assign loadout to non-man object"); };
if !(_factionId in VAR_FACTION_REGISTRY) then { DEBUG_RPT_FULL("FactionId passed to assignLoadout is not available in the registry."); };

if (_factionId isEqualTo "") then {
	_factionId = [_unit] call BAX_LOADOUTS_fnc_getUnitFactionID;
};

if (_factionId isEqualTo "") exitWith {
	_rptMsg = format ["Failed to assign unit with %1 loadout because there is not an available faction.", _loadoutSuffix]; 
	DEBUG_RPT_FULL(_rptMsg);
};

_loadoutBax = GET_LOADOUT_BAX(_loadoutSuffix,_factionId);
if !(_loadoutBax isEqualType []) exitWith { 
	_rptMsg = format ["(loadout) %1 is not initialized",GET_LOADOUT_VARIABLE(_loadoutSuffix,_factionId)];
	DEBUG_RPT_FULL(_rptMsg);
};

_loadoutArray = GET_LOADOUT_ARRAY(_loadoutBax);

// Loadout Stucture
// 0) Display Name,1) Loadout Array,2) Traits Array
if (alive _unit) then { // If not alive and loadout reassigned, do not update the units actual loadout
	_unit setUnitLoadout _loadoutArray;
};

_traits = GET_LOADOUT_TRAITS(_loadoutBax);

_medicalTrait = GET_TRAIT_MEDICAL(_traits);
SETVARG(_unit,"ace_medical_medicclass",_medicalTrait);
_unit setUnitTrait ["Medic",_medicalTrait > 0];

_engineerTrait = GET_TRAIT_ENGINEERING(_traits);
SETVARG(_unit,"ACE_isEngineer",_engineerTrait);
_unit setUnitTrait ["Engineer",_engineerTrait > 0];
// TODO: EOD
// TODO: Uav Hacker?

SETVARG(_unit,VARS_FACTION_ID,_factionId);
SETVARG(_unit,VARS_CLASS_SUFFIX,_classSuffix);
SETVARG(_unit,VARS_LOADOUT_SUFFIX,_loadoutSuffix);
SETVARG(_unit,VARS_RESPAWN_LOADOUT,_loadoutArray);
