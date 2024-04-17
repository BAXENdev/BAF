
#include "_arsenalMacros.hpp"

params ["_side","_role","_items"];

_arsenalPresets = bax_arsenals_arsenals get _side;
_arsenalPresets set [_role,_items];
