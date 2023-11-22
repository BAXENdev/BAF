
// test for tfar and acre

#include "..\..\macros\utilityMacros.hpp"

VAR_RADIO_PRESETS = createHashMap;

if !(isNull (configFile >> "CfgPatches" >> "acre_main")) exitWith {
	[] call BAX_RADIOS_fnc_preinitAcre;
};
