
#include "_loadoutsMacros.hpp"

params ["_unit", "_loadoutName"];

_side = side group _unit;
_loadoutRegistry = bax_loadouts_loadouts get _side;
_loadoutArray = _loadoutRegistry get _loadoutName;

if (isNil "_loadoutArray") exitWith {
	_msg = format ["Failed to assign loadout to unit %1 with [%2,%3]",_unit,_loadoutName];
	DEBUG_ERR(_msg);

	// Return nothing
	nil;
};

_loadoutArray params ["_loadoutVariants","_traits","_randomGear"];

_selectedLoadout = (selectRandom _loadoutVariants);
_loadout = +_selectedLoadout;

_traits params ["_medicalTraitValue","_engineerTraitValue"];
// Medic trait
_unit setVariable ["ace_medical_medicclass",_medicalTraitValue,true];
_unit setUnitTrait ["Medic",_medicalTraitValue > 0];
// Engineer trait
_unit setVariable ["ACE_isEngineer",_engineerTraitValue,true];
_unit setUnitTrait ["Engineer",_engineerTraitValue > 0];

// gearType: 0: helmets (6) | 1: vests (4) | 2: uniforms (3) | 3: backpack (5) | 4: mask (7)
_randomGear params ["_randomHelmets","_randomVests","_randomUniforms","_randomBackpacks","_randomMasks"];

_loadoutHelmet = _loadout select 6;
_randomHelmets = _randomHelmets + [_loadoutHelmet];
_selectedHelmet = selectRandom _randomHelmets;
_loadout set [6,_selectedHelmet];

_loadoutMask = _loadout select 7;
_randomMasks = _randomMasks + [_loadoutMask];
_selectedMask = selectRandom _randomMasks;
_loadout set [7,_selectedMask];

_loadoutVestArray = _loadout select 4;
_newVestArray = [_loadoutVestArray,_randomVests] call bax_loadouts_fnc_selectRandomGear;
_loadout set [4,_newVestArray];

_loadoutUniformArray = _loadout select 3;
_newUniformArray = [_loadoutUniformArray,_randomUniforms] call bax_loadouts_fnc_selectRandomGear;
_loadout set [3,_newUniformArray];

_loadoutBackpackArray = _loadout select 5;
_newBackpackArray = [_loadoutBackpackArray,_randomBackpacks] call bax_loadouts_fnc_selectRandomGear;
_loadout set [5,_newBackpackArray];

if (alive _unit) then { // If not alive and loadout reassigned, do not update the units actual loadout
	_loadout = [_loadout] call acre_api_fnc_filterUnitLoadout;
	_unit setUnitLoadout _loadout;
};

_unit setVariable [LOADOUT_ID,_loadoutName,true];

// return
_loadout;
