
params ["_unit",["_loadoutSuffix","",[""]],["_factionId", "",[""]]];

// Runtime Conditions

// if !(isServer) exitWith {};
if !(local _unit) exitWith {};
// if !(canSuspend) exitWith { _this spawn BAX_LOADOUTS_fnc_setupLoadout; };

[_unit,_loadoutSuffix,_factionId] call BAX_LOADOUTS_fnc_assignLoadout;
