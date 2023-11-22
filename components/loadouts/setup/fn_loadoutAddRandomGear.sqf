
#include "..\..\..\macros\loadoutMacros.hpp"

// gearType: 0: helmets | 1: vests | 2: uniforms | 3: backpack | 4: facewear
params ["_factionID","_loadoutSuffix","_gearType","_gear"];

_loadoutArray = GETVARM(VARS_LOADOUT(_factionID,_loadoutSuffix),nil);
_randomGearArray = _loadoutArray select 3;
_randomGear = _randomGear select _gearType;
_randomGear append _gear;
