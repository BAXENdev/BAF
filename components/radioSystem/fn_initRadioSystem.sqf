
// test for tfar and acre

VAR_RADIO_PRESETS = createHashMap;

if (isNull (configFile >> "CfgPatches" >> "acre_main")) exitWith {
	[] call BAF_fnc_initAcre;
};
