
#include "_mapMarkersMacros.hpp"

// transparent: [
// 	west: [
// 		name: marker
// 	]
// ]
// index 0: "transparent" | "solid"
// index 1: west | east | resistance
// index 3: icon name
bax_mapMarkers_icons = createHashMapFromArray [
	["transparent", createHashMapFromArray [
		[west, createHashMapFromArray [
			["AIR", 				ICON_AIR(b)],
			["ANTIAIR", 			ICON_ANTIAIR(b)],
			["ARMOR", 				ICON_ARMOR(b)],
			["ARTILLERY", 			ICON_ART(b)],
			["HQ", 					ICON_HQ(b)],
			["INFANTRY", 			ICON_INF(b)],
			["INSTALLATION", 		ICON_INSTALLATION(b)],
			["MAINTENANCE", 		ICON_MAINT(b)],
			["MECHANIZEDINFANTRY",  ICON_MECHINF(b)],
			["MEDIC", 				ICON_MED(b)],
			["MORTAR", 				ICON_MORTAR(b)],
			["MOTORIZEDINFANTRY", 	ICON_MOTORINF(b)],
			["NAVAL", 				ICON_NAVAL(b)],
			["PLANE", 				ICON_PLANE(b)],
			["RECON", 				ICON_RECON(b)],
			["SERVICE", 			ICON_SERVICE(b)],
			["SUPPORT", 			ICON_SUPPORT(b)],
			["UAV", 				ICON_UAV(b)],
			["UNKNOWN", 			ICON_UNKNOWN(b)]
		]],
		[east, createHashMapFromArray [
			["AIR", 				ICON_AIR(o)],
			["ANTIAIR", 			ICON_ANTIAIR(o)],
			["ARMOR", 				ICON_ARMOR(o)],
			["ARTILLERY", 			ICON_ART(o)],
			["HQ", 					ICON_HQ(o)],
			["INFANTRY", 			ICON_INF(o)],
			["INSTALLATION", 		ICON_INSTALLATION(o)],
			["MAINTENANCE", 		ICON_MAINT(o)],
			["MECHANIZEDINFANTRY", 	ICON_MECHINF(o)],
			["MEDIC", 				ICON_MED(o)],
			["MORTAR", 				ICON_MORTAR(o)],
			["MOTORIZEDINFANTRY", 	ICON_MOTORINF(o)],
			["NAVAL", 				ICON_NAVAL(o)],
			["PLANE", 				ICON_PLANE(o)],
			["RECON", 				ICON_RECON(o)],
			["SERVICE", 			ICON_SERVICE(o)],
			["SUPPORT", 			ICON_SUPPORT(o)],
			["UAV", 				ICON_UAV(o)],
			["UNKNOWN", 			ICON_UNKNOWN(o)]
		]],
		[resistance, createHashMapFromArray [
			["AIR", 				ICON_AIR(n)],
			["ANTIAIR", 			ICON_ANTIAIR(n)],
			["ARMOR", 				ICON_ARMOR(n)],
			["ARTILLERY", 			ICON_ART(n)],
			["HQ", 					ICON_HQ(n)],
			["INFANTRY", 			ICON_INF(n)],
			["INSTALLATION", 		ICON_INSTALLATION(n)],
			["MAINTENANCE", 		ICON_MAINT(n)],
			["MECHANIZEDINFANTRY", 	ICON_MECHINF(n)],
			["MEDIC", 				ICON_MED(n)],
			["MORTAR", 				ICON_MORTAR(n)],
			["MOTORIZEDINFANTRY", 	ICON_MOTORINF(n)],
			["NAVAL", 				ICON_NAVAL(n)],
			["PLANE", 				ICON_PLANE(n)],
			["RECON", 				ICON_RECON(n)],
			["SERVICE", 			ICON_SERVICE(n)],
			["SUPPORT", 			ICON_SUPPORT(n)],
			["UAV", 				ICON_UAV(n)],
			["UNKNOWN", 			ICON_UNKNOWN(n)]
		]]
	]],
	["solid", createHashMapFromArray [
		[west, createHashMapFromArray [
			["AIR", 				B_ICON_AIR(b)],
			["ANTIAIR", 			B_ICON_ANTIAIR(b)],
			["ARMOR", 				B_ICON_ARMOR(b)],
			["ARTILLERY", 			B_ICON_ART(b)],
			["HQ", 					B_ICON_HQ(b)],
			["INFANTRY", 			B_ICON_INF(b)],
			["INSTALLATION", 		B_ICON_INSTALLATION(b)],
			["MAINTENANCE", 		B_ICON_MAINT(b)],
			["MECHANIZEDINFANTRY", 	B_ICON_MECHINF(b)],
			["MEDIC", 				B_ICON_MED(b)],
			["MORTAR", 				B_ICON_MORTAR(b)],
			["MOTORIZEDINFANTRY", 	B_ICON_MOTORINF(b)],
			["NAVAL", 				B_ICON_NAVAL(b)],
			["PLANE", 				B_ICON_PLANE(b)],
			["RECON", 				B_ICON_RECON(b)],
			["SERVICE", 			B_ICON_SERVICE(b)],
			["SUPPORT", 			B_ICON_SUPPORT(b)],
			["UAV", 				B_ICON_UAV(b)],
			["UNKNOWN", 			B_ICON_UNKNOWN(b)]
		]],
		[east, createHashMapFromArray [
			["AIR", 				B_ICON_AIR(o)],
			["ANTIAIR", 			B_ICON_ANTIAIR(o)],
			["ARMOR", 				B_ICON_ARMOR(o)],
			["ARTILLERY", 			B_ICON_ART(o)],
			["HQ", 					B_ICON_HQ(o)],
			["INFANTRY", 			B_ICON_INF(o)],
			["INSTALLATION", 		B_ICON_INSTALLATION(o)],
			["MAINTENANCE", 		B_ICON_MAINT(o)],
			["MECHANIZEDINFANTRY", 	B_ICON_MECHINF(o)],
			["MEDIC", 				B_ICON_MED(o)],
			["MORTAR", 				B_ICON_MORTAR(o)],
			["MOTORIZEDINFANTRY", 	B_ICON_MOTORINF(o)],
			["NAVAL", 				B_ICON_NAVAL(o)],
			["PLANE", 				B_ICON_PLANE(o)],
			["RECON", 				B_ICON_RECON(o)],
			["SERVICE", 			B_ICON_SERVICE(o)],
			["SUPPORT", 			B_ICON_SUPPORT(o)],
			["UAV", 				B_ICON_UAV(o)],
			["UNKNOWN", 			B_ICON_UNKNOWN(o)]
		]],
		[resistance, createHashMapFromArray [
			["AIR", 				B_ICON_AIR(n)],
			["ANTIAIR", 			B_ICON_ANTIAIR(n)],
			["ARMOR", 				B_ICON_ARMOR(n)],
			["ARTILLERY", 			B_ICON_ART(n)],
			["HQ", 					B_ICON_HQ(n)],
			["INFANTRY", 			B_ICON_INF(n)],
			["INSTALLATION", 		B_ICON_INSTALLATION(n)],
			["MAINTENANCE", 		B_ICON_MAINT(n)],
			["MECHANIZEDINFANTRY", 	B_ICON_MECHINF(n)],
			["MEDIC", 				B_ICON_MED(n)],
			["MORTAR", 				B_ICON_MORTAR(n)],
			["MOTORIZEDINFANTRY", 	B_ICON_MOTORINF(n)],
			["NAVAL", 				B_ICON_NAVAL(n)],
			["PLANE", 				B_ICON_PLANE(n)],
			["RECON", 				B_ICON_RECON(n)],
			["SERVICE", 			B_ICON_SERVICE(n)],
			["SUPPORT", 			B_ICON_SUPPORT(n)],
			["UAV", 				B_ICON_UAV(n)],
			["UNKNOWN", 			B_ICON_UNKNOWN(n)]
		]]
	]]
];

if (!hasInterface) exitWith {};

_actionUpdateGroupMarker = [
	"baxUpdateGroupMarker", // Variable name
	"Update Group Marker", // Display name
	"", //  Icon path
	{
		[player] call bax_mapMarkers_fnc_dialogUpdateGroupMarker;
	}, // Action code. params ["_target","_player","_params"]
	{ true }, // Condition code
	{}, // Insert children code, Optional
	[] // Action Code parameters, Optional
	// More stuff https://ace3.acemod.org/wiki/framework/interactionmenu-framework#31-fnc_createaction
] call ace_interact_menu_fnc_createAction;
[
	"CAManBase",
	1,
	["ACE_SelfActions","framework_settings"],
	_actionUpdateGroupMarker,
	true
] call ace_interact_menu_fnc_addActionToClass;

_actionUpdateMapMarkersSettings = [
	"baxUpdateMapMarkersSettings", // Variable name
	"Map Marker Settings", // Display name
	"", //  Icon path
	{
		[player] call bax_mapMarkers_fnc_dialogMarkerSettings;
	}, // Action code. params ["_target","_player","_params"]
	{ true }, // Condition code
	{}, // Insert children code, Optional
	[] // Action Code parameters, Optional
	// More stuff https://ace3.acemod.org/wiki/framework/interactionmenu-framework#31-fnc_createaction
] call ace_interact_menu_fnc_createAction;
[
	"CAManBase",
	1,
	["ACE_SelfActions","framework_settings"],
	_actionUpdateMapMarkersSettings,
	true
] call ace_interact_menu_fnc_addActionToClass;
