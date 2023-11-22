
if !(isNull (configFile >> "CfgPatches" >> "acre_main")) exitWith {
	_this call BAX_RADIOS_fnc_onPlayerRespawnAcre;
};
