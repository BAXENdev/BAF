
#include "..\_loadoutsMacros.hpp"

// trait: 0: ace medical trait | 1: engineer trait
// ace medical trait: 0: None | 1: Medic | 2: Doctor
// Engineer trait: 0: None | 1: engineer
// TODO: Explosive
params ["_side","_loadoutName","_trait","_traitValue"];

_loadoutRegistry = bax_loadouts_loadouts get _side;
_loadoutArray = _loadoutRegistry get _loadoutName;
if (isNil "_loadoutArray") exitWith {
	_msg = format ["Loadout %1:%2 does not exist.",_side,_loadoutName];
	DEBUG_ERR(_msg);
};
_loadoutArray params ["_loadouts","_traits","_randomGear"];
_traits set [_trait,_traitValue];
