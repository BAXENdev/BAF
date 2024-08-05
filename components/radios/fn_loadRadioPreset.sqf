
#include "_radiosMacros.hpp"

_radioPreset = player getVariable [VARS_SAVED_PRESET, EMPTY_SAVED_PRESET];

{
	_radioClass = _x;
	_radioChannels = _radioPreset select _forEachIndex;

	_playerRadios = [_radioClass] call acre_api_fnc_getAllRadiosByType;

	{
		_radioChannel = _x;
		_radioId = _playerRadios select _forEachIndex;

		[_radioId, _radioChannel] call acre_api_fnc_setRadioChannel;
	} forEach _radioChannels;
} forEach SAVED_RADIOS;
