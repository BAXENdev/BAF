
#include "..\_mapMarkersMacros.hpp"

params ["_side","_groupId","_texture"];

_sideGroups = allGroups select { side _x isEqualTo _side };
_groupIndex = _sideGroups findIf { groupId _x isEqualTo _groupId };
if (_groupIndex == -1) exitWith {
	// TODO: Debug log
};
_group = _sideGroups select _groupIndex;
_group setVariable [MARKER_TEXTURE,_color];
