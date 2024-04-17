
#include "_loadoutsMacros.hpp"

params ["_gearArray","_randomGear"];

_selectedGear = "";
if !(_gearArray isEqualTo []) then {
	_selectedGear = _gearArray select 0;
};
_randomGear = _randomGear + [_selectedGear];
_selectedGear = selectRandom _randomGear;

if (_selectedGear isEqualTo "") exitWith {
	// return
	[];
};

if (_gearArray isEqualTo []) exitWith {
	// return
	[_selectedGear,[]];
};

_gearArray set [0,_selectedGear];
// return
_gearArray;
