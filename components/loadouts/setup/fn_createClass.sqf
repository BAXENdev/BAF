
#include "..\..\..\macros\loadoutMacros.hpp"

params ["_factionID","_displayName","_loadoutSuffix"];

_classSuffix = CONVERT_TO_SUFFIX(_displayName);

_loadoutArray = GETVARM(VARS_LOADOUT(_factionID,_loadoutSuffix),nil);
_loadoutDisplayName = _loadoutArray select 0;

_classArray = [_displayName,[[_loadoutSuffix,_loadoutDisplayName]]];
SETVARM(VARS_CLASS(_factionID,_classSuffix),_classArray);

_classRegistry = GETVARM(VARS_CLASS_REGISTRY(_factionID),nil);
_classRegistry pushBack [_classSuffix,_displayName];

_classSuffix;

