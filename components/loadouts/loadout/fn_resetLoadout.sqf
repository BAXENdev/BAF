
#include "..\_loadoutsMacros.hpp"

params ["_side","_loadoutName"];

_loadoutRegistry = bax_loadouts_loadouts get _side;
_loadoutArray = _loadoutRegistry get _loadoutName;
if (isNil "_loadoutArray") exitWith {
	_msg = format ["Loadout %1:%2 does not exist.",_side,_loadoutName];
	DEBUG_ERR(_msg);
};
_loadoutArray params ["_loadouts","_traits","_randomGear"];
_firstLoadout = _loadouts select 0;
_loadoutArray set [0,[_firstLoadout]]; // use only the first loadout
_loadoutArray set [1,[0,0]]; // set traits to none
_loadoutArray set [2,[[],[],[],[],[]]]; // remove all random gear
