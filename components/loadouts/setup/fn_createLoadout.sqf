
#include "..\..\..\macros\loadoutMacros.hpp"

params ["_factionID","_displayName","_loadout"];

_loadoutSuffix = CONVERT_TO_SUFFIX(_displayName);

_loadoutSuffix = [toLower ((_displayName splitString " ") joinString "_")] call BIS_fnc_filterString;
_loadoutRegistry = GETVARM(VARS_LOADOUT_REGISTRY(_factionID),nil);
_loadoutRegistry pushBack [_loadoutSuffix,_displayName];

// Loadout definition:
// 	LOADOUT_VARIABLE = [
//		DISPLAY_NAME,
//		LOADOUTS: [LOADOUT,...],
//		TRAITS: [MEDIC_TRAIT, ENGINEER_TRAIT], 
//		RANDOM_GEAR: [
//			HELMETS: [CLASS,...],
//			VESTS: [CLASS,...],
//			UNIFORMS: [CLASS,...],
//			BACKPACKS: [CLASS,...],
//			FACEWEAR: [CLASS,...]
//		]
//	]
_loadoutArray = [_displayName,[_loadout],[0,0],[[],[],[],[],[]]];
SETVARM(VARS_LOADOUT(_factionID,_loadoutSuffix),_loadoutArray);

_loadoutSuffix;
