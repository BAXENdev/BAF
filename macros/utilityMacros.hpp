
#define CONCAT(VALUE1, VALUE2) VALUE1##VALUE2
#define CONCAT3(VALUE1, VALUE2, VALUE3) VALUE1##VALUE2##VALUE3
#define CONCAT4(VALUE1, VALUE2, VALUE3, VALUE4) VALUE1##VALUE2##VALUE3##VALUE4

#define LOG(STRING) diag_log STRING
#define LOG_FORMAT1(STRING, VALUE) diag_log format [STRING, toString VALUE]
#define LOG_FORMAT2(STRING, VALUE1, VALUE2) diag_log format [STRING, toString VALUE1, toString VALUE2]
#define LOG_FORMAT3(STRING, VALUE1, VALUE2, VALUE3) diag_log format [STRING, toString VALUE1, toString VALUE2, toString VALUE3]

#define RUN_AS_ASYNC(FUNC) if (!canSuspend) exitWith { _this spawn FUNC }

#define STRING(VALUE) #VALUE

#define GETVARM(VARIABLE, DEFAULT) missionNamespace getVariable [VARIABLE, DEFAULT, true]
#define SETVARM(VARIABLE, VALUE) missionNamespace setVariable [VARIABLE, VALUE, true]
#define GETVARMG(VARIABLE, DEFAULT) missionNamespace getVariabble [VARIABLE, DEFAULT, true]
#define SETVARMG(VARIABLE, VALUE) missionNamespace setVariable [VARIABLE, VALUE, true]

#define IS_PLAYER(UNIT) hasInterface UNIT
#define WAIT_UNTIL_PLAYER_EXISTS()          \
    if (isNull player) then {               \
        waitUntil { !isNull player; };      \
    }
#define RUN_ON_CLIENT(UNIT, FUNC)                   \
    if (isPlayer UNIT and local UNIT) then {        \
        _this call FUNC;                            \
    } else {                                        \
        if (isPlayer UNIT) then {                   \
            _this remoteExec [STRING(FUNC), UNIT];  \
        };                                          \
    }
#define RUN_LOCAL_TO(OBJ, FUNC)             \
    if (!local OBJ) exitWith {              \
        _this remoteExec [STRING(FUNC), OBJ];    \
    }
#define IS_MAN(OBJ) !(isNil OBJ) and (OBJ isKindOf "CAManBase")
#define RUN_AS_ASYNC(FUNC)      \
    if (!canSuspend) then {     \
        _this spawn FUNC;       \
    }   
#define WAIT_UNTIL_INIT_DONE()                  \
    if (!baf_init_done) then {                  \
        waitUntil { sleep 2; baf_init_done; };  \
    }
