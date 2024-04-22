
#include "_supplyCratesMacros.hpp"

params ["_side","_crateName","_objectClass"];

_crateSideRegistry = bax_supplyCrates_crates get _side;
_crateSideRegistry set [_side,[_objectClass,[]]];
