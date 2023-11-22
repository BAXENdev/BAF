
#include "..\..\..\macros\loadoutMacros.hpp"

params ["_factionID","_classSuffix","_loadoutSuffix"];

_classArray = GETVARM(VARS_CLASS(_factionID,_classSuffix),nil);

_loadoutArray = GETVARM(VARS_LOADOUT(_classSuffix,_loadoutSuffix),nil);
_loadoutDisplayName = _loadoutArray select 0;

_loadouts = _classArray select 1;
_loadouts pushBack [_loadoutSuffix,_loadoutDisplayName];
