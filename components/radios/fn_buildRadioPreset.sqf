
#include "_radiosMacros.hpp"

params ["_role"];

_side = side group player;
_groupId = groupId group player;

_sideRadioPresets = bax_radios_radioPresets get _side;
_sidePreset = _sideRadioPresets get _side;
_groupPreset = _sideRadioPresets get (format ["GROUP:%1", _groupId]);
_rolePreset = _sideRadioPresets get (format ["ROLE:%1", _role]);

_radioPreset = EMPTY_SAVED_PRESET;

if !(isNil "_sidePreset") then {
	{
		_radioClass = _x;
		_channels = _y;

		_radioIndex = SAVED_RADIOS find _radioClass;

		if (_channels isEqualTo []) then {
			continue;
		};

		_radioPreset set [_radioIndex, +_channels];
	} forEach _sidePreset;
};

if !(isNil "_groupPreset") then {
	{
		_radioClass = _x;
		_channels = _y;

		_radioIndex = SAVED_RADIOS find _radioClass;

		if (_channels isEqualTo []) then {
			continue;
		};

		_radioPreset set [_radioIndex, +_channels];
	} forEach _groupPreset;
};

if !(isNil "_rolePreset") then {
	{
		_radioClass = _x;
		_channels = _y;

		_radioIndex = SAVED_RADIOS find _radioClass;

		if (_channels isEqualTo []) then {
			continue;
		};

		_radioPreset set [_radioIndex, +_channels];
	} forEach _rolePreset;
};

player setVariable [VARS_SAVED_PRESET, _radioPreset, true];
