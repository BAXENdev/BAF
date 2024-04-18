
#include "_settingsMacros.hpp"

bax_settings_settings = createHashMapFromArray [
	["framework",[]],
	["player",[]]
];
bax_settings_profileVars = profileNamespace getVariable [VARS_PROFILE_DATA,nil];
if (isNil "bax_settings_profileData") then {
	bax_settings_profileVars = createHashMap;
	profileNamespace setVariable [VARS_PROFILE_DATA,bax_settings_profileVars];
};
