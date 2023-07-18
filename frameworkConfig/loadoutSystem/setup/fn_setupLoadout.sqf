
#include "..\..\..\macros\utilityMacros.hpp"

params ["_unit",["_loadoutSuffix","",[""]],["_factionID", "",[""]]];

// Runtime Conditions
// TODO: Is a false positive on mission load possible?
// if (isNil _unit) exitWith { /* TODO: Debug RPT */ }; if !(isServer) exitWith {};
// if !(canSuspend) exitWith { _this spawn BAF_fnc_assignLoadout; };
// waitUntil { sleep 2; BAF_init_done isEqualTo 1; };
// TODO: Does the player exist yet prior to this call?
// TODO: Does it execute JIP?


if !(isServer) exitWith {};
if !(canSuspend) exitWith { _this spawn BAF_INIT_fnc_setupLoadout; };
waitUntil { baf_init_done >= 1; };

DEBUG_RPT("(loadout) Setting up loadout on " + (name _unit));

[_unit,_loadoutSuffix,_factionID] call BAF_fnc_assignLoadout;
