
#include "..\..\macros\iconMacros.hpp"

if ((getNumber (configFile >> "CfgDifficultyPresets ")) > 0) exitWith {};

params ["_control"];

if (getNumber(missionConfigFile >> "BAF_CFG" >> "useGroupMarkers") isEqualTo 0) exitWith {};

_control ctrlAddEventHandler [
	"Draw",
	{
		// _scale = 6.4 * worldSize / 8192 * ctrlMapScale (_this select 0);
		// _size = 64 / _scale;
		_size = 32;
		_group = allGroups select { ((side _x) isEqualTo (side (group player))) && !(BAF_var_groupHidden getOrDefault [groupId _x,false]) };
		_iconsColorsPositionsNames = _group apply {
			_position = getPos (leader _x);
			_name = groupId _x;
			_icon = BAF_var_groupIcons getOrDefault [_name, ICON_B_UNKNOWN];
			_color = BAF_var_groupColors getOrDefault [_name, COLOR_BLUFOR];
			[_icon, _color, _position, _name];
		};

		_iconsColorsPositionsNames apply {
			_x params ["_icon", "_color", "_position", "_name"];
			_this select 0 drawIcon [
				_icon,
				_color,
				_position,
				_size,
				_size,
				0,
				_name
			]
		}
	}
];
