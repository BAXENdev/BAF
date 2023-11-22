
#include "..\..\macros\loadoutMacros.hpp"

_loaodutArray = GETVAR(player,VARS_RESPAWN_LOADOUT,nil);

if !(isNil "_loadoutArray") exitWith {};
_loadoutArray = (getUnitLoadout player)#0;
SETVARG(player,VARS_RESPAWN_LOADOUT,_loadoutArray);
