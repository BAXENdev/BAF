
#include "..\..\..\macros\mapMarkerMacros.hpp"

params ["_unit"];

_group = group _unit;

_side = side _group;
_texture = GETVAR(_group,VARS_MARKER_TEXTURE,"");

_factions = [
	WEST,
	EAST,
	RESISTANCE
];
// _factionNames = [
// 	["BLUFOR","",ICON_INF('b'),COLOR_BLUFOR],
// 	["OPFOR","",ICON_INF('o'),COLOR_OPFOR],
// 	["INDFOR","",ICON_INF('n'),COLOR_INDFOR]
// ];
_factionIndex = _factions findIf { (side _x) isEqualTo _side; };
// _listFactions = [
// 	"LIST",
// 	"Select Faction",
// 	[
// 		_factions,
// 		_factionNames,
// 		[_factionIndex,0] select (_factionIndex >= 0),
// 		3
// 	],
// 	true
// ];

_groupId = groupId _group;
_editboxTitle = 

_faction = switch (index) do {
	case 0: { 'b'; };
	case 1: { 'o'; };
	case 2: { 'n'; };
	default { 'b'; };
};
_textures = [
	"_air.paa",
	"_antiair.paa",
	"_armor.paa",
	"_art.paa",
	"_hq.paa",
	"_inf.paa",
	"_installation.paa",
	"_maint.paa",
	"_mech_inf.paa",
	"_med.paa",
	"_mortar.paa",
	"_motor_inf.paa",
	"_naval.paa",
	"_plane.paa",
	"_recon.paa",
	"_service.paa",
	"_support.paa",
	"_uav.paa",
	"_unknown.paa"
];
_textureNames = [
	["AIR","",ICON_INF(_faction)],
	["ANTIAIR","",ICON_ANTIAIR(_faction)],
	["ARMOR","",ICON_ARMOR(_faction)],
	["ARTILLERY","",ICON_ART(_faction)],
	["HQ","",ICON_GQ(_faction)],
	["INFANTRY","",ICON_INF(_faction)],
	["INSTALLATION","",ICON_INSTALLATION(_faction)],
	["MAINTENANCE","",ICON_MAINT(_faction)],
	["MECHANIZED INFANTRY","",ICON_MECH_INF(_faction)],
	["MEDICAL","",ICON_MED(_faction)],
	["MORTAR","",ICON_MORTAR(_faction)],
	["MOTORIZED INFANTRY","",ICON_MOTORINF(_faction)],
	["NAVAL","",ICON_NAVAL(_faction)],
	["PLANE","",ICON_PLANE(_faction)],
	["RECON","",ICON_RECON(_faction)],
	["SERVICE","",ICON_SERVICE(_faction)],
	["SUPPORT","",ICON_SUPPORT(_faction)],
	["UAV","",ICON_UAV(_faction)],
	["UNKNOWN","",ICON_UNKNOWN(_faction)]
];
_listTextures = [
	"LIST",
	"ICONS",
	[
		_textures,
		_textureNames,
		0,
		5
	]
];

_checkboxTransparent = [
	"CHECKBOX",
	"Use Solid Background?",
	[
		false,
	]
];

_colors = [
	COLOR_WHITE,
	COLOR_RED,
	COLOR_BLUE,
	COLOR_GREEN,
	COLOR_YELLOW,
	COLOR_ORANGE,
	COLOR_PURPLE,
	COLOR_PINK,
	COLOR_TAN,
	COLOR_LGRAY,
	COLOR_BLUFOR,
	COLOR_OPFOR,
	COLOR_INDFOR
];
_colorNames = [
	"WHITE",
	"RED",
	"BLUE",
	"GREEN",
	"YELLOW",
	"ORANGE",
	"PURPLE",
	"PINK",
	"TAN",
	"LGRAY",
	"BLUFOR",
	"OPFOR",
	"INDFOR"
];
_listColors = [
	"LIST",
	"Select Faction",
	[
		_colors,
		_colorNames,
		0,
		5
	]
];
