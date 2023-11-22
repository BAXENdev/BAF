
#include "..\..\..\macros\acreMacros.hpp"

params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

_preset = GETVAR(player,VARS_RESPAWN_RADIOS,nil);
if !(isNil "_preset") exitWith {
	{
		if (_preset#_forEachIndex < 0) then { continue; };
		_radioId = [_x] call acre_api_fnc_getRadioByType;
		if (isNil "_radioId") then { continue; };
		[_radioId, _preset#_forEachIndex] call acre_api_fnc_setRadioChannel;
	} forEach ACRE_RADIOS;
};

[] call BAX_RADIOS_fnc_setChannelsAcre;


