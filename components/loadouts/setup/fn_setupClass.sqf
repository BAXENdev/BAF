
params ["_unit",["_classSuffix","",[""]],["_factionId", "",[""]]];

// Runtime Conditions
// TODO: Does the player exist yet prior to this call?
// TODO: Does it execute JIP?

if !(isServer) exitWith {};
// if !(canSuspend) exitWith { _this spawn BAF_fnc_setupLoadout; };
// waitUntil { baf_init_done >= 1; }; // TODO: Is this needed if framework backend is gauranteed to run before?

[_unit,_classSuffix,_factionId] call BAF_fnc_assignClass;
