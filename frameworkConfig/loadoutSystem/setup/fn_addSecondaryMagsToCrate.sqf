
#include "..\..\..\macros\loadoutAccessMacros.hpp"

params ["_crateSuffix","_loadoutSuffix","_count","_factionId"];

_crateArray = GET_CRATE(_crateSuffix,_factionId);
if !(_crateArray isEqualType []) exitWith {
	_rptMsg = format ["%1 is not initialized.",GET_CRATE_VARIABLE(_crateSuffix,_factionId)];
	DEBUG_RPT_FULL(_rptMsg);
};

_loadoutBaf = GET_LOADOUT_BAF(_loadoutSuffix,_factionId);
if !(_loadoutBaf isEqualtype []) exitWith {
	_rptMsg = format ["%1 is not initialized.",GET_LOADOUT_VARIABLE(_loadoutSuffix,_factionId)];
	DEBUG_RPT_FULL(_rptMsg);
};

_loadoutArray = GET_LOADOUT_ARRAY(_loadoutBaf);
_secondaryWeaponArray = GET_SECONDARY(_loadoutArray);
if (_secondaryWeaponArray isEqualTo []) exitWith {
	_rptMsg = format ["%1 does not have a primary.",GET_LOADOUT_VARIABLE(_loadoutSuffix,_factionId)];
	DEBUG_RPT_FULL(_rptMsg);
};
_secondaryMag = GET_WEAPON_MAG(_secondaryWeaponArray);
if (_secondaryMag isEqualTo []) exitWith {
	_rptMsg = format ["%1 has an empty primary mag",GET_LOADOUT_VARIABLE(_loadoutSuffix,_factionId)];
	DEBUG_RPT_FULL(_rptMsg);
};

_secondaryMagName = GET_MAG_NAME(_secondaryMag);
// TODO: Check for item existance
_itemTypes = [_secondaryMagName] call BIS_fnc_itemType;
if (_itemTypes isEqualTo ["",""]) exitWith {
	_rptMsg = format ["%1 in loadout %2 is not a item.",_secondaryMagName,GET_LOADOUT_VARIABLE(_loadoutSuffix,_factionId)];
	DEBUG_RPT_FULL(_rptMsg);
};

_crateArray pushBack [_secondaryMagName, _count];
