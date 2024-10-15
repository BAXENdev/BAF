
#include "_radiosMacros.hpp"

// Long Range Channel Names
// Short Range Channel Names
// Long Range Radio Channels
// Short Range Radio channels
// Groups
// Sides

// SIDE
// SIDE/GROUP/ROLE
// Radio, Channel Number

// Radio Preset VS Channel Names:
// Channels/Freqs(77 and SEMS) are for specific radios
// Names for specific radios

// PRC

bax_radios_radioPresets = createHashMapFromArray [
	[west, createHashMap],
	[east, createHashMap],
	[independent, createHashMap],
	[civilian, createHashMap]
];

bax_radios_netNames = createHashMapFromArray [
	[west, createHashMapFromArray [
		["LR", "Platoon Nets"],
		["SR", "Squad Nets"],
		["BF", "Police Nets"]
	]],
	[east, createHashMapFromArray [
		["LR", "Platoon Nets"],
		["SR", "Squad Nets"],
		["BF", "Police Nets"]
	]],
	[independent, createHashMapFromArray [
		["LR", "Platoon Nets"],
		["SR", "Squad Nets"],
		["BF", "Police Nets"]
	]],
	[civilian, createHashMapFromArray [
		["LR", "Platoon Nets"],
		["SR", "Squad Nets"],
		["BF", "Police Nets"]
	]]
];

bax_radios_channelNames = createHashMapFromArray [
	[west, createHashMapFromArray [
		["LR", createHashMap],
		["SR", createHashMap],
		["BF", createHashMap]
	]],
	[east, createHashMapFromArray [
		["LR", createHashMap],
		["SR", createHashMap],
		["BF", createHashMap]
	]],
	[independent, createHashMapFromArray [
		["LR", createHashMap],
		["SR", createHashMap],
		["BF", createHashMap]
	]],
	[civilian, createHashMapFromArray [
		["LR", createHashMap],
		["SR", createHashMap],
		["BF", createHashMap]
	]]
];

_babelSetting = CFGBAX_BOOL("acreBabelSettings");
_frequencySetting = CFGBAX_BOOL("acreSideFrequencies");
[_babelSetting, _frequencySetting] call acre_api_fnc_setupMission;

[EVENT_LOADOUT_UPDATED, {
	params ["_role"];

	[_role] call bax_radios_fnc_buildRadioPreset;

	[] spawn {
		waitUntil { [] call acre_api_fnc_isInitialized };

		[] call bax_radios_fnc_loadRadioPreset;
	};
}] call CBA_fnc_addEventHandler;
