
#include "_toolsMacros.hpp"

_cfgBax = missionConfigFile >> "cfgBax";

if !(isNull (_cfgBax >> "loadouts")) then {
	call bax_tools_fnc_importCfgBaxLoadouts;
};


