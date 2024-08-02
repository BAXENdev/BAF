
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
// ["blu",_bluforLanguage] call acre_api_fnc_babelAddLanguageType;
// ["ind",_indforLanguage] call acre_api_fnc_babelAddLanguageType;
// ["op",_opforLanguage] call acre_api_fnc_babelAddLanguageType;
// ["ne",_civilianLanguage] call acre_api_fnc_babelAddLanguageType;


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

#define BLUFOR_MR_BASE 500.2
#define OPFOR_MR_BASE 470.6
#define INDFOR_MR_BASE 490.8
#define CIVILIAN_MR_BASE 481.1
#define MR_STEP 0.25

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
// ["ACRE_PRC148", "default", "blufor"] call acre_api_fnc_copyPreset;
_presetData148 = ["ACRE_PRC148", "default"] call acre_api_fnc_getPresetData;
_presetData148 set ["groups",
    [
        ["G01", [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]],
        ["G02", [16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]],
        ["G03", [32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47]],
        ["G04", [48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63]],
        ["G05", [64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79]],
        ["G06", [80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95]],
        ["G07", [96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111]],
        ["G08", [112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127]],
        ["G09", [128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143]],
        ["G10", [144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159]],
        ["G11", [160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175]],
        ["G12", [176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191]],
        ["G13", [192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207]],
        ["G14", [208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223]],
        ["G15", [224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239]],
        ["G16", [240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255]]
    ]
];
["ACRE_PRC148", "blufor", _presetData148] call acre_api_fnc_setPresetData;
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




















// TODO: Put 343 on same freqs as 148?
// 400:2400 (343:148) is same as 5000:20000 (152:117)
// TODO: Can 343 share freqs with 148?
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

// 148
// TODO: Create preset data
{
    _x params ["_preset","_base"];
    for "_i" from 0 to 31 do {
        _frequency = [(_base + _i * MR_STEP), 2] call CBA_fnc_formatNumber;
        ["ACRE_PRC148", _preset, _i, "frequencyTX", _frequency] call acre_api_fnc_setPresetChannelField;
        ["ACRE_PRC148", _preset, _i, "frequencyTX", _frequency] call acre_api_fnc_setPresetChannelField;
        ["ACRE_PRC148", _preset, _i, "name", ("SR-NET " + (str (_i + 1)))] call acre_api_fnc_setPresetChannelField;
        ["ACRE_PRC148", _preset, _i, "power", 2400] call acre_api_fnc_setPresetChannelField;
    };
} forEach [
    ["blufor",BLUFOR_MR_BASE],
    ["opfor",OPFOR_MR_BASE],
    ["indfor",INDFOR_MR_BASE],
    ["civilian",CIVILIAN_MR_BASE]
];

// 158 117f
{
    _x params ["_preset","_base"];
    for "_i" from 0 to 99 do {
        _frequency = [(_base + _i * LR_STEP), 2] call CBA_fnc_formatNumber;
        ["ACRE_PRC152", _preset, _i, "frequencyRX", _frequency] call acre_api_fnc_setPresetChannelField;
        ["ACRE_PRC152", _preset, _i, "frequencyRX", _frequency] call acre_api_fnc_setPresetChannelField;
        ["ACRE_PRC152", _preset, _i, "name", ("LR-NET " + (str (_i + 1)))] call acre_api_fnc_setPresetChannelField;
        ["ACRE_PRC117F", _preset, _i, "frequencyRX", _frequency] call acre_api_fnc_setPresetChannelField;
        ["ACRE_PRC117F", _preset, _i, "frequencyRX", _frequency] call acre_api_fnc_setPresetChannelField;
        ["ACRE_PRC117F", _preset, _i, "name", ("LR-NET " + (str (_i + 1)))] call acre_api_fnc_setPresetChannelField;
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
    for "_i" from 0 to 99 do {
        _frequency = [(_base + _i * BF_STEP), 2] call CBA_fnc_formatNumber;
        ["ACRE_BF888S", _preset, _i, "frequencyRX", _frequency] call acre_api_fnc_setPresetChannelField;
        ["ACRE_BF888S", _preset, _i, "frequencyRX", _frequency] call acre_api_fnc_setPresetChannelField;
        ["ACRE_BF888S", _preset, _i, "power", 2000] call acre_api_fnc_setPresetChannelField;
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
