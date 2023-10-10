
_uniqueLanguages = (getNumber(missionConfigFile >> "BAF_CFG" >> "acreUniqueLanguages") isEqualTo 1); 
_uniqueFrequencies = (getNumber(missionConfigFile >> "BAF_CFG" >> "acreUniqueFrequencies") isEqualTo 1); 

[_uniqueLanguages, _uniqueFrequencies] call acre_api_fnc_setupMission;
