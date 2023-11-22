
#include "..\..\..\macros\loadoutMacros.hpp"

params ["_factionID","_loadoutSuffix","_displayName","_loadout"];

_loadoutRegistry = GETVARM(VARS_LOADOUT_REGISTRY(_factionID),nil);
_loadoutRegistry pushBack [_loadoutSuffix,_displayName];

// Loadout definition:
// 	LOADOUT_VARIABLE = [
//		DISPLAY_NAME,
//		LOADOUTS: [LOADOUT,...],
//		TRAITS: [MEDIC_TRAIT, ENGINEER_TRAIT], 
//		RANDOM_GEAR: [HELMETS: [CLASS,...], VESTS: [CLASS,...], UNIFORMS: [CLASS,...], BACKPACKS: [CLASS,...], FACEWEAR: [CLASS,...]]
//	]
SETVARM(VARS_LOADOUT(_factionID,_loadoutSuffix),[_displayName,[_loadout],[0,0],[[],[],[],[],[]]]);
SETVARM(VARS_LOADOUT_ARSNEAL(_factionID,_loadoutSuffix),[[],[]]);
