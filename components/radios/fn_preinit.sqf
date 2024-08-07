
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

// bax_radios_lrNameBlufor = "Long Range Nets";
// bax_radios_srNameBlufor = "Short Range Nets";
// bax_radios_policeNameBlufor = "Police Nets";

// bax_radios_lrNameOpfor = "Long Range Nets";
// bax_radios_srNameOpfor = "Short Range Nets";
// bax_radios_policeNameOpfor = "Police Nets";

// bax_radios_lrNameIndfor = "Long Range Nets";
// bax_radios_srNameIndfor = "Short Range Nets";
// bax_radios_policeNameIndfor = "Police Nets";

// bax_radios_lrNameCivilian = "Long Range Nets";
// bax_radios_srNameCivilian = "Short Range Nets";
// bax_radios_policeNameCivilian = "Police Nets";

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

// bax_radios_presets = [
// 	[west, [
// 		[west, [
// 			["ACRE_PRC117", [1,2]],
// 			["ACRE_PRC152", [3]]
// 		]]
// 		["GROUP:Alpha 1-1", [
// 			["ACRE_PRC343", [1]]
// 		]],
// 		["GROUP:Alpha 1-2", [
// 			["ACRE_PRC343", [2]]
// 		]]
// 		// TODO: Am I ever going to add SEMs?
// 		// I think i KISS and just do PRCS & BF
// 		// ["GROUP:Wierd radios", [
// 		// 	["ACRE_PRC77", [[47, 89]]],
// 		// 	["ACRE_SEM SR?", [-1]],
// 		// 	["ACRE_SEM52?", [-1]]
// 		// ]]
// 	]]
// ];

// bax_radios_channelNames = [
// 	[west, [
// 		["PRC148/152/117", [[1, "Ground Command"], [2, "JTAC"], [3, "Alpha 1"]]],
// 		["PRC343", [[1, "Alpha 1-1"], [2, "Alpha 1-2"]]],
// 		["BF888S", []]
// 	]]
// ];
