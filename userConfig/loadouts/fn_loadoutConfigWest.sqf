
#include "loadoutMacros.hpp"

#define FACTION_ID WEST_ID

INIT_LOADOUT_SYSTEM();

_loadout = [[],[],[]];
CREATE_LOADOUT(rif,"RIFLEMAN",_loadout);

_loadout = [[],[],[]];
CREATE_LOADOUT(cls,"COMBAT MEDIC",_loadout);
LO_SET_MEDIC(cls);

_loadout = [[],[],[]];
CREATE_LOADOUT(eng,"ENGINEER",_loadout);
LO_SET_ENGINEER(eng);

_loadout = [[],[],[]];
CREATE_LOADOUT(med,"PLATOON MEDIC",_loadout);
LO_SET_DOCTOR(med);

_loadout = [[],[],[]];
CREATE_LOADOUT(jtac,"JTAC",_loadout);

_loadout = [[],[],[]];
CREATE_LOADOUT(co,"Commander",_loadout);

COPY_LOADOUT(xo,co);

CREATE_CLASS(co,"Command",co);
CL_ADD_LOADOUT(co,xo);
CL_ADD_LOADOUT(co,jtac);
CL_ADD_LOADOUT(co,med);

CREATE_CLASS(sqd,"Squad",rif);
CL_ADD_LOADOUT(sqd,cls);
CL_ADD_LOADOUT(sqd,eng);
