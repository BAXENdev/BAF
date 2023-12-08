
#include "..\..\macros\arsenalMacros.hpp"

SETVARM(VARS_ARSENAL_BOX,nil);

_emptyArsenal = [[],[]];
SETVARM(VARS_SIDE_ARSENAL(WEST_S),+_emptyArsenal);
SETVARM(VARS_SIDE_ARSENAL(EAST_S),+_emptyArsenal);
SETVARM(VARS_SIDE_ARSENAL(GUER_S),+_emptyArsenal);
SETVARM(VARS_SIDE_ARSENAL(CIV_S),+_emptyArsenal);

[
	"ace_arsenal_displayClosed",
	{
		if GETVARM(VARS_ARSENAL_OPENED,false) then {
			SETVARG(player,VARS_LOADOUT_RESPAWN,getUnitLoadout player);
		};
	}
] call CBA_fnc_addEventHandler;

