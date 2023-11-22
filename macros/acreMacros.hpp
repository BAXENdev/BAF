
#include "utilityMacros.hpp"

#define ACRE_RADIOS                                     ["ACRE_PRC343","ACRE_PRC148","ACRE_PRC152","ACRE_PRC117F","ACRE_PRC77","ACRE_SEM52SL","ACRE_SEM70","ACRE_BF888S"]
#define ACRE_EMPTY_PRESET                               [-1,-1,-1,-1,-1,-1,-1,-1]
#define PRC343                                          0
#define PRC148                                          1
#define PRC152                                          2
#define PRC117F                                         3
#define PRC77                                           4
#define BF888S                                          5
#define SEM52SL                                         6
#define SEM70                                           7

#define CHECK_PRESET(PRESET_NAME) \
    if (isNil "_preset") then { \
        _preset = ACRE_EMPTY_PRESET; \
        VAR_RADIO_PRESETS set [toLower PRESET_NAME,_preset]; \
    }
// WEST EAST GUER CIV
#define SET_SIDE_PRESET(SIDE,RADIO,CHANNEL) \
    _preset = VAR_RADIO_PRESETS get SIDE; \
    CHECK_PRESET(SIDE); \
    _preset set [RADIO,CHANNEL]
#define SET_GROUP_PRESET(SIDE,GROUP,RADIO,CHANNEL) \
    _presetName = ([SIDE] + (GROUP splitString ",.- ")) joinString "_"; \
    _preset = VAR_RADIO_PRESETS get (toLower _presetName); \
    CHECK_PRESET(_presetName); \
    _preset set [RADIO,CHANNEL]
#define SET_FACTION_PRESET(FACTION,RADIO,CHANNEL) \
    _preset = VAR_RADIO_PRESETS get (toLower FACTION); \
    CHECK_PRESET(FACTION); \
    _preset set [RADIO,CHANNEL]
#define SET_CLASS_PRESET(FACTION,CLASS,RADIO,CHANNEL) \
    _presetName = FACTION + "_" + CLASS; \
    _preset = VAR_RADIO_PRESETS get (toLower _presetName); \
    CHECK_PRESET(_presetName); \
    _preset set [RADIO,CHANNEL]
#define SET_LOADOUT_PRESET(FACTION,LOADOUT,RADIO,CHANNEL) \
    _presetName = FACTION + "_" + LOADOUT; \
    _preset = VAR_RADIO_PRESETS get (toLower _presetName); \
    CHECK_PRESET(_presetName); \
    _preset set [RADIO,CHANNEL]
