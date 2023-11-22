
params ["_crateObject",["_crateSuffix","",[""]],["_factionId", "",[""]]];

// Runtime Conditions

if !(isServer) exitWith {};
// if !(canSuspend) exitWith { _this spawn BAX_LOADOUTS_fnc_setupCrate; };

[_crateObject,_crateSuffix,_factionId] call BAX_loadouts_fnc_assignCrate;
