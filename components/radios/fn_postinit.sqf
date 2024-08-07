
#include "_radiosMacros.hpp"

if !(hasInterface) exitWith {};

// TODO: Channel names need updated if player switches side...
// Do I just rerun postinit?

_side = side group player;
_radioDiaryText = "";

{
	_channelsKey = _x;
	_keyName = bax_radios_netNames get _side get _channelsKey;

	_channelsNames = bax_radios_channelNames get _side get _channelsKey;

	_channels = keys _channelsNames;

	if (_channels isEqualTo []) then {
		continue;
	};

	_channels sort true;

	_radioDiaryText = _radioDiaryText + (format ["<font size='16' face='PuristaBold'>%1:</font><br/>", _keyName]);

	{
		_channel = _x;
		_channelName = _channelsNames get _channel;

		_radioDiaryText = _radioDiaryText + (format ["<font face='PuristaMedium'>[%1] %2</font><br/>", _channel, _channelName]);
	} forEach _channels;

	_radioDiaryText = _radioDiaryText + "<br/>";
} forEach ["LR", "SR", "BF"];

// TODO: Rewrite diary record if player swaps sides...
// https://cbateam.github.io/CBA_A3/docs/files/events/fnc_addPlayerEventHandler-sqf.html

if !(_radioDiaryText isEqualTo "") then {
	player createDiaryRecord ["Diary", ["Radio Nets", _radioDiaryText]];
} else {
	player createDiaryRecord ["Diary", ["Radio Nets", "No registered nets"]];
};

{
	_forEachSide = _x;
	_lrChannelNames = bax_radios_channelNames get _forEachSide get "LR";
	{
		_channel = _x;
		_channelName = _y;

		["ACRE_PRC148", "default", _channel, "label", _channelName] call acre_api_fnc_setPresetChannelField;
		["ACRE_PRC152", "default", _channel, "description", _channelName] call acre_api_fnc_setPresetChannelField;
		["ACRE_PRC117F", "default", _channel, "name", _channelName] call acre_api_fnc_setPresetChannelField;
	} forEach _lrChannelNames;
} forEach [west, east, independent, civilian];

private ["_role"];
if (isMultiplayer) then {
	_role = roleDescription player;
} else {
	_role = VARS_DEFAULT;
};

[_role] call bax_radios_fnc_buildRadioPreset;

// acre_api_fnc_getCurrentRadioList
// acre_api_fnc_getAllRadiosByType
// acre_api_fnc_filterUnitLoadout for unit loadouts
// acre_api_fnc_addDisplayPassthroughKeys for zeus keys?
// acre_api_fnc_getRadioByType

[] spawn {
	waitUntil { [] call acre_api_fnc_isInitialized };

	[] call bax_radios_fnc_loadRadioPreset;
};
