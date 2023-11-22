
/*
 * Author: BAXENATOR
 * adds an item to a crate.
 *
 * Arguments:
 * 0: _crateArray
 * 1: _itemName Transport Item Name
 * 2: _count
 *
 * Return Value:
 * -
 *
 * Example:
 * [bax_crate_blufor_supply,"ACE_Vector",3] call BAX_loadouts_fnc_addItemToCrate;
 *
 * Public: Yes
 */

#include "..\..\..\macros\loadoutAccessMacros.hpp"

params ["_crateSuffix","_factionId",["_multiplier",1]];

if (_multiplier <= 0) exitWith {};

// TODO: Setting for adjusting these multipliers
_injectorMultiplier = 20;
_bandageMultiplier = 100;
_plasma = 40;
_misc = 20;

_injectors = [
	"ACE_adenosine",
	"ACE_epinephrine",
	"ACE_morphine",
];
_bandages = [
	"ACE_fieldDressing",
	"ACE_elasticBandage",
	"ACE_packingBandage",
	"ACE_quikclot",
];
_plasma = [ // TODO: Setting for default blood item
	"ACE_plasmaIV",
	"ACE_plasmaIV_250",
	"ACE_plasmaIV_500",
];
_misc = [
	"ACE_splint",
	"ACE_tourniquet"
];

_crateArray = GET_CRATE(_crateSuffix,_factionId);
if !(_crateArray isEqualType []) exitWith {
	_rptMsg = format ["%1 is not initialized.",GET_CRATE_VARIABLE(_crateSuffix,_factionId)];
	DEBUG_RPT_FULL(_rptMsg);
};

_items = [];
_items append (_injectors apply { [_x,ceil(_injectorMultiplier * _multiplier)] });
_items append (_bandages apply { [_x,ceil(_bandageMultiplier * _multiplier)] });
_items append (_plasma apply { [_x,ceil(_plasmaMultiplier * _multiplier)] });
_items append (_misc apply { [_x,ceil(_miscMultiplier * _multiplier)] });

_crateArray append _items;
