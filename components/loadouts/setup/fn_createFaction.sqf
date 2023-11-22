
#include "..\..\..\macros\loadoutMacros.hpp"

params ["_factionID","_displayName"]

_factionRegistry = GETVARM(VARS_FACTION_REGISTRY,[]);
_factionRegistry pushBack [_factionID,_displayName];

SETVARM(VARS_FACTION(_factionID),["",""]);
SETVARM(VARS_LOADOUT_REGISTRY(_factionID),[]);
SETVARM(VARS_CLASS_REGISTRY(_factionID),[]);
SETVARM(VARS_CRATE_REGISTRY(_factionID),[]);
SETVARM(VARS_FACTION_ARSNEAL(_factionID),[[],[]]);
