
#include "..\..\..\macros\loadoutMacro.hpp"

params ["_factionID","_classSuffix","_displayName","_loadoutSuffix"];

_classRegistry = GETVARM(VARS_CLASS_REGISTRY(_factionID),nil);
_classRegistry pushBack [_classSuffix,_displayName];

_loadoutArray = GETVARM(VARS_LOADOUT(_classSuffix,_loadoutSuffix),nil);
_loadoutDisplayName = _loadoutArray select 0;
SETVARM(VARS_CLASS(_factionID,_classSuffix),[_displayName,[_loadoutSuffix,_displayName],""]);
SETVARM(VARS_CLASS_ARSNEAL(_factionID,_classSuffix),[[],[]]);
