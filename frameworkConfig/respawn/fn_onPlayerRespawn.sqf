
#include "..\..\macros\loadoutAccessMacros.hpp"

params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

_factionID = GETVAR(_oldUnit,BAF_FACTION_ID_VAR_STR,"");
_loadoutSuffix = GETVAR(_oldUnit,BAF_LOADOUT_SUFFIX_VAR_STR,"");

// TODO: Should I set up the loadout that is spawned with being stored in case this fails?
if (_factionID isEqualTo "" or _loadoutSuffix isEqualTo "") exitWith { DEBUG_RPT("No Loadout Assigned"); };

[_newUnit,"_loadoutSuffix",_factionID] call baf_fnc_assignLoadout;
// TODO: Assign Radios?
