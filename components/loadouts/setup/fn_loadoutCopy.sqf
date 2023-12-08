
#include "..\..\..\macros\loadoutMacros.hpp"

params ["_factionID","_loadoutSuffix","_displayName"];

_loadoutArray = GETVARM(VARS_LOADOUT(_factionID,_loadoutSuffix),nil);
_newLoadoutArray = +_loadoutArray;

_newLoadoutSuffix = [toLower ((_displayName splitString " ") joinString "_")] call BIS_fnc_filterString;
SETVARM(VARS_LOADOUT(_factionID,_newLoadoutSuffix),_newLoadoutArray);

_loadoutRegistry = GETVARM(VARS_LOADOUT_REGISTRY(_factionID),nil);
_loadoutRegistry pushBack [_newLoadoutSuffix,_displayName];

_newLoadoutSuffix;
