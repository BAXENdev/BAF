
#include "..\..\..\macros\loadoutAccessMacros.hpp"

// TODO: Does a crate need initialized before this command, or in it?

params ["_crateArray", "_loadoutRegistry", ["_multiplier",1,[0]],["_mask",[true,true,true,true,true,true,true]],[[true]],7];

if (_multiplier <= 0) exitWith { /* TODO: Debug RPT */ };

if (_mask#0) then { _weaponMultiplier = ceil (0.5 * _multiplier ); } else { _weaponMultiplier = 0; };
if (_mask#1) then { _magMultiplier = ceil (10 * _multiplier ); } else { _magMultiplier = 0; };
if (_mask#2) then { _rocketMultiplier = ceil (4 * _multiplier ); } else { _rocketMultiplier = 0; };
if (_mask#3) then { _bandageMultiplier = ceil (8 * _multiplier ); } else { _bandageMultiplier = 0; };
if (_mask#4) then { _injectorMultiplier = ceil (1 * _multiplier ); } else { _injectorMultiplier = 0; };
if (_mask#5) then { _bloodMultiplier = ceil (3 * _multiplier ); } else { _bloodMultiplier = 0; };
if (_mask#6) then { _miscMedicalMultiplier = ceil (1 * _multiplier ); } else { _miscMedicalMultiplier = 0; };

_itemsToadd = createHashMap;

{
	_x params ["_loaodutVariable", "_loadoutName"];

	// TODO: Add items to hashmap

	// _primaryName = 

} forEach _loadoutRegistry;

// TODO: Add items to crate
