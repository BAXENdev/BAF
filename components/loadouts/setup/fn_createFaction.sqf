
#include "..\..\..\macros\loadoutMacros.hpp"

params ["_displayName"];

_factionID = CONVERT_TO_SUFFIX(_displayName);

_factionRegistry = GETVARM(VARS_FACTION_REGISTRY,nil);
_factionRegistry pushBack [_factionID,_displayName];

_factionArray = ["",""];
SETVARM(VARS_FACTION(_factionID),_factionArray);
SETVARM(VARS_LOADOUT_REGISTRY(_factionID),[]);
SETVARM(VARS_CLASS_REGISTRY(_factionID),[]);
SETVARM(VARS_CRATE_REGISTRY(_factionID),[]);

_factionID;
