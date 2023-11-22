
#include "..\..\..\macros\loadoutMacros.hpp"

params ["_factionID","_loadoutSuffix","_loadout"];

_loadoutArray = GETVARM(VARS_LOADOUT(_factionID,_loadoutSuffix),nil);
_loadouts = _loadoutArray select 1;
_loadouts pushBack _loadout;
