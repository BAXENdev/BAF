
#include "..\..\..\macros\loadoutMacros.hpp"

params ["_factionID","_loadoutSuffix",["_classSuffix",""]];

_factionArray = GETVARM(VARS_FACTION(_factionID),nil);
_factionArray set [0,_loadoutSuffix]; // Loadout suffix default
_factionArray set [1,_classSuffix]; // Class suffix default
