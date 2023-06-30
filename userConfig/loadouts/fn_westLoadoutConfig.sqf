
#include "loadoutMacros.hpp"

#define SIDE blufor
INIT_REGISTRY();

// 1) Loadout variable name, 2) Loadout display name, 3) Ace loadout
_loadout = [[],[],[]];
CREATE_LOADOUT(rif, "RIFLEMAN", _loadout);

_loadout = [[],[],[]];
CREATE_LOADOUT(cls, "COMBAT MEDIC", _loadout);
ADD_MEDIC(cls);

_loadout = [[],[],[]];
CREATE_LOADOUT(med, "PLATOON MEDIC", _loadout);
ADD_DOCTOR(med);

_loadout = [[],[],[]];
CREATE_LOADOUT(eng, "ENGINEER", _loadout);
ADD_ENGINEER(eng);
