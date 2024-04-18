
// FUNCTIONS
#define CONCAT(VALUE1,VALUE2) VALUE1##VALUE2
#define CONCAT3(VALUE1,VALUE2,VALUE3) VALUE1##VALUE2##VALUE3
#define CONCAT4(VALUE1,VALUE2,VALUE3,VALUE4) VALUE1##VALUE2##VALUE3##VALUE4

#define SVAR(VAR) #VAR

#define GETVAR(OBJECT,VAR,DEFAULT_VALUE) (OBJECT getVariable [VAR,DEFAULT_VALUE])
#define GETVARM(VAR,DEFAULT_VALUE) (missionNamespace getVariable [VAR,DEFAULT_VALUE])
#define SETVAR(OBJECT,VAR,VALUE) (OBJECT setVariable [VAR,VALUE])
#define SETVARM(VAR,VALUE) (missionNamespace setVariable [VAR,VALUE])
#define SETVARG(OBJECT,VAR,VALUE) (OBJECT setVariable [VAR,VALUE,true])
#define SETVARMG(VAR,VALUE) (missionNamespace setVariable [VAR,VALUE,true])

#define DEBUG_RPT(MSG) diag_log format ['[BAX] (%1,%2) %3',_fnc_scriptName,__LINE__,MSG]
#define DEBUG_ERR(MSG) [format ['[BAX] (%1,%2) %3',_fnc_scriptName,__LINE__,MSG]] call BIS_fnc_error

#define EMPTY_LOADOUT [[],[],[],[],[],[],'','',[],['','','','','','']]
#define VAR_RESPAWN "bax_respawn_loadout"