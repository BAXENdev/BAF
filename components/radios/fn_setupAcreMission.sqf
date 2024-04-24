
#include "_radiosMacros.hpp"

/*
Gets called by userInit->preInit after all the user functions have rans
*/

// Languages:
// Basic: same language for each side
// TvT: different language for each side
// Blend: Each team gets a unique language + a common language

_babelSettings = getNumber (missionConfigFile >> "CfgBax" >> "acreBabelSettings");
_bluforLanguage = getText (missionConfigFile >> "CfgBax" >> "acreBluforLanguage");
_opforLanguage = getText (missionConfigFile >> "CfgBax" >> "acreOpforLanguage");
_indforLanguage = getText (missionConfigFile >> "CfgBax" >> "acreIndforLanguage");
_civilianLanguage = getText (missionConfigFile >> "CfgBax" >> "acreCivilianLanguage");
// TODO: Does acre_api_fnc_babelSetupMission require creating the language? https://acre2.idi-systems.com/wiki/frameworks/functions-list#acre_api_fnc_babelsetupmission
["blu",_bluforLanguage] call acre_api_fnc_babelAddLanguageType;
["ind",_indforLanguage] call acre_api_fnc_babelAddLanguageType;
["op",_opforLanguage] call acre_api_fnc_babelAddLanguageType;
["ne",_civilianLanguage] call acre_api_fnc_babelAddLanguageType;

switch (_babelSettings) do {
    case 1: { // TvT
        [
            [west, _bluforLanguage],
            [east, _indforLanguage],
            [independent, _opforLanguage]
            [civilian, _civilianLanguage]
        ] call acre_api_fnc_babelSetupMission;
    };
    case 2: { // Blend
        [
            [west, _bluforLanguage, _civilianLanguage],
            [east, _indforLanguage, _civilianLanguage],
            [independent, _opforLanguage, _civilianLanguage]
            [civilian, _civilianLanguage]
        ] call acre_api_fnc_babelSetupMission;
    };
    case 3: {}; // Custom / Do nothing
    default { // 0: Basic
        [
            [west, _bluforLanguage],
            [east, _bluforLanguage],
            [independent, _bluforLanguage]
            [civilian, _bluforLanguage]
        ] call acre_api_fnc_babelSetupMission;
    };
};


// Presets:
// Generate new presets?
// 148 needs a straight up new default preset if it wants more than 32 channels and 2 groups

#define BLUFOR_SR_BASE 2410.4
#define OPFOR_SR_BASE 2422.2
#define INDFOR_SR_BASE 2472.8
#define CIVILIAN_SR_BASE 2451.1
#define SR_STEP 0.04
#define BLUFOR_LR_BASE 86.2
#define OPFOR_LR_BASE 152.1
#define INDFOR_LR_BASE 247.4
#define CIVILIAN_LR_BASE 311.7
#define LR_STEP 0.5
#define BLUFOR_BF_BASE 411.3
#define OPFOR_BF_BASE 424.5
#define INDFOR_BF_BASE 461.8
#define CIVILIAN_BF_BASE 444.4
#define BF_STEP 0.5

// PRC343
// TODO: Do 343 freqs work with other radio freqs?
["ACRE_PRC343", "default", "blufor"] call acre_api_fnc_copyPreset;
["ACRE_PRC148", "default", "blufor"] call acre_api_fnc_copyPreset;
["ACRE_PRC152", "default", "blufor"] call acre_api_fnc_copyPreset;
["ACRE_PRC117F", "default", "blufor"] call acre_api_fnc_copyPreset;
["ACRE_BF888S", "default", "blufor"] call acre_api_fnc_copyPreset;

["ACRE_PRC343", "blufor", "opfor"] call acre_api_fnc_copyPreset;
["ACRE_PRC148", "blufor", "opfor"] call acre_api_fnc_copyPreset;
["ACRE_PRC152", "blufor", "opfor"] call acre_api_fnc_copyPreset;
["ACRE_PRC117F", "blufor", "opfor"] call acre_api_fnc_copyPreset;
["ACRE_BF888S", "blufor", "opfor"] call acre_api_fnc_copyPreset;

["ACRE_PRC343", "blufor", "indfor"] call acre_api_fnc_copyPreset;
["ACRE_PRC148", "blufor", "indfor"] call acre_api_fnc_copyPreset;
["ACRE_PRC152", "blufor", "indfor"] call acre_api_fnc_copyPreset;
["ACRE_PRC117F", "blufor", "indfor"] call acre_api_fnc_copyPreset;
["ACRE_BF888S", "blufor", "indfor"] call acre_api_fnc_copyPreset;

["ACRE_PRC343", "blufor", "civilian"] call acre_api_fnc_copyPreset;
["ACRE_PRC148", "blufor", "civilian"] call acre_api_fnc_copyPreset;
["ACRE_PRC152", "blufor", "civilian"] call acre_api_fnc_copyPreset;
["ACRE_PRC117F", "blufor", "civilian"] call acre_api_fnc_copyPreset;
["ACRE_BF888S", "blufor", "civilian"] call acre_api_fnc_copyPreset;

// 343
{
    _x params ["_preset","_base"];
    for "_i" from 0 to 255 do {
        _frequency = [(_base + _i * SR_STEP), 2] call CBA_fnc_formatNumber;
        ["ACRE_PRC343", _preset, _i, "frequencyTX", _frequency] call acre_api_fnc_setPresetChannelField;
        ["ACRE_PRC343", _preset, _i, "frequencyRX", _frequency] call acre_api_fnc_setPresetChannelField;
    };
} forEach [
    ["blufor",BLUFOR_SR_BASE],
    ["opfor",OPFOR_SR_BASE],
    ["indfor",INDFOR_SR_BASE],
    ["civilian",CIVILIAN_SR_BASE]
];

// 148 158 117f
{
    _x params ["_preset","_base"];
    for "_i" from 0 to 100 do {
        _frequency = [(_base + _i * LR_STEP), 2] call CBA_fnc_formatNumber;
        if (_if < 32) then {
            ["ACRE_PRC148", _preset, _i, "frequencyTX", _frequency] call acre_api_fnc_setPresetChannelField;
            ["ACRE_PRC148", _preset, _i, "frequencyTX", _frequency] call acre_api_fnc_setPresetChannelField;
            ["ACRE_PRC148", _preset, _i, "name", ("NET " + (str (_i + 1)))] call acre_api_fnc_setPresetChannelField;
        };
        ["ACRE_PRC152", _preset, _i, "frequencyRX", _frequency] call acre_api_fnc_setPresetChannelField;
        ["ACRE_PRC152", _preset, _i, "frequencyRX", _frequency] call acre_api_fnc_setPresetChannelField;
        ["ACRE_PRC152", _preset, _i, "name", ("NET " + (str (_i + 1)))] call acre_api_fnc_setPresetChannelField;
        ["ACRE_PRC117F", _preset, _i, "frequencyRX", _frequency] call acre_api_fnc_setPresetChannelField;
        ["ACRE_PRC117F", _preset, _i, "frequencyRX", _frequency] call acre_api_fnc_setPresetChannelField;
        ["ACRE_PRC117F", _preset, _i, "name", ("NET " + (str (_i + 1)))] call acre_api_fnc_setPresetChannelField;
    };
} forEach [
    ["blufor",BLUFOR_LR_BASE],
    ["opfor",OPFOR_LR_BASE],
    ["indfor",INDFOR_LR_BASE],
    ["civilian",CIVILIAN_LR_BASE]
];

// bf888s
{
    _x params ["_preset","_base"];
    for "_i" from 0 to 100 do {
        _frequency = [(_base + _i * BF_STEP), 2] call CBA_fnc_formatNumber;
        ["ACRE_BF888S", _preset, _i, "frequencyRX", _frequency] call acre_api_fnc_setPresetChannelField;
        ["ACRE_BF888S", _preset, _i, "frequencyRX", _frequency] call acre_api_fnc_setPresetChannelField;
    };
} forEach [
    ["blufor",BLUFOR_BF_BASE],
    ["opfor",OPFOR_BF_BASE],
    ["indfor",INDFOR_BF_BASE],
    ["civilian",CIVILIAN_BF_BASE]
];

// Assign presets
// From: https://github.com/IDI-Systems/acre2/blob/master/addons/api/fnc_setupMission.sqf
_uniqueSideFrequencies = getNumber (missionConfigFile >> "CfgBax" >> "acreSideFrequencies");
if (_uniqueSideFrequencies == 0) exitWith {
    ["ACRE_PRC343", "blufor"] call acre_api_fnc_setPreset;
    ["ACRE_PRC148", "blufor"] call acre_api_fnc_setPreset;
    ["ACRE_PRC152", "blufor"] call acre_api_fnc_setPreset;
    ["ACRE_PRC117F", "blufor"] call acre_api_fnc_setPreset;
    ["ACRE_BF888S", "blufor"] call acre_api_fnc_setPreset;
    ["ACRE_PRC77", "default"] call acre_api_fnc_setPreset;
};

[{!isNull acre_player}, {
    switch (side acre_player) do {
        case west: {
            ["ACRE_PRC343", "blufor"] call acre_api_fnc_setPreset;
            ["ACRE_PRC148", "blufor"] call acre_api_fnc_setPreset;
            ["ACRE_PRC152", "blufor"] call acre_api_fnc_setPreset;
            ["ACRE_PRC117F", "blufor"] call acre_api_fnc_setPreset;
            ["ACRE_BF888S", "blufor"] call acre_api_fnc_setPreset;
            ["ACRE_PRC77", "default"] call acre_api_fnc_setPreset;
        };
        case east: {
            ["ACRE_PRC343", "opfor"] call acre_api_fnc_setPreset;
            ["ACRE_PRC148", "opfor"] call acre_api_fnc_setPreset;
            ["ACRE_PRC152", "opfor"] call acre_api_fnc_setPreset;
            ["ACRE_PRC117F", "opfor"] call acre_api_fnc_setPreset;
            ["ACRE_BF888S", "opfor"] call acre_api_fnc_setPreset;
            ["ACRE_PRC77", "default2"] call acre_api_fnc_setPreset;
        };
        case independent: {
            ["ACRE_PRC343", "indfor"] call acre_api_fnc_setPreset;
            ["ACRE_PRC148", "indfor"] call acre_api_fnc_setPreset;
            ["ACRE_PRC152", "indfor"] call acre_api_fnc_setPreset;
            ["ACRE_PRC117F", "indfor"] call acre_api_fnc_setPreset;
            ["ACRE_BF888S", "indfor"] call acre_api_fnc_setPreset;
            ["ACRE_PRC77", "default3"] call acre_api_fnc_setPreset;
        };
        default {
            ["ACRE_PRC343", "civilian"] call acre_api_fnc_setPreset;
            ["ACRE_PRC148", "civilian"] call acre_api_fnc_setPreset;
            ["ACRE_PRC152", "civilian"] call acre_api_fnc_setPreset;
            ["ACRE_PRC117F", "civilian"] call acre_api_fnc_setPreset;
            ["ACRE_BF888S", "civilian"] call acre_api_fnc_setPreset;
            ["ACRE_PRC77", "default4"] call acre_api_fnc_setPreset;
        };
    };
}] call CBA_fnc_waitUntilAndExecute;
