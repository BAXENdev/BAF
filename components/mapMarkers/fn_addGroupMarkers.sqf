
#include "..\..\macros\iconMacros.hpp"

params ["_control"];

if (getNumber (missionConfigFile >> "BAX_CFG" >> CFGS_GROUPMARKERS) isEqualTo 0) exitWith {};

_control ctrlAddEventHandler [
	"Draw",
	{
		// _scale = 6.4 * worldSize / 8192 * ctrlMapScale (_this select 0);
		// _size = 64 / _scale;
		_size = 32;
		_groups = allGroups select { (side _x) isEqualTo (side group player) };
		_groups = _groups select { (count units _x) > 0; };
		_groups = _groups select { !(VAR_GROUP_HIDDENS getOrDefault [groupId _x,false]) };
		
		_groups = _groups - [group player];

		_iconsColorsPositionsNames = _groups apply {
			[_x] call BAX_MAPMARKERS_fnc_getGroupMarker;
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
		};
	}
];
