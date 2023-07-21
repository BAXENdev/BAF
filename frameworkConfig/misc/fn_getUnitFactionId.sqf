
#include "..\..\macros\loadoutAccessMacros.hpp"

params ["_unit"];

if !(_unit isKindOf "CAManBase") exitWith { DEBUG_RPT("Object passed to _unit is not type CAManBase"); };

_factionId = "";

_factionId = GETVAR(_unit,UNIT_FACTION_ID,"");
if !(_factionId isEqualTo "") exitWith { _factionId; };

_sideStr = str side group _unit;

if (_sideStr isEqualTo str west) then { _factionId = WEST_ID_STR; }; 
if (_sideStr isEqualTo str east) then { _factionId = EAST_ID_STR; }; 
if (_sideStr isEqualTo str independent) then { _factionId = INDEPENDENT_ID_STR; }; 
if (_sideStr isEqualTo str civilian) then { _factionId = CIVILIAN_ID_STR; };

if !(_factionId in GET_REGISTRY_TAGS()) then { _factionId = ""; };

_factionId;
