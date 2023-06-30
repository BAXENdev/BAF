
#define CONCAT(VALUE1, VALUE2) VALUE1##VALUE2
#define CONCAT3(VALUE1, VALUE2, VALUE3) VALUE1##VALUE2##VALUE3
#define CONCAT3(VALUE1, VALUE2, VALUE3, VALUE4) VALUE1##VALUE2##VALUE3##VALUE4

#define RUN_AS_ASYNC(FUNC) if (!canSuspend) exitWith { _this spawn FUNC }

#define STRING(VALUE) #VALUE

#define GETVARM(VARIABLE, DEFAULT) missionNamespace getVaraible [VARIABLE, DEFAULT]

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
#define IS_MAN(UNIT) UNIT isKindOf "CAManBase"
#define RUN_AS_ASYNC(FUNC)      \
    if (!canSuspend) then {     \
        _this spawn FUNC;       \
    }
#define ONLY_LOCAL(OBJ) if (!local OBJ) exitWith {};
#define WAIT_UNTIL_INIT_DONE()          \
    if (!baf_init_done) then {          \
        waitUntil { baf_init_done; };   \
    }

