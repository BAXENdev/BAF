
// TODO: Test the isClass in arma to determine if these work.
_acreExists = isclass(configFile >> "cfgPatches" >> "acre_main");
_tfarExists - isClass(configFile >> "cfgPatches" >> "Tfar - Core");

if (_acreExists and _tfarExists) exitWith {
    /* TODO: Debug Message */ 
};
if (_acreExists) exitWith {
    // TODO: Debug message
    BAF_INIT_fnc_acreInit;
};
if (_tfarExists) exitWith {
    // TODO: Debug message
    BAF_INIT_fnc_tfarInit;
};

// TODO: Debug message - no radios


