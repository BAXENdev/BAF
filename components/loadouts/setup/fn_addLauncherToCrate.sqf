
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
_launcherWeaponArray = GET_LAUNCHER(_loadoutArray);
if (_launcherWeaponArray isEqualTo []) exitWith {
	_rptMsg = format ["%1 does not have a primary.",GET_LOADOUT_VARIABLE(_loadoutSuffix,_factionId)];
	DEBUG_RPT_FULL(_rptMsg);
};

_launcherName = GET_WEAPON_NAME(_launcherWeaponArray);

_itemTypes = [_launcherName] call BIS_fnc_itemType;
if (_itemTypes isEqualTo ["",""]) exitWith {
	_rptMsg = format ["%1 in loadout %2 is not a item.",_launcherName,GET_LOADOUT_VARIABLE(_loadoutSuffix,_factionId)];
	DEBUG_RPT_FULL(_rptMsg);
};

_crateArray pushBack [_launcherName, _count];
