
if !(hasInterface) exitWith {};

if !(canSuspend) exitWith { [] spawn BAX_RADIOS_fnc_postinitRadios; };

if !(isNull (configFile >> "CfgPatches" >> "acre_main")) exitWith {
	waitUntil { sleep .2; ([] call acre_api_fnc_isInitialized) };
	[] call BAX_RADIOS_fnc_postinitAcre;
};
