
#include "..\..\..\macros\acreMacros.hpp"

VAR_RADIO_CHANNEL_NAMES = [];

_uniqueLanguages = (getNumber (missionConfigFile >> "BAX_CFG" >> CFG_ACRELANGUAGES) > 0); 
_uniqueFrequencies = (getNumber(missionConfigFile >> "BAX_CFG" >> CFG_ACREFREQUENCIES) > 0); 

[_uniqueLanguages, _uniqueFrequencies] call acre_api_fnc_setupMission;
