
#include "_radiosMacros.hpp"

/*
Gets called by userInit->preInit after all the user functions have rans
*/

_babelSetting = getNumber (missionConfigFile >> "CfgBax" >> "acreBabelSettings") == 1;
_frequencySetting = getNumber (missionConfigFile >> "CfgBax" >> "acreSideFrequencies") == 1;
[_babelSetting,_frequencySetting] call acre_api_fnc_setupMission;

{
    _radioType = _x;
    _radioChannels = _y;
    _presetName = [_radioType] call acre_api_fnc_getPreset;

    {
        _radioChannel = _x;
        _channelAttributes = _y;

        {
            _attribute = _x;
            _value = _y;

            [_radioType,_presetName,_radioChannel,_attribute,_value] call acre_api_fnc_setPresetChannelField
        } forEach _channelAttributes;

    } forEach _radioChannels;

} forEach bax_radios_radioPresets;

// TODO: Set up bable
// Main issue, cant easily get a list of base languages.
// Task: Get preregistered languages and add to language list
