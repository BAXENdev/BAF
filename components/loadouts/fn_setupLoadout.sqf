
#include "_loadoutsMacros.hpp"

params ["_unit","_loadout"];

if !(isServer) exitWith {};

[_unit,_loadout] call bax_loadouts_fnc_assignLoadout;
