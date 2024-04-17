
#include "_toolsMacros.hpp";

params ["_spaceCount","_string"];

_tab = "";
for "_i" from 1 to _spaceCount do { _tab = _tab + " " };

// return
_tab + _string;
