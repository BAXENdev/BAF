
// utilityMacros.hpp should always be included before these macros

#define SIDE null
#define EMPTY_ACE_LOADOUT [[],[],[]] // TODO: Assign proper loadout structure

#define DEFAULT_LOADOUT EMPTY_ACE_LOADOUT
#define DEFAULT_LOADOUT_NAME "default"
// #define DEFAULT_VARIABLE() LOADOUT_VARIABLE(default)
// #define GET_DEFAULT_LOADOUT() 

// Variable name format: baf_[TYPE]_[SIDE]_[VARIABLE]
// Registry name format: baf_[TYPE]_registry_[SIDE]
// TYPE: loadout | class | crate
#define LOADOUT_VARIABLE(VARIABLE) CONCAT4(baf_loadout_,SIDE,_,VARIABLE)
#define LOADOUT_REGISTRY() CONCAT(baf_loadout_registry_,SIDE)
#define GET_LOADOUT_VARIABLE(VARIABLE, SIDE) GETVARM(format ["baf_loadout_%1_%2", SIDE, VARIABLE], nil)
#define GET_LOADOUT_REGISTRY(SIDE) GETVARM(format ["baf_loadout_registry_%1", SIDE], nil)

#define CLASS_VARIABLE(VARIABLE) CONCAT4(baf_class_,SIDE,_,VARIABLE)
#define CLASS_REGISTRY() CONCAT(baf_class_registry_,SIDE)
#define GET_CLASS_VARIABLE(VARIABLE, SIDE) GETVARM(format ["baf_class_%1_%2", SIDE, VARIABLE])
#define GET_CLASS_REGISTRY(SIDE) GETVARM(format ["baf_class_registry_%1", SIDE])

#define CRATE_VARIABLE(VARIABLE) CONCAT4(baf_crate_,SIDE,_,VARIABLE)
#define CRATE_REGISTRY() CONCAT(baf_crate_registry_,SIDE)
#define GET_CRATE_VARIABLE(VARIABLE, SIDE) GETVARM(format ["baf_crate_%1_%2", SIDE, VARIABLE])
#define GET_CRATE_REGISTRY(SIDE) GETVARM(format ["baf_crate_registry_%1", SIDE])

// Define registries
// registry: [variable name, display name]
// display name is denoted as "NAME" in code, variable name is denoted as "VARIABLE" in code
#define INIT_REGISTRY() \
    LOADOUT_REGISTRY() = []; \
    CLASS_REGISTRY() = []; \
    CRATE_REGISTRY() = []

// Loadout is made of missionNamespace variable that is assigned an array
// Array holds: 0) loadout, 1) Ace traits
// Trait: [medical value, engineer value]
// TODO: 4) Safestart sights
// TODO: 5) Random gear parts
// TODO: Random loadout variations
// - Randomize entire loadout?
// - Randomize guns? Scenario: Mismatching attachments, Mismatching magazines
// - Randomize uniform? Scenario: Default vest has size 10, but random vest has size 8. How to resolve?
// TODO: Add Other traits: EOD, Hacker
#define CREATE_LOADOUT(VARIABLE, NAME, LOADOUT) \
    LOADOUT_VARIABLE(VARIABLE) = [LOADOUT, [0, 0]]; \
    LOADOUT_REGISTRY() pushBack [STRING(LOADOUT_VARIABLE(VARIABLE)), NAME]

// #define ADD_LOADOUT(VARIABLE, ACE_LOADOUT) (LOADOUT_VARIABLE select 1) pushBack ACE_LOADOUT // TODO Is randomization neccesary here?
#define ADD_MEDIC(VARIABLE) (LOADOUT_VARIABLE(VARIABLE) select 1) set [0, 1]
#define ADD_DOCTOR(VARIABLE) (LOADOUT_VARIABLE(VARIABLE) select 1) set [0, 2]
#define ADD_ENGINEER(VARIABLE) (LOADOUT_VARIABLE(VARIABLE) select 1) set [1, 1] // TODO: Rename engineer to appropriate name
// TODO: EOD Trait
// TODO: Uav Hacker?
// #define ADD_STARTUP_SIGHT(VARIABLE, SIGHT) (LOADOUT_VARIABLE(VARIABLE) select 3) pushBack SIGHT // TODO: Macro Startup Sight

// Class Registry holds a list of pairs, each pair having a class variable name for a class and the name of the class
// Class variables holds a list of loadout variable names
#define CREATE_CLASS(VARIABLE, NAME) \
    CLASS_REGISTRY() pushBack [STRING(CLASS_VARIABLE(VARIABLE)), NAME]; \
    CLASS_VARIABLE(VARIABLE) = []

// Consider removing the name. When retriving loadout names, will have to query each loadout for the name.
// TODO: Determine whether query has a negative effect on performane. This is a pre-optimization, DANGEROUS!
// Query:
// - Variables: CV - Class Variable, LR - Loadout Registry
// _loadoutVarNamePairs = LR select { (_x select 0) in CV }; // Retrieve variable-name pairs from LR. 
// Pairs will not be in the same order as CV variables. Pairs need re-seperated for menus.
// _loadoutVariables = _loadoutVarNamePairs apply { _x select 0; }; // Split variables from pairs
// _loadoutNames = _loaodutVarNamePairs apply { _x select 1; }; // split nams from pairs
#define ADD_TO_CLASS(VARIABLE_CLASS, VARIABLE_LOADOUT) \
    CLASS_VARIABLE(VARIABLE_CLASS) pushBack [STRING(LOADOUT_VARIABLE(VARIABLE_LOADOUT)) select 0]

// TODO: Add crate macros

