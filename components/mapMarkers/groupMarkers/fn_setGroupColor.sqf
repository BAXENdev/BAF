
#include "..\_mapMarkersMacros.hpp"

params ["_side","_groupId","_color"];

_sideGroups = allGroups select { side _x isEqualTo _side };
_groupIndex = _sideGroups findIf { groupId _x isEqualTo _groupId };
if (_groupIndex == -1) exitWith {
	_msg = format ["Group (%1:%2) does not exist at start.", _side, _groupId];
	DEBUG_ERR(_msg);
};
_group = _sideGroups select _groupIndex;
_group setVariable [MARKER_COLOR,_color];
