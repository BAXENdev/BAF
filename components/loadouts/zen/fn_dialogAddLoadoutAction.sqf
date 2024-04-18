
#include "..\_commonMacros.hpp"

params ["_object"];



[
    "Add Locker Actions",
    [_checkboxLoadoutAction,_checkboxArsenalAction],
    {
        params ["_dialogValues","_arguments"];
        
    },
    {},
    [_object]
] call zen_dialog_fnc_create;
