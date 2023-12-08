
#include "..\..\macros\loadoutMacros.hpp"

_loaodutArray = GETVAR(player,VARS_LOADOUT_RESPAWN,nil);

if !(isNil "_loadoutArray") exitWith {};
_loadoutArray = (getUnitLoadout player)#0;
SETVARG(player,VARS_LOADOUT_RESPAWN,_loadoutArray);
