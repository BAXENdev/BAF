
#include "..\..\..\macros\loadoutMacros.hpp"

params ["_factionID","_crateSuffix","_displayName"];

_crateRegistry = GETVARM(VARS_CRATE_REGISTRY(_factionID),nil);
_crateRegistry pushBack [_crateSuffix,_displayName];

SETVARM(VARS_CRATE(_factionID,_crateSuffix),[_displayName,[]]);

