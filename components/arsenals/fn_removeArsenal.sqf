
#include "_arsenalMacros.hpp"

if !(hasInterface) exitWith {};

params ["_object"];

_actionId = _object getVariable [VARS_ACTION_ID,nil];
if (isNil "_actionID") exitWith {};
[_object,false] call ace_arsenal_fnc_removeBox;
_object removeAction _actionId;
_actionId = _object setVariable [VARS_ACTION_ID,nil];
