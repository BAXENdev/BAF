
#include "_arsenalsMacros.hpp"

params ["_side","_loadoutName"];

_loadoutRegistry = bax_loadouts_loadouts get _side;
_loadoutArray = _loadoutRegistry get _loadoutName;

if (isNil "_loadoutArray") exitWith {
	_msg = format ["Invalid loadout name passed: %1:%2", _side, _loadoutName];
	DEBUG_ERR(_msg);
};

_loadoutItems = (flatten (_loadoutArray select 0)) select { _x isEqualType "" };
_randomItems = (flatten (_loadoutArray select 2)) select { _x isEqualType "" };
_items = _loadoutItems + _randomItems;

// return
_items;
