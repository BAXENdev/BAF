
// Always assume
// #include "utilityMacros.hpp"

#define EMPTY_LOADOUT [[],[],[]] // TODO: Update this array to an empty loadout

#define LOADOUT_VARIABLE(SUFFIX) CONCAT4(baf_loadout_,SIDE,_,SUFFIX) 
#define LOADOUT_REGISTRY() CONCAT(baf_registry_,SIDE)
#define LOADOUT_TRAITS(SUFFIX) (LOADOUT_VARIABLE(SUFFIX) select 2)

#define GET_LOADOUT_VARIABLE(STRING_SIDE, STRING_SUFFIX) (format ["baf_loadout_%1_%2", STRING_SIDE, STRING_SUFFIX])
#define GET_LOADOUT_REGISTRY(STRING_SIDE) (format ["baf_registry_", STRING_SIDE])
#define GET_LOADOUT(STRING_SIDE, STRING_SUFFIX) (GETVARM(GET_LOADOUT_VARIABLE(STRING_SIDE, STRING_SUFFIX), nil))
#define GET_LOADOUT_TRAITS(STRING_SIDE, STRING_SUFFIX) (GET_LOADOUT(STRING_SIDE, STRING_SUFFIX) select 2)

#define INIT_LOADOUT_SYSTEM(SIDENAME)   \
    #define SIDE SIDENAME               \
    LOADOUT_REGISTRY() = []

// Loadout Variable: [Display Name, Loadout Array, Traits Array, Radio Key]
#define CREATE_LOADOUT(SUFFIX, DISPLAY_NAME, LOADOUT)                                         \
    LOADOUT_REGISTRY() pushBack [VAR_TO_STRING(LOADOUT_VARIABLE(SUFFIX)), DISPLAY_NAME];    \
    LOADOUT_VARIABLE(SUFFIX) = [DISPLAY_NAME, LOADOUT, [0, 0], nil] // TODO: Add additional values to trait array
#define RESET_TRAITS(SUFFIX) 
#define ADD_MEDIC(SUFFIX) LOADOUT_TRAITS(SUFFIX) set [0, 1]
#define ADD_DOCTOR(SUFFIX) LOADOUT_TRAITS(SUFFIX) set [0, 2]
#define ADD_ENGINEER(SUFFIX) LOADOUT_TRAITS(SUFFIX) set [1, 1]
// #define ADD_RADIO_KEY(SUFFIX, STRING_KEY) LOADOUT_VARIABLE(SUFFIX) set [3, STRING_KEY]; // TODO: Enable Radio Key Functionality 
// TODO: Add additional customization
