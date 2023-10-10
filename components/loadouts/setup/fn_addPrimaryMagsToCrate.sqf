
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
_primaryWeaponArray = GET_PRIMARY(_loadoutArray);
if (_primaryWeaponArray isEqualTo []) exitWith {
	_rptMsg = format ["%1 does not have a primary.",GET_LOADOUT_VARIABLE(_loadoutSuffix,_factionId)];
	DEBUG_RPT_FULL(_rptMsg);
};
_primaryMag = GET_WEAPON_MAG(_primaryWeaponArray);
if (_primaryMag isEqualTo []) exitWith {
	_rptMsg = format ["%1 has an empty primary mag",GET_LOADOUT_VARIABLE(_loadoutSuffix,_factionId)];
	DEBUG_RPT_FULL(_rptMsg);
};

_primaryMagName = GET_MAG_NAME(_primaryMag);

_itemTypes = [_primaryMagName] call BIS_fnc_itemType;
if (_itemTypes isEqualTo ["",""]) exitWith {
	_rptMsg = format ["%1 in loadout %2 is not a item.",_primaryMagName,GET_LOADOUT_VARIABLE(_loadoutSuffix,_factionId)];
	DEBUG_RPT_FULL(_rptMsg);
};

_crateArray pushBack [_primaryMagName, _count];
