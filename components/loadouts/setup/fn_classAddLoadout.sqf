
#include "..\..\..\macros\loadoutMacros.hpp"

params ["_factionID","_classSuffix","_loadoutSuffix"];

_classArray = GETVARM(VARS_CLASS(_factionID,_classSuffix),nil);

_loadoutArray = GETVARM(VARS_LOADOUT(_factionID,_loadoutSuffix),nil);
_loadoutDisplayName = _loadoutArray select 0;

_loadoutRegistry = _classArray select 1;
_loadoutRegistry pushBack [_loadoutSuffix,_loadoutDisplayName];
