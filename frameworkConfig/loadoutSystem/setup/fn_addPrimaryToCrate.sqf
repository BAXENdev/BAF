
#include "..\..\..\macros\loadoutAccessMacros.hpp"

params ["_crateSuffix","_loadoutSuffix","_count","_factionId"];

_crateArray = GET_CRATE(_crateSuffix,_factionId);
if !(_crateArray isEqualType []) exitWith {
	_rptMsg = format ["(loadout setup) %1 is not initialized in addPrimaryToCrate.",GET_CRATE_VARIABLE(_crateSuffix,_factionId)];
	DEBUG_RPT(_rptMsg);
};

_loadoutBaf = GET_LOADOUT_BAF(_loadoutSuffix,_factionId);
if !(_loadoutBaf isEqualtype []) exitWith {
	_rptMsg = format ["(loadout setup) %1 is not initialized in addPrimaryToCrate",GET_LOADOUT_VARIABLE(_crateSuffix,_factionId)];
	DEBUG_RPT(_rptMsg);
};

_loadoutArray = GET_LOADOUT_ARRAY(_loadoutBaf);
_primaryWeaponArray = GET_PRIMARY(_loadoutArray);
if (_primaryWeaponArray isEqualTo []) exitWith {
	DEBUG_RPT("TEST1");
};
_primaryName = GET_WEAPON_NAME(_primaryWeaponArray);
if (_primaryName isEqualTo "") exitWith {
	DEBUG_RPT("TEST2");
};

// TODO: Check Item Type
// TODO: Check Item Existance

_crateArray pushBack [_primaryName, _count];
