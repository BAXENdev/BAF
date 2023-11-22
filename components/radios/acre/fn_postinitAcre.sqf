
// #include "..\..\..\macros\acreMacros.hpp"

// _side = toLower str side group player;
// _sideGroup = toLower (([_side] + ((groupId group player) splitString ",.- ")) joinString "_");
// _factionID = toLower GETVAR(player,VARS_FACTION_ID,"");
// _factionClass = toLower (_factionID + "_" + GETVAR(player,VARS_CLASS_SUFFIX,""));
// _factionLoadout = toLower (_factionID + "_" + GETVAR(player,VARS_LOADOUT_SUFFIX,""));

// _mergePresets = {
// 	params ["_preset1","_preset2"];

// 	for "_i" from 0 to 7 do {
// 		if ((_preset2#_i) > -1) then { _preset1 set [_i,_preset2#_i]; };
// 	};
// };

// _preset = ACRE_EMPTY_PRESET;
// _rptMsg = "First preset: " + (str _preset); DEBUG_RPT_FULL(_rptMsg);

// DEBUG_RPT_FULL("Get preset: " + _side);
// _toAddPreset = VAR_RADIO_PRESETS get _side;
// if !(isNil "_toAddPreset") then {
// 	_rptMsg = format ["Adding Side: %1",_toAddPreset]; DEBUG_RPT_FULL(_rptMsg);
// 	[_preset,_toAddPreset] call _mergePresets;
// };

// _rptMsg = "Second preset: " + (str _preset); DEBUG_RPT_FULL(_rptMsg);

// DEBUG_RPT_FULL("Get preset: " + _sideGroup);
// _toAddPreset = VAR_RADIO_PRESETS get _sideGroup;
// if !(isNil "_toAddPreset") then {
// 	_rptMsg = format ["Adding SideGroup: %1",_toAddPreset]; DEBUG_RPT_FULL(_rptMsg);
// 	[_preset,_toAddPreset] call _mergePresets;
// };

// _rptMsg = "Fourth preset: " + (str _preset); DEBUG_RPT_FULL(_rptMsg);

// DEBUG_RPT_FULL("Get preset: " + _factionID);
// _toAddPreset = VAR_RADIO_PRESETS get _factionID;
// if !(isNil "_toAddPreset") then {
// 	_rptMsg = format ["Adding Faction: %1",_toAddPreset]; DEBUG_RPT_FULL(_rptMsg);
// 	[_preset,_toAddPreset] call _mergePresets;
// };

// _rptMsg = "Fifth preset: " + (str _preset); DEBUG_RPT_FULL(_rptMsg);

// DEBUG_RPT_FULL("Get preset: " + _factionClass);
// _toAddPreset = VAR_RADIO_PRESETS get _factionClass;
// if !(isNil "_toAddPreset") then {
// 	_rptMsg = format ["Adding FactionClass: %1",_toAddPreset]; DEBUG_RPT_FULL(_rptMsg);
// 	[_preset,_toAddPreset] call _mergePresets;
// };

// _rptMsg = "Sixth preset: " + (str _preset); DEBUG_RPT_FULL(_rptMsg);

// DEBUG_RPT_FULL("Get preset: " + _factionLoadout);
// _toAddPreset = VAR_RADIO_PRESETS get _factionLoadout;
// if !(isNil "_toAddPreset") then {
// 	_rptMsg = format ["Adding FactionClass: %1",_toAddPreset]; DEBUG_RPT_FULL(_rptMsg);
// 	[_preset,_toAddPreset] call _mergePresets;
// };

// _rptMsg = "Final preset: " + (str _preset); DEBUG_RPT_FULL(_rptMsg);

// {
// 	if (_preset#_forEachIndex < 0) then { continue; };
// 	_radioId = [_x] call acre_api_fnc_getRadioByType;
// 	if (isNil "_radioId") then { continue; };
// 	[_radioId, _preset#_forEachIndex] call acre_api_fnc_setRadioChannel;

// 	_rptMsg = (format ["%1: setting radio %2 to channel %3",name player, _x, _preset#_forEachIndex]); DEBUG_RPT_FULL(_rptMsg);
// } forEach ACRE_RADIOS;

// No debug

#include "..\..\..\macros\acreMacros.hpp"

_preset148 = ["ACRE_PRC148"] call acre_api_fnc_getPreset;
_preset152 = ["ACRE_PRC152"] call acre_api_fnc_getPreset;
_preset117 = ["ACRE_PRC117F"] call acre_api_fnc_getPreset;
{
	["ACRE_PRC148", _preset148, _forEachIndex + 1, "label", _x] call acre_api_fnc_setPresetChannelField;

	["ACRE_PRC152", _preset152, _forEachIndex + 1, "description", _x] call acre_api_fnc_setPresetChannelField;

	["ACRE_PRC117F", _preset117, _forEachIndex + 1, "name", _x] call acre_api_fnc_setPresetChannelField;
} forEach VAR_RADIO_CHANNEL_NAMES;

{
	_radioId = [_x] call acre_api_fnc_getRadioByType;
	if (_preset#_forEachIndex < 0) then { continue; };
	if (isNil "_radioId") then { continue; };
	player removeItem _radioId;
	waitUntil { _radioId = [_x] call acre_api_fnc_getRadioByType; isNil "_radioId"; };
	player addItem _x;
	waitUntil { _radioId = [_x] call acre_api_fnc_getRadioByType; !(isNil "_radioId"); };
} forEach ACRE_RADIOS;

[] call BAX_RADIOS_fnc_setChannelsAcre;
