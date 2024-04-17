
#include "_mapMarkersMacros.hpp"

if !(hasInterface) exitWith {};

_iconTexture = [player] call bax_mapMarkers_fnc_getUnitIcon;
player setVariable [MARKER_TEXTURE,_iconTexture,true];

["ace_arsenal_displayClosed",{
	_iconTexture = [player] call bax_mapMarkers_fnc_getUnitIcon;
	player setVariable [MARKER_TEXTURE,_iconTexture,true];
}] call CBA_fnc_addEventHandler;
