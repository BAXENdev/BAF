
#include "_supplyCratesMacros.hpp"

params ["_side","_crateName",["_items",[]]];

_crateSideRegistry = bax_supplyCrates_crates get _side;
_crateSideRegistry set [_crateName, []];

[_side,_crateName,_items] call bax_supplyCrates_fnc_addItemsToCrate;
