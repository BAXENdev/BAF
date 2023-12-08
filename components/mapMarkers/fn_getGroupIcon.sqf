
#include "..\..\macros\mapMarkerMacros.hpp"

params ["_group"];

_texture = GETVAR(_group,VARS_MARKER_TEXTURE,nil);
if !(isNil "_texture") exitWith {
	_texture;
};

_factionPrefix = switch (side _group) do {
	case west: { 'b' };
	case east: { 'o' };
	case resistance: { 'n' };
	default { 'b' };
};

// return
ICON_INF(_factionPrefix);
