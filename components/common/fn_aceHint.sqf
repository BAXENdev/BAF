
#include "_commonMacros.hpp"

params ["_text","_targets"];

[
    "ace_common_displayTextStructured",
    [_text,1.5],
    _targets
] call CBA_fnc_targetEvent;
