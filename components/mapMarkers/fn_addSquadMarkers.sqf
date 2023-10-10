

#include "..\..\macros\iconMacros.hpp"

params ["_control"];

if (getNumber(missionConfigFile >> "BAF_CFG" >> "useSquadMarkers") isEqualTo 0) exitWith {};

_control ctrlAddEventHandler [
	"Draw",
	{
		// _scale = 6.4 * worldSize / 8192 * ctrlMapScale (_this select 0);
		// _size = 64 / _scale;
		_size = 24;
		_units = (units group player);
		if (getNumber(missionConfigFile >> "BAF_CFG" >> "useGroupMarkers") isEqualTo 1) then {
			_units = _units - [(leader group player)];
		};
		_iconsPositionsDirections = _units apply {
			_icon = [_x] call BAF_fnc_getUnitMarker;
			_position = getPos _x;
			_direction = getDirVisual _x;
			[_icon,_position,_direction];
		};

		_iconsPositionsDirections apply {
			_x params ["_icon", "_position", "_direction"];
			_this select 0 drawIcon [
				_icon,
				COLOR_BLUFOR,
				_position,
				_size,
				_size,
				_direction
			]
		}
	}
];



