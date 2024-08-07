
#include "_commonMacros.hpp"

/*
Used for capatible zeus and player dialog hints
*/

params ["_message"];

if !((findDisplay 312) isEqualTo displayNull) then {
    // zeus hint (feedback)
    [objNull,_message] call BIS_fnc_showCuratorFeedbackMessage;
} else {
    // player hint
    [_message,[player]] call bax_common_fnc_hintAce;
};
