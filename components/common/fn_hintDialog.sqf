
#include "_commonMacros.hpp"

/*
Used for capatible zeus and play dialog hints
*/

params ["_message"];

if ((findDisplay 312) isEqualTo displayNull) then {
    // player hint
    [_message,[player]] call bax_common_fnc_hintAce;
} else {
    // zeus hint (feedback)
    [objNull,_message] call BIS_fnc_showCuratorFeedbackMessage;
};
