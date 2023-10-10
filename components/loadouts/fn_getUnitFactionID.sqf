
#include "..\..\macros\loadoutAccessMacros.hpp"

params ["_unit"];

if !(_unit isKindOf "Man") exitWith { DEBUG_RPT_FULL("Object passed to _unit is not type Man"); };

_factionID = GETVAR(_unit,VARS_FACTION_ID,"");
if !(_factionID isEqualTo "") exitWith { _factionID; };

_sideStr = str side group _unit;

if (_sideStr isEqualTo str west) then { _factionID = "blufor"; }; 
if (_sideStr isEqualTo str east) then { _factionID = "opfor"; }; 
if (_sideStr isEqualTo str independent) then { _factionID = "indfor"; }; 
if (_sideStr isEqualTo str civilian) then { _factionID = "civilian"; };

if !(_factionID in VAR_FACTION_REGISTRY) then { _factionID = ""; };

_factionID;
