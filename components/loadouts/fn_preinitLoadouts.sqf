
#include "..\..\macros\loadoutMacros.hpp"

SETVARM(VARS_FACTION_REGISTRY,[]);
SETVARM(VARS_ARSENAL_BOX,nil);
SETVARM(VARS_ARSENAL_OBJECTS,[]);

[
	"ace_arsenal_displayClosed",
	{
		if (GETVARM(VARS_ARSENAL_OPENED),false) then {
			SETVARG(player,VARS_RESPAWN_LOADOUT,getUnitLoadout player);
		};
	}
] call CBA_fnc_addEventHandler;
