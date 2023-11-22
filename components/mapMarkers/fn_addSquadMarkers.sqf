

#include "..\..\macros\iconMacros.hpp"

params ["_control"];

if (getNumber (missionConfigFile >> "BAX_CFG" >> CFGS_SQUADMARKERS) isEqualTo 0) exitWith {};

_control ctrlAddEventHandler [
	"Draw",
	{
		// _scale = 6.4 * worldSize / 8192 * ctrlMapScale (_this select 0);
		// _size = 64 / _scale;
		_size = 24;
		_units = (units group player);
		
		// 
		// if (getNumber(missionConfigFile >> "BAX_CFG" >> "useGroupMarkers") isEqualTo 1) then {
		// 	_units = _units - [(leader group player)];
		// };

		_iconsColorsPositionsDirectionsNames = _units apply {
			[_x] call BAX_MAPMARKERS_fnc_getUnitMarker;
		};

		_iconsColorsPositionsDirectionsNames apply {
			_x params ["_icon", "_color", "_position", "_direction","_name"];
			_this select 0 drawIcon [
				_icon,
				_color,
				_position,
				_size,
				_size,
				_direction,
				_name
			]
		}
	}
];



