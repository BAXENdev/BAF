
#include "_arsenalsMacros.hpp"

if !(hasInterface) exitWith {};

params ["_object"];

[_object,false] call ace_arsenal_fnc_removeBox;
_actionId = _object getVariable [VARS_ACTION_ID,nil];
if (isNil "_actionID") exitWith {};
_object removeAction _actionId;
_actionId = _object setVariable [VARS_ACTION_ID,nil];
