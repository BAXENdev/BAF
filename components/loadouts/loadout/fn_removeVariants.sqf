
#include "..\_loadoutsMacros.hpp"

params ["_side","_loadoutName","_loadout"];

_loadoutRegistry = bax_loadouts_loadouts get _side;
_loadoutArray = _loadoutRegistry get _loadoutName;
if (isNil "_loadoutArray") exitWith {
	_msg = format ["Loadout %1:%2 does not exist.",_side,_loadoutName];
	DEBUG_ERR(_msg);
};
_loadoutArray params ["_loadouts","_traits","_randomGear"];
_firstLoadout = _loadouts select 0;
_loadoutArray set [0,[_firstLoadout]];
