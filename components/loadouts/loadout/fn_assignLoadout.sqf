
#include "..\..\..\macros\loadoutMacros.hpp"

params ["_unit","_factionID","_loadoutSuffix",["_classSuffix",""]];

_loadoutArray = GETVARM(VARS_LOADOUT(_factionID,_loadoutSuffix),nil);
_loadouts = _loadoutArray select 1;
_loadout = selectRandom _loadouts;
_loadout = +_loadout;


_traits = _loadoutArray select 2;
// Medic trait
_medicalTraitValue = _traits select 0;
SETVARG(_unit,"ace_medical_medicclass",_medicalTraitValue);
_unit setUnitTrait ["Medic",_medicalTraitValue > 0];
// Engineer trait
_engineerTraitValue = _traits select 1;
SETVARG(_unit,"ACE_isEngineer",_engineerTraitValue);
_unit setUnitTrait ["Engineer",_engineerTraitValue > 0];


_randomGear = _loadoutArray select 3;
// Random helmet
_randomHelmets = (_randomGear select 0) + [(_loadout select 6)];
_selectedHelmet = selectRandom _randomHelmets;
_loadout set [6,_selectedHelmet];
// Random vest
_randomVests = (_randomGear select 1) + [(_loadout select 4 select 0)];
_selectedVest = selectRandom _randomVests;
if (isNil "_selectedVest") then {
	_loadout set [4,[]];
} else {
	_vestElement = _loadout select 4;
	if !(_vestElement isEqualTo []) then {
		_vestElement set [0,_selectedVest];
	};
};
// Random uniform
_randomUniforms = (_randomGear select 2) + [(_loadout select 3 select 0)];
_selectedUniform = selectRandom _randomUniforms;
if (isNil "_selectedUniform") then {
	_loadout set [3,[]];
} else {
	_uniformElement = _loadout select 3;
	if !(_uniformElement isEqualTo []) then {
		_uniformElement set [0,_selectedUniform];
	};
};
// Random backpack
_randomBackpacks = (_randomGear select 2) + [(_loadout select 5 select 0)];
_selectedBackpack = selectRandom _randomBackpacks;
if (isNil "_selectedBackpack") then {
	_loadout set [5,[]];
} else {
	_backpackElement = _loadout select 5;
	if !(_backpackElement isEqualTo []) then {
		_backpackElement set [0,_selectedBackpack];
	};
};
// Random goggle
_randomGoggles = (_randomGear select 0) + [(_loadout select 7)];
_selectedgoggle = selectRandom _randomGoggles;
_loadout set [7,_selectedHelmet];


if (alive _unit) then { // If not alive and loadout reassigned, do not update the units actual loadout
	_unit setUnitLoadout _loadout;
};

SETVARG(_unit,VARS_FACTION_ID,_factionID);
SETVARG(_unit,VARS_CLASS_SUFFIX,_classSuffix);
SETVARG(_unit,VARS_LOADOUT_SUFFIX,_loadoutSuffix);
SETVARG(_unit,VARS_LOADOUT_RESPAWN,_loadout);
