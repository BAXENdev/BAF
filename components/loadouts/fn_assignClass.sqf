
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
 * TODO
 *
 * Public: Yes
 */

#include "..\..\macros\loadoutAccessMacros.hpp"

params ["_unit",["_classSuffix","",[""]],["_index",0,["",0]],["_factionId","",[""]]];

if !(_unit isKindOf "Man") exitWith { DEBUG_RPT_FULL("attempted to assign loadout to non-man object"); };
if !(_factionId in VAR_FACTION_REGISTRY) then { DEBUG_RPT_FULL("FactionId passed to assignLoadout is not available in the registry."); };

_classBax = GET_CLASS(_classSuffix,_factionId);
if !(_classBax isEqualType []) exitWith {
	_rptMessage = format ["Given class suffix '%1' does not exist",_classSuffix];
};

_loadouts = GET_CLASS_LOADOUTS(_classBax);
private ["_loadoutSuffix"];
if (_index isEqualType "") then {
	_index = _loadouts findIf { _x#0 isEqualTo _index; };
	if (_index != -1) then { _loadoutSuffix = _loadouts#_index#0; }
	else { _loadoutSuffix = _loadouts#0#0; };
} else {
	if (_index >= count _loadouts) then { _index = 0; };
	_loadoutSuffix = _loadouts#_index#0;
};

[_unit,_loadoutSuffix,_factionId,_classSuffix] call BAX_LOADOUTS_fnc_assignLoadout;
