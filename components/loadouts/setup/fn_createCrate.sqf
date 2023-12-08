
#include "..\..\..\macros\loadoutMacros.hpp"

params ["_factionID","_displayName"];

_crateSuffix = CONVERT_TO_SUFFIX(_displayName);

_crateRegistry = GETVARM(VARS_CRATE_REGISTRY(_factionID),nil);
_crateRegistry pushBack [_crateSuffix,_displayName];

_crateArray = [_displayName,[]];
SETVARM(VARS_CRATE(_factionID,_crateSuffix),_crateArray);

_crateSuffix;
