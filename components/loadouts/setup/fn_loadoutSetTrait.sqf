
#include "..\..\..\macros\loadoutMacros.hpp"

// trait: 0: ace medical trait | 1: engineer trait
// ace medical trait: 0: None | 1: Medic | 2: Doctor
// Engineer trait: 0: None | 1: engineer | 2:
// TODO: Explosive
params ["_factionID","_loadoutSuffix","_trait","_traitValue"];

_loadoutArray = GETVARM(VARS_LOADOUT(_factionID,_loadoutSuffix),nil);
_traitArray = _loadoutArray select 2;
_traitArray set [_trait,_traitValue];
