
#include "..\..\..\macros\utilityMacros.hpp"

params ["_unit"];

if !(_unit isKindOf "Man") exitWith {};

_side = str side group _unit;
_groupName = ((str group _unit) splitString ".,- ") joinString "_";
_factionID = GETVAR(_unit,VARS_FACTION_ID,"");
_classSuffix = GETVAR(_unit,VARS_CLASS_SUFFIX,"");
_loadoutSuffix = GETVAR(_unit,#VAR_LOAODUT_SUFFIX,"");

// _sidePreset = 
