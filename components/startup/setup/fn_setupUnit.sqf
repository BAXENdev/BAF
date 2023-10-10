
#include "..\..\..\macros\utilityMacros.hpp"

params ["_unit","_loadoutSuffix","_classSuffix","_factionId"];

if !(isServer) exitWith {};
if !(_unit isKindOf "Man") exitWith { DEBUG_RPT_FULL("Failed to set up unit because an non-unit was passed.") };

// TODO: Begin initializing loadouts and radios
