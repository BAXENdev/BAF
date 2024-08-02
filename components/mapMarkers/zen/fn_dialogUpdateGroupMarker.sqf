

#include "..\_mapMarkersMacros.hpp"

params ["_unit",["_isZeus",false]];

_content = [];

_side = side group _unit;
if (_side isEqualTo civilian) then { _side = west };

_iconRegistry = bax_mapMarkers_icons get "Transparent" get _side;
_iconNames = keys _iconRegistry;
_iconNames sort true;
_iconPrettyNames = _iconNames apply {
	_iconPath = _iconRegistry get _x;
	[_x,"",_iconPath,[0.8,0.8,0.8,1]];
};
_listBoxIcons = [
	"COMBO",
	"ICONS",
	[
		_iconNames,
		_iconPrettyNames,
		0
	]
];
_content pushBack _listBoxIcons;

_colors = [
	COLOR_BLUFOR,
	COLOR_OPFOR,
	COLOR_INDFOR,
	COLOR_CIV,
	COLOR_RED,
	COLOR_BLUE,
	COLOR_GREEN,
	COLOR_YELLOW,
	COLOR_ORANGE,
	COLOR_PURPLE,
	COLOR_PINK,
	COLOR_TAN
];
_groupColor = (group _unit) getVariable [MARKER_COLOR,0];
_defaultIndex = _colors findIf { _x isEqualTo _groupColor };
if (_defaultIndex == -1) then {
	_defaultIndex = 0;
};
_listBoxColors = [
	"COMBO",
	"COLORS",
	[
		_colors,
		[
			"BLUFOR",
			"OPFOR",
			"INDFOR",
			"CIVILIAN",
			"RED",
			"BLUE",
			"GREEN",
			"YELLOW",
			"ORANGE",
			"PURPLE",
			"PINK",
			"TAN"
		],
		_defaultIndex
	]
];
_content pushBack _listBoxColors;

if (_isZeus) then {
	_isHidden = (group _unit) getVariable [MARKER_HIDDEN,false];
	_checkBoxHide = [
		"CHECKBOX",
		"Hide Group",
		_isHidden,
		true
	];
	_content pushBack _checkBoxHide;
};

[
	"Update Group Marker",
	_content,
	{
		params ["_dialogValues","_args"];
		_dialogValues params ["_iconName","_color",["_hidden",false]];
		_args params ["_unit"];

		_group = group _unit;
		_group setVariable [MARKER_TEXTURE, _iconName, true];
		_group setVariable [MARKER_COLOR, _color, true];
		_group setVariable [MARKER_HIDDEN, _hidden, true];
	},
	{},
	[_unit]
] call zen_dialog_fnc_create;
