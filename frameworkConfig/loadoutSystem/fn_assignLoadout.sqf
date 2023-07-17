
/*
 * Author: BAXENATOR
 * Assigns a loadout to the unit. 
 * Exits if _unit is not a unit.
 * Exits if _loadoutSuffix is nil.
 * 
 * Arguments:
 * 0: _unit
 * 1: _loadoutSuffix
 * 2: _factionID
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

params ["_unit",["_loadoutSuffix","",[""]],["_factionID","",[""]]];

// Runtime Conditions
// TODO: Should this run in scheduled space to prevent stutters?

// TODO: Should this assume that all variables passed to you are valid?
if !(_unit isKindOf "CAManBase") exitWith { DEBUG_RPT("attempted to assign loadout to non-man object"); };
if !(_factionID in (missionNamespace getVariable ["baf_registry_tags", []])) then { DEBUG_RPT("(loadout) Given FactionID is not available."); };

if (_factionID isEqualTo "") then {
	_factionID = [_unit] call BAF_fnc_unitSideToFactionID;
};

if (_factionID isEqualTo "") exitWith { DEBUG_RPT(format ["(loadout) Failed to assign unit with %1 loadout because there is not an available faction.", _loadoutSuffix]); };

_loadoutBaf = GET_LOADOUT_BAF(_factionID,_loadoutSuffix);
if !(_loadoutBaf isEqualType []) exitWith { DEBUG_RPT(format ["(loadout) %1 is not initialized",GET_LOADOUT_VARIABLE(_factionId,_loadoutSuffix)]); };

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
SETVARG(_unit,"baf_faction_id",_factionID);
SETVARG(_unit,"baf_loadout_suffix",_loadoutSuffix);
