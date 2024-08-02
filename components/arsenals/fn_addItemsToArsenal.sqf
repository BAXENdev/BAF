
#include "_arsenalsMacros.hpp"

params ["_side","_role","_items"];

_arsenalItems = bax_arsenals_arsenalLists get _side get _role;
if (isNil "_arsenalItems") exitWith {
    _msg = format ["Arsenal list %1:%2 does not exist.", _side, _role];
    DEBUG_ERR(_msg);
};

_arsenalItems append _items;
