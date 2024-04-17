
#include "..\_loadoutsMacros.hpp"

// gearType: 0: helmets (6) | 1: vests (4) | 2: uniforms (3) | 3: backpack (5) | 4: mask (7)
params ["_side","_loadoutName","_gearType","_gear"];

_loadoutRegistry = bax_loadouts_loadouts get _side;
_loadoutArray = _loadoutRegistry get _loadoutName;
if (isNil "_loadoutArray") exitWith {
	_msg = format ["Loadout %1:%2 does not exist.",_side,_loadoutName];
	DEBUG_ERR(_msg);
};
_randomGearArray = _loadoutArray select 2;
_randomGear = _randomGearArray select _gearType;
_randomGear pushBack _gear;
