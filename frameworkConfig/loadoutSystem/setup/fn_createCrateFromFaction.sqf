
#include "..\..\..\macros\loadoutAccessMacros.hpp"

params ["_crateArray", "_loadoutRegistry", ["_multiplier",1,[0]]];

if (_multiplier <= 0) exitWith { /* TODO: Debug RPT */ };

_weaponMultiplier = ceil (0.5 * _multiplier);
_magMultiplier = ceil (10 * _multiplier);
_bandageMultiplier = ceil (8 * _multiplier);
_injectorMultiplier = ceil (1 * _multiplier);
_bloodMultiplier = ceil (3 * _multiplier);
_miscMedicalMultiplier = ceil (1 * _multiplier);

_itemsToadd = createHashMap;

{
	_x params ["_loaodutVariable", "_loadoutName"];

	// TODO: Add items to hashmap

	// _primaryName = 

} forEach _loadoutRegistry;

// TODO: Add items to crate
