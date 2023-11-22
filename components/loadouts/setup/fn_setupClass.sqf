
params ["_unit",["_classSuffix","",[""]],["_factionId", "",[""]]];

// Runtime Conditions

if !(isServer) exitWith {}; // Loadouts are server authoritative
// if !(local _unit) exitWith {};
// if !(canSuspend) exitWith { _this spawn BAX_LOADOUTS_fnc_setupLoadout; };

[_unit,_classSuffix,_factionId] call BAX_loadouts_fnc_assignClass;
