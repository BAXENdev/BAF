
// _preset = GETVAR(player,,ACRE_EMPTY_PRESET);

#include "..\..\..\macros\acreMacros.hpp"

if (isNull player) exitWith {};

_side = toLower str side group player;
_sideGroup = toLower (([_side] + ((groupId group player) splitString ",.- ")) joinString "_");
_factionID = toLower GETVAR(player,VARS_FACTION_ID,"");
_factionClass = toLower (_factionID + "_" + GETVAR(player,VARS_CLASS_SUFFIX,""));
_factionLoadout = toLower (_factionID + "_" + GETVAR(player,VARS_LOADOUT_SUFFIX,""));

_mergePresets = {
	params ["_preset1","_preset2"];

	for "_i" from 0 to 7 do {
		if ((_preset2#_i) > -1) then { _preset1 set [_i,_preset2#_i]; };
	};
};

_preset = ACRE_EMPTY_PRESET;

_toAddPreset = VAR_RADIO_PRESETS get _side;
if !(isNil "_toAddPreset") then {
	[_preset,_toAddPreset] call _mergePresets;
};

_toAddPreset = VAR_RADIO_PRESETS get _sideGroup;
if !(isNil "_toAddPreset") then {
	[_preset,_toAddPreset] call _mergePresets;
};

_toAddPreset = VAR_RADIO_PRESETS get _factionID;
if !(isNil "_toAddPreset") then {
	[_preset,_toAddPreset] call _mergePresets;
};

_toAddPreset = VAR_RADIO_PRESETS get _factionClass;
if !(isNil "_toAddPreset") then {
	[_preset,_toAddPreset] call _mergePresets;
};

_toAddPreset = VAR_RADIO_PRESETS get _factionLoadout;
if !(isNil "_toAddPreset") then {
	[_preset,_toAddPreset] call _mergePresets;
};

{
	if (_preset#_forEachIndex < 0) then { continue; };
	_radioId = [_x] call acre_api_fnc_getRadioByType;
	if (isNil "_radioId") then { continue; };
	[_radioId, _preset#_forEachIndex] call acre_api_fnc_setRadioChannel;
} forEach ACRE_RADIOS;

SETVARG(player,VARS_RESPAWN_RADIOS,_preset);
