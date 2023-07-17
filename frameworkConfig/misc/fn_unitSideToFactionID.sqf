
#include "..\..\macros\utilityMacros.hpp"

params ["_unit"];

if !(_unit isKindOf "CAManBase") exitWith { DEBUG_RPT("Object passed to _unit is not type CAManBase"); };

_sideStr = str side group _unit;
_factionID = "";

if (_sideStr isEqualTo str west) then { _factionID = WEST_ID_STR; }; 
if (_sideStr isEqualTo str east) then { _factionID = EAST_ID_STR; }; 
if (_sideStr isEqualTo str independent) then { _factionID = INDEPENDENT_ID_STR; }; 
if (_sideStr isEqualTo str civilian) then { _factionID = CIVILIAN_ID_STR; };

_factionID;
