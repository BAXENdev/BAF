
#include "_settingsMacros.hpp"

// Sub-hashmap: Key: String - setting's name | value: [[DIALOG CODE, EXECUTE CODE],...]
bax_settings_settings = createHashMapFromArray [
	["framework",createHashMap],
	["player",createHashMap]
];

bax_settings_profileVars = profileNamespace getVariable [VARS_PROFILE_DATA,nil];
if (isNil "bax_settings_profileVars") then {
	bax_settings_profileVars = createHashMap;
	profileNamespace setVariable [VARS_PROFILE_DATA,bax_settings_profileVars];
};
