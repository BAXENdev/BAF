
#include "..\_loadoutsMacros.hpp"

params ["_side","_loadoutName","_loadout",["_traits",[0,0]]];

if (count _loadout == 2) then {
	_loadout = _loadout select 0;
};

_loadoutRegistry = bax_loadouts_loadouts get _side;
// Loadout Array: [Loadout Variants, tratis, random gear]
_loadoutArray = [[_loadout],_traits,[[],[],[],[],[]]];
if ((count _loadout) == 2) then {
	_loadout = _loadout select 0;
};
_loadoutRegistry set [_loadoutName,_loadoutArray];
