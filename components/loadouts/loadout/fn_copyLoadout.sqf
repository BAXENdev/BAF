
#include "..\_loadoutsMacros.hpp"

params ["_side","_loadoutName","_newLoadoutName"];

_loadoutRegistry = bax_loadouts_loadouts get _side;
_loadoutArray = _loadoutRegistry get _loadoutName;
if (isNil "_loadoutArray") exitWith {
	_msg = format ["Loadout %1:%2 does not exist.",_side,_loadoutName];
	DEBUG_ERR(_msg);
};
_newLoadoutArray = +_loadoutArray;
_loadoutRegistry set [_newLoadoutName,_newLoadoutArray];
