
// #define TAG(STRING) ("baf_" + STRING)
// #define FUNC(STRING) ("BAF_fnc_" + STRING)

#ifndef UTILITY
#define UTILITY

// CONSTANTS

#define WEST_ID blufor
#define EAST_ID opfor
#define INDEPENDENT_ID indfor
#define CIVILIAN_ID civi
#define WEST_ID_STR #WEST_ID
#define EAST_ID_STR #EAST_ID
#define INDEPENDENT_ID_STR #INDEPENDENT_ID
#define CIVILIAN_ID_STR #CIVILIAN_ID

#define TAG_REGISTRY baf_registry_tags
#define TAG_REGISTRY_STR #TAG_REGISTRY
#define UNIT_LOADOUT_STR "baf_unit_loadout"
#define UNIT_FACTION_ID "baf_unit_faction_id"
#define UNIT_LOADOUT_SUFFIX "baf_unit_loadout_suffix"
#define UNIT_CLASS_SUFFIX "baf_unit_class_suffix"

// FUNCTIONS

#define CONCAT(VALUE1,VALUE2) VALUE1##VALUE2
#define CONCAT3(VALUE1,VALUE2,VALUE3) VALUE1##VALUE2##VALUE3
#define CONCAT4(VALUE1,VALUE2,VALUE3,VALUE4) VALUE1##VALUE2##VALUE3##VALUE4

#define LOG(STRING) diag_log STRING
#define LOG_FORMAT1(STRING,VALUE) diag_log format [STRING,toString VALUE]
#define LOG_FORMAT2(STRING,VALUE1,VALUE2) diag_log format [STRING,toString VALUE1,toString VALUE2]
#define LOG_FORMAT3(STRING,VALUE1,VALUE2,VALUE3) diag_log format [STRING,toString VALUE1,toString VALUE2,toString VALUE3]

#define VAR_TO_STR(VALUE) #VALUE

#define GETVAR(OBJECT,VARIABLE_NAME,DEFAULT_VALUE) OBJECT getVariable [VARIABLE_NAME,DEFAULT_VALUE]
#define SETVAR(OBJECT,VARIABLE_NAME,VALUE) OBJECT setVariable [VARIABLE_NAME,VALUE]
#define SETVARG(OBJECT,VARIABLE_NAME,VALUE) OBJECT setVariable [VARIABLE_NAME,VALUE,true]
#define GETVARM(VARIABLE_NAME,DEFAULT_VALUE) missionNamespace getVariable [VARIABLE_NAME,DEFAULT_VALUE]
#define SETVARM(VARIABLE_NAME,VALUE) missionNamespace setVariable [VARIABLE_NAME,VALUE]
#define SETVARMG(VARIABLE_NAME,VALUE) missionNamespace setVariable [VARIABLE_NAME,VALUE,true]

// #define TRYCATCH(ARGS,TRY_CODE,EXCEPT_CODE) ARGS try TRY_CODE catch EXCEPT_CODE

// #define DEBUG_RPT_FULL(MSG) diag_log format ["[BAF]: (%1:%2:%4) %3",__FILE__,__LINE__,MSG,isServer]
#define DEBUG_RPT_FULL(MSG) diag_log format ["[BAF]: (%1:%2) %3",__FILE__,__LINE__,MSG]
// #define DEBUG_RPT_FULL(MSG) diag_log format ["[BAF] (%1,%2) %3",_fnc_scriptName,__LINE__,MSG]
#define DEBUG_RPT(MSG) diag_log format ["[BAF]: %1",MSG]
// #define DEBUG_RPT(MSG) DEBUG_RPT_FULL(MSG)

#endif
