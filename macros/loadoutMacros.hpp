
#define SIDE null
#define EMPTY_ACE_LOADOUT [[],[],[]] // TODO: Assign proper loadout structure

#define DEFAULT_LOADOUT EMPTY_ACE_LOADOUT
// #define DEFAULT_VARIABLE() LOADOUT_VARIABLE(default)
// #define GET_DEFAULT_LOADOUT() 

#define LOADOUT_VARIABLE(VARIABLE) CONCAT4(baf_loadout_,SIDE,_,VARIABLE)
#define LOADOUT_REGISTRY() CONCAT(baf_loadout_registry_,SIDE)
#define CLASS_VARIABLE(VARIABLE) CONCAT4(baf_class_,SIDE,_,VARIABLE)
#define CLASS_REGISTRY() CONCAT(baf_loadout_registry_,SIDE)

// Define registries
#define INIT_REGISTRY \
    LOADOUT_REGISTRY = []; \
    CLASS_REGISTRY = []

#define ASSIGN_DEFAULT_LOADOUT(ACE_LOAODUT) 

// Loadout is made of missionNamespace variable that is assigned an array
// Array holds: 1) Loadout name, 2) loadout, 3) Ace traits, 4) Safestart sights, TODO: 5) Randomized gear
#define CREATE_LOADOUT(VARIABLE, NAME) \
    LOADOUT_VARIABLE(VARIABLE) = [NAME, [DEFAULT_LOADOUT], [0, 0], []];
    LOADOUT_REGISTRY() pushBack [STRING(LOADOUT_VARIABLE(VARIABLE)), NAME]

#define ASSIGN_LOADOUT(VARIABLE, ACE_LOADOUT) (LOADOUT_VARIABLE(VARIABLE) select 1) set [0, ACE_LOADOUT]
#define ADD_LOADOUT()
#define ASSIGN_MEDIC(VARIABLE) (LOADOUT_VARIABLE(VARIABLE) select 2) set [0, 1]
#define ASSIGN_DOCTOR(VARIABLE) (LOADOUT_VARIABLE(VARIABLE) select 2) set [0, 2]
#define ASSIGN_ENGINEER(VARIABLE) (LOADOUT_VARIABLE(VARIABLE) select 2) set [1, 1] // TODO: Rename engineer to appropriate name
#define ASSIGN_ENGINEER2(VARIABLE) (LOADOUT_VARIABLE(VARIABLE) select 2) set [1, 2]
#define ASSIGN_STARTUP_SIGHT(VARIABLE, SIGHT) (LOADOUT_VARIABLE(VARIABLE) select 3) pushBack SIGHT




