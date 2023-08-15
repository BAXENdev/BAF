
#include "..\..\macros\loadoutAccessMacros.hpp"

params ["_unit"];

if !(_unit isKindOf "Man") exitWith { DEBUG_RPT_FULL("Object passed to _unit is not type Man"); };

_factionID = GETVAR(_unit,UNIT_FACTION_ID,"");
if !(_factionID isEqualTo "") exitWith { _factionID; };

_sideStr = str side group _unit;

if (_sideStr isEqualTo str west) then { _factionID = WEST_ID_STR; }; 
if (_sideStr isEqualTo str east) then { _factionID = EAST_ID_STR; }; 
if (_sideStr isEqualTo str independent) then { _factionID = INDEPENDENT_ID_STR; }; 
if (_sideStr isEqualTo str civilian) then { _factionID = CIVILIAN_ID_STR; };

if !(_factionID in GET_REGISTRY_TAGS()) then { _factionID = ""; };

_factionID;
