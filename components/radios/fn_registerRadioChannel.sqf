
#include "_radiosMacros.hpp"

params ["_side", "_radio", "_channel", "_channelName", ["_addToSide", false], ["_groups", []], ["_roles", []]];

if !(_radio in RADIO_LIST) exitWith {
	_msg = format ["Invalid radio passed: %1", _radio];
	DEBUG_ERR(_msg);
};

_sideRadioPresets = bax_radios_radioPresets get _side;
_sideChannelNames = bax_radios_channelNames get _side;

// Add channel name
_channelCategory = switch (_radio) do {
	case "ACRE_PRC117F";
	case "ACRE_PRC152";
	case "ACRE_PRC148": { "LR" };
	case "ACRE_PRC343": { "SR" };
	case "ACRE_BF888S": { "BF" };
};
_sideChannelNames get _channelCategory set [_channel, _channelName];

// Add side preset
if (_addToSide) then {
	private ["_preset"];
	
	if !(_side in _sideRadioPresets) then {
		_sideRadioPresets set [_side, EMPTY_RADIO_PRESET];
	};
	_preset = _sideRadioPresets get _side;

	_preset get _radio pushBack _channel;
};

// Add group presets
// _sideGroupNames = (allGroups select { side _x isEqualTo _side }) apply { groupId _x };
{
	_groupName = _x;

	// if (_groupName in _sideGroupNames) exitWith {
	// 	_msg = format ["Group name passed that doesn't exist (%1:%2)", _side, _groupName];
	// 	DEBUG_ERR(_msg);
	// };

	private ["_preset"];
	
	_key = "GROUP:" + _groupName;
	if !(_key in _sideRadioPresets) then {
		_sideRadioPresets set [_key, EMPTY_RADIO_PRESET];
	};
	_preset = _sideRadioPresets get _key;

	_preset get _radio pushBack _channel;
} forEach _groups;

// Add role presets
{
	_role = _x;

	private ["_preset"];
	
	_key = "ROLE:" + _role;
	if !(_key in _sideRadioPresets) then {
		_sideRadioPresets set [_key, EMPTY_RADIO_PRESET];
	};
	_preset = _sideRadioPresets get _key;

	_preset get _radio pushBack _channel;
} forEach _roles;
