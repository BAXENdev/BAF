
#include "..\..\..\macros\loadoutMacros.hpp"

params ["_factionID","_loadoutSuffix"];

_classArray = GETVARM(VARS_FACTION(_factionID),nil);
_classArray set [2,_loadoutSuffix]; // Loadout suffix default
