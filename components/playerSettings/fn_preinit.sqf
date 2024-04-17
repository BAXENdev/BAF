
#include "_playerSettingsMacros.hpp"

bax_playerSettings_settings = createHashMap;
bax_playerSettings_profileSettings = profileNamespace getVariable [PROFILE_SETTING_VARS,nil];
if (isNil "bax_playerSettings_profileSettings") then {
	bax_playerSettings_profileSettings = createHashMap;
	profileNamespace setVariable [PROFILE_SETTING_VARS,bax_playerSettings_profileSettings];
};
