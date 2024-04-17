
#include "..\_loadoutsMacros.hpp"

params ["_side","_loadoutName","_otherLoadoutName"];

_loadoutRegistry = bax_loadouts_loadouts get _side;
_loadoutArray = _loadoutRegistry get _loadoutName;
if (isNil "_loadoutArray") exitWith {
	_msg = format ["Loadout %1:%2 does not exist.",_side,_loadoutName];
	DEBUG_ERR(_msg);
};
_loadoutArray params ["_loadouts","_traits","_randomGear"];
_copyofRandomGear = +_randomGear;
_otherLoadoutArray = _loadoutRegistry get _otherLoadoutName;
_otherLoadoutArray set [2,_copyofRandomGear];
