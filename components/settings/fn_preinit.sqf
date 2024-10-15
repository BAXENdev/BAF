
#include "_settingsMacros.hpp"

bax_settings_profileVars = profileNamespace getVariable [VARS_PROFILE_DATA,nil];
if (isNil "bax_settings_profileVars") then {
	bax_settings_profileVars = createHashMap;
	profileNamespace setVariable [VARS_PROFILE_DATA,bax_settings_profileVars];
};
