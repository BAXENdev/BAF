
#include "_arsenalsMacros.hpp"

if !(hasInterface) exitWith {};

private ["_role"];
if (isMultiplayer) then {
    _role = roleDescription player;
} else {
    _role = VARS_DEFAULT;
};

[_role] call bax_arsenals_fnc_initArsenals;
